import 'package:gql/ast.dart';

class Fragment$JobRolesFragment {
  Fragment$JobRolesFragment({
    required this.id,
    required this.name,
    required this.description,
    required this.active,
    this.$__typename = 'JobRole',
  });

  factory Fragment$JobRolesFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Fragment$JobRolesFragment(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String description;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$active,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$JobRolesFragment ||
        runtimeType != other.runtimeType) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
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

extension UtilityExtension$Fragment$JobRolesFragment
    on Fragment$JobRolesFragment {
  CopyWith$Fragment$JobRolesFragment<Fragment$JobRolesFragment> get copyWith =>
      CopyWith$Fragment$JobRolesFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$JobRolesFragment<TRes> {
  factory CopyWith$Fragment$JobRolesFragment(
    Fragment$JobRolesFragment instance,
    TRes Function(Fragment$JobRolesFragment) then,
  ) = _CopyWithImpl$Fragment$JobRolesFragment;

  factory CopyWith$Fragment$JobRolesFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$JobRolesFragment;

  TRes call({
    String? id,
    String? name,
    String? description,
    bool? active,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$JobRolesFragment<TRes>
    implements CopyWith$Fragment$JobRolesFragment<TRes> {
  _CopyWithImpl$Fragment$JobRolesFragment(this._instance, this._then);

  final Fragment$JobRolesFragment _instance;

  final TRes Function(Fragment$JobRolesFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$JobRolesFragment(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$JobRolesFragment<TRes>
    implements CopyWith$Fragment$JobRolesFragment<TRes> {
  _CopyWithStubImpl$Fragment$JobRolesFragment(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    bool? active,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionJobRolesFragment = FragmentDefinitionNode(
  name: NameNode(value: 'JobRolesFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'JobRole'), isNonNull: false),
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
        name: NameNode(value: 'description'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'active'),
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
const documentNodeFragmentJobRolesFragment = DocumentNode(
  definitions: [fragmentDefinitionJobRolesFragment],
);
