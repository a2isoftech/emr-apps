import 'package:gql/ast.dart';

class Variables$Mutation$PrintRemittanceCopy {
  factory Variables$Mutation$PrintRemittanceCopy({
    required String paymentRecordId,
  }) => Variables$Mutation$PrintRemittanceCopy._({
    r'paymentRecordId': paymentRecordId,
  });

  Variables$Mutation$PrintRemittanceCopy._(this._$data);

  factory Variables$Mutation$PrintRemittanceCopy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$paymentRecordId = data['paymentRecordId'];
    result$data['paymentRecordId'] = (l$paymentRecordId as String);
    return Variables$Mutation$PrintRemittanceCopy._(result$data);
  }

  Map<String, dynamic> _$data;

  String get paymentRecordId => (_$data['paymentRecordId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$paymentRecordId = paymentRecordId;
    result$data['paymentRecordId'] = l$paymentRecordId;
    return result$data;
  }

  CopyWith$Variables$Mutation$PrintRemittanceCopy<
    Variables$Mutation$PrintRemittanceCopy
  >
  get copyWith =>
      CopyWith$Variables$Mutation$PrintRemittanceCopy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$PrintRemittanceCopy ||
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

abstract class CopyWith$Variables$Mutation$PrintRemittanceCopy<TRes> {
  factory CopyWith$Variables$Mutation$PrintRemittanceCopy(
    Variables$Mutation$PrintRemittanceCopy instance,
    TRes Function(Variables$Mutation$PrintRemittanceCopy) then,
  ) = _CopyWithImpl$Variables$Mutation$PrintRemittanceCopy;

  factory CopyWith$Variables$Mutation$PrintRemittanceCopy.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$PrintRemittanceCopy;

  TRes call({String? paymentRecordId});
}

class _CopyWithImpl$Variables$Mutation$PrintRemittanceCopy<TRes>
    implements CopyWith$Variables$Mutation$PrintRemittanceCopy<TRes> {
  _CopyWithImpl$Variables$Mutation$PrintRemittanceCopy(
    this._instance,
    this._then,
  );

  final Variables$Mutation$PrintRemittanceCopy _instance;

  final TRes Function(Variables$Mutation$PrintRemittanceCopy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? paymentRecordId = _undefined}) => _then(
    Variables$Mutation$PrintRemittanceCopy._({
      ..._instance._$data,
      if (paymentRecordId != _undefined && paymentRecordId != null)
        'paymentRecordId': (paymentRecordId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$PrintRemittanceCopy<TRes>
    implements CopyWith$Variables$Mutation$PrintRemittanceCopy<TRes> {
  _CopyWithStubImpl$Variables$Mutation$PrintRemittanceCopy(this._res);

  TRes _res;

  call({String? paymentRecordId}) => _res;
}

class Mutation$PrintRemittanceCopy {
  Mutation$PrintRemittanceCopy({
    required this.printRemittanceCopy,
    this.$__typename = 'Mutation',
  });

  factory Mutation$PrintRemittanceCopy.fromJson(Map<String, dynamic> json) {
    final l$printRemittanceCopy = json['printRemittanceCopy'];
    final l$$__typename = json['__typename'];
    return Mutation$PrintRemittanceCopy(
      printRemittanceCopy:
          Mutation$PrintRemittanceCopy$printRemittanceCopy.fromJson(
            (l$printRemittanceCopy as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$PrintRemittanceCopy$printRemittanceCopy printRemittanceCopy;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$printRemittanceCopy = printRemittanceCopy;
    _resultData['printRemittanceCopy'] = l$printRemittanceCopy.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$printRemittanceCopy = printRemittanceCopy;
    final l$$__typename = $__typename;
    return Object.hashAll([l$printRemittanceCopy, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$PrintRemittanceCopy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$printRemittanceCopy = printRemittanceCopy;
    final lOther$printRemittanceCopy = other.printRemittanceCopy;
    if (l$printRemittanceCopy != lOther$printRemittanceCopy) {
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

extension UtilityExtension$Mutation$PrintRemittanceCopy
    on Mutation$PrintRemittanceCopy {
  CopyWith$Mutation$PrintRemittanceCopy<Mutation$PrintRemittanceCopy>
  get copyWith => CopyWith$Mutation$PrintRemittanceCopy(this, (i) => i);
}

abstract class CopyWith$Mutation$PrintRemittanceCopy<TRes> {
  factory CopyWith$Mutation$PrintRemittanceCopy(
    Mutation$PrintRemittanceCopy instance,
    TRes Function(Mutation$PrintRemittanceCopy) then,
  ) = _CopyWithImpl$Mutation$PrintRemittanceCopy;

  factory CopyWith$Mutation$PrintRemittanceCopy.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PrintRemittanceCopy;

  TRes call({
    Mutation$PrintRemittanceCopy$printRemittanceCopy? printRemittanceCopy,
    String? $__typename,
  });
  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy<TRes>
  get printRemittanceCopy;
}

class _CopyWithImpl$Mutation$PrintRemittanceCopy<TRes>
    implements CopyWith$Mutation$PrintRemittanceCopy<TRes> {
  _CopyWithImpl$Mutation$PrintRemittanceCopy(this._instance, this._then);

  final Mutation$PrintRemittanceCopy _instance;

  final TRes Function(Mutation$PrintRemittanceCopy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? printRemittanceCopy = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PrintRemittanceCopy(
      printRemittanceCopy:
          printRemittanceCopy == _undefined || printRemittanceCopy == null
          ? _instance.printRemittanceCopy
          : (printRemittanceCopy
                as Mutation$PrintRemittanceCopy$printRemittanceCopy),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy<TRes>
  get printRemittanceCopy {
    final local$printRemittanceCopy = _instance.printRemittanceCopy;
    return CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy(
      local$printRemittanceCopy,
      (e) => call(printRemittanceCopy: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$PrintRemittanceCopy<TRes>
    implements CopyWith$Mutation$PrintRemittanceCopy<TRes> {
  _CopyWithStubImpl$Mutation$PrintRemittanceCopy(this._res);

  TRes _res;

  call({
    Mutation$PrintRemittanceCopy$printRemittanceCopy? printRemittanceCopy,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy<TRes>
  get printRemittanceCopy =>
      CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy.stub(_res);
}

const documentNodeMutationPrintRemittanceCopy = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'PrintRemittanceCopy'),
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
            name: NameNode(value: 'printRemittanceCopy'),
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
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mediaUrl'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'created'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'at'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'userName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'userInfoId'),
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
                        name: NameNode(value: 'modified'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'at'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'userName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'userInfoId'),
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

class Mutation$PrintRemittanceCopy$printRemittanceCopy {
  Mutation$PrintRemittanceCopy$printRemittanceCopy({
    this.result,
    required this.isSuccess,
    this.error,
    this.warning,
    this.$__typename = 'ApiResponseOfTicketRemittance',
  });

  factory Mutation$PrintRemittanceCopy$printRemittanceCopy.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$isSuccess = json['isSuccess'];
    final l$error = json['error'];
    final l$warning = json['warning'];
    final l$$__typename = json['__typename'];
    return Mutation$PrintRemittanceCopy$printRemittanceCopy(
      result: l$result == null
          ? null
          : Mutation$PrintRemittanceCopy$printRemittanceCopy$result.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      isSuccess: (l$isSuccess as bool),
      error: l$error == null
          ? null
          : Mutation$PrintRemittanceCopy$printRemittanceCopy$error.fromJson(
              (l$error as Map<String, dynamic>),
            ),
      warning: l$warning == null
          ? null
          : Mutation$PrintRemittanceCopy$printRemittanceCopy$warning.fromJson(
              (l$warning as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$PrintRemittanceCopy$printRemittanceCopy$result? result;

  final bool isSuccess;

  final Mutation$PrintRemittanceCopy$printRemittanceCopy$error? error;

  final Mutation$PrintRemittanceCopy$printRemittanceCopy$warning? warning;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
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
    if (other is! Mutation$PrintRemittanceCopy$printRemittanceCopy ||
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

extension UtilityExtension$Mutation$PrintRemittanceCopy$printRemittanceCopy
    on Mutation$PrintRemittanceCopy$printRemittanceCopy {
  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy<
    Mutation$PrintRemittanceCopy$printRemittanceCopy
  >
  get copyWith =>
      CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy(this, (i) => i);
}

abstract class CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy<TRes> {
  factory CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy(
    Mutation$PrintRemittanceCopy$printRemittanceCopy instance,
    TRes Function(Mutation$PrintRemittanceCopy$printRemittanceCopy) then,
  ) = _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy;

  factory CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy;

  TRes call({
    Mutation$PrintRemittanceCopy$printRemittanceCopy$result? result,
    bool? isSuccess,
    Mutation$PrintRemittanceCopy$printRemittanceCopy$error? error,
    Mutation$PrintRemittanceCopy$printRemittanceCopy$warning? warning,
    String? $__typename,
  });
  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result<TRes>
  get result;
  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error<TRes>
  get error;
  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning<TRes>
  get warning;
}

class _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy<TRes>
    implements CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy<TRes> {
  _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy(
    this._instance,
    this._then,
  );

  final Mutation$PrintRemittanceCopy$printRemittanceCopy _instance;

  final TRes Function(Mutation$PrintRemittanceCopy$printRemittanceCopy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? result = _undefined,
    Object? isSuccess = _undefined,
    Object? error = _undefined,
    Object? warning = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PrintRemittanceCopy$printRemittanceCopy(
      result: result == _undefined
          ? _instance.result
          : (result
                as Mutation$PrintRemittanceCopy$printRemittanceCopy$result?),
      isSuccess: isSuccess == _undefined || isSuccess == null
          ? _instance.isSuccess
          : (isSuccess as bool),
      error: error == _undefined
          ? _instance.error
          : (error as Mutation$PrintRemittanceCopy$printRemittanceCopy$error?),
      warning: warning == _undefined
          ? _instance.warning
          : (warning
                as Mutation$PrintRemittanceCopy$printRemittanceCopy$warning?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result<TRes>
  get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result(
            local$result,
            (e) => call(result: e),
          );
  }

  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error<TRes>
  get error {
    final local$error = _instance.error;
    return local$error == null
        ? CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error(
            local$error,
            (e) => call(error: e),
          );
  }

  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning<TRes>
  get warning {
    final local$warning = _instance.warning;
    return local$warning == null
        ? CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning(
            local$warning,
            (e) => call(warning: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy<TRes>
    implements CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy<TRes> {
  _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy(this._res);

  TRes _res;

  call({
    Mutation$PrintRemittanceCopy$printRemittanceCopy$result? result,
    bool? isSuccess,
    Mutation$PrintRemittanceCopy$printRemittanceCopy$error? error,
    Mutation$PrintRemittanceCopy$printRemittanceCopy$warning? warning,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result<TRes>
  get result =>
      CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result.stub(
        _res,
      );

  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error<TRes>
  get error =>
      CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error.stub(
        _res,
      );

  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning<TRes>
  get warning =>
      CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning.stub(
        _res,
      );
}

class Mutation$PrintRemittanceCopy$printRemittanceCopy$result {
  Mutation$PrintRemittanceCopy$printRemittanceCopy$result({
    required this.mediaUrl,
    required this.created,
    required this.modified,
    this.$__typename = 'TicketRemittance',
  });

  factory Mutation$PrintRemittanceCopy$printRemittanceCopy$result.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mediaUrl = json['mediaUrl'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$$__typename = json['__typename'];
    return Mutation$PrintRemittanceCopy$printRemittanceCopy$result(
      mediaUrl: (l$mediaUrl as String),
      created:
          Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      modified:
          Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified.fromJson(
            (l$modified as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mediaUrl;

  final Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created created;

  final Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified
  modified;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mediaUrl = mediaUrl;
    _resultData['mediaUrl'] = l$mediaUrl;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mediaUrl = mediaUrl;
    final l$created = created;
    final l$modified = modified;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mediaUrl, l$created, l$modified, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$PrintRemittanceCopy$printRemittanceCopy$result ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaUrl = mediaUrl;
    final lOther$mediaUrl = other.mediaUrl;
    if (l$mediaUrl != lOther$mediaUrl) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
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

extension UtilityExtension$Mutation$PrintRemittanceCopy$printRemittanceCopy$result
    on Mutation$PrintRemittanceCopy$printRemittanceCopy$result {
  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result<
    Mutation$PrintRemittanceCopy$printRemittanceCopy$result
  >
  get copyWith =>
      CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result<
  TRes
> {
  factory CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result(
    Mutation$PrintRemittanceCopy$printRemittanceCopy$result instance,
    TRes Function(Mutation$PrintRemittanceCopy$printRemittanceCopy$result) then,
  ) = _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$result;

  factory CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$result;

  TRes call({
    String? mediaUrl,
    Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created? created,
    Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified? modified,
    String? $__typename,
  });
  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created<TRes>
  get created;
  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified<
    TRes
  >
  get modified;
}

class _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$result<
  TRes
>
    implements
        CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result<TRes> {
  _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$result(
    this._instance,
    this._then,
  );

  final Mutation$PrintRemittanceCopy$printRemittanceCopy$result _instance;

  final TRes Function(Mutation$PrintRemittanceCopy$printRemittanceCopy$result)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaUrl = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PrintRemittanceCopy$printRemittanceCopy$result(
      mediaUrl: mediaUrl == _undefined || mediaUrl == null
          ? _instance.mediaUrl
          : (mediaUrl as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified
                as Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created<TRes>
  get created {
    final local$created = _instance.created;
    return CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified<
    TRes
  >
  get modified {
    final local$modified = _instance.modified;
    return CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$result<
  TRes
>
    implements
        CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result<TRes> {
  _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$result(
    this._res,
  );

  TRes _res;

  call({
    String? mediaUrl,
    Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created? created,
    Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified? modified,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created<TRes>
  get created =>
      CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created.stub(
        _res,
      );

  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified<
    TRes
  >
  get modified =>
      CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified.stub(
        _res,
      );
}

class Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created {
  Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Created',
  });

  factory Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created
    on Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created {
  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created<
    Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created
  >
  get copyWith =>
      CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created<
  TRes
> {
  factory CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created(
    Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created instance,
    TRes Function(
      Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created,
    )
    then,
  ) = _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created;

  factory CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created<
  TRes
>
    implements
        CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created<
          TRes
        > {
  _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created(
    this._instance,
    this._then,
  );

  final Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created
  _instance;

  final TRes Function(
    Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created<
  TRes
>
    implements
        CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created<
          TRes
        > {
  _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified {
  Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Modified',
  });

  factory Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified
    on Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified {
  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified<
    Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified
  >
  get copyWith =>
      CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified<
  TRes
> {
  factory CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified(
    Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified instance,
    TRes Function(
      Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified,
    )
    then,
  ) = _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified;

  factory CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified<
  TRes
>
    implements
        CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified<
          TRes
        > {
  _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified(
    this._instance,
    this._then,
  );

  final Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified
  _instance;

  final TRes Function(
    Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified<
  TRes
>
    implements
        CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified<
          TRes
        > {
  _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$result$modified(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Mutation$PrintRemittanceCopy$printRemittanceCopy$error {
  Mutation$PrintRemittanceCopy$printRemittanceCopy$error({
    required this.errorCode,
    required this.errorMessage,
    required this.details,
    this.$__typename = 'ApiError',
  });

  factory Mutation$PrintRemittanceCopy$printRemittanceCopy$error.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$errorCode = json['errorCode'];
    final l$errorMessage = json['errorMessage'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Mutation$PrintRemittanceCopy$printRemittanceCopy$error(
      errorCode: (l$errorCode as String),
      errorMessage: (l$errorMessage as String),
      details: (l$details as List<dynamic>)
          .map(
            (e) =>
                Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String errorCode;

  final String errorMessage;

  final List<Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details>
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
    if (other is! Mutation$PrintRemittanceCopy$printRemittanceCopy$error ||
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

extension UtilityExtension$Mutation$PrintRemittanceCopy$printRemittanceCopy$error
    on Mutation$PrintRemittanceCopy$printRemittanceCopy$error {
  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error<
    Mutation$PrintRemittanceCopy$printRemittanceCopy$error
  >
  get copyWith =>
      CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error<
  TRes
> {
  factory CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error(
    Mutation$PrintRemittanceCopy$printRemittanceCopy$error instance,
    TRes Function(Mutation$PrintRemittanceCopy$printRemittanceCopy$error) then,
  ) = _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$error;

  factory CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$error;

  TRes call({
    String? errorCode,
    String? errorMessage,
    List<Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details>?
    details,
    String? $__typename,
  });
  TRes details(
    Iterable<Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details>
    Function(
      Iterable<
        CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details<
          Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$error<TRes>
    implements
        CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error<TRes> {
  _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$error(
    this._instance,
    this._then,
  );

  final Mutation$PrintRemittanceCopy$printRemittanceCopy$error _instance;

  final TRes Function(Mutation$PrintRemittanceCopy$printRemittanceCopy$error)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? errorCode = _undefined,
    Object? errorMessage = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PrintRemittanceCopy$printRemittanceCopy$error(
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
                  Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes details(
    Iterable<Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details>
    Function(
      Iterable<
        CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details<
          Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details
        >
      >,
    )
    _fn,
  ) => call(
    details: _fn(
      _instance.details.map(
        (e) =>
            CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$error<
  TRes
>
    implements
        CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error<TRes> {
  _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$error(
    this._res,
  );

  TRes _res;

  call({
    String? errorCode,
    String? errorMessage,
    List<Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details>?
    details,
    String? $__typename,
  }) => _res;

  details(_fn) => _res;
}

class Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details {
  Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details(
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
            is! Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details ||
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

extension UtilityExtension$Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details
    on Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details {
  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details<
    Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details
  >
  get copyWith =>
      CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details<
  TRes
> {
  factory CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details(
    Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details instance,
    TRes Function(
      Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details,
    )
    then,
  ) = _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details;

  factory CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details<
  TRes
>
    implements
        CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details<
          TRes
        > {
  _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details(
    this._instance,
    this._then,
  );

  final Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details
  _instance;

  final TRes Function(
    Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details(
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

class _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details<
  TRes
>
    implements
        CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details<
          TRes
        > {
  _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$error$details(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}

class Mutation$PrintRemittanceCopy$printRemittanceCopy$warning {
  Mutation$PrintRemittanceCopy$printRemittanceCopy$warning({
    required this.code,
    required this.message,
    required this.details,
    this.$__typename = 'ApiWarning',
  });

  factory Mutation$PrintRemittanceCopy$printRemittanceCopy$warning.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Mutation$PrintRemittanceCopy$printRemittanceCopy$warning(
      code: (l$code as String),
      message: (l$message as String),
      details: (l$details as List<dynamic>)
          .map(
            (e) =>
                Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String message;

  final List<Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details>
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
    if (other is! Mutation$PrintRemittanceCopy$printRemittanceCopy$warning ||
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

extension UtilityExtension$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning
    on Mutation$PrintRemittanceCopy$printRemittanceCopy$warning {
  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning<
    Mutation$PrintRemittanceCopy$printRemittanceCopy$warning
  >
  get copyWith =>
      CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning<
  TRes
> {
  factory CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning(
    Mutation$PrintRemittanceCopy$printRemittanceCopy$warning instance,
    TRes Function(Mutation$PrintRemittanceCopy$printRemittanceCopy$warning)
    then,
  ) = _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning;

  factory CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning;

  TRes call({
    String? code,
    String? message,
    List<Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details>?
    details,
    String? $__typename,
  });
  TRes details(
    Iterable<Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details>
    Function(
      Iterable<
        CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details<
          Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning<
  TRes
>
    implements
        CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning<
          TRes
        > {
  _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning(
    this._instance,
    this._then,
  );

  final Mutation$PrintRemittanceCopy$printRemittanceCopy$warning _instance;

  final TRes Function(Mutation$PrintRemittanceCopy$printRemittanceCopy$warning)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PrintRemittanceCopy$printRemittanceCopy$warning(
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
                  Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes details(
    Iterable<Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details>
    Function(
      Iterable<
        CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details<
          Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details
        >
      >,
    )
    _fn,
  ) => call(
    details: _fn(
      _instance.details.map(
        (e) =>
            CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning<
  TRes
>
    implements
        CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning<
          TRes
        > {
  _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    String? message,
    List<Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details>?
    details,
    String? $__typename,
  }) => _res;

  details(_fn) => _res;
}

class Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details {
  Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details(
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
            is! Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details ||
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

extension UtilityExtension$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details
    on Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details {
  CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details<
    Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details
  >
  get copyWith =>
      CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details<
  TRes
> {
  factory CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details(
    Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details instance,
    TRes Function(
      Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details,
    )
    then,
  ) = _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details;

  factory CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details<
  TRes
>
    implements
        CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details<
          TRes
        > {
  _CopyWithImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details(
    this._instance,
    this._then,
  );

  final Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details
  _instance;

  final TRes Function(
    Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details(
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

class _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details<
  TRes
>
    implements
        CopyWith$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details<
          TRes
        > {
  _CopyWithStubImpl$Mutation$PrintRemittanceCopy$printRemittanceCopy$warning$details(
    this._res,
  );

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}
