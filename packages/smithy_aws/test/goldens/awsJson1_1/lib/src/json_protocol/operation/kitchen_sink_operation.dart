// Generated code. DO NOT MODIFY.

library aws_json1_1.json_protocol.operation.kitchen_sink_operation;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_json1_1/src/json_protocol/model/error_with_members.dart'
    as _i6;
import 'package:aws_json1_1/src/json_protocol/model/error_without_members.dart'
    as _i7;
import 'package:aws_json1_1/src/json_protocol/model/kitchen_sink.dart' as _i2;
import 'package:aws_json1_1/src/json_protocol/serializers.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class KitchenSinkOperation extends _i1.HttpOperation<_i2.KitchenSinkPayload,
    _i2.KitchenSink, _i2.KitchenSinkPayload, _i2.KitchenSink> {
  @override
  late final List<
      _i1.HttpProtocol<_i2.KitchenSinkPayload, _i2.KitchenSink,
          _i2.KitchenSinkPayload, _i2.KitchenSink>> protocols = [
    _i3.AwsJson1_1Protocol(
        serializers: _i4.serializers,
        builderFactories: _i4.builderFactories,
        interceptors: [
          const _i1.WithHeader(
              'X-Amz-Target', 'JsonProtocol.KitchenSinkOperation')
        ])
  ];

  @override
  _i1.HttpRequest buildRequest(_i2.KitchenSink input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = '/';
        b.successCode = 200;
      });
  @override
  _i2.KitchenSink buildOutput(_i2.KitchenSinkPayload payload,
          _i5.AWSStreamedHttpResponse response) =>
      _i2.KitchenSink((b) {
        b.blob = payload.blob;
        b.boolean = payload.boolean;
        b.double$ = payload.double$;
        if (payload.emptyStruct != null) {
          b.emptyStruct.replace(payload.emptyStruct!);
        }
        b.float = payload.float;
        b.httpdateTimestamp = payload.httpdateTimestamp;
        b.integer = payload.integer;
        b.iso8601Timestamp = payload.iso8601Timestamp;
        b.jsonValue = payload.jsonValue;
        if (payload.listOfLists != null) {
          b.listOfLists.replace(payload.listOfLists!);
        }
        if (payload.listOfMapsOfStrings != null) {
          b.listOfMapsOfStrings.replace(payload.listOfMapsOfStrings!);
        }
        if (payload.listOfStrings != null) {
          b.listOfStrings.replace(payload.listOfStrings!);
        }
        if (payload.listOfStructs != null) {
          b.listOfStructs.replace(payload.listOfStructs!);
        }
        b.long = payload.long;
        if (payload.mapOfListsOfStrings != null) {
          b.mapOfListsOfStrings.replace(payload.mapOfListsOfStrings!);
        }
        if (payload.mapOfMaps != null) {
          b.mapOfMaps.replace(payload.mapOfMaps!);
        }
        if (payload.mapOfStrings != null) {
          b.mapOfStrings.replace(payload.mapOfStrings!);
        }
        if (payload.mapOfStructs != null) {
          b.mapOfStructs.replace(payload.mapOfStructs!);
        }
        if (payload.recursiveList != null) {
          b.recursiveList.replace(payload.recursiveList!);
        }
        if (payload.recursiveMap != null) {
          b.recursiveMap.replace(payload.recursiveMap!);
        }
        if (payload.recursiveStruct != null) {
          b.recursiveStruct.replace(payload.recursiveStruct!);
        }
        if (payload.simpleStruct != null) {
          b.simpleStruct.replace(payload.simpleStruct!);
        }
        b.string = payload.string;
        if (payload.structWithJsonName != null) {
          b.structWithJsonName.replace(payload.structWithJsonName!);
        }
        b.timestamp = payload.timestamp;
        b.unixTimestamp = payload.unixTimestamp;
      });
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'aws.protocoltests.json', shape: 'ErrorWithMembers'),
            _i1.ErrorKind.client,
            _i6.ErrorWithMembers),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'aws.protocoltests.json',
                shape: 'ErrorWithoutMembers'),
            _i1.ErrorKind.server,
            _i7.ErrorWithoutMembers)
      ];
}
