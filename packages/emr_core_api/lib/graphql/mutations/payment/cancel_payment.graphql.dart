import 'package:gql/ast.dart';

class Variables$Mutation$cancelPayment {
  factory Variables$Mutation$cancelPayment({required String paymentRecordId}) =>
      Variables$Mutation$cancelPayment._({r'paymentRecordId': paymentRecordId});

  Variables$Mutation$cancelPayment._(this._$data);

  factory Variables$Mutation$cancelPayment.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$paymentRecordId = data['paymentRecordId'];
    result$data['paymentRecordId'] = (l$paymentRecordId as String);
    return Variables$Mutation$cancelPayment._(result$data);
  }

  Map<String, dynamic> _$data;

  String get paymentRecordId => (_$data['paymentRecordId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$paymentRecordId = paymentRecordId;
    result$data['paymentRecordId'] = l$paymentRecordId;
    return result$data;
  }

  CopyWith$Variables$Mutation$cancelPayment<Variables$Mutation$cancelPayment>
  get copyWith => CopyWith$Variables$Mutation$cancelPayment(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$cancelPayment ||
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

abstract class CopyWith$Variables$Mutation$cancelPayment<TRes> {
  factory CopyWith$Variables$Mutation$cancelPayment(
    Variables$Mutation$cancelPayment instance,
    TRes Function(Variables$Mutation$cancelPayment) then,
  ) = _CopyWithImpl$Variables$Mutation$cancelPayment;

  factory CopyWith$Variables$Mutation$cancelPayment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$cancelPayment;

  TRes call({String? paymentRecordId});
}

class _CopyWithImpl$Variables$Mutation$cancelPayment<TRes>
    implements CopyWith$Variables$Mutation$cancelPayment<TRes> {
  _CopyWithImpl$Variables$Mutation$cancelPayment(this._instance, this._then);

  final Variables$Mutation$cancelPayment _instance;

  final TRes Function(Variables$Mutation$cancelPayment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? paymentRecordId = _undefined}) => _then(
    Variables$Mutation$cancelPayment._({
      ..._instance._$data,
      if (paymentRecordId != _undefined && paymentRecordId != null)
        'paymentRecordId': (paymentRecordId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$cancelPayment<TRes>
    implements CopyWith$Variables$Mutation$cancelPayment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$cancelPayment(this._res);

  TRes _res;

  call({String? paymentRecordId}) => _res;
}

class Mutation$cancelPayment {
  Mutation$cancelPayment({
    required this.cancelPayment,
    this.$__typename = 'Mutation',
  });

  factory Mutation$cancelPayment.fromJson(Map<String, dynamic> json) {
    final l$cancelPayment = json['cancelPayment'];
    final l$$__typename = json['__typename'];
    return Mutation$cancelPayment(
      cancelPayment: Mutation$cancelPayment$cancelPayment.fromJson(
        (l$cancelPayment as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$cancelPayment$cancelPayment cancelPayment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cancelPayment = cancelPayment;
    _resultData['cancelPayment'] = l$cancelPayment.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cancelPayment = cancelPayment;
    final l$$__typename = $__typename;
    return Object.hashAll([l$cancelPayment, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$cancelPayment || runtimeType != other.runtimeType) {
      return false;
    }
    final l$cancelPayment = cancelPayment;
    final lOther$cancelPayment = other.cancelPayment;
    if (l$cancelPayment != lOther$cancelPayment) {
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

extension UtilityExtension$Mutation$cancelPayment on Mutation$cancelPayment {
  CopyWith$Mutation$cancelPayment<Mutation$cancelPayment> get copyWith =>
      CopyWith$Mutation$cancelPayment(this, (i) => i);
}

abstract class CopyWith$Mutation$cancelPayment<TRes> {
  factory CopyWith$Mutation$cancelPayment(
    Mutation$cancelPayment instance,
    TRes Function(Mutation$cancelPayment) then,
  ) = _CopyWithImpl$Mutation$cancelPayment;

  factory CopyWith$Mutation$cancelPayment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$cancelPayment;

  TRes call({
    Mutation$cancelPayment$cancelPayment? cancelPayment,
    String? $__typename,
  });
  CopyWith$Mutation$cancelPayment$cancelPayment<TRes> get cancelPayment;
}

class _CopyWithImpl$Mutation$cancelPayment<TRes>
    implements CopyWith$Mutation$cancelPayment<TRes> {
  _CopyWithImpl$Mutation$cancelPayment(this._instance, this._then);

  final Mutation$cancelPayment _instance;

  final TRes Function(Mutation$cancelPayment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cancelPayment = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$cancelPayment(
      cancelPayment: cancelPayment == _undefined || cancelPayment == null
          ? _instance.cancelPayment
          : (cancelPayment as Mutation$cancelPayment$cancelPayment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$cancelPayment$cancelPayment<TRes> get cancelPayment {
    final local$cancelPayment = _instance.cancelPayment;
    return CopyWith$Mutation$cancelPayment$cancelPayment(
      local$cancelPayment,
      (e) => call(cancelPayment: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$cancelPayment<TRes>
    implements CopyWith$Mutation$cancelPayment<TRes> {
  _CopyWithStubImpl$Mutation$cancelPayment(this._res);

  TRes _res;

  call({
    Mutation$cancelPayment$cancelPayment? cancelPayment,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$cancelPayment$cancelPayment<TRes> get cancelPayment =>
      CopyWith$Mutation$cancelPayment$cancelPayment.stub(_res);
}

const documentNodeMutationcancelPayment = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'cancelPayment'),
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
            name: NameNode(value: 'cancelPayment'),
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

class Mutation$cancelPayment$cancelPayment {
  Mutation$cancelPayment$cancelPayment({
    required this.result,
    required this.isSuccess,
    this.error,
    this.warning,
    this.$__typename = 'ApiResponseOfBoolean',
  });

  factory Mutation$cancelPayment$cancelPayment.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$isSuccess = json['isSuccess'];
    final l$error = json['error'];
    final l$warning = json['warning'];
    final l$$__typename = json['__typename'];
    return Mutation$cancelPayment$cancelPayment(
      result: (l$result as bool),
      isSuccess: (l$isSuccess as bool),
      error: l$error == null
          ? null
          : Mutation$cancelPayment$cancelPayment$error.fromJson(
              (l$error as Map<String, dynamic>),
            ),
      warning: l$warning == null
          ? null
          : Mutation$cancelPayment$cancelPayment$warning.fromJson(
              (l$warning as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool result;

  final bool isSuccess;

  final Mutation$cancelPayment$cancelPayment$error? error;

  final Mutation$cancelPayment$cancelPayment$warning? warning;

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
    if (other is! Mutation$cancelPayment$cancelPayment ||
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

extension UtilityExtension$Mutation$cancelPayment$cancelPayment
    on Mutation$cancelPayment$cancelPayment {
  CopyWith$Mutation$cancelPayment$cancelPayment<
    Mutation$cancelPayment$cancelPayment
  >
  get copyWith => CopyWith$Mutation$cancelPayment$cancelPayment(this, (i) => i);
}

abstract class CopyWith$Mutation$cancelPayment$cancelPayment<TRes> {
  factory CopyWith$Mutation$cancelPayment$cancelPayment(
    Mutation$cancelPayment$cancelPayment instance,
    TRes Function(Mutation$cancelPayment$cancelPayment) then,
  ) = _CopyWithImpl$Mutation$cancelPayment$cancelPayment;

  factory CopyWith$Mutation$cancelPayment$cancelPayment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$cancelPayment$cancelPayment;

  TRes call({
    bool? result,
    bool? isSuccess,
    Mutation$cancelPayment$cancelPayment$error? error,
    Mutation$cancelPayment$cancelPayment$warning? warning,
    String? $__typename,
  });
  CopyWith$Mutation$cancelPayment$cancelPayment$error<TRes> get error;
  CopyWith$Mutation$cancelPayment$cancelPayment$warning<TRes> get warning;
}

class _CopyWithImpl$Mutation$cancelPayment$cancelPayment<TRes>
    implements CopyWith$Mutation$cancelPayment$cancelPayment<TRes> {
  _CopyWithImpl$Mutation$cancelPayment$cancelPayment(
    this._instance,
    this._then,
  );

  final Mutation$cancelPayment$cancelPayment _instance;

  final TRes Function(Mutation$cancelPayment$cancelPayment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? result = _undefined,
    Object? isSuccess = _undefined,
    Object? error = _undefined,
    Object? warning = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$cancelPayment$cancelPayment(
      result: result == _undefined || result == null
          ? _instance.result
          : (result as bool),
      isSuccess: isSuccess == _undefined || isSuccess == null
          ? _instance.isSuccess
          : (isSuccess as bool),
      error: error == _undefined
          ? _instance.error
          : (error as Mutation$cancelPayment$cancelPayment$error?),
      warning: warning == _undefined
          ? _instance.warning
          : (warning as Mutation$cancelPayment$cancelPayment$warning?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$cancelPayment$cancelPayment$error<TRes> get error {
    final local$error = _instance.error;
    return local$error == null
        ? CopyWith$Mutation$cancelPayment$cancelPayment$error.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$cancelPayment$cancelPayment$error(
            local$error,
            (e) => call(error: e),
          );
  }

  CopyWith$Mutation$cancelPayment$cancelPayment$warning<TRes> get warning {
    final local$warning = _instance.warning;
    return local$warning == null
        ? CopyWith$Mutation$cancelPayment$cancelPayment$warning.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$cancelPayment$cancelPayment$warning(
            local$warning,
            (e) => call(warning: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$cancelPayment$cancelPayment<TRes>
    implements CopyWith$Mutation$cancelPayment$cancelPayment<TRes> {
  _CopyWithStubImpl$Mutation$cancelPayment$cancelPayment(this._res);

  TRes _res;

  call({
    bool? result,
    bool? isSuccess,
    Mutation$cancelPayment$cancelPayment$error? error,
    Mutation$cancelPayment$cancelPayment$warning? warning,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$cancelPayment$cancelPayment$error<TRes> get error =>
      CopyWith$Mutation$cancelPayment$cancelPayment$error.stub(_res);

  CopyWith$Mutation$cancelPayment$cancelPayment$warning<TRes> get warning =>
      CopyWith$Mutation$cancelPayment$cancelPayment$warning.stub(_res);
}

class Mutation$cancelPayment$cancelPayment$error {
  Mutation$cancelPayment$cancelPayment$error({
    required this.errorCode,
    required this.errorMessage,
    required this.details,
    this.$__typename = 'ApiError',
  });

  factory Mutation$cancelPayment$cancelPayment$error.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$errorCode = json['errorCode'];
    final l$errorMessage = json['errorMessage'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Mutation$cancelPayment$cancelPayment$error(
      errorCode: (l$errorCode as String),
      errorMessage: (l$errorMessage as String),
      details: (l$details as List<dynamic>)
          .map(
            (e) => Mutation$cancelPayment$cancelPayment$error$details.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String errorCode;

  final String errorMessage;

  final List<Mutation$cancelPayment$cancelPayment$error$details> details;

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
    if (other is! Mutation$cancelPayment$cancelPayment$error ||
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

extension UtilityExtension$Mutation$cancelPayment$cancelPayment$error
    on Mutation$cancelPayment$cancelPayment$error {
  CopyWith$Mutation$cancelPayment$cancelPayment$error<
    Mutation$cancelPayment$cancelPayment$error
  >
  get copyWith =>
      CopyWith$Mutation$cancelPayment$cancelPayment$error(this, (i) => i);
}

abstract class CopyWith$Mutation$cancelPayment$cancelPayment$error<TRes> {
  factory CopyWith$Mutation$cancelPayment$cancelPayment$error(
    Mutation$cancelPayment$cancelPayment$error instance,
    TRes Function(Mutation$cancelPayment$cancelPayment$error) then,
  ) = _CopyWithImpl$Mutation$cancelPayment$cancelPayment$error;

  factory CopyWith$Mutation$cancelPayment$cancelPayment$error.stub(TRes res) =
      _CopyWithStubImpl$Mutation$cancelPayment$cancelPayment$error;

  TRes call({
    String? errorCode,
    String? errorMessage,
    List<Mutation$cancelPayment$cancelPayment$error$details>? details,
    String? $__typename,
  });
  TRes details(
    Iterable<Mutation$cancelPayment$cancelPayment$error$details> Function(
      Iterable<
        CopyWith$Mutation$cancelPayment$cancelPayment$error$details<
          Mutation$cancelPayment$cancelPayment$error$details
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$cancelPayment$cancelPayment$error<TRes>
    implements CopyWith$Mutation$cancelPayment$cancelPayment$error<TRes> {
  _CopyWithImpl$Mutation$cancelPayment$cancelPayment$error(
    this._instance,
    this._then,
  );

  final Mutation$cancelPayment$cancelPayment$error _instance;

  final TRes Function(Mutation$cancelPayment$cancelPayment$error) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? errorCode = _undefined,
    Object? errorMessage = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$cancelPayment$cancelPayment$error(
      errorCode: errorCode == _undefined || errorCode == null
          ? _instance.errorCode
          : (errorCode as String),
      errorMessage: errorMessage == _undefined || errorMessage == null
          ? _instance.errorMessage
          : (errorMessage as String),
      details: details == _undefined || details == null
          ? _instance.details
          : (details
                as List<Mutation$cancelPayment$cancelPayment$error$details>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes details(
    Iterable<Mutation$cancelPayment$cancelPayment$error$details> Function(
      Iterable<
        CopyWith$Mutation$cancelPayment$cancelPayment$error$details<
          Mutation$cancelPayment$cancelPayment$error$details
        >
      >,
    )
    _fn,
  ) => call(
    details: _fn(
      _instance.details.map(
        (e) => CopyWith$Mutation$cancelPayment$cancelPayment$error$details(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$cancelPayment$cancelPayment$error<TRes>
    implements CopyWith$Mutation$cancelPayment$cancelPayment$error<TRes> {
  _CopyWithStubImpl$Mutation$cancelPayment$cancelPayment$error(this._res);

  TRes _res;

  call({
    String? errorCode,
    String? errorMessage,
    List<Mutation$cancelPayment$cancelPayment$error$details>? details,
    String? $__typename,
  }) => _res;

  details(_fn) => _res;
}

class Mutation$cancelPayment$cancelPayment$error$details {
  Mutation$cancelPayment$cancelPayment$error$details({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$cancelPayment$cancelPayment$error$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$cancelPayment$cancelPayment$error$details(
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
    if (other is! Mutation$cancelPayment$cancelPayment$error$details ||
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

extension UtilityExtension$Mutation$cancelPayment$cancelPayment$error$details
    on Mutation$cancelPayment$cancelPayment$error$details {
  CopyWith$Mutation$cancelPayment$cancelPayment$error$details<
    Mutation$cancelPayment$cancelPayment$error$details
  >
  get copyWith => CopyWith$Mutation$cancelPayment$cancelPayment$error$details(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$cancelPayment$cancelPayment$error$details<
  TRes
> {
  factory CopyWith$Mutation$cancelPayment$cancelPayment$error$details(
    Mutation$cancelPayment$cancelPayment$error$details instance,
    TRes Function(Mutation$cancelPayment$cancelPayment$error$details) then,
  ) = _CopyWithImpl$Mutation$cancelPayment$cancelPayment$error$details;

  factory CopyWith$Mutation$cancelPayment$cancelPayment$error$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$cancelPayment$cancelPayment$error$details;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$cancelPayment$cancelPayment$error$details<TRes>
    implements
        CopyWith$Mutation$cancelPayment$cancelPayment$error$details<TRes> {
  _CopyWithImpl$Mutation$cancelPayment$cancelPayment$error$details(
    this._instance,
    this._then,
  );

  final Mutation$cancelPayment$cancelPayment$error$details _instance;

  final TRes Function(Mutation$cancelPayment$cancelPayment$error$details) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$cancelPayment$cancelPayment$error$details(
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

class _CopyWithStubImpl$Mutation$cancelPayment$cancelPayment$error$details<TRes>
    implements
        CopyWith$Mutation$cancelPayment$cancelPayment$error$details<TRes> {
  _CopyWithStubImpl$Mutation$cancelPayment$cancelPayment$error$details(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}

class Mutation$cancelPayment$cancelPayment$warning {
  Mutation$cancelPayment$cancelPayment$warning({
    required this.code,
    required this.message,
    required this.details,
    this.$__typename = 'ApiWarning',
  });

  factory Mutation$cancelPayment$cancelPayment$warning.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Mutation$cancelPayment$cancelPayment$warning(
      code: (l$code as String),
      message: (l$message as String),
      details: (l$details as List<dynamic>)
          .map(
            (e) =>
                Mutation$cancelPayment$cancelPayment$warning$details.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String message;

  final List<Mutation$cancelPayment$cancelPayment$warning$details> details;

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
    if (other is! Mutation$cancelPayment$cancelPayment$warning ||
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

extension UtilityExtension$Mutation$cancelPayment$cancelPayment$warning
    on Mutation$cancelPayment$cancelPayment$warning {
  CopyWith$Mutation$cancelPayment$cancelPayment$warning<
    Mutation$cancelPayment$cancelPayment$warning
  >
  get copyWith =>
      CopyWith$Mutation$cancelPayment$cancelPayment$warning(this, (i) => i);
}

abstract class CopyWith$Mutation$cancelPayment$cancelPayment$warning<TRes> {
  factory CopyWith$Mutation$cancelPayment$cancelPayment$warning(
    Mutation$cancelPayment$cancelPayment$warning instance,
    TRes Function(Mutation$cancelPayment$cancelPayment$warning) then,
  ) = _CopyWithImpl$Mutation$cancelPayment$cancelPayment$warning;

  factory CopyWith$Mutation$cancelPayment$cancelPayment$warning.stub(TRes res) =
      _CopyWithStubImpl$Mutation$cancelPayment$cancelPayment$warning;

  TRes call({
    String? code,
    String? message,
    List<Mutation$cancelPayment$cancelPayment$warning$details>? details,
    String? $__typename,
  });
  TRes details(
    Iterable<Mutation$cancelPayment$cancelPayment$warning$details> Function(
      Iterable<
        CopyWith$Mutation$cancelPayment$cancelPayment$warning$details<
          Mutation$cancelPayment$cancelPayment$warning$details
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$cancelPayment$cancelPayment$warning<TRes>
    implements CopyWith$Mutation$cancelPayment$cancelPayment$warning<TRes> {
  _CopyWithImpl$Mutation$cancelPayment$cancelPayment$warning(
    this._instance,
    this._then,
  );

  final Mutation$cancelPayment$cancelPayment$warning _instance;

  final TRes Function(Mutation$cancelPayment$cancelPayment$warning) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$cancelPayment$cancelPayment$warning(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      details: details == _undefined || details == null
          ? _instance.details
          : (details
                as List<Mutation$cancelPayment$cancelPayment$warning$details>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes details(
    Iterable<Mutation$cancelPayment$cancelPayment$warning$details> Function(
      Iterable<
        CopyWith$Mutation$cancelPayment$cancelPayment$warning$details<
          Mutation$cancelPayment$cancelPayment$warning$details
        >
      >,
    )
    _fn,
  ) => call(
    details: _fn(
      _instance.details.map(
        (e) => CopyWith$Mutation$cancelPayment$cancelPayment$warning$details(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$cancelPayment$cancelPayment$warning<TRes>
    implements CopyWith$Mutation$cancelPayment$cancelPayment$warning<TRes> {
  _CopyWithStubImpl$Mutation$cancelPayment$cancelPayment$warning(this._res);

  TRes _res;

  call({
    String? code,
    String? message,
    List<Mutation$cancelPayment$cancelPayment$warning$details>? details,
    String? $__typename,
  }) => _res;

  details(_fn) => _res;
}

class Mutation$cancelPayment$cancelPayment$warning$details {
  Mutation$cancelPayment$cancelPayment$warning$details({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$cancelPayment$cancelPayment$warning$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$cancelPayment$cancelPayment$warning$details(
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
    if (other is! Mutation$cancelPayment$cancelPayment$warning$details ||
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

extension UtilityExtension$Mutation$cancelPayment$cancelPayment$warning$details
    on Mutation$cancelPayment$cancelPayment$warning$details {
  CopyWith$Mutation$cancelPayment$cancelPayment$warning$details<
    Mutation$cancelPayment$cancelPayment$warning$details
  >
  get copyWith => CopyWith$Mutation$cancelPayment$cancelPayment$warning$details(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$cancelPayment$cancelPayment$warning$details<
  TRes
> {
  factory CopyWith$Mutation$cancelPayment$cancelPayment$warning$details(
    Mutation$cancelPayment$cancelPayment$warning$details instance,
    TRes Function(Mutation$cancelPayment$cancelPayment$warning$details) then,
  ) = _CopyWithImpl$Mutation$cancelPayment$cancelPayment$warning$details;

  factory CopyWith$Mutation$cancelPayment$cancelPayment$warning$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$cancelPayment$cancelPayment$warning$details;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$cancelPayment$cancelPayment$warning$details<TRes>
    implements
        CopyWith$Mutation$cancelPayment$cancelPayment$warning$details<TRes> {
  _CopyWithImpl$Mutation$cancelPayment$cancelPayment$warning$details(
    this._instance,
    this._then,
  );

  final Mutation$cancelPayment$cancelPayment$warning$details _instance;

  final TRes Function(Mutation$cancelPayment$cancelPayment$warning$details)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$cancelPayment$cancelPayment$warning$details(
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

class _CopyWithStubImpl$Mutation$cancelPayment$cancelPayment$warning$details<
  TRes
>
    implements
        CopyWith$Mutation$cancelPayment$cancelPayment$warning$details<TRes> {
  _CopyWithStubImpl$Mutation$cancelPayment$cancelPayment$warning$details(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}
