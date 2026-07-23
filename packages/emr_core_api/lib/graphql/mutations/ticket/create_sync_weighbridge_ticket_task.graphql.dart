import 'package:gql/ast.dart';

class Variables$Mutation$createSyncWeighbridgeTicketTask {
  factory Variables$Mutation$createSyncWeighbridgeTicketTask({
    required String ticketId,
  }) => Variables$Mutation$createSyncWeighbridgeTicketTask._({
    r'ticketId': ticketId,
  });

  Variables$Mutation$createSyncWeighbridgeTicketTask._(this._$data);

  factory Variables$Mutation$createSyncWeighbridgeTicketTask.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$ticketId = data['ticketId'];
    result$data['ticketId'] = (l$ticketId as String);
    return Variables$Mutation$createSyncWeighbridgeTicketTask._(result$data);
  }

  Map<String, dynamic> _$data;

  String get ticketId => (_$data['ticketId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$ticketId = ticketId;
    result$data['ticketId'] = l$ticketId;
    return result$data;
  }

  CopyWith$Variables$Mutation$createSyncWeighbridgeTicketTask<
    Variables$Mutation$createSyncWeighbridgeTicketTask
  >
  get copyWith => CopyWith$Variables$Mutation$createSyncWeighbridgeTicketTask(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$createSyncWeighbridgeTicketTask ||
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

abstract class CopyWith$Variables$Mutation$createSyncWeighbridgeTicketTask<
  TRes
> {
  factory CopyWith$Variables$Mutation$createSyncWeighbridgeTicketTask(
    Variables$Mutation$createSyncWeighbridgeTicketTask instance,
    TRes Function(Variables$Mutation$createSyncWeighbridgeTicketTask) then,
  ) = _CopyWithImpl$Variables$Mutation$createSyncWeighbridgeTicketTask;

  factory CopyWith$Variables$Mutation$createSyncWeighbridgeTicketTask.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$createSyncWeighbridgeTicketTask;

  TRes call({String? ticketId});
}

class _CopyWithImpl$Variables$Mutation$createSyncWeighbridgeTicketTask<TRes>
    implements
        CopyWith$Variables$Mutation$createSyncWeighbridgeTicketTask<TRes> {
  _CopyWithImpl$Variables$Mutation$createSyncWeighbridgeTicketTask(
    this._instance,
    this._then,
  );

  final Variables$Mutation$createSyncWeighbridgeTicketTask _instance;

  final TRes Function(Variables$Mutation$createSyncWeighbridgeTicketTask) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? ticketId = _undefined}) => _then(
    Variables$Mutation$createSyncWeighbridgeTicketTask._({
      ..._instance._$data,
      if (ticketId != _undefined && ticketId != null)
        'ticketId': (ticketId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$createSyncWeighbridgeTicketTask<TRes>
    implements
        CopyWith$Variables$Mutation$createSyncWeighbridgeTicketTask<TRes> {
  _CopyWithStubImpl$Variables$Mutation$createSyncWeighbridgeTicketTask(
    this._res,
  );

  TRes _res;

  call({String? ticketId}) => _res;
}

class Mutation$createSyncWeighbridgeTicketTask {
  Mutation$createSyncWeighbridgeTicketTask({
    required this.createSyncWeighbridgeTicketTask,
    this.$__typename = 'Mutation',
  });

  factory Mutation$createSyncWeighbridgeTicketTask.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$createSyncWeighbridgeTicketTask =
        json['createSyncWeighbridgeTicketTask'];
    final l$$__typename = json['__typename'];
    return Mutation$createSyncWeighbridgeTicketTask(
      createSyncWeighbridgeTicketTask:
          Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask.fromJson(
            (l$createSyncWeighbridgeTicketTask as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask
  createSyncWeighbridgeTicketTask;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createSyncWeighbridgeTicketTask = createSyncWeighbridgeTicketTask;
    _resultData['createSyncWeighbridgeTicketTask'] =
        l$createSyncWeighbridgeTicketTask.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createSyncWeighbridgeTicketTask = createSyncWeighbridgeTicketTask;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createSyncWeighbridgeTicketTask, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createSyncWeighbridgeTicketTask ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createSyncWeighbridgeTicketTask = createSyncWeighbridgeTicketTask;
    final lOther$createSyncWeighbridgeTicketTask =
        other.createSyncWeighbridgeTicketTask;
    if (l$createSyncWeighbridgeTicketTask !=
        lOther$createSyncWeighbridgeTicketTask) {
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

extension UtilityExtension$Mutation$createSyncWeighbridgeTicketTask
    on Mutation$createSyncWeighbridgeTicketTask {
  CopyWith$Mutation$createSyncWeighbridgeTicketTask<
    Mutation$createSyncWeighbridgeTicketTask
  >
  get copyWith =>
      CopyWith$Mutation$createSyncWeighbridgeTicketTask(this, (i) => i);
}

abstract class CopyWith$Mutation$createSyncWeighbridgeTicketTask<TRes> {
  factory CopyWith$Mutation$createSyncWeighbridgeTicketTask(
    Mutation$createSyncWeighbridgeTicketTask instance,
    TRes Function(Mutation$createSyncWeighbridgeTicketTask) then,
  ) = _CopyWithImpl$Mutation$createSyncWeighbridgeTicketTask;

  factory CopyWith$Mutation$createSyncWeighbridgeTicketTask.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createSyncWeighbridgeTicketTask;

  TRes call({
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask?
    createSyncWeighbridgeTicketTask,
    String? $__typename,
  });
  CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask<
    TRes
  >
  get createSyncWeighbridgeTicketTask;
}

class _CopyWithImpl$Mutation$createSyncWeighbridgeTicketTask<TRes>
    implements CopyWith$Mutation$createSyncWeighbridgeTicketTask<TRes> {
  _CopyWithImpl$Mutation$createSyncWeighbridgeTicketTask(
    this._instance,
    this._then,
  );

  final Mutation$createSyncWeighbridgeTicketTask _instance;

  final TRes Function(Mutation$createSyncWeighbridgeTicketTask) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createSyncWeighbridgeTicketTask = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$createSyncWeighbridgeTicketTask(
      createSyncWeighbridgeTicketTask:
          createSyncWeighbridgeTicketTask == _undefined ||
              createSyncWeighbridgeTicketTask == null
          ? _instance.createSyncWeighbridgeTicketTask
          : (createSyncWeighbridgeTicketTask
                as Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask<
    TRes
  >
  get createSyncWeighbridgeTicketTask {
    final local$createSyncWeighbridgeTicketTask =
        _instance.createSyncWeighbridgeTicketTask;
    return CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask(
      local$createSyncWeighbridgeTicketTask,
      (e) => call(createSyncWeighbridgeTicketTask: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$createSyncWeighbridgeTicketTask<TRes>
    implements CopyWith$Mutation$createSyncWeighbridgeTicketTask<TRes> {
  _CopyWithStubImpl$Mutation$createSyncWeighbridgeTicketTask(this._res);

  TRes _res;

  call({
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask?
    createSyncWeighbridgeTicketTask,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask<
    TRes
  >
  get createSyncWeighbridgeTicketTask =>
      CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask.stub(
        _res,
      );
}

const documentNodeMutationcreateSyncWeighbridgeTicketTask = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createSyncWeighbridgeTicketTask'),
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
            name: NameNode(value: 'createSyncWeighbridgeTicketTask'),
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

class Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask {
  Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask({
    required this.result,
    required this.isSuccess,
    this.error,
    this.warning,
    this.$__typename = 'ApiResponseOfBoolean',
  });

  factory Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$isSuccess = json['isSuccess'];
    final l$error = json['error'];
    final l$warning = json['warning'];
    final l$$__typename = json['__typename'];
    return Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask(
      result: (l$result as bool),
      isSuccess: (l$isSuccess as bool),
      error: l$error == null
          ? null
          : Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error.fromJson(
              (l$error as Map<String, dynamic>),
            ),
      warning: l$warning == null
          ? null
          : Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning.fromJson(
              (l$warning as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool result;

  final bool isSuccess;

  final Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error?
  error;

  final Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning?
  warning;

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
    if (other
            is! Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask ||
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

extension UtilityExtension$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask
    on Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask {
  CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask<
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask
  >
  get copyWith =>
      CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask<
  TRes
> {
  factory CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask(
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask
    instance,
    TRes Function(
      Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask,
    )
    then,
  ) = _CopyWithImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask;

  factory CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask;

  TRes call({
    bool? result,
    bool? isSuccess,
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error?
    error,
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning?
    warning,
    String? $__typename,
  });
  CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error<
    TRes
  >
  get error;
  CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning<
    TRes
  >
  get warning;
}

class _CopyWithImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask<
  TRes
>
    implements
        CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask<
          TRes
        > {
  _CopyWithImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask(
    this._instance,
    this._then,
  );

  final Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask
  _instance;

  final TRes Function(
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? result = _undefined,
    Object? isSuccess = _undefined,
    Object? error = _undefined,
    Object? warning = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask(
      result: result == _undefined || result == null
          ? _instance.result
          : (result as bool),
      isSuccess: isSuccess == _undefined || isSuccess == null
          ? _instance.isSuccess
          : (isSuccess as bool),
      error: error == _undefined
          ? _instance.error
          : (error
                as Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error?),
      warning: warning == _undefined
          ? _instance.warning
          : (warning
                as Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error<
    TRes
  >
  get error {
    final local$error = _instance.error;
    return local$error == null
        ? CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error(
            local$error,
            (e) => call(error: e),
          );
  }

  CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning<
    TRes
  >
  get warning {
    final local$warning = _instance.warning;
    return local$warning == null
        ? CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning(
            local$warning,
            (e) => call(warning: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask<
  TRes
>
    implements
        CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask<
          TRes
        > {
  _CopyWithStubImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask(
    this._res,
  );

  TRes _res;

  call({
    bool? result,
    bool? isSuccess,
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error?
    error,
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning?
    warning,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error<
    TRes
  >
  get error =>
      CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error.stub(
        _res,
      );

  CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning<
    TRes
  >
  get warning =>
      CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning.stub(
        _res,
      );
}

class Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error {
  Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error({
    required this.errorCode,
    required this.errorMessage,
    required this.details,
    this.$__typename = 'ApiError',
  });

  factory Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$errorCode = json['errorCode'];
    final l$errorMessage = json['errorMessage'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error(
      errorCode: (l$errorCode as String),
      errorMessage: (l$errorMessage as String),
      details: (l$details as List<dynamic>)
          .map(
            (e) =>
                Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details.fromJson(
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
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details
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
            is! Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error ||
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

extension UtilityExtension$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error
    on Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error {
  CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error<
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error
  >
  get copyWith =>
      CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error<
  TRes
> {
  factory CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error(
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error
    instance,
    TRes Function(
      Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error,
    )
    then,
  ) = _CopyWithImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error;

  factory CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error;

  TRes call({
    String? errorCode,
    String? errorMessage,
    List<
      Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details
    >?
    details,
    String? $__typename,
  });
  TRes details(
    Iterable<
      Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details
    >
    Function(
      Iterable<
        CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details<
          Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error<
  TRes
>
    implements
        CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error<
          TRes
        > {
  _CopyWithImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error(
    this._instance,
    this._then,
  );

  final Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error
  _instance;

  final TRes Function(
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? errorCode = _undefined,
    Object? errorMessage = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error(
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
                  Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes details(
    Iterable<
      Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details
    >
    Function(
      Iterable<
        CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details<
          Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details
        >
      >,
    )
    _fn,
  ) => call(
    details: _fn(
      _instance.details.map(
        (e) =>
            CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error<
  TRes
>
    implements
        CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error<
          TRes
        > {
  _CopyWithStubImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error(
    this._res,
  );

  TRes _res;

  call({
    String? errorCode,
    String? errorMessage,
    List<
      Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details
    >?
    details,
    String? $__typename,
  }) => _res;

  details(_fn) => _res;
}

class Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details {
  Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details(
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
            is! Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details ||
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

extension UtilityExtension$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details
    on
        Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details {
  CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details<
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details
  >
  get copyWith =>
      CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details<
  TRes
> {
  factory CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details(
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details
    instance,
    TRes Function(
      Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details,
    )
    then,
  ) = _CopyWithImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details;

  factory CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details<
  TRes
>
    implements
        CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details<
          TRes
        > {
  _CopyWithImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details(
    this._instance,
    this._then,
  );

  final Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details
  _instance;

  final TRes Function(
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details(
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

class _CopyWithStubImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details<
  TRes
>
    implements
        CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details<
          TRes
        > {
  _CopyWithStubImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$error$details(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}

class Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning {
  Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning({
    required this.code,
    required this.message,
    required this.details,
    this.$__typename = 'ApiWarning',
  });

  factory Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning(
      code: (l$code as String),
      message: (l$message as String),
      details: (l$details as List<dynamic>)
          .map(
            (e) =>
                Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details.fromJson(
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
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details
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
            is! Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning ||
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

extension UtilityExtension$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning
    on
        Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning {
  CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning<
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning
  >
  get copyWith =>
      CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning<
  TRes
> {
  factory CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning(
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning
    instance,
    TRes Function(
      Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning,
    )
    then,
  ) = _CopyWithImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning;

  factory CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning;

  TRes call({
    String? code,
    String? message,
    List<
      Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details
    >?
    details,
    String? $__typename,
  });
  TRes details(
    Iterable<
      Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details
    >
    Function(
      Iterable<
        CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details<
          Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning<
  TRes
>
    implements
        CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning<
          TRes
        > {
  _CopyWithImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning(
    this._instance,
    this._then,
  );

  final Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning
  _instance;

  final TRes Function(
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning(
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
                  Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes details(
    Iterable<
      Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details
    >
    Function(
      Iterable<
        CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details<
          Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details
        >
      >,
    )
    _fn,
  ) => call(
    details: _fn(
      _instance.details.map(
        (e) =>
            CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning<
  TRes
>
    implements
        CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning<
          TRes
        > {
  _CopyWithStubImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    String? message,
    List<
      Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details
    >?
    details,
    String? $__typename,
  }) => _res;

  details(_fn) => _res;
}

class Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details {
  Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details(
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
            is! Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details ||
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

extension UtilityExtension$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details
    on
        Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details {
  CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details<
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details
  >
  get copyWith =>
      CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details<
  TRes
> {
  factory CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details(
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details
    instance,
    TRes Function(
      Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details,
    )
    then,
  ) = _CopyWithImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details;

  factory CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details<
  TRes
>
    implements
        CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details<
          TRes
        > {
  _CopyWithImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details(
    this._instance,
    this._then,
  );

  final Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details
  _instance;

  final TRes Function(
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details(
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

class _CopyWithStubImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details<
  TRes
>
    implements
        CopyWith$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details<
          TRes
        > {
  _CopyWithStubImpl$Mutation$createSyncWeighbridgeTicketTask$createSyncWeighbridgeTicketTask$warning$details(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}
