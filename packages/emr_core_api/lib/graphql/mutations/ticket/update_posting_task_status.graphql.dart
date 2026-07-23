import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$updatePostingTaskStatus {
  factory Variables$Mutation$updatePostingTaskStatus({
    required String postingTaskId,
    required Enum$PaymentPostingTaskStatus paymentPostingTaskStatus,
  }) => Variables$Mutation$updatePostingTaskStatus._({
    r'postingTaskId': postingTaskId,
    r'paymentPostingTaskStatus': paymentPostingTaskStatus,
  });

  Variables$Mutation$updatePostingTaskStatus._(this._$data);

  factory Variables$Mutation$updatePostingTaskStatus.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$postingTaskId = data['postingTaskId'];
    result$data['postingTaskId'] = (l$postingTaskId as String);
    final l$paymentPostingTaskStatus = data['paymentPostingTaskStatus'];
    result$data['paymentPostingTaskStatus'] =
        fromJson$Enum$PaymentPostingTaskStatus(
          (l$paymentPostingTaskStatus as String),
        );
    return Variables$Mutation$updatePostingTaskStatus._(result$data);
  }

  Map<String, dynamic> _$data;

  String get postingTaskId => (_$data['postingTaskId'] as String);

  Enum$PaymentPostingTaskStatus get paymentPostingTaskStatus =>
      (_$data['paymentPostingTaskStatus'] as Enum$PaymentPostingTaskStatus);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$postingTaskId = postingTaskId;
    result$data['postingTaskId'] = l$postingTaskId;
    final l$paymentPostingTaskStatus = paymentPostingTaskStatus;
    result$data['paymentPostingTaskStatus'] =
        toJson$Enum$PaymentPostingTaskStatus(l$paymentPostingTaskStatus);
    return result$data;
  }

  CopyWith$Variables$Mutation$updatePostingTaskStatus<
    Variables$Mutation$updatePostingTaskStatus
  >
  get copyWith =>
      CopyWith$Variables$Mutation$updatePostingTaskStatus(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$updatePostingTaskStatus ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$postingTaskId = postingTaskId;
    final lOther$postingTaskId = other.postingTaskId;
    if (l$postingTaskId != lOther$postingTaskId) {
      return false;
    }
    final l$paymentPostingTaskStatus = paymentPostingTaskStatus;
    final lOther$paymentPostingTaskStatus = other.paymentPostingTaskStatus;
    if (l$paymentPostingTaskStatus != lOther$paymentPostingTaskStatus) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$postingTaskId = postingTaskId;
    final l$paymentPostingTaskStatus = paymentPostingTaskStatus;
    return Object.hashAll([l$postingTaskId, l$paymentPostingTaskStatus]);
  }
}

abstract class CopyWith$Variables$Mutation$updatePostingTaskStatus<TRes> {
  factory CopyWith$Variables$Mutation$updatePostingTaskStatus(
    Variables$Mutation$updatePostingTaskStatus instance,
    TRes Function(Variables$Mutation$updatePostingTaskStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$updatePostingTaskStatus;

  factory CopyWith$Variables$Mutation$updatePostingTaskStatus.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updatePostingTaskStatus;

  TRes call({
    String? postingTaskId,
    Enum$PaymentPostingTaskStatus? paymentPostingTaskStatus,
  });
}

class _CopyWithImpl$Variables$Mutation$updatePostingTaskStatus<TRes>
    implements CopyWith$Variables$Mutation$updatePostingTaskStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$updatePostingTaskStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updatePostingTaskStatus _instance;

  final TRes Function(Variables$Mutation$updatePostingTaskStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? postingTaskId = _undefined,
    Object? paymentPostingTaskStatus = _undefined,
  }) => _then(
    Variables$Mutation$updatePostingTaskStatus._({
      ..._instance._$data,
      if (postingTaskId != _undefined && postingTaskId != null)
        'postingTaskId': (postingTaskId as String),
      if (paymentPostingTaskStatus != _undefined &&
          paymentPostingTaskStatus != null)
        'paymentPostingTaskStatus':
            (paymentPostingTaskStatus as Enum$PaymentPostingTaskStatus),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$updatePostingTaskStatus<TRes>
    implements CopyWith$Variables$Mutation$updatePostingTaskStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updatePostingTaskStatus(this._res);

  TRes _res;

  call({
    String? postingTaskId,
    Enum$PaymentPostingTaskStatus? paymentPostingTaskStatus,
  }) => _res;
}

class Mutation$updatePostingTaskStatus {
  Mutation$updatePostingTaskStatus({
    required this.setPostingTaskStatus,
    this.$__typename = 'Mutation',
  });

  factory Mutation$updatePostingTaskStatus.fromJson(Map<String, dynamic> json) {
    final l$setPostingTaskStatus = json['setPostingTaskStatus'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePostingTaskStatus(
      setPostingTaskStatus:
          Mutation$updatePostingTaskStatus$setPostingTaskStatus.fromJson(
            (l$setPostingTaskStatus as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updatePostingTaskStatus$setPostingTaskStatus
  setPostingTaskStatus;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$setPostingTaskStatus = setPostingTaskStatus;
    _resultData['setPostingTaskStatus'] = l$setPostingTaskStatus.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$setPostingTaskStatus = setPostingTaskStatus;
    final l$$__typename = $__typename;
    return Object.hashAll([l$setPostingTaskStatus, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$updatePostingTaskStatus ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$setPostingTaskStatus = setPostingTaskStatus;
    final lOther$setPostingTaskStatus = other.setPostingTaskStatus;
    if (l$setPostingTaskStatus != lOther$setPostingTaskStatus) {
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

extension UtilityExtension$Mutation$updatePostingTaskStatus
    on Mutation$updatePostingTaskStatus {
  CopyWith$Mutation$updatePostingTaskStatus<Mutation$updatePostingTaskStatus>
  get copyWith => CopyWith$Mutation$updatePostingTaskStatus(this, (i) => i);
}

abstract class CopyWith$Mutation$updatePostingTaskStatus<TRes> {
  factory CopyWith$Mutation$updatePostingTaskStatus(
    Mutation$updatePostingTaskStatus instance,
    TRes Function(Mutation$updatePostingTaskStatus) then,
  ) = _CopyWithImpl$Mutation$updatePostingTaskStatus;

  factory CopyWith$Mutation$updatePostingTaskStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePostingTaskStatus;

  TRes call({
    Mutation$updatePostingTaskStatus$setPostingTaskStatus? setPostingTaskStatus,
    String? $__typename,
  });
  CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus<TRes>
  get setPostingTaskStatus;
}

class _CopyWithImpl$Mutation$updatePostingTaskStatus<TRes>
    implements CopyWith$Mutation$updatePostingTaskStatus<TRes> {
  _CopyWithImpl$Mutation$updatePostingTaskStatus(this._instance, this._then);

  final Mutation$updatePostingTaskStatus _instance;

  final TRes Function(Mutation$updatePostingTaskStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? setPostingTaskStatus = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$updatePostingTaskStatus(
      setPostingTaskStatus:
          setPostingTaskStatus == _undefined || setPostingTaskStatus == null
          ? _instance.setPostingTaskStatus
          : (setPostingTaskStatus
                as Mutation$updatePostingTaskStatus$setPostingTaskStatus),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus<TRes>
  get setPostingTaskStatus {
    final local$setPostingTaskStatus = _instance.setPostingTaskStatus;
    return CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus(
      local$setPostingTaskStatus,
      (e) => call(setPostingTaskStatus: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$updatePostingTaskStatus<TRes>
    implements CopyWith$Mutation$updatePostingTaskStatus<TRes> {
  _CopyWithStubImpl$Mutation$updatePostingTaskStatus(this._res);

  TRes _res;

  call({
    Mutation$updatePostingTaskStatus$setPostingTaskStatus? setPostingTaskStatus,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus<TRes>
  get setPostingTaskStatus =>
      CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus.stub(_res);
}

const documentNodeMutationupdatePostingTaskStatus = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updatePostingTaskStatus'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'postingTaskId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'paymentPostingTaskStatus'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'PaymentPostingTaskStatus'),
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
            name: NameNode(value: 'setPostingTaskStatus'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'postingTaskId'),
                value: VariableNode(name: NameNode(value: 'postingTaskId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'paymentPostingTaskStatus'),
                value: VariableNode(
                  name: NameNode(value: 'paymentPostingTaskStatus'),
                ),
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

class Mutation$updatePostingTaskStatus$setPostingTaskStatus {
  Mutation$updatePostingTaskStatus$setPostingTaskStatus({
    required this.result,
    required this.isSuccess,
    this.error,
    this.warning,
    this.$__typename = 'ApiResponseOfBoolean',
  });

  factory Mutation$updatePostingTaskStatus$setPostingTaskStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$isSuccess = json['isSuccess'];
    final l$error = json['error'];
    final l$warning = json['warning'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePostingTaskStatus$setPostingTaskStatus(
      result: (l$result as bool),
      isSuccess: (l$isSuccess as bool),
      error: l$error == null
          ? null
          : Mutation$updatePostingTaskStatus$setPostingTaskStatus$error.fromJson(
              (l$error as Map<String, dynamic>),
            ),
      warning: l$warning == null
          ? null
          : Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning.fromJson(
              (l$warning as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool result;

  final bool isSuccess;

  final Mutation$updatePostingTaskStatus$setPostingTaskStatus$error? error;

  final Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning? warning;

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
    if (other is! Mutation$updatePostingTaskStatus$setPostingTaskStatus ||
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

extension UtilityExtension$Mutation$updatePostingTaskStatus$setPostingTaskStatus
    on Mutation$updatePostingTaskStatus$setPostingTaskStatus {
  CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus<
    Mutation$updatePostingTaskStatus$setPostingTaskStatus
  >
  get copyWith =>
      CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus<
  TRes
> {
  factory CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus(
    Mutation$updatePostingTaskStatus$setPostingTaskStatus instance,
    TRes Function(Mutation$updatePostingTaskStatus$setPostingTaskStatus) then,
  ) = _CopyWithImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus;

  factory CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus;

  TRes call({
    bool? result,
    bool? isSuccess,
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$error? error,
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning? warning,
    String? $__typename,
  });
  CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error<TRes>
  get error;
  CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning<TRes>
  get warning;
}

class _CopyWithImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus<TRes>
    implements
        CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus<TRes> {
  _CopyWithImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus(
    this._instance,
    this._then,
  );

  final Mutation$updatePostingTaskStatus$setPostingTaskStatus _instance;

  final TRes Function(Mutation$updatePostingTaskStatus$setPostingTaskStatus)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? result = _undefined,
    Object? isSuccess = _undefined,
    Object? error = _undefined,
    Object? warning = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$updatePostingTaskStatus$setPostingTaskStatus(
      result: result == _undefined || result == null
          ? _instance.result
          : (result as bool),
      isSuccess: isSuccess == _undefined || isSuccess == null
          ? _instance.isSuccess
          : (isSuccess as bool),
      error: error == _undefined
          ? _instance.error
          : (error
                as Mutation$updatePostingTaskStatus$setPostingTaskStatus$error?),
      warning: warning == _undefined
          ? _instance.warning
          : (warning
                as Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error<TRes>
  get error {
    final local$error = _instance.error;
    return local$error == null
        ? CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error(
            local$error,
            (e) => call(error: e),
          );
  }

  CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning<TRes>
  get warning {
    final local$warning = _instance.warning;
    return local$warning == null
        ? CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning(
            local$warning,
            (e) => call(warning: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus<
  TRes
>
    implements
        CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus<TRes> {
  _CopyWithStubImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus(
    this._res,
  );

  TRes _res;

  call({
    bool? result,
    bool? isSuccess,
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$error? error,
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning? warning,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error<TRes>
  get error =>
      CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error.stub(
        _res,
      );

  CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning<TRes>
  get warning =>
      CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning.stub(
        _res,
      );
}

class Mutation$updatePostingTaskStatus$setPostingTaskStatus$error {
  Mutation$updatePostingTaskStatus$setPostingTaskStatus$error({
    required this.errorCode,
    required this.errorMessage,
    required this.details,
    this.$__typename = 'ApiError',
  });

  factory Mutation$updatePostingTaskStatus$setPostingTaskStatus$error.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$errorCode = json['errorCode'];
    final l$errorMessage = json['errorMessage'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePostingTaskStatus$setPostingTaskStatus$error(
      errorCode: (l$errorCode as String),
      errorMessage: (l$errorMessage as String),
      details: (l$details as List<dynamic>)
          .map(
            (e) =>
                Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details.fromJson(
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
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details
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
    if (other is! Mutation$updatePostingTaskStatus$setPostingTaskStatus$error ||
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

extension UtilityExtension$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error
    on Mutation$updatePostingTaskStatus$setPostingTaskStatus$error {
  CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error<
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$error
  >
  get copyWith =>
      CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error<
  TRes
> {
  factory CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error(
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$error instance,
    TRes Function(Mutation$updatePostingTaskStatus$setPostingTaskStatus$error)
    then,
  ) = _CopyWithImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error;

  factory CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error;

  TRes call({
    String? errorCode,
    String? errorMessage,
    List<Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details>?
    details,
    String? $__typename,
  });
  TRes details(
    Iterable<
      Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details
    >
    Function(
      Iterable<
        CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details<
          Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error<
  TRes
>
    implements
        CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error<
          TRes
        > {
  _CopyWithImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error(
    this._instance,
    this._then,
  );

  final Mutation$updatePostingTaskStatus$setPostingTaskStatus$error _instance;

  final TRes Function(
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$error,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? errorCode = _undefined,
    Object? errorMessage = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$error(
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
                  Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes details(
    Iterable<
      Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details
    >
    Function(
      Iterable<
        CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details<
          Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details
        >
      >,
    )
    _fn,
  ) => call(
    details: _fn(
      _instance.details.map(
        (e) =>
            CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error<
  TRes
>
    implements
        CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error<
          TRes
        > {
  _CopyWithStubImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error(
    this._res,
  );

  TRes _res;

  call({
    String? errorCode,
    String? errorMessage,
    List<Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details>?
    details,
    String? $__typename,
  }) => _res;

  details(_fn) => _res;
}

class Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details {
  Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details(
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
            is! Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details ||
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

extension UtilityExtension$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details
    on Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details {
  CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details<
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details
  >
  get copyWith =>
      CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details<
  TRes
> {
  factory CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details(
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details
    instance,
    TRes Function(
      Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details,
    )
    then,
  ) = _CopyWithImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details;

  factory CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details<
  TRes
>
    implements
        CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details<
          TRes
        > {
  _CopyWithImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details(
    this._instance,
    this._then,
  );

  final Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details
  _instance;

  final TRes Function(
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details(
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

class _CopyWithStubImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details<
  TRes
>
    implements
        CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details<
          TRes
        > {
  _CopyWithStubImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$error$details(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}

class Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning {
  Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning({
    required this.code,
    required this.message,
    required this.details,
    this.$__typename = 'ApiWarning',
  });

  factory Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning(
      code: (l$code as String),
      message: (l$message as String),
      details: (l$details as List<dynamic>)
          .map(
            (e) =>
                Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details.fromJson(
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
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details
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
            is! Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning ||
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

extension UtilityExtension$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning
    on Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning {
  CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning<
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning
  >
  get copyWith =>
      CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning<
  TRes
> {
  factory CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning(
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning instance,
    TRes Function(Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning)
    then,
  ) = _CopyWithImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning;

  factory CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning;

  TRes call({
    String? code,
    String? message,
    List<Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details>?
    details,
    String? $__typename,
  });
  TRes details(
    Iterable<
      Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details
    >
    Function(
      Iterable<
        CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details<
          Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning<
  TRes
>
    implements
        CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning<
          TRes
        > {
  _CopyWithImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning(
    this._instance,
    this._then,
  );

  final Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning _instance;

  final TRes Function(
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning(
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
                  Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes details(
    Iterable<
      Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details
    >
    Function(
      Iterable<
        CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details<
          Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details
        >
      >,
    )
    _fn,
  ) => call(
    details: _fn(
      _instance.details.map(
        (e) =>
            CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning<
  TRes
>
    implements
        CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning<
          TRes
        > {
  _CopyWithStubImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    String? message,
    List<Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details>?
    details,
    String? $__typename,
  }) => _res;

  details(_fn) => _res;
}

class Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details {
  Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details(
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
            is! Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details ||
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

extension UtilityExtension$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details
    on Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details {
  CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details<
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details
  >
  get copyWith =>
      CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details<
  TRes
> {
  factory CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details(
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details
    instance,
    TRes Function(
      Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details,
    )
    then,
  ) = _CopyWithImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details;

  factory CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details<
  TRes
>
    implements
        CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details<
          TRes
        > {
  _CopyWithImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details(
    this._instance,
    this._then,
  );

  final Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details
  _instance;

  final TRes Function(
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details(
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

class _CopyWithStubImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details<
  TRes
>
    implements
        CopyWith$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details<
          TRes
        > {
  _CopyWithStubImpl$Mutation$updatePostingTaskStatus$setPostingTaskStatus$warning$details(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}
