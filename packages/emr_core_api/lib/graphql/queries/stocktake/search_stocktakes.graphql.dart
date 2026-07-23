import '../../fragments/stocktake/stocktake_search_fields.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchStocktakes {
  factory Variables$Query$SearchStocktakes({
    required Input$StocktakeSearchInput input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$StocktakeSortInput>? order,
  }) => Variables$Query$SearchStocktakes._({
    r'input': input,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
    if (order != null) r'order': order,
  });

  Variables$Query$SearchStocktakes._(this._$data);

  factory Variables$Query$SearchStocktakes.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$StocktakeSearchInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) =>
                Input$StocktakeSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    return Variables$Query$SearchStocktakes._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StocktakeSearchInput get input =>
      (_$data['input'] as Input$StocktakeSearchInput);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  List<Input$StocktakeSortInput>? get order =>
      (_$data['order'] as List<Input$StocktakeSortInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$SearchStocktakes<Variables$Query$SearchStocktakes>
  get copyWith => CopyWith$Variables$Query$SearchStocktakes(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchStocktakes ||
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
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
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
    final l$last = last;
    final l$before = before;
    final l$after = after;
    final l$order = order;
    return Object.hashAll([
      l$input,
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('order')
          ? l$order == null
                ? null
                : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchStocktakes<TRes> {
  factory CopyWith$Variables$Query$SearchStocktakes(
    Variables$Query$SearchStocktakes instance,
    TRes Function(Variables$Query$SearchStocktakes) then,
  ) = _CopyWithImpl$Variables$Query$SearchStocktakes;

  factory CopyWith$Variables$Query$SearchStocktakes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchStocktakes;

  TRes call({
    Input$StocktakeSearchInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$StocktakeSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$SearchStocktakes<TRes>
    implements CopyWith$Variables$Query$SearchStocktakes<TRes> {
  _CopyWithImpl$Variables$Query$SearchStocktakes(this._instance, this._then);

  final Variables$Query$SearchStocktakes _instance;

  final TRes Function(Variables$Query$SearchStocktakes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$SearchStocktakes._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$StocktakeSearchInput),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
      if (order != _undefined)
        'order': (order as List<Input$StocktakeSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchStocktakes<TRes>
    implements CopyWith$Variables$Query$SearchStocktakes<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchStocktakes(this._res);

  TRes _res;

  call({
    Input$StocktakeSearchInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$StocktakeSortInput>? order,
  }) => _res;
}

class Query$SearchStocktakes {
  Query$SearchStocktakes({this.searchStocktakes, this.$__typename = 'Query'});

  factory Query$SearchStocktakes.fromJson(Map<String, dynamic> json) {
    final l$searchStocktakes = json['searchStocktakes'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakes(
      searchStocktakes: l$searchStocktakes == null
          ? null
          : Query$SearchStocktakes$searchStocktakes.fromJson(
              (l$searchStocktakes as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchStocktakes$searchStocktakes? searchStocktakes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchStocktakes = searchStocktakes;
    _resultData['searchStocktakes'] = l$searchStocktakes?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchStocktakes = searchStocktakes;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchStocktakes, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchStocktakes || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchStocktakes = searchStocktakes;
    final lOther$searchStocktakes = other.searchStocktakes;
    if (l$searchStocktakes != lOther$searchStocktakes) {
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

extension UtilityExtension$Query$SearchStocktakes on Query$SearchStocktakes {
  CopyWith$Query$SearchStocktakes<Query$SearchStocktakes> get copyWith =>
      CopyWith$Query$SearchStocktakes(this, (i) => i);
}

abstract class CopyWith$Query$SearchStocktakes<TRes> {
  factory CopyWith$Query$SearchStocktakes(
    Query$SearchStocktakes instance,
    TRes Function(Query$SearchStocktakes) then,
  ) = _CopyWithImpl$Query$SearchStocktakes;

  factory CopyWith$Query$SearchStocktakes.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchStocktakes;

  TRes call({
    Query$SearchStocktakes$searchStocktakes? searchStocktakes,
    String? $__typename,
  });
  CopyWith$Query$SearchStocktakes$searchStocktakes<TRes> get searchStocktakes;
}

class _CopyWithImpl$Query$SearchStocktakes<TRes>
    implements CopyWith$Query$SearchStocktakes<TRes> {
  _CopyWithImpl$Query$SearchStocktakes(this._instance, this._then);

  final Query$SearchStocktakes _instance;

  final TRes Function(Query$SearchStocktakes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchStocktakes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStocktakes(
      searchStocktakes: searchStocktakes == _undefined
          ? _instance.searchStocktakes
          : (searchStocktakes as Query$SearchStocktakes$searchStocktakes?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchStocktakes$searchStocktakes<TRes> get searchStocktakes {
    final local$searchStocktakes = _instance.searchStocktakes;
    return local$searchStocktakes == null
        ? CopyWith$Query$SearchStocktakes$searchStocktakes.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchStocktakes$searchStocktakes(
            local$searchStocktakes,
            (e) => call(searchStocktakes: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchStocktakes<TRes>
    implements CopyWith$Query$SearchStocktakes<TRes> {
  _CopyWithStubImpl$Query$SearchStocktakes(this._res);

  TRes _res;

  call({
    Query$SearchStocktakes$searchStocktakes? searchStocktakes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchStocktakes$searchStocktakes<TRes> get searchStocktakes =>
      CopyWith$Query$SearchStocktakes$searchStocktakes.stub(_res);
}

const documentNodeQuerySearchStocktakes = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchStocktakes'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'StocktakeSearchInput'),
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
          variable: VariableNode(name: NameNode(value: 'after')),
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
              name: NameNode(value: 'StocktakeSortInput'),
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
            name: NameNode(value: 'searchStocktakes'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
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
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
              ),
              ArgumentNode(
                name: NameNode(value: 'stocktakeSearchInput'),
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
                        name: NameNode(value: 'StocktakeSearchFields'),
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
    fragmentDefinitionStocktakeSearchFields,
  ],
);

class Query$SearchStocktakes$searchStocktakes {
  Query$SearchStocktakes$searchStocktakes({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchStocktakesConnection',
  });

  factory Query$SearchStocktakes$searchStocktakes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakes$searchStocktakes(
      totalCount: (l$totalCount as int),
      pageInfo: Query$SearchStocktakes$searchStocktakes$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Fragment$StocktakeSearchFields.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SearchStocktakes$searchStocktakes$pageInfo pageInfo;

  final List<Fragment$StocktakeSearchFields>? nodes;

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
    if (other is! Query$SearchStocktakes$searchStocktakes ||
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

extension UtilityExtension$Query$SearchStocktakes$searchStocktakes
    on Query$SearchStocktakes$searchStocktakes {
  CopyWith$Query$SearchStocktakes$searchStocktakes<
    Query$SearchStocktakes$searchStocktakes
  >
  get copyWith =>
      CopyWith$Query$SearchStocktakes$searchStocktakes(this, (i) => i);
}

abstract class CopyWith$Query$SearchStocktakes$searchStocktakes<TRes> {
  factory CopyWith$Query$SearchStocktakes$searchStocktakes(
    Query$SearchStocktakes$searchStocktakes instance,
    TRes Function(Query$SearchStocktakes$searchStocktakes) then,
  ) = _CopyWithImpl$Query$SearchStocktakes$searchStocktakes;

  factory CopyWith$Query$SearchStocktakes$searchStocktakes.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchStocktakes$searchStocktakes;

  TRes call({
    int? totalCount,
    Query$SearchStocktakes$searchStocktakes$pageInfo? pageInfo,
    List<Fragment$StocktakeSearchFields>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchStocktakes$searchStocktakes$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Fragment$StocktakeSearchFields>? Function(
      Iterable<
        CopyWith$Fragment$StocktakeSearchFields<Fragment$StocktakeSearchFields>
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchStocktakes$searchStocktakes<TRes>
    implements CopyWith$Query$SearchStocktakes$searchStocktakes<TRes> {
  _CopyWithImpl$Query$SearchStocktakes$searchStocktakes(
    this._instance,
    this._then,
  );

  final Query$SearchStocktakes$searchStocktakes _instance;

  final TRes Function(Query$SearchStocktakes$searchStocktakes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStocktakes$searchStocktakes(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$SearchStocktakes$searchStocktakes$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Fragment$StocktakeSearchFields>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchStocktakes$searchStocktakes$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchStocktakes$searchStocktakes$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Fragment$StocktakeSearchFields>? Function(
      Iterable<
        CopyWith$Fragment$StocktakeSearchFields<Fragment$StocktakeSearchFields>
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Fragment$StocktakeSearchFields(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchStocktakes$searchStocktakes<TRes>
    implements CopyWith$Query$SearchStocktakes$searchStocktakes<TRes> {
  _CopyWithStubImpl$Query$SearchStocktakes$searchStocktakes(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$SearchStocktakes$searchStocktakes$pageInfo? pageInfo,
    List<Fragment$StocktakeSearchFields>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchStocktakes$searchStocktakes$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$SearchStocktakes$searchStocktakes$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$SearchStocktakes$searchStocktakes$pageInfo {
  Query$SearchStocktakes$searchStocktakes$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchStocktakes$searchStocktakes$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakes$searchStocktakes$pageInfo(
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
    if (other is! Query$SearchStocktakes$searchStocktakes$pageInfo ||
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

extension UtilityExtension$Query$SearchStocktakes$searchStocktakes$pageInfo
    on Query$SearchStocktakes$searchStocktakes$pageInfo {
  CopyWith$Query$SearchStocktakes$searchStocktakes$pageInfo<
    Query$SearchStocktakes$searchStocktakes$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SearchStocktakes$searchStocktakes$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$SearchStocktakes$searchStocktakes$pageInfo<TRes> {
  factory CopyWith$Query$SearchStocktakes$searchStocktakes$pageInfo(
    Query$SearchStocktakes$searchStocktakes$pageInfo instance,
    TRes Function(Query$SearchStocktakes$searchStocktakes$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchStocktakes$searchStocktakes$pageInfo;

  factory CopyWith$Query$SearchStocktakes$searchStocktakes$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchStocktakes$searchStocktakes$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchStocktakes$searchStocktakes$pageInfo<TRes>
    implements CopyWith$Query$SearchStocktakes$searchStocktakes$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchStocktakes$searchStocktakes$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchStocktakes$searchStocktakes$pageInfo _instance;

  final TRes Function(Query$SearchStocktakes$searchStocktakes$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStocktakes$searchStocktakes$pageInfo(
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

class _CopyWithStubImpl$Query$SearchStocktakes$searchStocktakes$pageInfo<TRes>
    implements CopyWith$Query$SearchStocktakes$searchStocktakes$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchStocktakes$searchStocktakes$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}
