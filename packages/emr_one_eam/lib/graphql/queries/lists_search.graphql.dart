import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$getLists {
  factory Variables$Query$getLists({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$AssetManagementListSearchResultFilterInput? where,
    List<Input$AssetManagementListSearchResultSortInput>? order,
  }) =>
      Variables$Query$getLists._({
        if (after != null) r'after': after,
        if (before != null) r'before': before,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (where != null) r'where': where,
        if (order != null) r'order': order,
      });

  Variables$Query$getLists._(this._$data);

  factory Variables$Query$getLists.fromJson(Map<String, dynamic> data) {
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
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$AssetManagementListSearchResultFilterInput.fromJson(
              (l$where as Map<String, dynamic>));
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map((e) => Input$AssetManagementListSearchResultSortInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$getLists._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  Input$AssetManagementListSearchResultFilterInput? get where =>
      (_$data['where'] as Input$AssetManagementListSearchResultFilterInput?);

  List<Input$AssetManagementListSearchResultSortInput>? get order =>
      (_$data['order']
          as List<Input$AssetManagementListSearchResultSortInput>?);

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
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$getLists<Variables$Query$getLists> get copyWith =>
      CopyWith$Variables$Query$getLists(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getLists) ||
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
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
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
    final l$after = after;
    final l$before = before;
    final l$first = first;
    final l$last = last;
    final l$where = where;
    final l$order = order;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('where') ? l$where : const {},
      _$data.containsKey('order')
          ? l$order == null
              ? null
              : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$getLists<TRes> {
  factory CopyWith$Variables$Query$getLists(
    Variables$Query$getLists instance,
    TRes Function(Variables$Query$getLists) then,
  ) = _CopyWithImpl$Variables$Query$getLists;

  factory CopyWith$Variables$Query$getLists.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getLists;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$AssetManagementListSearchResultFilterInput? where,
    List<Input$AssetManagementListSearchResultSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$getLists<TRes>
    implements CopyWith$Variables$Query$getLists<TRes> {
  _CopyWithImpl$Variables$Query$getLists(
    this._instance,
    this._then,
  );

  final Variables$Query$getLists _instance;

  final TRes Function(Variables$Query$getLists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? where = _undefined,
    Object? order = _undefined,
  }) =>
      _then(Variables$Query$getLists._({
        ..._instance._$data,
        if (after != _undefined) 'after': (after as String?),
        if (before != _undefined) 'before': (before as String?),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (where != _undefined)
          'where': (where as Input$AssetManagementListSearchResultFilterInput?),
        if (order != _undefined)
          'order':
              (order as List<Input$AssetManagementListSearchResultSortInput>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getLists<TRes>
    implements CopyWith$Variables$Query$getLists<TRes> {
  _CopyWithStubImpl$Variables$Query$getLists(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$AssetManagementListSearchResultFilterInput? where,
    List<Input$AssetManagementListSearchResultSortInput>? order,
  }) =>
      _res;
}

class Query$getLists {
  Query$getLists({
    this.lists,
    this.$__typename = 'Query',
  });

  factory Query$getLists.fromJson(Map<String, dynamic> json) {
    final l$lists = json['lists'];
    final l$$__typename = json['__typename'];
    return Query$getLists(
      lists: l$lists == null
          ? null
          : Query$getLists$lists.fromJson((l$lists as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getLists$lists? lists;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lists = lists;
    _resultData['lists'] = l$lists?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lists = lists;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lists,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getLists) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$lists = lists;
    final lOther$lists = other.lists;
    if (l$lists != lOther$lists) {
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

extension UtilityExtension$Query$getLists on Query$getLists {
  CopyWith$Query$getLists<Query$getLists> get copyWith =>
      CopyWith$Query$getLists(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getLists<TRes> {
  factory CopyWith$Query$getLists(
    Query$getLists instance,
    TRes Function(Query$getLists) then,
  ) = _CopyWithImpl$Query$getLists;

  factory CopyWith$Query$getLists.stub(TRes res) =
      _CopyWithStubImpl$Query$getLists;

  TRes call({
    Query$getLists$lists? lists,
    String? $__typename,
  });
  CopyWith$Query$getLists$lists<TRes> get lists;
}

class _CopyWithImpl$Query$getLists<TRes>
    implements CopyWith$Query$getLists<TRes> {
  _CopyWithImpl$Query$getLists(
    this._instance,
    this._then,
  );

  final Query$getLists _instance;

  final TRes Function(Query$getLists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lists = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getLists(
        lists: lists == _undefined
            ? _instance.lists
            : (lists as Query$getLists$lists?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getLists$lists<TRes> get lists {
    final local$lists = _instance.lists;
    return local$lists == null
        ? CopyWith$Query$getLists$lists.stub(_then(_instance))
        : CopyWith$Query$getLists$lists(local$lists, (e) => call(lists: e));
  }
}

class _CopyWithStubImpl$Query$getLists<TRes>
    implements CopyWith$Query$getLists<TRes> {
  _CopyWithStubImpl$Query$getLists(this._res);

  TRes _res;

  call({
    Query$getLists$lists? lists,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getLists$lists<TRes> get lists =>
      CopyWith$Query$getLists$lists.stub(_res);
}

const documentNodeQuerygetLists = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getLists'),
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
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'last')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'AssetManagementListSearchResultFilterInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'order')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'AssetManagementListSearchResultSortInput'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'lists'),
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
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          ),
          ArgumentNode(
            name: NameNode(value: 'order'),
            value: VariableNode(name: NameNode(value: 'order')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'totalCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'listName'),
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
                name: NameNode(value: 'isUsedByAssetTemplates'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'listValue'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'active'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'text'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'value'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'orderIndex'),
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
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$getLists$lists {
  Query$getLists$lists({
    required this.pageInfo,
    required this.totalCount,
    this.nodes,
    this.$__typename = 'ListsConnection',
  });

  factory Query$getLists$lists.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$getLists$lists(
      pageInfo: Query$getLists$lists$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) =>
              Query$getLists$lists$nodes.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getLists$lists$pageInfo pageInfo;

  final int totalCount;

  final List<Query$getLists$lists$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$totalCount = totalCount;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$totalCount,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getLists$lists) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
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

extension UtilityExtension$Query$getLists$lists on Query$getLists$lists {
  CopyWith$Query$getLists$lists<Query$getLists$lists> get copyWith =>
      CopyWith$Query$getLists$lists(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getLists$lists<TRes> {
  factory CopyWith$Query$getLists$lists(
    Query$getLists$lists instance,
    TRes Function(Query$getLists$lists) then,
  ) = _CopyWithImpl$Query$getLists$lists;

  factory CopyWith$Query$getLists$lists.stub(TRes res) =
      _CopyWithStubImpl$Query$getLists$lists;

  TRes call({
    Query$getLists$lists$pageInfo? pageInfo,
    int? totalCount,
    List<Query$getLists$lists$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$getLists$lists$pageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$getLists$lists$nodes>? Function(
              Iterable<
                  CopyWith$Query$getLists$lists$nodes<
                      Query$getLists$lists$nodes>>?)
          _fn);
}

class _CopyWithImpl$Query$getLists$lists<TRes>
    implements CopyWith$Query$getLists$lists<TRes> {
  _CopyWithImpl$Query$getLists$lists(
    this._instance,
    this._then,
  );

  final Query$getLists$lists _instance;

  final TRes Function(Query$getLists$lists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getLists$lists(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$getLists$lists$pageInfo),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$getLists$lists$nodes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getLists$lists$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$getLists$lists$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$getLists$lists$nodes>? Function(
                  Iterable<
                      CopyWith$Query$getLists$lists$nodes<
                          Query$getLists$lists$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(
              _instance.nodes?.map((e) => CopyWith$Query$getLists$lists$nodes(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$getLists$lists<TRes>
    implements CopyWith$Query$getLists$lists<TRes> {
  _CopyWithStubImpl$Query$getLists$lists(this._res);

  TRes _res;

  call({
    Query$getLists$lists$pageInfo? pageInfo,
    int? totalCount,
    List<Query$getLists$lists$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getLists$lists$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$getLists$lists$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$getLists$lists$pageInfo {
  Query$getLists$lists$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$getLists$lists$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$getLists$lists$pageInfo(
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
    if (!(other is Query$getLists$lists$pageInfo) ||
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

extension UtilityExtension$Query$getLists$lists$pageInfo
    on Query$getLists$lists$pageInfo {
  CopyWith$Query$getLists$lists$pageInfo<Query$getLists$lists$pageInfo>
      get copyWith => CopyWith$Query$getLists$lists$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getLists$lists$pageInfo<TRes> {
  factory CopyWith$Query$getLists$lists$pageInfo(
    Query$getLists$lists$pageInfo instance,
    TRes Function(Query$getLists$lists$pageInfo) then,
  ) = _CopyWithImpl$Query$getLists$lists$pageInfo;

  factory CopyWith$Query$getLists$lists$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$getLists$lists$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getLists$lists$pageInfo<TRes>
    implements CopyWith$Query$getLists$lists$pageInfo<TRes> {
  _CopyWithImpl$Query$getLists$lists$pageInfo(
    this._instance,
    this._then,
  );

  final Query$getLists$lists$pageInfo _instance;

  final TRes Function(Query$getLists$lists$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getLists$lists$pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
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
      ));
}

class _CopyWithStubImpl$Query$getLists$lists$pageInfo<TRes>
    implements CopyWith$Query$getLists$lists$pageInfo<TRes> {
  _CopyWithStubImpl$Query$getLists$lists$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}

class Query$getLists$lists$nodes {
  Query$getLists$lists$nodes({
    required this.id,
    this.listName,
    required this.active,
    required this.isUsedByAssetTemplates,
    this.listValue,
    this.$__typename = 'AssetManagementListSearchResult',
  });

  factory Query$getLists$lists$nodes.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$listName = json['listName'];
    final l$active = json['active'];
    final l$isUsedByAssetTemplates = json['isUsedByAssetTemplates'];
    final l$listValue = json['listValue'];
    final l$$__typename = json['__typename'];
    return Query$getLists$lists$nodes(
      id: (l$id as String),
      listName: (l$listName as String?),
      active: (l$active as bool),
      isUsedByAssetTemplates: (l$isUsedByAssetTemplates as bool),
      listValue: (l$listValue as List<dynamic>?)
          ?.map((e) => Query$getLists$lists$nodes$listValue.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? listName;

  final bool active;

  final bool isUsedByAssetTemplates;

  final List<Query$getLists$lists$nodes$listValue>? listValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$listName = listName;
    _resultData['listName'] = l$listName;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$isUsedByAssetTemplates = isUsedByAssetTemplates;
    _resultData['isUsedByAssetTemplates'] = l$isUsedByAssetTemplates;
    final l$listValue = listValue;
    _resultData['listValue'] = l$listValue?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$listName = listName;
    final l$active = active;
    final l$isUsedByAssetTemplates = isUsedByAssetTemplates;
    final l$listValue = listValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$listName,
      l$active,
      l$isUsedByAssetTemplates,
      l$listValue == null ? null : Object.hashAll(l$listValue.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getLists$lists$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$listName = listName;
    final lOther$listName = other.listName;
    if (l$listName != lOther$listName) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$isUsedByAssetTemplates = isUsedByAssetTemplates;
    final lOther$isUsedByAssetTemplates = other.isUsedByAssetTemplates;
    if (l$isUsedByAssetTemplates != lOther$isUsedByAssetTemplates) {
      return false;
    }
    final l$listValue = listValue;
    final lOther$listValue = other.listValue;
    if (l$listValue != null && lOther$listValue != null) {
      if (l$listValue.length != lOther$listValue.length) {
        return false;
      }
      for (int i = 0; i < l$listValue.length; i++) {
        final l$listValue$entry = l$listValue[i];
        final lOther$listValue$entry = lOther$listValue[i];
        if (l$listValue$entry != lOther$listValue$entry) {
          return false;
        }
      }
    } else if (l$listValue != lOther$listValue) {
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

extension UtilityExtension$Query$getLists$lists$nodes
    on Query$getLists$lists$nodes {
  CopyWith$Query$getLists$lists$nodes<Query$getLists$lists$nodes>
      get copyWith => CopyWith$Query$getLists$lists$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getLists$lists$nodes<TRes> {
  factory CopyWith$Query$getLists$lists$nodes(
    Query$getLists$lists$nodes instance,
    TRes Function(Query$getLists$lists$nodes) then,
  ) = _CopyWithImpl$Query$getLists$lists$nodes;

  factory CopyWith$Query$getLists$lists$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$getLists$lists$nodes;

  TRes call({
    String? id,
    String? listName,
    bool? active,
    bool? isUsedByAssetTemplates,
    List<Query$getLists$lists$nodes$listValue>? listValue,
    String? $__typename,
  });
  TRes listValue(
      Iterable<Query$getLists$lists$nodes$listValue>? Function(
              Iterable<
                  CopyWith$Query$getLists$lists$nodes$listValue<
                      Query$getLists$lists$nodes$listValue>>?)
          _fn);
}

class _CopyWithImpl$Query$getLists$lists$nodes<TRes>
    implements CopyWith$Query$getLists$lists$nodes<TRes> {
  _CopyWithImpl$Query$getLists$lists$nodes(
    this._instance,
    this._then,
  );

  final Query$getLists$lists$nodes _instance;

  final TRes Function(Query$getLists$lists$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? listName = _undefined,
    Object? active = _undefined,
    Object? isUsedByAssetTemplates = _undefined,
    Object? listValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getLists$lists$nodes(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        listName:
            listName == _undefined ? _instance.listName : (listName as String?),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        isUsedByAssetTemplates: isUsedByAssetTemplates == _undefined ||
                isUsedByAssetTemplates == null
            ? _instance.isUsedByAssetTemplates
            : (isUsedByAssetTemplates as bool),
        listValue: listValue == _undefined
            ? _instance.listValue
            : (listValue as List<Query$getLists$lists$nodes$listValue>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes listValue(
          Iterable<Query$getLists$lists$nodes$listValue>? Function(
                  Iterable<
                      CopyWith$Query$getLists$lists$nodes$listValue<
                          Query$getLists$lists$nodes$listValue>>?)
              _fn) =>
      call(
          listValue: _fn(_instance.listValue
              ?.map((e) => CopyWith$Query$getLists$lists$nodes$listValue(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$getLists$lists$nodes<TRes>
    implements CopyWith$Query$getLists$lists$nodes<TRes> {
  _CopyWithStubImpl$Query$getLists$lists$nodes(this._res);

  TRes _res;

  call({
    String? id,
    String? listName,
    bool? active,
    bool? isUsedByAssetTemplates,
    List<Query$getLists$lists$nodes$listValue>? listValue,
    String? $__typename,
  }) =>
      _res;

  listValue(_fn) => _res;
}

class Query$getLists$lists$nodes$listValue {
  Query$getLists$lists$nodes$listValue({
    required this.active,
    required this.text,
    required this.value,
    required this.orderIndex,
    this.$__typename = 'ListValue',
  });

  factory Query$getLists$lists$nodes$listValue.fromJson(
      Map<String, dynamic> json) {
    final l$active = json['active'];
    final l$text = json['text'];
    final l$value = json['value'];
    final l$orderIndex = json['orderIndex'];
    final l$$__typename = json['__typename'];
    return Query$getLists$lists$nodes$listValue(
      active: (l$active as bool),
      text: (l$text as String),
      value: (l$value as String),
      orderIndex: (l$orderIndex as int),
      $__typename: (l$$__typename as String),
    );
  }

  final bool active;

  final String text;

  final String value;

  final int orderIndex;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$active = active;
    _resultData['active'] = l$active;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$orderIndex = orderIndex;
    _resultData['orderIndex'] = l$orderIndex;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$active = active;
    final l$text = text;
    final l$value = value;
    final l$orderIndex = orderIndex;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$active,
      l$text,
      l$value,
      l$orderIndex,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getLists$lists$nodes$listValue) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$orderIndex = orderIndex;
    final lOther$orderIndex = other.orderIndex;
    if (l$orderIndex != lOther$orderIndex) {
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

extension UtilityExtension$Query$getLists$lists$nodes$listValue
    on Query$getLists$lists$nodes$listValue {
  CopyWith$Query$getLists$lists$nodes$listValue<
          Query$getLists$lists$nodes$listValue>
      get copyWith => CopyWith$Query$getLists$lists$nodes$listValue(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getLists$lists$nodes$listValue<TRes> {
  factory CopyWith$Query$getLists$lists$nodes$listValue(
    Query$getLists$lists$nodes$listValue instance,
    TRes Function(Query$getLists$lists$nodes$listValue) then,
  ) = _CopyWithImpl$Query$getLists$lists$nodes$listValue;

  factory CopyWith$Query$getLists$lists$nodes$listValue.stub(TRes res) =
      _CopyWithStubImpl$Query$getLists$lists$nodes$listValue;

  TRes call({
    bool? active,
    String? text,
    String? value,
    int? orderIndex,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getLists$lists$nodes$listValue<TRes>
    implements CopyWith$Query$getLists$lists$nodes$listValue<TRes> {
  _CopyWithImpl$Query$getLists$lists$nodes$listValue(
    this._instance,
    this._then,
  );

  final Query$getLists$lists$nodes$listValue _instance;

  final TRes Function(Query$getLists$lists$nodes$listValue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? active = _undefined,
    Object? text = _undefined,
    Object? value = _undefined,
    Object? orderIndex = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getLists$lists$nodes$listValue(
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        text: text == _undefined || text == null
            ? _instance.text
            : (text as String),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        orderIndex: orderIndex == _undefined || orderIndex == null
            ? _instance.orderIndex
            : (orderIndex as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getLists$lists$nodes$listValue<TRes>
    implements CopyWith$Query$getLists$lists$nodes$listValue<TRes> {
  _CopyWithStubImpl$Query$getLists$lists$nodes$listValue(this._res);

  TRes _res;

  call({
    bool? active,
    String? text,
    String? value,
    int? orderIndex,
    String? $__typename,
  }) =>
      _res;
}
