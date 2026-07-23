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

class Variables$Mutation$PatchPaymentRecordStatus {
  factory Variables$Mutation$PatchPaymentRecordStatus({
    required String paymentRecordId,
    required Enum$PaymentStatus paymentStatus,
  }) => Variables$Mutation$PatchPaymentRecordStatus._({
    r'paymentRecordId': paymentRecordId,
    r'paymentStatus': paymentStatus,
  });

  Variables$Mutation$PatchPaymentRecordStatus._(this._$data);

  factory Variables$Mutation$PatchPaymentRecordStatus.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$paymentRecordId = data['paymentRecordId'];
    result$data['paymentRecordId'] = (l$paymentRecordId as String);
    final l$paymentStatus = data['paymentStatus'];
    result$data['paymentStatus'] = fromJson$Enum$PaymentStatus(
      (l$paymentStatus as String),
    );
    return Variables$Mutation$PatchPaymentRecordStatus._(result$data);
  }

  Map<String, dynamic> _$data;

  String get paymentRecordId => (_$data['paymentRecordId'] as String);

  Enum$PaymentStatus get paymentStatus =>
      (_$data['paymentStatus'] as Enum$PaymentStatus);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$paymentRecordId = paymentRecordId;
    result$data['paymentRecordId'] = l$paymentRecordId;
    final l$paymentStatus = paymentStatus;
    result$data['paymentStatus'] = toJson$Enum$PaymentStatus(l$paymentStatus);
    return result$data;
  }

  CopyWith$Variables$Mutation$PatchPaymentRecordStatus<
    Variables$Mutation$PatchPaymentRecordStatus
  >
  get copyWith =>
      CopyWith$Variables$Mutation$PatchPaymentRecordStatus(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$PatchPaymentRecordStatus ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentRecordId = paymentRecordId;
    final lOther$paymentRecordId = other.paymentRecordId;
    if (l$paymentRecordId != lOther$paymentRecordId) {
      return false;
    }
    final l$paymentStatus = paymentStatus;
    final lOther$paymentStatus = other.paymentStatus;
    if (l$paymentStatus != lOther$paymentStatus) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$paymentRecordId = paymentRecordId;
    final l$paymentStatus = paymentStatus;
    return Object.hashAll([l$paymentRecordId, l$paymentStatus]);
  }
}

abstract class CopyWith$Variables$Mutation$PatchPaymentRecordStatus<TRes> {
  factory CopyWith$Variables$Mutation$PatchPaymentRecordStatus(
    Variables$Mutation$PatchPaymentRecordStatus instance,
    TRes Function(Variables$Mutation$PatchPaymentRecordStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$PatchPaymentRecordStatus;

  factory CopyWith$Variables$Mutation$PatchPaymentRecordStatus.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$PatchPaymentRecordStatus;

  TRes call({String? paymentRecordId, Enum$PaymentStatus? paymentStatus});
}

class _CopyWithImpl$Variables$Mutation$PatchPaymentRecordStatus<TRes>
    implements CopyWith$Variables$Mutation$PatchPaymentRecordStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$PatchPaymentRecordStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$PatchPaymentRecordStatus _instance;

  final TRes Function(Variables$Mutation$PatchPaymentRecordStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentRecordId = _undefined,
    Object? paymentStatus = _undefined,
  }) => _then(
    Variables$Mutation$PatchPaymentRecordStatus._({
      ..._instance._$data,
      if (paymentRecordId != _undefined && paymentRecordId != null)
        'paymentRecordId': (paymentRecordId as String),
      if (paymentStatus != _undefined && paymentStatus != null)
        'paymentStatus': (paymentStatus as Enum$PaymentStatus),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$PatchPaymentRecordStatus<TRes>
    implements CopyWith$Variables$Mutation$PatchPaymentRecordStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$PatchPaymentRecordStatus(this._res);

  TRes _res;

  call({String? paymentRecordId, Enum$PaymentStatus? paymentStatus}) => _res;
}

class Mutation$PatchPaymentRecordStatus {
  Mutation$PatchPaymentRecordStatus({
    required this.patchPaymentRecordStatus,
    this.$__typename = 'Mutation',
  });

  factory Mutation$PatchPaymentRecordStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$patchPaymentRecordStatus = json['patchPaymentRecordStatus'];
    final l$$__typename = json['__typename'];
    return Mutation$PatchPaymentRecordStatus(
      patchPaymentRecordStatus:
          Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus.fromJson(
            (l$patchPaymentRecordStatus as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus
  patchPaymentRecordStatus;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$patchPaymentRecordStatus = patchPaymentRecordStatus;
    _resultData['patchPaymentRecordStatus'] = l$patchPaymentRecordStatus
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$patchPaymentRecordStatus = patchPaymentRecordStatus;
    final l$$__typename = $__typename;
    return Object.hashAll([l$patchPaymentRecordStatus, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$PatchPaymentRecordStatus ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$patchPaymentRecordStatus = patchPaymentRecordStatus;
    final lOther$patchPaymentRecordStatus = other.patchPaymentRecordStatus;
    if (l$patchPaymentRecordStatus != lOther$patchPaymentRecordStatus) {
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

extension UtilityExtension$Mutation$PatchPaymentRecordStatus
    on Mutation$PatchPaymentRecordStatus {
  CopyWith$Mutation$PatchPaymentRecordStatus<Mutation$PatchPaymentRecordStatus>
  get copyWith => CopyWith$Mutation$PatchPaymentRecordStatus(this, (i) => i);
}

abstract class CopyWith$Mutation$PatchPaymentRecordStatus<TRes> {
  factory CopyWith$Mutation$PatchPaymentRecordStatus(
    Mutation$PatchPaymentRecordStatus instance,
    TRes Function(Mutation$PatchPaymentRecordStatus) then,
  ) = _CopyWithImpl$Mutation$PatchPaymentRecordStatus;

  factory CopyWith$Mutation$PatchPaymentRecordStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PatchPaymentRecordStatus;

  TRes call({
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus?
    patchPaymentRecordStatus,
    String? $__typename,
  });
  CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus<TRes>
  get patchPaymentRecordStatus;
}

class _CopyWithImpl$Mutation$PatchPaymentRecordStatus<TRes>
    implements CopyWith$Mutation$PatchPaymentRecordStatus<TRes> {
  _CopyWithImpl$Mutation$PatchPaymentRecordStatus(this._instance, this._then);

  final Mutation$PatchPaymentRecordStatus _instance;

  final TRes Function(Mutation$PatchPaymentRecordStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? patchPaymentRecordStatus = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PatchPaymentRecordStatus(
      patchPaymentRecordStatus:
          patchPaymentRecordStatus == _undefined ||
              patchPaymentRecordStatus == null
          ? _instance.patchPaymentRecordStatus
          : (patchPaymentRecordStatus
                as Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus<TRes>
  get patchPaymentRecordStatus {
    final local$patchPaymentRecordStatus = _instance.patchPaymentRecordStatus;
    return CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus(
      local$patchPaymentRecordStatus,
      (e) => call(patchPaymentRecordStatus: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$PatchPaymentRecordStatus<TRes>
    implements CopyWith$Mutation$PatchPaymentRecordStatus<TRes> {
  _CopyWithStubImpl$Mutation$PatchPaymentRecordStatus(this._res);

  TRes _res;

  call({
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus?
    patchPaymentRecordStatus,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus<TRes>
  get patchPaymentRecordStatus =>
      CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus.stub(
        _res,
      );
}

const documentNodeMutationPatchPaymentRecordStatus = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'PatchPaymentRecordStatus'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'paymentRecordId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'paymentStatus')),
          type: NamedTypeNode(
            name: NameNode(value: 'PaymentStatus'),
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
            name: NameNode(value: 'patchPaymentRecordStatus'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'paymentRecordId'),
                value: VariableNode(name: NameNode(value: 'paymentRecordId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'paymentStatus'),
                value: VariableNode(name: NameNode(value: 'paymentStatus')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'isSuccess'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'result'),
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
                  name: NameNode(value: 'error'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'errorCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'errorMessage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'details'),
                        alias: null,
                        arguments: [],
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
                  name: NameNode(value: 'warning'),
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
                        name: NameNode(value: 'message'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'details'),
                        alias: null,
                        arguments: [],
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

class Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus {
  Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus({
    required this.isSuccess,
    this.result,
    this.error,
    this.warning,
    this.$__typename = 'ApiResponseOfPaymentRecord',
  });

  factory Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$isSuccess = json['isSuccess'];
    final l$result = json['result'];
    final l$error = json['error'];
    final l$warning = json['warning'];
    final l$$__typename = json['__typename'];
    return Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus(
      isSuccess: (l$isSuccess as bool),
      result: l$result == null
          ? null
          : Fragment$PaymentRecordFields.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      error: l$error == null
          ? null
          : Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error.fromJson(
              (l$error as Map<String, dynamic>),
            ),
      warning: l$warning == null
          ? null
          : Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning.fromJson(
              (l$warning as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isSuccess;

  final Fragment$PaymentRecordFields? result;

  final Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error? error;

  final Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning?
  warning;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isSuccess = isSuccess;
    _resultData['isSuccess'] = l$isSuccess;
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
    final l$error = error;
    _resultData['error'] = l$error?.toJson();
    final l$warning = warning;
    _resultData['warning'] = l$warning?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isSuccess = isSuccess;
    final l$result = result;
    final l$error = error;
    final l$warning = warning;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$isSuccess,
      l$result,
      l$error,
      l$warning,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isSuccess = isSuccess;
    final lOther$isSuccess = other.isSuccess;
    if (l$isSuccess != lOther$isSuccess) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
      return false;
    }
    final l$error = error;
    final lOther$error = other.error;
    if (l$error != lOther$error) {
      return false;
    }
    final l$warning = warning;
    final lOther$warning = other.warning;
    if (l$warning != lOther$warning) {
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

extension UtilityExtension$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus
    on Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus {
  CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus<
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus
  >
  get copyWith =>
      CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus<
  TRes
> {
  factory CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus(
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus instance,
    TRes Function(Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus)
    then,
  ) = _CopyWithImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus;

  factory CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus;

  TRes call({
    bool? isSuccess,
    Fragment$PaymentRecordFields? result,
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error? error,
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning? warning,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentRecordFields<TRes> get result;
  CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error<
    TRes
  >
  get error;
  CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning<
    TRes
  >
  get warning;
}

class _CopyWithImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus<
  TRes
>
    implements
        CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus<
          TRes
        > {
  _CopyWithImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus(
    this._instance,
    this._then,
  );

  final Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus _instance;

  final TRes Function(
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isSuccess = _undefined,
    Object? result = _undefined,
    Object? error = _undefined,
    Object? warning = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus(
      isSuccess: isSuccess == _undefined || isSuccess == null
          ? _instance.isSuccess
          : (isSuccess as bool),
      result: result == _undefined
          ? _instance.result
          : (result as Fragment$PaymentRecordFields?),
      error: error == _undefined
          ? _instance.error
          : (error
                as Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error?),
      warning: warning == _undefined
          ? _instance.warning
          : (warning
                as Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$PaymentRecordFields<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith$Fragment$PaymentRecordFields.stub(_then(_instance))
        : CopyWith$Fragment$PaymentRecordFields(
            local$result,
            (e) => call(result: e),
          );
  }

  CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error<
    TRes
  >
  get error {
    final local$error = _instance.error;
    return local$error == null
        ? CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error(
            local$error,
            (e) => call(error: e),
          );
  }

  CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning<
    TRes
  >
  get warning {
    final local$warning = _instance.warning;
    return local$warning == null
        ? CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning(
            local$warning,
            (e) => call(warning: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus<
  TRes
>
    implements
        CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus<
          TRes
        > {
  _CopyWithStubImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus(
    this._res,
  );

  TRes _res;

  call({
    bool? isSuccess,
    Fragment$PaymentRecordFields? result,
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error? error,
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning? warning,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$PaymentRecordFields<TRes> get result =>
      CopyWith$Fragment$PaymentRecordFields.stub(_res);

  CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error<
    TRes
  >
  get error =>
      CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error.stub(
        _res,
      );

  CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning<
    TRes
  >
  get warning =>
      CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning.stub(
        _res,
      );
}

class Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error {
  Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error({
    required this.errorCode,
    required this.errorMessage,
    required this.details,
    this.$__typename = 'ApiError',
  });

  factory Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$errorCode = json['errorCode'];
    final l$errorMessage = json['errorMessage'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error(
      errorCode: (l$errorCode as String),
      errorMessage: (l$errorMessage as String),
      details: (l$details as List<dynamic>)
          .map(
            (e) =>
                Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String errorCode;

  final String errorMessage;

  final List<
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details
  >
  details;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$errorCode = errorCode;
    _resultData['errorCode'] = l$errorCode;
    final l$errorMessage = errorMessage;
    _resultData['errorMessage'] = l$errorMessage;
    final l$details = details;
    _resultData['details'] = l$details.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$errorCode = errorCode;
    final l$errorMessage = errorMessage;
    final l$details = details;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$errorCode,
      l$errorMessage,
      Object.hashAll(l$details.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) {
      return false;
    }
    final l$errorMessage = errorMessage;
    final lOther$errorMessage = other.errorMessage;
    if (l$errorMessage != lOther$errorMessage) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (l$details.length != lOther$details.length) {
      return false;
    }
    for (int i = 0; i < l$details.length; i++) {
      final l$details$entry = l$details[i];
      final lOther$details$entry = lOther$details[i];
      if (l$details$entry != lOther$details$entry) {
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

extension UtilityExtension$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error
    on Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error {
  CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error<
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error
  >
  get copyWith =>
      CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error<
  TRes
> {
  factory CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error(
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error instance,
    TRes Function(
      Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error,
    )
    then,
  ) = _CopyWithImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error;

  factory CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error;

  TRes call({
    String? errorCode,
    String? errorMessage,
    List<
      Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details
    >?
    details,
    String? $__typename,
  });
  TRes details(
    Iterable<
      Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details
    >
    Function(
      Iterable<
        CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details<
          Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error<
  TRes
>
    implements
        CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error<
          TRes
        > {
  _CopyWithImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error(
    this._instance,
    this._then,
  );

  final Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error
  _instance;

  final TRes Function(
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? errorCode = _undefined,
    Object? errorMessage = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error(
      errorCode: errorCode == _undefined || errorCode == null
          ? _instance.errorCode
          : (errorCode as String),
      errorMessage: errorMessage == _undefined || errorMessage == null
          ? _instance.errorMessage
          : (errorMessage as String),
      details: details == _undefined || details == null
          ? _instance.details
          : (details
                as List<
                  Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes details(
    Iterable<
      Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details
    >
    Function(
      Iterable<
        CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details<
          Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details
        >
      >,
    )
    _fn,
  ) => call(
    details: _fn(
      _instance.details.map(
        (e) =>
            CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error<
  TRes
>
    implements
        CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error<
          TRes
        > {
  _CopyWithStubImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error(
    this._res,
  );

  TRes _res;

  call({
    String? errorCode,
    String? errorMessage,
    List<
      Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details
    >?
    details,
    String? $__typename,
  }) => _res;

  details(_fn) => _res;
}

class Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details {
  Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details(
      key: (l$key as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value;
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
            is! Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details ||
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

extension UtilityExtension$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details
    on Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details {
  CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details<
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details
  >
  get copyWith =>
      CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details<
  TRes
> {
  factory CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details(
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details
    instance,
    TRes Function(
      Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details,
    )
    then,
  ) = _CopyWithImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details;

  factory CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details<
  TRes
>
    implements
        CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details<
          TRes
        > {
  _CopyWithImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details(
    this._instance,
    this._then,
  );

  final Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details
  _instance;

  final TRes Function(
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details<
  TRes
>
    implements
        CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details<
          TRes
        > {
  _CopyWithStubImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$error$details(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}

class Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning {
  Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning({
    required this.code,
    required this.message,
    required this.details,
    this.$__typename = 'ApiWarning',
  });

  factory Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning(
      code: (l$code as String),
      message: (l$message as String),
      details: (l$details as List<dynamic>)
          .map(
            (e) =>
                Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String message;

  final List<
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details
  >
  details;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$details = details;
    _resultData['details'] = l$details.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$message = message;
    final l$details = details;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$message,
      Object.hashAll(l$details.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (l$details.length != lOther$details.length) {
      return false;
    }
    for (int i = 0; i < l$details.length; i++) {
      final l$details$entry = l$details[i];
      final lOther$details$entry = lOther$details[i];
      if (l$details$entry != lOther$details$entry) {
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

extension UtilityExtension$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning
    on Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning {
  CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning<
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning
  >
  get copyWith =>
      CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning<
  TRes
> {
  factory CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning(
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning instance,
    TRes Function(
      Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning,
    )
    then,
  ) = _CopyWithImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning;

  factory CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning;

  TRes call({
    String? code,
    String? message,
    List<
      Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details
    >?
    details,
    String? $__typename,
  });
  TRes details(
    Iterable<
      Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details
    >
    Function(
      Iterable<
        CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details<
          Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning<
  TRes
>
    implements
        CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning<
          TRes
        > {
  _CopyWithImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning(
    this._instance,
    this._then,
  );

  final Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning
  _instance;

  final TRes Function(
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      details: details == _undefined || details == null
          ? _instance.details
          : (details
                as List<
                  Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes details(
    Iterable<
      Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details
    >
    Function(
      Iterable<
        CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details<
          Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details
        >
      >,
    )
    _fn,
  ) => call(
    details: _fn(
      _instance.details.map(
        (e) =>
            CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning<
  TRes
>
    implements
        CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning<
          TRes
        > {
  _CopyWithStubImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    String? message,
    List<
      Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details
    >?
    details,
    String? $__typename,
  }) => _res;

  details(_fn) => _res;
}

class Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details {
  Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details(
      key: (l$key as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value;
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
            is! Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details ||
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

extension UtilityExtension$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details
    on Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details {
  CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details<
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details
  >
  get copyWith =>
      CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details<
  TRes
> {
  factory CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details(
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details
    instance,
    TRes Function(
      Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details,
    )
    then,
  ) = _CopyWithImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details;

  factory CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details<
  TRes
>
    implements
        CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details<
          TRes
        > {
  _CopyWithImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details(
    this._instance,
    this._then,
  );

  final Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details
  _instance;

  final TRes Function(
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details<
  TRes
>
    implements
        CopyWith$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details<
          TRes
        > {
  _CopyWithStubImpl$Mutation$PatchPaymentRecordStatus$patchPaymentRecordStatus$warning$details(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}
