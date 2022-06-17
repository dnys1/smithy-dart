import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:async/async.dart';
import 'package:built_value/serializer.dart';
import 'package:crclib/catalog.dart';
import 'package:crclib/crclib.dart';
import 'package:smithy/smithy.dart';

class SelectObjectContentEventStreamWrapper<T> extends StreamView<T> {
  const SelectObjectContentEventStreamWrapper(super.stream);
}

class SelectObjectContentEventStreamSerializer<T>
    extends PrimitiveSmithySerializer<
        SelectObjectContentEventStreamWrapper<T>> {
  const SelectObjectContentEventStreamSerializer()
      : super('SelectObjectContentEventStreamWrapper');

  @override
  Iterable<ShapeId> get supportedProtocols =>
      const [ShapeId(namespace: 'aws.protocols', shape: 'restXml')];

  @override
  SelectObjectContentEventStreamWrapper<T> deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    serialized as Stream<List<int>>;
    return SelectObjectContentEventStreamWrapper<T>(
      serialized.transform(SelectObjectContentStreamTransformer(serializers)),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Stream<T> object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return object.map((event) {
      return serializers.serialize(
        event,
        specifiedType: FullType(T),
      );
    });
  }

  @override
  Iterable<Type> get types => [SelectObjectContentEventStreamWrapper];
}

class SelectObjectContentStreamTransformer<T>
    extends StreamTransformerBase<List<int>, T> {
  const SelectObjectContentStreamTransformer(this.serializers);

  final Serializers serializers;
  static final _crc32 = Crc32();

  /// Decodes a big-endian 32-bit integer.
  int _decodeInt(Uint8List bytes) {
    var value = bytes[0] & 0xff;
    value <<= 8;
    value |= bytes[1] & 0xff;
    value <<= 8;
    value |= bytes[2] & 0xff;
    value <<= 8;
    value |= bytes[3] & 0xff;
    return value;
  }

  /// Decodes a big-endian 16-bit integer.
  int _decodeShort(Uint8List bytes) {
    var value = bytes[0] & 0xff;
    value <<= 8;
    value |= bytes[1] & 0xff;
    return value;
  }

  @override
  Stream<T> bind(
    Stream<List<int>> stream,
  ) async* {
    final reader = ChunkedStreamReader(stream);
    while (true) {
      final totalByteLengthBytes = await reader.readBytes(4);
      if (totalByteLengthBytes.length < 4) {
        break;
      }
      final totalByteLength = _decodeInt(totalByteLengthBytes);
      final headersByteLengthBytes = await reader.readBytes(4);
      final headersByteLength = _decodeInt(headersByteLengthBytes);
      final preludeCrcBytes = await reader.readBytes(4);
      final preludeCrc = _decodeInt(preludeCrcBytes);
      late CrcValue expectedPreludeCrc;
      _crc32.startChunkedConversion(ChunkedConversionSink.withCallback(
        (val) => expectedPreludeCrc = val.single,
      ))
        ..add(totalByteLengthBytes)
        ..add(headersByteLengthBytes)
        ..close();
      if (BigInt.from(preludeCrc) != expectedPreludeCrc.toBigInt()) {
        throw const ChecksumValidationException('CRC does not match');
      }
      late CrcValue expectedMessageCrcValue;
      final messageCrcSink = _crc32.startChunkedConversion(
        ChunkedConversionSink.withCallback(
          (val) => expectedMessageCrcValue = val.single,
        ),
      )
        ..add(totalByteLengthBytes)
        ..add(headersByteLengthBytes)
        ..add(preludeCrcBytes);
      var bytesRead = 0;
      final headers = <String, String>{};
      while (bytesRead < headersByteLength) {
        final headerLengthBytes = await reader.readBytes(1);
        messageCrcSink.add(headerLengthBytes);
        final headerLength = headerLengthBytes.single;
        final headerNameBytes = await reader.readBytes(headerLength);
        messageCrcSink.add(headerNameBytes);
        final headerName = utf8.decode(headerNameBytes);
        final headerValueTypeBytes = await reader.readBytes(1);
        messageCrcSink.add(headerValueTypeBytes);
        final headerValueType = headerValueTypeBytes.single;
        // S3 docs say this should always be 7.
        assert(headerValueType == 7, 'Unexpected header value type');
        final headerValueLengthBytes = await reader.readBytes(2);
        messageCrcSink.add(headerValueLengthBytes);
        final headerValueLength = _decodeShort(headerValueLengthBytes);
        final headerValueBytes = await reader.readBytes(headerValueLength);
        messageCrcSink.add(headerValueBytes);
        final headerValue = utf8.decode(headerValueBytes);
        headers[headerName] = headerValue;
        bytesRead += 1 + headerLength + 3 + headerValueLength;
      }
      final messageType = headers[':message-type']!;
      if (messageType == 'error') {
        final errorCode = headers[':error-code']!;
        final errorMessage = headers[':error-message']!;
        throw SelectObjectContentException(errorCode, errorMessage);
      }
      final payload = await reader.readBytes(
        totalByteLength - headersByteLength - 16,
      );
      messageCrcSink
        ..add(payload)
        ..close();
      final messageCrc = _decodeInt(await reader.readBytes(4));
      if (BigInt.from(messageCrc) != expectedMessageCrcValue.toBigInt()) {
        throw const ChecksumValidationException('CRC does not match');
      }
      final eventType = headers[':event-type']!;
      yield serializers.deserialize([
        eventType,
        ['Payload', payload]
      ], specifiedType: FullType(T)) as T;
    }
  }
}

class SelectObjectContentException implements SmithyException {
  const SelectObjectContentException(this.code, this.message);

  final String code;

  @override
  final String message;

  @override
  RetryConfig? get retryConfig => null;

  @override
  ShapeId? get shapeId => null;

  @override
  Exception? get underlyingException => null;

  @override
  String toString() => 'SelectObjectContentException{$code: $message}';
}
