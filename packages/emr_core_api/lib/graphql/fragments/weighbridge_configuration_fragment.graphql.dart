import 'package:gql/ast.dart';

class Fragment$WeighbridgeConfigurationFragment {
  Fragment$WeighbridgeConfigurationFragment({
    required this.id,
    required this.weighbridgeId,
    required this.machineName,
    required this.ipAddress,
    required this.yardId,
    this.configurations,
    required this.tags,
    required this.created,
    required this.modified,
    required this.active,
    this.$__typename = 'WeighbridgeConfiguration',
  });

  factory Fragment$WeighbridgeConfigurationFragment.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$weighbridgeId = json['weighbridgeId'];
    final l$machineName = json['machineName'];
    final l$ipAddress = json['ipAddress'];
    final l$yardId = json['yardId'];
    final l$configurations = json['configurations'];
    final l$tags = json['tags'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeConfigurationFragment(
      id: (l$id as String),
      weighbridgeId: (l$weighbridgeId as String),
      machineName: (l$machineName as String),
      ipAddress: (l$ipAddress as String),
      yardId: (l$yardId as String),
      configurations: (l$configurations as Map<String, dynamic>?),
      tags: (l$tags as List<dynamic>).map((e) => (e as String)).toList(),
      created: Fragment$WeighbridgeConfigurationFragment$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      modified: Fragment$WeighbridgeConfigurationFragment$modified.fromJson(
        (l$modified as Map<String, dynamic>),
      ),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String weighbridgeId;

  final String machineName;

  final String ipAddress;

  final String yardId;

  final Map<String, dynamic>? configurations;

  final List<String> tags;

  final Fragment$WeighbridgeConfigurationFragment$created created;

  final Fragment$WeighbridgeConfigurationFragment$modified modified;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$weighbridgeId = weighbridgeId;
    _resultData['weighbridgeId'] = l$weighbridgeId;
    final l$machineName = machineName;
    _resultData['machineName'] = l$machineName;
    final l$ipAddress = ipAddress;
    _resultData['ipAddress'] = l$ipAddress;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$configurations = configurations;
    _resultData['configurations'] = l$configurations;
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e).toList();
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$weighbridgeId = weighbridgeId;
    final l$machineName = machineName;
    final l$ipAddress = ipAddress;
    final l$yardId = yardId;
    final l$configurations = configurations;
    final l$tags = tags;
    final l$created = created;
    final l$modified = modified;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$weighbridgeId,
      l$machineName,
      l$ipAddress,
      l$yardId,
      l$configurations,
      Object.hashAll(l$tags.map((v) => v)),
      l$created,
      l$modified,
      l$active,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$WeighbridgeConfigurationFragment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$weighbridgeId = weighbridgeId;
    final lOther$weighbridgeId = other.weighbridgeId;
    if (l$weighbridgeId != lOther$weighbridgeId) {
      return false;
    }
    final l$machineName = machineName;
    final lOther$machineName = other.machineName;
    if (l$machineName != lOther$machineName) {
      return false;
    }
    final l$ipAddress = ipAddress;
    final lOther$ipAddress = other.ipAddress;
    if (l$ipAddress != lOther$ipAddress) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
      return false;
    }
    final l$configurations = configurations;
    final lOther$configurations = other.configurations;
    if (l$configurations != lOther$configurations) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags.length != lOther$tags.length) {
      return false;
    }
    for (int i = 0; i < l$tags.length; i++) {
      final l$tags$entry = l$tags[i];
      final lOther$tags$entry = lOther$tags[i];
      if (l$tags$entry != lOther$tags$entry) {
        return false;
      }
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
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

extension UtilityExtension$Fragment$WeighbridgeConfigurationFragment
    on Fragment$WeighbridgeConfigurationFragment {
  CopyWith$Fragment$WeighbridgeConfigurationFragment<
    Fragment$WeighbridgeConfigurationFragment
  >
  get copyWith =>
      CopyWith$Fragment$WeighbridgeConfigurationFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$WeighbridgeConfigurationFragment<TRes> {
  factory CopyWith$Fragment$WeighbridgeConfigurationFragment(
    Fragment$WeighbridgeConfigurationFragment instance,
    TRes Function(Fragment$WeighbridgeConfigurationFragment) then,
  ) = _CopyWithImpl$Fragment$WeighbridgeConfigurationFragment;

  factory CopyWith$Fragment$WeighbridgeConfigurationFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$WeighbridgeConfigurationFragment;

  TRes call({
    String? id,
    String? weighbridgeId,
    String? machineName,
    String? ipAddress,
    String? yardId,
    Map<String, dynamic>? configurations,
    List<String>? tags,
    Fragment$WeighbridgeConfigurationFragment$created? created,
    Fragment$WeighbridgeConfigurationFragment$modified? modified,
    bool? active,
    String? $__typename,
  });
  CopyWith$Fragment$WeighbridgeConfigurationFragment$created<TRes> get created;
  CopyWith$Fragment$WeighbridgeConfigurationFragment$modified<TRes>
  get modified;
}

class _CopyWithImpl$Fragment$WeighbridgeConfigurationFragment<TRes>
    implements CopyWith$Fragment$WeighbridgeConfigurationFragment<TRes> {
  _CopyWithImpl$Fragment$WeighbridgeConfigurationFragment(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeConfigurationFragment _instance;

  final TRes Function(Fragment$WeighbridgeConfigurationFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? weighbridgeId = _undefined,
    Object? machineName = _undefined,
    Object? ipAddress = _undefined,
    Object? yardId = _undefined,
    Object? configurations = _undefined,
    Object? tags = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeConfigurationFragment(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      weighbridgeId: weighbridgeId == _undefined || weighbridgeId == null
          ? _instance.weighbridgeId
          : (weighbridgeId as String),
      machineName: machineName == _undefined || machineName == null
          ? _instance.machineName
          : (machineName as String),
      ipAddress: ipAddress == _undefined || ipAddress == null
          ? _instance.ipAddress
          : (ipAddress as String),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      configurations: configurations == _undefined
          ? _instance.configurations
          : (configurations as Map<String, dynamic>?),
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags as List<String>),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Fragment$WeighbridgeConfigurationFragment$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified as Fragment$WeighbridgeConfigurationFragment$modified),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$WeighbridgeConfigurationFragment$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$WeighbridgeConfigurationFragment$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Fragment$WeighbridgeConfigurationFragment$modified<TRes>
  get modified {
    final local$modified = _instance.modified;
    return CopyWith$Fragment$WeighbridgeConfigurationFragment$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$WeighbridgeConfigurationFragment<TRes>
    implements CopyWith$Fragment$WeighbridgeConfigurationFragment<TRes> {
  _CopyWithStubImpl$Fragment$WeighbridgeConfigurationFragment(this._res);

  TRes _res;

  call({
    String? id,
    String? weighbridgeId,
    String? machineName,
    String? ipAddress,
    String? yardId,
    Map<String, dynamic>? configurations,
    List<String>? tags,
    Fragment$WeighbridgeConfigurationFragment$created? created,
    Fragment$WeighbridgeConfigurationFragment$modified? modified,
    bool? active,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$WeighbridgeConfigurationFragment$created<TRes>
  get created =>
      CopyWith$Fragment$WeighbridgeConfigurationFragment$created.stub(_res);

  CopyWith$Fragment$WeighbridgeConfigurationFragment$modified<TRes>
  get modified =>
      CopyWith$Fragment$WeighbridgeConfigurationFragment$modified.stub(_res);
}

const fragmentDefinitionWeighbridgeConfigurationFragment =
    FragmentDefinitionNode(
      name: NameNode(value: 'WeighbridgeConfigurationFragment'),
      typeCondition: TypeConditionNode(
        on: NamedTypeNode(
          name: NameNode(value: 'WeighbridgeConfiguration'),
          isNonNull: false,
        ),
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
            name: NameNode(value: 'weighbridgeId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'machineName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ipAddress'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'yardId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'configurations'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'tags'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'created'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'at'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'userInfoId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'userName'),
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
            name: NameNode(value: 'modified'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'at'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'userInfoId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'userName'),
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
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    );
const documentNodeFragmentWeighbridgeConfigurationFragment = DocumentNode(
  definitions: [fragmentDefinitionWeighbridgeConfigurationFragment],
);

class Fragment$WeighbridgeConfigurationFragment$created {
  Fragment$WeighbridgeConfigurationFragment$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Fragment$WeighbridgeConfigurationFragment$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeConfigurationFragment$created(
      at: DateTime.parse((l$at as String)),
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userInfoId;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userInfoId, l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$WeighbridgeConfigurationFragment$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Fragment$WeighbridgeConfigurationFragment$created
    on Fragment$WeighbridgeConfigurationFragment$created {
  CopyWith$Fragment$WeighbridgeConfigurationFragment$created<
    Fragment$WeighbridgeConfigurationFragment$created
  >
  get copyWith => CopyWith$Fragment$WeighbridgeConfigurationFragment$created(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$WeighbridgeConfigurationFragment$created<
  TRes
> {
  factory CopyWith$Fragment$WeighbridgeConfigurationFragment$created(
    Fragment$WeighbridgeConfigurationFragment$created instance,
    TRes Function(Fragment$WeighbridgeConfigurationFragment$created) then,
  ) = _CopyWithImpl$Fragment$WeighbridgeConfigurationFragment$created;

  factory CopyWith$Fragment$WeighbridgeConfigurationFragment$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$WeighbridgeConfigurationFragment$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$WeighbridgeConfigurationFragment$created<TRes>
    implements
        CopyWith$Fragment$WeighbridgeConfigurationFragment$created<TRes> {
  _CopyWithImpl$Fragment$WeighbridgeConfigurationFragment$created(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeConfigurationFragment$created _instance;

  final TRes Function(Fragment$WeighbridgeConfigurationFragment$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeConfigurationFragment$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$WeighbridgeConfigurationFragment$created<TRes>
    implements
        CopyWith$Fragment$WeighbridgeConfigurationFragment$created<TRes> {
  _CopyWithStubImpl$Fragment$WeighbridgeConfigurationFragment$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  }) => _res;
}

class Fragment$WeighbridgeConfigurationFragment$modified {
  Fragment$WeighbridgeConfigurationFragment$modified({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Modified',
  });

  factory Fragment$WeighbridgeConfigurationFragment$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Fragment$WeighbridgeConfigurationFragment$modified(
      at: DateTime.parse((l$at as String)),
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userInfoId;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userInfoId, l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$WeighbridgeConfigurationFragment$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Fragment$WeighbridgeConfigurationFragment$modified
    on Fragment$WeighbridgeConfigurationFragment$modified {
  CopyWith$Fragment$WeighbridgeConfigurationFragment$modified<
    Fragment$WeighbridgeConfigurationFragment$modified
  >
  get copyWith => CopyWith$Fragment$WeighbridgeConfigurationFragment$modified(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$WeighbridgeConfigurationFragment$modified<
  TRes
> {
  factory CopyWith$Fragment$WeighbridgeConfigurationFragment$modified(
    Fragment$WeighbridgeConfigurationFragment$modified instance,
    TRes Function(Fragment$WeighbridgeConfigurationFragment$modified) then,
  ) = _CopyWithImpl$Fragment$WeighbridgeConfigurationFragment$modified;

  factory CopyWith$Fragment$WeighbridgeConfigurationFragment$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$WeighbridgeConfigurationFragment$modified;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$WeighbridgeConfigurationFragment$modified<TRes>
    implements
        CopyWith$Fragment$WeighbridgeConfigurationFragment$modified<TRes> {
  _CopyWithImpl$Fragment$WeighbridgeConfigurationFragment$modified(
    this._instance,
    this._then,
  );

  final Fragment$WeighbridgeConfigurationFragment$modified _instance;

  final TRes Function(Fragment$WeighbridgeConfigurationFragment$modified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$WeighbridgeConfigurationFragment$modified(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$WeighbridgeConfigurationFragment$modified<TRes>
    implements
        CopyWith$Fragment$WeighbridgeConfigurationFragment$modified<TRes> {
  _CopyWithStubImpl$Fragment$WeighbridgeConfigurationFragment$modified(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  }) => _res;
}
