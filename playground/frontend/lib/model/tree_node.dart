import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'tree_node.g.dart';

abstract class TreeNode implements Built<TreeNode, TreeNodeBuilder> {
  factory TreeNode([void Function(TreeNodeBuilder) updates]) = _$TreeNode;
  TreeNode._();

  String get content;
  void Function() get link;
  BuiltList<TreeNode> get children;
}
