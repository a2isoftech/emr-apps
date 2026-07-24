import 'package:gql/ast.dart';

class Variables$Query$GetUsers {
  factory Variables$Query$GetUsers({
    String? after,
    String? before,
    int? first,
    int? last,
    List<String>? userIds,
  }) => Variables$Query$GetUsers._({
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (userIds != null) r'userIds': userIds,
  });

  Variables$Query$GetUsers._(this._$data);

  factory Variables$Query$GetUsers.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('userIds')) {
      final l$userIds = data['userIds'];
      result$data['userIds'] = (l$userIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Variables$Query$GetUsers._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  List<String>? get userIds => (_$data['userIds'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('userIds')) {
      final l$userIds = userIds;
      result$data['userIds'] = l$userIds?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetUsers<Variables$Query$GetUsers> get copyWith =>
      CopyWith$Variables$Query$GetUsers(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetUsers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    final l$before = before;
    final lOther$before = other.before;
    if (_$data.containsKey('before') != other._$data.containsKey('before')) {
      return false;
    }
    if (l$before != lOther$before) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$last = last;
    final lOther$last = other.last;
    if (_$data.containsKey('last') != other._$data.containsKey('last')) {
      return false;
    }
    if (l$last != lOther$last) {
      return false;
    }
    final l$userIds = userIds;
    final lOther$userIds = other.userIds;
    if (_$data.containsKey('userIds') != other._$data.containsKey('userIds')) {
      return false;
    }
    if (l$userIds != null && lOther$userIds != null) {
      if (l$userIds.length != lOther$userIds.length) {
        return false;
      }
      for (int i = 0; i < l$userIds.length; i++) {
        final l$userIds$entry = l$userIds[i];
        final lOther$userIds$entry = lOther$userIds[i];
        if (l$userIds$entry != lOther$userIds$entry) {
          return false;
        }
      }
    } else if (l$userIds != lOther$userIds) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$after = after;
    final l$before = before;
    final l$first = first;
    final l$last = last;
    final l$userIds = userIds;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('userIds')
          ? l$userIds == null
                ? null
                : Object.hashAll(l$userIds.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetUsers<TRes> {
  factory CopyWith$Variables$Query$GetUsers(
    Variables$Query$GetUsers instance,
    TRes Function(Variables$Query$GetUsers) then,
  ) = _CopyWithImpl$Variables$Query$GetUsers;

  factory CopyWith$Variables$Query$GetUsers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUsers;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    List<String>? userIds,
  });
}

class _CopyWithImpl$Variables$Query$GetUsers<TRes>
    implements CopyWith$Variables$Query$GetUsers<TRes> {
  _CopyWithImpl$Variables$Query$GetUsers(this._instance, this._then);

  final Variables$Query$GetUsers _instance;

  final TRes Function(Variables$Query$GetUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? userIds = _undefined,
  }) => _then(
    Variables$Query$GetUsers._({
      ..._instance._$data,
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (userIds != _undefined) 'userIds': (userIds as List<String>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetUsers<TRes>
    implements CopyWith$Variables$Query$GetUsers<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUsers(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    List<String>? userIds,
  }) => _res;
}

class Query$GetUsers {
  Query$GetUsers({this.users, this.$__typename = 'Query'});

  factory Query$GetUsers.fromJson(Map<String, dynamic> json) {
    final l$users = json['users'];
    final l$$__typename = json['__typename'];
    return Query$GetUsers(
      users: l$users == null
          ? null
          : Query$GetUsers$users.fromJson((l$users as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUsers$users? users;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$users = users;
    _resultData['users'] = l$users?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$users = users;
    final l$$__typename = $__typename;
    return Object.hashAll([l$users, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUsers || runtimeType != other.runtimeType) {
      return false;
    }
    final l$users = users;
    final lOther$users = other.users;
    if (l$users != lOther$users) {
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

extension UtilityExtension$Query$GetUsers on Query$GetUsers {
  CopyWith$Query$GetUsers<Query$GetUsers> get copyWith =>
      CopyWith$Query$GetUsers(this, (i) => i);
}

abstract class CopyWith$Query$GetUsers<TRes> {
  factory CopyWith$Query$GetUsers(
    Query$GetUsers instance,
    TRes Function(Query$GetUsers) then,
  ) = _CopyWithImpl$Query$GetUsers;

  factory CopyWith$Query$GetUsers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUsers;

  TRes call({Query$GetUsers$users? users, String? $__typename});
  CopyWith$Query$GetUsers$users<TRes> get users;
}

class _CopyWithImpl$Query$GetUsers<TRes>
    implements CopyWith$Query$GetUsers<TRes> {
  _CopyWithImpl$Query$GetUsers(this._instance, this._then);

  final Query$GetUsers _instance;

  final TRes Function(Query$GetUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? users = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetUsers(
          users: users == _undefined
              ? _instance.users
              : (users as Query$GetUsers$users?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetUsers$users<TRes> get users {
    final local$users = _instance.users;
    return local$users == null
        ? CopyWith$Query$GetUsers$users.stub(_then(_instance))
        : CopyWith$Query$GetUsers$users(local$users, (e) => call(users: e));
  }
}

class _CopyWithStubImpl$Query$GetUsers<TRes>
    implements CopyWith$Query$GetUsers<TRes> {
  _CopyWithStubImpl$Query$GetUsers(this._res);

  TRes _res;

  call({Query$GetUsers$users? users, String? $__typename}) => _res;

  CopyWith$Query$GetUsers$users<TRes> get users =>
      CopyWith$Query$GetUsers$users.stub(_res);
}

const documentNodeQueryGetUsers = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetUsers'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'after')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'before')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'last')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'userIds')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'users'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
              ),
              ArgumentNode(
                name: NameNode(value: 'before'),
                value: VariableNode(name: NameNode(value: 'before')),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'last'),
                value: VariableNode(name: NameNode(value: 'last')),
              ),
              ArgumentNode(
                name: NameNode(value: 'userIds'),
                value: VariableNode(name: NameNode(value: 'userIds')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'totalCount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'pageInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'hasNextPage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'hasPreviousPage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'startCursor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'endCursor'),
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
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'azureId'),
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
                        name: NameNode(value: 'userName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'cardNumber'),
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
                        name: NameNode(value: 'groups'),
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
                        name: NameNode(value: 'externalId'),
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

class Query$GetUsers$users {
  Query$GetUsers$users({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'UsersConnection',
  });

  factory Query$GetUsers$users.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetUsers$users(
      totalCount: (l$totalCount as int),
      pageInfo: Query$GetUsers$users$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$GetUsers$users$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$GetUsers$users$pageInfo pageInfo;

  final List<Query$GetUsers$users$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$pageInfo,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUsers$users || runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$GetUsers$users on Query$GetUsers$users {
  CopyWith$Query$GetUsers$users<Query$GetUsers$users> get copyWith =>
      CopyWith$Query$GetUsers$users(this, (i) => i);
}

abstract class CopyWith$Query$GetUsers$users<TRes> {
  factory CopyWith$Query$GetUsers$users(
    Query$GetUsers$users instance,
    TRes Function(Query$GetUsers$users) then,
  ) = _CopyWithImpl$Query$GetUsers$users;

  factory CopyWith$Query$GetUsers$users.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUsers$users;

  TRes call({
    int? totalCount,
    Query$GetUsers$users$pageInfo? pageInfo,
    List<Query$GetUsers$users$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetUsers$users$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$GetUsers$users$nodes>? Function(
      Iterable<
        CopyWith$Query$GetUsers$users$nodes<Query$GetUsers$users$nodes>
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetUsers$users<TRes>
    implements CopyWith$Query$GetUsers$users<TRes> {
  _CopyWithImpl$Query$GetUsers$users(this._instance, this._then);

  final Query$GetUsers$users _instance;

  final TRes Function(Query$GetUsers$users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetUsers$users(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$GetUsers$users$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$GetUsers$users$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetUsers$users$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetUsers$users$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$GetUsers$users$nodes>? Function(
      Iterable<
        CopyWith$Query$GetUsers$users$nodes<Query$GetUsers$users$nodes>
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$GetUsers$users$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetUsers$users<TRes>
    implements CopyWith$Query$GetUsers$users<TRes> {
  _CopyWithStubImpl$Query$GetUsers$users(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$GetUsers$users$pageInfo? pageInfo,
    List<Query$GetUsers$users$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetUsers$users$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetUsers$users$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$GetUsers$users$pageInfo {
  Query$GetUsers$users$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetUsers$users$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetUsers$users$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      hasPreviousPage: (l$hasPreviousPage as bool),
      startCursor: (l$startCursor as String?),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final bool hasPreviousPage;

  final String? startCursor;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$startCursor = startCursor;
    _resultData['startCursor'] = l$startCursor;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    final l$startCursor = startCursor;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$hasPreviousPage,
      l$startCursor,
      l$endCursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUsers$users$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
      return false;
    }
    final l$startCursor = startCursor;
    final lOther$startCursor = other.startCursor;
    if (l$startCursor != lOther$startCursor) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
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

extension UtilityExtension$Query$GetUsers$users$pageInfo
    on Query$GetUsers$users$pageInfo {
  CopyWith$Query$GetUsers$users$pageInfo<Query$GetUsers$users$pageInfo>
  get copyWith => CopyWith$Query$GetUsers$users$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$GetUsers$users$pageInfo<TRes> {
  factory CopyWith$Query$GetUsers$users$pageInfo(
    Query$GetUsers$users$pageInfo instance,
    TRes Function(Query$GetUsers$users$pageInfo) then,
  ) = _CopyWithImpl$Query$GetUsers$users$pageInfo;

  factory CopyWith$Query$GetUsers$users$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUsers$users$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUsers$users$pageInfo<TRes>
    implements CopyWith$Query$GetUsers$users$pageInfo<TRes> {
  _CopyWithImpl$Query$GetUsers$users$pageInfo(this._instance, this._then);

  final Query$GetUsers$users$pageInfo _instance;

  final TRes Function(Query$GetUsers$users$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetUsers$users$pageInfo(
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      hasPreviousPage: hasPreviousPage == _undefined || hasPreviousPage == null
          ? _instance.hasPreviousPage
          : (hasPreviousPage as bool),
      startCursor: startCursor == _undefined
          ? _instance.startCursor
          : (startCursor as String?),
      endCursor: endCursor == _undefined
          ? _instance.endCursor
          : (endCursor as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetUsers$users$pageInfo<TRes>
    implements CopyWith$Query$GetUsers$users$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetUsers$users$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}

class Query$GetUsers$users$nodes {
  Query$GetUsers$users$nodes({
    this.azureId,
    required this.name,
    required this.userName,
    required this.cardNumber,
    required this.id,
    this.groups,
    this.externalId,
    this.$__typename = 'User',
  });

  factory Query$GetUsers$users$nodes.fromJson(Map<String, dynamic> json) {
    final l$azureId = json['azureId'];
    final l$name = json['name'];
    final l$userName = json['userName'];
    final l$cardNumber = json['cardNumber'];
    final l$id = json['id'];
    final l$groups = json['groups'];
    final l$externalId = json['externalId'];
    final l$$__typename = json['__typename'];
    return Query$GetUsers$users$nodes(
      azureId: (l$azureId as String?),
      name: (l$name as String),
      userName: (l$userName as String),
      cardNumber: (l$cardNumber as String),
      id: (l$id as String),
      groups: (l$groups as List<dynamic>?)
          ?.map(
            (e) => Query$GetUsers$users$nodes$groups.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      externalId: (l$externalId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? azureId;

  final String name;

  final String userName;

  final String cardNumber;

  final String id;

  final List<Query$GetUsers$users$nodes$groups>? groups;

  final String? externalId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$azureId = azureId;
    _resultData['azureId'] = l$azureId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$cardNumber = cardNumber;
    _resultData['cardNumber'] = l$cardNumber;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$groups = groups;
    _resultData['groups'] = l$groups?.map((e) => e.toJson()).toList();
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$azureId = azureId;
    final l$name = name;
    final l$userName = userName;
    final l$cardNumber = cardNumber;
    final l$id = id;
    final l$groups = groups;
    final l$externalId = externalId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$azureId,
      l$name,
      l$userName,
      l$cardNumber,
      l$id,
      l$groups == null ? null : Object.hashAll(l$groups.map((v) => v)),
      l$externalId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUsers$users$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$azureId = azureId;
    final lOther$azureId = other.azureId;
    if (l$azureId != lOther$azureId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$cardNumber = cardNumber;
    final lOther$cardNumber = other.cardNumber;
    if (l$cardNumber != lOther$cardNumber) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (l$groups != null && lOther$groups != null) {
      if (l$groups.length != lOther$groups.length) {
        return false;
      }
      for (int i = 0; i < l$groups.length; i++) {
        final l$groups$entry = l$groups[i];
        final lOther$groups$entry = lOther$groups[i];
        if (l$groups$entry != lOther$groups$entry) {
          return false;
        }
      }
    } else if (l$groups != lOther$groups) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
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

extension UtilityExtension$Query$GetUsers$users$nodes
    on Query$GetUsers$users$nodes {
  CopyWith$Query$GetUsers$users$nodes<Query$GetUsers$users$nodes>
  get copyWith => CopyWith$Query$GetUsers$users$nodes(this, (i) => i);
}

abstract class CopyWith$Query$GetUsers$users$nodes<TRes> {
  factory CopyWith$Query$GetUsers$users$nodes(
    Query$GetUsers$users$nodes instance,
    TRes Function(Query$GetUsers$users$nodes) then,
  ) = _CopyWithImpl$Query$GetUsers$users$nodes;

  factory CopyWith$Query$GetUsers$users$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUsers$users$nodes;

  TRes call({
    String? azureId,
    String? name,
    String? userName,
    String? cardNumber,
    String? id,
    List<Query$GetUsers$users$nodes$groups>? groups,
    String? externalId,
    String? $__typename,
  });
  TRes groups(
    Iterable<Query$GetUsers$users$nodes$groups>? Function(
      Iterable<
        CopyWith$Query$GetUsers$users$nodes$groups<
          Query$GetUsers$users$nodes$groups
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetUsers$users$nodes<TRes>
    implements CopyWith$Query$GetUsers$users$nodes<TRes> {
  _CopyWithImpl$Query$GetUsers$users$nodes(this._instance, this._then);

  final Query$GetUsers$users$nodes _instance;

  final TRes Function(Query$GetUsers$users$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? azureId = _undefined,
    Object? name = _undefined,
    Object? userName = _undefined,
    Object? cardNumber = _undefined,
    Object? id = _undefined,
    Object? groups = _undefined,
    Object? externalId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetUsers$users$nodes(
      azureId: azureId == _undefined ? _instance.azureId : (azureId as String?),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      cardNumber: cardNumber == _undefined || cardNumber == null
          ? _instance.cardNumber
          : (cardNumber as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      groups: groups == _undefined
          ? _instance.groups
          : (groups as List<Query$GetUsers$users$nodes$groups>?),
      externalId: externalId == _undefined
          ? _instance.externalId
          : (externalId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes groups(
    Iterable<Query$GetUsers$users$nodes$groups>? Function(
      Iterable<
        CopyWith$Query$GetUsers$users$nodes$groups<
          Query$GetUsers$users$nodes$groups
        >
      >?,
    )
    _fn,
  ) => call(
    groups: _fn(
      _instance.groups?.map(
        (e) => CopyWith$Query$GetUsers$users$nodes$groups(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetUsers$users$nodes<TRes>
    implements CopyWith$Query$GetUsers$users$nodes<TRes> {
  _CopyWithStubImpl$Query$GetUsers$users$nodes(this._res);

  TRes _res;

  call({
    String? azureId,
    String? name,
    String? userName,
    String? cardNumber,
    String? id,
    List<Query$GetUsers$users$nodes$groups>? groups,
    String? externalId,
    String? $__typename,
  }) => _res;

  groups(_fn) => _res;
}

class Query$GetUsers$users$nodes$groups {
  Query$GetUsers$users$nodes$groups({
    required this.id,
    this.$__typename = 'Group',
  });

  factory Query$GetUsers$users$nodes$groups.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetUsers$users$nodes$groups(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUsers$users$nodes$groups ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetUsers$users$nodes$groups
    on Query$GetUsers$users$nodes$groups {
  CopyWith$Query$GetUsers$users$nodes$groups<Query$GetUsers$users$nodes$groups>
  get copyWith => CopyWith$Query$GetUsers$users$nodes$groups(this, (i) => i);
}

abstract class CopyWith$Query$GetUsers$users$nodes$groups<TRes> {
  factory CopyWith$Query$GetUsers$users$nodes$groups(
    Query$GetUsers$users$nodes$groups instance,
    TRes Function(Query$GetUsers$users$nodes$groups) then,
  ) = _CopyWithImpl$Query$GetUsers$users$nodes$groups;

  factory CopyWith$Query$GetUsers$users$nodes$groups.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUsers$users$nodes$groups;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Query$GetUsers$users$nodes$groups<TRes>
    implements CopyWith$Query$GetUsers$users$nodes$groups<TRes> {
  _CopyWithImpl$Query$GetUsers$users$nodes$groups(this._instance, this._then);

  final Query$GetUsers$users$nodes$groups _instance;

  final TRes Function(Query$GetUsers$users$nodes$groups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetUsers$users$nodes$groups(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$GetUsers$users$nodes$groups<TRes>
    implements CopyWith$Query$GetUsers$users$nodes$groups<TRes> {
  _CopyWithStubImpl$Query$GetUsers$users$nodes$groups(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
