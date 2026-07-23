import 'package:gql/ast.dart';

class Fragment$TagTemplate {
  Fragment$TagTemplate({
    required this.id,
    required this.category,
    required this.categoryId,
    required this.reason,
    required this.reasonId,
    required this.functional,
    this.$__typename = 'TagTemplate',
  });

  factory Fragment$TagTemplate.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$category = json['category'];
    final l$categoryId = json['categoryId'];
    final l$reason = json['reason'];
    final l$reasonId = json['reasonId'];
    final l$functional = json['functional'];
    final l$$__typename = json['__typename'];
    return Fragment$TagTemplate(
      id: (l$id as String),
      category: (l$category as String),
      categoryId: (l$categoryId as String),
      reason: (l$reason as String),
      reasonId: (l$reasonId as String),
      functional: (l$functional as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String category;

  final String categoryId;

  final String reason;

  final String reasonId;

  final bool functional;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$categoryId = categoryId;
    _resultData['categoryId'] = l$categoryId;
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$reasonId = reasonId;
    _resultData['reasonId'] = l$reasonId;
    final l$functional = functional;
    _resultData['functional'] = l$functional;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$category = category;
    final l$categoryId = categoryId;
    final l$reason = reason;
    final l$reasonId = reasonId;
    final l$functional = functional;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$category,
      l$categoryId,
      l$reason,
      l$reasonId,
      l$functional,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TagTemplate || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$categoryId = categoryId;
    final lOther$categoryId = other.categoryId;
    if (l$categoryId != lOther$categoryId) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    final l$reasonId = reasonId;
    final lOther$reasonId = other.reasonId;
    if (l$reasonId != lOther$reasonId) {
      return false;
    }
    final l$functional = functional;
    final lOther$functional = other.functional;
    if (l$functional != lOther$functional) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TagTemplate on Fragment$TagTemplate {
  CopyWith$Fragment$TagTemplate<Fragment$TagTemplate> get copyWith =>
      CopyWith$Fragment$TagTemplate(this, (i) => i);
}

abstract class CopyWith$Fragment$TagTemplate<TRes> {
  factory CopyWith$Fragment$TagTemplate(
    Fragment$TagTemplate instance,
    TRes Function(Fragment$TagTemplate) then,
  ) = _CopyWithImpl$Fragment$TagTemplate;

  factory CopyWith$Fragment$TagTemplate.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TagTemplate;

  TRes call({
    String? id,
    String? category,
    String? categoryId,
    String? reason,
    String? reasonId,
    bool? functional,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TagTemplate<TRes>
    implements CopyWith$Fragment$TagTemplate<TRes> {
  _CopyWithImpl$Fragment$TagTemplate(this._instance, this._then);

  final Fragment$TagTemplate _instance;

  final TRes Function(Fragment$TagTemplate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? category = _undefined,
    Object? categoryId = _undefined,
    Object? reason = _undefined,
    Object? reasonId = _undefined,
    Object? functional = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TagTemplate(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      category: category == _undefined || category == null
          ? _instance.category
          : (category as String),
      categoryId: categoryId == _undefined || categoryId == null
          ? _instance.categoryId
          : (categoryId as String),
      reason: reason == _undefined || reason == null
          ? _instance.reason
          : (reason as String),
      reasonId: reasonId == _undefined || reasonId == null
          ? _instance.reasonId
          : (reasonId as String),
      functional: functional == _undefined || functional == null
          ? _instance.functional
          : (functional as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TagTemplate<TRes>
    implements CopyWith$Fragment$TagTemplate<TRes> {
  _CopyWithStubImpl$Fragment$TagTemplate(this._res);

  TRes _res;

  call({
    String? id,
    String? category,
    String? categoryId,
    String? reason,
    String? reasonId,
    bool? functional,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionTagTemplate = FragmentDefinitionNode(
  name: NameNode(value: 'TagTemplate'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'TagTemplate'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'category'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'categoryId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'reason'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'reasonId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'functional'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentTagTemplate = DocumentNode(
  definitions: [fragmentDefinitionTagTemplate],
);
