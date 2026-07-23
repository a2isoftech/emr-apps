import 'package:gql/ast.dart';

class Fragment$ProductFragment {
  Fragment$ProductFragment({
    required this.id,
    required this.code,
    required this.description,
    this.$__typename = 'Product',
  });

  factory Fragment$ProductFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Fragment$ProductFragment(
      id: (l$id as String),
      code: (l$code as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$code, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$ProductFragment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtension$Fragment$ProductFragment
    on Fragment$ProductFragment {
  CopyWith$Fragment$ProductFragment<Fragment$ProductFragment> get copyWith =>
      CopyWith$Fragment$ProductFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$ProductFragment<TRes> {
  factory CopyWith$Fragment$ProductFragment(
    Fragment$ProductFragment instance,
    TRes Function(Fragment$ProductFragment) then,
  ) = _CopyWithImpl$Fragment$ProductFragment;

  factory CopyWith$Fragment$ProductFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ProductFragment;

  TRes call({
    String? id,
    String? code,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ProductFragment<TRes>
    implements CopyWith$Fragment$ProductFragment<TRes> {
  _CopyWithImpl$Fragment$ProductFragment(this._instance, this._then);

  final Fragment$ProductFragment _instance;

  final TRes Function(Fragment$ProductFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$ProductFragment(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$ProductFragment<TRes>
    implements CopyWith$Fragment$ProductFragment<TRes> {
  _CopyWithStubImpl$Fragment$ProductFragment(this._res);

  TRes _res;

  call({String? id, String? code, String? description, String? $__typename}) =>
      _res;
}

const fragmentDefinitionProductFragment = FragmentDefinitionNode(
  name: NameNode(value: 'ProductFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Product'), isNonNull: false),
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
        name: NameNode(value: 'code'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'description'),
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
const documentNodeFragmentProductFragment = DocumentNode(
  definitions: [fragmentDefinitionProductFragment],
);
