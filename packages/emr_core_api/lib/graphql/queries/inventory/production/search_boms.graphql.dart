import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchBoms {
  factory Variables$Query$SearchBoms({
    required Input$SearchBomInput inputQuery,
    int? first,
    int? last,
    String? before,
    String? after,
  }) => Variables$Query$SearchBoms._({
    r'inputQuery': inputQuery,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
  });

  Variables$Query$SearchBoms._(this._$data);

  factory Variables$Query$SearchBoms.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$inputQuery = data['inputQuery'];
    result$data['inputQuery'] = Input$SearchBomInput.fromJson(
      (l$inputQuery as Map<String, dynamic>),
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
    return Variables$Query$SearchBoms._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchBomInput get inputQuery =>
      (_$data['inputQuery'] as Input$SearchBomInput);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$inputQuery = inputQuery;
    result$data['inputQuery'] = l$inputQuery.toJson();
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
    return result$data;
  }

  CopyWith$Variables$Query$SearchBoms<Variables$Query$SearchBoms>
  get copyWith => CopyWith$Variables$Query$SearchBoms(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchBoms ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$inputQuery = inputQuery;
    final lOther$inputQuery = other.inputQuery;
    if (l$inputQuery != lOther$inputQuery) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$inputQuery = inputQuery;
    final l$first = first;
    final l$last = last;
    final l$before = before;
    final l$after = after;
    return Object.hashAll([
      l$inputQuery,
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchBoms<TRes> {
  factory CopyWith$Variables$Query$SearchBoms(
    Variables$Query$SearchBoms instance,
    TRes Function(Variables$Query$SearchBoms) then,
  ) = _CopyWithImpl$Variables$Query$SearchBoms;

  factory CopyWith$Variables$Query$SearchBoms.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchBoms;

  TRes call({
    Input$SearchBomInput? inputQuery,
    int? first,
    int? last,
    String? before,
    String? after,
  });
}

class _CopyWithImpl$Variables$Query$SearchBoms<TRes>
    implements CopyWith$Variables$Query$SearchBoms<TRes> {
  _CopyWithImpl$Variables$Query$SearchBoms(this._instance, this._then);

  final Variables$Query$SearchBoms _instance;

  final TRes Function(Variables$Query$SearchBoms) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? inputQuery = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables$Query$SearchBoms._({
      ..._instance._$data,
      if (inputQuery != _undefined && inputQuery != null)
        'inputQuery': (inputQuery as Input$SearchBomInput),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchBoms<TRes>
    implements CopyWith$Variables$Query$SearchBoms<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchBoms(this._res);

  TRes _res;

  call({
    Input$SearchBomInput? inputQuery,
    int? first,
    int? last,
    String? before,
    String? after,
  }) => _res;
}

class Query$SearchBoms {
  Query$SearchBoms({this.searchBoms, this.$__typename = 'Query'});

  factory Query$SearchBoms.fromJson(Map<String, dynamic> json) {
    final l$searchBoms = json['searchBoms'];
    final l$$__typename = json['__typename'];
    return Query$SearchBoms(
      searchBoms: l$searchBoms == null
          ? null
          : Query$SearchBoms$searchBoms.fromJson(
              (l$searchBoms as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchBoms$searchBoms? searchBoms;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchBoms = searchBoms;
    _resultData['searchBoms'] = l$searchBoms?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchBoms = searchBoms;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchBoms, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchBoms || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchBoms = searchBoms;
    final lOther$searchBoms = other.searchBoms;
    if (l$searchBoms != lOther$searchBoms) {
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

extension UtilityExtension$Query$SearchBoms on Query$SearchBoms {
  CopyWith$Query$SearchBoms<Query$SearchBoms> get copyWith =>
      CopyWith$Query$SearchBoms(this, (i) => i);
}

abstract class CopyWith$Query$SearchBoms<TRes> {
  factory CopyWith$Query$SearchBoms(
    Query$SearchBoms instance,
    TRes Function(Query$SearchBoms) then,
  ) = _CopyWithImpl$Query$SearchBoms;

  factory CopyWith$Query$SearchBoms.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchBoms;

  TRes call({Query$SearchBoms$searchBoms? searchBoms, String? $__typename});
  CopyWith$Query$SearchBoms$searchBoms<TRes> get searchBoms;
}

class _CopyWithImpl$Query$SearchBoms<TRes>
    implements CopyWith$Query$SearchBoms<TRes> {
  _CopyWithImpl$Query$SearchBoms(this._instance, this._then);

  final Query$SearchBoms _instance;

  final TRes Function(Query$SearchBoms) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchBoms = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchBoms(
      searchBoms: searchBoms == _undefined
          ? _instance.searchBoms
          : (searchBoms as Query$SearchBoms$searchBoms?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchBoms$searchBoms<TRes> get searchBoms {
    final local$searchBoms = _instance.searchBoms;
    return local$searchBoms == null
        ? CopyWith$Query$SearchBoms$searchBoms.stub(_then(_instance))
        : CopyWith$Query$SearchBoms$searchBoms(
            local$searchBoms,
            (e) => call(searchBoms: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchBoms<TRes>
    implements CopyWith$Query$SearchBoms<TRes> {
  _CopyWithStubImpl$Query$SearchBoms(this._res);

  TRes _res;

  call({Query$SearchBoms$searchBoms? searchBoms, String? $__typename}) => _res;

  CopyWith$Query$SearchBoms$searchBoms<TRes> get searchBoms =>
      CopyWith$Query$SearchBoms$searchBoms.stub(_res);
}

const documentNodeQuerySearchBoms = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchBoms'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'inputQuery')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchBomInput'),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'searchBoms'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'inputQuery')),
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
                name: NameNode(value: 'before'),
                value: VariableNode(name: NameNode(value: 'before')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
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
                        name: NameNode(value: 'hasPreviousPage'),
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
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'inputProducts'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'productCode'),
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
                        name: NameNode(value: 'outputProducts'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'productCode'),
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

class Query$SearchBoms$searchBoms {
  Query$SearchBoms$searchBoms({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchBomsConnection',
  });

  factory Query$SearchBoms$searchBoms.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchBoms$searchBoms(
      totalCount: (l$totalCount as int),
      pageInfo: Query$SearchBoms$searchBoms$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$SearchBoms$searchBoms$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SearchBoms$searchBoms$pageInfo pageInfo;

  final List<Query$SearchBoms$searchBoms$nodes>? nodes;

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
    if (other is! Query$SearchBoms$searchBoms ||
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

extension UtilityExtension$Query$SearchBoms$searchBoms
    on Query$SearchBoms$searchBoms {
  CopyWith$Query$SearchBoms$searchBoms<Query$SearchBoms$searchBoms>
  get copyWith => CopyWith$Query$SearchBoms$searchBoms(this, (i) => i);
}

abstract class CopyWith$Query$SearchBoms$searchBoms<TRes> {
  factory CopyWith$Query$SearchBoms$searchBoms(
    Query$SearchBoms$searchBoms instance,
    TRes Function(Query$SearchBoms$searchBoms) then,
  ) = _CopyWithImpl$Query$SearchBoms$searchBoms;

  factory CopyWith$Query$SearchBoms$searchBoms.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchBoms$searchBoms;

  TRes call({
    int? totalCount,
    Query$SearchBoms$searchBoms$pageInfo? pageInfo,
    List<Query$SearchBoms$searchBoms$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchBoms$searchBoms$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$SearchBoms$searchBoms$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchBoms$searchBoms$nodes<
          Query$SearchBoms$searchBoms$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchBoms$searchBoms<TRes>
    implements CopyWith$Query$SearchBoms$searchBoms<TRes> {
  _CopyWithImpl$Query$SearchBoms$searchBoms(this._instance, this._then);

  final Query$SearchBoms$searchBoms _instance;

  final TRes Function(Query$SearchBoms$searchBoms) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchBoms$searchBoms(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$SearchBoms$searchBoms$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$SearchBoms$searchBoms$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchBoms$searchBoms$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchBoms$searchBoms$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$SearchBoms$searchBoms$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchBoms$searchBoms$nodes<
          Query$SearchBoms$searchBoms$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$SearchBoms$searchBoms$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchBoms$searchBoms<TRes>
    implements CopyWith$Query$SearchBoms$searchBoms<TRes> {
  _CopyWithStubImpl$Query$SearchBoms$searchBoms(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$SearchBoms$searchBoms$pageInfo? pageInfo,
    List<Query$SearchBoms$searchBoms$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchBoms$searchBoms$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$SearchBoms$searchBoms$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$SearchBoms$searchBoms$pageInfo {
  Query$SearchBoms$searchBoms$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchBoms$searchBoms$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchBoms$searchBoms$pageInfo(
      hasPreviousPage: (l$hasPreviousPage as bool),
      hasNextPage: (l$hasNextPage as bool),
      startCursor: (l$startCursor as String?),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasPreviousPage;

  final bool hasNextPage;

  final String? startCursor;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
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
    final l$hasPreviousPage = hasPreviousPage;
    final l$hasNextPage = hasNextPage;
    final l$startCursor = startCursor;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasPreviousPage,
      l$hasNextPage,
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
    if (other is! Query$SearchBoms$searchBoms$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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

extension UtilityExtension$Query$SearchBoms$searchBoms$pageInfo
    on Query$SearchBoms$searchBoms$pageInfo {
  CopyWith$Query$SearchBoms$searchBoms$pageInfo<
    Query$SearchBoms$searchBoms$pageInfo
  >
  get copyWith => CopyWith$Query$SearchBoms$searchBoms$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$SearchBoms$searchBoms$pageInfo<TRes> {
  factory CopyWith$Query$SearchBoms$searchBoms$pageInfo(
    Query$SearchBoms$searchBoms$pageInfo instance,
    TRes Function(Query$SearchBoms$searchBoms$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchBoms$searchBoms$pageInfo;

  factory CopyWith$Query$SearchBoms$searchBoms$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchBoms$searchBoms$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchBoms$searchBoms$pageInfo<TRes>
    implements CopyWith$Query$SearchBoms$searchBoms$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchBoms$searchBoms$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchBoms$searchBoms$pageInfo _instance;

  final TRes Function(Query$SearchBoms$searchBoms$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchBoms$searchBoms$pageInfo(
      hasPreviousPage: hasPreviousPage == _undefined || hasPreviousPage == null
          ? _instance.hasPreviousPage
          : (hasPreviousPage as bool),
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
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

class _CopyWithStubImpl$Query$SearchBoms$searchBoms$pageInfo<TRes>
    implements CopyWith$Query$SearchBoms$searchBoms$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchBoms$searchBoms$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}

class Query$SearchBoms$searchBoms$nodes {
  Query$SearchBoms$searchBoms$nodes({
    required this.id,
    required this.title,
    required this.inputProducts,
    required this.outputProducts,
    required this.active,
    this.$__typename = 'BillOfMaterials',
  });

  factory Query$SearchBoms$searchBoms$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$inputProducts = json['inputProducts'];
    final l$outputProducts = json['outputProducts'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Query$SearchBoms$searchBoms$nodes(
      id: (l$id as String),
      title: (l$title as String),
      inputProducts: (l$inputProducts as List<dynamic>)
          .map(
            (e) => Query$SearchBoms$searchBoms$nodes$inputProducts.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      outputProducts: (l$outputProducts as List<dynamic>)
          .map(
            (e) => Query$SearchBoms$searchBoms$nodes$outputProducts.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final List<Query$SearchBoms$searchBoms$nodes$inputProducts> inputProducts;

  final List<Query$SearchBoms$searchBoms$nodes$outputProducts> outputProducts;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$inputProducts = inputProducts;
    _resultData['inputProducts'] = l$inputProducts
        .map((e) => e.toJson())
        .toList();
    final l$outputProducts = outputProducts;
    _resultData['outputProducts'] = l$outputProducts
        .map((e) => e.toJson())
        .toList();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$inputProducts = inputProducts;
    final l$outputProducts = outputProducts;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      Object.hashAll(l$inputProducts.map((v) => v)),
      Object.hashAll(l$outputProducts.map((v) => v)),
      l$active,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchBoms$searchBoms$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$inputProducts = inputProducts;
    final lOther$inputProducts = other.inputProducts;
    if (l$inputProducts.length != lOther$inputProducts.length) {
      return false;
    }
    for (int i = 0; i < l$inputProducts.length; i++) {
      final l$inputProducts$entry = l$inputProducts[i];
      final lOther$inputProducts$entry = lOther$inputProducts[i];
      if (l$inputProducts$entry != lOther$inputProducts$entry) {
        return false;
      }
    }
    final l$outputProducts = outputProducts;
    final lOther$outputProducts = other.outputProducts;
    if (l$outputProducts.length != lOther$outputProducts.length) {
      return false;
    }
    for (int i = 0; i < l$outputProducts.length; i++) {
      final l$outputProducts$entry = l$outputProducts[i];
      final lOther$outputProducts$entry = lOther$outputProducts[i];
      if (l$outputProducts$entry != lOther$outputProducts$entry) {
        return false;
      }
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

extension UtilityExtension$Query$SearchBoms$searchBoms$nodes
    on Query$SearchBoms$searchBoms$nodes {
  CopyWith$Query$SearchBoms$searchBoms$nodes<Query$SearchBoms$searchBoms$nodes>
  get copyWith => CopyWith$Query$SearchBoms$searchBoms$nodes(this, (i) => i);
}

abstract class CopyWith$Query$SearchBoms$searchBoms$nodes<TRes> {
  factory CopyWith$Query$SearchBoms$searchBoms$nodes(
    Query$SearchBoms$searchBoms$nodes instance,
    TRes Function(Query$SearchBoms$searchBoms$nodes) then,
  ) = _CopyWithImpl$Query$SearchBoms$searchBoms$nodes;

  factory CopyWith$Query$SearchBoms$searchBoms$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchBoms$searchBoms$nodes;

  TRes call({
    String? id,
    String? title,
    List<Query$SearchBoms$searchBoms$nodes$inputProducts>? inputProducts,
    List<Query$SearchBoms$searchBoms$nodes$outputProducts>? outputProducts,
    bool? active,
    String? $__typename,
  });
  TRes inputProducts(
    Iterable<Query$SearchBoms$searchBoms$nodes$inputProducts> Function(
      Iterable<
        CopyWith$Query$SearchBoms$searchBoms$nodes$inputProducts<
          Query$SearchBoms$searchBoms$nodes$inputProducts
        >
      >,
    )
    _fn,
  );
  TRes outputProducts(
    Iterable<Query$SearchBoms$searchBoms$nodes$outputProducts> Function(
      Iterable<
        CopyWith$Query$SearchBoms$searchBoms$nodes$outputProducts<
          Query$SearchBoms$searchBoms$nodes$outputProducts
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchBoms$searchBoms$nodes<TRes>
    implements CopyWith$Query$SearchBoms$searchBoms$nodes<TRes> {
  _CopyWithImpl$Query$SearchBoms$searchBoms$nodes(this._instance, this._then);

  final Query$SearchBoms$searchBoms$nodes _instance;

  final TRes Function(Query$SearchBoms$searchBoms$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? inputProducts = _undefined,
    Object? outputProducts = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchBoms$searchBoms$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      inputProducts: inputProducts == _undefined || inputProducts == null
          ? _instance.inputProducts
          : (inputProducts
                as List<Query$SearchBoms$searchBoms$nodes$inputProducts>),
      outputProducts: outputProducts == _undefined || outputProducts == null
          ? _instance.outputProducts
          : (outputProducts
                as List<Query$SearchBoms$searchBoms$nodes$outputProducts>),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes inputProducts(
    Iterable<Query$SearchBoms$searchBoms$nodes$inputProducts> Function(
      Iterable<
        CopyWith$Query$SearchBoms$searchBoms$nodes$inputProducts<
          Query$SearchBoms$searchBoms$nodes$inputProducts
        >
      >,
    )
    _fn,
  ) => call(
    inputProducts: _fn(
      _instance.inputProducts.map(
        (e) => CopyWith$Query$SearchBoms$searchBoms$nodes$inputProducts(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  TRes outputProducts(
    Iterable<Query$SearchBoms$searchBoms$nodes$outputProducts> Function(
      Iterable<
        CopyWith$Query$SearchBoms$searchBoms$nodes$outputProducts<
          Query$SearchBoms$searchBoms$nodes$outputProducts
        >
      >,
    )
    _fn,
  ) => call(
    outputProducts: _fn(
      _instance.outputProducts.map(
        (e) => CopyWith$Query$SearchBoms$searchBoms$nodes$outputProducts(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchBoms$searchBoms$nodes<TRes>
    implements CopyWith$Query$SearchBoms$searchBoms$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchBoms$searchBoms$nodes(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    List<Query$SearchBoms$searchBoms$nodes$inputProducts>? inputProducts,
    List<Query$SearchBoms$searchBoms$nodes$outputProducts>? outputProducts,
    bool? active,
    String? $__typename,
  }) => _res;

  inputProducts(_fn) => _res;

  outputProducts(_fn) => _res;
}

class Query$SearchBoms$searchBoms$nodes$inputProducts {
  Query$SearchBoms$searchBoms$nodes$inputProducts({
    required this.productCode,
    this.$__typename = 'BomProduct',
  });

  factory Query$SearchBoms$searchBoms$nodes$inputProducts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$productCode = json['productCode'];
    final l$$__typename = json['__typename'];
    return Query$SearchBoms$searchBoms$nodes$inputProducts(
      productCode: (l$productCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String productCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$productCode = productCode;
    _resultData['productCode'] = l$productCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$productCode = productCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$productCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchBoms$searchBoms$nodes$inputProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$productCode = productCode;
    final lOther$productCode = other.productCode;
    if (l$productCode != lOther$productCode) {
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

extension UtilityExtension$Query$SearchBoms$searchBoms$nodes$inputProducts
    on Query$SearchBoms$searchBoms$nodes$inputProducts {
  CopyWith$Query$SearchBoms$searchBoms$nodes$inputProducts<
    Query$SearchBoms$searchBoms$nodes$inputProducts
  >
  get copyWith =>
      CopyWith$Query$SearchBoms$searchBoms$nodes$inputProducts(this, (i) => i);
}

abstract class CopyWith$Query$SearchBoms$searchBoms$nodes$inputProducts<TRes> {
  factory CopyWith$Query$SearchBoms$searchBoms$nodes$inputProducts(
    Query$SearchBoms$searchBoms$nodes$inputProducts instance,
    TRes Function(Query$SearchBoms$searchBoms$nodes$inputProducts) then,
  ) = _CopyWithImpl$Query$SearchBoms$searchBoms$nodes$inputProducts;

  factory CopyWith$Query$SearchBoms$searchBoms$nodes$inputProducts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchBoms$searchBoms$nodes$inputProducts;

  TRes call({String? productCode, String? $__typename});
}

class _CopyWithImpl$Query$SearchBoms$searchBoms$nodes$inputProducts<TRes>
    implements CopyWith$Query$SearchBoms$searchBoms$nodes$inputProducts<TRes> {
  _CopyWithImpl$Query$SearchBoms$searchBoms$nodes$inputProducts(
    this._instance,
    this._then,
  );

  final Query$SearchBoms$searchBoms$nodes$inputProducts _instance;

  final TRes Function(Query$SearchBoms$searchBoms$nodes$inputProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchBoms$searchBoms$nodes$inputProducts(
      productCode: productCode == _undefined || productCode == null
          ? _instance.productCode
          : (productCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchBoms$searchBoms$nodes$inputProducts<TRes>
    implements CopyWith$Query$SearchBoms$searchBoms$nodes$inputProducts<TRes> {
  _CopyWithStubImpl$Query$SearchBoms$searchBoms$nodes$inputProducts(this._res);

  TRes _res;

  call({String? productCode, String? $__typename}) => _res;
}

class Query$SearchBoms$searchBoms$nodes$outputProducts {
  Query$SearchBoms$searchBoms$nodes$outputProducts({
    required this.productCode,
    this.$__typename = 'BomProduct',
  });

  factory Query$SearchBoms$searchBoms$nodes$outputProducts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$productCode = json['productCode'];
    final l$$__typename = json['__typename'];
    return Query$SearchBoms$searchBoms$nodes$outputProducts(
      productCode: (l$productCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String productCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$productCode = productCode;
    _resultData['productCode'] = l$productCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$productCode = productCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$productCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchBoms$searchBoms$nodes$outputProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$productCode = productCode;
    final lOther$productCode = other.productCode;
    if (l$productCode != lOther$productCode) {
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

extension UtilityExtension$Query$SearchBoms$searchBoms$nodes$outputProducts
    on Query$SearchBoms$searchBoms$nodes$outputProducts {
  CopyWith$Query$SearchBoms$searchBoms$nodes$outputProducts<
    Query$SearchBoms$searchBoms$nodes$outputProducts
  >
  get copyWith =>
      CopyWith$Query$SearchBoms$searchBoms$nodes$outputProducts(this, (i) => i);
}

abstract class CopyWith$Query$SearchBoms$searchBoms$nodes$outputProducts<TRes> {
  factory CopyWith$Query$SearchBoms$searchBoms$nodes$outputProducts(
    Query$SearchBoms$searchBoms$nodes$outputProducts instance,
    TRes Function(Query$SearchBoms$searchBoms$nodes$outputProducts) then,
  ) = _CopyWithImpl$Query$SearchBoms$searchBoms$nodes$outputProducts;

  factory CopyWith$Query$SearchBoms$searchBoms$nodes$outputProducts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchBoms$searchBoms$nodes$outputProducts;

  TRes call({String? productCode, String? $__typename});
}

class _CopyWithImpl$Query$SearchBoms$searchBoms$nodes$outputProducts<TRes>
    implements CopyWith$Query$SearchBoms$searchBoms$nodes$outputProducts<TRes> {
  _CopyWithImpl$Query$SearchBoms$searchBoms$nodes$outputProducts(
    this._instance,
    this._then,
  );

  final Query$SearchBoms$searchBoms$nodes$outputProducts _instance;

  final TRes Function(Query$SearchBoms$searchBoms$nodes$outputProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchBoms$searchBoms$nodes$outputProducts(
      productCode: productCode == _undefined || productCode == null
          ? _instance.productCode
          : (productCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchBoms$searchBoms$nodes$outputProducts<TRes>
    implements CopyWith$Query$SearchBoms$searchBoms$nodes$outputProducts<TRes> {
  _CopyWithStubImpl$Query$SearchBoms$searchBoms$nodes$outputProducts(this._res);

  TRes _res;

  call({String? productCode, String? $__typename}) => _res;
}
