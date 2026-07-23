import 'package:gql/ast.dart';

class Query$GetUserInfos {
  Query$GetUserInfos({this.userInfos, this.$__typename = 'Query'});

  factory Query$GetUserInfos.fromJson(Map<String, dynamic> json) {
    final l$userInfos = json['userInfos'];
    final l$$__typename = json['__typename'];
    return Query$GetUserInfos(
      userInfos: l$userInfos == null
          ? null
          : Query$GetUserInfos$userInfos.fromJson(
              (l$userInfos as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUserInfos$userInfos? userInfos;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfos = userInfos;
    _resultData['userInfos'] = l$userInfos?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfos = userInfos;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userInfos, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserInfos || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfos = userInfos;
    final lOther$userInfos = other.userInfos;
    if (l$userInfos != lOther$userInfos) {
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

extension UtilityExtension$Query$GetUserInfos on Query$GetUserInfos {
  CopyWith$Query$GetUserInfos<Query$GetUserInfos> get copyWith =>
      CopyWith$Query$GetUserInfos(this, (i) => i);
}

abstract class CopyWith$Query$GetUserInfos<TRes> {
  factory CopyWith$Query$GetUserInfos(
    Query$GetUserInfos instance,
    TRes Function(Query$GetUserInfos) then,
  ) = _CopyWithImpl$Query$GetUserInfos;

  factory CopyWith$Query$GetUserInfos.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserInfos;

  TRes call({Query$GetUserInfos$userInfos? userInfos, String? $__typename});
  CopyWith$Query$GetUserInfos$userInfos<TRes> get userInfos;
}

class _CopyWithImpl$Query$GetUserInfos<TRes>
    implements CopyWith$Query$GetUserInfos<TRes> {
  _CopyWithImpl$Query$GetUserInfos(this._instance, this._then);

  final Query$GetUserInfos _instance;

  final TRes Function(Query$GetUserInfos) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfos = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetUserInfos(
      userInfos: userInfos == _undefined
          ? _instance.userInfos
          : (userInfos as Query$GetUserInfos$userInfos?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetUserInfos$userInfos<TRes> get userInfos {
    final local$userInfos = _instance.userInfos;
    return local$userInfos == null
        ? CopyWith$Query$GetUserInfos$userInfos.stub(_then(_instance))
        : CopyWith$Query$GetUserInfos$userInfos(
            local$userInfos,
            (e) => call(userInfos: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetUserInfos<TRes>
    implements CopyWith$Query$GetUserInfos<TRes> {
  _CopyWithStubImpl$Query$GetUserInfos(this._res);

  TRes _res;

  call({Query$GetUserInfos$userInfos? userInfos, String? $__typename}) => _res;

  CopyWith$Query$GetUserInfos$userInfos<TRes> get userInfos =>
      CopyWith$Query$GetUserInfos$userInfos.stub(_res);
}

const documentNodeQueryGetUserInfos = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetUserInfos'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'userInfos'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'nodes'),
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
                        name: NameNode(value: 'defaultTerritory'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'defaultDepot'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'username'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'emailAddress'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'azureUserId'),
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
  ],
);

class Query$GetUserInfos$userInfos {
  Query$GetUserInfos$userInfos({
    this.nodes,
    this.$__typename = 'UserInfosConnection',
  });

  factory Query$GetUserInfos$userInfos.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetUserInfos$userInfos(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$GetUserInfos$userInfos$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetUserInfos$userInfos$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserInfos$userInfos ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$GetUserInfos$userInfos
    on Query$GetUserInfos$userInfos {
  CopyWith$Query$GetUserInfos$userInfos<Query$GetUserInfos$userInfos>
  get copyWith => CopyWith$Query$GetUserInfos$userInfos(this, (i) => i);
}

abstract class CopyWith$Query$GetUserInfos$userInfos<TRes> {
  factory CopyWith$Query$GetUserInfos$userInfos(
    Query$GetUserInfos$userInfos instance,
    TRes Function(Query$GetUserInfos$userInfos) then,
  ) = _CopyWithImpl$Query$GetUserInfos$userInfos;

  factory CopyWith$Query$GetUserInfos$userInfos.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserInfos$userInfos;

  TRes call({
    List<Query$GetUserInfos$userInfos$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$GetUserInfos$userInfos$nodes>? Function(
      Iterable<
        CopyWith$Query$GetUserInfos$userInfos$nodes<
          Query$GetUserInfos$userInfos$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetUserInfos$userInfos<TRes>
    implements CopyWith$Query$GetUserInfos$userInfos<TRes> {
  _CopyWithImpl$Query$GetUserInfos$userInfos(this._instance, this._then);

  final Query$GetUserInfos$userInfos _instance;

  final TRes Function(Query$GetUserInfos$userInfos) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? nodes = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetUserInfos$userInfos(
          nodes: nodes == _undefined
              ? _instance.nodes
              : (nodes as List<Query$GetUserInfos$userInfos$nodes>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes nodes(
    Iterable<Query$GetUserInfos$userInfos$nodes>? Function(
      Iterable<
        CopyWith$Query$GetUserInfos$userInfos$nodes<
          Query$GetUserInfos$userInfos$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$GetUserInfos$userInfos$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetUserInfos$userInfos<TRes>
    implements CopyWith$Query$GetUserInfos$userInfos<TRes> {
  _CopyWithStubImpl$Query$GetUserInfos$userInfos(this._res);

  TRes _res;

  call({
    List<Query$GetUserInfos$userInfos$nodes>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$GetUserInfos$userInfos$nodes {
  Query$GetUserInfos$userInfos$nodes({
    required this.id,
    required this.name,
    required this.defaultTerritory,
    required this.defaultDepot,
    required this.username,
    required this.emailAddress,
    required this.azureUserId,
    this.$__typename = 'UserInfoLocal',
  });

  factory Query$GetUserInfos$userInfos$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$defaultTerritory = json['defaultTerritory'];
    final l$defaultDepot = json['defaultDepot'];
    final l$username = json['username'];
    final l$emailAddress = json['emailAddress'];
    final l$azureUserId = json['azureUserId'];
    final l$$__typename = json['__typename'];
    return Query$GetUserInfos$userInfos$nodes(
      id: (l$id as String),
      name: (l$name as String),
      defaultTerritory: (l$defaultTerritory as String),
      defaultDepot: (l$defaultDepot as String),
      username: (l$username as String),
      emailAddress: (l$emailAddress as String),
      azureUserId: (l$azureUserId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String defaultTerritory;

  final String defaultDepot;

  final String username;

  final String emailAddress;

  final String azureUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$defaultTerritory = defaultTerritory;
    _resultData['defaultTerritory'] = l$defaultTerritory;
    final l$defaultDepot = defaultDepot;
    _resultData['defaultDepot'] = l$defaultDepot;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$azureUserId = azureUserId;
    _resultData['azureUserId'] = l$azureUserId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$defaultTerritory = defaultTerritory;
    final l$defaultDepot = defaultDepot;
    final l$username = username;
    final l$emailAddress = emailAddress;
    final l$azureUserId = azureUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$defaultTerritory,
      l$defaultDepot,
      l$username,
      l$emailAddress,
      l$azureUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserInfos$userInfos$nodes ||
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
    final l$defaultTerritory = defaultTerritory;
    final lOther$defaultTerritory = other.defaultTerritory;
    if (l$defaultTerritory != lOther$defaultTerritory) {
      return false;
    }
    final l$defaultDepot = defaultDepot;
    final lOther$defaultDepot = other.defaultDepot;
    if (l$defaultDepot != lOther$defaultDepot) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
      return false;
    }
    final l$azureUserId = azureUserId;
    final lOther$azureUserId = other.azureUserId;
    if (l$azureUserId != lOther$azureUserId) {
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

extension UtilityExtension$Query$GetUserInfos$userInfos$nodes
    on Query$GetUserInfos$userInfos$nodes {
  CopyWith$Query$GetUserInfos$userInfos$nodes<
    Query$GetUserInfos$userInfos$nodes
  >
  get copyWith => CopyWith$Query$GetUserInfos$userInfos$nodes(this, (i) => i);
}

abstract class CopyWith$Query$GetUserInfos$userInfos$nodes<TRes> {
  factory CopyWith$Query$GetUserInfos$userInfos$nodes(
    Query$GetUserInfos$userInfos$nodes instance,
    TRes Function(Query$GetUserInfos$userInfos$nodes) then,
  ) = _CopyWithImpl$Query$GetUserInfos$userInfos$nodes;

  factory CopyWith$Query$GetUserInfos$userInfos$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserInfos$userInfos$nodes;

  TRes call({
    String? id,
    String? name,
    String? defaultTerritory,
    String? defaultDepot,
    String? username,
    String? emailAddress,
    String? azureUserId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserInfos$userInfos$nodes<TRes>
    implements CopyWith$Query$GetUserInfos$userInfos$nodes<TRes> {
  _CopyWithImpl$Query$GetUserInfos$userInfos$nodes(this._instance, this._then);

  final Query$GetUserInfos$userInfos$nodes _instance;

  final TRes Function(Query$GetUserInfos$userInfos$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? defaultTerritory = _undefined,
    Object? defaultDepot = _undefined,
    Object? username = _undefined,
    Object? emailAddress = _undefined,
    Object? azureUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetUserInfos$userInfos$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      defaultTerritory:
          defaultTerritory == _undefined || defaultTerritory == null
          ? _instance.defaultTerritory
          : (defaultTerritory as String),
      defaultDepot: defaultDepot == _undefined || defaultDepot == null
          ? _instance.defaultDepot
          : (defaultDepot as String),
      username: username == _undefined || username == null
          ? _instance.username
          : (username as String),
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      azureUserId: azureUserId == _undefined || azureUserId == null
          ? _instance.azureUserId
          : (azureUserId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetUserInfos$userInfos$nodes<TRes>
    implements CopyWith$Query$GetUserInfos$userInfos$nodes<TRes> {
  _CopyWithStubImpl$Query$GetUserInfos$userInfos$nodes(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? defaultTerritory,
    String? defaultDepot,
    String? username,
    String? emailAddress,
    String? azureUserId,
    String? $__typename,
  }) => _res;
}
