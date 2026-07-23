import '../../fragments/inventory/ticket/account_details_fragment.graphql.dart';
import '../../fragments/inventory/ticket/media_asset_fragment.graphql.dart';
import '../../fragments/inventory/ticket/non_stock_ticket_line_fragment.graphql.dart';
import '../../fragments/inventory/ticket/ticket_account.graphql.dart';
import '../../fragments/inventory/ticket/ticket_deduction_fragment.graphql.dart';
import '../../fragments/inventory/ticket/ticket_fragment.graphql.dart';
import '../../fragments/inventory/ticket/ticket_line_fragment.graphql.dart';
import '../../fragments/inventory/ticket/uom_value.graphql.dart';
import '../../fragments/payment/advance_fields.graphql.dart';
import '../../fragments/payments/encashment_values.graphql.dart';
import '../../fragments/payments/payment_deduction.graphql.dart';
import '../../fragments/payments/payment_deduction_items.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$getTicketById {
  factory Variables$Query$getTicketById({required String id}) =>
      Variables$Query$getTicketById._({r'id': id});

  Variables$Query$getTicketById._(this._$data);

  factory Variables$Query$getTicketById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$getTicketById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$getTicketById<Variables$Query$getTicketById>
  get copyWith => CopyWith$Variables$Query$getTicketById(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getTicketById ||
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

abstract class CopyWith$Variables$Query$getTicketById<TRes> {
  factory CopyWith$Variables$Query$getTicketById(
    Variables$Query$getTicketById instance,
    TRes Function(Variables$Query$getTicketById) then,
  ) = _CopyWithImpl$Variables$Query$getTicketById;

  factory CopyWith$Variables$Query$getTicketById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getTicketById;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$getTicketById<TRes>
    implements CopyWith$Variables$Query$getTicketById<TRes> {
  _CopyWithImpl$Variables$Query$getTicketById(this._instance, this._then);

  final Variables$Query$getTicketById _instance;

  final TRes Function(Variables$Query$getTicketById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$getTicketById._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$getTicketById<TRes>
    implements CopyWith$Variables$Query$getTicketById<TRes> {
  _CopyWithStubImpl$Variables$Query$getTicketById(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$getTicketById {
  Query$getTicketById({required this.ticket, this.$__typename = 'Query'});

  factory Query$getTicketById.fromJson(Map<String, dynamic> json) {
    final l$ticket = json['ticket'];
    final l$$__typename = json['__typename'];
    return Query$getTicketById(
      ticket: Fragment$TicketFields.fromJson(
        (l$ticket as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$TicketFields ticket;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ticket = ticket;
    _resultData['ticket'] = l$ticket.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ticket = ticket;
    final l$$__typename = $__typename;
    return Object.hashAll([l$ticket, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getTicketById || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ticket = ticket;
    final lOther$ticket = other.ticket;
    if (l$ticket != lOther$ticket) {
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

extension UtilityExtension$Query$getTicketById on Query$getTicketById {
  CopyWith$Query$getTicketById<Query$getTicketById> get copyWith =>
      CopyWith$Query$getTicketById(this, (i) => i);
}

abstract class CopyWith$Query$getTicketById<TRes> {
  factory CopyWith$Query$getTicketById(
    Query$getTicketById instance,
    TRes Function(Query$getTicketById) then,
  ) = _CopyWithImpl$Query$getTicketById;

  factory CopyWith$Query$getTicketById.stub(TRes res) =
      _CopyWithStubImpl$Query$getTicketById;

  TRes call({Fragment$TicketFields? ticket, String? $__typename});
  CopyWith$Fragment$TicketFields<TRes> get ticket;
}

class _CopyWithImpl$Query$getTicketById<TRes>
    implements CopyWith$Query$getTicketById<TRes> {
  _CopyWithImpl$Query$getTicketById(this._instance, this._then);

  final Query$getTicketById _instance;

  final TRes Function(Query$getTicketById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? ticket = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$getTicketById(
          ticket: ticket == _undefined || ticket == null
              ? _instance.ticket
              : (ticket as Fragment$TicketFields),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Fragment$TicketFields<TRes> get ticket {
    final local$ticket = _instance.ticket;
    return CopyWith$Fragment$TicketFields(local$ticket, (e) => call(ticket: e));
  }
}

class _CopyWithStubImpl$Query$getTicketById<TRes>
    implements CopyWith$Query$getTicketById<TRes> {
  _CopyWithStubImpl$Query$getTicketById(this._res);

  TRes _res;

  call({Fragment$TicketFields? ticket, String? $__typename}) => _res;

  CopyWith$Fragment$TicketFields<TRes> get ticket =>
      CopyWith$Fragment$TicketFields.stub(_res);
}

const documentNodeQuerygetTicketById = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getTicketById'),
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
            name: NameNode(value: 'ticket'),
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
                  name: NameNode(value: 'TicketFields'),
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
  ],
);
