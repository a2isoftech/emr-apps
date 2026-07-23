import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchStockTakeConfigurations {
  factory Variables$Query$SearchStockTakeConfigurations({
    required Input$GetStockTakeConfigurationsInput input,
    int? first,
    String? after,
    int? last,
    String? before,
  }) => Variables$Query$SearchStockTakeConfigurations._({
    r'input': input,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
  });

  Variables$Query$SearchStockTakeConfigurations._(this._$data);

  factory Variables$Query$SearchStockTakeConfigurations.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$GetStockTakeConfigurationsInput.fromJson(
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
    return Variables$Query$SearchStockTakeConfigurations._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetStockTakeConfigurationsInput get input =>
      (_$data['input'] as Input$GetStockTakeConfigurationsInput);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

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
    return result$data;
  }

  CopyWith$Variables$Query$SearchStockTakeConfigurations<
    Variables$Query$SearchStockTakeConfigurations
  >
  get copyWith =>
      CopyWith$Variables$Query$SearchStockTakeConfigurations(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchStockTakeConfigurations ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    final l$first = first;
    final l$after = after;
    final l$last = last;
    final l$before = before;
    return Object.hashAll([
      l$input,
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchStockTakeConfigurations<TRes> {
  factory CopyWith$Variables$Query$SearchStockTakeConfigurations(
    Variables$Query$SearchStockTakeConfigurations instance,
    TRes Function(Variables$Query$SearchStockTakeConfigurations) then,
  ) = _CopyWithImpl$Variables$Query$SearchStockTakeConfigurations;

  factory CopyWith$Variables$Query$SearchStockTakeConfigurations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$SearchStockTakeConfigurations;

  TRes call({
    Input$GetStockTakeConfigurationsInput? input,
    int? first,
    String? after,
    int? last,
    String? before,
  });
}

class _CopyWithImpl$Variables$Query$SearchStockTakeConfigurations<TRes>
    implements CopyWith$Variables$Query$SearchStockTakeConfigurations<TRes> {
  _CopyWithImpl$Variables$Query$SearchStockTakeConfigurations(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchStockTakeConfigurations _instance;

  final TRes Function(Variables$Query$SearchStockTakeConfigurations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
  }) => _then(
    Variables$Query$SearchStockTakeConfigurations._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$GetStockTakeConfigurationsInput),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
      if (last != _undefined) 'last': (last as int?),
      if (before != _undefined) 'before': (before as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchStockTakeConfigurations<TRes>
    implements CopyWith$Variables$Query$SearchStockTakeConfigurations<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchStockTakeConfigurations(this._res);

  TRes _res;

  call({
    Input$GetStockTakeConfigurationsInput? input,
    int? first,
    String? after,
    int? last,
    String? before,
  }) => _res;
}

class Query$SearchStockTakeConfigurations {
  Query$SearchStockTakeConfigurations({
    this.stockTakeConfigurations,
    this.$__typename = 'Query',
  });

  factory Query$SearchStockTakeConfigurations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$stockTakeConfigurations = json['stockTakeConfigurations'];
    final l$$__typename = json['__typename'];
    return Query$SearchStockTakeConfigurations(
      stockTakeConfigurations: l$stockTakeConfigurations == null
          ? null
          : Query$SearchStockTakeConfigurations$stockTakeConfigurations.fromJson(
              (l$stockTakeConfigurations as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchStockTakeConfigurations$stockTakeConfigurations?
  stockTakeConfigurations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stockTakeConfigurations = stockTakeConfigurations;
    _resultData['stockTakeConfigurations'] = l$stockTakeConfigurations
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stockTakeConfigurations = stockTakeConfigurations;
    final l$$__typename = $__typename;
    return Object.hashAll([l$stockTakeConfigurations, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchStockTakeConfigurations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$stockTakeConfigurations = stockTakeConfigurations;
    final lOther$stockTakeConfigurations = other.stockTakeConfigurations;
    if (l$stockTakeConfigurations != lOther$stockTakeConfigurations) {
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

extension UtilityExtension$Query$SearchStockTakeConfigurations
    on Query$SearchStockTakeConfigurations {
  CopyWith$Query$SearchStockTakeConfigurations<
    Query$SearchStockTakeConfigurations
  >
  get copyWith => CopyWith$Query$SearchStockTakeConfigurations(this, (i) => i);
}

abstract class CopyWith$Query$SearchStockTakeConfigurations<TRes> {
  factory CopyWith$Query$SearchStockTakeConfigurations(
    Query$SearchStockTakeConfigurations instance,
    TRes Function(Query$SearchStockTakeConfigurations) then,
  ) = _CopyWithImpl$Query$SearchStockTakeConfigurations;

  factory CopyWith$Query$SearchStockTakeConfigurations.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchStockTakeConfigurations;

  TRes call({
    Query$SearchStockTakeConfigurations$stockTakeConfigurations?
    stockTakeConfigurations,
    String? $__typename,
  });
  CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations<TRes>
  get stockTakeConfigurations;
}

class _CopyWithImpl$Query$SearchStockTakeConfigurations<TRes>
    implements CopyWith$Query$SearchStockTakeConfigurations<TRes> {
  _CopyWithImpl$Query$SearchStockTakeConfigurations(this._instance, this._then);

  final Query$SearchStockTakeConfigurations _instance;

  final TRes Function(Query$SearchStockTakeConfigurations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? stockTakeConfigurations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStockTakeConfigurations(
      stockTakeConfigurations: stockTakeConfigurations == _undefined
          ? _instance.stockTakeConfigurations
          : (stockTakeConfigurations
                as Query$SearchStockTakeConfigurations$stockTakeConfigurations?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations<TRes>
  get stockTakeConfigurations {
    final local$stockTakeConfigurations = _instance.stockTakeConfigurations;
    return local$stockTakeConfigurations == null
        ? CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations(
            local$stockTakeConfigurations,
            (e) => call(stockTakeConfigurations: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchStockTakeConfigurations<TRes>
    implements CopyWith$Query$SearchStockTakeConfigurations<TRes> {
  _CopyWithStubImpl$Query$SearchStockTakeConfigurations(this._res);

  TRes _res;

  call({
    Query$SearchStockTakeConfigurations$stockTakeConfigurations?
    stockTakeConfigurations,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations<TRes>
  get stockTakeConfigurations =>
      CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations.stub(
        _res,
      );
}

const documentNodeQuerySearchStockTakeConfigurations = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchStockTakeConfigurations'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'GetStockTakeConfigurationsInput'),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'stockTakeConfigurations'),
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
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'key'),
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
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'isDeltaSnapshotEnabled'),
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

class Query$SearchStockTakeConfigurations$stockTakeConfigurations {
  Query$SearchStockTakeConfigurations$stockTakeConfigurations({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'StockTakeConfigurationsConnection',
  });

  factory Query$SearchStockTakeConfigurations$stockTakeConfigurations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchStockTakeConfigurations$stockTakeConfigurations(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo
  pageInfo;

  final List<Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes>?
  nodes;

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
    if (other is! Query$SearchStockTakeConfigurations$stockTakeConfigurations ||
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

extension UtilityExtension$Query$SearchStockTakeConfigurations$stockTakeConfigurations
    on Query$SearchStockTakeConfigurations$stockTakeConfigurations {
  CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations<
    Query$SearchStockTakeConfigurations$stockTakeConfigurations
  >
  get copyWith =>
      CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations<
  TRes
> {
  factory CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations(
    Query$SearchStockTakeConfigurations$stockTakeConfigurations instance,
    TRes Function(Query$SearchStockTakeConfigurations$stockTakeConfigurations)
    then,
  ) = _CopyWithImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations;

  factory CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations;

  TRes call({
    int? totalCount,
    Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo?
    pageInfo,
    List<Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes>?
    nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo<
    TRes
  >
  get pageInfo;
  TRes nodes(
    Iterable<Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes>?
    Function(
      Iterable<
        CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes<
          Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations<
  TRes
>
    implements
        CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations<
          TRes
        > {
  _CopyWithImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations(
    this._instance,
    this._then,
  );

  final Query$SearchStockTakeConfigurations$stockTakeConfigurations _instance;

  final TRes Function(
    Query$SearchStockTakeConfigurations$stockTakeConfigurations,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStockTakeConfigurations$stockTakeConfigurations(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo<
    TRes
  >
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes>?
    Function(
      Iterable<
        CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes<
          Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) =>
            CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations<
  TRes
>
    implements
        CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo?
    pageInfo,
    List<Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes>?
    nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo<
    TRes
  >
  get pageInfo =>
      CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo {
  Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo(
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
    if (other
            is! Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo ||
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

extension UtilityExtension$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo
    on Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo {
  CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo<
    Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo<
  TRes
> {
  factory CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo(
    Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo
    instance,
    TRes Function(
      Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo;

  factory CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo
  _instance;

  final TRes Function(
    Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo(
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

class _CopyWithStubImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations$pageInfo(
    this._res,
  );

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  }) => _res;
}

class Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes {
  Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndStockTakeConfiguration',
  });

  factory Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes(
      key: (l$key as String),
      value:
          Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes
    on Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes {
  CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes<
    Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes
  >
  get copyWith =>
      CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes<
  TRes
> {
  factory CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes(
    Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes instance,
    TRes Function(
      Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes;

  factory CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes;

  TRes call({
    String? key,
    Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes<
  TRes
>
    implements
        CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes
  _instance;

  final TRes Function(
    Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes<
  TRes
>
    implements
        CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value<
    TRes
  >
  get value =>
      CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value.stub(
        _res,
      );
}

class Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value {
  Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value({
    required this.isDeltaSnapshotEnabled,
    this.$__typename = 'StockTakeConfiguration',
  });

  factory Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$isDeltaSnapshotEnabled = json['isDeltaSnapshotEnabled'];
    final l$$__typename = json['__typename'];
    return Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value(
      isDeltaSnapshotEnabled: (l$isDeltaSnapshotEnabled as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isDeltaSnapshotEnabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isDeltaSnapshotEnabled = isDeltaSnapshotEnabled;
    _resultData['isDeltaSnapshotEnabled'] = l$isDeltaSnapshotEnabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isDeltaSnapshotEnabled = isDeltaSnapshotEnabled;
    final l$$__typename = $__typename;
    return Object.hashAll([l$isDeltaSnapshotEnabled, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isDeltaSnapshotEnabled = isDeltaSnapshotEnabled;
    final lOther$isDeltaSnapshotEnabled = other.isDeltaSnapshotEnabled;
    if (l$isDeltaSnapshotEnabled != lOther$isDeltaSnapshotEnabled) {
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

extension UtilityExtension$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value
    on Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value {
  CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value<
    Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value
  >
  get copyWith =>
      CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value<
  TRes
> {
  factory CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value(
    Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value
    instance,
    TRes Function(
      Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value,
    )
    then,
  ) = _CopyWithImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value;

  factory CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value;

  TRes call({bool? isDeltaSnapshotEnabled, String? $__typename});
}

class _CopyWithImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value<
  TRes
>
    implements
        CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value<
          TRes
        > {
  _CopyWithImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value(
    this._instance,
    this._then,
  );

  final Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value
  _instance;

  final TRes Function(
    Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isDeltaSnapshotEnabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value(
      isDeltaSnapshotEnabled:
          isDeltaSnapshotEnabled == _undefined || isDeltaSnapshotEnabled == null
          ? _instance.isDeltaSnapshotEnabled
          : (isDeltaSnapshotEnabled as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value<
  TRes
>
    implements
        CopyWith$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchStockTakeConfigurations$stockTakeConfigurations$nodes$value(
    this._res,
  );

  TRes _res;

  call({bool? isDeltaSnapshotEnabled, String? $__typename}) => _res;
}
