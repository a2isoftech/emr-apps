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

class Variables$Query$paymentRecordById {
  factory Variables$Query$paymentRecordById({required String id}) =>
      Variables$Query$paymentRecordById._({r'id': id});

  Variables$Query$paymentRecordById._(this._$data);

  factory Variables$Query$paymentRecordById.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$paymentRecordById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$paymentRecordById<Variables$Query$paymentRecordById>
  get copyWith => CopyWith$Variables$Query$paymentRecordById(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$paymentRecordById ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$paymentRecordById<TRes> {
  factory CopyWith$Variables$Query$paymentRecordById(
    Variables$Query$paymentRecordById instance,
    TRes Function(Variables$Query$paymentRecordById) then,
  ) = _CopyWithImpl$Variables$Query$paymentRecordById;

  factory CopyWith$Variables$Query$paymentRecordById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$paymentRecordById;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$paymentRecordById<TRes>
    implements CopyWith$Variables$Query$paymentRecordById<TRes> {
  _CopyWithImpl$Variables$Query$paymentRecordById(this._instance, this._then);

  final Variables$Query$paymentRecordById _instance;

  final TRes Function(Variables$Query$paymentRecordById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$paymentRecordById._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$paymentRecordById<TRes>
    implements CopyWith$Variables$Query$paymentRecordById<TRes> {
  _CopyWithStubImpl$Variables$Query$paymentRecordById(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$paymentRecordById {
  Query$paymentRecordById({
    required this.paymentRecord,
    this.$__typename = 'Query',
  });

  factory Query$paymentRecordById.fromJson(Map<String, dynamic> json) {
    final l$paymentRecord = json['paymentRecord'];
    final l$$__typename = json['__typename'];
    return Query$paymentRecordById(
      paymentRecord: Fragment$PaymentRecordFields.fromJson(
        (l$paymentRecord as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PaymentRecordFields paymentRecord;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentRecord = paymentRecord;
    _resultData['paymentRecord'] = l$paymentRecord.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentRecord = paymentRecord;
    final l$$__typename = $__typename;
    return Object.hashAll([l$paymentRecord, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$paymentRecordById || runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentRecord = paymentRecord;
    final lOther$paymentRecord = other.paymentRecord;
    if (l$paymentRecord != lOther$paymentRecord) {
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

extension UtilityExtension$Query$paymentRecordById on Query$paymentRecordById {
  CopyWith$Query$paymentRecordById<Query$paymentRecordById> get copyWith =>
      CopyWith$Query$paymentRecordById(this, (i) => i);
}

abstract class CopyWith$Query$paymentRecordById<TRes> {
  factory CopyWith$Query$paymentRecordById(
    Query$paymentRecordById instance,
    TRes Function(Query$paymentRecordById) then,
  ) = _CopyWithImpl$Query$paymentRecordById;

  factory CopyWith$Query$paymentRecordById.stub(TRes res) =
      _CopyWithStubImpl$Query$paymentRecordById;

  TRes call({Fragment$PaymentRecordFields? paymentRecord, String? $__typename});
  CopyWith$Fragment$PaymentRecordFields<TRes> get paymentRecord;
}

class _CopyWithImpl$Query$paymentRecordById<TRes>
    implements CopyWith$Query$paymentRecordById<TRes> {
  _CopyWithImpl$Query$paymentRecordById(this._instance, this._then);

  final Query$paymentRecordById _instance;

  final TRes Function(Query$paymentRecordById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentRecord = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$paymentRecordById(
      paymentRecord: paymentRecord == _undefined || paymentRecord == null
          ? _instance.paymentRecord
          : (paymentRecord as Fragment$PaymentRecordFields),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$PaymentRecordFields<TRes> get paymentRecord {
    final local$paymentRecord = _instance.paymentRecord;
    return CopyWith$Fragment$PaymentRecordFields(
      local$paymentRecord,
      (e) => call(paymentRecord: e),
    );
  }
}

class _CopyWithStubImpl$Query$paymentRecordById<TRes>
    implements CopyWith$Query$paymentRecordById<TRes> {
  _CopyWithStubImpl$Query$paymentRecordById(this._res);

  TRes _res;

  call({Fragment$PaymentRecordFields? paymentRecord, String? $__typename}) =>
      _res;

  CopyWith$Fragment$PaymentRecordFields<TRes> get paymentRecord =>
      CopyWith$Fragment$PaymentRecordFields.stub(_res);
}

const documentNodeQuerypaymentRecordById = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'paymentRecordById'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'paymentRecord'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
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
