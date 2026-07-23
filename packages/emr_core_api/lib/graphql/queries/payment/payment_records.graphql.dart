import '../../fragments/inventory/ticket/account_details_fragment.graphql.dart';
import '../../fragments/inventory/ticket/media_asset_fragment.graphql.dart';
import '../../fragments/inventory/ticket/non_stock_ticket_line_fragment.graphql.dart';
import '../../fragments/inventory/ticket/ticket_account.graphql.dart';
import '../../fragments/inventory/ticket/ticket_deduction_fragment.graphql.dart';
import '../../fragments/inventory/ticket/ticket_fragment.graphql.dart';
import '../../fragments/inventory/ticket/ticket_line_fragment.graphql.dart';
import '../../fragments/inventory/ticket/uom_value.graphql.dart';
import '../../fragments/payment/advance_fields.graphql.dart';
import '../../fragments/payment/payment_record.graphql.dart';
import '../../fragments/payments/encashment_values.graphql.dart';
import '../../fragments/payments/payment_deduction.graphql.dart';
import '../../fragments/payments/payment_deduction_items.graphql.dart';
import '../../fragments/payments/payment_record_items.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$paymentRecords {
  factory Variables$Query$paymentRecords({
    String? after,
    String? before,
    int? first,
    int? last,
    required Input$PaymentRecordSearchInput input,
    List<Input$PaymentRecordSortInput>? order,
  }) => Variables$Query$paymentRecords._({
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    r'input': input,
    if (order != null) r'order': order,
  });

  Variables$Query$paymentRecords._(this._$data);

  factory Variables$Query$paymentRecords.fromJson(Map<String, dynamic> data) {
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
    result$data['input'] = Input$PaymentRecordSearchInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) => Input$PaymentRecordSortInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    return Variables$Query$paymentRecords._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  Input$PaymentRecordSearchInput get input =>
      (_$data['input'] as Input$PaymentRecordSearchInput);

  List<Input$PaymentRecordSortInput>? get order =>
      (_$data['order'] as List<Input$PaymentRecordSortInput>?);

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

  CopyWith$Variables$Query$paymentRecords<Variables$Query$paymentRecords>
  get copyWith => CopyWith$Variables$Query$paymentRecords(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$paymentRecords ||
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

abstract class CopyWith$Variables$Query$paymentRecords<TRes> {
  factory CopyWith$Variables$Query$paymentRecords(
    Variables$Query$paymentRecords instance,
    TRes Function(Variables$Query$paymentRecords) then,
  ) = _CopyWithImpl$Variables$Query$paymentRecords;

  factory CopyWith$Variables$Query$paymentRecords.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$paymentRecords;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$PaymentRecordSearchInput? input,
    List<Input$PaymentRecordSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$paymentRecords<TRes>
    implements CopyWith$Variables$Query$paymentRecords<TRes> {
  _CopyWithImpl$Variables$Query$paymentRecords(this._instance, this._then);

  final Variables$Query$paymentRecords _instance;

  final TRes Function(Variables$Query$paymentRecords) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? input = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$paymentRecords._({
      ..._instance._$data,
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (input != _undefined && input != null)
        'input': (input as Input$PaymentRecordSearchInput),
      if (order != _undefined)
        'order': (order as List<Input$PaymentRecordSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$paymentRecords<TRes>
    implements CopyWith$Variables$Query$paymentRecords<TRes> {
  _CopyWithStubImpl$Variables$Query$paymentRecords(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$PaymentRecordSearchInput? input,
    List<Input$PaymentRecordSortInput>? order,
  }) => _res;
}

class Query$paymentRecords {
  Query$paymentRecords({this.paymentRecords, this.$__typename = 'Query'});

  factory Query$paymentRecords.fromJson(Map<String, dynamic> json) {
    final l$paymentRecords = json['paymentRecords'];
    final l$$__typename = json['__typename'];
    return Query$paymentRecords(
      paymentRecords: l$paymentRecords == null
          ? null
          : Query$paymentRecords$paymentRecords.fromJson(
              (l$paymentRecords as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$paymentRecords$paymentRecords? paymentRecords;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentRecords = paymentRecords;
    _resultData['paymentRecords'] = l$paymentRecords?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentRecords = paymentRecords;
    final l$$__typename = $__typename;
    return Object.hashAll([l$paymentRecords, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$paymentRecords || runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentRecords = paymentRecords;
    final lOther$paymentRecords = other.paymentRecords;
    if (l$paymentRecords != lOther$paymentRecords) {
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

extension UtilityExtension$Query$paymentRecords on Query$paymentRecords {
  CopyWith$Query$paymentRecords<Query$paymentRecords> get copyWith =>
      CopyWith$Query$paymentRecords(this, (i) => i);
}

abstract class CopyWith$Query$paymentRecords<TRes> {
  factory CopyWith$Query$paymentRecords(
    Query$paymentRecords instance,
    TRes Function(Query$paymentRecords) then,
  ) = _CopyWithImpl$Query$paymentRecords;

  factory CopyWith$Query$paymentRecords.stub(TRes res) =
      _CopyWithStubImpl$Query$paymentRecords;

  TRes call({
    Query$paymentRecords$paymentRecords? paymentRecords,
    String? $__typename,
  });
  CopyWith$Query$paymentRecords$paymentRecords<TRes> get paymentRecords;
}

class _CopyWithImpl$Query$paymentRecords<TRes>
    implements CopyWith$Query$paymentRecords<TRes> {
  _CopyWithImpl$Query$paymentRecords(this._instance, this._then);

  final Query$paymentRecords _instance;

  final TRes Function(Query$paymentRecords) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentRecords = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$paymentRecords(
      paymentRecords: paymentRecords == _undefined
          ? _instance.paymentRecords
          : (paymentRecords as Query$paymentRecords$paymentRecords?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$paymentRecords$paymentRecords<TRes> get paymentRecords {
    final local$paymentRecords = _instance.paymentRecords;
    return local$paymentRecords == null
        ? CopyWith$Query$paymentRecords$paymentRecords.stub(_then(_instance))
        : CopyWith$Query$paymentRecords$paymentRecords(
            local$paymentRecords,
            (e) => call(paymentRecords: e),
          );
  }
}

class _CopyWithStubImpl$Query$paymentRecords<TRes>
    implements CopyWith$Query$paymentRecords<TRes> {
  _CopyWithStubImpl$Query$paymentRecords(this._res);

  TRes _res;

  call({
    Query$paymentRecords$paymentRecords? paymentRecords,
    String? $__typename,
  }) => _res;

  CopyWith$Query$paymentRecords$paymentRecords<TRes> get paymentRecords =>
      CopyWith$Query$paymentRecords$paymentRecords.stub(_res);
}

const documentNodeQuerypaymentRecords = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'paymentRecords'),
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
            name: NameNode(value: 'PaymentRecordSearchInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'order')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'PaymentRecordSortInput'),
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
            name: NameNode(value: 'paymentRecords'),
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
                        name: NameNode(value: 'PaymentRecordFields'),
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
    fragmentDefinitionPaymentRecordFields,
    fragmentDefinitionTicketFields,
    fragmentDefinitionTicketAccountFields,
    fragmentDefinitionAccountDetails,
    fragmentDefinitionUomValueFields,
    fragmentDefinitionTicketLineFields,
    fragmentDefinitionDeductionFields,
    fragmentDefinitionMediaAssetFields,
    fragmentDefinitionNonStockTicketLineFields,
    fragmentDefinitionPaymentDeductionFields,
    fragmentDefinitionEncashmentValueFields,
    fragmentDefinitionPaymentDeductionItemFields,
    fragmentDefinitionAdvanceFields,
    fragmentDefinitionPaymentRecordItemFields,
  ],
);

class Query$paymentRecords$paymentRecords {
  Query$paymentRecords$paymentRecords({
    required this.totalCount,
    this.nodes,
    required this.pageInfo,
    this.$__typename = 'PaymentRecordsConnection',
  });

  factory Query$paymentRecords$paymentRecords.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$paymentRecords$paymentRecords(
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Fragment$PaymentRecordFields.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      pageInfo: Query$paymentRecords$paymentRecords$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Fragment$PaymentRecordFields>? nodes;

  final Query$paymentRecords$paymentRecords$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$nodes = nodes;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$paymentRecords$paymentRecords ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$paymentRecords$paymentRecords
    on Query$paymentRecords$paymentRecords {
  CopyWith$Query$paymentRecords$paymentRecords<
    Query$paymentRecords$paymentRecords
  >
  get copyWith => CopyWith$Query$paymentRecords$paymentRecords(this, (i) => i);
}

abstract class CopyWith$Query$paymentRecords$paymentRecords<TRes> {
  factory CopyWith$Query$paymentRecords$paymentRecords(
    Query$paymentRecords$paymentRecords instance,
    TRes Function(Query$paymentRecords$paymentRecords) then,
  ) = _CopyWithImpl$Query$paymentRecords$paymentRecords;

  factory CopyWith$Query$paymentRecords$paymentRecords.stub(TRes res) =
      _CopyWithStubImpl$Query$paymentRecords$paymentRecords;

  TRes call({
    int? totalCount,
    List<Fragment$PaymentRecordFields>? nodes,
    Query$paymentRecords$paymentRecords$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Fragment$PaymentRecordFields>? Function(
      Iterable<
        CopyWith$Fragment$PaymentRecordFields<Fragment$PaymentRecordFields>
      >?,
    )
    _fn,
  );
  CopyWith$Query$paymentRecords$paymentRecords$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$paymentRecords$paymentRecords<TRes>
    implements CopyWith$Query$paymentRecords$paymentRecords<TRes> {
  _CopyWithImpl$Query$paymentRecords$paymentRecords(this._instance, this._then);

  final Query$paymentRecords$paymentRecords _instance;

  final TRes Function(Query$paymentRecords$paymentRecords) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$paymentRecords$paymentRecords(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Fragment$PaymentRecordFields>?),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$paymentRecords$paymentRecords$pageInfo),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Fragment$PaymentRecordFields>? Function(
      Iterable<
        CopyWith$Fragment$PaymentRecordFields<Fragment$PaymentRecordFields>
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Fragment$PaymentRecordFields(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Query$paymentRecords$paymentRecords$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$paymentRecords$paymentRecords$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }
}

class _CopyWithStubImpl$Query$paymentRecords$paymentRecords<TRes>
    implements CopyWith$Query$paymentRecords$paymentRecords<TRes> {
  _CopyWithStubImpl$Query$paymentRecords$paymentRecords(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Fragment$PaymentRecordFields>? nodes,
    Query$paymentRecords$paymentRecords$pageInfo? pageInfo,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;

  CopyWith$Query$paymentRecords$paymentRecords$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$paymentRecords$paymentRecords$pageInfo.stub(_res);
}

class Query$paymentRecords$paymentRecords$pageInfo {
  Query$paymentRecords$paymentRecords$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$paymentRecords$paymentRecords$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$paymentRecords$paymentRecords$pageInfo(
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
    if (other is! Query$paymentRecords$paymentRecords$pageInfo ||
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

extension UtilityExtension$Query$paymentRecords$paymentRecords$pageInfo
    on Query$paymentRecords$paymentRecords$pageInfo {
  CopyWith$Query$paymentRecords$paymentRecords$pageInfo<
    Query$paymentRecords$paymentRecords$pageInfo
  >
  get copyWith =>
      CopyWith$Query$paymentRecords$paymentRecords$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$paymentRecords$paymentRecords$pageInfo<TRes> {
  factory CopyWith$Query$paymentRecords$paymentRecords$pageInfo(
    Query$paymentRecords$paymentRecords$pageInfo instance,
    TRes Function(Query$paymentRecords$paymentRecords$pageInfo) then,
  ) = _CopyWithImpl$Query$paymentRecords$paymentRecords$pageInfo;

  factory CopyWith$Query$paymentRecords$paymentRecords$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$paymentRecords$paymentRecords$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$paymentRecords$paymentRecords$pageInfo<TRes>
    implements CopyWith$Query$paymentRecords$paymentRecords$pageInfo<TRes> {
  _CopyWithImpl$Query$paymentRecords$paymentRecords$pageInfo(
    this._instance,
    this._then,
  );

  final Query$paymentRecords$paymentRecords$pageInfo _instance;

  final TRes Function(Query$paymentRecords$paymentRecords$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$paymentRecords$paymentRecords$pageInfo(
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

class _CopyWithStubImpl$Query$paymentRecords$paymentRecords$pageInfo<TRes>
    implements CopyWith$Query$paymentRecords$paymentRecords$pageInfo<TRes> {
  _CopyWithStubImpl$Query$paymentRecords$paymentRecords$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}
