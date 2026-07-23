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
import 'package:gql/ast.dart';

class Variables$Query$paymentRecordByTicketId {
  factory Variables$Query$paymentRecordByTicketId({required String ticketId}) =>
      Variables$Query$paymentRecordByTicketId._({r'ticketId': ticketId});

  Variables$Query$paymentRecordByTicketId._(this._$data);

  factory Variables$Query$paymentRecordByTicketId.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$ticketId = data['ticketId'];
    result$data['ticketId'] = (l$ticketId as String);
    return Variables$Query$paymentRecordByTicketId._(result$data);
  }

  Map<String, dynamic> _$data;

  String get ticketId => (_$data['ticketId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$ticketId = ticketId;
    result$data['ticketId'] = l$ticketId;
    return result$data;
  }

  CopyWith$Variables$Query$paymentRecordByTicketId<
    Variables$Query$paymentRecordByTicketId
  >
  get copyWith =>
      CopyWith$Variables$Query$paymentRecordByTicketId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$paymentRecordByTicketId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ticketId = ticketId;
    final lOther$ticketId = other.ticketId;
    if (l$ticketId != lOther$ticketId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ticketId = ticketId;
    return Object.hashAll([l$ticketId]);
  }
}

abstract class CopyWith$Variables$Query$paymentRecordByTicketId<TRes> {
  factory CopyWith$Variables$Query$paymentRecordByTicketId(
    Variables$Query$paymentRecordByTicketId instance,
    TRes Function(Variables$Query$paymentRecordByTicketId) then,
  ) = _CopyWithImpl$Variables$Query$paymentRecordByTicketId;

  factory CopyWith$Variables$Query$paymentRecordByTicketId.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$paymentRecordByTicketId;

  TRes call({String? ticketId});
}

class _CopyWithImpl$Variables$Query$paymentRecordByTicketId<TRes>
    implements CopyWith$Variables$Query$paymentRecordByTicketId<TRes> {
  _CopyWithImpl$Variables$Query$paymentRecordByTicketId(
    this._instance,
    this._then,
  );

  final Variables$Query$paymentRecordByTicketId _instance;

  final TRes Function(Variables$Query$paymentRecordByTicketId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? ticketId = _undefined}) => _then(
    Variables$Query$paymentRecordByTicketId._({
      ..._instance._$data,
      if (ticketId != _undefined && ticketId != null)
        'ticketId': (ticketId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$paymentRecordByTicketId<TRes>
    implements CopyWith$Variables$Query$paymentRecordByTicketId<TRes> {
  _CopyWithStubImpl$Variables$Query$paymentRecordByTicketId(this._res);

  TRes _res;

  call({String? ticketId}) => _res;
}

class Query$paymentRecordByTicketId {
  Query$paymentRecordByTicketId({
    this.paymentRecordByTicketId,
    this.$__typename = 'Query',
  });

  factory Query$paymentRecordByTicketId.fromJson(Map<String, dynamic> json) {
    final l$paymentRecordByTicketId = json['paymentRecordByTicketId'];
    final l$$__typename = json['__typename'];
    return Query$paymentRecordByTicketId(
      paymentRecordByTicketId: l$paymentRecordByTicketId == null
          ? null
          : Fragment$PaymentRecordFields.fromJson(
              (l$paymentRecordByTicketId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PaymentRecordFields? paymentRecordByTicketId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentRecordByTicketId = paymentRecordByTicketId;
    _resultData['paymentRecordByTicketId'] = l$paymentRecordByTicketId
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentRecordByTicketId = paymentRecordByTicketId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$paymentRecordByTicketId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$paymentRecordByTicketId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentRecordByTicketId = paymentRecordByTicketId;
    final lOther$paymentRecordByTicketId = other.paymentRecordByTicketId;
    if (l$paymentRecordByTicketId != lOther$paymentRecordByTicketId) {
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

extension UtilityExtension$Query$paymentRecordByTicketId
    on Query$paymentRecordByTicketId {
  CopyWith$Query$paymentRecordByTicketId<Query$paymentRecordByTicketId>
  get copyWith => CopyWith$Query$paymentRecordByTicketId(this, (i) => i);
}

abstract class CopyWith$Query$paymentRecordByTicketId<TRes> {
  factory CopyWith$Query$paymentRecordByTicketId(
    Query$paymentRecordByTicketId instance,
    TRes Function(Query$paymentRecordByTicketId) then,
  ) = _CopyWithImpl$Query$paymentRecordByTicketId;

  factory CopyWith$Query$paymentRecordByTicketId.stub(TRes res) =
      _CopyWithStubImpl$Query$paymentRecordByTicketId;

  TRes call({
    Fragment$PaymentRecordFields? paymentRecordByTicketId,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentRecordFields<TRes> get paymentRecordByTicketId;
}

class _CopyWithImpl$Query$paymentRecordByTicketId<TRes>
    implements CopyWith$Query$paymentRecordByTicketId<TRes> {
  _CopyWithImpl$Query$paymentRecordByTicketId(this._instance, this._then);

  final Query$paymentRecordByTicketId _instance;

  final TRes Function(Query$paymentRecordByTicketId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentRecordByTicketId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$paymentRecordByTicketId(
      paymentRecordByTicketId: paymentRecordByTicketId == _undefined
          ? _instance.paymentRecordByTicketId
          : (paymentRecordByTicketId as Fragment$PaymentRecordFields?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$PaymentRecordFields<TRes> get paymentRecordByTicketId {
    final local$paymentRecordByTicketId = _instance.paymentRecordByTicketId;
    return local$paymentRecordByTicketId == null
        ? CopyWith$Fragment$PaymentRecordFields.stub(_then(_instance))
        : CopyWith$Fragment$PaymentRecordFields(
            local$paymentRecordByTicketId,
            (e) => call(paymentRecordByTicketId: e),
          );
  }
}

class _CopyWithStubImpl$Query$paymentRecordByTicketId<TRes>
    implements CopyWith$Query$paymentRecordByTicketId<TRes> {
  _CopyWithStubImpl$Query$paymentRecordByTicketId(this._res);

  TRes _res;

  call({
    Fragment$PaymentRecordFields? paymentRecordByTicketId,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$PaymentRecordFields<TRes> get paymentRecordByTicketId =>
      CopyWith$Fragment$PaymentRecordFields.stub(_res);
}

const documentNodeQuerypaymentRecordByTicketId = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'paymentRecordByTicketId'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'ticketId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'paymentRecordByTicketId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'ticketId'),
                value: VariableNode(name: NameNode(value: 'ticketId')),
              ),
            ],
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
