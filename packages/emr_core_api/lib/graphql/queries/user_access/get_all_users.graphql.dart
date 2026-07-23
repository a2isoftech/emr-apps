import '../../fragments/user_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetAllUsers {
  factory Variables$Query$GetAllUsers({
    required Input$SearchUsersInput input,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$UserSortInput>? order,
  }) => Variables$Query$GetAllUsers._({
    r'input': input,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (order != null) r'order': order,
  });

  Variables$Query$GetAllUsers._(this._$data);

  factory Variables$Query$GetAllUsers.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchUsersInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) => Input$UserSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    return Variables$Query$GetAllUsers._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchUsersInput get input =>
      (_$data['input'] as Input$SearchUsersInput);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  List<Input$UserSortInput>? get order =>
      (_$data['order'] as List<Input$UserSortInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetAllUsers<Variables$Query$GetAllUsers>
  get copyWith => CopyWith$Variables$Query$GetAllUsers(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAllUsers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
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
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
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
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != null && lOther$order != null) {
      if (l$order.length != lOther$order.length) {
        return false;
      }
      for (int i = 0; i < l$order.length; i++) {
        final l$order$entry = l$order[i];
        final lOther$order$entry = lOther$order[i];
        if (l$order$entry != lOther$order$entry) {
          return false;
        }
      }
    } else if (l$order != lOther$order) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    final l$before = before;
    final l$after = after;
    final l$first = first;
    final l$last = last;
    final l$order = order;
    return Object.hashAll([
      l$input,
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('order')
          ? l$order == null
                ? null
                : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetAllUsers<TRes> {
  factory CopyWith$Variables$Query$GetAllUsers(
    Variables$Query$GetAllUsers instance,
    TRes Function(Variables$Query$GetAllUsers) then,
  ) = _CopyWithImpl$Variables$Query$GetAllUsers;

  factory CopyWith$Variables$Query$GetAllUsers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllUsers;

  TRes call({
    Input$SearchUsersInput? input,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$UserSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$GetAllUsers<TRes>
    implements CopyWith$Variables$Query$GetAllUsers<TRes> {
  _CopyWithImpl$Variables$Query$GetAllUsers(this._instance, this._then);

  final Variables$Query$GetAllUsers _instance;

  final TRes Function(Variables$Query$GetAllUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$GetAllUsers._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchUsersInput),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (order != _undefined) 'order': (order as List<Input$UserSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAllUsers<TRes>
    implements CopyWith$Variables$Query$GetAllUsers<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllUsers(this._res);

  TRes _res;

  call({
    Input$SearchUsersInput? input,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$UserSortInput>? order,
  }) => _res;
}

class Query$GetAllUsers {
  Query$GetAllUsers({this.users, this.$__typename = 'Query'});

  factory Query$GetAllUsers.fromJson(Map<String, dynamic> json) {
    final l$users = json['users'];
    final l$$__typename = json['__typename'];
    return Query$GetAllUsers(
      users: l$users == null
          ? null
          : Query$GetAllUsers$users.fromJson((l$users as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAllUsers$users? users;

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
    if (other is! Query$GetAllUsers || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetAllUsers on Query$GetAllUsers {
  CopyWith$Query$GetAllUsers<Query$GetAllUsers> get copyWith =>
      CopyWith$Query$GetAllUsers(this, (i) => i);
}

abstract class CopyWith$Query$GetAllUsers<TRes> {
  factory CopyWith$Query$GetAllUsers(
    Query$GetAllUsers instance,
    TRes Function(Query$GetAllUsers) then,
  ) = _CopyWithImpl$Query$GetAllUsers;

  factory CopyWith$Query$GetAllUsers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllUsers;

  TRes call({Query$GetAllUsers$users? users, String? $__typename});
  CopyWith$Query$GetAllUsers$users<TRes> get users;
}

class _CopyWithImpl$Query$GetAllUsers<TRes>
    implements CopyWith$Query$GetAllUsers<TRes> {
  _CopyWithImpl$Query$GetAllUsers(this._instance, this._then);

  final Query$GetAllUsers _instance;

  final TRes Function(Query$GetAllUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? users = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetAllUsers(
          users: users == _undefined
              ? _instance.users
              : (users as Query$GetAllUsers$users?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetAllUsers$users<TRes> get users {
    final local$users = _instance.users;
    return local$users == null
        ? CopyWith$Query$GetAllUsers$users.stub(_then(_instance))
        : CopyWith$Query$GetAllUsers$users(local$users, (e) => call(users: e));
  }
}

class _CopyWithStubImpl$Query$GetAllUsers<TRes>
    implements CopyWith$Query$GetAllUsers<TRes> {
  _CopyWithStubImpl$Query$GetAllUsers(this._res);

  TRes _res;

  call({Query$GetAllUsers$users? users, String? $__typename}) => _res;

  CopyWith$Query$GetAllUsers$users<TRes> get users =>
      CopyWith$Query$GetAllUsers$users.stub(_res);
}

const documentNodeQueryGetAllUsers = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAllUsers'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchUsersInput'),
            isNonNull: true,
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
          variable: VariableNode(name: NameNode(value: 'after')),
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
          variable: VariableNode(name: NameNode(value: 'order')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'UserSortInput'),
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
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
              ArgumentNode(
                name: NameNode(value: 'before'),
                value: VariableNode(name: NameNode(value: 'before')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
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
                name: NameNode(value: 'order'),
                value: VariableNode(name: NameNode(value: 'order')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'edges'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'node'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'UserFragment'),
                              directives: [],
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
                        name: NameNode(value: 'endCursor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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
    fragmentDefinitionUserFragment,
  ],
);

class Query$GetAllUsers$users {
  Query$GetAllUsers$users({
    this.edges,
    required this.totalCount,
    required this.pageInfo,
    this.$__typename = 'UsersConnection',
  });

  factory Query$GetAllUsers$users.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetAllUsers$users(
      edges: (l$edges as List<dynamic>?)
          ?.map(
            (e) => Query$GetAllUsers$users$edges.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      totalCount: (l$totalCount as int),
      pageInfo: Query$GetAllUsers$users$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllUsers$users$edges>? edges;

  final int totalCount;

  final Query$GetAllUsers$users$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e.toJson()).toList();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$totalCount = totalCount;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$totalCount,
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllUsers$users || runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllUsers$users on Query$GetAllUsers$users {
  CopyWith$Query$GetAllUsers$users<Query$GetAllUsers$users> get copyWith =>
      CopyWith$Query$GetAllUsers$users(this, (i) => i);
}

abstract class CopyWith$Query$GetAllUsers$users<TRes> {
  factory CopyWith$Query$GetAllUsers$users(
    Query$GetAllUsers$users instance,
    TRes Function(Query$GetAllUsers$users) then,
  ) = _CopyWithImpl$Query$GetAllUsers$users;

  factory CopyWith$Query$GetAllUsers$users.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllUsers$users;

  TRes call({
    List<Query$GetAllUsers$users$edges>? edges,
    int? totalCount,
    Query$GetAllUsers$users$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
    Iterable<Query$GetAllUsers$users$edges>? Function(
      Iterable<
        CopyWith$Query$GetAllUsers$users$edges<Query$GetAllUsers$users$edges>
      >?,
    )
    _fn,
  );
  CopyWith$Query$GetAllUsers$users$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$GetAllUsers$users<TRes>
    implements CopyWith$Query$GetAllUsers$users<TRes> {
  _CopyWithImpl$Query$GetAllUsers$users(this._instance, this._then);

  final Query$GetAllUsers$users _instance;

  final TRes Function(Query$GetAllUsers$users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllUsers$users(
      edges: edges == _undefined
          ? _instance.edges
          : (edges as List<Query$GetAllUsers$users$edges>?),
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$GetAllUsers$users$pageInfo),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes edges(
    Iterable<Query$GetAllUsers$users$edges>? Function(
      Iterable<
        CopyWith$Query$GetAllUsers$users$edges<Query$GetAllUsers$users$edges>
      >?,
    )
    _fn,
  ) => call(
    edges: _fn(
      _instance.edges?.map(
        (e) => CopyWith$Query$GetAllUsers$users$edges(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Query$GetAllUsers$users$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetAllUsers$users$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAllUsers$users<TRes>
    implements CopyWith$Query$GetAllUsers$users<TRes> {
  _CopyWithStubImpl$Query$GetAllUsers$users(this._res);

  TRes _res;

  call({
    List<Query$GetAllUsers$users$edges>? edges,
    int? totalCount,
    Query$GetAllUsers$users$pageInfo? pageInfo,
    String? $__typename,
  }) => _res;

  edges(_fn) => _res;

  CopyWith$Query$GetAllUsers$users$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetAllUsers$users$pageInfo.stub(_res);
}

class Query$GetAllUsers$users$edges {
  Query$GetAllUsers$users$edges({
    required this.node,
    this.$__typename = 'UsersEdge',
  });

  factory Query$GetAllUsers$users$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$GetAllUsers$users$edges(
      node: Fragment$UserFragment.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$UserFragment node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllUsers$users$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$GetAllUsers$users$edges
    on Query$GetAllUsers$users$edges {
  CopyWith$Query$GetAllUsers$users$edges<Query$GetAllUsers$users$edges>
  get copyWith => CopyWith$Query$GetAllUsers$users$edges(this, (i) => i);
}

abstract class CopyWith$Query$GetAllUsers$users$edges<TRes> {
  factory CopyWith$Query$GetAllUsers$users$edges(
    Query$GetAllUsers$users$edges instance,
    TRes Function(Query$GetAllUsers$users$edges) then,
  ) = _CopyWithImpl$Query$GetAllUsers$users$edges;

  factory CopyWith$Query$GetAllUsers$users$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllUsers$users$edges;

  TRes call({Fragment$UserFragment? node, String? $__typename});
  CopyWith$Fragment$UserFragment<TRes> get node;
}

class _CopyWithImpl$Query$GetAllUsers$users$edges<TRes>
    implements CopyWith$Query$GetAllUsers$users$edges<TRes> {
  _CopyWithImpl$Query$GetAllUsers$users$edges(this._instance, this._then);

  final Query$GetAllUsers$users$edges _instance;

  final TRes Function(Query$GetAllUsers$users$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetAllUsers$users$edges(
          node: node == _undefined || node == null
              ? _instance.node
              : (node as Fragment$UserFragment),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Fragment$UserFragment<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$UserFragment(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$GetAllUsers$users$edges<TRes>
    implements CopyWith$Query$GetAllUsers$users$edges<TRes> {
  _CopyWithStubImpl$Query$GetAllUsers$users$edges(this._res);

  TRes _res;

  call({Fragment$UserFragment? node, String? $__typename}) => _res;

  CopyWith$Fragment$UserFragment<TRes> get node =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$GetAllUsers$users$pageInfo {
  Query$GetAllUsers$users$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetAllUsers$users$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetAllUsers$users$pageInfo(
      endCursor: (l$endCursor as String?),
      hasNextPage: (l$hasNextPage as bool),
      hasPreviousPage: (l$hasPreviousPage as bool),
      startCursor: (l$startCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? endCursor;

  final bool hasNextPage;

  final bool hasPreviousPage;

  final String? startCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$startCursor = startCursor;
    _resultData['startCursor'] = l$startCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    final l$startCursor = startCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$endCursor,
      l$hasNextPage,
      l$hasPreviousPage,
      l$startCursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllUsers$users$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllUsers$users$pageInfo
    on Query$GetAllUsers$users$pageInfo {
  CopyWith$Query$GetAllUsers$users$pageInfo<Query$GetAllUsers$users$pageInfo>
  get copyWith => CopyWith$Query$GetAllUsers$users$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$GetAllUsers$users$pageInfo<TRes> {
  factory CopyWith$Query$GetAllUsers$users$pageInfo(
    Query$GetAllUsers$users$pageInfo instance,
    TRes Function(Query$GetAllUsers$users$pageInfo) then,
  ) = _CopyWithImpl$Query$GetAllUsers$users$pageInfo;

  factory CopyWith$Query$GetAllUsers$users$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllUsers$users$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllUsers$users$pageInfo<TRes>
    implements CopyWith$Query$GetAllUsers$users$pageInfo<TRes> {
  _CopyWithImpl$Query$GetAllUsers$users$pageInfo(this._instance, this._then);

  final Query$GetAllUsers$users$pageInfo _instance;

  final TRes Function(Query$GetAllUsers$users$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllUsers$users$pageInfo(
      endCursor: endCursor == _undefined
          ? _instance.endCursor
          : (endCursor as String?),
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      hasPreviousPage: hasPreviousPage == _undefined || hasPreviousPage == null
          ? _instance.hasPreviousPage
          : (hasPreviousPage as bool),
      startCursor: startCursor == _undefined
          ? _instance.startCursor
          : (startCursor as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAllUsers$users$pageInfo<TRes>
    implements CopyWith$Query$GetAllUsers$users$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetAllUsers$users$pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  }) => _res;
}
