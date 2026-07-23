import 'package:gql/ast.dart';

class Variables$Mutation$UnpayPaymentRecord {
  factory Variables$Mutation$UnpayPaymentRecord({
    required String paymentRecordId,
  }) => Variables$Mutation$UnpayPaymentRecord._({
    r'paymentRecordId': paymentRecordId,
  });

  Variables$Mutation$UnpayPaymentRecord._(this._$data);

  factory Variables$Mutation$UnpayPaymentRecord.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$paymentRecordId = data['paymentRecordId'];
    result$data['paymentRecordId'] = (l$paymentRecordId as String);
    return Variables$Mutation$UnpayPaymentRecord._(result$data);
  }

  Map<String, dynamic> _$data;

  String get paymentRecordId => (_$data['paymentRecordId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$paymentRecordId = paymentRecordId;
    result$data['paymentRecordId'] = l$paymentRecordId;
    return result$data;
  }

  CopyWith$Variables$Mutation$UnpayPaymentRecord<
    Variables$Mutation$UnpayPaymentRecord
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UnpayPaymentRecord(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UnpayPaymentRecord ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentRecordId = paymentRecordId;
    final lOther$paymentRecordId = other.paymentRecordId;
    if (l$paymentRecordId != lOther$paymentRecordId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$paymentRecordId = paymentRecordId;
    return Object.hashAll([l$paymentRecordId]);
  }
}

abstract class CopyWith$Variables$Mutation$UnpayPaymentRecord<TRes> {
  factory CopyWith$Variables$Mutation$UnpayPaymentRecord(
    Variables$Mutation$UnpayPaymentRecord instance,
    TRes Function(Variables$Mutation$UnpayPaymentRecord) then,
  ) = _CopyWithImpl$Variables$Mutation$UnpayPaymentRecord;

  factory CopyWith$Variables$Mutation$UnpayPaymentRecord.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UnpayPaymentRecord;

  TRes call({String? paymentRecordId});
}

class _CopyWithImpl$Variables$Mutation$UnpayPaymentRecord<TRes>
    implements CopyWith$Variables$Mutation$UnpayPaymentRecord<TRes> {
  _CopyWithImpl$Variables$Mutation$UnpayPaymentRecord(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UnpayPaymentRecord _instance;

  final TRes Function(Variables$Mutation$UnpayPaymentRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? paymentRecordId = _undefined}) => _then(
    Variables$Mutation$UnpayPaymentRecord._({
      ..._instance._$data,
      if (paymentRecordId != _undefined && paymentRecordId != null)
        'paymentRecordId': (paymentRecordId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UnpayPaymentRecord<TRes>
    implements CopyWith$Variables$Mutation$UnpayPaymentRecord<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UnpayPaymentRecord(this._res);

  TRes _res;

  call({String? paymentRecordId}) => _res;
}

class Mutation$UnpayPaymentRecord {
  Mutation$UnpayPaymentRecord({
    required this.unpayPaymentRecord,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UnpayPaymentRecord.fromJson(Map<String, dynamic> json) {
    final l$unpayPaymentRecord = json['unpayPaymentRecord'];
    final l$$__typename = json['__typename'];
    return Mutation$UnpayPaymentRecord(
      unpayPaymentRecord:
          Mutation$UnpayPaymentRecord$unpayPaymentRecord.fromJson(
            (l$unpayPaymentRecord as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UnpayPaymentRecord$unpayPaymentRecord unpayPaymentRecord;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unpayPaymentRecord = unpayPaymentRecord;
    _resultData['unpayPaymentRecord'] = l$unpayPaymentRecord.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unpayPaymentRecord = unpayPaymentRecord;
    final l$$__typename = $__typename;
    return Object.hashAll([l$unpayPaymentRecord, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UnpayPaymentRecord ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$unpayPaymentRecord = unpayPaymentRecord;
    final lOther$unpayPaymentRecord = other.unpayPaymentRecord;
    if (l$unpayPaymentRecord != lOther$unpayPaymentRecord) {
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

extension UtilityExtension$Mutation$UnpayPaymentRecord
    on Mutation$UnpayPaymentRecord {
  CopyWith$Mutation$UnpayPaymentRecord<Mutation$UnpayPaymentRecord>
  get copyWith => CopyWith$Mutation$UnpayPaymentRecord(this, (i) => i);
}

abstract class CopyWith$Mutation$UnpayPaymentRecord<TRes> {
  factory CopyWith$Mutation$UnpayPaymentRecord(
    Mutation$UnpayPaymentRecord instance,
    TRes Function(Mutation$UnpayPaymentRecord) then,
  ) = _CopyWithImpl$Mutation$UnpayPaymentRecord;

  factory CopyWith$Mutation$UnpayPaymentRecord.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnpayPaymentRecord;

  TRes call({
    Mutation$UnpayPaymentRecord$unpayPaymentRecord? unpayPaymentRecord,
    String? $__typename,
  });
  CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord<TRes>
  get unpayPaymentRecord;
}

class _CopyWithImpl$Mutation$UnpayPaymentRecord<TRes>
    implements CopyWith$Mutation$UnpayPaymentRecord<TRes> {
  _CopyWithImpl$Mutation$UnpayPaymentRecord(this._instance, this._then);

  final Mutation$UnpayPaymentRecord _instance;

  final TRes Function(Mutation$UnpayPaymentRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unpayPaymentRecord = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnpayPaymentRecord(
      unpayPaymentRecord:
          unpayPaymentRecord == _undefined || unpayPaymentRecord == null
          ? _instance.unpayPaymentRecord
          : (unpayPaymentRecord
                as Mutation$UnpayPaymentRecord$unpayPaymentRecord),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord<TRes>
  get unpayPaymentRecord {
    final local$unpayPaymentRecord = _instance.unpayPaymentRecord;
    return CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord(
      local$unpayPaymentRecord,
      (e) => call(unpayPaymentRecord: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UnpayPaymentRecord<TRes>
    implements CopyWith$Mutation$UnpayPaymentRecord<TRes> {
  _CopyWithStubImpl$Mutation$UnpayPaymentRecord(this._res);

  TRes _res;

  call({
    Mutation$UnpayPaymentRecord$unpayPaymentRecord? unpayPaymentRecord,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord<TRes>
  get unpayPaymentRecord =>
      CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord.stub(_res);
}

const documentNodeMutationUnpayPaymentRecord = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UnpayPaymentRecord'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'paymentRecordId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'unpayPaymentRecord'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'paymentRecordId'),
                value: VariableNode(name: NameNode(value: 'paymentRecordId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'result'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'isSuccess'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
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
  ],
);

class Mutation$UnpayPaymentRecord$unpayPaymentRecord {
  Mutation$UnpayPaymentRecord$unpayPaymentRecord({
    required this.result,
    required this.isSuccess,
    this.error,
    this.warning,
    this.$__typename = 'ApiResponseOfBoolean',
  });

  factory Mutation$UnpayPaymentRecord$unpayPaymentRecord.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$isSuccess = json['isSuccess'];
    final l$error = json['error'];
    final l$warning = json['warning'];
    final l$$__typename = json['__typename'];
    return Mutation$UnpayPaymentRecord$unpayPaymentRecord(
      result: (l$result as bool),
      isSuccess: (l$isSuccess as bool),
      error: l$error == null
          ? null
          : Mutation$UnpayPaymentRecord$unpayPaymentRecord$error.fromJson(
              (l$error as Map<String, dynamic>),
            ),
      warning: l$warning == null
          ? null
          : Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning.fromJson(
              (l$warning as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool result;

  final bool isSuccess;

  final Mutation$UnpayPaymentRecord$unpayPaymentRecord$error? error;

  final Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning? warning;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result;
    final l$isSuccess = isSuccess;
    _resultData['isSuccess'] = l$isSuccess;
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
    final l$result = result;
    final l$isSuccess = isSuccess;
    final l$error = error;
    final l$warning = warning;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$result,
      l$isSuccess,
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
    if (other is! Mutation$UnpayPaymentRecord$unpayPaymentRecord ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
      return false;
    }
    final l$isSuccess = isSuccess;
    final lOther$isSuccess = other.isSuccess;
    if (l$isSuccess != lOther$isSuccess) {
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

extension UtilityExtension$Mutation$UnpayPaymentRecord$unpayPaymentRecord
    on Mutation$UnpayPaymentRecord$unpayPaymentRecord {
  CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord<
    Mutation$UnpayPaymentRecord$unpayPaymentRecord
  >
  get copyWith =>
      CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord(this, (i) => i);
}

abstract class CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord<TRes> {
  factory CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord(
    Mutation$UnpayPaymentRecord$unpayPaymentRecord instance,
    TRes Function(Mutation$UnpayPaymentRecord$unpayPaymentRecord) then,
  ) = _CopyWithImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord;

  factory CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord;

  TRes call({
    bool? result,
    bool? isSuccess,
    Mutation$UnpayPaymentRecord$unpayPaymentRecord$error? error,
    Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning? warning,
    String? $__typename,
  });
  CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error<TRes> get error;
  CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning<TRes>
  get warning;
}

class _CopyWithImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord<TRes>
    implements CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord<TRes> {
  _CopyWithImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord(
    this._instance,
    this._then,
  );

  final Mutation$UnpayPaymentRecord$unpayPaymentRecord _instance;

  final TRes Function(Mutation$UnpayPaymentRecord$unpayPaymentRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? result = _undefined,
    Object? isSuccess = _undefined,
    Object? error = _undefined,
    Object? warning = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnpayPaymentRecord$unpayPaymentRecord(
      result: result == _undefined || result == null
          ? _instance.result
          : (result as bool),
      isSuccess: isSuccess == _undefined || isSuccess == null
          ? _instance.isSuccess
          : (isSuccess as bool),
      error: error == _undefined
          ? _instance.error
          : (error as Mutation$UnpayPaymentRecord$unpayPaymentRecord$error?),
      warning: warning == _undefined
          ? _instance.warning
          : (warning
                as Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error<TRes>
  get error {
    final local$error = _instance.error;
    return local$error == null
        ? CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error(
            local$error,
            (e) => call(error: e),
          );
  }

  CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning<TRes>
  get warning {
    final local$warning = _instance.warning;
    return local$warning == null
        ? CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning(
            local$warning,
            (e) => call(warning: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord<TRes>
    implements CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord<TRes> {
  _CopyWithStubImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord(this._res);

  TRes _res;

  call({
    bool? result,
    bool? isSuccess,
    Mutation$UnpayPaymentRecord$unpayPaymentRecord$error? error,
    Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning? warning,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error<TRes>
  get error =>
      CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error.stub(_res);

  CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning<TRes>
  get warning =>
      CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning.stub(
        _res,
      );
}

class Mutation$UnpayPaymentRecord$unpayPaymentRecord$error {
  Mutation$UnpayPaymentRecord$unpayPaymentRecord$error({
    required this.errorCode,
    required this.errorMessage,
    required this.details,
    this.$__typename = 'ApiError',
  });

  factory Mutation$UnpayPaymentRecord$unpayPaymentRecord$error.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$errorCode = json['errorCode'];
    final l$errorMessage = json['errorMessage'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Mutation$UnpayPaymentRecord$unpayPaymentRecord$error(
      errorCode: (l$errorCode as String),
      errorMessage: (l$errorMessage as String),
      details: (l$details as List<dynamic>)
          .map(
            (e) =>
                Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String errorCode;

  final String errorMessage;

  final List<Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details>
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
    if (other is! Mutation$UnpayPaymentRecord$unpayPaymentRecord$error ||
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

extension UtilityExtension$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error
    on Mutation$UnpayPaymentRecord$unpayPaymentRecord$error {
  CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error<
    Mutation$UnpayPaymentRecord$unpayPaymentRecord$error
  >
  get copyWith => CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error<
  TRes
> {
  factory CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error(
    Mutation$UnpayPaymentRecord$unpayPaymentRecord$error instance,
    TRes Function(Mutation$UnpayPaymentRecord$unpayPaymentRecord$error) then,
  ) = _CopyWithImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error;

  factory CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error;

  TRes call({
    String? errorCode,
    String? errorMessage,
    List<Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details>? details,
    String? $__typename,
  });
  TRes details(
    Iterable<Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details>
    Function(
      Iterable<
        CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details<
          Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error<TRes>
    implements
        CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error<TRes> {
  _CopyWithImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error(
    this._instance,
    this._then,
  );

  final Mutation$UnpayPaymentRecord$unpayPaymentRecord$error _instance;

  final TRes Function(Mutation$UnpayPaymentRecord$unpayPaymentRecord$error)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? errorCode = _undefined,
    Object? errorMessage = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnpayPaymentRecord$unpayPaymentRecord$error(
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
                  Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes details(
    Iterable<Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details>
    Function(
      Iterable<
        CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details<
          Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details
        >
      >,
    )
    _fn,
  ) => call(
    details: _fn(
      _instance.details.map(
        (e) =>
            CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error<
  TRes
>
    implements
        CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error<TRes> {
  _CopyWithStubImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error(
    this._res,
  );

  TRes _res;

  call({
    String? errorCode,
    String? errorMessage,
    List<Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details>? details,
    String? $__typename,
  }) => _res;

  details(_fn) => _res;
}

class Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details {
  Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details(
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
            is! Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details ||
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

extension UtilityExtension$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details
    on Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details {
  CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details<
    Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details
  >
  get copyWith =>
      CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details<
  TRes
> {
  factory CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details(
    Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details instance,
    TRes Function(Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details)
    then,
  ) = _CopyWithImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details;

  factory CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details<
  TRes
>
    implements
        CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details<
          TRes
        > {
  _CopyWithImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details(
    this._instance,
    this._then,
  );

  final Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details _instance;

  final TRes Function(
    Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details(
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

class _CopyWithStubImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details<
  TRes
>
    implements
        CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$error$details(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}

class Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning {
  Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning({
    required this.code,
    required this.message,
    required this.details,
    this.$__typename = 'ApiWarning',
  });

  factory Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning(
      code: (l$code as String),
      message: (l$message as String),
      details: (l$details as List<dynamic>)
          .map(
            (e) =>
                Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String message;

  final List<Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details>
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
    if (other is! Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning ||
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

extension UtilityExtension$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning
    on Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning {
  CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning<
    Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning
  >
  get copyWith =>
      CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning<
  TRes
> {
  factory CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning(
    Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning instance,
    TRes Function(Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning) then,
  ) = _CopyWithImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning;

  factory CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning;

  TRes call({
    String? code,
    String? message,
    List<Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details>?
    details,
    String? $__typename,
  });
  TRes details(
    Iterable<Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details>
    Function(
      Iterable<
        CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details<
          Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning<TRes>
    implements
        CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning<TRes> {
  _CopyWithImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning(
    this._instance,
    this._then,
  );

  final Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning _instance;

  final TRes Function(Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning(
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
                  Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes details(
    Iterable<Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details>
    Function(
      Iterable<
        CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details<
          Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details
        >
      >,
    )
    _fn,
  ) => call(
    details: _fn(
      _instance.details.map(
        (e) =>
            CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning<
  TRes
>
    implements
        CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning<TRes> {
  _CopyWithStubImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    String? message,
    List<Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details>?
    details,
    String? $__typename,
  }) => _res;

  details(_fn) => _res;
}

class Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details {
  Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details(
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
            is! Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details ||
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

extension UtilityExtension$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details
    on Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details {
  CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details<
    Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details
  >
  get copyWith =>
      CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details<
  TRes
> {
  factory CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details(
    Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details instance,
    TRes Function(
      Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details,
    )
    then,
  ) = _CopyWithImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details;

  factory CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details<
  TRes
>
    implements
        CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details<
          TRes
        > {
  _CopyWithImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details(
    this._instance,
    this._then,
  );

  final Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details
  _instance;

  final TRes Function(
    Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details(
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

class _CopyWithStubImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details<
  TRes
>
    implements
        CopyWith$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UnpayPaymentRecord$unpayPaymentRecord$warning$details(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}
