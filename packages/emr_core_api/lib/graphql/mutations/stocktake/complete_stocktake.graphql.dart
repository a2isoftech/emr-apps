import 'package:gql/ast.dart';

class Variables$Mutation$CompleteStocktake {
  factory Variables$Mutation$CompleteStocktake({required String id}) =>
      Variables$Mutation$CompleteStocktake._({r'id': id});

  Variables$Mutation$CompleteStocktake._(this._$data);

  factory Variables$Mutation$CompleteStocktake.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$CompleteStocktake._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$CompleteStocktake<
    Variables$Mutation$CompleteStocktake
  >
  get copyWith => CopyWith$Variables$Mutation$CompleteStocktake(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CompleteStocktake ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$CompleteStocktake<TRes> {
  factory CopyWith$Variables$Mutation$CompleteStocktake(
    Variables$Mutation$CompleteStocktake instance,
    TRes Function(Variables$Mutation$CompleteStocktake) then,
  ) = _CopyWithImpl$Variables$Mutation$CompleteStocktake;

  factory CopyWith$Variables$Mutation$CompleteStocktake.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CompleteStocktake;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$CompleteStocktake<TRes>
    implements CopyWith$Variables$Mutation$CompleteStocktake<TRes> {
  _CopyWithImpl$Variables$Mutation$CompleteStocktake(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CompleteStocktake _instance;

  final TRes Function(Variables$Mutation$CompleteStocktake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Mutation$CompleteStocktake._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CompleteStocktake<TRes>
    implements CopyWith$Variables$Mutation$CompleteStocktake<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CompleteStocktake(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$CompleteStocktake {
  Mutation$CompleteStocktake({
    required this.completeStockTake,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CompleteStocktake.fromJson(Map<String, dynamic> json) {
    final l$completeStockTake = json['completeStockTake'];
    final l$$__typename = json['__typename'];
    return Mutation$CompleteStocktake(
      completeStockTake: Mutation$CompleteStocktake$completeStockTake.fromJson(
        (l$completeStockTake as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CompleteStocktake$completeStockTake completeStockTake;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$completeStockTake = completeStockTake;
    _resultData['completeStockTake'] = l$completeStockTake.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$completeStockTake = completeStockTake;
    final l$$__typename = $__typename;
    return Object.hashAll([l$completeStockTake, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CompleteStocktake ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$completeStockTake = completeStockTake;
    final lOther$completeStockTake = other.completeStockTake;
    if (l$completeStockTake != lOther$completeStockTake) {
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

extension UtilityExtension$Mutation$CompleteStocktake
    on Mutation$CompleteStocktake {
  CopyWith$Mutation$CompleteStocktake<Mutation$CompleteStocktake>
  get copyWith => CopyWith$Mutation$CompleteStocktake(this, (i) => i);
}

abstract class CopyWith$Mutation$CompleteStocktake<TRes> {
  factory CopyWith$Mutation$CompleteStocktake(
    Mutation$CompleteStocktake instance,
    TRes Function(Mutation$CompleteStocktake) then,
  ) = _CopyWithImpl$Mutation$CompleteStocktake;

  factory CopyWith$Mutation$CompleteStocktake.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CompleteStocktake;

  TRes call({
    Mutation$CompleteStocktake$completeStockTake? completeStockTake,
    String? $__typename,
  });
  CopyWith$Mutation$CompleteStocktake$completeStockTake<TRes>
  get completeStockTake;
}

class _CopyWithImpl$Mutation$CompleteStocktake<TRes>
    implements CopyWith$Mutation$CompleteStocktake<TRes> {
  _CopyWithImpl$Mutation$CompleteStocktake(this._instance, this._then);

  final Mutation$CompleteStocktake _instance;

  final TRes Function(Mutation$CompleteStocktake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? completeStockTake = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CompleteStocktake(
      completeStockTake:
          completeStockTake == _undefined || completeStockTake == null
          ? _instance.completeStockTake
          : (completeStockTake as Mutation$CompleteStocktake$completeStockTake),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CompleteStocktake$completeStockTake<TRes>
  get completeStockTake {
    final local$completeStockTake = _instance.completeStockTake;
    return CopyWith$Mutation$CompleteStocktake$completeStockTake(
      local$completeStockTake,
      (e) => call(completeStockTake: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CompleteStocktake<TRes>
    implements CopyWith$Mutation$CompleteStocktake<TRes> {
  _CopyWithStubImpl$Mutation$CompleteStocktake(this._res);

  TRes _res;

  call({
    Mutation$CompleteStocktake$completeStockTake? completeStockTake,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CompleteStocktake$completeStockTake<TRes>
  get completeStockTake =>
      CopyWith$Mutation$CompleteStocktake$completeStockTake.stub(_res);
}

const documentNodeMutationCompleteStocktake = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CompleteStocktake'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'completeStockTake'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
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

class Mutation$CompleteStocktake$completeStockTake {
  Mutation$CompleteStocktake$completeStockTake({
    required this.success,
    required this.message,
    required this.errorCode,
    this.data,
    this.$__typename = 'StocktakeResponseOfStocktake',
  });

  factory Mutation$CompleteStocktake$completeStockTake.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$CompleteStocktake$completeStockTake(
      success: (l$success as bool),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      data: l$data == null
          ? null
          : Mutation$CompleteStocktake$completeStockTake$data.fromJson(
              (l$data as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String message;

  final String errorCode;

  final Mutation$CompleteStocktake$completeStockTake$data? data;

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
    if (other is! Mutation$CompleteStocktake$completeStockTake ||
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

extension UtilityExtension$Mutation$CompleteStocktake$completeStockTake
    on Mutation$CompleteStocktake$completeStockTake {
  CopyWith$Mutation$CompleteStocktake$completeStockTake<
    Mutation$CompleteStocktake$completeStockTake
  >
  get copyWith =>
      CopyWith$Mutation$CompleteStocktake$completeStockTake(this, (i) => i);
}

abstract class CopyWith$Mutation$CompleteStocktake$completeStockTake<TRes> {
  factory CopyWith$Mutation$CompleteStocktake$completeStockTake(
    Mutation$CompleteStocktake$completeStockTake instance,
    TRes Function(Mutation$CompleteStocktake$completeStockTake) then,
  ) = _CopyWithImpl$Mutation$CompleteStocktake$completeStockTake;

  factory CopyWith$Mutation$CompleteStocktake$completeStockTake.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CompleteStocktake$completeStockTake;

  TRes call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$CompleteStocktake$completeStockTake$data? data,
    String? $__typename,
  });
  CopyWith$Mutation$CompleteStocktake$completeStockTake$data<TRes> get data;
}

class _CopyWithImpl$Mutation$CompleteStocktake$completeStockTake<TRes>
    implements CopyWith$Mutation$CompleteStocktake$completeStockTake<TRes> {
  _CopyWithImpl$Mutation$CompleteStocktake$completeStockTake(
    this._instance,
    this._then,
  );

  final Mutation$CompleteStocktake$completeStockTake _instance;

  final TRes Function(Mutation$CompleteStocktake$completeStockTake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? errorCode = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CompleteStocktake$completeStockTake(
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
          : (data as Mutation$CompleteStocktake$completeStockTake$data?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CompleteStocktake$completeStockTake$data<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Mutation$CompleteStocktake$completeStockTake$data.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CompleteStocktake$completeStockTake$data(
            local$data,
            (e) => call(data: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CompleteStocktake$completeStockTake<TRes>
    implements CopyWith$Mutation$CompleteStocktake$completeStockTake<TRes> {
  _CopyWithStubImpl$Mutation$CompleteStocktake$completeStockTake(this._res);

  TRes _res;

  call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$CompleteStocktake$completeStockTake$data? data,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CompleteStocktake$completeStockTake$data<TRes> get data =>
      CopyWith$Mutation$CompleteStocktake$completeStockTake$data.stub(_res);
}

class Mutation$CompleteStocktake$completeStockTake$data {
  Mutation$CompleteStocktake$completeStockTake$data({
    required this.id,
    this.$__typename = 'Stocktake',
  });

  factory Mutation$CompleteStocktake$completeStockTake$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CompleteStocktake$completeStockTake$data(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CompleteStocktake$completeStockTake$data ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$CompleteStocktake$completeStockTake$data
    on Mutation$CompleteStocktake$completeStockTake$data {
  CopyWith$Mutation$CompleteStocktake$completeStockTake$data<
    Mutation$CompleteStocktake$completeStockTake$data
  >
  get copyWith => CopyWith$Mutation$CompleteStocktake$completeStockTake$data(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$CompleteStocktake$completeStockTake$data<
  TRes
> {
  factory CopyWith$Mutation$CompleteStocktake$completeStockTake$data(
    Mutation$CompleteStocktake$completeStockTake$data instance,
    TRes Function(Mutation$CompleteStocktake$completeStockTake$data) then,
  ) = _CopyWithImpl$Mutation$CompleteStocktake$completeStockTake$data;

  factory CopyWith$Mutation$CompleteStocktake$completeStockTake$data.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CompleteStocktake$completeStockTake$data;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$CompleteStocktake$completeStockTake$data<TRes>
    implements
        CopyWith$Mutation$CompleteStocktake$completeStockTake$data<TRes> {
  _CopyWithImpl$Mutation$CompleteStocktake$completeStockTake$data(
    this._instance,
    this._then,
  );

  final Mutation$CompleteStocktake$completeStockTake$data _instance;

  final TRes Function(Mutation$CompleteStocktake$completeStockTake$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$CompleteStocktake$completeStockTake$data(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$CompleteStocktake$completeStockTake$data<TRes>
    implements
        CopyWith$Mutation$CompleteStocktake$completeStockTake$data<TRes> {
  _CopyWithStubImpl$Mutation$CompleteStocktake$completeStockTake$data(
    this._res,
  );

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
