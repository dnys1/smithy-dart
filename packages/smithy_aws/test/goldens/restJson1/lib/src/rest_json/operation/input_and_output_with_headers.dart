// Generated code. DO NOT MODIFY.

library rest_json1.rest_json.operation.input_and_output_with_headers;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:fixnum/fixnum.dart' as _i6;
import 'package:rest_json1/src/rest_json/model/foo_enum.dart' as _i7;
import 'package:rest_json1/src/rest_json/model/input_and_output_with_headers_io.dart'
    as _i2;
import 'package:rest_json1/src/rest_json/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// The example tests how requests and responses are serialized when there is
/// no input or output payload but there are HTTP header bindings.
class InputAndOutputWithHeadersOperation extends _i1.HttpOperation<
    _i2.InputAndOutputWithHeadersIoPayload,
    _i2.InputAndOutputWithHeadersIo,
    _i2.InputAndOutputWithHeadersIoPayload,
    _i2.InputAndOutputWithHeadersIo> {
  @override
  late final List<
      _i1.HttpProtocol<
          _i2.InputAndOutputWithHeadersIoPayload,
          _i2.InputAndOutputWithHeadersIo,
          _i2.InputAndOutputWithHeadersIoPayload,
          _i2.InputAndOutputWithHeadersIo>> protocols = [
    _i3.RestJson1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.InputAndOutputWithHeadersIo input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/InputAndOutputWithHeaders';
        b.successCode = 200;
        if (input.headerString != null) {
          b.headers['X-String'] = input.headerString!;
        }
        if (input.headerByte != null) {
          b.headers['X-Byte'] = input.headerByte!.toString();
        }
        if (input.headerShort != null) {
          b.headers['X-Short'] = input.headerShort!.toString();
        }
        if (input.headerInteger != null) {
          b.headers['X-Integer'] = input.headerInteger!.toString();
        }
        if (input.headerLong != null) {
          b.headers['X-Long'] = input.headerLong!.toString();
        }
        if (input.headerFloat != null) {
          b.headers['X-Float'] = input.headerFloat!.toString();
        }
        if (input.headerDouble != null) {
          b.headers['X-Double'] = input.headerDouble!.toString();
        }
        if (input.headerTrueBool != null) {
          b.headers['X-Boolean1'] = input.headerTrueBool!.toString();
        }
        if (input.headerFalseBool != null) {
          b.headers['X-Boolean2'] = input.headerFalseBool!.toString();
        }
        if (input.headerStringList != null) {
          b.headers['X-StringList'] =
              input.headerStringList!.map((el) => el).join(', ');
        }
        if (input.headerStringSet != null) {
          b.headers['X-StringSet'] =
              input.headerStringSet!.map((el) => el).join(', ');
        }
        if (input.headerIntegerList != null) {
          b.headers['X-IntegerList'] =
              input.headerIntegerList!.map((el) => el.toString()).join(', ');
        }
        if (input.headerBooleanList != null) {
          b.headers['X-BooleanList'] =
              input.headerBooleanList!.map((el) => el.toString()).join(', ');
        }
        if (input.headerTimestampList != null) {
          b.headers['X-TimestampList'] = input.headerTimestampList!
              .map((el) => _i1.Timestamp(el)
                  .format(_i1.TimestampFormat.httpDate)
                  .toString())
              .join(', ');
        }
        if (input.headerEnum != null) {
          b.headers['X-Enum'] = input.headerEnum!.value;
        }
        if (input.headerEnumList != null) {
          b.headers['X-EnumList'] =
              input.headerEnumList!.map((el) => el.value).join(', ');
        }
      });
  @override
  _i2.InputAndOutputWithHeadersIo buildOutput(
          _i2.InputAndOutputWithHeadersIoPayload payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.InputAndOutputWithHeadersIo((b) {
        if (response.headers['X-String'] != null) {
          b.headerString = response.headers['X-String']!;
        }
        if (response.headers['X-Byte'] != null) {
          b.headerByte = int.parse(response.headers['X-Byte']!);
        }
        if (response.headers['X-Short'] != null) {
          b.headerShort = int.parse(response.headers['X-Short']!);
        }
        if (response.headers['X-Integer'] != null) {
          b.headerInteger = int.parse(response.headers['X-Integer']!);
        }
        if (response.headers['X-Long'] != null) {
          b.headerLong = _i6.Int64.parseInt(response.headers['X-Long']!);
        }
        if (response.headers['X-Float'] != null) {
          b.headerFloat = double.parse(response.headers['X-Float']!);
        }
        if (response.headers['X-Double'] != null) {
          b.headerDouble = double.parse(response.headers['X-Double']!);
        }
        if (response.headers['X-Boolean1'] != null) {
          b.headerTrueBool = response.headers['X-Boolean1']! == 'true';
        }
        if (response.headers['X-Boolean2'] != null) {
          b.headerFalseBool = response.headers['X-Boolean2']! == 'true';
        }
        if (response.headers['X-StringList'] != null) {
          b.headerStringList.addAll(response.headers['X-StringList']!
              .split(',')
              .map((el) => el.trim()));
        }
        if (response.headers['X-StringSet'] != null) {
          b.headerStringSet.addAll(response.headers['X-StringSet']!
              .split(',')
              .map((el) => el.trim()));
        }
        if (response.headers['X-IntegerList'] != null) {
          b.headerIntegerList.addAll(response.headers['X-IntegerList']!
              .split(',')
              .map((el) => int.parse(el.trim())));
        }
        if (response.headers['X-BooleanList'] != null) {
          b.headerBooleanList.addAll(response.headers['X-BooleanList']!
              .split(',')
              .map((el) => el.trim() == 'true'));
        }
        if (response.headers['X-TimestampList'] != null) {
          b.headerTimestampList.addAll(response.headers['X-TimestampList']!
              .split(',')
              .map((el) => _i1.Timestamp.parse(el.trim(),
                      format: _i1.TimestampFormat.httpDate)
                  .asDateTime));
        }
        if (response.headers['X-Enum'] != null) {
          b.headerEnum =
              _i7.FooEnum.values.byValue(response.headers['X-Enum']!);
        }
        if (response.headers['X-EnumList'] != null) {
          b.headerEnumList.addAll(response.headers['X-EnumList']!
              .split(',')
              .map((el) => _i7.FooEnum.values.byValue(el.trim())));
        }
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [];
}
