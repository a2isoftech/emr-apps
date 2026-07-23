import '../../fragments/inventory/ticket/account_filtered_fields_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$EditTicketAccountSearch {
  factory Variables$Query$EditTicketAccountSearch({
    required String query,
    required String ravenSearchQuery,
    bool? includeOnlyMatchedAddresses,
    bool? includeOnlyMatchedLocations,
    String? territoryId,
  }) => Variables$Query$EditTicketAccountSearch._({
    r'query': query,
    r'ravenSearchQuery': ravenSearchQuery,
    if (includeOnlyMatchedAddresses != null)
      r'includeOnlyMatchedAddresses': includeOnlyMatchedAddresses,
    if (includeOnlyMatchedLocations != null)
      r'includeOnlyMatchedLocations': includeOnlyMatchedLocations,
    if (territoryId != null) r'territoryId': territoryId,
  });

  Variables$Query$EditTicketAccountSearch._(this._$data);

  factory Variables$Query$EditTicketAccountSearch.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] = (l$query as String);
    final l$ravenSearchQuery = data['ravenSearchQuery'];
    result$data['ravenSearchQuery'] = (l$ravenSearchQuery as String);
    if (data.containsKey('includeOnlyMatchedAddresses')) {
      final l$includeOnlyMatchedAddresses = data['includeOnlyMatchedAddresses'];
      result$data['includeOnlyMatchedAddresses'] =
          (l$includeOnlyMatchedAddresses as bool?);
    }
    if (data.containsKey('includeOnlyMatchedLocations')) {
      final l$includeOnlyMatchedLocations = data['includeOnlyMatchedLocations'];
      result$data['includeOnlyMatchedLocations'] =
          (l$includeOnlyMatchedLocations as bool?);
    }
    if (data.containsKey('territoryId')) {
      final l$territoryId = data['territoryId'];
      result$data['territoryId'] = (l$territoryId as String?);
    }
    return Variables$Query$EditTicketAccountSearch._(result$data);
  }

  Map<String, dynamic> _$data;

  String get query => (_$data['query'] as String);

  String get ravenSearchQuery => (_$data['ravenSearchQuery'] as String);

  bool? get includeOnlyMatchedAddresses =>
      (_$data['includeOnlyMatchedAddresses'] as bool?);

  bool? get includeOnlyMatchedLocations =>
      (_$data['includeOnlyMatchedLocations'] as bool?);

  String? get territoryId => (_$data['territoryId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query;
    final l$ravenSearchQuery = ravenSearchQuery;
    result$data['ravenSearchQuery'] = l$ravenSearchQuery;
    if (_$data.containsKey('includeOnlyMatchedAddresses')) {
      final l$includeOnlyMatchedAddresses = includeOnlyMatchedAddresses;
      result$data['includeOnlyMatchedAddresses'] =
          l$includeOnlyMatchedAddresses;
    }
    if (_$data.containsKey('includeOnlyMatchedLocations')) {
      final l$includeOnlyMatchedLocations = includeOnlyMatchedLocations;
      result$data['includeOnlyMatchedLocations'] =
          l$includeOnlyMatchedLocations;
    }
    if (_$data.containsKey('territoryId')) {
      final l$territoryId = territoryId;
      result$data['territoryId'] = l$territoryId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$EditTicketAccountSearch<
    Variables$Query$EditTicketAccountSearch
  >
  get copyWith =>
      CopyWith$Variables$Query$EditTicketAccountSearch(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$EditTicketAccountSearch ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    final l$ravenSearchQuery = ravenSearchQuery;
    final lOther$ravenSearchQuery = other.ravenSearchQuery;
    if (l$ravenSearchQuery != lOther$ravenSearchQuery) {
      return false;
    }
    final l$includeOnlyMatchedAddresses = includeOnlyMatchedAddresses;
    final lOther$includeOnlyMatchedAddresses =
        other.includeOnlyMatchedAddresses;
    if (_$data.containsKey('includeOnlyMatchedAddresses') !=
        other._$data.containsKey('includeOnlyMatchedAddresses')) {
      return false;
    }
    if (l$includeOnlyMatchedAddresses != lOther$includeOnlyMatchedAddresses) {
      return false;
    }
    final l$includeOnlyMatchedLocations = includeOnlyMatchedLocations;
    final lOther$includeOnlyMatchedLocations =
        other.includeOnlyMatchedLocations;
    if (_$data.containsKey('includeOnlyMatchedLocations') !=
        other._$data.containsKey('includeOnlyMatchedLocations')) {
      return false;
    }
    if (l$includeOnlyMatchedLocations != lOther$includeOnlyMatchedLocations) {
      return false;
    }
    final l$territoryId = territoryId;
    final lOther$territoryId = other.territoryId;
    if (_$data.containsKey('territoryId') !=
        other._$data.containsKey('territoryId')) {
      return false;
    }
    if (l$territoryId != lOther$territoryId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$ravenSearchQuery = ravenSearchQuery;
    final l$includeOnlyMatchedAddresses = includeOnlyMatchedAddresses;
    final l$includeOnlyMatchedLocations = includeOnlyMatchedLocations;
    final l$territoryId = territoryId;
    return Object.hashAll([
      l$query,
      l$ravenSearchQuery,
      _$data.containsKey('includeOnlyMatchedAddresses')
          ? l$includeOnlyMatchedAddresses
          : const {},
      _$data.containsKey('includeOnlyMatchedLocations')
          ? l$includeOnlyMatchedLocations
          : const {},
      _$data.containsKey('territoryId') ? l$territoryId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$EditTicketAccountSearch<TRes> {
  factory CopyWith$Variables$Query$EditTicketAccountSearch(
    Variables$Query$EditTicketAccountSearch instance,
    TRes Function(Variables$Query$EditTicketAccountSearch) then,
  ) = _CopyWithImpl$Variables$Query$EditTicketAccountSearch;

  factory CopyWith$Variables$Query$EditTicketAccountSearch.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$EditTicketAccountSearch;

  TRes call({
    String? query,
    String? ravenSearchQuery,
    bool? includeOnlyMatchedAddresses,
    bool? includeOnlyMatchedLocations,
    String? territoryId,
  });
}

class _CopyWithImpl$Variables$Query$EditTicketAccountSearch<TRes>
    implements CopyWith$Variables$Query$EditTicketAccountSearch<TRes> {
  _CopyWithImpl$Variables$Query$EditTicketAccountSearch(
    this._instance,
    this._then,
  );

  final Variables$Query$EditTicketAccountSearch _instance;

  final TRes Function(Variables$Query$EditTicketAccountSearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? ravenSearchQuery = _undefined,
    Object? includeOnlyMatchedAddresses = _undefined,
    Object? includeOnlyMatchedLocations = _undefined,
    Object? territoryId = _undefined,
  }) => _then(
    Variables$Query$EditTicketAccountSearch._({
      ..._instance._$data,
      if (query != _undefined && query != null) 'query': (query as String),
      if (ravenSearchQuery != _undefined && ravenSearchQuery != null)
        'ravenSearchQuery': (ravenSearchQuery as String),
      if (includeOnlyMatchedAddresses != _undefined)
        'includeOnlyMatchedAddresses': (includeOnlyMatchedAddresses as bool?),
      if (includeOnlyMatchedLocations != _undefined)
        'includeOnlyMatchedLocations': (includeOnlyMatchedLocations as bool?),
      if (territoryId != _undefined) 'territoryId': (territoryId as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$EditTicketAccountSearch<TRes>
    implements CopyWith$Variables$Query$EditTicketAccountSearch<TRes> {
  _CopyWithStubImpl$Variables$Query$EditTicketAccountSearch(this._res);

  TRes _res;

  call({
    String? query,
    String? ravenSearchQuery,
    bool? includeOnlyMatchedAddresses,
    bool? includeOnlyMatchedLocations,
    String? territoryId,
  }) => _res;
}

class Query$EditTicketAccountSearch {
  Query$EditTicketAccountSearch({
    this.searchRetailAccounts,
    this.$__typename = 'Query',
  });

  factory Query$EditTicketAccountSearch.fromJson(Map<String, dynamic> json) {
    final l$searchRetailAccounts = json['searchRetailAccounts'];
    final l$$__typename = json['__typename'];
    return Query$EditTicketAccountSearch(
      searchRetailAccounts: l$searchRetailAccounts == null
          ? null
          : Query$EditTicketAccountSearch$searchRetailAccounts.fromJson(
              (l$searchRetailAccounts as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$EditTicketAccountSearch$searchRetailAccounts?
  searchRetailAccounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchRetailAccounts = searchRetailAccounts;
    _resultData['searchRetailAccounts'] = l$searchRetailAccounts?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchRetailAccounts = searchRetailAccounts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchRetailAccounts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$EditTicketAccountSearch ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchRetailAccounts = searchRetailAccounts;
    final lOther$searchRetailAccounts = other.searchRetailAccounts;
    if (l$searchRetailAccounts != lOther$searchRetailAccounts) {
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

extension UtilityExtension$Query$EditTicketAccountSearch
    on Query$EditTicketAccountSearch {
  CopyWith$Query$EditTicketAccountSearch<Query$EditTicketAccountSearch>
  get copyWith => CopyWith$Query$EditTicketAccountSearch(this, (i) => i);
}

abstract class CopyWith$Query$EditTicketAccountSearch<TRes> {
  factory CopyWith$Query$EditTicketAccountSearch(
    Query$EditTicketAccountSearch instance,
    TRes Function(Query$EditTicketAccountSearch) then,
  ) = _CopyWithImpl$Query$EditTicketAccountSearch;

  factory CopyWith$Query$EditTicketAccountSearch.stub(TRes res) =
      _CopyWithStubImpl$Query$EditTicketAccountSearch;

  TRes call({
    Query$EditTicketAccountSearch$searchRetailAccounts? searchRetailAccounts,
    String? $__typename,
  });
  CopyWith$Query$EditTicketAccountSearch$searchRetailAccounts<TRes>
  get searchRetailAccounts;
}

class _CopyWithImpl$Query$EditTicketAccountSearch<TRes>
    implements CopyWith$Query$EditTicketAccountSearch<TRes> {
  _CopyWithImpl$Query$EditTicketAccountSearch(this._instance, this._then);

  final Query$EditTicketAccountSearch _instance;

  final TRes Function(Query$EditTicketAccountSearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchRetailAccounts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EditTicketAccountSearch(
      searchRetailAccounts: searchRetailAccounts == _undefined
          ? _instance.searchRetailAccounts
          : (searchRetailAccounts
                as Query$EditTicketAccountSearch$searchRetailAccounts?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EditTicketAccountSearch$searchRetailAccounts<TRes>
  get searchRetailAccounts {
    final local$searchRetailAccounts = _instance.searchRetailAccounts;
    return local$searchRetailAccounts == null
        ? CopyWith$Query$EditTicketAccountSearch$searchRetailAccounts.stub(
            _then(_instance),
          )
        : CopyWith$Query$EditTicketAccountSearch$searchRetailAccounts(
            local$searchRetailAccounts,
            (e) => call(searchRetailAccounts: e),
          );
  }
}

class _CopyWithStubImpl$Query$EditTicketAccountSearch<TRes>
    implements CopyWith$Query$EditTicketAccountSearch<TRes> {
  _CopyWithStubImpl$Query$EditTicketAccountSearch(this._res);

  TRes _res;

  call({
    Query$EditTicketAccountSearch$searchRetailAccounts? searchRetailAccounts,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EditTicketAccountSearch$searchRetailAccounts<TRes>
  get searchRetailAccounts =>
      CopyWith$Query$EditTicketAccountSearch$searchRetailAccounts.stub(_res);
}

const documentNodeQueryEditTicketAccountSearch = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'EditTicketAccountSearch'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'query')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'ravenSearchQuery')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'includeOnlyMatchedAddresses'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'includeOnlyMatchedLocations'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'territoryId')),
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
            name: NameNode(value: 'searchRetailAccounts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'query'),
                      value: VariableNode(
                        name: NameNode(value: 'ravenSearchQuery'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'defaultTerritory'),
                      value: VariableNode(name: NameNode(value: 'territoryId')),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '500'),
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
                      FragmentSpreadNode(
                        name: NameNode(value: 'AccountFilteredFields'),
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
    fragmentDefinitionAccountFilteredFields,
  ],
);

class Query$EditTicketAccountSearch$searchRetailAccounts {
  Query$EditTicketAccountSearch$searchRetailAccounts({
    this.nodes,
    this.$__typename = 'SearchRetailAccountsConnection',
  });

  factory Query$EditTicketAccountSearch$searchRetailAccounts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$EditTicketAccountSearch$searchRetailAccounts(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Fragment$AccountFilteredFields.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$AccountFilteredFields>? nodes;

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
    if (other is! Query$EditTicketAccountSearch$searchRetailAccounts ||
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

extension UtilityExtension$Query$EditTicketAccountSearch$searchRetailAccounts
    on Query$EditTicketAccountSearch$searchRetailAccounts {
  CopyWith$Query$EditTicketAccountSearch$searchRetailAccounts<
    Query$EditTicketAccountSearch$searchRetailAccounts
  >
  get copyWith => CopyWith$Query$EditTicketAccountSearch$searchRetailAccounts(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$EditTicketAccountSearch$searchRetailAccounts<
  TRes
> {
  factory CopyWith$Query$EditTicketAccountSearch$searchRetailAccounts(
    Query$EditTicketAccountSearch$searchRetailAccounts instance,
    TRes Function(Query$EditTicketAccountSearch$searchRetailAccounts) then,
  ) = _CopyWithImpl$Query$EditTicketAccountSearch$searchRetailAccounts;

  factory CopyWith$Query$EditTicketAccountSearch$searchRetailAccounts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EditTicketAccountSearch$searchRetailAccounts;

  TRes call({List<Fragment$AccountFilteredFields>? nodes, String? $__typename});
  TRes nodes(
    Iterable<Fragment$AccountFilteredFields>? Function(
      Iterable<
        CopyWith$Fragment$AccountFilteredFields<Fragment$AccountFilteredFields>
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$EditTicketAccountSearch$searchRetailAccounts<TRes>
    implements
        CopyWith$Query$EditTicketAccountSearch$searchRetailAccounts<TRes> {
  _CopyWithImpl$Query$EditTicketAccountSearch$searchRetailAccounts(
    this._instance,
    this._then,
  );

  final Query$EditTicketAccountSearch$searchRetailAccounts _instance;

  final TRes Function(Query$EditTicketAccountSearch$searchRetailAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? nodes = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$EditTicketAccountSearch$searchRetailAccounts(
          nodes: nodes == _undefined
              ? _instance.nodes
              : (nodes as List<Fragment$AccountFilteredFields>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes nodes(
    Iterable<Fragment$AccountFilteredFields>? Function(
      Iterable<
        CopyWith$Fragment$AccountFilteredFields<Fragment$AccountFilteredFields>
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Fragment$AccountFilteredFields(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$EditTicketAccountSearch$searchRetailAccounts<TRes>
    implements
        CopyWith$Query$EditTicketAccountSearch$searchRetailAccounts<TRes> {
  _CopyWithStubImpl$Query$EditTicketAccountSearch$searchRetailAccounts(
    this._res,
  );

  TRes _res;

  call({List<Fragment$AccountFilteredFields>? nodes, String? $__typename}) =>
      _res;

  nodes(_fn) => _res;
}
