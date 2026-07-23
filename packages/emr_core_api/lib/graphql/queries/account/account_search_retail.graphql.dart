import '../../schema.graphql.dart';
import 'package:emr_core_api/models/local_date.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchRetailAccounts {
  factory Variables$Query$SearchRetailAccounts({
    String? after,
    String? before,
    int? first,
    int? last,
    required Input$RetailAccountsSearchInput input,
  }) => Variables$Query$SearchRetailAccounts._({
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    r'input': input,
  });

  Variables$Query$SearchRetailAccounts._(this._$data);

  factory Variables$Query$SearchRetailAccounts.fromJson(
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
    result$data['input'] = Input$RetailAccountsSearchInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$SearchRetailAccounts._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  Input$RetailAccountsSearchInput get input =>
      (_$data['input'] as Input$RetailAccountsSearchInput);

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
    return result$data;
  }

  CopyWith$Variables$Query$SearchRetailAccounts<
    Variables$Query$SearchRetailAccounts
  >
  get copyWith => CopyWith$Variables$Query$SearchRetailAccounts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchRetailAccounts ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$after = after;
    final l$before = before;
    final l$first = first;
    final l$last = last;
    final l$input = input;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      l$input,
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchRetailAccounts<TRes> {
  factory CopyWith$Variables$Query$SearchRetailAccounts(
    Variables$Query$SearchRetailAccounts instance,
    TRes Function(Variables$Query$SearchRetailAccounts) then,
  ) = _CopyWithImpl$Variables$Query$SearchRetailAccounts;

  factory CopyWith$Variables$Query$SearchRetailAccounts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchRetailAccounts;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$RetailAccountsSearchInput? input,
  });
}

class _CopyWithImpl$Variables$Query$SearchRetailAccounts<TRes>
    implements CopyWith$Variables$Query$SearchRetailAccounts<TRes> {
  _CopyWithImpl$Variables$Query$SearchRetailAccounts(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchRetailAccounts _instance;

  final TRes Function(Variables$Query$SearchRetailAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? input = _undefined,
  }) => _then(
    Variables$Query$SearchRetailAccounts._({
      ..._instance._$data,
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (input != _undefined && input != null)
        'input': (input as Input$RetailAccountsSearchInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchRetailAccounts<TRes>
    implements CopyWith$Variables$Query$SearchRetailAccounts<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchRetailAccounts(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$RetailAccountsSearchInput? input,
  }) => _res;
}

class Query$SearchRetailAccounts {
  Query$SearchRetailAccounts({
    this.searchRetailAccounts,
    this.$__typename = 'Query',
  });

  factory Query$SearchRetailAccounts.fromJson(Map<String, dynamic> json) {
    final l$searchRetailAccounts = json['searchRetailAccounts'];
    final l$$__typename = json['__typename'];
    return Query$SearchRetailAccounts(
      searchRetailAccounts: l$searchRetailAccounts == null
          ? null
          : Query$SearchRetailAccounts$searchRetailAccounts.fromJson(
              (l$searchRetailAccounts as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchRetailAccounts$searchRetailAccounts? searchRetailAccounts;

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
    if (other is! Query$SearchRetailAccounts ||
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

extension UtilityExtension$Query$SearchRetailAccounts
    on Query$SearchRetailAccounts {
  CopyWith$Query$SearchRetailAccounts<Query$SearchRetailAccounts>
  get copyWith => CopyWith$Query$SearchRetailAccounts(this, (i) => i);
}

abstract class CopyWith$Query$SearchRetailAccounts<TRes> {
  factory CopyWith$Query$SearchRetailAccounts(
    Query$SearchRetailAccounts instance,
    TRes Function(Query$SearchRetailAccounts) then,
  ) = _CopyWithImpl$Query$SearchRetailAccounts;

  factory CopyWith$Query$SearchRetailAccounts.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchRetailAccounts;

  TRes call({
    Query$SearchRetailAccounts$searchRetailAccounts? searchRetailAccounts,
    String? $__typename,
  });
  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts<TRes>
  get searchRetailAccounts;
}

class _CopyWithImpl$Query$SearchRetailAccounts<TRes>
    implements CopyWith$Query$SearchRetailAccounts<TRes> {
  _CopyWithImpl$Query$SearchRetailAccounts(this._instance, this._then);

  final Query$SearchRetailAccounts _instance;

  final TRes Function(Query$SearchRetailAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchRetailAccounts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchRetailAccounts(
      searchRetailAccounts: searchRetailAccounts == _undefined
          ? _instance.searchRetailAccounts
          : (searchRetailAccounts
                as Query$SearchRetailAccounts$searchRetailAccounts?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts<TRes>
  get searchRetailAccounts {
    final local$searchRetailAccounts = _instance.searchRetailAccounts;
    return local$searchRetailAccounts == null
        ? CopyWith$Query$SearchRetailAccounts$searchRetailAccounts.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchRetailAccounts$searchRetailAccounts(
            local$searchRetailAccounts,
            (e) => call(searchRetailAccounts: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchRetailAccounts<TRes>
    implements CopyWith$Query$SearchRetailAccounts<TRes> {
  _CopyWithStubImpl$Query$SearchRetailAccounts(this._res);

  TRes _res;

  call({
    Query$SearchRetailAccounts$searchRetailAccounts? searchRetailAccounts,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts<TRes>
  get searchRetailAccounts =>
      CopyWith$Query$SearchRetailAccounts$searchRetailAccounts.stub(_res);
}

const documentNodeQuerySearchRetailAccounts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchRetailAccounts'),
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
            name: NameNode(value: 'RetailAccountsSearchInput'),
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
            name: NameNode(value: 'searchRetailAccounts'),
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
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'accountStatus'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'lastTicketDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'accountContacts'),
                        alias: null,
                        arguments: [],
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
                                    name: NameNode(value: 'firstName'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'lastName'),
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
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'accountAddresses'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'address1'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'postCode'),
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
                        name: NameNode(value: 'accountManagers'),
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
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'userInfo'),
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
                        name: NameNode(value: 'type'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'industryGroup'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'industryGroups'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'trader'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'supplier'),
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
  ],
);

class Query$SearchRetailAccounts$searchRetailAccounts {
  Query$SearchRetailAccounts$searchRetailAccounts({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchRetailAccountsConnection',
  });

  factory Query$SearchRetailAccounts$searchRetailAccounts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchRetailAccounts$searchRetailAccounts(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$SearchRetailAccounts$searchRetailAccounts$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Query$SearchRetailAccounts$searchRetailAccounts$nodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SearchRetailAccounts$searchRetailAccounts$pageInfo pageInfo;

  final List<Query$SearchRetailAccounts$searchRetailAccounts$nodes>? nodes;

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
    if (other is! Query$SearchRetailAccounts$searchRetailAccounts ||
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

extension UtilityExtension$Query$SearchRetailAccounts$searchRetailAccounts
    on Query$SearchRetailAccounts$searchRetailAccounts {
  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts<
    Query$SearchRetailAccounts$searchRetailAccounts
  >
  get copyWith =>
      CopyWith$Query$SearchRetailAccounts$searchRetailAccounts(this, (i) => i);
}

abstract class CopyWith$Query$SearchRetailAccounts$searchRetailAccounts<TRes> {
  factory CopyWith$Query$SearchRetailAccounts$searchRetailAccounts(
    Query$SearchRetailAccounts$searchRetailAccounts instance,
    TRes Function(Query$SearchRetailAccounts$searchRetailAccounts) then,
  ) = _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts;

  factory CopyWith$Query$SearchRetailAccounts$searchRetailAccounts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts;

  TRes call({
    int? totalCount,
    Query$SearchRetailAccounts$searchRetailAccounts$pageInfo? pageInfo,
    List<Query$SearchRetailAccounts$searchRetailAccounts$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$SearchRetailAccounts$searchRetailAccounts$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes<
          Query$SearchRetailAccounts$searchRetailAccounts$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts<TRes>
    implements CopyWith$Query$SearchRetailAccounts$searchRetailAccounts<TRes> {
  _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts(
    this._instance,
    this._then,
  );

  final Query$SearchRetailAccounts$searchRetailAccounts _instance;

  final TRes Function(Query$SearchRetailAccounts$searchRetailAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchRetailAccounts$searchRetailAccounts(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$SearchRetailAccounts$searchRetailAccounts$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SearchRetailAccounts$searchRetailAccounts$nodes
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$SearchRetailAccounts$searchRetailAccounts$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes<
          Query$SearchRetailAccounts$searchRetailAccounts$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts<TRes>
    implements CopyWith$Query$SearchRetailAccounts$searchRetailAccounts<TRes> {
  _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$SearchRetailAccounts$searchRetailAccounts$pageInfo? pageInfo,
    List<Query$SearchRetailAccounts$searchRetailAccounts$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$SearchRetailAccounts$searchRetailAccounts$pageInfo {
  Query$SearchRetailAccounts$searchRetailAccounts$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchRetailAccounts$searchRetailAccounts$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchRetailAccounts$searchRetailAccounts$pageInfo(
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
    if (other is! Query$SearchRetailAccounts$searchRetailAccounts$pageInfo ||
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

extension UtilityExtension$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo
    on Query$SearchRetailAccounts$searchRetailAccounts$pageInfo {
  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo<
    Query$SearchRetailAccounts$searchRetailAccounts$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo<
  TRes
> {
  factory CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo(
    Query$SearchRetailAccounts$searchRetailAccounts$pageInfo instance,
    TRes Function(Query$SearchRetailAccounts$searchRetailAccounts$pageInfo)
    then,
  ) = _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo;

  factory CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchRetailAccounts$searchRetailAccounts$pageInfo _instance;

  final TRes Function(Query$SearchRetailAccounts$searchRetailAccounts$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchRetailAccounts$searchRetailAccounts$pageInfo(
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

class _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$pageInfo(
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

class Query$SearchRetailAccounts$searchRetailAccounts$nodes {
  Query$SearchRetailAccounts$searchRetailAccounts$nodes({
    required this.code,
    required this.accountStatus,
    this.lastTicketDate,
    this.accountContacts,
    required this.name,
    this.accountAddresses,
    this.accountManagers,
    required this.type,
    this.industryGroup,
    required this.industryGroups,
    required this.id,
    this.$__typename = 'Account',
  });

  factory Query$SearchRetailAccounts$searchRetailAccounts$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$accountStatus = json['accountStatus'];
    final l$lastTicketDate = json['lastTicketDate'];
    final l$accountContacts = json['accountContacts'];
    final l$name = json['name'];
    final l$accountAddresses = json['accountAddresses'];
    final l$accountManagers = json['accountManagers'];
    final l$type = json['type'];
    final l$industryGroup = json['industryGroup'];
    final l$industryGroups = json['industryGroups'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$SearchRetailAccounts$searchRetailAccounts$nodes(
      code: (l$code as String),
      accountStatus: fromJson$Enum$AccountStatus((l$accountStatus as String)),
      lastTicketDate: l$lastTicketDate == null
          ? null
          : LocalDate.fromJson(l$lastTicketDate),
      accountContacts: (l$accountContacts as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      name: (l$name as String),
      accountAddresses: (l$accountAddresses as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      accountManagers: (l$accountManagers as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      type: fromJson$Enum$AccountType((l$type as String)),
      industryGroup: (l$industryGroup as String?),
      industryGroups:
          Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups.fromJson(
            (l$industryGroups as Map<String, dynamic>),
          ),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final Enum$AccountStatus accountStatus;

  final DateTime? lastTicketDate;

  final List<
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts?
  >?
  accountContacts;

  final String name;

  final List<
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses?
  >?
  accountAddresses;

  final List<
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers?
  >?
  accountManagers;

  final Enum$AccountType type;

  final String? industryGroup;

  final Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups
  industryGroups;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$accountStatus = accountStatus;
    _resultData['accountStatus'] = toJson$Enum$AccountStatus(l$accountStatus);
    final l$lastTicketDate = lastTicketDate;
    _resultData['lastTicketDate'] = l$lastTicketDate == null
        ? null
        : LocalDate.toJson(l$lastTicketDate);
    final l$accountContacts = accountContacts;
    _resultData['accountContacts'] = l$accountContacts
        ?.map((e) => e?.toJson())
        .toList();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$accountAddresses = accountAddresses;
    _resultData['accountAddresses'] = l$accountAddresses
        ?.map((e) => e?.toJson())
        .toList();
    final l$accountManagers = accountManagers;
    _resultData['accountManagers'] = l$accountManagers
        ?.map((e) => e?.toJson())
        .toList();
    final l$type = type;
    _resultData['type'] = toJson$Enum$AccountType(l$type);
    final l$industryGroup = industryGroup;
    _resultData['industryGroup'] = l$industryGroup;
    final l$industryGroups = industryGroups;
    _resultData['industryGroups'] = l$industryGroups.toJson();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$accountStatus = accountStatus;
    final l$lastTicketDate = lastTicketDate;
    final l$accountContacts = accountContacts;
    final l$name = name;
    final l$accountAddresses = accountAddresses;
    final l$accountManagers = accountManagers;
    final l$type = type;
    final l$industryGroup = industryGroup;
    final l$industryGroups = industryGroups;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$accountStatus,
      l$lastTicketDate,
      l$accountContacts == null
          ? null
          : Object.hashAll(l$accountContacts.map((v) => v)),
      l$name,
      l$accountAddresses == null
          ? null
          : Object.hashAll(l$accountAddresses.map((v) => v)),
      l$accountManagers == null
          ? null
          : Object.hashAll(l$accountManagers.map((v) => v)),
      l$type,
      l$industryGroup,
      l$industryGroups,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchRetailAccounts$searchRetailAccounts$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$accountStatus = accountStatus;
    final lOther$accountStatus = other.accountStatus;
    if (l$accountStatus != lOther$accountStatus) {
      return false;
    }
    final l$lastTicketDate = lastTicketDate;
    final lOther$lastTicketDate = other.lastTicketDate;
    if (l$lastTicketDate != lOther$lastTicketDate) {
      return false;
    }
    final l$accountContacts = accountContacts;
    final lOther$accountContacts = other.accountContacts;
    if (l$accountContacts != null && lOther$accountContacts != null) {
      if (l$accountContacts.length != lOther$accountContacts.length) {
        return false;
      }
      for (int i = 0; i < l$accountContacts.length; i++) {
        final l$accountContacts$entry = l$accountContacts[i];
        final lOther$accountContacts$entry = lOther$accountContacts[i];
        if (l$accountContacts$entry != lOther$accountContacts$entry) {
          return false;
        }
      }
    } else if (l$accountContacts != lOther$accountContacts) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$accountAddresses = accountAddresses;
    final lOther$accountAddresses = other.accountAddresses;
    if (l$accountAddresses != null && lOther$accountAddresses != null) {
      if (l$accountAddresses.length != lOther$accountAddresses.length) {
        return false;
      }
      for (int i = 0; i < l$accountAddresses.length; i++) {
        final l$accountAddresses$entry = l$accountAddresses[i];
        final lOther$accountAddresses$entry = lOther$accountAddresses[i];
        if (l$accountAddresses$entry != lOther$accountAddresses$entry) {
          return false;
        }
      }
    } else if (l$accountAddresses != lOther$accountAddresses) {
      return false;
    }
    final l$accountManagers = accountManagers;
    final lOther$accountManagers = other.accountManagers;
    if (l$accountManagers != null && lOther$accountManagers != null) {
      if (l$accountManagers.length != lOther$accountManagers.length) {
        return false;
      }
      for (int i = 0; i < l$accountManagers.length; i++) {
        final l$accountManagers$entry = l$accountManagers[i];
        final lOther$accountManagers$entry = lOther$accountManagers[i];
        if (l$accountManagers$entry != lOther$accountManagers$entry) {
          return false;
        }
      }
    } else if (l$accountManagers != lOther$accountManagers) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$industryGroup = industryGroup;
    final lOther$industryGroup = other.industryGroup;
    if (l$industryGroup != lOther$industryGroup) {
      return false;
    }
    final l$industryGroups = industryGroups;
    final lOther$industryGroups = other.industryGroups;
    if (l$industryGroups != lOther$industryGroups) {
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

extension UtilityExtension$Query$SearchRetailAccounts$searchRetailAccounts$nodes
    on Query$SearchRetailAccounts$searchRetailAccounts$nodes {
  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes<
    Query$SearchRetailAccounts$searchRetailAccounts$nodes
  >
  get copyWith =>
      CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes<
  TRes
> {
  factory CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes instance,
    TRes Function(Query$SearchRetailAccounts$searchRetailAccounts$nodes) then,
  ) = _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes;

  factory CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes;

  TRes call({
    String? code,
    Enum$AccountStatus? accountStatus,
    DateTime? lastTicketDate,
    List<
      Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts?
    >?
    accountContacts,
    String? name,
    List<
      Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses?
    >?
    accountAddresses,
    List<
      Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers?
    >?
    accountManagers,
    Enum$AccountType? type,
    String? industryGroup,
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups?
    industryGroups,
    String? id,
    String? $__typename,
  });
  TRes accountContacts(
    Iterable<
      Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts?
    >?
    Function(
      Iterable<
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts<
          Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts
        >?
      >?,
    )
    _fn,
  );
  TRes accountAddresses(
    Iterable<
      Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses?
    >?
    Function(
      Iterable<
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses<
          Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses
        >?
      >?,
    )
    _fn,
  );
  TRes accountManagers(
    Iterable<
      Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers?
    >?
    Function(
      Iterable<
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers<
          Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers
        >?
      >?,
    )
    _fn,
  );
  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups<
    TRes
  >
  get industryGroups;
}

class _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes<TRes>
    implements
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes<TRes> {
  _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchRetailAccounts$searchRetailAccounts$nodes _instance;

  final TRes Function(Query$SearchRetailAccounts$searchRetailAccounts$nodes)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? accountStatus = _undefined,
    Object? lastTicketDate = _undefined,
    Object? accountContacts = _undefined,
    Object? name = _undefined,
    Object? accountAddresses = _undefined,
    Object? accountManagers = _undefined,
    Object? type = _undefined,
    Object? industryGroup = _undefined,
    Object? industryGroups = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      accountStatus: accountStatus == _undefined || accountStatus == null
          ? _instance.accountStatus
          : (accountStatus as Enum$AccountStatus),
      lastTicketDate: lastTicketDate == _undefined
          ? _instance.lastTicketDate
          : (lastTicketDate as DateTime?),
      accountContacts: accountContacts == _undefined
          ? _instance.accountContacts
          : (accountContacts
                as List<
                  Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts?
                >?),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      accountAddresses: accountAddresses == _undefined
          ? _instance.accountAddresses
          : (accountAddresses
                as List<
                  Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses?
                >?),
      accountManagers: accountManagers == _undefined
          ? _instance.accountManagers
          : (accountManagers
                as List<
                  Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers?
                >?),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$AccountType),
      industryGroup: industryGroup == _undefined
          ? _instance.industryGroup
          : (industryGroup as String?),
      industryGroups: industryGroups == _undefined || industryGroups == null
          ? _instance.industryGroups
          : (industryGroups
                as Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes accountContacts(
    Iterable<
      Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts?
    >?
    Function(
      Iterable<
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts<
          Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts
        >?
      >?,
    )
    _fn,
  ) => call(
    accountContacts: _fn(
      _instance.accountContacts?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );

  TRes accountAddresses(
    Iterable<
      Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses?
    >?
    Function(
      Iterable<
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses<
          Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses
        >?
      >?,
    )
    _fn,
  ) => call(
    accountAddresses: _fn(
      _instance.accountAddresses?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );

  TRes accountManagers(
    Iterable<
      Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers?
    >?
    Function(
      Iterable<
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers<
          Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers
        >?
      >?,
    )
    _fn,
  ) => call(
    accountManagers: _fn(
      _instance.accountManagers?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );

  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups<
    TRes
  >
  get industryGroups {
    final local$industryGroups = _instance.industryGroups;
    return CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups(
      local$industryGroups,
      (e) => call(industryGroups: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    Enum$AccountStatus? accountStatus,
    DateTime? lastTicketDate,
    List<
      Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts?
    >?
    accountContacts,
    String? name,
    List<
      Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses?
    >?
    accountAddresses,
    List<
      Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers?
    >?
    accountManagers,
    Enum$AccountType? type,
    String? industryGroup,
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups?
    industryGroups,
    String? id,
    String? $__typename,
  }) => _res;

  accountContacts(_fn) => _res;

  accountAddresses(_fn) => _res;

  accountManagers(_fn) => _res;

  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups<
    TRes
  >
  get industryGroups =>
      CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups.stub(
        _res,
      );
}

class Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts {
  Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts({
    required this.value,
    this.$__typename = 'ContactWithKey',
  });

  factory Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts(
      value:
          Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value
  value;

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
    if (other
            is! Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts ||
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

extension UtilityExtension$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts
    on Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts {
  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts<
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts
  >
  get copyWith =>
      CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts<
  TRes
> {
  factory CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts
    instance,
    TRes Function(
      Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts,
    )
    then,
  ) = _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts;

  factory CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts;

  TRes call({
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts<
          TRes
        > {
  _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts(
    this._instance,
    this._then,
  );

  final Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts
  _instance;

  final TRes Function(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts(
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts(
    this._res,
  );

  TRes _res;

  call({
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value<
    TRes
  >
  get value =>
      CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value.stub(
        _res,
      );
}

class Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value {
  Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value({
    required this.firstName,
    required this.lastName,
    this.$__typename = 'Contact',
  });

  factory Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$$__typename = json['__typename'];
    return Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value(
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String firstName;

  final String lastName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$firstName, l$lastName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
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

extension UtilityExtension$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value
    on Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value {
  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value<
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value
  >
  get copyWith =>
      CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value<
  TRes
> {
  factory CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value
    instance,
    TRes Function(
      Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value,
    )
    then,
  ) = _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value;

  factory CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value;

  TRes call({String? firstName, String? lastName, String? $__typename});
}

class _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value<
          TRes
        > {
  _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value(
    this._instance,
    this._then,
  );

  final Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value
  _instance;

  final TRes Function(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value(
      firstName: firstName == _undefined || firstName == null
          ? _instance.firstName
          : (firstName as String),
      lastName: lastName == _undefined || lastName == null
          ? _instance.lastName
          : (lastName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountContacts$value(
    this._res,
  );

  TRes _res;

  call({String? firstName, String? lastName, String? $__typename}) => _res;
}

class Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses {
  Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses({
    this.address1,
    this.postCode,
    this.$__typename = 'AddressWithKey',
  });

  factory Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$address1 = json['address1'];
    final l$postCode = json['postCode'];
    final l$$__typename = json['__typename'];
    return Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses(
      address1: (l$address1 as String?),
      postCode: (l$postCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? address1;

  final String? postCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address1 = address1;
    _resultData['address1'] = l$address1;
    final l$postCode = postCode;
    _resultData['postCode'] = l$postCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address1 = address1;
    final l$postCode = postCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$address1, l$postCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address1 = address1;
    final lOther$address1 = other.address1;
    if (l$address1 != lOther$address1) {
      return false;
    }
    final l$postCode = postCode;
    final lOther$postCode = other.postCode;
    if (l$postCode != lOther$postCode) {
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

extension UtilityExtension$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses
    on Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses {
  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses<
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses
  >
  get copyWith =>
      CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses<
  TRes
> {
  factory CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses
    instance,
    TRes Function(
      Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses,
    )
    then,
  ) = _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses;

  factory CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses;

  TRes call({String? address1, String? postCode, String? $__typename});
}

class _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses<
          TRes
        > {
  _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses(
    this._instance,
    this._then,
  );

  final Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses
  _instance;

  final TRes Function(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address1 = _undefined,
    Object? postCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses(
      address1: address1 == _undefined
          ? _instance.address1
          : (address1 as String?),
      postCode: postCode == _undefined
          ? _instance.postCode
          : (postCode as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountAddresses(
    this._res,
  );

  TRes _res;

  call({String? address1, String? postCode, String? $__typename}) => _res;
}

class Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers {
  Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers({
    this.name,
    this.id,
    this.userInfo,
    this.$__typename = 'AccountManagerWithKey',
  });

  factory Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$userInfo = json['userInfo'];
    final l$$__typename = json['__typename'];
    return Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers(
      name: (l$name as String?),
      id: (l$id as String?),
      userInfo: l$userInfo == null
          ? null
          : Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo.fromJson(
              (l$userInfo as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? id;

  final Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo?
  userInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userInfo = userInfo;
    _resultData['userInfo'] = l$userInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$userInfo = userInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$id, l$userInfo, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers ||
        runtimeType != other.runtimeType) {
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
    final l$userInfo = userInfo;
    final lOther$userInfo = other.userInfo;
    if (l$userInfo != lOther$userInfo) {
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

extension UtilityExtension$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers
    on Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers {
  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers<
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers
  >
  get copyWith =>
      CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers<
  TRes
> {
  factory CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers
    instance,
    TRes Function(
      Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers,
    )
    then,
  ) = _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers;

  factory CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers;

  TRes call({
    String? name,
    String? id,
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo?
    userInfo,
    String? $__typename,
  });
  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo<
    TRes
  >
  get userInfo;
}

class _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers<
          TRes
        > {
  _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers(
    this._instance,
    this._then,
  );

  final Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers
  _instance;

  final TRes Function(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? userInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers(
      name: name == _undefined ? _instance.name : (name as String?),
      id: id == _undefined ? _instance.id : (id as String?),
      userInfo: userInfo == _undefined
          ? _instance.userInfo
          : (userInfo
                as Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo<
    TRes
  >
  get userInfo {
    final local$userInfo = _instance.userInfo;
    return local$userInfo == null
        ? CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo(
            local$userInfo,
            (e) => call(userInfo: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    String? id,
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo?
    userInfo,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo<
    TRes
  >
  get userInfo =>
      CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo.stub(
        _res,
      );
}

class Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo {
  Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo({
    required this.name,
    required this.emailAddress,
    this.$__typename = 'UserInfo',
  });

  factory Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$emailAddress = json['emailAddress'];
    final l$$__typename = json['__typename'];
    return Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo(
      name: (l$name as String),
      emailAddress: (l$emailAddress as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String emailAddress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$emailAddress = emailAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$emailAddress, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo
    on Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo {
  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo<
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo
  >
  get copyWith =>
      CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo<
  TRes
> {
  factory CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo
    instance,
    TRes Function(
      Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo,
    )
    then,
  ) = _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo;

  factory CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo;

  TRes call({String? name, String? emailAddress, String? $__typename});
}

class _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo<
          TRes
        > {
  _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo(
    this._instance,
    this._then,
  );

  final Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo
  _instance;

  final TRes Function(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? emailAddress = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$accountManagers$userInfo(
    this._res,
  );

  TRes _res;

  call({String? name, String? emailAddress, String? $__typename}) => _res;
}

class Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups {
  Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups({
    this.trader,
    this.supplier,
    this.$__typename = 'IndustryGroups',
  });

  factory Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$trader = json['trader'];
    final l$supplier = json['supplier'];
    final l$$__typename = json['__typename'];
    return Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups(
      trader: (l$trader as String?),
      supplier: (l$supplier as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? trader;

  final String? supplier;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$trader = trader;
    _resultData['trader'] = l$trader;
    final l$supplier = supplier;
    _resultData['supplier'] = l$supplier;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$trader = trader;
    final l$supplier = supplier;
    final l$$__typename = $__typename;
    return Object.hashAll([l$trader, l$supplier, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$trader = trader;
    final lOther$trader = other.trader;
    if (l$trader != lOther$trader) {
      return false;
    }
    final l$supplier = supplier;
    final lOther$supplier = other.supplier;
    if (l$supplier != lOther$supplier) {
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

extension UtilityExtension$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups
    on Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups {
  CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups<
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups
  >
  get copyWith =>
      CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups<
  TRes
> {
  factory CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups
    instance,
    TRes Function(
      Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups,
    )
    then,
  ) = _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups;

  factory CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups;

  TRes call({String? trader, String? supplier, String? $__typename});
}

class _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups<
          TRes
        > {
  _CopyWithImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups(
    this._instance,
    this._then,
  );

  final Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups
  _instance;

  final TRes Function(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? trader = _undefined,
    Object? supplier = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups(
      trader: trader == _undefined ? _instance.trader : (trader as String?),
      supplier: supplier == _undefined
          ? _instance.supplier
          : (supplier as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchRetailAccounts$searchRetailAccounts$nodes$industryGroups(
    this._res,
  );

  TRes _res;

  call({String? trader, String? supplier, String? $__typename}) => _res;
}
