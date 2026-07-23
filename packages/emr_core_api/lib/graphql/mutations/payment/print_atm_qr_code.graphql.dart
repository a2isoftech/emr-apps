import 'package:gql/ast.dart';

class Variables$Mutation$PrintAtmQrCode {
  factory Variables$Mutation$PrintAtmQrCode({
    required String paymentRecordId,
  }) => Variables$Mutation$PrintAtmQrCode._({
    r'paymentRecordId': paymentRecordId,
  });

  Variables$Mutation$PrintAtmQrCode._(this._$data);

  factory Variables$Mutation$PrintAtmQrCode.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$paymentRecordId = data['paymentRecordId'];
    result$data['paymentRecordId'] = (l$paymentRecordId as String);
    return Variables$Mutation$PrintAtmQrCode._(result$data);
  }

  Map<String, dynamic> _$data;

  String get paymentRecordId => (_$data['paymentRecordId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$paymentRecordId = paymentRecordId;
    result$data['paymentRecordId'] = l$paymentRecordId;
    return result$data;
  }

  CopyWith$Variables$Mutation$PrintAtmQrCode<Variables$Mutation$PrintAtmQrCode>
  get copyWith => CopyWith$Variables$Mutation$PrintAtmQrCode(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$PrintAtmQrCode ||
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

abstract class CopyWith$Variables$Mutation$PrintAtmQrCode<TRes> {
  factory CopyWith$Variables$Mutation$PrintAtmQrCode(
    Variables$Mutation$PrintAtmQrCode instance,
    TRes Function(Variables$Mutation$PrintAtmQrCode) then,
  ) = _CopyWithImpl$Variables$Mutation$PrintAtmQrCode;

  factory CopyWith$Variables$Mutation$PrintAtmQrCode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$PrintAtmQrCode;

  TRes call({String? paymentRecordId});
}

class _CopyWithImpl$Variables$Mutation$PrintAtmQrCode<TRes>
    implements CopyWith$Variables$Mutation$PrintAtmQrCode<TRes> {
  _CopyWithImpl$Variables$Mutation$PrintAtmQrCode(this._instance, this._then);

  final Variables$Mutation$PrintAtmQrCode _instance;

  final TRes Function(Variables$Mutation$PrintAtmQrCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? paymentRecordId = _undefined}) => _then(
    Variables$Mutation$PrintAtmQrCode._({
      ..._instance._$data,
      if (paymentRecordId != _undefined && paymentRecordId != null)
        'paymentRecordId': (paymentRecordId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$PrintAtmQrCode<TRes>
    implements CopyWith$Variables$Mutation$PrintAtmQrCode<TRes> {
  _CopyWithStubImpl$Variables$Mutation$PrintAtmQrCode(this._res);

  TRes _res;

  call({String? paymentRecordId}) => _res;
}

class Mutation$PrintAtmQrCode {
  Mutation$PrintAtmQrCode({
    required this.printAtmQrCode,
    this.$__typename = 'Mutation',
  });

  factory Mutation$PrintAtmQrCode.fromJson(Map<String, dynamic> json) {
    final l$printAtmQrCode = json['printAtmQrCode'];
    final l$$__typename = json['__typename'];
    return Mutation$PrintAtmQrCode(
      printAtmQrCode: Mutation$PrintAtmQrCode$printAtmQrCode.fromJson(
        (l$printAtmQrCode as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$PrintAtmQrCode$printAtmQrCode printAtmQrCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$printAtmQrCode = printAtmQrCode;
    _resultData['printAtmQrCode'] = l$printAtmQrCode.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$printAtmQrCode = printAtmQrCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$printAtmQrCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$PrintAtmQrCode || runtimeType != other.runtimeType) {
      return false;
    }
    final l$printAtmQrCode = printAtmQrCode;
    final lOther$printAtmQrCode = other.printAtmQrCode;
    if (l$printAtmQrCode != lOther$printAtmQrCode) {
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

extension UtilityExtension$Mutation$PrintAtmQrCode on Mutation$PrintAtmQrCode {
  CopyWith$Mutation$PrintAtmQrCode<Mutation$PrintAtmQrCode> get copyWith =>
      CopyWith$Mutation$PrintAtmQrCode(this, (i) => i);
}

abstract class CopyWith$Mutation$PrintAtmQrCode<TRes> {
  factory CopyWith$Mutation$PrintAtmQrCode(
    Mutation$PrintAtmQrCode instance,
    TRes Function(Mutation$PrintAtmQrCode) then,
  ) = _CopyWithImpl$Mutation$PrintAtmQrCode;

  factory CopyWith$Mutation$PrintAtmQrCode.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PrintAtmQrCode;

  TRes call({
    Mutation$PrintAtmQrCode$printAtmQrCode? printAtmQrCode,
    String? $__typename,
  });
  CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode<TRes> get printAtmQrCode;
}

class _CopyWithImpl$Mutation$PrintAtmQrCode<TRes>
    implements CopyWith$Mutation$PrintAtmQrCode<TRes> {
  _CopyWithImpl$Mutation$PrintAtmQrCode(this._instance, this._then);

  final Mutation$PrintAtmQrCode _instance;

  final TRes Function(Mutation$PrintAtmQrCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? printAtmQrCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PrintAtmQrCode(
      printAtmQrCode: printAtmQrCode == _undefined || printAtmQrCode == null
          ? _instance.printAtmQrCode
          : (printAtmQrCode as Mutation$PrintAtmQrCode$printAtmQrCode),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode<TRes> get printAtmQrCode {
    final local$printAtmQrCode = _instance.printAtmQrCode;
    return CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode(
      local$printAtmQrCode,
      (e) => call(printAtmQrCode: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$PrintAtmQrCode<TRes>
    implements CopyWith$Mutation$PrintAtmQrCode<TRes> {
  _CopyWithStubImpl$Mutation$PrintAtmQrCode(this._res);

  TRes _res;

  call({
    Mutation$PrintAtmQrCode$printAtmQrCode? printAtmQrCode,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode<TRes> get printAtmQrCode =>
      CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode.stub(_res);
}

const documentNodeMutationPrintAtmQrCode = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'PrintAtmQrCode'),
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
            name: NameNode(value: 'printAtmQrCode'),
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

class Mutation$PrintAtmQrCode$printAtmQrCode {
  Mutation$PrintAtmQrCode$printAtmQrCode({
    required this.isSuccess,
    required this.result,
    this.error,
    this.warning,
    this.$__typename = 'ApiResponseOfBoolean',
  });

  factory Mutation$PrintAtmQrCode$printAtmQrCode.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$isSuccess = json['isSuccess'];
    final l$result = json['result'];
    final l$error = json['error'];
    final l$warning = json['warning'];
    final l$$__typename = json['__typename'];
    return Mutation$PrintAtmQrCode$printAtmQrCode(
      isSuccess: (l$isSuccess as bool),
      result: (l$result as bool),
      error: l$error == null
          ? null
          : Mutation$PrintAtmQrCode$printAtmQrCode$error.fromJson(
              (l$error as Map<String, dynamic>),
            ),
      warning: l$warning == null
          ? null
          : Mutation$PrintAtmQrCode$printAtmQrCode$warning.fromJson(
              (l$warning as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isSuccess;

  final bool result;

  final Mutation$PrintAtmQrCode$printAtmQrCode$error? error;

  final Mutation$PrintAtmQrCode$printAtmQrCode$warning? warning;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isSuccess = isSuccess;
    _resultData['isSuccess'] = l$isSuccess;
    final l$result = result;
    _resultData['result'] = l$result;
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
    if (other is! Mutation$PrintAtmQrCode$printAtmQrCode ||
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

extension UtilityExtension$Mutation$PrintAtmQrCode$printAtmQrCode
    on Mutation$PrintAtmQrCode$printAtmQrCode {
  CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode<
    Mutation$PrintAtmQrCode$printAtmQrCode
  >
  get copyWith =>
      CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode(this, (i) => i);
}

abstract class CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode<TRes> {
  factory CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode(
    Mutation$PrintAtmQrCode$printAtmQrCode instance,
    TRes Function(Mutation$PrintAtmQrCode$printAtmQrCode) then,
  ) = _CopyWithImpl$Mutation$PrintAtmQrCode$printAtmQrCode;

  factory CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PrintAtmQrCode$printAtmQrCode;

  TRes call({
    bool? isSuccess,
    bool? result,
    Mutation$PrintAtmQrCode$printAtmQrCode$error? error,
    Mutation$PrintAtmQrCode$printAtmQrCode$warning? warning,
    String? $__typename,
  });
  CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error<TRes> get error;
  CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning<TRes> get warning;
}

class _CopyWithImpl$Mutation$PrintAtmQrCode$printAtmQrCode<TRes>
    implements CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode<TRes> {
  _CopyWithImpl$Mutation$PrintAtmQrCode$printAtmQrCode(
    this._instance,
    this._then,
  );

  final Mutation$PrintAtmQrCode$printAtmQrCode _instance;

  final TRes Function(Mutation$PrintAtmQrCode$printAtmQrCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isSuccess = _undefined,
    Object? result = _undefined,
    Object? error = _undefined,
    Object? warning = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PrintAtmQrCode$printAtmQrCode(
      isSuccess: isSuccess == _undefined || isSuccess == null
          ? _instance.isSuccess
          : (isSuccess as bool),
      result: result == _undefined || result == null
          ? _instance.result
          : (result as bool),
      error: error == _undefined
          ? _instance.error
          : (error as Mutation$PrintAtmQrCode$printAtmQrCode$error?),
      warning: warning == _undefined
          ? _instance.warning
          : (warning as Mutation$PrintAtmQrCode$printAtmQrCode$warning?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error<TRes> get error {
    final local$error = _instance.error;
    return local$error == null
        ? CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error(
            local$error,
            (e) => call(error: e),
          );
  }

  CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning<TRes> get warning {
    final local$warning = _instance.warning;
    return local$warning == null
        ? CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning(
            local$warning,
            (e) => call(warning: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$PrintAtmQrCode$printAtmQrCode<TRes>
    implements CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode<TRes> {
  _CopyWithStubImpl$Mutation$PrintAtmQrCode$printAtmQrCode(this._res);

  TRes _res;

  call({
    bool? isSuccess,
    bool? result,
    Mutation$PrintAtmQrCode$printAtmQrCode$error? error,
    Mutation$PrintAtmQrCode$printAtmQrCode$warning? warning,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error<TRes> get error =>
      CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error.stub(_res);

  CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning<TRes> get warning =>
      CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning.stub(_res);
}

class Mutation$PrintAtmQrCode$printAtmQrCode$error {
  Mutation$PrintAtmQrCode$printAtmQrCode$error({
    required this.errorCode,
    required this.errorMessage,
    required this.details,
    this.$__typename = 'ApiError',
  });

  factory Mutation$PrintAtmQrCode$printAtmQrCode$error.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$errorCode = json['errorCode'];
    final l$errorMessage = json['errorMessage'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Mutation$PrintAtmQrCode$printAtmQrCode$error(
      errorCode: (l$errorCode as String),
      errorMessage: (l$errorMessage as String),
      details: (l$details as List<dynamic>)
          .map(
            (e) =>
                Mutation$PrintAtmQrCode$printAtmQrCode$error$details.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String errorCode;

  final String errorMessage;

  final List<Mutation$PrintAtmQrCode$printAtmQrCode$error$details> details;

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
    if (other is! Mutation$PrintAtmQrCode$printAtmQrCode$error ||
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

extension UtilityExtension$Mutation$PrintAtmQrCode$printAtmQrCode$error
    on Mutation$PrintAtmQrCode$printAtmQrCode$error {
  CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error<
    Mutation$PrintAtmQrCode$printAtmQrCode$error
  >
  get copyWith =>
      CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error(this, (i) => i);
}

abstract class CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error<TRes> {
  factory CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error(
    Mutation$PrintAtmQrCode$printAtmQrCode$error instance,
    TRes Function(Mutation$PrintAtmQrCode$printAtmQrCode$error) then,
  ) = _CopyWithImpl$Mutation$PrintAtmQrCode$printAtmQrCode$error;

  factory CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PrintAtmQrCode$printAtmQrCode$error;

  TRes call({
    String? errorCode,
    String? errorMessage,
    List<Mutation$PrintAtmQrCode$printAtmQrCode$error$details>? details,
    String? $__typename,
  });
  TRes details(
    Iterable<Mutation$PrintAtmQrCode$printAtmQrCode$error$details> Function(
      Iterable<
        CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error$details<
          Mutation$PrintAtmQrCode$printAtmQrCode$error$details
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$PrintAtmQrCode$printAtmQrCode$error<TRes>
    implements CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error<TRes> {
  _CopyWithImpl$Mutation$PrintAtmQrCode$printAtmQrCode$error(
    this._instance,
    this._then,
  );

  final Mutation$PrintAtmQrCode$printAtmQrCode$error _instance;

  final TRes Function(Mutation$PrintAtmQrCode$printAtmQrCode$error) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? errorCode = _undefined,
    Object? errorMessage = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PrintAtmQrCode$printAtmQrCode$error(
      errorCode: errorCode == _undefined || errorCode == null
          ? _instance.errorCode
          : (errorCode as String),
      errorMessage: errorMessage == _undefined || errorMessage == null
          ? _instance.errorMessage
          : (errorMessage as String),
      details: details == _undefined || details == null
          ? _instance.details
          : (details
                as List<Mutation$PrintAtmQrCode$printAtmQrCode$error$details>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes details(
    Iterable<Mutation$PrintAtmQrCode$printAtmQrCode$error$details> Function(
      Iterable<
        CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error$details<
          Mutation$PrintAtmQrCode$printAtmQrCode$error$details
        >
      >,
    )
    _fn,
  ) => call(
    details: _fn(
      _instance.details.map(
        (e) => CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error$details(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$PrintAtmQrCode$printAtmQrCode$error<TRes>
    implements CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error<TRes> {
  _CopyWithStubImpl$Mutation$PrintAtmQrCode$printAtmQrCode$error(this._res);

  TRes _res;

  call({
    String? errorCode,
    String? errorMessage,
    List<Mutation$PrintAtmQrCode$printAtmQrCode$error$details>? details,
    String? $__typename,
  }) => _res;

  details(_fn) => _res;
}

class Mutation$PrintAtmQrCode$printAtmQrCode$error$details {
  Mutation$PrintAtmQrCode$printAtmQrCode$error$details({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$PrintAtmQrCode$printAtmQrCode$error$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$PrintAtmQrCode$printAtmQrCode$error$details(
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
    if (other is! Mutation$PrintAtmQrCode$printAtmQrCode$error$details ||
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

extension UtilityExtension$Mutation$PrintAtmQrCode$printAtmQrCode$error$details
    on Mutation$PrintAtmQrCode$printAtmQrCode$error$details {
  CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error$details<
    Mutation$PrintAtmQrCode$printAtmQrCode$error$details
  >
  get copyWith => CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error$details(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error$details<
  TRes
> {
  factory CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error$details(
    Mutation$PrintAtmQrCode$printAtmQrCode$error$details instance,
    TRes Function(Mutation$PrintAtmQrCode$printAtmQrCode$error$details) then,
  ) = _CopyWithImpl$Mutation$PrintAtmQrCode$printAtmQrCode$error$details;

  factory CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PrintAtmQrCode$printAtmQrCode$error$details;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$PrintAtmQrCode$printAtmQrCode$error$details<TRes>
    implements
        CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error$details<TRes> {
  _CopyWithImpl$Mutation$PrintAtmQrCode$printAtmQrCode$error$details(
    this._instance,
    this._then,
  );

  final Mutation$PrintAtmQrCode$printAtmQrCode$error$details _instance;

  final TRes Function(Mutation$PrintAtmQrCode$printAtmQrCode$error$details)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PrintAtmQrCode$printAtmQrCode$error$details(
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

class _CopyWithStubImpl$Mutation$PrintAtmQrCode$printAtmQrCode$error$details<
  TRes
>
    implements
        CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$error$details<TRes> {
  _CopyWithStubImpl$Mutation$PrintAtmQrCode$printAtmQrCode$error$details(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}

class Mutation$PrintAtmQrCode$printAtmQrCode$warning {
  Mutation$PrintAtmQrCode$printAtmQrCode$warning({
    required this.code,
    required this.message,
    required this.details,
    this.$__typename = 'ApiWarning',
  });

  factory Mutation$PrintAtmQrCode$printAtmQrCode$warning.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Mutation$PrintAtmQrCode$printAtmQrCode$warning(
      code: (l$code as String),
      message: (l$message as String),
      details: (l$details as List<dynamic>)
          .map(
            (e) =>
                Mutation$PrintAtmQrCode$printAtmQrCode$warning$details.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String message;

  final List<Mutation$PrintAtmQrCode$printAtmQrCode$warning$details> details;

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
    if (other is! Mutation$PrintAtmQrCode$printAtmQrCode$warning ||
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

extension UtilityExtension$Mutation$PrintAtmQrCode$printAtmQrCode$warning
    on Mutation$PrintAtmQrCode$printAtmQrCode$warning {
  CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning<
    Mutation$PrintAtmQrCode$printAtmQrCode$warning
  >
  get copyWith =>
      CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning(this, (i) => i);
}

abstract class CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning<TRes> {
  factory CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning(
    Mutation$PrintAtmQrCode$printAtmQrCode$warning instance,
    TRes Function(Mutation$PrintAtmQrCode$printAtmQrCode$warning) then,
  ) = _CopyWithImpl$Mutation$PrintAtmQrCode$printAtmQrCode$warning;

  factory CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PrintAtmQrCode$printAtmQrCode$warning;

  TRes call({
    String? code,
    String? message,
    List<Mutation$PrintAtmQrCode$printAtmQrCode$warning$details>? details,
    String? $__typename,
  });
  TRes details(
    Iterable<Mutation$PrintAtmQrCode$printAtmQrCode$warning$details> Function(
      Iterable<
        CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning$details<
          Mutation$PrintAtmQrCode$printAtmQrCode$warning$details
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$PrintAtmQrCode$printAtmQrCode$warning<TRes>
    implements CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning<TRes> {
  _CopyWithImpl$Mutation$PrintAtmQrCode$printAtmQrCode$warning(
    this._instance,
    this._then,
  );

  final Mutation$PrintAtmQrCode$printAtmQrCode$warning _instance;

  final TRes Function(Mutation$PrintAtmQrCode$printAtmQrCode$warning) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PrintAtmQrCode$printAtmQrCode$warning(
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
                  Mutation$PrintAtmQrCode$printAtmQrCode$warning$details
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes details(
    Iterable<Mutation$PrintAtmQrCode$printAtmQrCode$warning$details> Function(
      Iterable<
        CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning$details<
          Mutation$PrintAtmQrCode$printAtmQrCode$warning$details
        >
      >,
    )
    _fn,
  ) => call(
    details: _fn(
      _instance.details.map(
        (e) => CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning$details(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$PrintAtmQrCode$printAtmQrCode$warning<TRes>
    implements CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning<TRes> {
  _CopyWithStubImpl$Mutation$PrintAtmQrCode$printAtmQrCode$warning(this._res);

  TRes _res;

  call({
    String? code,
    String? message,
    List<Mutation$PrintAtmQrCode$printAtmQrCode$warning$details>? details,
    String? $__typename,
  }) => _res;

  details(_fn) => _res;
}

class Mutation$PrintAtmQrCode$printAtmQrCode$warning$details {
  Mutation$PrintAtmQrCode$printAtmQrCode$warning$details({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$PrintAtmQrCode$printAtmQrCode$warning$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$PrintAtmQrCode$printAtmQrCode$warning$details(
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
    if (other is! Mutation$PrintAtmQrCode$printAtmQrCode$warning$details ||
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

extension UtilityExtension$Mutation$PrintAtmQrCode$printAtmQrCode$warning$details
    on Mutation$PrintAtmQrCode$printAtmQrCode$warning$details {
  CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning$details<
    Mutation$PrintAtmQrCode$printAtmQrCode$warning$details
  >
  get copyWith =>
      CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning$details(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning$details<
  TRes
> {
  factory CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning$details(
    Mutation$PrintAtmQrCode$printAtmQrCode$warning$details instance,
    TRes Function(Mutation$PrintAtmQrCode$printAtmQrCode$warning$details) then,
  ) = _CopyWithImpl$Mutation$PrintAtmQrCode$printAtmQrCode$warning$details;

  factory CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PrintAtmQrCode$printAtmQrCode$warning$details;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$PrintAtmQrCode$printAtmQrCode$warning$details<TRes>
    implements
        CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning$details<TRes> {
  _CopyWithImpl$Mutation$PrintAtmQrCode$printAtmQrCode$warning$details(
    this._instance,
    this._then,
  );

  final Mutation$PrintAtmQrCode$printAtmQrCode$warning$details _instance;

  final TRes Function(Mutation$PrintAtmQrCode$printAtmQrCode$warning$details)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PrintAtmQrCode$printAtmQrCode$warning$details(
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

class _CopyWithStubImpl$Mutation$PrintAtmQrCode$printAtmQrCode$warning$details<
  TRes
>
    implements
        CopyWith$Mutation$PrintAtmQrCode$printAtmQrCode$warning$details<TRes> {
  _CopyWithStubImpl$Mutation$PrintAtmQrCode$printAtmQrCode$warning$details(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}
