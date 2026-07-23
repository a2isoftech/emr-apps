import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetContracts {
  factory Variables$Query$GetContracts({
    required Input$GetContractsFlattenedInput input,
  }) => Variables$Query$GetContracts._({r'input': input});

  Variables$Query$GetContracts._(this._$data);

  factory Variables$Query$GetContracts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$GetContractsFlattenedInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$GetContracts._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetContractsFlattenedInput get input =>
      (_$data['input'] as Input$GetContractsFlattenedInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GetContracts<Variables$Query$GetContracts>
  get copyWith => CopyWith$Variables$Query$GetContracts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetContracts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Query$GetContracts<TRes> {
  factory CopyWith$Variables$Query$GetContracts(
    Variables$Query$GetContracts instance,
    TRes Function(Variables$Query$GetContracts) then,
  ) = _CopyWithImpl$Variables$Query$GetContracts;

  factory CopyWith$Variables$Query$GetContracts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetContracts;

  TRes call({Input$GetContractsFlattenedInput? input});
}

class _CopyWithImpl$Variables$Query$GetContracts<TRes>
    implements CopyWith$Variables$Query$GetContracts<TRes> {
  _CopyWithImpl$Variables$Query$GetContracts(this._instance, this._then);

  final Variables$Query$GetContracts _instance;

  final TRes Function(Variables$Query$GetContracts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$GetContracts._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$GetContractsFlattenedInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetContracts<TRes>
    implements CopyWith$Variables$Query$GetContracts<TRes> {
  _CopyWithStubImpl$Variables$Query$GetContracts(this._res);

  TRes _res;

  call({Input$GetContractsFlattenedInput? input}) => _res;
}

class Query$GetContracts {
  Query$GetContracts({
    this.contracts,
    required this.contractsFacets,
    this.$__typename = 'Query',
  });

  factory Query$GetContracts.fromJson(Map<String, dynamic> json) {
    final l$contracts = json['contracts'];
    final l$contractsFacets = json['contractsFacets'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts(
      contracts: l$contracts == null
          ? null
          : Query$GetContracts$contracts.fromJson(
              (l$contracts as Map<String, dynamic>),
            ),
      contractsFacets: (l$contractsFacets as List<dynamic>)
          .map(
            (e) => Query$GetContracts$contractsFacets.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetContracts$contracts? contracts;

  final List<Query$GetContracts$contractsFacets> contractsFacets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contracts = contracts;
    _resultData['contracts'] = l$contracts?.toJson();
    final l$contractsFacets = contractsFacets;
    _resultData['contractsFacets'] = l$contractsFacets
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contracts = contracts;
    final l$contractsFacets = contractsFacets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contracts,
      Object.hashAll(l$contractsFacets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetContracts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$contracts = contracts;
    final lOther$contracts = other.contracts;
    if (l$contracts != lOther$contracts) {
      return false;
    }
    final l$contractsFacets = contractsFacets;
    final lOther$contractsFacets = other.contractsFacets;
    if (l$contractsFacets.length != lOther$contractsFacets.length) {
      return false;
    }
    for (int i = 0; i < l$contractsFacets.length; i++) {
      final l$contractsFacets$entry = l$contractsFacets[i];
      final lOther$contractsFacets$entry = lOther$contractsFacets[i];
      if (l$contractsFacets$entry != lOther$contractsFacets$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetContracts on Query$GetContracts {
  CopyWith$Query$GetContracts<Query$GetContracts> get copyWith =>
      CopyWith$Query$GetContracts(this, (i) => i);
}

abstract class CopyWith$Query$GetContracts<TRes> {
  factory CopyWith$Query$GetContracts(
    Query$GetContracts instance,
    TRes Function(Query$GetContracts) then,
  ) = _CopyWithImpl$Query$GetContracts;

  factory CopyWith$Query$GetContracts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetContracts;

  TRes call({
    Query$GetContracts$contracts? contracts,
    List<Query$GetContracts$contractsFacets>? contractsFacets,
    String? $__typename,
  });
  CopyWith$Query$GetContracts$contracts<TRes> get contracts;
  TRes contractsFacets(
    Iterable<Query$GetContracts$contractsFacets> Function(
      Iterable<
        CopyWith$Query$GetContracts$contractsFacets<
          Query$GetContracts$contractsFacets
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetContracts<TRes>
    implements CopyWith$Query$GetContracts<TRes> {
  _CopyWithImpl$Query$GetContracts(this._instance, this._then);

  final Query$GetContracts _instance;

  final TRes Function(Query$GetContracts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contracts = _undefined,
    Object? contractsFacets = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetContracts(
      contracts: contracts == _undefined
          ? _instance.contracts
          : (contracts as Query$GetContracts$contracts?),
      contractsFacets: contractsFacets == _undefined || contractsFacets == null
          ? _instance.contractsFacets
          : (contractsFacets as List<Query$GetContracts$contractsFacets>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetContracts$contracts<TRes> get contracts {
    final local$contracts = _instance.contracts;
    return local$contracts == null
        ? CopyWith$Query$GetContracts$contracts.stub(_then(_instance))
        : CopyWith$Query$GetContracts$contracts(
            local$contracts,
            (e) => call(contracts: e),
          );
  }

  TRes contractsFacets(
    Iterable<Query$GetContracts$contractsFacets> Function(
      Iterable<
        CopyWith$Query$GetContracts$contractsFacets<
          Query$GetContracts$contractsFacets
        >
      >,
    )
    _fn,
  ) => call(
    contractsFacets: _fn(
      _instance.contractsFacets.map(
        (e) => CopyWith$Query$GetContracts$contractsFacets(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetContracts<TRes>
    implements CopyWith$Query$GetContracts<TRes> {
  _CopyWithStubImpl$Query$GetContracts(this._res);

  TRes _res;

  call({
    Query$GetContracts$contracts? contracts,
    List<Query$GetContracts$contractsFacets>? contractsFacets,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetContracts$contracts<TRes> get contracts =>
      CopyWith$Query$GetContracts$contracts.stub(_res);

  contractsFacets(_fn) => _res;
}

const documentNodeQueryGetContracts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetContracts'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'GetContractsFlattenedInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'contracts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
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
                        name: NameNode(value: 'endCursor'),
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
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'accountDetails'),
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
                              name: NameNode(value: 'code'),
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
                        name: NameNode(value: 'references'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'internal'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'customer'),
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
                        name: NameNode(value: 'contractOrderBookTypeName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'status'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'pricingBasis'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'noOfLines'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'contractType'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'lines'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'deliveryMethod'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'productDetails'),
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
                                    name: NameNode(value: 'code'),
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
          FieldNode(
            name: NameNode(value: 'contractsFacets'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'value'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'values'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'count'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'range'),
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

class Query$GetContracts$contracts {
  Query$GetContracts$contracts({
    required this.pageInfo,
    required this.totalCount,
    this.nodes,
    this.$__typename = 'ContractsConnection',
  });

  factory Query$GetContracts$contracts.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts(
      pageInfo: Query$GetContracts$contracts$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$GetContracts$contracts$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetContracts$contracts$pageInfo pageInfo;

  final int totalCount;

  final List<Query$GetContracts$contracts$nodes>? nodes;

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
    if (other is! Query$GetContracts$contracts ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetContracts$contracts
    on Query$GetContracts$contracts {
  CopyWith$Query$GetContracts$contracts<Query$GetContracts$contracts>
  get copyWith => CopyWith$Query$GetContracts$contracts(this, (i) => i);
}

abstract class CopyWith$Query$GetContracts$contracts<TRes> {
  factory CopyWith$Query$GetContracts$contracts(
    Query$GetContracts$contracts instance,
    TRes Function(Query$GetContracts$contracts) then,
  ) = _CopyWithImpl$Query$GetContracts$contracts;

  factory CopyWith$Query$GetContracts$contracts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetContracts$contracts;

  TRes call({
    Query$GetContracts$contracts$pageInfo? pageInfo,
    int? totalCount,
    List<Query$GetContracts$contracts$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetContracts$contracts$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$GetContracts$contracts$nodes>? Function(
      Iterable<
        CopyWith$Query$GetContracts$contracts$nodes<
          Query$GetContracts$contracts$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetContracts$contracts<TRes>
    implements CopyWith$Query$GetContracts$contracts<TRes> {
  _CopyWithImpl$Query$GetContracts$contracts(this._instance, this._then);

  final Query$GetContracts$contracts _instance;

  final TRes Function(Query$GetContracts$contracts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetContracts$contracts(
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$GetContracts$contracts$pageInfo),
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$GetContracts$contracts$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetContracts$contracts$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetContracts$contracts$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$GetContracts$contracts$nodes>? Function(
      Iterable<
        CopyWith$Query$GetContracts$contracts$nodes<
          Query$GetContracts$contracts$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$GetContracts$contracts$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetContracts$contracts<TRes>
    implements CopyWith$Query$GetContracts$contracts<TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts(this._res);

  TRes _res;

  call({
    Query$GetContracts$contracts$pageInfo? pageInfo,
    int? totalCount,
    List<Query$GetContracts$contracts$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetContracts$contracts$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetContracts$contracts$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$GetContracts$contracts$pageInfo {
  Query$GetContracts$contracts$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    required this.hasPreviousPage,
    this.startCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetContracts$contracts$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      endCursor: (l$endCursor as String?),
      hasPreviousPage: (l$hasPreviousPage as bool),
      startCursor: (l$startCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final String? endCursor;

  final bool hasPreviousPage;

  final String? startCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
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
    final l$hasNextPage = hasNextPage;
    final l$endCursor = endCursor;
    final l$hasPreviousPage = hasPreviousPage;
    final l$startCursor = startCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$endCursor,
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
    if (other is! Query$GetContracts$contracts$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
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

extension UtilityExtension$Query$GetContracts$contracts$pageInfo
    on Query$GetContracts$contracts$pageInfo {
  CopyWith$Query$GetContracts$contracts$pageInfo<
    Query$GetContracts$contracts$pageInfo
  >
  get copyWith =>
      CopyWith$Query$GetContracts$contracts$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$GetContracts$contracts$pageInfo<TRes> {
  factory CopyWith$Query$GetContracts$contracts$pageInfo(
    Query$GetContracts$contracts$pageInfo instance,
    TRes Function(Query$GetContracts$contracts$pageInfo) then,
  ) = _CopyWithImpl$Query$GetContracts$contracts$pageInfo;

  factory CopyWith$Query$GetContracts$contracts$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetContracts$contracts$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? endCursor,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetContracts$contracts$pageInfo<TRes>
    implements CopyWith$Query$GetContracts$contracts$pageInfo<TRes> {
  _CopyWithImpl$Query$GetContracts$contracts$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contracts$pageInfo _instance;

  final TRes Function(Query$GetContracts$contracts$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetContracts$contracts$pageInfo(
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      endCursor: endCursor == _undefined
          ? _instance.endCursor
          : (endCursor as String?),
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

class _CopyWithStubImpl$Query$GetContracts$contracts$pageInfo<TRes>
    implements CopyWith$Query$GetContracts$contracts$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? endCursor,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  }) => _res;
}

class Query$GetContracts$contracts$nodes {
  Query$GetContracts$contracts$nodes({
    required this.accountDetails,
    required this.references,
    required this.contractOrderBookTypeName,
    required this.status,
    required this.pricingBasis,
    this.noOfLines,
    this.contractType,
    required this.lines,
    this.$__typename = 'Contract',
  });

  factory Query$GetContracts$contracts$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountDetails = json['accountDetails'];
    final l$references = json['references'];
    final l$contractOrderBookTypeName = json['contractOrderBookTypeName'];
    final l$status = json['status'];
    final l$pricingBasis = json['pricingBasis'];
    final l$noOfLines = json['noOfLines'];
    final l$contractType = json['contractType'];
    final l$lines = json['lines'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts$nodes(
      accountDetails:
          Query$GetContracts$contracts$nodes$accountDetails.fromJson(
            (l$accountDetails as Map<String, dynamic>),
          ),
      references: Query$GetContracts$contracts$nodes$references.fromJson(
        (l$references as Map<String, dynamic>),
      ),
      contractOrderBookTypeName: (l$contractOrderBookTypeName as String),
      status: fromJson$Enum$ContractStatus((l$status as String)),
      pricingBasis: fromJson$Enum$ContractPricingBasis(
        (l$pricingBasis as String),
      ),
      noOfLines: (l$noOfLines as int?),
      contractType: (l$contractType as String?),
      lines: (l$lines as List<dynamic>)
          .map(
            (e) => Query$GetContracts$contracts$nodes$lines.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetContracts$contracts$nodes$accountDetails accountDetails;

  final Query$GetContracts$contracts$nodes$references references;

  final String contractOrderBookTypeName;

  final Enum$ContractStatus status;

  final Enum$ContractPricingBasis pricingBasis;

  final int? noOfLines;

  final String? contractType;

  final List<Query$GetContracts$contracts$nodes$lines> lines;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountDetails = accountDetails;
    _resultData['accountDetails'] = l$accountDetails.toJson();
    final l$references = references;
    _resultData['references'] = l$references.toJson();
    final l$contractOrderBookTypeName = contractOrderBookTypeName;
    _resultData['contractOrderBookTypeName'] = l$contractOrderBookTypeName;
    final l$status = status;
    _resultData['status'] = toJson$Enum$ContractStatus(l$status);
    final l$pricingBasis = pricingBasis;
    _resultData['pricingBasis'] = toJson$Enum$ContractPricingBasis(
      l$pricingBasis,
    );
    final l$noOfLines = noOfLines;
    _resultData['noOfLines'] = l$noOfLines;
    final l$contractType = contractType;
    _resultData['contractType'] = l$contractType;
    final l$lines = lines;
    _resultData['lines'] = l$lines.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountDetails = accountDetails;
    final l$references = references;
    final l$contractOrderBookTypeName = contractOrderBookTypeName;
    final l$status = status;
    final l$pricingBasis = pricingBasis;
    final l$noOfLines = noOfLines;
    final l$contractType = contractType;
    final l$lines = lines;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountDetails,
      l$references,
      l$contractOrderBookTypeName,
      l$status,
      l$pricingBasis,
      l$noOfLines,
      l$contractType,
      Object.hashAll(l$lines.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetContracts$contracts$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountDetails = accountDetails;
    final lOther$accountDetails = other.accountDetails;
    if (l$accountDetails != lOther$accountDetails) {
      return false;
    }
    final l$references = references;
    final lOther$references = other.references;
    if (l$references != lOther$references) {
      return false;
    }
    final l$contractOrderBookTypeName = contractOrderBookTypeName;
    final lOther$contractOrderBookTypeName = other.contractOrderBookTypeName;
    if (l$contractOrderBookTypeName != lOther$contractOrderBookTypeName) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$pricingBasis = pricingBasis;
    final lOther$pricingBasis = other.pricingBasis;
    if (l$pricingBasis != lOther$pricingBasis) {
      return false;
    }
    final l$noOfLines = noOfLines;
    final lOther$noOfLines = other.noOfLines;
    if (l$noOfLines != lOther$noOfLines) {
      return false;
    }
    final l$contractType = contractType;
    final lOther$contractType = other.contractType;
    if (l$contractType != lOther$contractType) {
      return false;
    }
    final l$lines = lines;
    final lOther$lines = other.lines;
    if (l$lines.length != lOther$lines.length) {
      return false;
    }
    for (int i = 0; i < l$lines.length; i++) {
      final l$lines$entry = l$lines[i];
      final lOther$lines$entry = lOther$lines[i];
      if (l$lines$entry != lOther$lines$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetContracts$contracts$nodes
    on Query$GetContracts$contracts$nodes {
  CopyWith$Query$GetContracts$contracts$nodes<
    Query$GetContracts$contracts$nodes
  >
  get copyWith => CopyWith$Query$GetContracts$contracts$nodes(this, (i) => i);
}

abstract class CopyWith$Query$GetContracts$contracts$nodes<TRes> {
  factory CopyWith$Query$GetContracts$contracts$nodes(
    Query$GetContracts$contracts$nodes instance,
    TRes Function(Query$GetContracts$contracts$nodes) then,
  ) = _CopyWithImpl$Query$GetContracts$contracts$nodes;

  factory CopyWith$Query$GetContracts$contracts$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetContracts$contracts$nodes;

  TRes call({
    Query$GetContracts$contracts$nodes$accountDetails? accountDetails,
    Query$GetContracts$contracts$nodes$references? references,
    String? contractOrderBookTypeName,
    Enum$ContractStatus? status,
    Enum$ContractPricingBasis? pricingBasis,
    int? noOfLines,
    String? contractType,
    List<Query$GetContracts$contracts$nodes$lines>? lines,
    String? $__typename,
  });
  CopyWith$Query$GetContracts$contracts$nodes$accountDetails<TRes>
  get accountDetails;
  CopyWith$Query$GetContracts$contracts$nodes$references<TRes> get references;
  TRes lines(
    Iterable<Query$GetContracts$contracts$nodes$lines> Function(
      Iterable<
        CopyWith$Query$GetContracts$contracts$nodes$lines<
          Query$GetContracts$contracts$nodes$lines
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetContracts$contracts$nodes<TRes>
    implements CopyWith$Query$GetContracts$contracts$nodes<TRes> {
  _CopyWithImpl$Query$GetContracts$contracts$nodes(this._instance, this._then);

  final Query$GetContracts$contracts$nodes _instance;

  final TRes Function(Query$GetContracts$contracts$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountDetails = _undefined,
    Object? references = _undefined,
    Object? contractOrderBookTypeName = _undefined,
    Object? status = _undefined,
    Object? pricingBasis = _undefined,
    Object? noOfLines = _undefined,
    Object? contractType = _undefined,
    Object? lines = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetContracts$contracts$nodes(
      accountDetails: accountDetails == _undefined || accountDetails == null
          ? _instance.accountDetails
          : (accountDetails
                as Query$GetContracts$contracts$nodes$accountDetails),
      references: references == _undefined || references == null
          ? _instance.references
          : (references as Query$GetContracts$contracts$nodes$references),
      contractOrderBookTypeName:
          contractOrderBookTypeName == _undefined ||
              contractOrderBookTypeName == null
          ? _instance.contractOrderBookTypeName
          : (contractOrderBookTypeName as String),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$ContractStatus),
      pricingBasis: pricingBasis == _undefined || pricingBasis == null
          ? _instance.pricingBasis
          : (pricingBasis as Enum$ContractPricingBasis),
      noOfLines: noOfLines == _undefined
          ? _instance.noOfLines
          : (noOfLines as int?),
      contractType: contractType == _undefined
          ? _instance.contractType
          : (contractType as String?),
      lines: lines == _undefined || lines == null
          ? _instance.lines
          : (lines as List<Query$GetContracts$contracts$nodes$lines>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetContracts$contracts$nodes$accountDetails<TRes>
  get accountDetails {
    final local$accountDetails = _instance.accountDetails;
    return CopyWith$Query$GetContracts$contracts$nodes$accountDetails(
      local$accountDetails,
      (e) => call(accountDetails: e),
    );
  }

  CopyWith$Query$GetContracts$contracts$nodes$references<TRes> get references {
    final local$references = _instance.references;
    return CopyWith$Query$GetContracts$contracts$nodes$references(
      local$references,
      (e) => call(references: e),
    );
  }

  TRes lines(
    Iterable<Query$GetContracts$contracts$nodes$lines> Function(
      Iterable<
        CopyWith$Query$GetContracts$contracts$nodes$lines<
          Query$GetContracts$contracts$nodes$lines
        >
      >,
    )
    _fn,
  ) => call(
    lines: _fn(
      _instance.lines.map(
        (e) => CopyWith$Query$GetContracts$contracts$nodes$lines(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetContracts$contracts$nodes<TRes>
    implements CopyWith$Query$GetContracts$contracts$nodes<TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts$nodes(this._res);

  TRes _res;

  call({
    Query$GetContracts$contracts$nodes$accountDetails? accountDetails,
    Query$GetContracts$contracts$nodes$references? references,
    String? contractOrderBookTypeName,
    Enum$ContractStatus? status,
    Enum$ContractPricingBasis? pricingBasis,
    int? noOfLines,
    String? contractType,
    List<Query$GetContracts$contracts$nodes$lines>? lines,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetContracts$contracts$nodes$accountDetails<TRes>
  get accountDetails =>
      CopyWith$Query$GetContracts$contracts$nodes$accountDetails.stub(_res);

  CopyWith$Query$GetContracts$contracts$nodes$references<TRes> get references =>
      CopyWith$Query$GetContracts$contracts$nodes$references.stub(_res);

  lines(_fn) => _res;
}

class Query$GetContracts$contracts$nodes$accountDetails {
  Query$GetContracts$contracts$nodes$accountDetails({
    required this.id,
    required this.name,
    required this.code,
    this.$__typename = 'ContractAccountDetails',
  });

  factory Query$GetContracts$contracts$nodes$accountDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts$nodes$accountDetails(
      id: (l$id as String),
      name: (l$name as String),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$code, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetContracts$contracts$nodes$accountDetails ||
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
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$GetContracts$contracts$nodes$accountDetails
    on Query$GetContracts$contracts$nodes$accountDetails {
  CopyWith$Query$GetContracts$contracts$nodes$accountDetails<
    Query$GetContracts$contracts$nodes$accountDetails
  >
  get copyWith => CopyWith$Query$GetContracts$contracts$nodes$accountDetails(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetContracts$contracts$nodes$accountDetails<
  TRes
> {
  factory CopyWith$Query$GetContracts$contracts$nodes$accountDetails(
    Query$GetContracts$contracts$nodes$accountDetails instance,
    TRes Function(Query$GetContracts$contracts$nodes$accountDetails) then,
  ) = _CopyWithImpl$Query$GetContracts$contracts$nodes$accountDetails;

  factory CopyWith$Query$GetContracts$contracts$nodes$accountDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetContracts$contracts$nodes$accountDetails;

  TRes call({String? id, String? name, String? code, String? $__typename});
}

class _CopyWithImpl$Query$GetContracts$contracts$nodes$accountDetails<TRes>
    implements
        CopyWith$Query$GetContracts$contracts$nodes$accountDetails<TRes> {
  _CopyWithImpl$Query$GetContracts$contracts$nodes$accountDetails(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contracts$nodes$accountDetails _instance;

  final TRes Function(Query$GetContracts$contracts$nodes$accountDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetContracts$contracts$nodes$accountDetails(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetContracts$contracts$nodes$accountDetails<TRes>
    implements
        CopyWith$Query$GetContracts$contracts$nodes$accountDetails<TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts$nodes$accountDetails(
    this._res,
  );

  TRes _res;

  call({String? id, String? name, String? code, String? $__typename}) => _res;
}

class Query$GetContracts$contracts$nodes$references {
  Query$GetContracts$contracts$nodes$references({
    required this.internal,
    required this.customer,
    this.$__typename = 'ContractReferences',
  });

  factory Query$GetContracts$contracts$nodes$references.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$internal = json['internal'];
    final l$customer = json['customer'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts$nodes$references(
      internal: (l$internal as String),
      customer: (l$customer as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String internal;

  final String customer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$internal = internal;
    _resultData['internal'] = l$internal;
    final l$customer = customer;
    _resultData['customer'] = l$customer;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$internal = internal;
    final l$customer = customer;
    final l$$__typename = $__typename;
    return Object.hashAll([l$internal, l$customer, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetContracts$contracts$nodes$references ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$internal = internal;
    final lOther$internal = other.internal;
    if (l$internal != lOther$internal) {
      return false;
    }
    final l$customer = customer;
    final lOther$customer = other.customer;
    if (l$customer != lOther$customer) {
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

extension UtilityExtension$Query$GetContracts$contracts$nodes$references
    on Query$GetContracts$contracts$nodes$references {
  CopyWith$Query$GetContracts$contracts$nodes$references<
    Query$GetContracts$contracts$nodes$references
  >
  get copyWith =>
      CopyWith$Query$GetContracts$contracts$nodes$references(this, (i) => i);
}

abstract class CopyWith$Query$GetContracts$contracts$nodes$references<TRes> {
  factory CopyWith$Query$GetContracts$contracts$nodes$references(
    Query$GetContracts$contracts$nodes$references instance,
    TRes Function(Query$GetContracts$contracts$nodes$references) then,
  ) = _CopyWithImpl$Query$GetContracts$contracts$nodes$references;

  factory CopyWith$Query$GetContracts$contracts$nodes$references.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetContracts$contracts$nodes$references;

  TRes call({String? internal, String? customer, String? $__typename});
}

class _CopyWithImpl$Query$GetContracts$contracts$nodes$references<TRes>
    implements CopyWith$Query$GetContracts$contracts$nodes$references<TRes> {
  _CopyWithImpl$Query$GetContracts$contracts$nodes$references(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contracts$nodes$references _instance;

  final TRes Function(Query$GetContracts$contracts$nodes$references) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? internal = _undefined,
    Object? customer = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetContracts$contracts$nodes$references(
      internal: internal == _undefined || internal == null
          ? _instance.internal
          : (internal as String),
      customer: customer == _undefined || customer == null
          ? _instance.customer
          : (customer as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetContracts$contracts$nodes$references<TRes>
    implements CopyWith$Query$GetContracts$contracts$nodes$references<TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts$nodes$references(this._res);

  TRes _res;

  call({String? internal, String? customer, String? $__typename}) => _res;
}

class Query$GetContracts$contracts$nodes$lines {
  Query$GetContracts$contracts$nodes$lines({
    required this.deliveryMethod,
    required this.productDetails,
    this.$__typename = 'ContractLine',
  });

  factory Query$GetContracts$contracts$nodes$lines.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$deliveryMethod = json['deliveryMethod'];
    final l$productDetails = json['productDetails'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts$nodes$lines(
      deliveryMethod: fromJson$Enum$DeliveryMethod(
        (l$deliveryMethod as String),
      ),
      productDetails:
          Query$GetContracts$contracts$nodes$lines$productDetails.fromJson(
            (l$productDetails as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$DeliveryMethod deliveryMethod;

  final Query$GetContracts$contracts$nodes$lines$productDetails productDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deliveryMethod = deliveryMethod;
    _resultData['deliveryMethod'] = toJson$Enum$DeliveryMethod(
      l$deliveryMethod,
    );
    final l$productDetails = productDetails;
    _resultData['productDetails'] = l$productDetails.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deliveryMethod = deliveryMethod;
    final l$productDetails = productDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deliveryMethod, l$productDetails, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetContracts$contracts$nodes$lines ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deliveryMethod = deliveryMethod;
    final lOther$deliveryMethod = other.deliveryMethod;
    if (l$deliveryMethod != lOther$deliveryMethod) {
      return false;
    }
    final l$productDetails = productDetails;
    final lOther$productDetails = other.productDetails;
    if (l$productDetails != lOther$productDetails) {
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

extension UtilityExtension$Query$GetContracts$contracts$nodes$lines
    on Query$GetContracts$contracts$nodes$lines {
  CopyWith$Query$GetContracts$contracts$nodes$lines<
    Query$GetContracts$contracts$nodes$lines
  >
  get copyWith =>
      CopyWith$Query$GetContracts$contracts$nodes$lines(this, (i) => i);
}

abstract class CopyWith$Query$GetContracts$contracts$nodes$lines<TRes> {
  factory CopyWith$Query$GetContracts$contracts$nodes$lines(
    Query$GetContracts$contracts$nodes$lines instance,
    TRes Function(Query$GetContracts$contracts$nodes$lines) then,
  ) = _CopyWithImpl$Query$GetContracts$contracts$nodes$lines;

  factory CopyWith$Query$GetContracts$contracts$nodes$lines.stub(TRes res) =
      _CopyWithStubImpl$Query$GetContracts$contracts$nodes$lines;

  TRes call({
    Enum$DeliveryMethod? deliveryMethod,
    Query$GetContracts$contracts$nodes$lines$productDetails? productDetails,
    String? $__typename,
  });
  CopyWith$Query$GetContracts$contracts$nodes$lines$productDetails<TRes>
  get productDetails;
}

class _CopyWithImpl$Query$GetContracts$contracts$nodes$lines<TRes>
    implements CopyWith$Query$GetContracts$contracts$nodes$lines<TRes> {
  _CopyWithImpl$Query$GetContracts$contracts$nodes$lines(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contracts$nodes$lines _instance;

  final TRes Function(Query$GetContracts$contracts$nodes$lines) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deliveryMethod = _undefined,
    Object? productDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetContracts$contracts$nodes$lines(
      deliveryMethod: deliveryMethod == _undefined || deliveryMethod == null
          ? _instance.deliveryMethod
          : (deliveryMethod as Enum$DeliveryMethod),
      productDetails: productDetails == _undefined || productDetails == null
          ? _instance.productDetails
          : (productDetails
                as Query$GetContracts$contracts$nodes$lines$productDetails),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetContracts$contracts$nodes$lines$productDetails<TRes>
  get productDetails {
    final local$productDetails = _instance.productDetails;
    return CopyWith$Query$GetContracts$contracts$nodes$lines$productDetails(
      local$productDetails,
      (e) => call(productDetails: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetContracts$contracts$nodes$lines<TRes>
    implements CopyWith$Query$GetContracts$contracts$nodes$lines<TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts$nodes$lines(this._res);

  TRes _res;

  call({
    Enum$DeliveryMethod? deliveryMethod,
    Query$GetContracts$contracts$nodes$lines$productDetails? productDetails,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetContracts$contracts$nodes$lines$productDetails<TRes>
  get productDetails =>
      CopyWith$Query$GetContracts$contracts$nodes$lines$productDetails.stub(
        _res,
      );
}

class Query$GetContracts$contracts$nodes$lines$productDetails {
  Query$GetContracts$contracts$nodes$lines$productDetails({
    required this.id,
    required this.code,
    this.$__typename = 'ContractProductDetails',
  });

  factory Query$GetContracts$contracts$nodes$lines$productDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts$nodes$lines$productDetails(
      id: (l$id as String),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$code, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetContracts$contracts$nodes$lines$productDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$GetContracts$contracts$nodes$lines$productDetails
    on Query$GetContracts$contracts$nodes$lines$productDetails {
  CopyWith$Query$GetContracts$contracts$nodes$lines$productDetails<
    Query$GetContracts$contracts$nodes$lines$productDetails
  >
  get copyWith =>
      CopyWith$Query$GetContracts$contracts$nodes$lines$productDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetContracts$contracts$nodes$lines$productDetails<
  TRes
> {
  factory CopyWith$Query$GetContracts$contracts$nodes$lines$productDetails(
    Query$GetContracts$contracts$nodes$lines$productDetails instance,
    TRes Function(Query$GetContracts$contracts$nodes$lines$productDetails) then,
  ) = _CopyWithImpl$Query$GetContracts$contracts$nodes$lines$productDetails;

  factory CopyWith$Query$GetContracts$contracts$nodes$lines$productDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetContracts$contracts$nodes$lines$productDetails;

  TRes call({String? id, String? code, String? $__typename});
}

class _CopyWithImpl$Query$GetContracts$contracts$nodes$lines$productDetails<
  TRes
>
    implements
        CopyWith$Query$GetContracts$contracts$nodes$lines$productDetails<TRes> {
  _CopyWithImpl$Query$GetContracts$contracts$nodes$lines$productDetails(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contracts$nodes$lines$productDetails _instance;

  final TRes Function(Query$GetContracts$contracts$nodes$lines$productDetails)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetContracts$contracts$nodes$lines$productDetails(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetContracts$contracts$nodes$lines$productDetails<
  TRes
>
    implements
        CopyWith$Query$GetContracts$contracts$nodes$lines$productDetails<TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts$nodes$lines$productDetails(
    this._res,
  );

  TRes _res;

  call({String? id, String? code, String? $__typename}) => _res;
}

class Query$GetContracts$contractsFacets {
  Query$GetContracts$contractsFacets({
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndFacetResult',
  });

  factory Query$GetContracts$contractsFacets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contractsFacets(
      value: Query$GetContracts$contractsFacets$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetContracts$contractsFacets$value value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetContracts$contractsFacets ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetContracts$contractsFacets
    on Query$GetContracts$contractsFacets {
  CopyWith$Query$GetContracts$contractsFacets<
    Query$GetContracts$contractsFacets
  >
  get copyWith => CopyWith$Query$GetContracts$contractsFacets(this, (i) => i);
}

abstract class CopyWith$Query$GetContracts$contractsFacets<TRes> {
  factory CopyWith$Query$GetContracts$contractsFacets(
    Query$GetContracts$contractsFacets instance,
    TRes Function(Query$GetContracts$contractsFacets) then,
  ) = _CopyWithImpl$Query$GetContracts$contractsFacets;

  factory CopyWith$Query$GetContracts$contractsFacets.stub(TRes res) =
      _CopyWithStubImpl$Query$GetContracts$contractsFacets;

  TRes call({
    Query$GetContracts$contractsFacets$value? value,
    String? $__typename,
  });
  CopyWith$Query$GetContracts$contractsFacets$value<TRes> get value;
}

class _CopyWithImpl$Query$GetContracts$contractsFacets<TRes>
    implements CopyWith$Query$GetContracts$contractsFacets<TRes> {
  _CopyWithImpl$Query$GetContracts$contractsFacets(this._instance, this._then);

  final Query$GetContracts$contractsFacets _instance;

  final TRes Function(Query$GetContracts$contractsFacets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? value = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetContracts$contractsFacets(
          value: value == _undefined || value == null
              ? _instance.value
              : (value as Query$GetContracts$contractsFacets$value),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetContracts$contractsFacets$value<TRes> get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetContracts$contractsFacets$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetContracts$contractsFacets<TRes>
    implements CopyWith$Query$GetContracts$contractsFacets<TRes> {
  _CopyWithStubImpl$Query$GetContracts$contractsFacets(this._res);

  TRes _res;

  call({
    Query$GetContracts$contractsFacets$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetContracts$contractsFacets$value<TRes> get value =>
      CopyWith$Query$GetContracts$contractsFacets$value.stub(_res);
}

class Query$GetContracts$contractsFacets$value {
  Query$GetContracts$contractsFacets$value({
    this.name,
    this.values,
    this.$__typename = 'FacetResult',
  });

  factory Query$GetContracts$contractsFacets$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contractsFacets$value(
      name: (l$name as String?),
      values: (l$values as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$GetContracts$contractsFacets$value$values.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final List<Query$GetContracts$contractsFacets$value$values?>? values;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$values = values;
    _resultData['values'] = l$values?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$values = values;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$values == null ? null : Object.hashAll(l$values.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetContracts$contractsFacets$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$values = values;
    final lOther$values = other.values;
    if (l$values != null && lOther$values != null) {
      if (l$values.length != lOther$values.length) {
        return false;
      }
      for (int i = 0; i < l$values.length; i++) {
        final l$values$entry = l$values[i];
        final lOther$values$entry = lOther$values[i];
        if (l$values$entry != lOther$values$entry) {
          return false;
        }
      }
    } else if (l$values != lOther$values) {
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

extension UtilityExtension$Query$GetContracts$contractsFacets$value
    on Query$GetContracts$contractsFacets$value {
  CopyWith$Query$GetContracts$contractsFacets$value<
    Query$GetContracts$contractsFacets$value
  >
  get copyWith =>
      CopyWith$Query$GetContracts$contractsFacets$value(this, (i) => i);
}

abstract class CopyWith$Query$GetContracts$contractsFacets$value<TRes> {
  factory CopyWith$Query$GetContracts$contractsFacets$value(
    Query$GetContracts$contractsFacets$value instance,
    TRes Function(Query$GetContracts$contractsFacets$value) then,
  ) = _CopyWithImpl$Query$GetContracts$contractsFacets$value;

  factory CopyWith$Query$GetContracts$contractsFacets$value.stub(TRes res) =
      _CopyWithStubImpl$Query$GetContracts$contractsFacets$value;

  TRes call({
    String? name,
    List<Query$GetContracts$contractsFacets$value$values?>? values,
    String? $__typename,
  });
  TRes values(
    Iterable<Query$GetContracts$contractsFacets$value$values?>? Function(
      Iterable<
        CopyWith$Query$GetContracts$contractsFacets$value$values<
          Query$GetContracts$contractsFacets$value$values
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetContracts$contractsFacets$value<TRes>
    implements CopyWith$Query$GetContracts$contractsFacets$value<TRes> {
  _CopyWithImpl$Query$GetContracts$contractsFacets$value(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contractsFacets$value _instance;

  final TRes Function(Query$GetContracts$contractsFacets$value) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetContracts$contractsFacets$value(
      name: name == _undefined ? _instance.name : (name as String?),
      values: values == _undefined
          ? _instance.values
          : (values as List<Query$GetContracts$contractsFacets$value$values?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes values(
    Iterable<Query$GetContracts$contractsFacets$value$values?>? Function(
      Iterable<
        CopyWith$Query$GetContracts$contractsFacets$value$values<
          Query$GetContracts$contractsFacets$value$values
        >?
      >?,
    )
    _fn,
  ) => call(
    values: _fn(
      _instance.values?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$GetContracts$contractsFacets$value$values(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetContracts$contractsFacets$value<TRes>
    implements CopyWith$Query$GetContracts$contractsFacets$value<TRes> {
  _CopyWithStubImpl$Query$GetContracts$contractsFacets$value(this._res);

  TRes _res;

  call({
    String? name,
    List<Query$GetContracts$contractsFacets$value$values?>? values,
    String? $__typename,
  }) => _res;

  values(_fn) => _res;
}

class Query$GetContracts$contractsFacets$value$values {
  Query$GetContracts$contractsFacets$value$values({
    required this.count,
    this.range,
    this.$__typename = 'FacetValue',
  });

  factory Query$GetContracts$contractsFacets$value$values.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$range = json['range'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contractsFacets$value$values(
      count: (l$count as int),
      range: (l$range as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String? range;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$range = range;
    _resultData['range'] = l$range;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$range = range;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$range, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetContracts$contractsFacets$value$values ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$range = range;
    final lOther$range = other.range;
    if (l$range != lOther$range) {
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

extension UtilityExtension$Query$GetContracts$contractsFacets$value$values
    on Query$GetContracts$contractsFacets$value$values {
  CopyWith$Query$GetContracts$contractsFacets$value$values<
    Query$GetContracts$contractsFacets$value$values
  >
  get copyWith =>
      CopyWith$Query$GetContracts$contractsFacets$value$values(this, (i) => i);
}

abstract class CopyWith$Query$GetContracts$contractsFacets$value$values<TRes> {
  factory CopyWith$Query$GetContracts$contractsFacets$value$values(
    Query$GetContracts$contractsFacets$value$values instance,
    TRes Function(Query$GetContracts$contractsFacets$value$values) then,
  ) = _CopyWithImpl$Query$GetContracts$contractsFacets$value$values;

  factory CopyWith$Query$GetContracts$contractsFacets$value$values.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetContracts$contractsFacets$value$values;

  TRes call({int? count, String? range, String? $__typename});
}

class _CopyWithImpl$Query$GetContracts$contractsFacets$value$values<TRes>
    implements CopyWith$Query$GetContracts$contractsFacets$value$values<TRes> {
  _CopyWithImpl$Query$GetContracts$contractsFacets$value$values(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contractsFacets$value$values _instance;

  final TRes Function(Query$GetContracts$contractsFacets$value$values) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? range = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetContracts$contractsFacets$value$values(
      count: count == _undefined || count == null
          ? _instance.count
          : (count as int),
      range: range == _undefined ? _instance.range : (range as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetContracts$contractsFacets$value$values<TRes>
    implements CopyWith$Query$GetContracts$contractsFacets$value$values<TRes> {
  _CopyWithStubImpl$Query$GetContracts$contractsFacets$value$values(this._res);

  TRes _res;

  call({int? count, String? range, String? $__typename}) => _res;
}
