import '../../../fragments/inventory/ticket/account_details_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/media_asset_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/non_stock_ticket_line_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/payment_validation_result_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/ticket_account.graphql.dart';
import '../../../fragments/inventory/ticket/ticket_deduction_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/ticket_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/ticket_line_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/uom_value.graphql.dart';
import '../../../fragments/payment/advance_fields.graphql.dart';
import '../../../fragments/payments/encashment_values.graphql.dart';
import '../../../fragments/payments/payment_deduction.graphql.dart';
import '../../../fragments/payments/payment_deduction_items.graphql.dart';
import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$ValidateTicketWithPaymentMethod {
  factory Variables$Query$ValidateTicketWithPaymentMethod({
    required Enum$PaymentMethod paymentMethod,
    required List<String> ticketIds,
    List<Input$SplitPaymentBreakupInput>? splitPaymentBreakups,
    List<Input$AdvanceOffsetInfoInput>? advanceOverrides,
    required String payingYardId,
  }) => Variables$Query$ValidateTicketWithPaymentMethod._({
    r'paymentMethod': paymentMethod,
    r'ticketIds': ticketIds,
    if (splitPaymentBreakups != null)
      r'splitPaymentBreakups': splitPaymentBreakups,
    if (advanceOverrides != null) r'advanceOverrides': advanceOverrides,
    r'payingYardId': payingYardId,
  });

  Variables$Query$ValidateTicketWithPaymentMethod._(this._$data);

  factory Variables$Query$ValidateTicketWithPaymentMethod.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$paymentMethod = data['paymentMethod'];
    result$data['paymentMethod'] = fromJson$Enum$PaymentMethod(
      (l$paymentMethod as String),
    );
    final l$ticketIds = data['ticketIds'];
    result$data['ticketIds'] = (l$ticketIds as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    if (data.containsKey('splitPaymentBreakups')) {
      final l$splitPaymentBreakups = data['splitPaymentBreakups'];
      result$data['splitPaymentBreakups'] =
          (l$splitPaymentBreakups as List<dynamic>?)
              ?.map(
                (e) => Input$SplitPaymentBreakupInput.fromJson(
                  (e as Map<String, dynamic>),
                ),
              )
              .toList();
    }
    if (data.containsKey('advanceOverrides')) {
      final l$advanceOverrides = data['advanceOverrides'];
      result$data['advanceOverrides'] = (l$advanceOverrides as List<dynamic>?)
          ?.map(
            (e) => Input$AdvanceOffsetInfoInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    final l$payingYardId = data['payingYardId'];
    result$data['payingYardId'] = (l$payingYardId as String);
    return Variables$Query$ValidateTicketWithPaymentMethod._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$PaymentMethod get paymentMethod =>
      (_$data['paymentMethod'] as Enum$PaymentMethod);

  List<String> get ticketIds => (_$data['ticketIds'] as List<String>);

  List<Input$SplitPaymentBreakupInput>? get splitPaymentBreakups =>
      (_$data['splitPaymentBreakups'] as List<Input$SplitPaymentBreakupInput>?);

  List<Input$AdvanceOffsetInfoInput>? get advanceOverrides =>
      (_$data['advanceOverrides'] as List<Input$AdvanceOffsetInfoInput>?);

  String get payingYardId => (_$data['payingYardId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$paymentMethod = paymentMethod;
    result$data['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$ticketIds = ticketIds;
    result$data['ticketIds'] = l$ticketIds.map((e) => e).toList();
    if (_$data.containsKey('splitPaymentBreakups')) {
      final l$splitPaymentBreakups = splitPaymentBreakups;
      result$data['splitPaymentBreakups'] = l$splitPaymentBreakups
          ?.map((e) => e.toJson())
          .toList();
    }
    if (_$data.containsKey('advanceOverrides')) {
      final l$advanceOverrides = advanceOverrides;
      result$data['advanceOverrides'] = l$advanceOverrides
          ?.map((e) => e.toJson())
          .toList();
    }
    final l$payingYardId = payingYardId;
    result$data['payingYardId'] = l$payingYardId;
    return result$data;
  }

  CopyWith$Variables$Query$ValidateTicketWithPaymentMethod<
    Variables$Query$ValidateTicketWithPaymentMethod
  >
  get copyWith =>
      CopyWith$Variables$Query$ValidateTicketWithPaymentMethod(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ValidateTicketWithPaymentMethod ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$ticketIds = ticketIds;
    final lOther$ticketIds = other.ticketIds;
    if (l$ticketIds.length != lOther$ticketIds.length) {
      return false;
    }
    for (int i = 0; i < l$ticketIds.length; i++) {
      final l$ticketIds$entry = l$ticketIds[i];
      final lOther$ticketIds$entry = lOther$ticketIds[i];
      if (l$ticketIds$entry != lOther$ticketIds$entry) {
        return false;
      }
    }
    final l$splitPaymentBreakups = splitPaymentBreakups;
    final lOther$splitPaymentBreakups = other.splitPaymentBreakups;
    if (_$data.containsKey('splitPaymentBreakups') !=
        other._$data.containsKey('splitPaymentBreakups')) {
      return false;
    }
    if (l$splitPaymentBreakups != null && lOther$splitPaymentBreakups != null) {
      if (l$splitPaymentBreakups.length != lOther$splitPaymentBreakups.length) {
        return false;
      }
      for (int i = 0; i < l$splitPaymentBreakups.length; i++) {
        final l$splitPaymentBreakups$entry = l$splitPaymentBreakups[i];
        final lOther$splitPaymentBreakups$entry =
            lOther$splitPaymentBreakups[i];
        if (l$splitPaymentBreakups$entry != lOther$splitPaymentBreakups$entry) {
          return false;
        }
      }
    } else if (l$splitPaymentBreakups != lOther$splitPaymentBreakups) {
      return false;
    }
    final l$advanceOverrides = advanceOverrides;
    final lOther$advanceOverrides = other.advanceOverrides;
    if (_$data.containsKey('advanceOverrides') !=
        other._$data.containsKey('advanceOverrides')) {
      return false;
    }
    if (l$advanceOverrides != null && lOther$advanceOverrides != null) {
      if (l$advanceOverrides.length != lOther$advanceOverrides.length) {
        return false;
      }
      for (int i = 0; i < l$advanceOverrides.length; i++) {
        final l$advanceOverrides$entry = l$advanceOverrides[i];
        final lOther$advanceOverrides$entry = lOther$advanceOverrides[i];
        if (l$advanceOverrides$entry != lOther$advanceOverrides$entry) {
          return false;
        }
      }
    } else if (l$advanceOverrides != lOther$advanceOverrides) {
      return false;
    }
    final l$payingYardId = payingYardId;
    final lOther$payingYardId = other.payingYardId;
    if (l$payingYardId != lOther$payingYardId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$paymentMethod = paymentMethod;
    final l$ticketIds = ticketIds;
    final l$splitPaymentBreakups = splitPaymentBreakups;
    final l$advanceOverrides = advanceOverrides;
    final l$payingYardId = payingYardId;
    return Object.hashAll([
      l$paymentMethod,
      Object.hashAll(l$ticketIds.map((v) => v)),
      _$data.containsKey('splitPaymentBreakups')
          ? l$splitPaymentBreakups == null
                ? null
                : Object.hashAll(l$splitPaymentBreakups.map((v) => v))
          : const {},
      _$data.containsKey('advanceOverrides')
          ? l$advanceOverrides == null
                ? null
                : Object.hashAll(l$advanceOverrides.map((v) => v))
          : const {},
      l$payingYardId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$ValidateTicketWithPaymentMethod<TRes> {
  factory CopyWith$Variables$Query$ValidateTicketWithPaymentMethod(
    Variables$Query$ValidateTicketWithPaymentMethod instance,
    TRes Function(Variables$Query$ValidateTicketWithPaymentMethod) then,
  ) = _CopyWithImpl$Variables$Query$ValidateTicketWithPaymentMethod;

  factory CopyWith$Variables$Query$ValidateTicketWithPaymentMethod.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$ValidateTicketWithPaymentMethod;

  TRes call({
    Enum$PaymentMethod? paymentMethod,
    List<String>? ticketIds,
    List<Input$SplitPaymentBreakupInput>? splitPaymentBreakups,
    List<Input$AdvanceOffsetInfoInput>? advanceOverrides,
    String? payingYardId,
  });
}

class _CopyWithImpl$Variables$Query$ValidateTicketWithPaymentMethod<TRes>
    implements CopyWith$Variables$Query$ValidateTicketWithPaymentMethod<TRes> {
  _CopyWithImpl$Variables$Query$ValidateTicketWithPaymentMethod(
    this._instance,
    this._then,
  );

  final Variables$Query$ValidateTicketWithPaymentMethod _instance;

  final TRes Function(Variables$Query$ValidateTicketWithPaymentMethod) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentMethod = _undefined,
    Object? ticketIds = _undefined,
    Object? splitPaymentBreakups = _undefined,
    Object? advanceOverrides = _undefined,
    Object? payingYardId = _undefined,
  }) => _then(
    Variables$Query$ValidateTicketWithPaymentMethod._({
      ..._instance._$data,
      if (paymentMethod != _undefined && paymentMethod != null)
        'paymentMethod': (paymentMethod as Enum$PaymentMethod),
      if (ticketIds != _undefined && ticketIds != null)
        'ticketIds': (ticketIds as List<String>),
      if (splitPaymentBreakups != _undefined)
        'splitPaymentBreakups':
            (splitPaymentBreakups as List<Input$SplitPaymentBreakupInput>?),
      if (advanceOverrides != _undefined)
        'advanceOverrides':
            (advanceOverrides as List<Input$AdvanceOffsetInfoInput>?),
      if (payingYardId != _undefined && payingYardId != null)
        'payingYardId': (payingYardId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ValidateTicketWithPaymentMethod<TRes>
    implements CopyWith$Variables$Query$ValidateTicketWithPaymentMethod<TRes> {
  _CopyWithStubImpl$Variables$Query$ValidateTicketWithPaymentMethod(this._res);

  TRes _res;

  call({
    Enum$PaymentMethod? paymentMethod,
    List<String>? ticketIds,
    List<Input$SplitPaymentBreakupInput>? splitPaymentBreakups,
    List<Input$AdvanceOffsetInfoInput>? advanceOverrides,
    String? payingYardId,
  }) => _res;
}

class Query$ValidateTicketWithPaymentMethod {
  Query$ValidateTicketWithPaymentMethod({
    required this.validateTicketsWithPaymentMethod,
    required this.paymentDeductionsForTickets,
    required this.ticketsById,
    this.$__typename = 'Query',
  });

  factory Query$ValidateTicketWithPaymentMethod.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$validateTicketsWithPaymentMethod =
        json['validateTicketsWithPaymentMethod'];
    final l$paymentDeductionsForTickets = json['paymentDeductionsForTickets'];
    final l$ticketsById = json['ticketsById'];
    final l$$__typename = json['__typename'];
    return Query$ValidateTicketWithPaymentMethod(
      validateTicketsWithPaymentMethod:
          (l$validateTicketsWithPaymentMethod as List<dynamic>)
              .map(
                (e) =>
                    Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod.fromJson(
                      (e as Map<String, dynamic>),
                    ),
              )
              .toList(),
      paymentDeductionsForTickets: Fragment$PaymentDeductionFields.fromJson(
        (l$paymentDeductionsForTickets as Map<String, dynamic>),
      ),
      ticketsById: (l$ticketsById as List<dynamic>)
          .map(
            (e) => Fragment$TicketFields.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod
  >
  validateTicketsWithPaymentMethod;

  final Fragment$PaymentDeductionFields paymentDeductionsForTickets;

  final List<Fragment$TicketFields> ticketsById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$validateTicketsWithPaymentMethod = validateTicketsWithPaymentMethod;
    _resultData['validateTicketsWithPaymentMethod'] =
        l$validateTicketsWithPaymentMethod.map((e) => e.toJson()).toList();
    final l$paymentDeductionsForTickets = paymentDeductionsForTickets;
    _resultData['paymentDeductionsForTickets'] = l$paymentDeductionsForTickets
        .toJson();
    final l$ticketsById = ticketsById;
    _resultData['ticketsById'] = l$ticketsById.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$validateTicketsWithPaymentMethod = validateTicketsWithPaymentMethod;
    final l$paymentDeductionsForTickets = paymentDeductionsForTickets;
    final l$ticketsById = ticketsById;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$validateTicketsWithPaymentMethod.map((v) => v)),
      l$paymentDeductionsForTickets,
      Object.hashAll(l$ticketsById.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ValidateTicketWithPaymentMethod ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$validateTicketsWithPaymentMethod = validateTicketsWithPaymentMethod;
    final lOther$validateTicketsWithPaymentMethod =
        other.validateTicketsWithPaymentMethod;
    if (l$validateTicketsWithPaymentMethod.length !=
        lOther$validateTicketsWithPaymentMethod.length) {
      return false;
    }
    for (int i = 0; i < l$validateTicketsWithPaymentMethod.length; i++) {
      final l$validateTicketsWithPaymentMethod$entry =
          l$validateTicketsWithPaymentMethod[i];
      final lOther$validateTicketsWithPaymentMethod$entry =
          lOther$validateTicketsWithPaymentMethod[i];
      if (l$validateTicketsWithPaymentMethod$entry !=
          lOther$validateTicketsWithPaymentMethod$entry) {
        return false;
      }
    }
    final l$paymentDeductionsForTickets = paymentDeductionsForTickets;
    final lOther$paymentDeductionsForTickets =
        other.paymentDeductionsForTickets;
    if (l$paymentDeductionsForTickets != lOther$paymentDeductionsForTickets) {
      return false;
    }
    final l$ticketsById = ticketsById;
    final lOther$ticketsById = other.ticketsById;
    if (l$ticketsById.length != lOther$ticketsById.length) {
      return false;
    }
    for (int i = 0; i < l$ticketsById.length; i++) {
      final l$ticketsById$entry = l$ticketsById[i];
      final lOther$ticketsById$entry = lOther$ticketsById[i];
      if (l$ticketsById$entry != lOther$ticketsById$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ValidateTicketWithPaymentMethod
    on Query$ValidateTicketWithPaymentMethod {
  CopyWith$Query$ValidateTicketWithPaymentMethod<
    Query$ValidateTicketWithPaymentMethod
  >
  get copyWith =>
      CopyWith$Query$ValidateTicketWithPaymentMethod(this, (i) => i);
}

abstract class CopyWith$Query$ValidateTicketWithPaymentMethod<TRes> {
  factory CopyWith$Query$ValidateTicketWithPaymentMethod(
    Query$ValidateTicketWithPaymentMethod instance,
    TRes Function(Query$ValidateTicketWithPaymentMethod) then,
  ) = _CopyWithImpl$Query$ValidateTicketWithPaymentMethod;

  factory CopyWith$Query$ValidateTicketWithPaymentMethod.stub(TRes res) =
      _CopyWithStubImpl$Query$ValidateTicketWithPaymentMethod;

  TRes call({
    List<
      Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod
    >?
    validateTicketsWithPaymentMethod,
    Fragment$PaymentDeductionFields? paymentDeductionsForTickets,
    List<Fragment$TicketFields>? ticketsById,
    String? $__typename,
  });
  TRes validateTicketsWithPaymentMethod(
    Iterable<
      Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod
    >
    Function(
      Iterable<
        CopyWith$Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod<
          Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod
        >
      >,
    )
    _fn,
  );
  CopyWith$Fragment$PaymentDeductionFields<TRes>
  get paymentDeductionsForTickets;
  TRes ticketsById(
    Iterable<Fragment$TicketFields> Function(
      Iterable<CopyWith$Fragment$TicketFields<Fragment$TicketFields>>,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ValidateTicketWithPaymentMethod<TRes>
    implements CopyWith$Query$ValidateTicketWithPaymentMethod<TRes> {
  _CopyWithImpl$Query$ValidateTicketWithPaymentMethod(
    this._instance,
    this._then,
  );

  final Query$ValidateTicketWithPaymentMethod _instance;

  final TRes Function(Query$ValidateTicketWithPaymentMethod) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? validateTicketsWithPaymentMethod = _undefined,
    Object? paymentDeductionsForTickets = _undefined,
    Object? ticketsById = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ValidateTicketWithPaymentMethod(
      validateTicketsWithPaymentMethod:
          validateTicketsWithPaymentMethod == _undefined ||
              validateTicketsWithPaymentMethod == null
          ? _instance.validateTicketsWithPaymentMethod
          : (validateTicketsWithPaymentMethod
                as List<
                  Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod
                >),
      paymentDeductionsForTickets:
          paymentDeductionsForTickets == _undefined ||
              paymentDeductionsForTickets == null
          ? _instance.paymentDeductionsForTickets
          : (paymentDeductionsForTickets as Fragment$PaymentDeductionFields),
      ticketsById: ticketsById == _undefined || ticketsById == null
          ? _instance.ticketsById
          : (ticketsById as List<Fragment$TicketFields>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes validateTicketsWithPaymentMethod(
    Iterable<
      Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod
    >
    Function(
      Iterable<
        CopyWith$Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod<
          Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod
        >
      >,
    )
    _fn,
  ) => call(
    validateTicketsWithPaymentMethod: _fn(
      _instance.validateTicketsWithPaymentMethod.map(
        (e) =>
            CopyWith$Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  CopyWith$Fragment$PaymentDeductionFields<TRes>
  get paymentDeductionsForTickets {
    final local$paymentDeductionsForTickets =
        _instance.paymentDeductionsForTickets;
    return CopyWith$Fragment$PaymentDeductionFields(
      local$paymentDeductionsForTickets,
      (e) => call(paymentDeductionsForTickets: e),
    );
  }

  TRes ticketsById(
    Iterable<Fragment$TicketFields> Function(
      Iterable<CopyWith$Fragment$TicketFields<Fragment$TicketFields>>,
    )
    _fn,
  ) => call(
    ticketsById: _fn(
      _instance.ticketsById.map(
        (e) => CopyWith$Fragment$TicketFields(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ValidateTicketWithPaymentMethod<TRes>
    implements CopyWith$Query$ValidateTicketWithPaymentMethod<TRes> {
  _CopyWithStubImpl$Query$ValidateTicketWithPaymentMethod(this._res);

  TRes _res;

  call({
    List<
      Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod
    >?
    validateTicketsWithPaymentMethod,
    Fragment$PaymentDeductionFields? paymentDeductionsForTickets,
    List<Fragment$TicketFields>? ticketsById,
    String? $__typename,
  }) => _res;

  validateTicketsWithPaymentMethod(_fn) => _res;

  CopyWith$Fragment$PaymentDeductionFields<TRes>
  get paymentDeductionsForTickets =>
      CopyWith$Fragment$PaymentDeductionFields.stub(_res);

  ticketsById(_fn) => _res;
}

const documentNodeQueryValidateTicketWithPaymentMethod = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ValidateTicketWithPaymentMethod'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'paymentMethod')),
          type: NamedTypeNode(
            name: NameNode(value: 'PaymentMethod'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'ticketIds')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'splitPaymentBreakups')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'SplitPaymentBreakupInput'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'advanceOverrides')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'AdvanceOffsetInfoInput'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'payingYardId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'validateTicketsWithPaymentMethod'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'paymentMethod'),
                value: VariableNode(name: NameNode(value: 'paymentMethod')),
              ),
              ArgumentNode(
                name: NameNode(value: 'ticketIds'),
                value: VariableNode(name: NameNode(value: 'ticketIds')),
              ),
              ArgumentNode(
                name: NameNode(value: 'splitPaymentBreakups'),
                value: VariableNode(
                  name: NameNode(value: 'splitPaymentBreakups'),
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'payingYardId'),
                value: VariableNode(name: NameNode(value: 'payingYardId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'advanceOverrides'),
                value: VariableNode(name: NameNode(value: 'advanceOverrides')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'key'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'value'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'PaymentRuleResultFields'),
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
            name: NameNode(value: 'paymentDeductionsForTickets'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'paymentMethod'),
                value: VariableNode(name: NameNode(value: 'paymentMethod')),
              ),
              ArgumentNode(
                name: NameNode(value: 'ticketIds'),
                value: VariableNode(name: NameNode(value: 'ticketIds')),
              ),
              ArgumentNode(
                name: NameNode(value: 'payingYardId'),
                value: VariableNode(name: NameNode(value: 'payingYardId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'splitPaymentBreakups'),
                value: VariableNode(
                  name: NameNode(value: 'splitPaymentBreakups'),
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'advanceOverrides'),
                value: VariableNode(name: NameNode(value: 'advanceOverrides')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'PaymentDeductionFields'),
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
            name: NameNode(value: 'ticketsById'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'ticketIds'),
                      value: VariableNode(name: NameNode(value: 'ticketIds')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'payingYardId'),
                      value: VariableNode(
                        name: NameNode(value: 'payingYardId'),
                      ),
                    ),
                  ],
                ),
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
    fragmentDefinitionPaymentRuleResultFields,
    fragmentDefinitionPaymentDeductionFields,
    fragmentDefinitionEncashmentValueFields,
    fragmentDefinitionPaymentDeductionItemFields,
    fragmentDefinitionAdvanceFields,
    fragmentDefinitionTicketFields,
    fragmentDefinitionTicketAccountFields,
    fragmentDefinitionAccountDetails,
    fragmentDefinitionUomValueFields,
    fragmentDefinitionTicketLineFields,
    fragmentDefinitionDeductionFields,
    fragmentDefinitionMediaAssetFields,
    fragmentDefinitionNonStockTicketLineFields,
  ],
);

class Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod {
  Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndPaymentRuleResult',
  });

  factory Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod(
      key: (l$key as String),
      value: Fragment$PaymentRuleResultFields.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Fragment$PaymentRuleResultFields value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod
    on Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod {
  CopyWith$Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod<
    Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod
  >
  get copyWith =>
      CopyWith$Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod<
  TRes
> {
  factory CopyWith$Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod(
    Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod
    instance,
    TRes Function(
      Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod,
    )
    then,
  ) = _CopyWithImpl$Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod;

  factory CopyWith$Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod;

  TRes call({
    String? key,
    Fragment$PaymentRuleResultFields? value,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentRuleResultFields<TRes> get value;
}

class _CopyWithImpl$Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod<
  TRes
>
    implements
        CopyWith$Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod<
          TRes
        > {
  _CopyWithImpl$Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod(
    this._instance,
    this._then,
  );

  final Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod
  _instance;

  final TRes Function(
    Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Fragment$PaymentRuleResultFields),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$PaymentRuleResultFields<TRes> get value {
    final local$value = _instance.value;
    return CopyWith$Fragment$PaymentRuleResultFields(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod<
  TRes
>
    implements
        CopyWith$Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod<
          TRes
        > {
  _CopyWithStubImpl$Query$ValidateTicketWithPaymentMethod$validateTicketsWithPaymentMethod(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    Fragment$PaymentRuleResultFields? value,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$PaymentRuleResultFields<TRes> get value =>
      CopyWith$Fragment$PaymentRuleResultFields.stub(_res);
}
