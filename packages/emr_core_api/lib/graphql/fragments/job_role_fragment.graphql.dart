import 'package:gql/ast.dart';

class Fragment$JobRoleFragment {
  Fragment$JobRoleFragment({
    required this.active,
    required this.description,
    required this.id,
    required this.name,
    required this.systemRoleIds,
    required this.territoryId,
    this.systemRoles,
    this.territory,
    this.$__typename = 'JobRole',
  });

  factory Fragment$JobRoleFragment.fromJson(Map<String, dynamic> json) {
    final l$active = json['active'];
    final l$description = json['description'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$systemRoleIds = json['systemRoleIds'];
    final l$territoryId = json['territoryId'];
    final l$systemRoles = json['systemRoles'];
    final l$territory = json['territory'];
    final l$$__typename = json['__typename'];
    return Fragment$JobRoleFragment(
      active: (l$active as bool),
      description: (l$description as String),
      id: (l$id as String),
      name: (l$name as String),
      systemRoleIds: (l$systemRoleIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      territoryId: (l$territoryId as String),
      systemRoles: (l$systemRoles as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Fragment$JobRoleFragment$systemRoles.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      territory: l$territory == null
          ? null
          : Fragment$JobRoleFragment$territory.fromJson(
              (l$territory as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool active;

  final String description;

  final String id;

  final String name;

  final List<String> systemRoleIds;

  final String territoryId;

  final List<Fragment$JobRoleFragment$systemRoles?>? systemRoles;

  final Fragment$JobRoleFragment$territory? territory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$active = active;
    _resultData['active'] = l$active;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$systemRoleIds = systemRoleIds;
    _resultData['systemRoleIds'] = l$systemRoleIds.map((e) => e).toList();
    final l$territoryId = territoryId;
    _resultData['territoryId'] = l$territoryId;
    final l$systemRoles = systemRoles;
    _resultData['systemRoles'] = l$systemRoles
        ?.map((e) => e?.toJson())
        .toList();
    final l$territory = territory;
    _resultData['territory'] = l$territory?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$active = active;
    final l$description = description;
    final l$id = id;
    final l$name = name;
    final l$systemRoleIds = systemRoleIds;
    final l$territoryId = territoryId;
    final l$systemRoles = systemRoles;
    final l$territory = territory;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$active,
      l$description,
      l$id,
      l$name,
      Object.hashAll(l$systemRoleIds.map((v) => v)),
      l$territoryId,
      l$systemRoles == null
          ? null
          : Object.hashAll(l$systemRoles.map((v) => v)),
      l$territory,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$JobRoleFragment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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
    final l$systemRoleIds = systemRoleIds;
    final lOther$systemRoleIds = other.systemRoleIds;
    if (l$systemRoleIds.length != lOther$systemRoleIds.length) {
      return false;
    }
    for (int i = 0; i < l$systemRoleIds.length; i++) {
      final l$systemRoleIds$entry = l$systemRoleIds[i];
      final lOther$systemRoleIds$entry = lOther$systemRoleIds[i];
      if (l$systemRoleIds$entry != lOther$systemRoleIds$entry) {
        return false;
      }
    }
    final l$territoryId = territoryId;
    final lOther$territoryId = other.territoryId;
    if (l$territoryId != lOther$territoryId) {
      return false;
    }
    final l$systemRoles = systemRoles;
    final lOther$systemRoles = other.systemRoles;
    if (l$systemRoles != null && lOther$systemRoles != null) {
      if (l$systemRoles.length != lOther$systemRoles.length) {
        return false;
      }
      for (int i = 0; i < l$systemRoles.length; i++) {
        final l$systemRoles$entry = l$systemRoles[i];
        final lOther$systemRoles$entry = lOther$systemRoles[i];
        if (l$systemRoles$entry != lOther$systemRoles$entry) {
          return false;
        }
      }
    } else if (l$systemRoles != lOther$systemRoles) {
      return false;
    }
    final l$territory = territory;
    final lOther$territory = other.territory;
    if (l$territory != lOther$territory) {
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

extension UtilityExtension$Fragment$JobRoleFragment
    on Fragment$JobRoleFragment {
  CopyWith$Fragment$JobRoleFragment<Fragment$JobRoleFragment> get copyWith =>
      CopyWith$Fragment$JobRoleFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$JobRoleFragment<TRes> {
  factory CopyWith$Fragment$JobRoleFragment(
    Fragment$JobRoleFragment instance,
    TRes Function(Fragment$JobRoleFragment) then,
  ) = _CopyWithImpl$Fragment$JobRoleFragment;

  factory CopyWith$Fragment$JobRoleFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$JobRoleFragment;

  TRes call({
    bool? active,
    String? description,
    String? id,
    String? name,
    List<String>? systemRoleIds,
    String? territoryId,
    List<Fragment$JobRoleFragment$systemRoles?>? systemRoles,
    Fragment$JobRoleFragment$territory? territory,
    String? $__typename,
  });
  TRes systemRoles(
    Iterable<Fragment$JobRoleFragment$systemRoles?>? Function(
      Iterable<
        CopyWith$Fragment$JobRoleFragment$systemRoles<
          Fragment$JobRoleFragment$systemRoles
        >?
      >?,
    )
    _fn,
  );
  CopyWith$Fragment$JobRoleFragment$territory<TRes> get territory;
}

class _CopyWithImpl$Fragment$JobRoleFragment<TRes>
    implements CopyWith$Fragment$JobRoleFragment<TRes> {
  _CopyWithImpl$Fragment$JobRoleFragment(this._instance, this._then);

  final Fragment$JobRoleFragment _instance;

  final TRes Function(Fragment$JobRoleFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? active = _undefined,
    Object? description = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? systemRoleIds = _undefined,
    Object? territoryId = _undefined,
    Object? systemRoles = _undefined,
    Object? territory = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$JobRoleFragment(
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      systemRoleIds: systemRoleIds == _undefined || systemRoleIds == null
          ? _instance.systemRoleIds
          : (systemRoleIds as List<String>),
      territoryId: territoryId == _undefined || territoryId == null
          ? _instance.territoryId
          : (territoryId as String),
      systemRoles: systemRoles == _undefined
          ? _instance.systemRoles
          : (systemRoles as List<Fragment$JobRoleFragment$systemRoles?>?),
      territory: territory == _undefined
          ? _instance.territory
          : (territory as Fragment$JobRoleFragment$territory?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes systemRoles(
    Iterable<Fragment$JobRoleFragment$systemRoles?>? Function(
      Iterable<
        CopyWith$Fragment$JobRoleFragment$systemRoles<
          Fragment$JobRoleFragment$systemRoles
        >?
      >?,
    )
    _fn,
  ) => call(
    systemRoles: _fn(
      _instance.systemRoles?.map(
        (e) => e == null
            ? null
            : CopyWith$Fragment$JobRoleFragment$systemRoles(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Fragment$JobRoleFragment$territory<TRes> get territory {
    final local$territory = _instance.territory;
    return local$territory == null
        ? CopyWith$Fragment$JobRoleFragment$territory.stub(_then(_instance))
        : CopyWith$Fragment$JobRoleFragment$territory(
            local$territory,
            (e) => call(territory: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$JobRoleFragment<TRes>
    implements CopyWith$Fragment$JobRoleFragment<TRes> {
  _CopyWithStubImpl$Fragment$JobRoleFragment(this._res);

  TRes _res;

  call({
    bool? active,
    String? description,
    String? id,
    String? name,
    List<String>? systemRoleIds,
    String? territoryId,
    List<Fragment$JobRoleFragment$systemRoles?>? systemRoles,
    Fragment$JobRoleFragment$territory? territory,
    String? $__typename,
  }) => _res;

  systemRoles(_fn) => _res;

  CopyWith$Fragment$JobRoleFragment$territory<TRes> get territory =>
      CopyWith$Fragment$JobRoleFragment$territory.stub(_res);
}

const fragmentDefinitionJobRoleFragment = FragmentDefinitionNode(
  name: NameNode(value: 'JobRoleFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'JobRole'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'active'),
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
        name: NameNode(value: 'systemRoleIds'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'territoryId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'systemRoles'),
        alias: null,
        arguments: [],
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
        name: NameNode(value: 'territory'),
        alias: null,
        arguments: [],
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
              name: NameNode(value: 'code'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentJobRoleFragment = DocumentNode(
  definitions: [fragmentDefinitionJobRoleFragment],
);

class Fragment$JobRoleFragment$systemRoles {
  Fragment$JobRoleFragment$systemRoles({
    required this.id,
    required this.name,
    required this.description,
    this.$__typename = 'SystemRole',
  });

  factory Fragment$JobRoleFragment$systemRoles.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Fragment$JobRoleFragment$systemRoles(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$JobRoleFragment$systemRoles ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$JobRoleFragment$systemRoles
    on Fragment$JobRoleFragment$systemRoles {
  CopyWith$Fragment$JobRoleFragment$systemRoles<
    Fragment$JobRoleFragment$systemRoles
  >
  get copyWith => CopyWith$Fragment$JobRoleFragment$systemRoles(this, (i) => i);
}

abstract class CopyWith$Fragment$JobRoleFragment$systemRoles<TRes> {
  factory CopyWith$Fragment$JobRoleFragment$systemRoles(
    Fragment$JobRoleFragment$systemRoles instance,
    TRes Function(Fragment$JobRoleFragment$systemRoles) then,
  ) = _CopyWithImpl$Fragment$JobRoleFragment$systemRoles;

  factory CopyWith$Fragment$JobRoleFragment$systemRoles.stub(TRes res) =
      _CopyWithStubImpl$Fragment$JobRoleFragment$systemRoles;

  TRes call({
    String? id,
    String? name,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$JobRoleFragment$systemRoles<TRes>
    implements CopyWith$Fragment$JobRoleFragment$systemRoles<TRes> {
  _CopyWithImpl$Fragment$JobRoleFragment$systemRoles(
    this._instance,
    this._then,
  );

  final Fragment$JobRoleFragment$systemRoles _instance;

  final TRes Function(Fragment$JobRoleFragment$systemRoles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$JobRoleFragment$systemRoles(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$JobRoleFragment$systemRoles<TRes>
    implements CopyWith$Fragment$JobRoleFragment$systemRoles<TRes> {
  _CopyWithStubImpl$Fragment$JobRoleFragment$systemRoles(this._res);

  TRes _res;

  call({String? id, String? name, String? description, String? $__typename}) =>
      _res;
}

class Fragment$JobRoleFragment$territory {
  Fragment$JobRoleFragment$territory({
    required this.id,
    required this.name,
    required this.code,
    this.$__typename = 'Territory',
  });

  factory Fragment$JobRoleFragment$territory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Fragment$JobRoleFragment$territory(
      id: (l$id as String),
      name: (l$name as String),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$code, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$JobRoleFragment$territory ||
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
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Fragment$JobRoleFragment$territory
    on Fragment$JobRoleFragment$territory {
  CopyWith$Fragment$JobRoleFragment$territory<
    Fragment$JobRoleFragment$territory
  >
  get copyWith => CopyWith$Fragment$JobRoleFragment$territory(this, (i) => i);
}

abstract class CopyWith$Fragment$JobRoleFragment$territory<TRes> {
  factory CopyWith$Fragment$JobRoleFragment$territory(
    Fragment$JobRoleFragment$territory instance,
    TRes Function(Fragment$JobRoleFragment$territory) then,
  ) = _CopyWithImpl$Fragment$JobRoleFragment$territory;

  factory CopyWith$Fragment$JobRoleFragment$territory.stub(TRes res) =
      _CopyWithStubImpl$Fragment$JobRoleFragment$territory;

  TRes call({String? id, String? name, String? code, String? $__typename});
}

class _CopyWithImpl$Fragment$JobRoleFragment$territory<TRes>
    implements CopyWith$Fragment$JobRoleFragment$territory<TRes> {
  _CopyWithImpl$Fragment$JobRoleFragment$territory(this._instance, this._then);

  final Fragment$JobRoleFragment$territory _instance;

  final TRes Function(Fragment$JobRoleFragment$territory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$JobRoleFragment$territory(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$JobRoleFragment$territory<TRes>
    implements CopyWith$Fragment$JobRoleFragment$territory<TRes> {
  _CopyWithStubImpl$Fragment$JobRoleFragment$territory(this._res);

  TRes _res;

  call({String? id, String? name, String? code, String? $__typename}) => _res;
}
