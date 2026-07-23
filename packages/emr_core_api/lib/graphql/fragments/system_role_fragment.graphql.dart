import 'package:gql/ast.dart';

class Fragment$SystemRoleFragment {
  Fragment$SystemRoleFragment({
    required this.id,
    required this.name,
    required this.description,
    this.permissions,
    required this.active,
    required this.permissionNames,
    this.$__typename = 'SystemRole',
  });

  factory Fragment$SystemRoleFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$permissions = json['permissions'];
    final l$active = json['active'];
    final l$permissionNames = json['permissionNames'];
    final l$$__typename = json['__typename'];
    return Fragment$SystemRoleFragment(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String),
      permissions: (l$permissions as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Fragment$SystemRoleFragment$permissions.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      active: (l$active as bool),
      permissionNames: (l$permissionNames as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String description;

  final List<Fragment$SystemRoleFragment$permissions?>? permissions;

  final bool active;

  final List<String> permissionNames;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions
        ?.map((e) => e?.toJson())
        .toList();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$permissionNames = permissionNames;
    _resultData['permissionNames'] = l$permissionNames.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$permissions = permissions;
    final l$active = active;
    final l$permissionNames = permissionNames;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$permissions == null
          ? null
          : Object.hashAll(l$permissions.map((v) => v)),
      l$active,
      Object.hashAll(l$permissionNames.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$SystemRoleFragment ||
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
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (l$permissions != null && lOther$permissions != null) {
      if (l$permissions.length != lOther$permissions.length) {
        return false;
      }
      for (int i = 0; i < l$permissions.length; i++) {
        final l$permissions$entry = l$permissions[i];
        final lOther$permissions$entry = lOther$permissions[i];
        if (l$permissions$entry != lOther$permissions$entry) {
          return false;
        }
      }
    } else if (l$permissions != lOther$permissions) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$permissionNames = permissionNames;
    final lOther$permissionNames = other.permissionNames;
    if (l$permissionNames.length != lOther$permissionNames.length) {
      return false;
    }
    for (int i = 0; i < l$permissionNames.length; i++) {
      final l$permissionNames$entry = l$permissionNames[i];
      final lOther$permissionNames$entry = lOther$permissionNames[i];
      if (l$permissionNames$entry != lOther$permissionNames$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$SystemRoleFragment
    on Fragment$SystemRoleFragment {
  CopyWith$Fragment$SystemRoleFragment<Fragment$SystemRoleFragment>
  get copyWith => CopyWith$Fragment$SystemRoleFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$SystemRoleFragment<TRes> {
  factory CopyWith$Fragment$SystemRoleFragment(
    Fragment$SystemRoleFragment instance,
    TRes Function(Fragment$SystemRoleFragment) then,
  ) = _CopyWithImpl$Fragment$SystemRoleFragment;

  factory CopyWith$Fragment$SystemRoleFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SystemRoleFragment;

  TRes call({
    String? id,
    String? name,
    String? description,
    List<Fragment$SystemRoleFragment$permissions?>? permissions,
    bool? active,
    List<String>? permissionNames,
    String? $__typename,
  });
  TRes permissions(
    Iterable<Fragment$SystemRoleFragment$permissions?>? Function(
      Iterable<
        CopyWith$Fragment$SystemRoleFragment$permissions<
          Fragment$SystemRoleFragment$permissions
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$SystemRoleFragment<TRes>
    implements CopyWith$Fragment$SystemRoleFragment<TRes> {
  _CopyWithImpl$Fragment$SystemRoleFragment(this._instance, this._then);

  final Fragment$SystemRoleFragment _instance;

  final TRes Function(Fragment$SystemRoleFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? permissions = _undefined,
    Object? active = _undefined,
    Object? permissionNames = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$SystemRoleFragment(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      permissions: permissions == _undefined
          ? _instance.permissions
          : (permissions as List<Fragment$SystemRoleFragment$permissions?>?),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      permissionNames: permissionNames == _undefined || permissionNames == null
          ? _instance.permissionNames
          : (permissionNames as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes permissions(
    Iterable<Fragment$SystemRoleFragment$permissions?>? Function(
      Iterable<
        CopyWith$Fragment$SystemRoleFragment$permissions<
          Fragment$SystemRoleFragment$permissions
        >?
      >?,
    )
    _fn,
  ) => call(
    permissions: _fn(
      _instance.permissions?.map(
        (e) => e == null
            ? null
            : CopyWith$Fragment$SystemRoleFragment$permissions(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Fragment$SystemRoleFragment<TRes>
    implements CopyWith$Fragment$SystemRoleFragment<TRes> {
  _CopyWithStubImpl$Fragment$SystemRoleFragment(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    List<Fragment$SystemRoleFragment$permissions?>? permissions,
    bool? active,
    List<String>? permissionNames,
    String? $__typename,
  }) => _res;

  permissions(_fn) => _res;
}

const fragmentDefinitionSystemRoleFragment = FragmentDefinitionNode(
  name: NameNode(value: 'SystemRoleFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'SystemRole'), isNonNull: false),
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
        name: NameNode(value: 'permissions'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'description'),
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
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'active'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'permissionNames'),
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
const documentNodeFragmentSystemRoleFragment = DocumentNode(
  definitions: [fragmentDefinitionSystemRoleFragment],
);

class Fragment$SystemRoleFragment$permissions {
  Fragment$SystemRoleFragment$permissions({
    required this.description,
    required this.name,
    this.$__typename = 'Permission',
  });

  factory Fragment$SystemRoleFragment$permissions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$description = json['description'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$SystemRoleFragment$permissions(
      description: (l$description as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String description;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$description = description;
    _resultData['description'] = l$description;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$description, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$SystemRoleFragment$permissions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Fragment$SystemRoleFragment$permissions
    on Fragment$SystemRoleFragment$permissions {
  CopyWith$Fragment$SystemRoleFragment$permissions<
    Fragment$SystemRoleFragment$permissions
  >
  get copyWith =>
      CopyWith$Fragment$SystemRoleFragment$permissions(this, (i) => i);
}

abstract class CopyWith$Fragment$SystemRoleFragment$permissions<TRes> {
  factory CopyWith$Fragment$SystemRoleFragment$permissions(
    Fragment$SystemRoleFragment$permissions instance,
    TRes Function(Fragment$SystemRoleFragment$permissions) then,
  ) = _CopyWithImpl$Fragment$SystemRoleFragment$permissions;

  factory CopyWith$Fragment$SystemRoleFragment$permissions.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SystemRoleFragment$permissions;

  TRes call({String? description, String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$SystemRoleFragment$permissions<TRes>
    implements CopyWith$Fragment$SystemRoleFragment$permissions<TRes> {
  _CopyWithImpl$Fragment$SystemRoleFragment$permissions(
    this._instance,
    this._then,
  );

  final Fragment$SystemRoleFragment$permissions _instance;

  final TRes Function(Fragment$SystemRoleFragment$permissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$SystemRoleFragment$permissions(
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$SystemRoleFragment$permissions<TRes>
    implements CopyWith$Fragment$SystemRoleFragment$permissions<TRes> {
  _CopyWithStubImpl$Fragment$SystemRoleFragment$permissions(this._res);

  TRes _res;

  call({String? description, String? name, String? $__typename}) => _res;
}
