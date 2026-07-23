import '../../fragments/company_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetCompanies {
  factory Variables$Query$GetCompanies({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchCompanyInput? input,
    List<Input$CompanySortInput>? order,
  }) => Variables$Query$GetCompanies._({
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (input != null) r'input': input,
    if (order != null) r'order': order,
  });

  Variables$Query$GetCompanies._(this._$data);

  factory Variables$Query$GetCompanies.fromJson(Map<String, dynamic> data) {
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
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$SearchCompanyInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) => Input$CompanySortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    return Variables$Query$GetCompanies._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  Input$SearchCompanyInput? get input =>
      (_$data['input'] as Input$SearchCompanyInput?);

  List<Input$CompanySortInput>? get order =>
      (_$data['order'] as List<Input$CompanySortInput>?);

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
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetCompanies<Variables$Query$GetCompanies>
  get copyWith => CopyWith$Variables$Query$GetCompanies(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetCompanies ||
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
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
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
      _$data.containsKey('input') ? l$input : const {},
      _$data.containsKey('order')
          ? l$order == null
                ? null
                : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetCompanies<TRes> {
  factory CopyWith$Variables$Query$GetCompanies(
    Variables$Query$GetCompanies instance,
    TRes Function(Variables$Query$GetCompanies) then,
  ) = _CopyWithImpl$Variables$Query$GetCompanies;

  factory CopyWith$Variables$Query$GetCompanies.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCompanies;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchCompanyInput? input,
    List<Input$CompanySortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$GetCompanies<TRes>
    implements CopyWith$Variables$Query$GetCompanies<TRes> {
  _CopyWithImpl$Variables$Query$GetCompanies(this._instance, this._then);

  final Variables$Query$GetCompanies _instance;

  final TRes Function(Variables$Query$GetCompanies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? input = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$GetCompanies._({
      ..._instance._$data,
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (input != _undefined) 'input': (input as Input$SearchCompanyInput?),
      if (order != _undefined)
        'order': (order as List<Input$CompanySortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetCompanies<TRes>
    implements CopyWith$Variables$Query$GetCompanies<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCompanies(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchCompanyInput? input,
    List<Input$CompanySortInput>? order,
  }) => _res;
}

class Query$GetCompanies {
  Query$GetCompanies({this.companies, this.$__typename = 'Query'});

  factory Query$GetCompanies.fromJson(Map<String, dynamic> json) {
    final l$companies = json['companies'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanies(
      companies: l$companies == null
          ? null
          : Query$GetCompanies$companies.fromJson(
              (l$companies as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCompanies$companies? companies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$companies = companies;
    _resultData['companies'] = l$companies?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$companies = companies;
    final l$$__typename = $__typename;
    return Object.hashAll([l$companies, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetCompanies || runtimeType != other.runtimeType) {
      return false;
    }
    final l$companies = companies;
    final lOther$companies = other.companies;
    if (l$companies != lOther$companies) {
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

extension UtilityExtension$Query$GetCompanies on Query$GetCompanies {
  CopyWith$Query$GetCompanies<Query$GetCompanies> get copyWith =>
      CopyWith$Query$GetCompanies(this, (i) => i);
}

abstract class CopyWith$Query$GetCompanies<TRes> {
  factory CopyWith$Query$GetCompanies(
    Query$GetCompanies instance,
    TRes Function(Query$GetCompanies) then,
  ) = _CopyWithImpl$Query$GetCompanies;

  factory CopyWith$Query$GetCompanies.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCompanies;

  TRes call({Query$GetCompanies$companies? companies, String? $__typename});
  CopyWith$Query$GetCompanies$companies<TRes> get companies;
}

class _CopyWithImpl$Query$GetCompanies<TRes>
    implements CopyWith$Query$GetCompanies<TRes> {
  _CopyWithImpl$Query$GetCompanies(this._instance, this._then);

  final Query$GetCompanies _instance;

  final TRes Function(Query$GetCompanies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? companies = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetCompanies(
      companies: companies == _undefined
          ? _instance.companies
          : (companies as Query$GetCompanies$companies?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetCompanies$companies<TRes> get companies {
    final local$companies = _instance.companies;
    return local$companies == null
        ? CopyWith$Query$GetCompanies$companies.stub(_then(_instance))
        : CopyWith$Query$GetCompanies$companies(
            local$companies,
            (e) => call(companies: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetCompanies<TRes>
    implements CopyWith$Query$GetCompanies<TRes> {
  _CopyWithStubImpl$Query$GetCompanies(this._res);

  TRes _res;

  call({Query$GetCompanies$companies? companies, String? $__typename}) => _res;

  CopyWith$Query$GetCompanies$companies<TRes> get companies =>
      CopyWith$Query$GetCompanies$companies.stub(_res);
}

const documentNodeQueryGetCompanies = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetCompanies'),
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
            name: NameNode(value: 'SearchCompanyInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'order')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'CompanySortInput'),
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
            name: NameNode(value: 'companies'),
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
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'CompanyFragment'),
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
    fragmentDefinitionCompanyFragment,
  ],
);

class Query$GetCompanies$companies {
  Query$GetCompanies$companies({
    required this.pageInfo,
    required this.totalCount,
    this.nodes,
    this.$__typename = 'CompaniesConnection',
  });

  factory Query$GetCompanies$companies.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanies$companies(
      pageInfo: Query$GetCompanies$companies$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Fragment$CompanyFragment.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCompanies$companies$pageInfo pageInfo;

  final int totalCount;

  final List<Fragment$CompanyFragment>? nodes;

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
    if (other is! Query$GetCompanies$companies ||
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

extension UtilityExtension$Query$GetCompanies$companies
    on Query$GetCompanies$companies {
  CopyWith$Query$GetCompanies$companies<Query$GetCompanies$companies>
  get copyWith => CopyWith$Query$GetCompanies$companies(this, (i) => i);
}

abstract class CopyWith$Query$GetCompanies$companies<TRes> {
  factory CopyWith$Query$GetCompanies$companies(
    Query$GetCompanies$companies instance,
    TRes Function(Query$GetCompanies$companies) then,
  ) = _CopyWithImpl$Query$GetCompanies$companies;

  factory CopyWith$Query$GetCompanies$companies.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCompanies$companies;

  TRes call({
    Query$GetCompanies$companies$pageInfo? pageInfo,
    int? totalCount,
    List<Fragment$CompanyFragment>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetCompanies$companies$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Fragment$CompanyFragment>? Function(
      Iterable<CopyWith$Fragment$CompanyFragment<Fragment$CompanyFragment>>?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetCompanies$companies<TRes>
    implements CopyWith$Query$GetCompanies$companies<TRes> {
  _CopyWithImpl$Query$GetCompanies$companies(this._instance, this._then);

  final Query$GetCompanies$companies _instance;

  final TRes Function(Query$GetCompanies$companies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetCompanies$companies(
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$GetCompanies$companies$pageInfo),
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Fragment$CompanyFragment>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetCompanies$companies$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetCompanies$companies$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Fragment$CompanyFragment>? Function(
      Iterable<CopyWith$Fragment$CompanyFragment<Fragment$CompanyFragment>>?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Fragment$CompanyFragment(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetCompanies$companies<TRes>
    implements CopyWith$Query$GetCompanies$companies<TRes> {
  _CopyWithStubImpl$Query$GetCompanies$companies(this._res);

  TRes _res;

  call({
    Query$GetCompanies$companies$pageInfo? pageInfo,
    int? totalCount,
    List<Fragment$CompanyFragment>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetCompanies$companies$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetCompanies$companies$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$GetCompanies$companies$pageInfo {
  Query$GetCompanies$companies$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetCompanies$companies$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanies$companies$pageInfo(
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
    if (other is! Query$GetCompanies$companies$pageInfo ||
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

extension UtilityExtension$Query$GetCompanies$companies$pageInfo
    on Query$GetCompanies$companies$pageInfo {
  CopyWith$Query$GetCompanies$companies$pageInfo<
    Query$GetCompanies$companies$pageInfo
  >
  get copyWith =>
      CopyWith$Query$GetCompanies$companies$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$GetCompanies$companies$pageInfo<TRes> {
  factory CopyWith$Query$GetCompanies$companies$pageInfo(
    Query$GetCompanies$companies$pageInfo instance,
    TRes Function(Query$GetCompanies$companies$pageInfo) then,
  ) = _CopyWithImpl$Query$GetCompanies$companies$pageInfo;

  factory CopyWith$Query$GetCompanies$companies$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCompanies$companies$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCompanies$companies$pageInfo<TRes>
    implements CopyWith$Query$GetCompanies$companies$pageInfo<TRes> {
  _CopyWithImpl$Query$GetCompanies$companies$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetCompanies$companies$pageInfo _instance;

  final TRes Function(Query$GetCompanies$companies$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetCompanies$companies$pageInfo(
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

class _CopyWithStubImpl$Query$GetCompanies$companies$pageInfo<TRes>
    implements CopyWith$Query$GetCompanies$companies$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetCompanies$companies$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}
