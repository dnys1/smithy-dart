// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_node.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TreeNode extends TreeNode {
  @override
  final String content;
  @override
  final void Function() link;
  @override
  final BuiltList<TreeNode> children;

  factory _$TreeNode([void Function(TreeNodeBuilder)? updates]) =>
      (new TreeNodeBuilder()..update(updates)).build();

  _$TreeNode._(
      {required this.content, required this.link, required this.children})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(content, 'TreeNode', 'content');
    BuiltValueNullFieldError.checkNotNull(link, 'TreeNode', 'link');
    BuiltValueNullFieldError.checkNotNull(children, 'TreeNode', 'children');
  }

  @override
  TreeNode rebuild(void Function(TreeNodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TreeNodeBuilder toBuilder() => new TreeNodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is TreeNode &&
        content == other.content &&
        link == _$dynamicOther.link &&
        children == other.children;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, content.hashCode), link.hashCode), children.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TreeNode')
          ..add('content', content)
          ..add('link', link)
          ..add('children', children))
        .toString();
  }
}

class TreeNodeBuilder implements Builder<TreeNode, TreeNodeBuilder> {
  _$TreeNode? _$v;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  void Function()? _link;
  void Function()? get link => _$this._link;
  set link(void Function()? link) => _$this._link = link;

  ListBuilder<TreeNode>? _children;
  ListBuilder<TreeNode> get children =>
      _$this._children ??= new ListBuilder<TreeNode>();
  set children(ListBuilder<TreeNode>? children) => _$this._children = children;

  TreeNodeBuilder();

  TreeNodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _link = $v.link;
      _children = $v.children.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TreeNode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TreeNode;
  }

  @override
  void update(void Function(TreeNodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TreeNode build() {
    _$TreeNode _$result;
    try {
      _$result = _$v ??
          new _$TreeNode._(
              content: BuiltValueNullFieldError.checkNotNull(
                  content, 'TreeNode', 'content'),
              link: BuiltValueNullFieldError.checkNotNull(
                  link, 'TreeNode', 'link'),
              children: children.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'children';
        children.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TreeNode', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
