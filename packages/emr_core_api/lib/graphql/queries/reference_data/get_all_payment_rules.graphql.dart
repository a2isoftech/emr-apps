import '../../fragments/payment_rule_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetAllPaymentRules {
  factory Variables$Query$GetAllPaymentRules({
    Input$GetPaymentRuleInput? PaymentRuleId,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$PaymentRulesSortInput>? order,
  }) => Variables$Query$GetAllPaymentRules._({
    if (PaymentRuleId != null) r'PaymentRuleId': PaymentRuleId,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (order != null) r'order': order,
  });

  Variables$Query$GetAllPaymentRules._(this._$data);

  factory Variables$Query$GetAllPaymentRules.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('PaymentRuleId')) {
      final l$PaymentRuleId = data['PaymentRuleId'];
      result$data['PaymentRuleId'] = l$PaymentRuleId == null
          ? null
          : Input$GetPaymentRuleInput.fromJson(
              (l$PaymentRuleId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) => Input$PaymentRulesSortInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    return Variables$Query$GetAllPaymentRules._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetPaymentRuleInput? get PaymentRuleId =>
      (_$data['PaymentRuleId'] as Input$GetPaymentRuleInput?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  List<Input$PaymentRulesSortInput>? get order =>
      (_$data['order'] as List<Input$PaymentRulesSortInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('PaymentRuleId')) {
      final l$PaymentRuleId = PaymentRuleId;
      result$data['PaymentRuleId'] = l$PaymentRuleId?.toJson();
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetAllPaymentRules<
    Variables$Query$GetAllPaymentRules
  >
  get copyWith => CopyWith$Variables$Query$GetAllPaymentRules(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAllPaymentRules ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$PaymentRuleId = PaymentRuleId;
    final lOther$PaymentRuleId = other.PaymentRuleId;
    if (_$data.containsKey('PaymentRuleId') !=
        other._$data.containsKey('PaymentRuleId')) {
      return false;
    }
    if (l$PaymentRuleId != lOther$PaymentRuleId) {
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
    final l$PaymentRuleId = PaymentRuleId;
    final l$before = before;
    final l$after = after;
    final l$first = first;
    final l$last = last;
    final l$order = order;
    return Object.hashAll([
      _$data.containsKey('PaymentRuleId') ? l$PaymentRuleId : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('order')
          ? l$order == null
                ? null
                : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetAllPaymentRules<TRes> {
  factory CopyWith$Variables$Query$GetAllPaymentRules(
    Variables$Query$GetAllPaymentRules instance,
    TRes Function(Variables$Query$GetAllPaymentRules) then,
  ) = _CopyWithImpl$Variables$Query$GetAllPaymentRules;

  factory CopyWith$Variables$Query$GetAllPaymentRules.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllPaymentRules;

  TRes call({
    Input$GetPaymentRuleInput? PaymentRuleId,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$PaymentRulesSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$GetAllPaymentRules<TRes>
    implements CopyWith$Variables$Query$GetAllPaymentRules<TRes> {
  _CopyWithImpl$Variables$Query$GetAllPaymentRules(this._instance, this._then);

  final Variables$Query$GetAllPaymentRules _instance;

  final TRes Function(Variables$Query$GetAllPaymentRules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? PaymentRuleId = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$GetAllPaymentRules._({
      ..._instance._$data,
      if (PaymentRuleId != _undefined)
        'PaymentRuleId': (PaymentRuleId as Input$GetPaymentRuleInput?),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (order != _undefined)
        'order': (order as List<Input$PaymentRulesSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAllPaymentRules<TRes>
    implements CopyWith$Variables$Query$GetAllPaymentRules<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllPaymentRules(this._res);

  TRes _res;

  call({
    Input$GetPaymentRuleInput? PaymentRuleId,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$PaymentRulesSortInput>? order,
  }) => _res;
}

class Query$GetAllPaymentRules {
  Query$GetAllPaymentRules({this.paymentRules, this.$__typename = 'Query'});

  factory Query$GetAllPaymentRules.fromJson(Map<String, dynamic> json) {
    final l$paymentRules = json['paymentRules'];
    final l$$__typename = json['__typename'];
    return Query$GetAllPaymentRules(
      paymentRules: l$paymentRules == null
          ? null
          : Query$GetAllPaymentRules$paymentRules.fromJson(
              (l$paymentRules as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAllPaymentRules$paymentRules? paymentRules;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentRules = paymentRules;
    _resultData['paymentRules'] = l$paymentRules?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentRules = paymentRules;
    final l$$__typename = $__typename;
    return Object.hashAll([l$paymentRules, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllPaymentRules ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentRules = paymentRules;
    final lOther$paymentRules = other.paymentRules;
    if (l$paymentRules != lOther$paymentRules) {
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

extension UtilityExtension$Query$GetAllPaymentRules
    on Query$GetAllPaymentRules {
  CopyWith$Query$GetAllPaymentRules<Query$GetAllPaymentRules> get copyWith =>
      CopyWith$Query$GetAllPaymentRules(this, (i) => i);
}

abstract class CopyWith$Query$GetAllPaymentRules<TRes> {
  factory CopyWith$Query$GetAllPaymentRules(
    Query$GetAllPaymentRules instance,
    TRes Function(Query$GetAllPaymentRules) then,
  ) = _CopyWithImpl$Query$GetAllPaymentRules;

  factory CopyWith$Query$GetAllPaymentRules.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllPaymentRules;

  TRes call({
    Query$GetAllPaymentRules$paymentRules? paymentRules,
    String? $__typename,
  });
  CopyWith$Query$GetAllPaymentRules$paymentRules<TRes> get paymentRules;
}

class _CopyWithImpl$Query$GetAllPaymentRules<TRes>
    implements CopyWith$Query$GetAllPaymentRules<TRes> {
  _CopyWithImpl$Query$GetAllPaymentRules(this._instance, this._then);

  final Query$GetAllPaymentRules _instance;

  final TRes Function(Query$GetAllPaymentRules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentRules = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllPaymentRules(
      paymentRules: paymentRules == _undefined
          ? _instance.paymentRules
          : (paymentRules as Query$GetAllPaymentRules$paymentRules?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAllPaymentRules$paymentRules<TRes> get paymentRules {
    final local$paymentRules = _instance.paymentRules;
    return local$paymentRules == null
        ? CopyWith$Query$GetAllPaymentRules$paymentRules.stub(_then(_instance))
        : CopyWith$Query$GetAllPaymentRules$paymentRules(
            local$paymentRules,
            (e) => call(paymentRules: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetAllPaymentRules<TRes>
    implements CopyWith$Query$GetAllPaymentRules<TRes> {
  _CopyWithStubImpl$Query$GetAllPaymentRules(this._res);

  TRes _res;

  call({
    Query$GetAllPaymentRules$paymentRules? paymentRules,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAllPaymentRules$paymentRules<TRes> get paymentRules =>
      CopyWith$Query$GetAllPaymentRules$paymentRules.stub(_res);
}

const documentNodeQueryGetAllPaymentRules = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAllPaymentRules'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'PaymentRuleId')),
          type: NamedTypeNode(
            name: NameNode(value: 'GetPaymentRuleInput'),
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
          variable: VariableNode(name: NameNode(value: 'after')),
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
          variable: VariableNode(name: NameNode(value: 'order')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'PaymentRulesSortInput'),
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
            name: NameNode(value: 'paymentRules'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'PaymentRuleId')),
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
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'edges'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'node'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'PaymentRuleFragment'),
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
    fragmentDefinitionPaymentRuleFragment,
  ],
);

class Query$GetAllPaymentRules$paymentRules {
  Query$GetAllPaymentRules$paymentRules({
    this.edges,
    required this.totalCount,
    required this.pageInfo,
    this.$__typename = 'PaymentRulesConnection',
  });

  factory Query$GetAllPaymentRules$paymentRules.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$edges = json['edges'];
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetAllPaymentRules$paymentRules(
      edges: (l$edges as List<dynamic>?)
          ?.map(
            (e) => Query$GetAllPaymentRules$paymentRules$edges.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      totalCount: (l$totalCount as int),
      pageInfo: Query$GetAllPaymentRules$paymentRules$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllPaymentRules$paymentRules$edges>? edges;

  final int totalCount;

  final Query$GetAllPaymentRules$paymentRules$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e.toJson()).toList();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$totalCount = totalCount;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$totalCount,
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllPaymentRules$paymentRules ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllPaymentRules$paymentRules
    on Query$GetAllPaymentRules$paymentRules {
  CopyWith$Query$GetAllPaymentRules$paymentRules<
    Query$GetAllPaymentRules$paymentRules
  >
  get copyWith =>
      CopyWith$Query$GetAllPaymentRules$paymentRules(this, (i) => i);
}

abstract class CopyWith$Query$GetAllPaymentRules$paymentRules<TRes> {
  factory CopyWith$Query$GetAllPaymentRules$paymentRules(
    Query$GetAllPaymentRules$paymentRules instance,
    TRes Function(Query$GetAllPaymentRules$paymentRules) then,
  ) = _CopyWithImpl$Query$GetAllPaymentRules$paymentRules;

  factory CopyWith$Query$GetAllPaymentRules$paymentRules.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllPaymentRules$paymentRules;

  TRes call({
    List<Query$GetAllPaymentRules$paymentRules$edges>? edges,
    int? totalCount,
    Query$GetAllPaymentRules$paymentRules$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
    Iterable<Query$GetAllPaymentRules$paymentRules$edges>? Function(
      Iterable<
        CopyWith$Query$GetAllPaymentRules$paymentRules$edges<
          Query$GetAllPaymentRules$paymentRules$edges
        >
      >?,
    )
    _fn,
  );
  CopyWith$Query$GetAllPaymentRules$paymentRules$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$GetAllPaymentRules$paymentRules<TRes>
    implements CopyWith$Query$GetAllPaymentRules$paymentRules<TRes> {
  _CopyWithImpl$Query$GetAllPaymentRules$paymentRules(
    this._instance,
    this._then,
  );

  final Query$GetAllPaymentRules$paymentRules _instance;

  final TRes Function(Query$GetAllPaymentRules$paymentRules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllPaymentRules$paymentRules(
      edges: edges == _undefined
          ? _instance.edges
          : (edges as List<Query$GetAllPaymentRules$paymentRules$edges>?),
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$GetAllPaymentRules$paymentRules$pageInfo),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes edges(
    Iterable<Query$GetAllPaymentRules$paymentRules$edges>? Function(
      Iterable<
        CopyWith$Query$GetAllPaymentRules$paymentRules$edges<
          Query$GetAllPaymentRules$paymentRules$edges
        >
      >?,
    )
    _fn,
  ) => call(
    edges: _fn(
      _instance.edges?.map(
        (e) =>
            CopyWith$Query$GetAllPaymentRules$paymentRules$edges(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Query$GetAllPaymentRules$paymentRules$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetAllPaymentRules$paymentRules$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAllPaymentRules$paymentRules<TRes>
    implements CopyWith$Query$GetAllPaymentRules$paymentRules<TRes> {
  _CopyWithStubImpl$Query$GetAllPaymentRules$paymentRules(this._res);

  TRes _res;

  call({
    List<Query$GetAllPaymentRules$paymentRules$edges>? edges,
    int? totalCount,
    Query$GetAllPaymentRules$paymentRules$pageInfo? pageInfo,
    String? $__typename,
  }) => _res;

  edges(_fn) => _res;

  CopyWith$Query$GetAllPaymentRules$paymentRules$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetAllPaymentRules$paymentRules$pageInfo.stub(_res);
}

class Query$GetAllPaymentRules$paymentRules$edges {
  Query$GetAllPaymentRules$paymentRules$edges({
    required this.node,
    this.$__typename = 'PaymentRulesEdge',
  });

  factory Query$GetAllPaymentRules$paymentRules$edges.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$GetAllPaymentRules$paymentRules$edges(
      node: Fragment$PaymentRuleFragment.fromJson(
        (l$node as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PaymentRuleFragment node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllPaymentRules$paymentRules$edges ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetAllPaymentRules$paymentRules$edges
    on Query$GetAllPaymentRules$paymentRules$edges {
  CopyWith$Query$GetAllPaymentRules$paymentRules$edges<
    Query$GetAllPaymentRules$paymentRules$edges
  >
  get copyWith =>
      CopyWith$Query$GetAllPaymentRules$paymentRules$edges(this, (i) => i);
}

abstract class CopyWith$Query$GetAllPaymentRules$paymentRules$edges<TRes> {
  factory CopyWith$Query$GetAllPaymentRules$paymentRules$edges(
    Query$GetAllPaymentRules$paymentRules$edges instance,
    TRes Function(Query$GetAllPaymentRules$paymentRules$edges) then,
  ) = _CopyWithImpl$Query$GetAllPaymentRules$paymentRules$edges;

  factory CopyWith$Query$GetAllPaymentRules$paymentRules$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllPaymentRules$paymentRules$edges;

  TRes call({Fragment$PaymentRuleFragment? node, String? $__typename});
  CopyWith$Fragment$PaymentRuleFragment<TRes> get node;
}

class _CopyWithImpl$Query$GetAllPaymentRules$paymentRules$edges<TRes>
    implements CopyWith$Query$GetAllPaymentRules$paymentRules$edges<TRes> {
  _CopyWithImpl$Query$GetAllPaymentRules$paymentRules$edges(
    this._instance,
    this._then,
  );

  final Query$GetAllPaymentRules$paymentRules$edges _instance;

  final TRes Function(Query$GetAllPaymentRules$paymentRules$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetAllPaymentRules$paymentRules$edges(
          node: node == _undefined || node == null
              ? _instance.node
              : (node as Fragment$PaymentRuleFragment),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Fragment$PaymentRuleFragment<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$PaymentRuleFragment(
      local$node,
      (e) => call(node: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAllPaymentRules$paymentRules$edges<TRes>
    implements CopyWith$Query$GetAllPaymentRules$paymentRules$edges<TRes> {
  _CopyWithStubImpl$Query$GetAllPaymentRules$paymentRules$edges(this._res);

  TRes _res;

  call({Fragment$PaymentRuleFragment? node, String? $__typename}) => _res;

  CopyWith$Fragment$PaymentRuleFragment<TRes> get node =>
      CopyWith$Fragment$PaymentRuleFragment.stub(_res);
}

class Query$GetAllPaymentRules$paymentRules$pageInfo {
  Query$GetAllPaymentRules$paymentRules$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetAllPaymentRules$paymentRules$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetAllPaymentRules$paymentRules$pageInfo(
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
    if (other is! Query$GetAllPaymentRules$paymentRules$pageInfo ||
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

extension UtilityExtension$Query$GetAllPaymentRules$paymentRules$pageInfo
    on Query$GetAllPaymentRules$paymentRules$pageInfo {
  CopyWith$Query$GetAllPaymentRules$paymentRules$pageInfo<
    Query$GetAllPaymentRules$paymentRules$pageInfo
  >
  get copyWith =>
      CopyWith$Query$GetAllPaymentRules$paymentRules$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$GetAllPaymentRules$paymentRules$pageInfo<TRes> {
  factory CopyWith$Query$GetAllPaymentRules$paymentRules$pageInfo(
    Query$GetAllPaymentRules$paymentRules$pageInfo instance,
    TRes Function(Query$GetAllPaymentRules$paymentRules$pageInfo) then,
  ) = _CopyWithImpl$Query$GetAllPaymentRules$paymentRules$pageInfo;

  factory CopyWith$Query$GetAllPaymentRules$paymentRules$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAllPaymentRules$paymentRules$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllPaymentRules$paymentRules$pageInfo<TRes>
    implements CopyWith$Query$GetAllPaymentRules$paymentRules$pageInfo<TRes> {
  _CopyWithImpl$Query$GetAllPaymentRules$paymentRules$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetAllPaymentRules$paymentRules$pageInfo _instance;

  final TRes Function(Query$GetAllPaymentRules$paymentRules$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllPaymentRules$paymentRules$pageInfo(
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

class _CopyWithStubImpl$Query$GetAllPaymentRules$paymentRules$pageInfo<TRes>
    implements CopyWith$Query$GetAllPaymentRules$paymentRules$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetAllPaymentRules$paymentRules$pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  }) => _res;
}
