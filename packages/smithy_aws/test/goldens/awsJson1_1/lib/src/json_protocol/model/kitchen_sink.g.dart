// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1.json_protocol.model.kitchen_sink;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KitchenSink extends KitchenSink {
  @override
  final _i2.Uint8List? blob;
  @override
  final bool? boolean;
  @override
  final double? double$;
  @override
  final _i3.EmptyStruct? emptyStruct;
  @override
  final double? float;
  @override
  final DateTime? httpdateTimestamp;
  @override
  final int? integer;
  @override
  final DateTime? iso8601Timestamp;
  @override
  final _i4.JsonObject? jsonValue;
  @override
  final _i5.BuiltList<_i5.BuiltList<String>>? listOfLists;
  @override
  final _i5.BuiltList<_i5.BuiltMap<String, String>>? listOfMapsOfStrings;
  @override
  final _i5.BuiltList<String>? listOfStrings;
  @override
  final _i5.BuiltList<_i6.SimpleStruct>? listOfStructs;
  @override
  final _i7.Int64? long;
  @override
  final _i5.BuiltListMultimap<String, String>? mapOfListsOfStrings;
  @override
  final _i5.BuiltMap<String, _i5.BuiltMap<String, String>>? mapOfMaps;
  @override
  final _i5.BuiltMap<String, String>? mapOfStrings;
  @override
  final _i5.BuiltMap<String, _i6.SimpleStruct>? mapOfStructs;
  @override
  final _i5.BuiltList<KitchenSink>? recursiveList;
  @override
  final _i5.BuiltMap<String, KitchenSink>? recursiveMap;
  @override
  final KitchenSink? recursiveStruct;
  @override
  final _i6.SimpleStruct? simpleStruct;
  @override
  final String? string;
  @override
  final _i8.StructWithJsonName? structWithJsonName;
  @override
  final DateTime? timestamp;
  @override
  final DateTime? unixTimestamp;

  factory _$KitchenSink([void Function(KitchenSinkBuilder)? updates]) =>
      (new KitchenSinkBuilder()..update(updates)).build();

  _$KitchenSink._(
      {this.blob,
      this.boolean,
      this.double$,
      this.emptyStruct,
      this.float,
      this.httpdateTimestamp,
      this.integer,
      this.iso8601Timestamp,
      this.jsonValue,
      this.listOfLists,
      this.listOfMapsOfStrings,
      this.listOfStrings,
      this.listOfStructs,
      this.long,
      this.mapOfListsOfStrings,
      this.mapOfMaps,
      this.mapOfStrings,
      this.mapOfStructs,
      this.recursiveList,
      this.recursiveMap,
      this.recursiveStruct,
      this.simpleStruct,
      this.string,
      this.structWithJsonName,
      this.timestamp,
      this.unixTimestamp})
      : super._();

  @override
  KitchenSink rebuild(void Function(KitchenSinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KitchenSinkBuilder toBuilder() => new KitchenSinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KitchenSink &&
        blob == other.blob &&
        boolean == other.boolean &&
        double$ == other.double$ &&
        emptyStruct == other.emptyStruct &&
        float == other.float &&
        httpdateTimestamp == other.httpdateTimestamp &&
        integer == other.integer &&
        iso8601Timestamp == other.iso8601Timestamp &&
        jsonValue == other.jsonValue &&
        listOfLists == other.listOfLists &&
        listOfMapsOfStrings == other.listOfMapsOfStrings &&
        listOfStrings == other.listOfStrings &&
        listOfStructs == other.listOfStructs &&
        long == other.long &&
        mapOfListsOfStrings == other.mapOfListsOfStrings &&
        mapOfMaps == other.mapOfMaps &&
        mapOfStrings == other.mapOfStrings &&
        mapOfStructs == other.mapOfStructs &&
        recursiveList == other.recursiveList &&
        recursiveMap == other.recursiveMap &&
        recursiveStruct == other.recursiveStruct &&
        simpleStruct == other.simpleStruct &&
        string == other.string &&
        structWithJsonName == other.structWithJsonName &&
        timestamp == other.timestamp &&
        unixTimestamp == other.unixTimestamp;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc(0, blob.hashCode), boolean.hashCode), double$.hashCode), emptyStruct.hashCode), float.hashCode), httpdateTimestamp.hashCode), integer.hashCode),
                                                                                iso8601Timestamp.hashCode),
                                                                            jsonValue.hashCode),
                                                                        listOfLists.hashCode),
                                                                    listOfMapsOfStrings.hashCode),
                                                                listOfStrings.hashCode),
                                                            listOfStructs.hashCode),
                                                        long.hashCode),
                                                    mapOfListsOfStrings.hashCode),
                                                mapOfMaps.hashCode),
                                            mapOfStrings.hashCode),
                                        mapOfStructs.hashCode),
                                    recursiveList.hashCode),
                                recursiveMap.hashCode),
                            recursiveStruct.hashCode),
                        simpleStruct.hashCode),
                    string.hashCode),
                structWithJsonName.hashCode),
            timestamp.hashCode),
        unixTimestamp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('KitchenSink')
          ..add('blob', blob)
          ..add('boolean', boolean)
          ..add('double\$', double$)
          ..add('emptyStruct', emptyStruct)
          ..add('float', float)
          ..add('httpdateTimestamp', httpdateTimestamp)
          ..add('integer', integer)
          ..add('iso8601Timestamp', iso8601Timestamp)
          ..add('jsonValue', jsonValue)
          ..add('listOfLists', listOfLists)
          ..add('listOfMapsOfStrings', listOfMapsOfStrings)
          ..add('listOfStrings', listOfStrings)
          ..add('listOfStructs', listOfStructs)
          ..add('long', long)
          ..add('mapOfListsOfStrings', mapOfListsOfStrings)
          ..add('mapOfMaps', mapOfMaps)
          ..add('mapOfStrings', mapOfStrings)
          ..add('mapOfStructs', mapOfStructs)
          ..add('recursiveList', recursiveList)
          ..add('recursiveMap', recursiveMap)
          ..add('recursiveStruct', recursiveStruct)
          ..add('simpleStruct', simpleStruct)
          ..add('string', string)
          ..add('structWithJsonName', structWithJsonName)
          ..add('timestamp', timestamp)
          ..add('unixTimestamp', unixTimestamp))
        .toString();
  }
}

class KitchenSinkBuilder implements Builder<KitchenSink, KitchenSinkBuilder> {
  _$KitchenSink? _$v;

  _i2.Uint8List? _blob;
  _i2.Uint8List? get blob => _$this._blob;
  set blob(_i2.Uint8List? blob) => _$this._blob = blob;

  bool? _boolean;
  bool? get boolean => _$this._boolean;
  set boolean(bool? boolean) => _$this._boolean = boolean;

  double? _double$;
  double? get double$ => _$this._double$;
  set double$(double? double$) => _$this._double$ = double$;

  _i3.EmptyStructBuilder? _emptyStruct;
  _i3.EmptyStructBuilder get emptyStruct =>
      _$this._emptyStruct ??= new _i3.EmptyStructBuilder();
  set emptyStruct(_i3.EmptyStructBuilder? emptyStruct) =>
      _$this._emptyStruct = emptyStruct;

  double? _float;
  double? get float => _$this._float;
  set float(double? float) => _$this._float = float;

  DateTime? _httpdateTimestamp;
  DateTime? get httpdateTimestamp => _$this._httpdateTimestamp;
  set httpdateTimestamp(DateTime? httpdateTimestamp) =>
      _$this._httpdateTimestamp = httpdateTimestamp;

  int? _integer;
  int? get integer => _$this._integer;
  set integer(int? integer) => _$this._integer = integer;

  DateTime? _iso8601Timestamp;
  DateTime? get iso8601Timestamp => _$this._iso8601Timestamp;
  set iso8601Timestamp(DateTime? iso8601Timestamp) =>
      _$this._iso8601Timestamp = iso8601Timestamp;

  _i4.JsonObject? _jsonValue;
  _i4.JsonObject? get jsonValue => _$this._jsonValue;
  set jsonValue(_i4.JsonObject? jsonValue) => _$this._jsonValue = jsonValue;

  _i5.ListBuilder<_i5.BuiltList<String>>? _listOfLists;
  _i5.ListBuilder<_i5.BuiltList<String>> get listOfLists =>
      _$this._listOfLists ??= new _i5.ListBuilder<_i5.BuiltList<String>>();
  set listOfLists(_i5.ListBuilder<_i5.BuiltList<String>>? listOfLists) =>
      _$this._listOfLists = listOfLists;

  _i5.ListBuilder<_i5.BuiltMap<String, String>>? _listOfMapsOfStrings;
  _i5.ListBuilder<_i5.BuiltMap<String, String>> get listOfMapsOfStrings =>
      _$this._listOfMapsOfStrings ??=
          new _i5.ListBuilder<_i5.BuiltMap<String, String>>();
  set listOfMapsOfStrings(
          _i5.ListBuilder<_i5.BuiltMap<String, String>>? listOfMapsOfStrings) =>
      _$this._listOfMapsOfStrings = listOfMapsOfStrings;

  _i5.ListBuilder<String>? _listOfStrings;
  _i5.ListBuilder<String> get listOfStrings =>
      _$this._listOfStrings ??= new _i5.ListBuilder<String>();
  set listOfStrings(_i5.ListBuilder<String>? listOfStrings) =>
      _$this._listOfStrings = listOfStrings;

  _i5.ListBuilder<_i6.SimpleStruct>? _listOfStructs;
  _i5.ListBuilder<_i6.SimpleStruct> get listOfStructs =>
      _$this._listOfStructs ??= new _i5.ListBuilder<_i6.SimpleStruct>();
  set listOfStructs(_i5.ListBuilder<_i6.SimpleStruct>? listOfStructs) =>
      _$this._listOfStructs = listOfStructs;

  _i7.Int64? _long;
  _i7.Int64? get long => _$this._long;
  set long(_i7.Int64? long) => _$this._long = long;

  _i5.ListMultimapBuilder<String, String>? _mapOfListsOfStrings;
  _i5.ListMultimapBuilder<String, String> get mapOfListsOfStrings =>
      _$this._mapOfListsOfStrings ??=
          new _i5.ListMultimapBuilder<String, String>();
  set mapOfListsOfStrings(
          _i5.ListMultimapBuilder<String, String>? mapOfListsOfStrings) =>
      _$this._mapOfListsOfStrings = mapOfListsOfStrings;

  _i5.MapBuilder<String, _i5.BuiltMap<String, String>>? _mapOfMaps;
  _i5.MapBuilder<String, _i5.BuiltMap<String, String>> get mapOfMaps =>
      _$this._mapOfMaps ??=
          new _i5.MapBuilder<String, _i5.BuiltMap<String, String>>();
  set mapOfMaps(
          _i5.MapBuilder<String, _i5.BuiltMap<String, String>>? mapOfMaps) =>
      _$this._mapOfMaps = mapOfMaps;

  _i5.MapBuilder<String, String>? _mapOfStrings;
  _i5.MapBuilder<String, String> get mapOfStrings =>
      _$this._mapOfStrings ??= new _i5.MapBuilder<String, String>();
  set mapOfStrings(_i5.MapBuilder<String, String>? mapOfStrings) =>
      _$this._mapOfStrings = mapOfStrings;

  _i5.MapBuilder<String, _i6.SimpleStruct>? _mapOfStructs;
  _i5.MapBuilder<String, _i6.SimpleStruct> get mapOfStructs =>
      _$this._mapOfStructs ??= new _i5.MapBuilder<String, _i6.SimpleStruct>();
  set mapOfStructs(_i5.MapBuilder<String, _i6.SimpleStruct>? mapOfStructs) =>
      _$this._mapOfStructs = mapOfStructs;

  _i5.ListBuilder<KitchenSink>? _recursiveList;
  _i5.ListBuilder<KitchenSink> get recursiveList =>
      _$this._recursiveList ??= new _i5.ListBuilder<KitchenSink>();
  set recursiveList(_i5.ListBuilder<KitchenSink>? recursiveList) =>
      _$this._recursiveList = recursiveList;

  _i5.MapBuilder<String, KitchenSink>? _recursiveMap;
  _i5.MapBuilder<String, KitchenSink> get recursiveMap =>
      _$this._recursiveMap ??= new _i5.MapBuilder<String, KitchenSink>();
  set recursiveMap(_i5.MapBuilder<String, KitchenSink>? recursiveMap) =>
      _$this._recursiveMap = recursiveMap;

  KitchenSinkBuilder? _recursiveStruct;
  KitchenSinkBuilder get recursiveStruct =>
      _$this._recursiveStruct ??= new KitchenSinkBuilder();
  set recursiveStruct(KitchenSinkBuilder? recursiveStruct) =>
      _$this._recursiveStruct = recursiveStruct;

  _i6.SimpleStructBuilder? _simpleStruct;
  _i6.SimpleStructBuilder get simpleStruct =>
      _$this._simpleStruct ??= new _i6.SimpleStructBuilder();
  set simpleStruct(_i6.SimpleStructBuilder? simpleStruct) =>
      _$this._simpleStruct = simpleStruct;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  _i8.StructWithJsonNameBuilder? _structWithJsonName;
  _i8.StructWithJsonNameBuilder get structWithJsonName =>
      _$this._structWithJsonName ??= new _i8.StructWithJsonNameBuilder();
  set structWithJsonName(_i8.StructWithJsonNameBuilder? structWithJsonName) =>
      _$this._structWithJsonName = structWithJsonName;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  DateTime? _unixTimestamp;
  DateTime? get unixTimestamp => _$this._unixTimestamp;
  set unixTimestamp(DateTime? unixTimestamp) =>
      _$this._unixTimestamp = unixTimestamp;

  KitchenSinkBuilder() {
    KitchenSink._init(this);
  }

  KitchenSinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blob = $v.blob;
      _boolean = $v.boolean;
      _double$ = $v.double$;
      _emptyStruct = $v.emptyStruct?.toBuilder();
      _float = $v.float;
      _httpdateTimestamp = $v.httpdateTimestamp;
      _integer = $v.integer;
      _iso8601Timestamp = $v.iso8601Timestamp;
      _jsonValue = $v.jsonValue;
      _listOfLists = $v.listOfLists?.toBuilder();
      _listOfMapsOfStrings = $v.listOfMapsOfStrings?.toBuilder();
      _listOfStrings = $v.listOfStrings?.toBuilder();
      _listOfStructs = $v.listOfStructs?.toBuilder();
      _long = $v.long;
      _mapOfListsOfStrings = $v.mapOfListsOfStrings?.toBuilder();
      _mapOfMaps = $v.mapOfMaps?.toBuilder();
      _mapOfStrings = $v.mapOfStrings?.toBuilder();
      _mapOfStructs = $v.mapOfStructs?.toBuilder();
      _recursiveList = $v.recursiveList?.toBuilder();
      _recursiveMap = $v.recursiveMap?.toBuilder();
      _recursiveStruct = $v.recursiveStruct?.toBuilder();
      _simpleStruct = $v.simpleStruct?.toBuilder();
      _string = $v.string;
      _structWithJsonName = $v.structWithJsonName?.toBuilder();
      _timestamp = $v.timestamp;
      _unixTimestamp = $v.unixTimestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KitchenSink other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KitchenSink;
  }

  @override
  void update(void Function(KitchenSinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$KitchenSink build() {
    _$KitchenSink _$result;
    try {
      _$result = _$v ??
          new _$KitchenSink._(
              blob: blob,
              boolean: boolean,
              double$: double$,
              emptyStruct: _emptyStruct?.build(),
              float: float,
              httpdateTimestamp: httpdateTimestamp,
              integer: integer,
              iso8601Timestamp: iso8601Timestamp,
              jsonValue: jsonValue,
              listOfLists: _listOfLists?.build(),
              listOfMapsOfStrings: _listOfMapsOfStrings?.build(),
              listOfStrings: _listOfStrings?.build(),
              listOfStructs: _listOfStructs?.build(),
              long: long,
              mapOfListsOfStrings: _mapOfListsOfStrings?.build(),
              mapOfMaps: _mapOfMaps?.build(),
              mapOfStrings: _mapOfStrings?.build(),
              mapOfStructs: _mapOfStructs?.build(),
              recursiveList: _recursiveList?.build(),
              recursiveMap: _recursiveMap?.build(),
              recursiveStruct: _recursiveStruct?.build(),
              simpleStruct: _simpleStruct?.build(),
              string: string,
              structWithJsonName: _structWithJsonName?.build(),
              timestamp: timestamp,
              unixTimestamp: unixTimestamp);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'emptyStruct';
        _emptyStruct?.build();

        _$failedField = 'listOfLists';
        _listOfLists?.build();
        _$failedField = 'listOfMapsOfStrings';
        _listOfMapsOfStrings?.build();
        _$failedField = 'listOfStrings';
        _listOfStrings?.build();
        _$failedField = 'listOfStructs';
        _listOfStructs?.build();

        _$failedField = 'mapOfListsOfStrings';
        _mapOfListsOfStrings?.build();
        _$failedField = 'mapOfMaps';
        _mapOfMaps?.build();
        _$failedField = 'mapOfStrings';
        _mapOfStrings?.build();
        _$failedField = 'mapOfStructs';
        _mapOfStructs?.build();
        _$failedField = 'recursiveList';
        _recursiveList?.build();
        _$failedField = 'recursiveMap';
        _recursiveMap?.build();
        _$failedField = 'recursiveStruct';
        _recursiveStruct?.build();
        _$failedField = 'simpleStruct';
        _simpleStruct?.build();

        _$failedField = 'structWithJsonName';
        _structWithJsonName?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'KitchenSink', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
