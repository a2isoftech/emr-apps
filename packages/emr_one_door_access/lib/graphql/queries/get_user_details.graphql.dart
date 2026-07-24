import 'package:gql/ast.dart';

class Variables$Query$GetUserDetails {
  factory Variables$Query$GetUserDetails({
    String? after,
    String? before,
    int? first,
    int? last,
    List<String>? userIds,
  }) => Variables$Query$GetUserDetails._({
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (userIds != null) r'userIds': userIds,
  });

  Variables$Query$GetUserDetails._(this._$data);

  factory Variables$Query$GetUserDetails.fromJson(Map<String, dynamic> data) {
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
    return Variables$Query$GetUserDetails._(result$data);
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

  CopyWith$Variables$Query$GetUserDetails<Variables$Query$GetUserDetails>
  get copyWith => CopyWith$Variables$Query$GetUserDetails(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetUserDetails ||
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

abstract class CopyWith$Variables$Query$GetUserDetails<TRes> {
  factory CopyWith$Variables$Query$GetUserDetails(
    Variables$Query$GetUserDetails instance,
    TRes Function(Variables$Query$GetUserDetails) then,
  ) = _CopyWithImpl$Variables$Query$GetUserDetails;

  factory CopyWith$Variables$Query$GetUserDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUserDetails;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    List<String>? userIds,
  });
}

class _CopyWithImpl$Variables$Query$GetUserDetails<TRes>
    implements CopyWith$Variables$Query$GetUserDetails<TRes> {
  _CopyWithImpl$Variables$Query$GetUserDetails(this._instance, this._then);

  final Variables$Query$GetUserDetails _instance;

  final TRes Function(Variables$Query$GetUserDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? userIds = _undefined,
  }) => _then(
    Variables$Query$GetUserDetails._({
      ..._instance._$data,
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (userIds != _undefined) 'userIds': (userIds as List<String>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetUserDetails<TRes>
    implements CopyWith$Variables$Query$GetUserDetails<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUserDetails(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    List<String>? userIds,
  }) => _res;
}

class Query$GetUserDetails {
  Query$GetUserDetails({this.users, this.$__typename = 'Query'});

  factory Query$GetUserDetails.fromJson(Map<String, dynamic> json) {
    final l$users = json['users'];
    final l$$__typename = json['__typename'];
    return Query$GetUserDetails(
      users: l$users == null
          ? null
          : Query$GetUserDetails$users.fromJson(
              (l$users as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUserDetails$users? users;

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
    if (other is! Query$GetUserDetails || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetUserDetails on Query$GetUserDetails {
  CopyWith$Query$GetUserDetails<Query$GetUserDetails> get copyWith =>
      CopyWith$Query$GetUserDetails(this, (i) => i);
}

abstract class CopyWith$Query$GetUserDetails<TRes> {
  factory CopyWith$Query$GetUserDetails(
    Query$GetUserDetails instance,
    TRes Function(Query$GetUserDetails) then,
  ) = _CopyWithImpl$Query$GetUserDetails;

  factory CopyWith$Query$GetUserDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserDetails;

  TRes call({Query$GetUserDetails$users? users, String? $__typename});
  CopyWith$Query$GetUserDetails$users<TRes> get users;
}

class _CopyWithImpl$Query$GetUserDetails<TRes>
    implements CopyWith$Query$GetUserDetails<TRes> {
  _CopyWithImpl$Query$GetUserDetails(this._instance, this._then);

  final Query$GetUserDetails _instance;

  final TRes Function(Query$GetUserDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? users = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetUserDetails(
          users: users == _undefined
              ? _instance.users
              : (users as Query$GetUserDetails$users?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetUserDetails$users<TRes> get users {
    final local$users = _instance.users;
    return local$users == null
        ? CopyWith$Query$GetUserDetails$users.stub(_then(_instance))
        : CopyWith$Query$GetUserDetails$users(
            local$users,
            (e) => call(users: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetUserDetails<TRes>
    implements CopyWith$Query$GetUserDetails<TRes> {
  _CopyWithStubImpl$Query$GetUserDetails(this._res);

  TRes _res;

  call({Query$GetUserDetails$users? users, String? $__typename}) => _res;

  CopyWith$Query$GetUserDetails$users<TRes> get users =>
      CopyWith$Query$GetUserDetails$users.stub(_res);
}

const documentNodeQueryGetUserDetails = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetUserDetails'),
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
                        name: NameNode(value: 'externalId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'events'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'rowId'),
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
                              name: NameNode(value: 'accessControllerId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'utcTime'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'topic0'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'topic1'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'topic2'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'accessPointId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'accessPointName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'accessPointRestricted'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'userId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'email'),
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
                        name: NameNode(value: 'groups'),
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

class Query$GetUserDetails$users {
  Query$GetUserDetails$users({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'UsersConnection',
  });

  factory Query$GetUserDetails$users.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetUserDetails$users(
      totalCount: (l$totalCount as int),
      pageInfo: Query$GetUserDetails$users$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$GetUserDetails$users$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$GetUserDetails$users$pageInfo pageInfo;

  final List<Query$GetUserDetails$users$nodes>? nodes;

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
    if (other is! Query$GetUserDetails$users ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetUserDetails$users
    on Query$GetUserDetails$users {
  CopyWith$Query$GetUserDetails$users<Query$GetUserDetails$users>
  get copyWith => CopyWith$Query$GetUserDetails$users(this, (i) => i);
}

abstract class CopyWith$Query$GetUserDetails$users<TRes> {
  factory CopyWith$Query$GetUserDetails$users(
    Query$GetUserDetails$users instance,
    TRes Function(Query$GetUserDetails$users) then,
  ) = _CopyWithImpl$Query$GetUserDetails$users;

  factory CopyWith$Query$GetUserDetails$users.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserDetails$users;

  TRes call({
    int? totalCount,
    Query$GetUserDetails$users$pageInfo? pageInfo,
    List<Query$GetUserDetails$users$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetUserDetails$users$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$GetUserDetails$users$nodes>? Function(
      Iterable<
        CopyWith$Query$GetUserDetails$users$nodes<
          Query$GetUserDetails$users$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetUserDetails$users<TRes>
    implements CopyWith$Query$GetUserDetails$users<TRes> {
  _CopyWithImpl$Query$GetUserDetails$users(this._instance, this._then);

  final Query$GetUserDetails$users _instance;

  final TRes Function(Query$GetUserDetails$users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetUserDetails$users(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$GetUserDetails$users$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$GetUserDetails$users$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetUserDetails$users$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetUserDetails$users$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$GetUserDetails$users$nodes>? Function(
      Iterable<
        CopyWith$Query$GetUserDetails$users$nodes<
          Query$GetUserDetails$users$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$GetUserDetails$users$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetUserDetails$users<TRes>
    implements CopyWith$Query$GetUserDetails$users<TRes> {
  _CopyWithStubImpl$Query$GetUserDetails$users(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$GetUserDetails$users$pageInfo? pageInfo,
    List<Query$GetUserDetails$users$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetUserDetails$users$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetUserDetails$users$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$GetUserDetails$users$pageInfo {
  Query$GetUserDetails$users$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetUserDetails$users$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetUserDetails$users$pageInfo(
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
    if (other is! Query$GetUserDetails$users$pageInfo ||
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

extension UtilityExtension$Query$GetUserDetails$users$pageInfo
    on Query$GetUserDetails$users$pageInfo {
  CopyWith$Query$GetUserDetails$users$pageInfo<
    Query$GetUserDetails$users$pageInfo
  >
  get copyWith => CopyWith$Query$GetUserDetails$users$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$GetUserDetails$users$pageInfo<TRes> {
  factory CopyWith$Query$GetUserDetails$users$pageInfo(
    Query$GetUserDetails$users$pageInfo instance,
    TRes Function(Query$GetUserDetails$users$pageInfo) then,
  ) = _CopyWithImpl$Query$GetUserDetails$users$pageInfo;

  factory CopyWith$Query$GetUserDetails$users$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserDetails$users$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserDetails$users$pageInfo<TRes>
    implements CopyWith$Query$GetUserDetails$users$pageInfo<TRes> {
  _CopyWithImpl$Query$GetUserDetails$users$pageInfo(this._instance, this._then);

  final Query$GetUserDetails$users$pageInfo _instance;

  final TRes Function(Query$GetUserDetails$users$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetUserDetails$users$pageInfo(
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

class _CopyWithStubImpl$Query$GetUserDetails$users$pageInfo<TRes>
    implements CopyWith$Query$GetUserDetails$users$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetUserDetails$users$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}

class Query$GetUserDetails$users$nodes {
  Query$GetUserDetails$users$nodes({
    this.azureId,
    required this.name,
    required this.userName,
    required this.cardNumber,
    required this.id,
    this.externalId,
    this.events,
    this.groups,
    this.$__typename = 'User',
  });

  factory Query$GetUserDetails$users$nodes.fromJson(Map<String, dynamic> json) {
    final l$azureId = json['azureId'];
    final l$name = json['name'];
    final l$userName = json['userName'];
    final l$cardNumber = json['cardNumber'];
    final l$id = json['id'];
    final l$externalId = json['externalId'];
    final l$events = json['events'];
    final l$groups = json['groups'];
    final l$$__typename = json['__typename'];
    return Query$GetUserDetails$users$nodes(
      azureId: (l$azureId as String?),
      name: (l$name as String),
      userName: (l$userName as String),
      cardNumber: (l$cardNumber as String),
      id: (l$id as String),
      externalId: (l$externalId as String?),
      events: (l$events as List<dynamic>?)
          ?.map(
            (e) => Query$GetUserDetails$users$nodes$events.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      groups: (l$groups as List<dynamic>?)
          ?.map(
            (e) => Query$GetUserDetails$users$nodes$groups.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? azureId;

  final String name;

  final String userName;

  final String cardNumber;

  final String id;

  final String? externalId;

  final List<Query$GetUserDetails$users$nodes$events>? events;

  final List<Query$GetUserDetails$users$nodes$groups>? groups;

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
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
    final l$events = events;
    _resultData['events'] = l$events?.map((e) => e.toJson()).toList();
    final l$groups = groups;
    _resultData['groups'] = l$groups?.map((e) => e.toJson()).toList();
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
    final l$externalId = externalId;
    final l$events = events;
    final l$groups = groups;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$azureId,
      l$name,
      l$userName,
      l$cardNumber,
      l$id,
      l$externalId,
      l$events == null ? null : Object.hashAll(l$events.map((v) => v)),
      l$groups == null ? null : Object.hashAll(l$groups.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserDetails$users$nodes ||
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
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUserDetails$users$nodes
    on Query$GetUserDetails$users$nodes {
  CopyWith$Query$GetUserDetails$users$nodes<Query$GetUserDetails$users$nodes>
  get copyWith => CopyWith$Query$GetUserDetails$users$nodes(this, (i) => i);
}

abstract class CopyWith$Query$GetUserDetails$users$nodes<TRes> {
  factory CopyWith$Query$GetUserDetails$users$nodes(
    Query$GetUserDetails$users$nodes instance,
    TRes Function(Query$GetUserDetails$users$nodes) then,
  ) = _CopyWithImpl$Query$GetUserDetails$users$nodes;

  factory CopyWith$Query$GetUserDetails$users$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserDetails$users$nodes;

  TRes call({
    String? azureId,
    String? name,
    String? userName,
    String? cardNumber,
    String? id,
    String? externalId,
    List<Query$GetUserDetails$users$nodes$events>? events,
    List<Query$GetUserDetails$users$nodes$groups>? groups,
    String? $__typename,
  });
  TRes events(
    Iterable<Query$GetUserDetails$users$nodes$events>? Function(
      Iterable<
        CopyWith$Query$GetUserDetails$users$nodes$events<
          Query$GetUserDetails$users$nodes$events
        >
      >?,
    )
    _fn,
  );
  TRes groups(
    Iterable<Query$GetUserDetails$users$nodes$groups>? Function(
      Iterable<
        CopyWith$Query$GetUserDetails$users$nodes$groups<
          Query$GetUserDetails$users$nodes$groups
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetUserDetails$users$nodes<TRes>
    implements CopyWith$Query$GetUserDetails$users$nodes<TRes> {
  _CopyWithImpl$Query$GetUserDetails$users$nodes(this._instance, this._then);

  final Query$GetUserDetails$users$nodes _instance;

  final TRes Function(Query$GetUserDetails$users$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? azureId = _undefined,
    Object? name = _undefined,
    Object? userName = _undefined,
    Object? cardNumber = _undefined,
    Object? id = _undefined,
    Object? externalId = _undefined,
    Object? events = _undefined,
    Object? groups = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetUserDetails$users$nodes(
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
      externalId: externalId == _undefined
          ? _instance.externalId
          : (externalId as String?),
      events: events == _undefined
          ? _instance.events
          : (events as List<Query$GetUserDetails$users$nodes$events>?),
      groups: groups == _undefined
          ? _instance.groups
          : (groups as List<Query$GetUserDetails$users$nodes$groups>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes events(
    Iterable<Query$GetUserDetails$users$nodes$events>? Function(
      Iterable<
        CopyWith$Query$GetUserDetails$users$nodes$events<
          Query$GetUserDetails$users$nodes$events
        >
      >?,
    )
    _fn,
  ) => call(
    events: _fn(
      _instance.events?.map(
        (e) => CopyWith$Query$GetUserDetails$users$nodes$events(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes groups(
    Iterable<Query$GetUserDetails$users$nodes$groups>? Function(
      Iterable<
        CopyWith$Query$GetUserDetails$users$nodes$groups<
          Query$GetUserDetails$users$nodes$groups
        >
      >?,
    )
    _fn,
  ) => call(
    groups: _fn(
      _instance.groups?.map(
        (e) => CopyWith$Query$GetUserDetails$users$nodes$groups(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetUserDetails$users$nodes<TRes>
    implements CopyWith$Query$GetUserDetails$users$nodes<TRes> {
  _CopyWithStubImpl$Query$GetUserDetails$users$nodes(this._res);

  TRes _res;

  call({
    String? azureId,
    String? name,
    String? userName,
    String? cardNumber,
    String? id,
    String? externalId,
    List<Query$GetUserDetails$users$nodes$events>? events,
    List<Query$GetUserDetails$users$nodes$groups>? groups,
    String? $__typename,
  }) => _res;

  events(_fn) => _res;

  groups(_fn) => _res;
}

class Query$GetUserDetails$users$nodes$events {
  Query$GetUserDetails$users$nodes$events({
    required this.rowId,
    this.cardNumber,
    required this.accessControllerId,
    required this.utcTime,
    this.topic0,
    this.topic1,
    this.topic2,
    this.accessPointId,
    this.accessPointName,
    this.accessPointRestricted,
    this.userId,
    this.email,
    this.$__typename = 'DoorAccessAttemptEventsIndexResult',
  });

  factory Query$GetUserDetails$users$nodes$events.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$rowId = json['rowId'];
    final l$cardNumber = json['cardNumber'];
    final l$accessControllerId = json['accessControllerId'];
    final l$utcTime = json['utcTime'];
    final l$topic0 = json['topic0'];
    final l$topic1 = json['topic1'];
    final l$topic2 = json['topic2'];
    final l$accessPointId = json['accessPointId'];
    final l$accessPointName = json['accessPointName'];
    final l$accessPointRestricted = json['accessPointRestricted'];
    final l$userId = json['userId'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Query$GetUserDetails$users$nodes$events(
      rowId: (l$rowId as int),
      cardNumber: (l$cardNumber as String?),
      accessControllerId: (l$accessControllerId as String),
      utcTime: DateTime.parse((l$utcTime as String)),
      topic0: (l$topic0 as String?),
      topic1: (l$topic1 as String?),
      topic2: (l$topic2 as String?),
      accessPointId: (l$accessPointId as String?),
      accessPointName: (l$accessPointName as String?),
      accessPointRestricted: (l$accessPointRestricted as bool?),
      userId: (l$userId as String?),
      email: (l$email as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int rowId;

  final String? cardNumber;

  final String accessControllerId;

  final DateTime utcTime;

  final String? topic0;

  final String? topic1;

  final String? topic2;

  final String? accessPointId;

  final String? accessPointName;

  final bool? accessPointRestricted;

  final String? userId;

  final String? email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rowId = rowId;
    _resultData['rowId'] = l$rowId;
    final l$cardNumber = cardNumber;
    _resultData['cardNumber'] = l$cardNumber;
    final l$accessControllerId = accessControllerId;
    _resultData['accessControllerId'] = l$accessControllerId;
    final l$utcTime = utcTime;
    _resultData['utcTime'] = l$utcTime.toIso8601String();
    final l$topic0 = topic0;
    _resultData['topic0'] = l$topic0;
    final l$topic1 = topic1;
    _resultData['topic1'] = l$topic1;
    final l$topic2 = topic2;
    _resultData['topic2'] = l$topic2;
    final l$accessPointId = accessPointId;
    _resultData['accessPointId'] = l$accessPointId;
    final l$accessPointName = accessPointName;
    _resultData['accessPointName'] = l$accessPointName;
    final l$accessPointRestricted = accessPointRestricted;
    _resultData['accessPointRestricted'] = l$accessPointRestricted;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rowId = rowId;
    final l$cardNumber = cardNumber;
    final l$accessControllerId = accessControllerId;
    final l$utcTime = utcTime;
    final l$topic0 = topic0;
    final l$topic1 = topic1;
    final l$topic2 = topic2;
    final l$accessPointId = accessPointId;
    final l$accessPointName = accessPointName;
    final l$accessPointRestricted = accessPointRestricted;
    final l$userId = userId;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rowId,
      l$cardNumber,
      l$accessControllerId,
      l$utcTime,
      l$topic0,
      l$topic1,
      l$topic2,
      l$accessPointId,
      l$accessPointName,
      l$accessPointRestricted,
      l$userId,
      l$email,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserDetails$users$nodes$events ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$rowId = rowId;
    final lOther$rowId = other.rowId;
    if (l$rowId != lOther$rowId) {
      return false;
    }
    final l$cardNumber = cardNumber;
    final lOther$cardNumber = other.cardNumber;
    if (l$cardNumber != lOther$cardNumber) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$utcTime = utcTime;
    final lOther$utcTime = other.utcTime;
    if (l$utcTime != lOther$utcTime) {
      return false;
    }
    final l$topic0 = topic0;
    final lOther$topic0 = other.topic0;
    if (l$topic0 != lOther$topic0) {
      return false;
    }
    final l$topic1 = topic1;
    final lOther$topic1 = other.topic1;
    if (l$topic1 != lOther$topic1) {
      return false;
    }
    final l$topic2 = topic2;
    final lOther$topic2 = other.topic2;
    if (l$topic2 != lOther$topic2) {
      return false;
    }
    final l$accessPointId = accessPointId;
    final lOther$accessPointId = other.accessPointId;
    if (l$accessPointId != lOther$accessPointId) {
      return false;
    }
    final l$accessPointName = accessPointName;
    final lOther$accessPointName = other.accessPointName;
    if (l$accessPointName != lOther$accessPointName) {
      return false;
    }
    final l$accessPointRestricted = accessPointRestricted;
    final lOther$accessPointRestricted = other.accessPointRestricted;
    if (l$accessPointRestricted != lOther$accessPointRestricted) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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

extension UtilityExtension$Query$GetUserDetails$users$nodes$events
    on Query$GetUserDetails$users$nodes$events {
  CopyWith$Query$GetUserDetails$users$nodes$events<
    Query$GetUserDetails$users$nodes$events
  >
  get copyWith =>
      CopyWith$Query$GetUserDetails$users$nodes$events(this, (i) => i);
}

abstract class CopyWith$Query$GetUserDetails$users$nodes$events<TRes> {
  factory CopyWith$Query$GetUserDetails$users$nodes$events(
    Query$GetUserDetails$users$nodes$events instance,
    TRes Function(Query$GetUserDetails$users$nodes$events) then,
  ) = _CopyWithImpl$Query$GetUserDetails$users$nodes$events;

  factory CopyWith$Query$GetUserDetails$users$nodes$events.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserDetails$users$nodes$events;

  TRes call({
    int? rowId,
    String? cardNumber,
    String? accessControllerId,
    DateTime? utcTime,
    String? topic0,
    String? topic1,
    String? topic2,
    String? accessPointId,
    String? accessPointName,
    bool? accessPointRestricted,
    String? userId,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserDetails$users$nodes$events<TRes>
    implements CopyWith$Query$GetUserDetails$users$nodes$events<TRes> {
  _CopyWithImpl$Query$GetUserDetails$users$nodes$events(
    this._instance,
    this._then,
  );

  final Query$GetUserDetails$users$nodes$events _instance;

  final TRes Function(Query$GetUserDetails$users$nodes$events) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rowId = _undefined,
    Object? cardNumber = _undefined,
    Object? accessControllerId = _undefined,
    Object? utcTime = _undefined,
    Object? topic0 = _undefined,
    Object? topic1 = _undefined,
    Object? topic2 = _undefined,
    Object? accessPointId = _undefined,
    Object? accessPointName = _undefined,
    Object? accessPointRestricted = _undefined,
    Object? userId = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetUserDetails$users$nodes$events(
      rowId: rowId == _undefined || rowId == null
          ? _instance.rowId
          : (rowId as int),
      cardNumber: cardNumber == _undefined
          ? _instance.cardNumber
          : (cardNumber as String?),
      accessControllerId:
          accessControllerId == _undefined || accessControllerId == null
          ? _instance.accessControllerId
          : (accessControllerId as String),
      utcTime: utcTime == _undefined || utcTime == null
          ? _instance.utcTime
          : (utcTime as DateTime),
      topic0: topic0 == _undefined ? _instance.topic0 : (topic0 as String?),
      topic1: topic1 == _undefined ? _instance.topic1 : (topic1 as String?),
      topic2: topic2 == _undefined ? _instance.topic2 : (topic2 as String?),
      accessPointId: accessPointId == _undefined
          ? _instance.accessPointId
          : (accessPointId as String?),
      accessPointName: accessPointName == _undefined
          ? _instance.accessPointName
          : (accessPointName as String?),
      accessPointRestricted: accessPointRestricted == _undefined
          ? _instance.accessPointRestricted
          : (accessPointRestricted as bool?),
      userId: userId == _undefined ? _instance.userId : (userId as String?),
      email: email == _undefined ? _instance.email : (email as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetUserDetails$users$nodes$events<TRes>
    implements CopyWith$Query$GetUserDetails$users$nodes$events<TRes> {
  _CopyWithStubImpl$Query$GetUserDetails$users$nodes$events(this._res);

  TRes _res;

  call({
    int? rowId,
    String? cardNumber,
    String? accessControllerId,
    DateTime? utcTime,
    String? topic0,
    String? topic1,
    String? topic2,
    String? accessPointId,
    String? accessPointName,
    bool? accessPointRestricted,
    String? userId,
    String? email,
    String? $__typename,
  }) => _res;
}

class Query$GetUserDetails$users$nodes$groups {
  Query$GetUserDetails$users$nodes$groups({
    this.azureId,
    required this.name,
    required this.id,
    this.$__typename = 'Group',
  });

  factory Query$GetUserDetails$users$nodes$groups.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$azureId = json['azureId'];
    final l$name = json['name'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetUserDetails$users$nodes$groups(
      azureId: (l$azureId as String?),
      name: (l$name as String),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? azureId;

  final String name;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$azureId = azureId;
    _resultData['azureId'] = l$azureId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$azureId = azureId;
    final l$name = name;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$azureId, l$name, l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserDetails$users$nodes$groups ||
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

extension UtilityExtension$Query$GetUserDetails$users$nodes$groups
    on Query$GetUserDetails$users$nodes$groups {
  CopyWith$Query$GetUserDetails$users$nodes$groups<
    Query$GetUserDetails$users$nodes$groups
  >
  get copyWith =>
      CopyWith$Query$GetUserDetails$users$nodes$groups(this, (i) => i);
}

abstract class CopyWith$Query$GetUserDetails$users$nodes$groups<TRes> {
  factory CopyWith$Query$GetUserDetails$users$nodes$groups(
    Query$GetUserDetails$users$nodes$groups instance,
    TRes Function(Query$GetUserDetails$users$nodes$groups) then,
  ) = _CopyWithImpl$Query$GetUserDetails$users$nodes$groups;

  factory CopyWith$Query$GetUserDetails$users$nodes$groups.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserDetails$users$nodes$groups;

  TRes call({String? azureId, String? name, String? id, String? $__typename});
}

class _CopyWithImpl$Query$GetUserDetails$users$nodes$groups<TRes>
    implements CopyWith$Query$GetUserDetails$users$nodes$groups<TRes> {
  _CopyWithImpl$Query$GetUserDetails$users$nodes$groups(
    this._instance,
    this._then,
  );

  final Query$GetUserDetails$users$nodes$groups _instance;

  final TRes Function(Query$GetUserDetails$users$nodes$groups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? azureId = _undefined,
    Object? name = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetUserDetails$users$nodes$groups(
      azureId: azureId == _undefined ? _instance.azureId : (azureId as String?),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetUserDetails$users$nodes$groups<TRes>
    implements CopyWith$Query$GetUserDetails$users$nodes$groups<TRes> {
  _CopyWithStubImpl$Query$GetUserDetails$users$nodes$groups(this._res);

  TRes _res;

  call({String? azureId, String? name, String? id, String? $__typename}) =>
      _res;
}
