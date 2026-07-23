import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$ExecuteStocktakeApproval {
  factory Variables$Mutation$ExecuteStocktakeApproval({
    required String stocktakeId,
  }) => Variables$Mutation$ExecuteStocktakeApproval._({
    r'stocktakeId': stocktakeId,
  });

  Variables$Mutation$ExecuteStocktakeApproval._(this._$data);

  factory Variables$Mutation$ExecuteStocktakeApproval.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$stocktakeId = data['stocktakeId'];
    result$data['stocktakeId'] = (l$stocktakeId as String);
    return Variables$Mutation$ExecuteStocktakeApproval._(result$data);
  }

  Map<String, dynamic> _$data;

  String get stocktakeId => (_$data['stocktakeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$stocktakeId = stocktakeId;
    result$data['stocktakeId'] = l$stocktakeId;
    return result$data;
  }

  CopyWith$Variables$Mutation$ExecuteStocktakeApproval<
    Variables$Mutation$ExecuteStocktakeApproval
  >
  get copyWith =>
      CopyWith$Variables$Mutation$ExecuteStocktakeApproval(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ExecuteStocktakeApproval ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$stocktakeId = stocktakeId;
    final lOther$stocktakeId = other.stocktakeId;
    if (l$stocktakeId != lOther$stocktakeId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$stocktakeId = stocktakeId;
    return Object.hashAll([l$stocktakeId]);
  }
}

abstract class CopyWith$Variables$Mutation$ExecuteStocktakeApproval<TRes> {
  factory CopyWith$Variables$Mutation$ExecuteStocktakeApproval(
    Variables$Mutation$ExecuteStocktakeApproval instance,
    TRes Function(Variables$Mutation$ExecuteStocktakeApproval) then,
  ) = _CopyWithImpl$Variables$Mutation$ExecuteStocktakeApproval;

  factory CopyWith$Variables$Mutation$ExecuteStocktakeApproval.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ExecuteStocktakeApproval;

  TRes call({String? stocktakeId});
}

class _CopyWithImpl$Variables$Mutation$ExecuteStocktakeApproval<TRes>
    implements CopyWith$Variables$Mutation$ExecuteStocktakeApproval<TRes> {
  _CopyWithImpl$Variables$Mutation$ExecuteStocktakeApproval(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ExecuteStocktakeApproval _instance;

  final TRes Function(Variables$Mutation$ExecuteStocktakeApproval) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? stocktakeId = _undefined}) => _then(
    Variables$Mutation$ExecuteStocktakeApproval._({
      ..._instance._$data,
      if (stocktakeId != _undefined && stocktakeId != null)
        'stocktakeId': (stocktakeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ExecuteStocktakeApproval<TRes>
    implements CopyWith$Variables$Mutation$ExecuteStocktakeApproval<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ExecuteStocktakeApproval(this._res);

  TRes _res;

  call({String? stocktakeId}) => _res;
}

class Mutation$ExecuteStocktakeApproval {
  Mutation$ExecuteStocktakeApproval({
    required this.executeApprovalForStocktake,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ExecuteStocktakeApproval.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$executeApprovalForStocktake = json['executeApprovalForStocktake'];
    final l$$__typename = json['__typename'];
    return Mutation$ExecuteStocktakeApproval(
      executeApprovalForStocktake:
          Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake.fromJson(
            (l$executeApprovalForStocktake as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake
  executeApprovalForStocktake;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$executeApprovalForStocktake = executeApprovalForStocktake;
    _resultData['executeApprovalForStocktake'] = l$executeApprovalForStocktake
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$executeApprovalForStocktake = executeApprovalForStocktake;
    final l$$__typename = $__typename;
    return Object.hashAll([l$executeApprovalForStocktake, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ExecuteStocktakeApproval ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$executeApprovalForStocktake = executeApprovalForStocktake;
    final lOther$executeApprovalForStocktake =
        other.executeApprovalForStocktake;
    if (l$executeApprovalForStocktake != lOther$executeApprovalForStocktake) {
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

extension UtilityExtension$Mutation$ExecuteStocktakeApproval
    on Mutation$ExecuteStocktakeApproval {
  CopyWith$Mutation$ExecuteStocktakeApproval<Mutation$ExecuteStocktakeApproval>
  get copyWith => CopyWith$Mutation$ExecuteStocktakeApproval(this, (i) => i);
}

abstract class CopyWith$Mutation$ExecuteStocktakeApproval<TRes> {
  factory CopyWith$Mutation$ExecuteStocktakeApproval(
    Mutation$ExecuteStocktakeApproval instance,
    TRes Function(Mutation$ExecuteStocktakeApproval) then,
  ) = _CopyWithImpl$Mutation$ExecuteStocktakeApproval;

  factory CopyWith$Mutation$ExecuteStocktakeApproval.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ExecuteStocktakeApproval;

  TRes call({
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake?
    executeApprovalForStocktake,
    String? $__typename,
  });
  CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake<TRes>
  get executeApprovalForStocktake;
}

class _CopyWithImpl$Mutation$ExecuteStocktakeApproval<TRes>
    implements CopyWith$Mutation$ExecuteStocktakeApproval<TRes> {
  _CopyWithImpl$Mutation$ExecuteStocktakeApproval(this._instance, this._then);

  final Mutation$ExecuteStocktakeApproval _instance;

  final TRes Function(Mutation$ExecuteStocktakeApproval) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? executeApprovalForStocktake = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ExecuteStocktakeApproval(
      executeApprovalForStocktake:
          executeApprovalForStocktake == _undefined ||
              executeApprovalForStocktake == null
          ? _instance.executeApprovalForStocktake
          : (executeApprovalForStocktake
                as Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake<TRes>
  get executeApprovalForStocktake {
    final local$executeApprovalForStocktake =
        _instance.executeApprovalForStocktake;
    return CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake(
      local$executeApprovalForStocktake,
      (e) => call(executeApprovalForStocktake: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ExecuteStocktakeApproval<TRes>
    implements CopyWith$Mutation$ExecuteStocktakeApproval<TRes> {
  _CopyWithStubImpl$Mutation$ExecuteStocktakeApproval(this._res);

  TRes _res;

  call({
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake?
    executeApprovalForStocktake,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake<TRes>
  get executeApprovalForStocktake =>
      CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake.stub(
        _res,
      );
}

const documentNodeMutationExecuteStocktakeApproval = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ExecuteStocktakeApproval'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'stocktakeId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'executeApprovalForStocktake'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'stocktakeApprovalInput'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'stocktakeId'),
                      value: VariableNode(name: NameNode(value: 'stocktakeId')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'success'),
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
                  name: NameNode(value: 'errorCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'data'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'stocktakeId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'stocktakeStatus'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'currentLevel'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'levels'),
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
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'status'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'userEmails'),
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

class Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake {
  Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake({
    required this.success,
    required this.message,
    required this.errorCode,
    this.data,
    this.$__typename = 'StocktakeResponseOfStocktakeApproval',
  });

  factory Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake(
      success: (l$success as bool),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      data: l$data == null
          ? null
          : Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data.fromJson(
              (l$data as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String message;

  final String errorCode;

  final Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data?
  data;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$errorCode = errorCode;
    _resultData['errorCode'] = l$errorCode;
    final l$data = data;
    _resultData['data'] = l$data?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$message = message;
    final l$errorCode = errorCode;
    final l$data = data;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$message,
      l$errorCode,
      l$data,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
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

extension UtilityExtension$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake
    on Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake {
  CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake<
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake
  >
  get copyWith =>
      CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake<
  TRes
> {
  factory CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake(
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake instance,
    TRes Function(Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake)
    then,
  ) = _CopyWithImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake;

  factory CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake;

  TRes call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data? data,
    String? $__typename,
  });
  CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data<
    TRes
  >
  get data;
}

class _CopyWithImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake<
  TRes
>
    implements
        CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake<
          TRes
        > {
  _CopyWithImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake(
    this._instance,
    this._then,
  );

  final Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake _instance;

  final TRes Function(
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? errorCode = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake(
      success: success == _undefined || success == null
          ? _instance.success
          : (success as bool),
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      errorCode: errorCode == _undefined || errorCode == null
          ? _instance.errorCode
          : (errorCode as String),
      data: data == _undefined
          ? _instance.data
          : (data
                as Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data<
    TRes
  >
  get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data(
            local$data,
            (e) => call(data: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake<
  TRes
>
    implements
        CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake(
    this._res,
  );

  TRes _res;

  call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data? data,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data<
    TRes
  >
  get data =>
      CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data.stub(
        _res,
      );
}

class Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data {
  Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data({
    required this.id,
    required this.stocktakeId,
    required this.stocktakeStatus,
    required this.currentLevel,
    required this.levels,
    this.$__typename = 'StocktakeApproval',
  });

  factory Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$stocktakeId = json['stocktakeId'];
    final l$stocktakeStatus = json['stocktakeStatus'];
    final l$currentLevel = json['currentLevel'];
    final l$levels = json['levels'];
    final l$$__typename = json['__typename'];
    return Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data(
      id: (l$id as String),
      stocktakeId: (l$stocktakeId as String),
      stocktakeStatus: fromJson$Enum$StocktakeApprovalStatus(
        (l$stocktakeStatus as String),
      ),
      currentLevel: (l$currentLevel as int),
      levels: (l$levels as List<dynamic>)
          .map(
            (e) =>
                Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String stocktakeId;

  final Enum$StocktakeApprovalStatus stocktakeStatus;

  final int currentLevel;

  final List<
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels
  >
  levels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$stocktakeId = stocktakeId;
    _resultData['stocktakeId'] = l$stocktakeId;
    final l$stocktakeStatus = stocktakeStatus;
    _resultData['stocktakeStatus'] = toJson$Enum$StocktakeApprovalStatus(
      l$stocktakeStatus,
    );
    final l$currentLevel = currentLevel;
    _resultData['currentLevel'] = l$currentLevel;
    final l$levels = levels;
    _resultData['levels'] = l$levels.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$stocktakeId = stocktakeId;
    final l$stocktakeStatus = stocktakeStatus;
    final l$currentLevel = currentLevel;
    final l$levels = levels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$stocktakeId,
      l$stocktakeStatus,
      l$currentLevel,
      Object.hashAll(l$levels.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$stocktakeId = stocktakeId;
    final lOther$stocktakeId = other.stocktakeId;
    if (l$stocktakeId != lOther$stocktakeId) {
      return false;
    }
    final l$stocktakeStatus = stocktakeStatus;
    final lOther$stocktakeStatus = other.stocktakeStatus;
    if (l$stocktakeStatus != lOther$stocktakeStatus) {
      return false;
    }
    final l$currentLevel = currentLevel;
    final lOther$currentLevel = other.currentLevel;
    if (l$currentLevel != lOther$currentLevel) {
      return false;
    }
    final l$levels = levels;
    final lOther$levels = other.levels;
    if (l$levels.length != lOther$levels.length) {
      return false;
    }
    for (int i = 0; i < l$levels.length; i++) {
      final l$levels$entry = l$levels[i];
      final lOther$levels$entry = lOther$levels[i];
      if (l$levels$entry != lOther$levels$entry) {
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

extension UtilityExtension$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data
    on Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data {
  CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data<
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data
  >
  get copyWith =>
      CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data<
  TRes
> {
  factory CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data(
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data instance,
    TRes Function(
      Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data,
    )
    then,
  ) = _CopyWithImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data;

  factory CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data;

  TRes call({
    String? id,
    String? stocktakeId,
    Enum$StocktakeApprovalStatus? stocktakeStatus,
    int? currentLevel,
    List<
      Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels
    >?
    levels,
    String? $__typename,
  });
  TRes levels(
    Iterable<
      Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels
    >
    Function(
      Iterable<
        CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels<
          Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data<
  TRes
>
    implements
        CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data<
          TRes
        > {
  _CopyWithImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data(
    this._instance,
    this._then,
  );

  final Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data
  _instance;

  final TRes Function(
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? stocktakeId = _undefined,
    Object? stocktakeStatus = _undefined,
    Object? currentLevel = _undefined,
    Object? levels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      stocktakeId: stocktakeId == _undefined || stocktakeId == null
          ? _instance.stocktakeId
          : (stocktakeId as String),
      stocktakeStatus: stocktakeStatus == _undefined || stocktakeStatus == null
          ? _instance.stocktakeStatus
          : (stocktakeStatus as Enum$StocktakeApprovalStatus),
      currentLevel: currentLevel == _undefined || currentLevel == null
          ? _instance.currentLevel
          : (currentLevel as int),
      levels: levels == _undefined || levels == null
          ? _instance.levels
          : (levels
                as List<
                  Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes levels(
    Iterable<
      Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels
    >
    Function(
      Iterable<
        CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels<
          Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels
        >
      >,
    )
    _fn,
  ) => call(
    levels: _fn(
      _instance.levels.map(
        (e) =>
            CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data<
  TRes
>
    implements
        CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? stocktakeId,
    Enum$StocktakeApprovalStatus? stocktakeStatus,
    int? currentLevel,
    List<
      Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels
    >?
    levels,
    String? $__typename,
  }) => _res;

  levels(_fn) => _res;
}

class Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels {
  Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfInt32AndStocktakeRuleLevel',
  });

  factory Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels(
      key: (l$key as int),
      value:
          Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final int key;

  final Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value
  value;

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
            is! Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels ||
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

extension UtilityExtension$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels
    on Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels {
  CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels<
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels
  >
  get copyWith =>
      CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels<
  TRes
> {
  factory CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels(
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels
    instance,
    TRes Function(
      Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels,
    )
    then,
  ) = _CopyWithImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels;

  factory CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels;

  TRes call({
    int? key,
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value?
    value,
    String? $__typename,
  });
  CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels<
  TRes
>
    implements
        CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels<
          TRes
        > {
  _CopyWithImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels(
    this._instance,
    this._then,
  );

  final Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels
  _instance;

  final TRes Function(
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels(
      key: key == _undefined || key == null ? _instance.key : (key as int),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels<
  TRes
>
    implements
        CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels(
    this._res,
  );

  TRes _res;

  call({
    int? key,
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value<
    TRes
  >
  get value =>
      CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value.stub(
        _res,
      );
}

class Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value {
  Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value({
    required this.status,
    required this.userEmails,
    this.$__typename = 'StocktakeRuleLevel',
  });

  factory Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$status = json['status'];
    final l$userEmails = json['userEmails'];
    final l$$__typename = json['__typename'];
    return Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value(
      status: fromJson$Enum$StocktakeApprovalStatus((l$status as String)),
      userEmails: (l$userEmails as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$StocktakeApprovalStatus status;

  final List<String> userEmails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] = toJson$Enum$StocktakeApprovalStatus(l$status);
    final l$userEmails = userEmails;
    _resultData['userEmails'] = l$userEmails.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$userEmails = userEmails;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status,
      Object.hashAll(l$userEmails.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$userEmails = userEmails;
    final lOther$userEmails = other.userEmails;
    if (l$userEmails.length != lOther$userEmails.length) {
      return false;
    }
    for (int i = 0; i < l$userEmails.length; i++) {
      final l$userEmails$entry = l$userEmails[i];
      final lOther$userEmails$entry = lOther$userEmails[i];
      if (l$userEmails$entry != lOther$userEmails$entry) {
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

extension UtilityExtension$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value
    on
        Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value {
  CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value<
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value
  >
  get copyWith =>
      CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value<
  TRes
> {
  factory CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value(
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value
    instance,
    TRes Function(
      Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value,
    )
    then,
  ) = _CopyWithImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value;

  factory CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value;

  TRes call({
    Enum$StocktakeApprovalStatus? status,
    List<String>? userEmails,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value<
  TRes
>
    implements
        CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value<
          TRes
        > {
  _CopyWithImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value(
    this._instance,
    this._then,
  );

  final Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value
  _instance;

  final TRes Function(
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? userEmails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value(
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$StocktakeApprovalStatus),
      userEmails: userEmails == _undefined || userEmails == null
          ? _instance.userEmails
          : (userEmails as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value<
  TRes
>
    implements
        CopyWith$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ExecuteStocktakeApproval$executeApprovalForStocktake$data$levels$value(
    this._res,
  );

  TRes _res;

  call({
    Enum$StocktakeApprovalStatus? status,
    List<String>? userEmails,
    String? $__typename,
  }) => _res;
}
