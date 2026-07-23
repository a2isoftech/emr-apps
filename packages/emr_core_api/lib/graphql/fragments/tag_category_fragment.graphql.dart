import 'package:gql/ast.dart';

class Fragment$TagCategory {
  Fragment$TagCategory({
    required this.id,
    required this.name,
    required this.functional,
    this.$__typename = 'TagCategory',
  });

  factory Fragment$TagCategory.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$functional = json['functional'];
    final l$$__typename = json['__typename'];
    return Fragment$TagCategory(
      id: (l$id as String),
      name: (l$name as String),
      functional: (l$functional as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final bool functional;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$functional = functional;
    _resultData['functional'] = l$functional;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$functional = functional;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$functional, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TagCategory || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Fragment$TagCategory on Fragment$TagCategory {
  CopyWith$Fragment$TagCategory<Fragment$TagCategory> get copyWith =>
      CopyWith$Fragment$TagCategory(this, (i) => i);
}

abstract class CopyWith$Fragment$TagCategory<TRes> {
  factory CopyWith$Fragment$TagCategory(
    Fragment$TagCategory instance,
    TRes Function(Fragment$TagCategory) then,
  ) = _CopyWithImpl$Fragment$TagCategory;

  factory CopyWith$Fragment$TagCategory.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TagCategory;

  TRes call({String? id, String? name, bool? functional, String? $__typename});
}

class _CopyWithImpl$Fragment$TagCategory<TRes>
    implements CopyWith$Fragment$TagCategory<TRes> {
  _CopyWithImpl$Fragment$TagCategory(this._instance, this._then);

  final Fragment$TagCategory _instance;

  final TRes Function(Fragment$TagCategory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? functional = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TagCategory(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      functional: functional == _undefined || functional == null
          ? _instance.functional
          : (functional as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TagCategory<TRes>
    implements CopyWith$Fragment$TagCategory<TRes> {
  _CopyWithStubImpl$Fragment$TagCategory(this._res);

  TRes _res;

  call({String? id, String? name, bool? functional, String? $__typename}) =>
      _res;
}

const fragmentDefinitionTagCategory = FragmentDefinitionNode(
  name: NameNode(value: 'TagCategory'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'TagCategory'), isNonNull: false),
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
        name: NameNode(value: 'name'),
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
const documentNodeFragmentTagCategory = DocumentNode(
  definitions: [fragmentDefinitionTagCategory],
);
