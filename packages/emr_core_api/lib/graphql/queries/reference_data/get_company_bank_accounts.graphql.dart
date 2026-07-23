import '../../fragments/company_bank_account_fragment.graphql.dart';
import '../../fragments/company_fragment.graphql.dart';
import '../../fragments/territory_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetCompanyBankAccounts {
  factory Variables$Query$GetCompanyBankAccounts({
    String? after,
    String? before,
    int? first,
    int? last,
    required Input$CompanyBankAccountsSearchInput input,
    List<Input$CompanyBankAccountSortInput>? order,
  }) => Variables$Query$GetCompanyBankAccounts._({
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    r'input': input,
    if (order != null) r'order': order,
  });

  Variables$Query$GetCompanyBankAccounts._(this._$data);

  factory Variables$Query$GetCompanyBankAccounts.fromJson(
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
    result$data['input'] = Input$CompanyBankAccountsSearchInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) => Input$CompanyBankAccountSortInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    return Variables$Query$GetCompanyBankAccounts._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  Input$CompanyBankAccountsSearchInput get input =>
      (_$data['input'] as Input$CompanyBankAccountsSearchInput);

  List<Input$CompanyBankAccountSortInput>? get order =>
      (_$data['order'] as List<Input$CompanyBankAccountSortInput>?);

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

  CopyWith$Variables$Query$GetCompanyBankAccounts<
    Variables$Query$GetCompanyBankAccounts
  >
  get copyWith =>
      CopyWith$Variables$Query$GetCompanyBankAccounts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetCompanyBankAccounts ||
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

abstract class CopyWith$Variables$Query$GetCompanyBankAccounts<TRes> {
  factory CopyWith$Variables$Query$GetCompanyBankAccounts(
    Variables$Query$GetCompanyBankAccounts instance,
    TRes Function(Variables$Query$GetCompanyBankAccounts) then,
  ) = _CopyWithImpl$Variables$Query$GetCompanyBankAccounts;

  factory CopyWith$Variables$Query$GetCompanyBankAccounts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCompanyBankAccounts;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$CompanyBankAccountsSearchInput? input,
    List<Input$CompanyBankAccountSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$GetCompanyBankAccounts<TRes>
    implements CopyWith$Variables$Query$GetCompanyBankAccounts<TRes> {
  _CopyWithImpl$Variables$Query$GetCompanyBankAccounts(
    this._instance,
    this._then,
  );

  final Variables$Query$GetCompanyBankAccounts _instance;

  final TRes Function(Variables$Query$GetCompanyBankAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? input = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$GetCompanyBankAccounts._({
      ..._instance._$data,
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (input != _undefined && input != null)
        'input': (input as Input$CompanyBankAccountsSearchInput),
      if (order != _undefined)
        'order': (order as List<Input$CompanyBankAccountSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetCompanyBankAccounts<TRes>
    implements CopyWith$Variables$Query$GetCompanyBankAccounts<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCompanyBankAccounts(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$CompanyBankAccountsSearchInput? input,
    List<Input$CompanyBankAccountSortInput>? order,
  }) => _res;
}

class Query$GetCompanyBankAccounts {
  Query$GetCompanyBankAccounts({
    this.companyBankAccounts,
    this.$__typename = 'Query',
  });

  factory Query$GetCompanyBankAccounts.fromJson(Map<String, dynamic> json) {
    final l$companyBankAccounts = json['companyBankAccounts'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanyBankAccounts(
      companyBankAccounts: l$companyBankAccounts == null
          ? null
          : Query$GetCompanyBankAccounts$companyBankAccounts.fromJson(
              (l$companyBankAccounts as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCompanyBankAccounts$companyBankAccounts? companyBankAccounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$companyBankAccounts = companyBankAccounts;
    _resultData['companyBankAccounts'] = l$companyBankAccounts?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$companyBankAccounts = companyBankAccounts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$companyBankAccounts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetCompanyBankAccounts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$companyBankAccounts = companyBankAccounts;
    final lOther$companyBankAccounts = other.companyBankAccounts;
    if (l$companyBankAccounts != lOther$companyBankAccounts) {
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

extension UtilityExtension$Query$GetCompanyBankAccounts
    on Query$GetCompanyBankAccounts {
  CopyWith$Query$GetCompanyBankAccounts<Query$GetCompanyBankAccounts>
  get copyWith => CopyWith$Query$GetCompanyBankAccounts(this, (i) => i);
}

abstract class CopyWith$Query$GetCompanyBankAccounts<TRes> {
  factory CopyWith$Query$GetCompanyBankAccounts(
    Query$GetCompanyBankAccounts instance,
    TRes Function(Query$GetCompanyBankAccounts) then,
  ) = _CopyWithImpl$Query$GetCompanyBankAccounts;

  factory CopyWith$Query$GetCompanyBankAccounts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCompanyBankAccounts;

  TRes call({
    Query$GetCompanyBankAccounts$companyBankAccounts? companyBankAccounts,
    String? $__typename,
  });
  CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts<TRes>
  get companyBankAccounts;
}

class _CopyWithImpl$Query$GetCompanyBankAccounts<TRes>
    implements CopyWith$Query$GetCompanyBankAccounts<TRes> {
  _CopyWithImpl$Query$GetCompanyBankAccounts(this._instance, this._then);

  final Query$GetCompanyBankAccounts _instance;

  final TRes Function(Query$GetCompanyBankAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? companyBankAccounts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetCompanyBankAccounts(
      companyBankAccounts: companyBankAccounts == _undefined
          ? _instance.companyBankAccounts
          : (companyBankAccounts
                as Query$GetCompanyBankAccounts$companyBankAccounts?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts<TRes>
  get companyBankAccounts {
    final local$companyBankAccounts = _instance.companyBankAccounts;
    return local$companyBankAccounts == null
        ? CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts(
            local$companyBankAccounts,
            (e) => call(companyBankAccounts: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetCompanyBankAccounts<TRes>
    implements CopyWith$Query$GetCompanyBankAccounts<TRes> {
  _CopyWithStubImpl$Query$GetCompanyBankAccounts(this._res);

  TRes _res;

  call({
    Query$GetCompanyBankAccounts$companyBankAccounts? companyBankAccounts,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts<TRes>
  get companyBankAccounts =>
      CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts.stub(_res);
}

const documentNodeQueryGetCompanyBankAccounts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetCompanyBankAccounts'),
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
            name: NameNode(value: 'CompanyBankAccountsSearchInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'order')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'CompanyBankAccountSortInput'),
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
            name: NameNode(value: 'companyBankAccounts'),
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
                name: NameNode(value: 'order'),
                value: VariableNode(name: NameNode(value: 'order')),
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
                  name: NameNode(value: 'totalCount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'edges'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'cursor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'node'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(
                                value: 'CompanyBankAccountFragment',
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
    fragmentDefinitionCompanyBankAccountFragment,
    fragmentDefinitionCompanyFragment,
    fragmentDefinitionTerritoryFragment,
  ],
);

class Query$GetCompanyBankAccounts$companyBankAccounts {
  Query$GetCompanyBankAccounts$companyBankAccounts({
    required this.pageInfo,
    required this.totalCount,
    this.edges,
    this.$__typename = 'CompanyBankAccountsConnection',
  });

  factory Query$GetCompanyBankAccounts$companyBankAccounts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanyBankAccounts$companyBankAccounts(
      pageInfo:
          Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      totalCount: (l$totalCount as int),
      edges: (l$edges as List<dynamic>?)
          ?.map(
            (e) =>
                Query$GetCompanyBankAccounts$companyBankAccounts$edges.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo pageInfo;

  final int totalCount;

  final List<Query$GetCompanyBankAccounts$companyBankAccounts$edges>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$totalCount = totalCount;
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$totalCount,
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetCompanyBankAccounts$companyBankAccounts ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCompanyBankAccounts$companyBankAccounts
    on Query$GetCompanyBankAccounts$companyBankAccounts {
  CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts<
    Query$GetCompanyBankAccounts$companyBankAccounts
  >
  get copyWith =>
      CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts(this, (i) => i);
}

abstract class CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts<TRes> {
  factory CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts(
    Query$GetCompanyBankAccounts$companyBankAccounts instance,
    TRes Function(Query$GetCompanyBankAccounts$companyBankAccounts) then,
  ) = _CopyWithImpl$Query$GetCompanyBankAccounts$companyBankAccounts;

  factory CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetCompanyBankAccounts$companyBankAccounts;

  TRes call({
    Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo? pageInfo,
    int? totalCount,
    List<Query$GetCompanyBankAccounts$companyBankAccounts$edges>? edges,
    String? $__typename,
  });
  CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo<TRes>
  get pageInfo;
  TRes edges(
    Iterable<Query$GetCompanyBankAccounts$companyBankAccounts$edges>? Function(
      Iterable<
        CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$edges<
          Query$GetCompanyBankAccounts$companyBankAccounts$edges
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetCompanyBankAccounts$companyBankAccounts<TRes>
    implements CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts<TRes> {
  _CopyWithImpl$Query$GetCompanyBankAccounts$companyBankAccounts(
    this._instance,
    this._then,
  );

  final Query$GetCompanyBankAccounts$companyBankAccounts _instance;

  final TRes Function(Query$GetCompanyBankAccounts$companyBankAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetCompanyBankAccounts$companyBankAccounts(
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo),
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      edges: edges == _undefined
          ? _instance.edges
          : (edges
                as List<
                  Query$GetCompanyBankAccounts$companyBankAccounts$edges
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes edges(
    Iterable<Query$GetCompanyBankAccounts$companyBankAccounts$edges>? Function(
      Iterable<
        CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$edges<
          Query$GetCompanyBankAccounts$companyBankAccounts$edges
        >
      >?,
    )
    _fn,
  ) => call(
    edges: _fn(
      _instance.edges?.map(
        (e) => CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$edges(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetCompanyBankAccounts$companyBankAccounts<TRes>
    implements CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts<TRes> {
  _CopyWithStubImpl$Query$GetCompanyBankAccounts$companyBankAccounts(this._res);

  TRes _res;

  call({
    Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo? pageInfo,
    int? totalCount,
    List<Query$GetCompanyBankAccounts$companyBankAccounts$edges>? edges,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo.stub(
        _res,
      );

  edges(_fn) => _res;
}

class Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo {
  Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo(
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
    if (other is! Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo ||
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

extension UtilityExtension$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo
    on Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo {
  CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo<
    Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo
  >
  get copyWith =>
      CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo<
  TRes
> {
  factory CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo(
    Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo instance,
    TRes Function(Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo)
    then,
  ) = _CopyWithImpl$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo;

  factory CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo<
  TRes
>
    implements
        CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo _instance;

  final TRes Function(Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo(
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

class _CopyWithStubImpl$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo<
  TRes
>
    implements
        CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$GetCompanyBankAccounts$companyBankAccounts$pageInfo(
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

class Query$GetCompanyBankAccounts$companyBankAccounts$edges {
  Query$GetCompanyBankAccounts$companyBankAccounts$edges({
    required this.cursor,
    required this.node,
    this.$__typename = 'CompanyBankAccountsEdge',
  });

  factory Query$GetCompanyBankAccounts$companyBankAccounts$edges.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$cursor = json['cursor'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanyBankAccounts$companyBankAccounts$edges(
      cursor: (l$cursor as String),
      node: Fragment$CompanyBankAccountFragment.fromJson(
        (l$node as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String cursor;

  final Fragment$CompanyBankAccountFragment node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cursor = cursor;
    _resultData['cursor'] = l$cursor;
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cursor = cursor;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$cursor, l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetCompanyBankAccounts$companyBankAccounts$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cursor = cursor;
    final lOther$cursor = other.cursor;
    if (l$cursor != lOther$cursor) {
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

extension UtilityExtension$Query$GetCompanyBankAccounts$companyBankAccounts$edges
    on Query$GetCompanyBankAccounts$companyBankAccounts$edges {
  CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$edges<
    Query$GetCompanyBankAccounts$companyBankAccounts$edges
  >
  get copyWith =>
      CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$edges(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$edges<
  TRes
> {
  factory CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$edges(
    Query$GetCompanyBankAccounts$companyBankAccounts$edges instance,
    TRes Function(Query$GetCompanyBankAccounts$companyBankAccounts$edges) then,
  ) = _CopyWithImpl$Query$GetCompanyBankAccounts$companyBankAccounts$edges;

  factory CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$edges.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetCompanyBankAccounts$companyBankAccounts$edges;

  TRes call({
    String? cursor,
    Fragment$CompanyBankAccountFragment? node,
    String? $__typename,
  });
  CopyWith$Fragment$CompanyBankAccountFragment<TRes> get node;
}

class _CopyWithImpl$Query$GetCompanyBankAccounts$companyBankAccounts$edges<TRes>
    implements
        CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$edges<TRes> {
  _CopyWithImpl$Query$GetCompanyBankAccounts$companyBankAccounts$edges(
    this._instance,
    this._then,
  );

  final Query$GetCompanyBankAccounts$companyBankAccounts$edges _instance;

  final TRes Function(Query$GetCompanyBankAccounts$companyBankAccounts$edges)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cursor = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetCompanyBankAccounts$companyBankAccounts$edges(
      cursor: cursor == _undefined || cursor == null
          ? _instance.cursor
          : (cursor as String),
      node: node == _undefined || node == null
          ? _instance.node
          : (node as Fragment$CompanyBankAccountFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$CompanyBankAccountFragment<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$CompanyBankAccountFragment(
      local$node,
      (e) => call(node: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetCompanyBankAccounts$companyBankAccounts$edges<
  TRes
>
    implements
        CopyWith$Query$GetCompanyBankAccounts$companyBankAccounts$edges<TRes> {
  _CopyWithStubImpl$Query$GetCompanyBankAccounts$companyBankAccounts$edges(
    this._res,
  );

  TRes _res;

  call({
    String? cursor,
    Fragment$CompanyBankAccountFragment? node,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$CompanyBankAccountFragment<TRes> get node =>
      CopyWith$Fragment$CompanyBankAccountFragment.stub(_res);
}
