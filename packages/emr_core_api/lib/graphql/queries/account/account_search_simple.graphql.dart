import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$AccountSearchSimple {
  factory Variables$Query$AccountSearchSimple({
    String? after,
    String? before,
    int? first,
    int? last,
    required Input$AccountsSearchInput input,
    List<Input$AccountSortInput>? order,
    bool? includeBusinessDetail,
  }) => Variables$Query$AccountSearchSimple._({
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    r'input': input,
    if (order != null) r'order': order,
    if (includeBusinessDetail != null)
      r'includeBusinessDetail': includeBusinessDetail,
  });

  Variables$Query$AccountSearchSimple._(this._$data);

  factory Variables$Query$AccountSearchSimple.fromJson(
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
    result$data['input'] = Input$AccountsSearchInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) => Input$AccountSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('includeBusinessDetail')) {
      final l$includeBusinessDetail = data['includeBusinessDetail'];
      result$data['includeBusinessDetail'] = (l$includeBusinessDetail as bool?);
    }
    return Variables$Query$AccountSearchSimple._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  Input$AccountsSearchInput get input =>
      (_$data['input'] as Input$AccountsSearchInput);

  List<Input$AccountSortInput>? get order =>
      (_$data['order'] as List<Input$AccountSortInput>?);

  bool? get includeBusinessDetail => (_$data['includeBusinessDetail'] as bool?);

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
    if (_$data.containsKey('includeBusinessDetail')) {
      final l$includeBusinessDetail = includeBusinessDetail;
      result$data['includeBusinessDetail'] = l$includeBusinessDetail;
    }
    return result$data;
  }

  CopyWith$Variables$Query$AccountSearchSimple<
    Variables$Query$AccountSearchSimple
  >
  get copyWith => CopyWith$Variables$Query$AccountSearchSimple(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$AccountSearchSimple ||
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
    final l$includeBusinessDetail = includeBusinessDetail;
    final lOther$includeBusinessDetail = other.includeBusinessDetail;
    if (_$data.containsKey('includeBusinessDetail') !=
        other._$data.containsKey('includeBusinessDetail')) {
      return false;
    }
    if (l$includeBusinessDetail != lOther$includeBusinessDetail) {
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
    final l$includeBusinessDetail = includeBusinessDetail;
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
      _$data.containsKey('includeBusinessDetail')
          ? l$includeBusinessDetail
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$AccountSearchSimple<TRes> {
  factory CopyWith$Variables$Query$AccountSearchSimple(
    Variables$Query$AccountSearchSimple instance,
    TRes Function(Variables$Query$AccountSearchSimple) then,
  ) = _CopyWithImpl$Variables$Query$AccountSearchSimple;

  factory CopyWith$Variables$Query$AccountSearchSimple.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$AccountSearchSimple;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$AccountsSearchInput? input,
    List<Input$AccountSortInput>? order,
    bool? includeBusinessDetail,
  });
}

class _CopyWithImpl$Variables$Query$AccountSearchSimple<TRes>
    implements CopyWith$Variables$Query$AccountSearchSimple<TRes> {
  _CopyWithImpl$Variables$Query$AccountSearchSimple(this._instance, this._then);

  final Variables$Query$AccountSearchSimple _instance;

  final TRes Function(Variables$Query$AccountSearchSimple) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? input = _undefined,
    Object? order = _undefined,
    Object? includeBusinessDetail = _undefined,
  }) => _then(
    Variables$Query$AccountSearchSimple._({
      ..._instance._$data,
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (input != _undefined && input != null)
        'input': (input as Input$AccountsSearchInput),
      if (order != _undefined)
        'order': (order as List<Input$AccountSortInput>?),
      if (includeBusinessDetail != _undefined)
        'includeBusinessDetail': (includeBusinessDetail as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$AccountSearchSimple<TRes>
    implements CopyWith$Variables$Query$AccountSearchSimple<TRes> {
  _CopyWithStubImpl$Variables$Query$AccountSearchSimple(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$AccountsSearchInput? input,
    List<Input$AccountSortInput>? order,
    bool? includeBusinessDetail,
  }) => _res;
}

class Query$AccountSearchSimple {
  Query$AccountSearchSimple({this.searchAccounts, this.$__typename = 'Query'});

  factory Query$AccountSearchSimple.fromJson(Map<String, dynamic> json) {
    final l$searchAccounts = json['searchAccounts'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearchSimple(
      searchAccounts: l$searchAccounts == null
          ? null
          : Query$AccountSearchSimple$searchAccounts.fromJson(
              (l$searchAccounts as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AccountSearchSimple$searchAccounts? searchAccounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchAccounts = searchAccounts;
    _resultData['searchAccounts'] = l$searchAccounts?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchAccounts = searchAccounts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchAccounts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AccountSearchSimple ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchAccounts = searchAccounts;
    final lOther$searchAccounts = other.searchAccounts;
    if (l$searchAccounts != lOther$searchAccounts) {
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

extension UtilityExtension$Query$AccountSearchSimple
    on Query$AccountSearchSimple {
  CopyWith$Query$AccountSearchSimple<Query$AccountSearchSimple> get copyWith =>
      CopyWith$Query$AccountSearchSimple(this, (i) => i);
}

abstract class CopyWith$Query$AccountSearchSimple<TRes> {
  factory CopyWith$Query$AccountSearchSimple(
    Query$AccountSearchSimple instance,
    TRes Function(Query$AccountSearchSimple) then,
  ) = _CopyWithImpl$Query$AccountSearchSimple;

  factory CopyWith$Query$AccountSearchSimple.stub(TRes res) =
      _CopyWithStubImpl$Query$AccountSearchSimple;

  TRes call({
    Query$AccountSearchSimple$searchAccounts? searchAccounts,
    String? $__typename,
  });
  CopyWith$Query$AccountSearchSimple$searchAccounts<TRes> get searchAccounts;
}

class _CopyWithImpl$Query$AccountSearchSimple<TRes>
    implements CopyWith$Query$AccountSearchSimple<TRes> {
  _CopyWithImpl$Query$AccountSearchSimple(this._instance, this._then);

  final Query$AccountSearchSimple _instance;

  final TRes Function(Query$AccountSearchSimple) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchAccounts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearchSimple(
      searchAccounts: searchAccounts == _undefined
          ? _instance.searchAccounts
          : (searchAccounts as Query$AccountSearchSimple$searchAccounts?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AccountSearchSimple$searchAccounts<TRes> get searchAccounts {
    final local$searchAccounts = _instance.searchAccounts;
    return local$searchAccounts == null
        ? CopyWith$Query$AccountSearchSimple$searchAccounts.stub(
            _then(_instance),
          )
        : CopyWith$Query$AccountSearchSimple$searchAccounts(
            local$searchAccounts,
            (e) => call(searchAccounts: e),
          );
  }
}

class _CopyWithStubImpl$Query$AccountSearchSimple<TRes>
    implements CopyWith$Query$AccountSearchSimple<TRes> {
  _CopyWithStubImpl$Query$AccountSearchSimple(this._res);

  TRes _res;

  call({
    Query$AccountSearchSimple$searchAccounts? searchAccounts,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AccountSearchSimple$searchAccounts<TRes> get searchAccounts =>
      CopyWith$Query$AccountSearchSimple$searchAccounts.stub(_res);
}

const documentNodeQueryAccountSearchSimple = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'AccountSearchSimple'),
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
            name: NameNode(value: 'AccountsSearchInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'order')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'AccountSortInput'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'includeBusinessDetail'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'searchAccounts'),
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
                        name: NameNode(value: 'code'),
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
                        name: NameNode(value: 'type'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'businessDetail'),
                        alias: null,
                        arguments: [],
                        directives: [
                          DirectiveNode(
                            name: NameNode(value: 'include'),
                            arguments: [
                              ArgumentNode(
                                name: NameNode(value: 'if'),
                                value: VariableNode(
                                  name: NameNode(
                                    value: 'includeBusinessDetail',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'paymentTerm'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(
                                      value: 'financialPaymentMethod',
                                    ),
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

class Query$AccountSearchSimple$searchAccounts {
  Query$AccountSearchSimple$searchAccounts({
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchAccountsConnection',
  });

  factory Query$AccountSearchSimple$searchAccounts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearchSimple$searchAccounts(
      pageInfo: Query$AccountSearchSimple$searchAccounts$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$AccountSearchSimple$searchAccounts$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AccountSearchSimple$searchAccounts$pageInfo pageInfo;

  final List<Query$AccountSearchSimple$searchAccounts$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
    if (other is! Query$AccountSearchSimple$searchAccounts ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$AccountSearchSimple$searchAccounts
    on Query$AccountSearchSimple$searchAccounts {
  CopyWith$Query$AccountSearchSimple$searchAccounts<
    Query$AccountSearchSimple$searchAccounts
  >
  get copyWith =>
      CopyWith$Query$AccountSearchSimple$searchAccounts(this, (i) => i);
}

abstract class CopyWith$Query$AccountSearchSimple$searchAccounts<TRes> {
  factory CopyWith$Query$AccountSearchSimple$searchAccounts(
    Query$AccountSearchSimple$searchAccounts instance,
    TRes Function(Query$AccountSearchSimple$searchAccounts) then,
  ) = _CopyWithImpl$Query$AccountSearchSimple$searchAccounts;

  factory CopyWith$Query$AccountSearchSimple$searchAccounts.stub(TRes res) =
      _CopyWithStubImpl$Query$AccountSearchSimple$searchAccounts;

  TRes call({
    Query$AccountSearchSimple$searchAccounts$pageInfo? pageInfo,
    List<Query$AccountSearchSimple$searchAccounts$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$AccountSearchSimple$searchAccounts$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$AccountSearchSimple$searchAccounts$nodes>? Function(
      Iterable<
        CopyWith$Query$AccountSearchSimple$searchAccounts$nodes<
          Query$AccountSearchSimple$searchAccounts$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$AccountSearchSimple$searchAccounts<TRes>
    implements CopyWith$Query$AccountSearchSimple$searchAccounts<TRes> {
  _CopyWithImpl$Query$AccountSearchSimple$searchAccounts(
    this._instance,
    this._then,
  );

  final Query$AccountSearchSimple$searchAccounts _instance;

  final TRes Function(Query$AccountSearchSimple$searchAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearchSimple$searchAccounts(
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$AccountSearchSimple$searchAccounts$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$AccountSearchSimple$searchAccounts$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AccountSearchSimple$searchAccounts$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$AccountSearchSimple$searchAccounts$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$AccountSearchSimple$searchAccounts$nodes>? Function(
      Iterable<
        CopyWith$Query$AccountSearchSimple$searchAccounts$nodes<
          Query$AccountSearchSimple$searchAccounts$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$AccountSearchSimple$searchAccounts$nodes(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$AccountSearchSimple$searchAccounts<TRes>
    implements CopyWith$Query$AccountSearchSimple$searchAccounts<TRes> {
  _CopyWithStubImpl$Query$AccountSearchSimple$searchAccounts(this._res);

  TRes _res;

  call({
    Query$AccountSearchSimple$searchAccounts$pageInfo? pageInfo,
    List<Query$AccountSearchSimple$searchAccounts$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AccountSearchSimple$searchAccounts$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$AccountSearchSimple$searchAccounts$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$AccountSearchSimple$searchAccounts$pageInfo {
  Query$AccountSearchSimple$searchAccounts$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$AccountSearchSimple$searchAccounts$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearchSimple$searchAccounts$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([l$hasNextPage, l$endCursor, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AccountSearchSimple$searchAccounts$pageInfo ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AccountSearchSimple$searchAccounts$pageInfo
    on Query$AccountSearchSimple$searchAccounts$pageInfo {
  CopyWith$Query$AccountSearchSimple$searchAccounts$pageInfo<
    Query$AccountSearchSimple$searchAccounts$pageInfo
  >
  get copyWith => CopyWith$Query$AccountSearchSimple$searchAccounts$pageInfo(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$AccountSearchSimple$searchAccounts$pageInfo<
  TRes
> {
  factory CopyWith$Query$AccountSearchSimple$searchAccounts$pageInfo(
    Query$AccountSearchSimple$searchAccounts$pageInfo instance,
    TRes Function(Query$AccountSearchSimple$searchAccounts$pageInfo) then,
  ) = _CopyWithImpl$Query$AccountSearchSimple$searchAccounts$pageInfo;

  factory CopyWith$Query$AccountSearchSimple$searchAccounts$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearchSimple$searchAccounts$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$AccountSearchSimple$searchAccounts$pageInfo<TRes>
    implements
        CopyWith$Query$AccountSearchSimple$searchAccounts$pageInfo<TRes> {
  _CopyWithImpl$Query$AccountSearchSimple$searchAccounts$pageInfo(
    this._instance,
    this._then,
  );

  final Query$AccountSearchSimple$searchAccounts$pageInfo _instance;

  final TRes Function(Query$AccountSearchSimple$searchAccounts$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearchSimple$searchAccounts$pageInfo(
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      endCursor: endCursor == _undefined
          ? _instance.endCursor
          : (endCursor as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountSearchSimple$searchAccounts$pageInfo<TRes>
    implements
        CopyWith$Query$AccountSearchSimple$searchAccounts$pageInfo<TRes> {
  _CopyWithStubImpl$Query$AccountSearchSimple$searchAccounts$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$AccountSearchSimple$searchAccounts$nodes {
  Query$AccountSearchSimple$searchAccounts$nodes({
    required this.id,
    required this.code,
    required this.name,
    required this.type,
    this.businessDetail,
    this.$__typename = 'Account',
  });

  factory Query$AccountSearchSimple$searchAccounts$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$name = json['name'];
    final l$type = json['type'];
    final l$businessDetail = json['businessDetail'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearchSimple$searchAccounts$nodes(
      id: (l$id as String),
      code: (l$code as String),
      name: (l$name as String),
      type: fromJson$Enum$AccountType((l$type as String)),
      businessDetail: l$businessDetail == null
          ? null
          : Query$AccountSearchSimple$searchAccounts$nodes$businessDetail.fromJson(
              (l$businessDetail as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String name;

  final Enum$AccountType type;

  final Query$AccountSearchSimple$searchAccounts$nodes$businessDetail?
  businessDetail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$type = type;
    _resultData['type'] = toJson$Enum$AccountType(l$type);
    final l$businessDetail = businessDetail;
    _resultData['businessDetail'] = l$businessDetail?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$name = name;
    final l$type = type;
    final l$businessDetail = businessDetail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$name,
      l$type,
      l$businessDetail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AccountSearchSimple$searchAccounts$nodes ||
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$businessDetail = businessDetail;
    final lOther$businessDetail = other.businessDetail;
    if (l$businessDetail != lOther$businessDetail) {
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

extension UtilityExtension$Query$AccountSearchSimple$searchAccounts$nodes
    on Query$AccountSearchSimple$searchAccounts$nodes {
  CopyWith$Query$AccountSearchSimple$searchAccounts$nodes<
    Query$AccountSearchSimple$searchAccounts$nodes
  >
  get copyWith =>
      CopyWith$Query$AccountSearchSimple$searchAccounts$nodes(this, (i) => i);
}

abstract class CopyWith$Query$AccountSearchSimple$searchAccounts$nodes<TRes> {
  factory CopyWith$Query$AccountSearchSimple$searchAccounts$nodes(
    Query$AccountSearchSimple$searchAccounts$nodes instance,
    TRes Function(Query$AccountSearchSimple$searchAccounts$nodes) then,
  ) = _CopyWithImpl$Query$AccountSearchSimple$searchAccounts$nodes;

  factory CopyWith$Query$AccountSearchSimple$searchAccounts$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearchSimple$searchAccounts$nodes;

  TRes call({
    String? id,
    String? code,
    String? name,
    Enum$AccountType? type,
    Query$AccountSearchSimple$searchAccounts$nodes$businessDetail?
    businessDetail,
    String? $__typename,
  });
  CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail<TRes>
  get businessDetail;
}

class _CopyWithImpl$Query$AccountSearchSimple$searchAccounts$nodes<TRes>
    implements CopyWith$Query$AccountSearchSimple$searchAccounts$nodes<TRes> {
  _CopyWithImpl$Query$AccountSearchSimple$searchAccounts$nodes(
    this._instance,
    this._then,
  );

  final Query$AccountSearchSimple$searchAccounts$nodes _instance;

  final TRes Function(Query$AccountSearchSimple$searchAccounts$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? name = _undefined,
    Object? type = _undefined,
    Object? businessDetail = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearchSimple$searchAccounts$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$AccountType),
      businessDetail: businessDetail == _undefined
          ? _instance.businessDetail
          : (businessDetail
                as Query$AccountSearchSimple$searchAccounts$nodes$businessDetail?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail<TRes>
  get businessDetail {
    final local$businessDetail = _instance.businessDetail;
    return local$businessDetail == null
        ? CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail.stub(
            _then(_instance),
          )
        : CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail(
            local$businessDetail,
            (e) => call(businessDetail: e),
          );
  }
}

class _CopyWithStubImpl$Query$AccountSearchSimple$searchAccounts$nodes<TRes>
    implements CopyWith$Query$AccountSearchSimple$searchAccounts$nodes<TRes> {
  _CopyWithStubImpl$Query$AccountSearchSimple$searchAccounts$nodes(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    String? name,
    Enum$AccountType? type,
    Query$AccountSearchSimple$searchAccounts$nodes$businessDetail?
    businessDetail,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail<TRes>
  get businessDetail =>
      CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail.stub(
        _res,
      );
}

class Query$AccountSearchSimple$searchAccounts$nodes$businessDetail {
  Query$AccountSearchSimple$searchAccounts$nodes$businessDetail({
    this.paymentTerm,
    this.$__typename = 'BusinessDetail',
  });

  factory Query$AccountSearchSimple$searchAccounts$nodes$businessDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$paymentTerm = json['paymentTerm'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearchSimple$searchAccounts$nodes$businessDetail(
      paymentTerm: l$paymentTerm == null
          ? null
          : Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm.fromJson(
              (l$paymentTerm as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm?
  paymentTerm;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentTerm = paymentTerm;
    _resultData['paymentTerm'] = l$paymentTerm?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentTerm = paymentTerm;
    final l$$__typename = $__typename;
    return Object.hashAll([l$paymentTerm, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountSearchSimple$searchAccounts$nodes$businessDetail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentTerm = paymentTerm;
    final lOther$paymentTerm = other.paymentTerm;
    if (l$paymentTerm != lOther$paymentTerm) {
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

extension UtilityExtension$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail
    on Query$AccountSearchSimple$searchAccounts$nodes$businessDetail {
  CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail<
    Query$AccountSearchSimple$searchAccounts$nodes$businessDetail
  >
  get copyWith =>
      CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail<
  TRes
> {
  factory CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail(
    Query$AccountSearchSimple$searchAccounts$nodes$businessDetail instance,
    TRes Function(Query$AccountSearchSimple$searchAccounts$nodes$businessDetail)
    then,
  ) = _CopyWithImpl$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail;

  factory CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail;

  TRes call({
    Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm?
    paymentTerm,
    String? $__typename,
  });
  CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm<
    TRes
  >
  get paymentTerm;
}

class _CopyWithImpl$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail<
  TRes
>
    implements
        CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail<
          TRes
        > {
  _CopyWithImpl$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail(
    this._instance,
    this._then,
  );

  final Query$AccountSearchSimple$searchAccounts$nodes$businessDetail _instance;

  final TRes Function(
    Query$AccountSearchSimple$searchAccounts$nodes$businessDetail,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentTerm = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearchSimple$searchAccounts$nodes$businessDetail(
      paymentTerm: paymentTerm == _undefined
          ? _instance.paymentTerm
          : (paymentTerm
                as Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm<
    TRes
  >
  get paymentTerm {
    final local$paymentTerm = _instance.paymentTerm;
    return local$paymentTerm == null
        ? CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm.stub(
            _then(_instance),
          )
        : CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm(
            local$paymentTerm,
            (e) => call(paymentTerm: e),
          );
  }
}

class _CopyWithStubImpl$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail<
  TRes
>
    implements
        CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail(
    this._res,
  );

  TRes _res;

  call({
    Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm?
    paymentTerm,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm<
    TRes
  >
  get paymentTerm =>
      CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm.stub(
        _res,
      );
}

class Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm {
  Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm({
    required this.financialPaymentMethod,
    this.$__typename = 'PaymentTerm',
  });

  factory Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$financialPaymentMethod = json['financialPaymentMethod'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm(
      financialPaymentMethod: (l$financialPaymentMethod as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String financialPaymentMethod;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$financialPaymentMethod = financialPaymentMethod;
    _resultData['financialPaymentMethod'] = l$financialPaymentMethod;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$financialPaymentMethod = financialPaymentMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([l$financialPaymentMethod, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$financialPaymentMethod = financialPaymentMethod;
    final lOther$financialPaymentMethod = other.financialPaymentMethod;
    if (l$financialPaymentMethod != lOther$financialPaymentMethod) {
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

extension UtilityExtension$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm
    on Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm {
  CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm<
    Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm
  >
  get copyWith =>
      CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm<
  TRes
> {
  factory CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm(
    Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm
    instance,
    TRes Function(
      Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm,
    )
    then,
  ) = _CopyWithImpl$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm;

  factory CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm;

  TRes call({String? financialPaymentMethod, String? $__typename});
}

class _CopyWithImpl$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm<
  TRes
>
    implements
        CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm<
          TRes
        > {
  _CopyWithImpl$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm(
    this._instance,
    this._then,
  );

  final Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm
  _instance;

  final TRes Function(
    Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? financialPaymentMethod = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm(
      financialPaymentMethod:
          financialPaymentMethod == _undefined || financialPaymentMethod == null
          ? _instance.financialPaymentMethod
          : (financialPaymentMethod as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm<
  TRes
>
    implements
        CopyWith$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountSearchSimple$searchAccounts$nodes$businessDetail$paymentTerm(
    this._res,
  );

  TRes _res;

  call({String? financialPaymentMethod, String? $__typename}) => _res;
}
