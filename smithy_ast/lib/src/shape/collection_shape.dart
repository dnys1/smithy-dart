import 'package:built_collection/built_collection.dart';
import 'package:smithy_ast/src/shape/member_shape.dart';
import 'package:smithy_ast/src/shape/shape.dart';

abstract class HasNamedMembers {
  BuiltMap<String, MemberShape> get members;
  Iterable<String> get memberNames => members.keys;
}

abstract class HasMembers implements CollectionShape {
  BuiltList<MemberShape> get members => BuiltList([member]);
}

/// Abstract class representing Set and List shapes.
abstract class CollectionShape implements Shape {
  MemberShape get member;
}
