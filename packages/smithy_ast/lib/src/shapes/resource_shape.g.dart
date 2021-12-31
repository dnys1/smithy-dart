// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ResourceShape> _$resourceShapeSerializer =
    new _$ResourceShapeSerializer();

class _$ResourceShapeSerializer implements StructuredSerializer<ResourceShape> {
  @override
  final Iterable<Type> types = const [ResourceShape, _$ResourceShape];
  @override
  final String wireName = 'ResourceShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, ResourceShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'identifiers',
      serializers.serialize(object.identifiers,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(ShapeRef)])),
      'put',
      serializers.serialize(object.put,
          specifiedType: const FullType(ShapeRef)),
      'create',
      serializers.serialize(object.create,
          specifiedType: const FullType(ShapeRef)),
      'read',
      serializers.serialize(object.read,
          specifiedType: const FullType(ShapeRef)),
      'update',
      serializers.serialize(object.update_,
          specifiedType: const FullType(ShapeRef)),
      'delete',
      serializers.serialize(object.delete,
          specifiedType: const FullType(ShapeRef)),
      'list',
      serializers.serialize(object.list,
          specifiedType: const FullType(ShapeRef)),
      'collectionOperations',
      serializers.serialize(object.collectionOperations,
          specifiedType: const FullType(Set, const [const FullType(ShapeRef)])),
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
      'resources',
      serializers.serialize(object.resources,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(ShapeRef)])),
      'operations',
      serializers.serialize(object.operations,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(ShapeRef)])),
    ];

    return result;
  }

  @override
  ResourceShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResourceShapeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'identifiers':
          result.identifiers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(ShapeRef)]))!);
          break;
        case 'put':
          result.put.replace(serializers.deserialize(value,
              specifiedType: const FullType(ShapeRef))! as ShapeRef);
          break;
        case 'create':
          result.create.replace(serializers.deserialize(value,
              specifiedType: const FullType(ShapeRef))! as ShapeRef);
          break;
        case 'read':
          result.read.replace(serializers.deserialize(value,
              specifiedType: const FullType(ShapeRef))! as ShapeRef);
          break;
        case 'update':
          result.update_.replace(serializers.deserialize(value,
              specifiedType: const FullType(ShapeRef))! as ShapeRef);
          break;
        case 'delete':
          result.delete.replace(serializers.deserialize(value,
              specifiedType: const FullType(ShapeRef))! as ShapeRef);
          break;
        case 'list':
          result.list.replace(serializers.deserialize(value,
              specifiedType: const FullType(ShapeRef))! as ShapeRef);
          break;
        case 'collectionOperations':
          result.collectionOperations = serializers.deserialize(value,
                  specifiedType:
                      const FullType(Set, const [const FullType(ShapeRef)]))
              as Set<ShapeRef>;
          break;
        case 'traits':
          result.traits = serializers.deserialize(value,
              specifiedType: const FullType(TraitMap)) as TraitMap;
          break;
        case 'resources':
          result.resources.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltSet, const [const FullType(ShapeRef)]))!
              as BuiltSet<Object?>);
          break;
        case 'operations':
          result.operations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltSet, const [const FullType(ShapeRef)]))!
              as BuiltSet<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ResourceShape extends ResourceShape {
  @override
  final BuiltMap<String, ShapeRef> identifiers;
  @override
  final ShapeRef put;
  @override
  final ShapeRef create;
  @override
  final ShapeRef read;
  @override
  final ShapeRef update_;
  @override
  final ShapeRef delete;
  @override
  final ShapeRef list;
  @override
  final Set<ShapeRef> collectionOperations;
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;
  @override
  final BuiltSet<ShapeRef> resources;
  @override
  final BuiltSet<ShapeRef> operations;

  factory _$ResourceShape([void Function(ResourceShapeBuilder)? updates]) =>
      (new ResourceShapeBuilder()..update(updates)).build();

  _$ResourceShape._(
      {required this.identifiers,
      required this.put,
      required this.create,
      required this.read,
      required this.update_,
      required this.delete,
      required this.list,
      required this.collectionOperations,
      required this.shapeId,
      required this.traits,
      required this.resources,
      required this.operations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        identifiers, 'ResourceShape', 'identifiers');
    BuiltValueNullFieldError.checkNotNull(put, 'ResourceShape', 'put');
    BuiltValueNullFieldError.checkNotNull(create, 'ResourceShape', 'create');
    BuiltValueNullFieldError.checkNotNull(read, 'ResourceShape', 'read');
    BuiltValueNullFieldError.checkNotNull(update_, 'ResourceShape', 'update_');
    BuiltValueNullFieldError.checkNotNull(delete, 'ResourceShape', 'delete');
    BuiltValueNullFieldError.checkNotNull(list, 'ResourceShape', 'list');
    BuiltValueNullFieldError.checkNotNull(
        collectionOperations, 'ResourceShape', 'collectionOperations');
    BuiltValueNullFieldError.checkNotNull(shapeId, 'ResourceShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'ResourceShape', 'traits');
    BuiltValueNullFieldError.checkNotNull(
        resources, 'ResourceShape', 'resources');
    BuiltValueNullFieldError.checkNotNull(
        operations, 'ResourceShape', 'operations');
  }

  @override
  ResourceShape rebuild(void Function(ResourceShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceShapeBuilder toBuilder() => new ResourceShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceShape &&
        identifiers == other.identifiers &&
        put == other.put &&
        create == other.create &&
        read == other.read &&
        update_ == other.update_ &&
        delete == other.delete &&
        list == other.list &&
        collectionOperations == other.collectionOperations &&
        shapeId == other.shapeId &&
        traits == other.traits &&
        resources == other.resources &&
        operations == other.operations;
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
                                            $jc($jc(0, identifiers.hashCode),
                                                put.hashCode),
                                            create.hashCode),
                                        read.hashCode),
                                    update_.hashCode),
                                delete.hashCode),
                            list.hashCode),
                        collectionOperations.hashCode),
                    shapeId.hashCode),
                traits.hashCode),
            resources.hashCode),
        operations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ResourceShape')
          ..add('identifiers', identifiers)
          ..add('put', put)
          ..add('create', create)
          ..add('read', read)
          ..add('update_', update_)
          ..add('delete', delete)
          ..add('list', list)
          ..add('collectionOperations', collectionOperations)
          ..add('shapeId', shapeId)
          ..add('traits', traits)
          ..add('resources', resources)
          ..add('operations', operations))
        .toString();
  }
}

class ResourceShapeBuilder
    implements Builder<ResourceShape, ResourceShapeBuilder>, ShapeBuilder {
  _$ResourceShape? _$v;

  MapBuilder<String, ShapeRef>? _identifiers;
  MapBuilder<String, ShapeRef> get identifiers =>
      _$this._identifiers ??= new MapBuilder<String, ShapeRef>();
  set identifiers(covariant MapBuilder<String, ShapeRef>? identifiers) =>
      _$this._identifiers = identifiers;

  ShapeRefBuilder? _put;
  ShapeRefBuilder get put => _$this._put ??= new ShapeRefBuilder();
  set put(covariant ShapeRefBuilder? put) => _$this._put = put;

  ShapeRefBuilder? _create;
  ShapeRefBuilder get create => _$this._create ??= new ShapeRefBuilder();
  set create(covariant ShapeRefBuilder? create) => _$this._create = create;

  ShapeRefBuilder? _read;
  ShapeRefBuilder get read => _$this._read ??= new ShapeRefBuilder();
  set read(covariant ShapeRefBuilder? read) => _$this._read = read;

  ShapeRefBuilder? _update_;
  ShapeRefBuilder get update_ => _$this._update_ ??= new ShapeRefBuilder();
  set update_(covariant ShapeRefBuilder? update_) => _$this._update_ = update_;

  ShapeRefBuilder? _delete;
  ShapeRefBuilder get delete => _$this._delete ??= new ShapeRefBuilder();
  set delete(covariant ShapeRefBuilder? delete) => _$this._delete = delete;

  ShapeRefBuilder? _list;
  ShapeRefBuilder get list => _$this._list ??= new ShapeRefBuilder();
  set list(covariant ShapeRefBuilder? list) => _$this._list = list;

  Set<ShapeRef>? _collectionOperations;
  Set<ShapeRef>? get collectionOperations => _$this._collectionOperations;
  set collectionOperations(covariant Set<ShapeRef>? collectionOperations) =>
      _$this._collectionOperations = collectionOperations;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  SetBuilder<ShapeRef>? _resources;
  SetBuilder<ShapeRef> get resources =>
      _$this._resources ??= new SetBuilder<ShapeRef>();
  set resources(covariant SetBuilder<ShapeRef>? resources) =>
      _$this._resources = resources;

  SetBuilder<ShapeRef>? _operations;
  SetBuilder<ShapeRef> get operations =>
      _$this._operations ??= new SetBuilder<ShapeRef>();
  set operations(covariant SetBuilder<ShapeRef>? operations) =>
      _$this._operations = operations;

  ResourceShapeBuilder() {
    ResourceShape._init(this);
  }

  ResourceShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _identifiers = $v.identifiers.toBuilder();
      _put = $v.put.toBuilder();
      _create = $v.create.toBuilder();
      _read = $v.read.toBuilder();
      _update_ = $v.update_.toBuilder();
      _delete = $v.delete.toBuilder();
      _list = $v.list.toBuilder();
      _collectionOperations = $v.collectionOperations;
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _resources = $v.resources.toBuilder();
      _operations = $v.operations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ResourceShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceShape;
  }

  @override
  void update(void Function(ResourceShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResourceShape build() {
    _$ResourceShape _$result;
    try {
      _$result = _$v ??
          new _$ResourceShape._(
              identifiers: identifiers.build(),
              put: put.build(),
              create: create.build(),
              read: read.build(),
              update_: update_.build(),
              delete: delete.build(),
              list: list.build(),
              collectionOperations: BuiltValueNullFieldError.checkNotNull(
                  collectionOperations,
                  'ResourceShape',
                  'collectionOperations'),
              shapeId: BuiltValueNullFieldError.checkNotNull(
                  shapeId, 'ResourceShape', 'shapeId'),
              traits: BuiltValueNullFieldError.checkNotNull(
                  traits, 'ResourceShape', 'traits'),
              resources: resources.build(),
              operations: operations.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'identifiers';
        identifiers.build();
        _$failedField = 'put';
        put.build();
        _$failedField = 'create';
        create.build();
        _$failedField = 'read';
        read.build();
        _$failedField = 'update_';
        update_.build();
        _$failedField = 'delete';
        delete.build();
        _$failedField = 'list';
        list.build();

        _$failedField = 'resources';
        resources.build();
        _$failedField = 'operations';
        operations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ResourceShape', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
