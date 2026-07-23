import 'package:gql/ast.dart';

class Variables$Mutation$ReSyncTicket {
  factory Variables$Mutation$ReSyncTicket({required String ticketId}) =>
      Variables$Mutation$ReSyncTicket._({r'ticketId': ticketId});

  Variables$Mutation$ReSyncTicket._(this._$data);

  factory Variables$Mutation$ReSyncTicket.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$ticketId = data['ticketId'];
    result$data['ticketId'] = (l$ticketId as String);
    return Variables$Mutation$ReSyncTicket._(result$data);
  }

  Map<String, dynamic> _$data;

  String get ticketId => (_$data['ticketId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$ticketId = ticketId;
    result$data['ticketId'] = l$ticketId;
    return result$data;
  }

  CopyWith$Variables$Mutation$ReSyncTicket<Variables$Mutation$ReSyncTicket>
  get copyWith => CopyWith$Variables$Mutation$ReSyncTicket(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ReSyncTicket ||
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

abstract class CopyWith$Variables$Mutation$ReSyncTicket<TRes> {
  factory CopyWith$Variables$Mutation$ReSyncTicket(
    Variables$Mutation$ReSyncTicket instance,
    TRes Function(Variables$Mutation$ReSyncTicket) then,
  ) = _CopyWithImpl$Variables$Mutation$ReSyncTicket;

  factory CopyWith$Variables$Mutation$ReSyncTicket.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ReSyncTicket;

  TRes call({String? ticketId});
}

class _CopyWithImpl$Variables$Mutation$ReSyncTicket<TRes>
    implements CopyWith$Variables$Mutation$ReSyncTicket<TRes> {
  _CopyWithImpl$Variables$Mutation$ReSyncTicket(this._instance, this._then);

  final Variables$Mutation$ReSyncTicket _instance;

  final TRes Function(Variables$Mutation$ReSyncTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? ticketId = _undefined}) => _then(
    Variables$Mutation$ReSyncTicket._({
      ..._instance._$data,
      if (ticketId != _undefined && ticketId != null)
        'ticketId': (ticketId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ReSyncTicket<TRes>
    implements CopyWith$Variables$Mutation$ReSyncTicket<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ReSyncTicket(this._res);

  TRes _res;

  call({String? ticketId}) => _res;
}

class Mutation$ReSyncTicket {
  Mutation$ReSyncTicket({
    required this.reSyncTicket,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ReSyncTicket.fromJson(Map<String, dynamic> json) {
    final l$reSyncTicket = json['reSyncTicket'];
    final l$$__typename = json['__typename'];
    return Mutation$ReSyncTicket(
      reSyncTicket: Mutation$ReSyncTicket$reSyncTicket.fromJson(
        (l$reSyncTicket as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ReSyncTicket$reSyncTicket reSyncTicket;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$reSyncTicket = reSyncTicket;
    _resultData['reSyncTicket'] = l$reSyncTicket.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$reSyncTicket = reSyncTicket;
    final l$$__typename = $__typename;
    return Object.hashAll([l$reSyncTicket, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ReSyncTicket || runtimeType != other.runtimeType) {
      return false;
    }
    final l$reSyncTicket = reSyncTicket;
    final lOther$reSyncTicket = other.reSyncTicket;
    if (l$reSyncTicket != lOther$reSyncTicket) {
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

extension UtilityExtension$Mutation$ReSyncTicket on Mutation$ReSyncTicket {
  CopyWith$Mutation$ReSyncTicket<Mutation$ReSyncTicket> get copyWith =>
      CopyWith$Mutation$ReSyncTicket(this, (i) => i);
}

abstract class CopyWith$Mutation$ReSyncTicket<TRes> {
  factory CopyWith$Mutation$ReSyncTicket(
    Mutation$ReSyncTicket instance,
    TRes Function(Mutation$ReSyncTicket) then,
  ) = _CopyWithImpl$Mutation$ReSyncTicket;

  factory CopyWith$Mutation$ReSyncTicket.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ReSyncTicket;

  TRes call({
    Mutation$ReSyncTicket$reSyncTicket? reSyncTicket,
    String? $__typename,
  });
  CopyWith$Mutation$ReSyncTicket$reSyncTicket<TRes> get reSyncTicket;
}

class _CopyWithImpl$Mutation$ReSyncTicket<TRes>
    implements CopyWith$Mutation$ReSyncTicket<TRes> {
  _CopyWithImpl$Mutation$ReSyncTicket(this._instance, this._then);

  final Mutation$ReSyncTicket _instance;

  final TRes Function(Mutation$ReSyncTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reSyncTicket = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ReSyncTicket(
      reSyncTicket: reSyncTicket == _undefined || reSyncTicket == null
          ? _instance.reSyncTicket
          : (reSyncTicket as Mutation$ReSyncTicket$reSyncTicket),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ReSyncTicket$reSyncTicket<TRes> get reSyncTicket {
    final local$reSyncTicket = _instance.reSyncTicket;
    return CopyWith$Mutation$ReSyncTicket$reSyncTicket(
      local$reSyncTicket,
      (e) => call(reSyncTicket: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ReSyncTicket<TRes>
    implements CopyWith$Mutation$ReSyncTicket<TRes> {
  _CopyWithStubImpl$Mutation$ReSyncTicket(this._res);

  TRes _res;

  call({
    Mutation$ReSyncTicket$reSyncTicket? reSyncTicket,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ReSyncTicket$reSyncTicket<TRes> get reSyncTicket =>
      CopyWith$Mutation$ReSyncTicket$reSyncTicket.stub(_res);
}

const documentNodeMutationReSyncTicket = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ReSyncTicket'),
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
            name: NameNode(value: 'reSyncTicket'),
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

class Mutation$ReSyncTicket$reSyncTicket {
  Mutation$ReSyncTicket$reSyncTicket({
    required this.result,
    required this.isSuccess,
    this.error,
    this.warning,
    this.$__typename = 'ApiResponseOfBoolean',
  });

  factory Mutation$ReSyncTicket$reSyncTicket.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$isSuccess = json['isSuccess'];
    final l$error = json['error'];
    final l$warning = json['warning'];
    final l$$__typename = json['__typename'];
    return Mutation$ReSyncTicket$reSyncTicket(
      result: (l$result as bool),
      isSuccess: (l$isSuccess as bool),
      error: l$error == null
          ? null
          : Mutation$ReSyncTicket$reSyncTicket$error.fromJson(
              (l$error as Map<String, dynamic>),
            ),
      warning: l$warning == null
          ? null
          : Mutation$ReSyncTicket$reSyncTicket$warning.fromJson(
              (l$warning as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool result;

  final bool isSuccess;

  final Mutation$ReSyncTicket$reSyncTicket$error? error;

  final Mutation$ReSyncTicket$reSyncTicket$warning? warning;

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
    if (other is! Mutation$ReSyncTicket$reSyncTicket ||
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

extension UtilityExtension$Mutation$ReSyncTicket$reSyncTicket
    on Mutation$ReSyncTicket$reSyncTicket {
  CopyWith$Mutation$ReSyncTicket$reSyncTicket<
    Mutation$ReSyncTicket$reSyncTicket
  >
  get copyWith => CopyWith$Mutation$ReSyncTicket$reSyncTicket(this, (i) => i);
}

abstract class CopyWith$Mutation$ReSyncTicket$reSyncTicket<TRes> {
  factory CopyWith$Mutation$ReSyncTicket$reSyncTicket(
    Mutation$ReSyncTicket$reSyncTicket instance,
    TRes Function(Mutation$ReSyncTicket$reSyncTicket) then,
  ) = _CopyWithImpl$Mutation$ReSyncTicket$reSyncTicket;

  factory CopyWith$Mutation$ReSyncTicket$reSyncTicket.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ReSyncTicket$reSyncTicket;

  TRes call({
    bool? result,
    bool? isSuccess,
    Mutation$ReSyncTicket$reSyncTicket$error? error,
    Mutation$ReSyncTicket$reSyncTicket$warning? warning,
    String? $__typename,
  });
  CopyWith$Mutation$ReSyncTicket$reSyncTicket$error<TRes> get error;
  CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning<TRes> get warning;
}

class _CopyWithImpl$Mutation$ReSyncTicket$reSyncTicket<TRes>
    implements CopyWith$Mutation$ReSyncTicket$reSyncTicket<TRes> {
  _CopyWithImpl$Mutation$ReSyncTicket$reSyncTicket(this._instance, this._then);

  final Mutation$ReSyncTicket$reSyncTicket _instance;

  final TRes Function(Mutation$ReSyncTicket$reSyncTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? result = _undefined,
    Object? isSuccess = _undefined,
    Object? error = _undefined,
    Object? warning = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ReSyncTicket$reSyncTicket(
      result: result == _undefined || result == null
          ? _instance.result
          : (result as bool),
      isSuccess: isSuccess == _undefined || isSuccess == null
          ? _instance.isSuccess
          : (isSuccess as bool),
      error: error == _undefined
          ? _instance.error
          : (error as Mutation$ReSyncTicket$reSyncTicket$error?),
      warning: warning == _undefined
          ? _instance.warning
          : (warning as Mutation$ReSyncTicket$reSyncTicket$warning?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ReSyncTicket$reSyncTicket$error<TRes> get error {
    final local$error = _instance.error;
    return local$error == null
        ? CopyWith$Mutation$ReSyncTicket$reSyncTicket$error.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ReSyncTicket$reSyncTicket$error(
            local$error,
            (e) => call(error: e),
          );
  }

  CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning<TRes> get warning {
    final local$warning = _instance.warning;
    return local$warning == null
        ? CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning(
            local$warning,
            (e) => call(warning: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ReSyncTicket$reSyncTicket<TRes>
    implements CopyWith$Mutation$ReSyncTicket$reSyncTicket<TRes> {
  _CopyWithStubImpl$Mutation$ReSyncTicket$reSyncTicket(this._res);

  TRes _res;

  call({
    bool? result,
    bool? isSuccess,
    Mutation$ReSyncTicket$reSyncTicket$error? error,
    Mutation$ReSyncTicket$reSyncTicket$warning? warning,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ReSyncTicket$reSyncTicket$error<TRes> get error =>
      CopyWith$Mutation$ReSyncTicket$reSyncTicket$error.stub(_res);

  CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning<TRes> get warning =>
      CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning.stub(_res);
}

class Mutation$ReSyncTicket$reSyncTicket$error {
  Mutation$ReSyncTicket$reSyncTicket$error({
    required this.errorCode,
    required this.errorMessage,
    required this.details,
    this.$__typename = 'ApiError',
  });

  factory Mutation$ReSyncTicket$reSyncTicket$error.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$errorCode = json['errorCode'];
    final l$errorMessage = json['errorMessage'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Mutation$ReSyncTicket$reSyncTicket$error(
      errorCode: (l$errorCode as String),
      errorMessage: (l$errorMessage as String),
      details: (l$details as List<dynamic>)
          .map(
            (e) => Mutation$ReSyncTicket$reSyncTicket$error$details.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String errorCode;

  final String errorMessage;

  final List<Mutation$ReSyncTicket$reSyncTicket$error$details> details;

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
    if (other is! Mutation$ReSyncTicket$reSyncTicket$error ||
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

extension UtilityExtension$Mutation$ReSyncTicket$reSyncTicket$error
    on Mutation$ReSyncTicket$reSyncTicket$error {
  CopyWith$Mutation$ReSyncTicket$reSyncTicket$error<
    Mutation$ReSyncTicket$reSyncTicket$error
  >
  get copyWith =>
      CopyWith$Mutation$ReSyncTicket$reSyncTicket$error(this, (i) => i);
}

abstract class CopyWith$Mutation$ReSyncTicket$reSyncTicket$error<TRes> {
  factory CopyWith$Mutation$ReSyncTicket$reSyncTicket$error(
    Mutation$ReSyncTicket$reSyncTicket$error instance,
    TRes Function(Mutation$ReSyncTicket$reSyncTicket$error) then,
  ) = _CopyWithImpl$Mutation$ReSyncTicket$reSyncTicket$error;

  factory CopyWith$Mutation$ReSyncTicket$reSyncTicket$error.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ReSyncTicket$reSyncTicket$error;

  TRes call({
    String? errorCode,
    String? errorMessage,
    List<Mutation$ReSyncTicket$reSyncTicket$error$details>? details,
    String? $__typename,
  });
  TRes details(
    Iterable<Mutation$ReSyncTicket$reSyncTicket$error$details> Function(
      Iterable<
        CopyWith$Mutation$ReSyncTicket$reSyncTicket$error$details<
          Mutation$ReSyncTicket$reSyncTicket$error$details
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ReSyncTicket$reSyncTicket$error<TRes>
    implements CopyWith$Mutation$ReSyncTicket$reSyncTicket$error<TRes> {
  _CopyWithImpl$Mutation$ReSyncTicket$reSyncTicket$error(
    this._instance,
    this._then,
  );

  final Mutation$ReSyncTicket$reSyncTicket$error _instance;

  final TRes Function(Mutation$ReSyncTicket$reSyncTicket$error) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? errorCode = _undefined,
    Object? errorMessage = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ReSyncTicket$reSyncTicket$error(
      errorCode: errorCode == _undefined || errorCode == null
          ? _instance.errorCode
          : (errorCode as String),
      errorMessage: errorMessage == _undefined || errorMessage == null
          ? _instance.errorMessage
          : (errorMessage as String),
      details: details == _undefined || details == null
          ? _instance.details
          : (details as List<Mutation$ReSyncTicket$reSyncTicket$error$details>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes details(
    Iterable<Mutation$ReSyncTicket$reSyncTicket$error$details> Function(
      Iterable<
        CopyWith$Mutation$ReSyncTicket$reSyncTicket$error$details<
          Mutation$ReSyncTicket$reSyncTicket$error$details
        >
      >,
    )
    _fn,
  ) => call(
    details: _fn(
      _instance.details.map(
        (e) => CopyWith$Mutation$ReSyncTicket$reSyncTicket$error$details(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ReSyncTicket$reSyncTicket$error<TRes>
    implements CopyWith$Mutation$ReSyncTicket$reSyncTicket$error<TRes> {
  _CopyWithStubImpl$Mutation$ReSyncTicket$reSyncTicket$error(this._res);

  TRes _res;

  call({
    String? errorCode,
    String? errorMessage,
    List<Mutation$ReSyncTicket$reSyncTicket$error$details>? details,
    String? $__typename,
  }) => _res;

  details(_fn) => _res;
}

class Mutation$ReSyncTicket$reSyncTicket$error$details {
  Mutation$ReSyncTicket$reSyncTicket$error$details({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$ReSyncTicket$reSyncTicket$error$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$ReSyncTicket$reSyncTicket$error$details(
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
    if (other is! Mutation$ReSyncTicket$reSyncTicket$error$details ||
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

extension UtilityExtension$Mutation$ReSyncTicket$reSyncTicket$error$details
    on Mutation$ReSyncTicket$reSyncTicket$error$details {
  CopyWith$Mutation$ReSyncTicket$reSyncTicket$error$details<
    Mutation$ReSyncTicket$reSyncTicket$error$details
  >
  get copyWith =>
      CopyWith$Mutation$ReSyncTicket$reSyncTicket$error$details(this, (i) => i);
}

abstract class CopyWith$Mutation$ReSyncTicket$reSyncTicket$error$details<TRes> {
  factory CopyWith$Mutation$ReSyncTicket$reSyncTicket$error$details(
    Mutation$ReSyncTicket$reSyncTicket$error$details instance,
    TRes Function(Mutation$ReSyncTicket$reSyncTicket$error$details) then,
  ) = _CopyWithImpl$Mutation$ReSyncTicket$reSyncTicket$error$details;

  factory CopyWith$Mutation$ReSyncTicket$reSyncTicket$error$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ReSyncTicket$reSyncTicket$error$details;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$ReSyncTicket$reSyncTicket$error$details<TRes>
    implements CopyWith$Mutation$ReSyncTicket$reSyncTicket$error$details<TRes> {
  _CopyWithImpl$Mutation$ReSyncTicket$reSyncTicket$error$details(
    this._instance,
    this._then,
  );

  final Mutation$ReSyncTicket$reSyncTicket$error$details _instance;

  final TRes Function(Mutation$ReSyncTicket$reSyncTicket$error$details) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ReSyncTicket$reSyncTicket$error$details(
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

class _CopyWithStubImpl$Mutation$ReSyncTicket$reSyncTicket$error$details<TRes>
    implements CopyWith$Mutation$ReSyncTicket$reSyncTicket$error$details<TRes> {
  _CopyWithStubImpl$Mutation$ReSyncTicket$reSyncTicket$error$details(this._res);

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}

class Mutation$ReSyncTicket$reSyncTicket$warning {
  Mutation$ReSyncTicket$reSyncTicket$warning({
    required this.code,
    required this.message,
    required this.details,
    this.$__typename = 'ApiWarning',
  });

  factory Mutation$ReSyncTicket$reSyncTicket$warning.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Mutation$ReSyncTicket$reSyncTicket$warning(
      code: (l$code as String),
      message: (l$message as String),
      details: (l$details as List<dynamic>)
          .map(
            (e) => Mutation$ReSyncTicket$reSyncTicket$warning$details.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String message;

  final List<Mutation$ReSyncTicket$reSyncTicket$warning$details> details;

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
    if (other is! Mutation$ReSyncTicket$reSyncTicket$warning ||
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

extension UtilityExtension$Mutation$ReSyncTicket$reSyncTicket$warning
    on Mutation$ReSyncTicket$reSyncTicket$warning {
  CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning<
    Mutation$ReSyncTicket$reSyncTicket$warning
  >
  get copyWith =>
      CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning(this, (i) => i);
}

abstract class CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning<TRes> {
  factory CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning(
    Mutation$ReSyncTicket$reSyncTicket$warning instance,
    TRes Function(Mutation$ReSyncTicket$reSyncTicket$warning) then,
  ) = _CopyWithImpl$Mutation$ReSyncTicket$reSyncTicket$warning;

  factory CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ReSyncTicket$reSyncTicket$warning;

  TRes call({
    String? code,
    String? message,
    List<Mutation$ReSyncTicket$reSyncTicket$warning$details>? details,
    String? $__typename,
  });
  TRes details(
    Iterable<Mutation$ReSyncTicket$reSyncTicket$warning$details> Function(
      Iterable<
        CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning$details<
          Mutation$ReSyncTicket$reSyncTicket$warning$details
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ReSyncTicket$reSyncTicket$warning<TRes>
    implements CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning<TRes> {
  _CopyWithImpl$Mutation$ReSyncTicket$reSyncTicket$warning(
    this._instance,
    this._then,
  );

  final Mutation$ReSyncTicket$reSyncTicket$warning _instance;

  final TRes Function(Mutation$ReSyncTicket$reSyncTicket$warning) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ReSyncTicket$reSyncTicket$warning(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      details: details == _undefined || details == null
          ? _instance.details
          : (details
                as List<Mutation$ReSyncTicket$reSyncTicket$warning$details>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes details(
    Iterable<Mutation$ReSyncTicket$reSyncTicket$warning$details> Function(
      Iterable<
        CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning$details<
          Mutation$ReSyncTicket$reSyncTicket$warning$details
        >
      >,
    )
    _fn,
  ) => call(
    details: _fn(
      _instance.details.map(
        (e) => CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning$details(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ReSyncTicket$reSyncTicket$warning<TRes>
    implements CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning<TRes> {
  _CopyWithStubImpl$Mutation$ReSyncTicket$reSyncTicket$warning(this._res);

  TRes _res;

  call({
    String? code,
    String? message,
    List<Mutation$ReSyncTicket$reSyncTicket$warning$details>? details,
    String? $__typename,
  }) => _res;

  details(_fn) => _res;
}

class Mutation$ReSyncTicket$reSyncTicket$warning$details {
  Mutation$ReSyncTicket$reSyncTicket$warning$details({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$ReSyncTicket$reSyncTicket$warning$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$ReSyncTicket$reSyncTicket$warning$details(
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
    if (other is! Mutation$ReSyncTicket$reSyncTicket$warning$details ||
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

extension UtilityExtension$Mutation$ReSyncTicket$reSyncTicket$warning$details
    on Mutation$ReSyncTicket$reSyncTicket$warning$details {
  CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning$details<
    Mutation$ReSyncTicket$reSyncTicket$warning$details
  >
  get copyWith => CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning$details(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning$details<
  TRes
> {
  factory CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning$details(
    Mutation$ReSyncTicket$reSyncTicket$warning$details instance,
    TRes Function(Mutation$ReSyncTicket$reSyncTicket$warning$details) then,
  ) = _CopyWithImpl$Mutation$ReSyncTicket$reSyncTicket$warning$details;

  factory CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ReSyncTicket$reSyncTicket$warning$details;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$ReSyncTicket$reSyncTicket$warning$details<TRes>
    implements
        CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning$details<TRes> {
  _CopyWithImpl$Mutation$ReSyncTicket$reSyncTicket$warning$details(
    this._instance,
    this._then,
  );

  final Mutation$ReSyncTicket$reSyncTicket$warning$details _instance;

  final TRes Function(Mutation$ReSyncTicket$reSyncTicket$warning$details) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ReSyncTicket$reSyncTicket$warning$details(
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

class _CopyWithStubImpl$Mutation$ReSyncTicket$reSyncTicket$warning$details<TRes>
    implements
        CopyWith$Mutation$ReSyncTicket$reSyncTicket$warning$details<TRes> {
  _CopyWithStubImpl$Mutation$ReSyncTicket$reSyncTicket$warning$details(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}
