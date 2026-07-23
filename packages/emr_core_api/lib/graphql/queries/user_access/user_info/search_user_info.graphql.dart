import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$searchUserInfos {
  factory Variables$Query$searchUserInfos({
    required Input$SearchUserInfoInput input,
    int? first,
    String? after,
    int? last,
    String? before,
    List<Input$UserInfoSortInput>? order,
  }) => Variables$Query$searchUserInfos._({
    r'input': input,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
    if (order != null) r'order': order,
  });

  Variables$Query$searchUserInfos._(this._$data);

  factory Variables$Query$searchUserInfos.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchUserInfoInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) =>
                Input$UserInfoSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    return Variables$Query$searchUserInfos._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchUserInfoInput get input =>
      (_$data['input'] as Input$SearchUserInfoInput);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  List<Input$UserInfoSortInput>? get order =>
      (_$data['order'] as List<Input$UserInfoSortInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$searchUserInfos<Variables$Query$searchUserInfos>
  get copyWith => CopyWith$Variables$Query$searchUserInfos(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$searchUserInfos ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
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
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
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
    final l$before = before;
    final lOther$before = other.before;
    if (_$data.containsKey('before') != other._$data.containsKey('before')) {
      return false;
    }
    if (l$before != lOther$before) {
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
    final l$first = first;
    final l$after = after;
    final l$last = last;
    final l$before = before;
    final l$order = order;
    return Object.hashAll([
      l$input,
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('order')
          ? l$order == null
                ? null
                : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$searchUserInfos<TRes> {
  factory CopyWith$Variables$Query$searchUserInfos(
    Variables$Query$searchUserInfos instance,
    TRes Function(Variables$Query$searchUserInfos) then,
  ) = _CopyWithImpl$Variables$Query$searchUserInfos;

  factory CopyWith$Variables$Query$searchUserInfos.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$searchUserInfos;

  TRes call({
    Input$SearchUserInfoInput? input,
    int? first,
    String? after,
    int? last,
    String? before,
    List<Input$UserInfoSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$searchUserInfos<TRes>
    implements CopyWith$Variables$Query$searchUserInfos<TRes> {
  _CopyWithImpl$Variables$Query$searchUserInfos(this._instance, this._then);

  final Variables$Query$searchUserInfos _instance;

  final TRes Function(Variables$Query$searchUserInfos) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$searchUserInfos._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchUserInfoInput),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
      if (last != _undefined) 'last': (last as int?),
      if (before != _undefined) 'before': (before as String?),
      if (order != _undefined)
        'order': (order as List<Input$UserInfoSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$searchUserInfos<TRes>
    implements CopyWith$Variables$Query$searchUserInfos<TRes> {
  _CopyWithStubImpl$Variables$Query$searchUserInfos(this._res);

  TRes _res;

  call({
    Input$SearchUserInfoInput? input,
    int? first,
    String? after,
    int? last,
    String? before,
    List<Input$UserInfoSortInput>? order,
  }) => _res;
}

class Query$searchUserInfos {
  Query$searchUserInfos({this.searchUserInfos, this.$__typename = 'Query'});

  factory Query$searchUserInfos.fromJson(Map<String, dynamic> json) {
    final l$searchUserInfos = json['searchUserInfos'];
    final l$$__typename = json['__typename'];
    return Query$searchUserInfos(
      searchUserInfos: l$searchUserInfos == null
          ? null
          : Query$searchUserInfos$searchUserInfos.fromJson(
              (l$searchUserInfos as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$searchUserInfos$searchUserInfos? searchUserInfos;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchUserInfos = searchUserInfos;
    _resultData['searchUserInfos'] = l$searchUserInfos?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchUserInfos = searchUserInfos;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchUserInfos, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$searchUserInfos || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchUserInfos = searchUserInfos;
    final lOther$searchUserInfos = other.searchUserInfos;
    if (l$searchUserInfos != lOther$searchUserInfos) {
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

extension UtilityExtension$Query$searchUserInfos on Query$searchUserInfos {
  CopyWith$Query$searchUserInfos<Query$searchUserInfos> get copyWith =>
      CopyWith$Query$searchUserInfos(this, (i) => i);
}

abstract class CopyWith$Query$searchUserInfos<TRes> {
  factory CopyWith$Query$searchUserInfos(
    Query$searchUserInfos instance,
    TRes Function(Query$searchUserInfos) then,
  ) = _CopyWithImpl$Query$searchUserInfos;

  factory CopyWith$Query$searchUserInfos.stub(TRes res) =
      _CopyWithStubImpl$Query$searchUserInfos;

  TRes call({
    Query$searchUserInfos$searchUserInfos? searchUserInfos,
    String? $__typename,
  });
  CopyWith$Query$searchUserInfos$searchUserInfos<TRes> get searchUserInfos;
}

class _CopyWithImpl$Query$searchUserInfos<TRes>
    implements CopyWith$Query$searchUserInfos<TRes> {
  _CopyWithImpl$Query$searchUserInfos(this._instance, this._then);

  final Query$searchUserInfos _instance;

  final TRes Function(Query$searchUserInfos) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchUserInfos = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchUserInfos(
      searchUserInfos: searchUserInfos == _undefined
          ? _instance.searchUserInfos
          : (searchUserInfos as Query$searchUserInfos$searchUserInfos?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$searchUserInfos$searchUserInfos<TRes> get searchUserInfos {
    final local$searchUserInfos = _instance.searchUserInfos;
    return local$searchUserInfos == null
        ? CopyWith$Query$searchUserInfos$searchUserInfos.stub(_then(_instance))
        : CopyWith$Query$searchUserInfos$searchUserInfos(
            local$searchUserInfos,
            (e) => call(searchUserInfos: e),
          );
  }
}

class _CopyWithStubImpl$Query$searchUserInfos<TRes>
    implements CopyWith$Query$searchUserInfos<TRes> {
  _CopyWithStubImpl$Query$searchUserInfos(this._res);

  TRes _res;

  call({
    Query$searchUserInfos$searchUserInfos? searchUserInfos,
    String? $__typename,
  }) => _res;

  CopyWith$Query$searchUserInfos$searchUserInfos<TRes> get searchUserInfos =>
      CopyWith$Query$searchUserInfos$searchUserInfos.stub(_res);
}

const documentNodeQuerysearchUserInfos = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'searchUserInfos'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchUserInfoInput'),
            isNonNull: true,
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
          variable: VariableNode(name: NameNode(value: 'after')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
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
          variable: VariableNode(name: NameNode(value: 'before')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'order')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'UserInfoSortInput'),
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
            name: NameNode(value: 'searchUserInfos'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
              ),
              ArgumentNode(
                name: NameNode(value: 'last'),
                value: VariableNode(name: NameNode(value: 'last')),
              ),
              ArgumentNode(
                name: NameNode(value: 'before'),
                value: VariableNode(name: NameNode(value: 'before')),
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

class Query$searchUserInfos$searchUserInfos {
  Query$searchUserInfos$searchUserInfos({
    this.nodes,
    this.$__typename = 'SearchUserInfosConnection',
  });

  factory Query$searchUserInfos$searchUserInfos.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$searchUserInfos$searchUserInfos(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$searchUserInfos$searchUserInfos$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$searchUserInfos$searchUserInfos$nodes>? nodes;

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
    if (other is! Query$searchUserInfos$searchUserInfos ||
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

extension UtilityExtension$Query$searchUserInfos$searchUserInfos
    on Query$searchUserInfos$searchUserInfos {
  CopyWith$Query$searchUserInfos$searchUserInfos<
    Query$searchUserInfos$searchUserInfos
  >
  get copyWith =>
      CopyWith$Query$searchUserInfos$searchUserInfos(this, (i) => i);
}

abstract class CopyWith$Query$searchUserInfos$searchUserInfos<TRes> {
  factory CopyWith$Query$searchUserInfos$searchUserInfos(
    Query$searchUserInfos$searchUserInfos instance,
    TRes Function(Query$searchUserInfos$searchUserInfos) then,
  ) = _CopyWithImpl$Query$searchUserInfos$searchUserInfos;

  factory CopyWith$Query$searchUserInfos$searchUserInfos.stub(TRes res) =
      _CopyWithStubImpl$Query$searchUserInfos$searchUserInfos;

  TRes call({
    List<Query$searchUserInfos$searchUserInfos$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$searchUserInfos$searchUserInfos$nodes>? Function(
      Iterable<
        CopyWith$Query$searchUserInfos$searchUserInfos$nodes<
          Query$searchUserInfos$searchUserInfos$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$searchUserInfos$searchUserInfos<TRes>
    implements CopyWith$Query$searchUserInfos$searchUserInfos<TRes> {
  _CopyWithImpl$Query$searchUserInfos$searchUserInfos(
    this._instance,
    this._then,
  );

  final Query$searchUserInfos$searchUserInfos _instance;

  final TRes Function(Query$searchUserInfos$searchUserInfos) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? nodes = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$searchUserInfos$searchUserInfos(
          nodes: nodes == _undefined
              ? _instance.nodes
              : (nodes as List<Query$searchUserInfos$searchUserInfos$nodes>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes nodes(
    Iterable<Query$searchUserInfos$searchUserInfos$nodes>? Function(
      Iterable<
        CopyWith$Query$searchUserInfos$searchUserInfos$nodes<
          Query$searchUserInfos$searchUserInfos$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) =>
            CopyWith$Query$searchUserInfos$searchUserInfos$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$searchUserInfos$searchUserInfos<TRes>
    implements CopyWith$Query$searchUserInfos$searchUserInfos<TRes> {
  _CopyWithStubImpl$Query$searchUserInfos$searchUserInfos(this._res);

  TRes _res;

  call({
    List<Query$searchUserInfos$searchUserInfos$nodes>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$searchUserInfos$searchUserInfos$nodes {
  Query$searchUserInfos$searchUserInfos$nodes({
    required this.id,
    required this.name,
    required this.username,
    required this.emailAddress,
    this.$__typename = 'UserInfo',
  });

  factory Query$searchUserInfos$searchUserInfos$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$username = json['username'];
    final l$emailAddress = json['emailAddress'];
    final l$$__typename = json['__typename'];
    return Query$searchUserInfos$searchUserInfos$nodes(
      id: (l$id as String),
      name: (l$name as String),
      username: (l$username as String),
      emailAddress: (l$emailAddress as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String username;

  final String emailAddress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$username = username;
    final l$emailAddress = emailAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$username,
      l$emailAddress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$searchUserInfos$searchUserInfos$nodes ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$searchUserInfos$searchUserInfos$nodes
    on Query$searchUserInfos$searchUserInfos$nodes {
  CopyWith$Query$searchUserInfos$searchUserInfos$nodes<
    Query$searchUserInfos$searchUserInfos$nodes
  >
  get copyWith =>
      CopyWith$Query$searchUserInfos$searchUserInfos$nodes(this, (i) => i);
}

abstract class CopyWith$Query$searchUserInfos$searchUserInfos$nodes<TRes> {
  factory CopyWith$Query$searchUserInfos$searchUserInfos$nodes(
    Query$searchUserInfos$searchUserInfos$nodes instance,
    TRes Function(Query$searchUserInfos$searchUserInfos$nodes) then,
  ) = _CopyWithImpl$Query$searchUserInfos$searchUserInfos$nodes;

  factory CopyWith$Query$searchUserInfos$searchUserInfos$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$searchUserInfos$searchUserInfos$nodes;

  TRes call({
    String? id,
    String? name,
    String? username,
    String? emailAddress,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchUserInfos$searchUserInfos$nodes<TRes>
    implements CopyWith$Query$searchUserInfos$searchUserInfos$nodes<TRes> {
  _CopyWithImpl$Query$searchUserInfos$searchUserInfos$nodes(
    this._instance,
    this._then,
  );

  final Query$searchUserInfos$searchUserInfos$nodes _instance;

  final TRes Function(Query$searchUserInfos$searchUserInfos$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? username = _undefined,
    Object? emailAddress = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchUserInfos$searchUserInfos$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      username: username == _undefined || username == null
          ? _instance.username
          : (username as String),
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchUserInfos$searchUserInfos$nodes<TRes>
    implements CopyWith$Query$searchUserInfos$searchUserInfos$nodes<TRes> {
  _CopyWithStubImpl$Query$searchUserInfos$searchUserInfos$nodes(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? username,
    String? emailAddress,
    String? $__typename,
  }) => _res;
}
