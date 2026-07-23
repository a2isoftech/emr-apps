import '../../fragments/ticket/sync_weighbridge_ticket_tasks.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$searchSyncWeighbridgeTicketTasks {
  factory Variables$Query$searchSyncWeighbridgeTicketTasks({
    String? after,
    String? before,
    int? first,
    int? last,
    required Input$SyncWeighbridgeTicketTasksSearchInput input,
    List<Input$SyncWeighbridgeTicketTaskSortInput>? order,
  }) => Variables$Query$searchSyncWeighbridgeTicketTasks._({
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    r'input': input,
    if (order != null) r'order': order,
  });

  Variables$Query$searchSyncWeighbridgeTicketTasks._(this._$data);

  factory Variables$Query$searchSyncWeighbridgeTicketTasks.fromJson(
    Map<String, dynamic> data,
  ) {
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
    final l$input = data['input'];
    result$data['input'] = Input$SyncWeighbridgeTicketTasksSearchInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) => Input$SyncWeighbridgeTicketTaskSortInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    return Variables$Query$searchSyncWeighbridgeTicketTasks._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  Input$SyncWeighbridgeTicketTasksSearchInput get input =>
      (_$data['input'] as Input$SyncWeighbridgeTicketTasksSearchInput);

  List<Input$SyncWeighbridgeTicketTaskSortInput>? get order =>
      (_$data['order'] as List<Input$SyncWeighbridgeTicketTaskSortInput>?);

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
    final l$input = input;
    result$data['input'] = l$input.toJson();
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$searchSyncWeighbridgeTicketTasks<
    Variables$Query$searchSyncWeighbridgeTicketTasks
  >
  get copyWith =>
      CopyWith$Variables$Query$searchSyncWeighbridgeTicketTasks(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$searchSyncWeighbridgeTicketTasks ||
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
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
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
    final l$input = input;
    final l$order = order;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      l$input,
      _$data.containsKey('order')
          ? l$order == null
                ? null
                : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$searchSyncWeighbridgeTicketTasks<TRes> {
  factory CopyWith$Variables$Query$searchSyncWeighbridgeTicketTasks(
    Variables$Query$searchSyncWeighbridgeTicketTasks instance,
    TRes Function(Variables$Query$searchSyncWeighbridgeTicketTasks) then,
  ) = _CopyWithImpl$Variables$Query$searchSyncWeighbridgeTicketTasks;

  factory CopyWith$Variables$Query$searchSyncWeighbridgeTicketTasks.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$searchSyncWeighbridgeTicketTasks;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SyncWeighbridgeTicketTasksSearchInput? input,
    List<Input$SyncWeighbridgeTicketTaskSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$searchSyncWeighbridgeTicketTasks<TRes>
    implements CopyWith$Variables$Query$searchSyncWeighbridgeTicketTasks<TRes> {
  _CopyWithImpl$Variables$Query$searchSyncWeighbridgeTicketTasks(
    this._instance,
    this._then,
  );

  final Variables$Query$searchSyncWeighbridgeTicketTasks _instance;

  final TRes Function(Variables$Query$searchSyncWeighbridgeTicketTasks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? input = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$searchSyncWeighbridgeTicketTasks._({
      ..._instance._$data,
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (input != _undefined && input != null)
        'input': (input as Input$SyncWeighbridgeTicketTasksSearchInput),
      if (order != _undefined)
        'order': (order as List<Input$SyncWeighbridgeTicketTaskSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$searchSyncWeighbridgeTicketTasks<TRes>
    implements CopyWith$Variables$Query$searchSyncWeighbridgeTicketTasks<TRes> {
  _CopyWithStubImpl$Variables$Query$searchSyncWeighbridgeTicketTasks(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SyncWeighbridgeTicketTasksSearchInput? input,
    List<Input$SyncWeighbridgeTicketTaskSortInput>? order,
  }) => _res;
}

class Query$searchSyncWeighbridgeTicketTasks {
  Query$searchSyncWeighbridgeTicketTasks({
    this.searchSyncWeighbridgeTicketTasks,
    this.$__typename = 'Query',
  });

  factory Query$searchSyncWeighbridgeTicketTasks.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$searchSyncWeighbridgeTicketTasks =
        json['searchSyncWeighbridgeTicketTasks'];
    final l$$__typename = json['__typename'];
    return Query$searchSyncWeighbridgeTicketTasks(
      searchSyncWeighbridgeTicketTasks:
          l$searchSyncWeighbridgeTicketTasks == null
          ? null
          : Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks.fromJson(
              (l$searchSyncWeighbridgeTicketTasks as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks?
  searchSyncWeighbridgeTicketTasks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchSyncWeighbridgeTicketTasks = searchSyncWeighbridgeTicketTasks;
    _resultData['searchSyncWeighbridgeTicketTasks'] =
        l$searchSyncWeighbridgeTicketTasks?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchSyncWeighbridgeTicketTasks = searchSyncWeighbridgeTicketTasks;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchSyncWeighbridgeTicketTasks, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$searchSyncWeighbridgeTicketTasks ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchSyncWeighbridgeTicketTasks = searchSyncWeighbridgeTicketTasks;
    final lOther$searchSyncWeighbridgeTicketTasks =
        other.searchSyncWeighbridgeTicketTasks;
    if (l$searchSyncWeighbridgeTicketTasks !=
        lOther$searchSyncWeighbridgeTicketTasks) {
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

extension UtilityExtension$Query$searchSyncWeighbridgeTicketTasks
    on Query$searchSyncWeighbridgeTicketTasks {
  CopyWith$Query$searchSyncWeighbridgeTicketTasks<
    Query$searchSyncWeighbridgeTicketTasks
  >
  get copyWith =>
      CopyWith$Query$searchSyncWeighbridgeTicketTasks(this, (i) => i);
}

abstract class CopyWith$Query$searchSyncWeighbridgeTicketTasks<TRes> {
  factory CopyWith$Query$searchSyncWeighbridgeTicketTasks(
    Query$searchSyncWeighbridgeTicketTasks instance,
    TRes Function(Query$searchSyncWeighbridgeTicketTasks) then,
  ) = _CopyWithImpl$Query$searchSyncWeighbridgeTicketTasks;

  factory CopyWith$Query$searchSyncWeighbridgeTicketTasks.stub(TRes res) =
      _CopyWithStubImpl$Query$searchSyncWeighbridgeTicketTasks;

  TRes call({
    Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks?
    searchSyncWeighbridgeTicketTasks,
    String? $__typename,
  });
  CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks<
    TRes
  >
  get searchSyncWeighbridgeTicketTasks;
}

class _CopyWithImpl$Query$searchSyncWeighbridgeTicketTasks<TRes>
    implements CopyWith$Query$searchSyncWeighbridgeTicketTasks<TRes> {
  _CopyWithImpl$Query$searchSyncWeighbridgeTicketTasks(
    this._instance,
    this._then,
  );

  final Query$searchSyncWeighbridgeTicketTasks _instance;

  final TRes Function(Query$searchSyncWeighbridgeTicketTasks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchSyncWeighbridgeTicketTasks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchSyncWeighbridgeTicketTasks(
      searchSyncWeighbridgeTicketTasks:
          searchSyncWeighbridgeTicketTasks == _undefined
          ? _instance.searchSyncWeighbridgeTicketTasks
          : (searchSyncWeighbridgeTicketTasks
                as Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks<
    TRes
  >
  get searchSyncWeighbridgeTicketTasks {
    final local$searchSyncWeighbridgeTicketTasks =
        _instance.searchSyncWeighbridgeTicketTasks;
    return local$searchSyncWeighbridgeTicketTasks == null
        ? CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks.stub(
            _then(_instance),
          )
        : CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks(
            local$searchSyncWeighbridgeTicketTasks,
            (e) => call(searchSyncWeighbridgeTicketTasks: e),
          );
  }
}

class _CopyWithStubImpl$Query$searchSyncWeighbridgeTicketTasks<TRes>
    implements CopyWith$Query$searchSyncWeighbridgeTicketTasks<TRes> {
  _CopyWithStubImpl$Query$searchSyncWeighbridgeTicketTasks(this._res);

  TRes _res;

  call({
    Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks?
    searchSyncWeighbridgeTicketTasks,
    String? $__typename,
  }) => _res;

  CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks<
    TRes
  >
  get searchSyncWeighbridgeTicketTasks =>
      CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks.stub(
        _res,
      );
}

const documentNodeQuerysearchSyncWeighbridgeTicketTasks = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'searchSyncWeighbridgeTicketTasks'),
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
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SyncWeighbridgeTicketTasksSearchInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'order')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'SyncWeighbridgeTicketTaskSortInput'),
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
            name: NameNode(value: 'searchSyncWeighbridgeTicketTasks'),
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
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
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
                      FragmentSpreadNode(
                        name: NameNode(
                          value: 'SyncWeighbridgeTicketTaskFields',
                        ),
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
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionSyncWeighbridgeTicketTaskFields,
  ],
);

class Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks {
  Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchSyncWeighbridgeTicketTasksConnection',
  });

  factory Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Fragment$SyncWeighbridgeTicketTaskFields.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo
  pageInfo;

  final List<Fragment$SyncWeighbridgeTicketTaskFields>? nodes;

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
    if (other
            is! Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks ||
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

extension UtilityExtension$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks
    on Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks {
  CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks<
    Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks
  >
  get copyWith =>
      CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks<
  TRes
> {
  factory CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks(
    Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks
    instance,
    TRes Function(
      Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks,
    )
    then,
  ) = _CopyWithImpl$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks;

  factory CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks;

  TRes call({
    int? totalCount,
    Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo?
    pageInfo,
    List<Fragment$SyncWeighbridgeTicketTaskFields>? nodes,
    String? $__typename,
  });
  CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo<
    TRes
  >
  get pageInfo;
  TRes nodes(
    Iterable<Fragment$SyncWeighbridgeTicketTaskFields>? Function(
      Iterable<
        CopyWith$Fragment$SyncWeighbridgeTicketTaskFields<
          Fragment$SyncWeighbridgeTicketTaskFields
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks<
  TRes
>
    implements
        CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks<
          TRes
        > {
  _CopyWithImpl$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks(
    this._instance,
    this._then,
  );

  final Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks
  _instance;

  final TRes Function(
    Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Fragment$SyncWeighbridgeTicketTaskFields>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo<
    TRes
  >
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Fragment$SyncWeighbridgeTicketTaskFields>? Function(
      Iterable<
        CopyWith$Fragment$SyncWeighbridgeTicketTaskFields<
          Fragment$SyncWeighbridgeTicketTaskFields
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Fragment$SyncWeighbridgeTicketTaskFields(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks<
  TRes
>
    implements
        CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks<
          TRes
        > {
  _CopyWithStubImpl$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo?
    pageInfo,
    List<Fragment$SyncWeighbridgeTicketTaskFields>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo<
    TRes
  >
  get pageInfo =>
      CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo {
  Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo(
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
    if (other
            is! Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo ||
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

extension UtilityExtension$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo
    on
        Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo {
  CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo<
    Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo
  >
  get copyWith =>
      CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo<
  TRes
> {
  factory CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo(
    Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo
    instance,
    TRes Function(
      Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo;

  factory CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo<
  TRes
>
    implements
        CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo(
    this._instance,
    this._then,
  );

  final Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo
  _instance;

  final TRes Function(
    Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo(
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

class _CopyWithStubImpl$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo<
  TRes
>
    implements
        CopyWith$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$searchSyncWeighbridgeTicketTasks$searchSyncWeighbridgeTicketTasks$pageInfo(
    this._res,
  );

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}
