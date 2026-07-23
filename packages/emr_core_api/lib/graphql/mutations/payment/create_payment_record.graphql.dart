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

class Variables$Mutation$CreatePaymentRecord {
  factory Variables$Mutation$CreatePaymentRecord({
    required Input$CreatePaymentRecordInput input,
  }) => Variables$Mutation$CreatePaymentRecord._({r'input': input});

  Variables$Mutation$CreatePaymentRecord._(this._$data);

  factory Variables$Mutation$CreatePaymentRecord.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreatePaymentRecordInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CreatePaymentRecord._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreatePaymentRecordInput get input =>
      (_$data['input'] as Input$CreatePaymentRecordInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreatePaymentRecord<
    Variables$Mutation$CreatePaymentRecord
  >
  get copyWith =>
      CopyWith$Variables$Mutation$CreatePaymentRecord(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreatePaymentRecord ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$CreatePaymentRecord<TRes> {
  factory CopyWith$Variables$Mutation$CreatePaymentRecord(
    Variables$Mutation$CreatePaymentRecord instance,
    TRes Function(Variables$Mutation$CreatePaymentRecord) then,
  ) = _CopyWithImpl$Variables$Mutation$CreatePaymentRecord;

  factory CopyWith$Variables$Mutation$CreatePaymentRecord.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreatePaymentRecord;

  TRes call({Input$CreatePaymentRecordInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreatePaymentRecord<TRes>
    implements CopyWith$Variables$Mutation$CreatePaymentRecord<TRes> {
  _CopyWithImpl$Variables$Mutation$CreatePaymentRecord(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreatePaymentRecord _instance;

  final TRes Function(Variables$Mutation$CreatePaymentRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreatePaymentRecord._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreatePaymentRecordInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreatePaymentRecord<TRes>
    implements CopyWith$Variables$Mutation$CreatePaymentRecord<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreatePaymentRecord(this._res);

  TRes _res;

  call({Input$CreatePaymentRecordInput? input}) => _res;
}

class Mutation$CreatePaymentRecord {
  Mutation$CreatePaymentRecord({
    required this.createPaymentRecord,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreatePaymentRecord.fromJson(Map<String, dynamic> json) {
    final l$createPaymentRecord = json['createPaymentRecord'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePaymentRecord(
      createPaymentRecord:
          Mutation$CreatePaymentRecord$createPaymentRecord.fromJson(
            (l$createPaymentRecord as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreatePaymentRecord$createPaymentRecord createPaymentRecord;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createPaymentRecord = createPaymentRecord;
    _resultData['createPaymentRecord'] = l$createPaymentRecord.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createPaymentRecord = createPaymentRecord;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createPaymentRecord, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreatePaymentRecord ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createPaymentRecord = createPaymentRecord;
    final lOther$createPaymentRecord = other.createPaymentRecord;
    if (l$createPaymentRecord != lOther$createPaymentRecord) {
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

extension UtilityExtension$Mutation$CreatePaymentRecord
    on Mutation$CreatePaymentRecord {
  CopyWith$Mutation$CreatePaymentRecord<Mutation$CreatePaymentRecord>
  get copyWith => CopyWith$Mutation$CreatePaymentRecord(this, (i) => i);
}

abstract class CopyWith$Mutation$CreatePaymentRecord<TRes> {
  factory CopyWith$Mutation$CreatePaymentRecord(
    Mutation$CreatePaymentRecord instance,
    TRes Function(Mutation$CreatePaymentRecord) then,
  ) = _CopyWithImpl$Mutation$CreatePaymentRecord;

  factory CopyWith$Mutation$CreatePaymentRecord.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePaymentRecord;

  TRes call({
    Mutation$CreatePaymentRecord$createPaymentRecord? createPaymentRecord,
    String? $__typename,
  });
  CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord<TRes>
  get createPaymentRecord;
}

class _CopyWithImpl$Mutation$CreatePaymentRecord<TRes>
    implements CopyWith$Mutation$CreatePaymentRecord<TRes> {
  _CopyWithImpl$Mutation$CreatePaymentRecord(this._instance, this._then);

  final Mutation$CreatePaymentRecord _instance;

  final TRes Function(Mutation$CreatePaymentRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createPaymentRecord = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreatePaymentRecord(
      createPaymentRecord:
          createPaymentRecord == _undefined || createPaymentRecord == null
          ? _instance.createPaymentRecord
          : (createPaymentRecord
                as Mutation$CreatePaymentRecord$createPaymentRecord),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord<TRes>
  get createPaymentRecord {
    final local$createPaymentRecord = _instance.createPaymentRecord;
    return CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord(
      local$createPaymentRecord,
      (e) => call(createPaymentRecord: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreatePaymentRecord<TRes>
    implements CopyWith$Mutation$CreatePaymentRecord<TRes> {
  _CopyWithStubImpl$Mutation$CreatePaymentRecord(this._res);

  TRes _res;

  call({
    Mutation$CreatePaymentRecord$createPaymentRecord? createPaymentRecord,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord<TRes>
  get createPaymentRecord =>
      CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord.stub(_res);
}

const documentNodeMutationCreatePaymentRecord = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreatePaymentRecord'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreatePaymentRecordInput'),
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
            name: NameNode(value: 'createPaymentRecord'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'paymentRecord'),
                value: VariableNode(name: NameNode(value: 'input')),
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

class Mutation$CreatePaymentRecord$createPaymentRecord {
  Mutation$CreatePaymentRecord$createPaymentRecord({
    required this.isSuccess,
    this.result,
    this.error,
    this.warning,
    this.$__typename = 'ApiResponseOfPaymentRecord',
  });

  factory Mutation$CreatePaymentRecord$createPaymentRecord.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$isSuccess = json['isSuccess'];
    final l$result = json['result'];
    final l$error = json['error'];
    final l$warning = json['warning'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePaymentRecord$createPaymentRecord(
      isSuccess: (l$isSuccess as bool),
      result: l$result == null
          ? null
          : Fragment$PaymentRecordFields.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      error: l$error == null
          ? null
          : Mutation$CreatePaymentRecord$createPaymentRecord$error.fromJson(
              (l$error as Map<String, dynamic>),
            ),
      warning: l$warning == null
          ? null
          : Mutation$CreatePaymentRecord$createPaymentRecord$warning.fromJson(
              (l$warning as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isSuccess;

  final Fragment$PaymentRecordFields? result;

  final Mutation$CreatePaymentRecord$createPaymentRecord$error? error;

  final Mutation$CreatePaymentRecord$createPaymentRecord$warning? warning;

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
    if (other is! Mutation$CreatePaymentRecord$createPaymentRecord ||
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

extension UtilityExtension$Mutation$CreatePaymentRecord$createPaymentRecord
    on Mutation$CreatePaymentRecord$createPaymentRecord {
  CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord<
    Mutation$CreatePaymentRecord$createPaymentRecord
  >
  get copyWith =>
      CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord(this, (i) => i);
}

abstract class CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord<TRes> {
  factory CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord(
    Mutation$CreatePaymentRecord$createPaymentRecord instance,
    TRes Function(Mutation$CreatePaymentRecord$createPaymentRecord) then,
  ) = _CopyWithImpl$Mutation$CreatePaymentRecord$createPaymentRecord;

  factory CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreatePaymentRecord$createPaymentRecord;

  TRes call({
    bool? isSuccess,
    Fragment$PaymentRecordFields? result,
    Mutation$CreatePaymentRecord$createPaymentRecord$error? error,
    Mutation$CreatePaymentRecord$createPaymentRecord$warning? warning,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentRecordFields<TRes> get result;
  CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error<TRes>
  get error;
  CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning<TRes>
  get warning;
}

class _CopyWithImpl$Mutation$CreatePaymentRecord$createPaymentRecord<TRes>
    implements CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord<TRes> {
  _CopyWithImpl$Mutation$CreatePaymentRecord$createPaymentRecord(
    this._instance,
    this._then,
  );

  final Mutation$CreatePaymentRecord$createPaymentRecord _instance;

  final TRes Function(Mutation$CreatePaymentRecord$createPaymentRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isSuccess = _undefined,
    Object? result = _undefined,
    Object? error = _undefined,
    Object? warning = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreatePaymentRecord$createPaymentRecord(
      isSuccess: isSuccess == _undefined || isSuccess == null
          ? _instance.isSuccess
          : (isSuccess as bool),
      result: result == _undefined
          ? _instance.result
          : (result as Fragment$PaymentRecordFields?),
      error: error == _undefined
          ? _instance.error
          : (error as Mutation$CreatePaymentRecord$createPaymentRecord$error?),
      warning: warning == _undefined
          ? _instance.warning
          : (warning
                as Mutation$CreatePaymentRecord$createPaymentRecord$warning?),
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

  CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error<TRes>
  get error {
    final local$error = _instance.error;
    return local$error == null
        ? CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error(
            local$error,
            (e) => call(error: e),
          );
  }

  CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning<TRes>
  get warning {
    final local$warning = _instance.warning;
    return local$warning == null
        ? CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning(
            local$warning,
            (e) => call(warning: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CreatePaymentRecord$createPaymentRecord<TRes>
    implements CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord<TRes> {
  _CopyWithStubImpl$Mutation$CreatePaymentRecord$createPaymentRecord(this._res);

  TRes _res;

  call({
    bool? isSuccess,
    Fragment$PaymentRecordFields? result,
    Mutation$CreatePaymentRecord$createPaymentRecord$error? error,
    Mutation$CreatePaymentRecord$createPaymentRecord$warning? warning,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$PaymentRecordFields<TRes> get result =>
      CopyWith$Fragment$PaymentRecordFields.stub(_res);

  CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error<TRes>
  get error =>
      CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error.stub(
        _res,
      );

  CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning<TRes>
  get warning =>
      CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning.stub(
        _res,
      );
}

class Mutation$CreatePaymentRecord$createPaymentRecord$error {
  Mutation$CreatePaymentRecord$createPaymentRecord$error({
    required this.errorCode,
    required this.errorMessage,
    required this.details,
    this.$__typename = 'ApiError',
  });

  factory Mutation$CreatePaymentRecord$createPaymentRecord$error.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$errorCode = json['errorCode'];
    final l$errorMessage = json['errorMessage'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePaymentRecord$createPaymentRecord$error(
      errorCode: (l$errorCode as String),
      errorMessage: (l$errorMessage as String),
      details: (l$details as List<dynamic>)
          .map(
            (e) =>
                Mutation$CreatePaymentRecord$createPaymentRecord$error$details.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String errorCode;

  final String errorMessage;

  final List<Mutation$CreatePaymentRecord$createPaymentRecord$error$details>
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
    if (other is! Mutation$CreatePaymentRecord$createPaymentRecord$error ||
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

extension UtilityExtension$Mutation$CreatePaymentRecord$createPaymentRecord$error
    on Mutation$CreatePaymentRecord$createPaymentRecord$error {
  CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error<
    Mutation$CreatePaymentRecord$createPaymentRecord$error
  >
  get copyWith =>
      CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error<
  TRes
> {
  factory CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error(
    Mutation$CreatePaymentRecord$createPaymentRecord$error instance,
    TRes Function(Mutation$CreatePaymentRecord$createPaymentRecord$error) then,
  ) = _CopyWithImpl$Mutation$CreatePaymentRecord$createPaymentRecord$error;

  factory CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreatePaymentRecord$createPaymentRecord$error;

  TRes call({
    String? errorCode,
    String? errorMessage,
    List<Mutation$CreatePaymentRecord$createPaymentRecord$error$details>?
    details,
    String? $__typename,
  });
  TRes details(
    Iterable<Mutation$CreatePaymentRecord$createPaymentRecord$error$details>
    Function(
      Iterable<
        CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error$details<
          Mutation$CreatePaymentRecord$createPaymentRecord$error$details
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$CreatePaymentRecord$createPaymentRecord$error<TRes>
    implements
        CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error<TRes> {
  _CopyWithImpl$Mutation$CreatePaymentRecord$createPaymentRecord$error(
    this._instance,
    this._then,
  );

  final Mutation$CreatePaymentRecord$createPaymentRecord$error _instance;

  final TRes Function(Mutation$CreatePaymentRecord$createPaymentRecord$error)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? errorCode = _undefined,
    Object? errorMessage = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreatePaymentRecord$createPaymentRecord$error(
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
                  Mutation$CreatePaymentRecord$createPaymentRecord$error$details
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes details(
    Iterable<Mutation$CreatePaymentRecord$createPaymentRecord$error$details>
    Function(
      Iterable<
        CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error$details<
          Mutation$CreatePaymentRecord$createPaymentRecord$error$details
        >
      >,
    )
    _fn,
  ) => call(
    details: _fn(
      _instance.details.map(
        (e) =>
            CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error$details(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$CreatePaymentRecord$createPaymentRecord$error<
  TRes
>
    implements
        CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error<TRes> {
  _CopyWithStubImpl$Mutation$CreatePaymentRecord$createPaymentRecord$error(
    this._res,
  );

  TRes _res;

  call({
    String? errorCode,
    String? errorMessage,
    List<Mutation$CreatePaymentRecord$createPaymentRecord$error$details>?
    details,
    String? $__typename,
  }) => _res;

  details(_fn) => _res;
}

class Mutation$CreatePaymentRecord$createPaymentRecord$error$details {
  Mutation$CreatePaymentRecord$createPaymentRecord$error$details({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$CreatePaymentRecord$createPaymentRecord$error$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePaymentRecord$createPaymentRecord$error$details(
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
            is! Mutation$CreatePaymentRecord$createPaymentRecord$error$details ||
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

extension UtilityExtension$Mutation$CreatePaymentRecord$createPaymentRecord$error$details
    on Mutation$CreatePaymentRecord$createPaymentRecord$error$details {
  CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error$details<
    Mutation$CreatePaymentRecord$createPaymentRecord$error$details
  >
  get copyWith =>
      CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error$details(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error$details<
  TRes
> {
  factory CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error$details(
    Mutation$CreatePaymentRecord$createPaymentRecord$error$details instance,
    TRes Function(
      Mutation$CreatePaymentRecord$createPaymentRecord$error$details,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreatePaymentRecord$createPaymentRecord$error$details;

  factory CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreatePaymentRecord$createPaymentRecord$error$details;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$CreatePaymentRecord$createPaymentRecord$error$details<
  TRes
>
    implements
        CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error$details<
          TRes
        > {
  _CopyWithImpl$Mutation$CreatePaymentRecord$createPaymentRecord$error$details(
    this._instance,
    this._then,
  );

  final Mutation$CreatePaymentRecord$createPaymentRecord$error$details
  _instance;

  final TRes Function(
    Mutation$CreatePaymentRecord$createPaymentRecord$error$details,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreatePaymentRecord$createPaymentRecord$error$details(
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

class _CopyWithStubImpl$Mutation$CreatePaymentRecord$createPaymentRecord$error$details<
  TRes
>
    implements
        CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$error$details<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreatePaymentRecord$createPaymentRecord$error$details(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}

class Mutation$CreatePaymentRecord$createPaymentRecord$warning {
  Mutation$CreatePaymentRecord$createPaymentRecord$warning({
    required this.code,
    required this.message,
    required this.details,
    this.$__typename = 'ApiWarning',
  });

  factory Mutation$CreatePaymentRecord$createPaymentRecord$warning.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePaymentRecord$createPaymentRecord$warning(
      code: (l$code as String),
      message: (l$message as String),
      details: (l$details as List<dynamic>)
          .map(
            (e) =>
                Mutation$CreatePaymentRecord$createPaymentRecord$warning$details.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String message;

  final List<Mutation$CreatePaymentRecord$createPaymentRecord$warning$details>
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
    if (other is! Mutation$CreatePaymentRecord$createPaymentRecord$warning ||
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

extension UtilityExtension$Mutation$CreatePaymentRecord$createPaymentRecord$warning
    on Mutation$CreatePaymentRecord$createPaymentRecord$warning {
  CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning<
    Mutation$CreatePaymentRecord$createPaymentRecord$warning
  >
  get copyWith =>
      CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning<
  TRes
> {
  factory CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning(
    Mutation$CreatePaymentRecord$createPaymentRecord$warning instance,
    TRes Function(Mutation$CreatePaymentRecord$createPaymentRecord$warning)
    then,
  ) = _CopyWithImpl$Mutation$CreatePaymentRecord$createPaymentRecord$warning;

  factory CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreatePaymentRecord$createPaymentRecord$warning;

  TRes call({
    String? code,
    String? message,
    List<Mutation$CreatePaymentRecord$createPaymentRecord$warning$details>?
    details,
    String? $__typename,
  });
  TRes details(
    Iterable<Mutation$CreatePaymentRecord$createPaymentRecord$warning$details>
    Function(
      Iterable<
        CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning$details<
          Mutation$CreatePaymentRecord$createPaymentRecord$warning$details
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$CreatePaymentRecord$createPaymentRecord$warning<
  TRes
>
    implements
        CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning<
          TRes
        > {
  _CopyWithImpl$Mutation$CreatePaymentRecord$createPaymentRecord$warning(
    this._instance,
    this._then,
  );

  final Mutation$CreatePaymentRecord$createPaymentRecord$warning _instance;

  final TRes Function(Mutation$CreatePaymentRecord$createPaymentRecord$warning)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreatePaymentRecord$createPaymentRecord$warning(
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
                  Mutation$CreatePaymentRecord$createPaymentRecord$warning$details
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes details(
    Iterable<Mutation$CreatePaymentRecord$createPaymentRecord$warning$details>
    Function(
      Iterable<
        CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning$details<
          Mutation$CreatePaymentRecord$createPaymentRecord$warning$details
        >
      >,
    )
    _fn,
  ) => call(
    details: _fn(
      _instance.details.map(
        (e) =>
            CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning$details(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$CreatePaymentRecord$createPaymentRecord$warning<
  TRes
>
    implements
        CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreatePaymentRecord$createPaymentRecord$warning(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    String? message,
    List<Mutation$CreatePaymentRecord$createPaymentRecord$warning$details>?
    details,
    String? $__typename,
  }) => _res;

  details(_fn) => _res;
}

class Mutation$CreatePaymentRecord$createPaymentRecord$warning$details {
  Mutation$CreatePaymentRecord$createPaymentRecord$warning$details({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$CreatePaymentRecord$createPaymentRecord$warning$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePaymentRecord$createPaymentRecord$warning$details(
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
            is! Mutation$CreatePaymentRecord$createPaymentRecord$warning$details ||
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

extension UtilityExtension$Mutation$CreatePaymentRecord$createPaymentRecord$warning$details
    on Mutation$CreatePaymentRecord$createPaymentRecord$warning$details {
  CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning$details<
    Mutation$CreatePaymentRecord$createPaymentRecord$warning$details
  >
  get copyWith =>
      CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning$details(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning$details<
  TRes
> {
  factory CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning$details(
    Mutation$CreatePaymentRecord$createPaymentRecord$warning$details instance,
    TRes Function(
      Mutation$CreatePaymentRecord$createPaymentRecord$warning$details,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreatePaymentRecord$createPaymentRecord$warning$details;

  factory CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreatePaymentRecord$createPaymentRecord$warning$details;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$CreatePaymentRecord$createPaymentRecord$warning$details<
  TRes
>
    implements
        CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning$details<
          TRes
        > {
  _CopyWithImpl$Mutation$CreatePaymentRecord$createPaymentRecord$warning$details(
    this._instance,
    this._then,
  );

  final Mutation$CreatePaymentRecord$createPaymentRecord$warning$details
  _instance;

  final TRes Function(
    Mutation$CreatePaymentRecord$createPaymentRecord$warning$details,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreatePaymentRecord$createPaymentRecord$warning$details(
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

class _CopyWithStubImpl$Mutation$CreatePaymentRecord$createPaymentRecord$warning$details<
  TRes
>
    implements
        CopyWith$Mutation$CreatePaymentRecord$createPaymentRecord$warning$details<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreatePaymentRecord$createPaymentRecord$warning$details(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}
