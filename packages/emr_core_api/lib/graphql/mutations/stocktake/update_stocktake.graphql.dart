import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateStocktake {
  factory Variables$Mutation$UpdateStocktake({
    required Input$CreateStocktakeInput input,
  }) => Variables$Mutation$UpdateStocktake._({r'input': input});

  Variables$Mutation$UpdateStocktake._(this._$data);

  factory Variables$Mutation$UpdateStocktake.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateStocktakeInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateStocktake._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateStocktakeInput get input =>
      (_$data['input'] as Input$CreateStocktakeInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateStocktake<
    Variables$Mutation$UpdateStocktake
  >
  get copyWith => CopyWith$Variables$Mutation$UpdateStocktake(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateStocktake ||
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

abstract class CopyWith$Variables$Mutation$UpdateStocktake<TRes> {
  factory CopyWith$Variables$Mutation$UpdateStocktake(
    Variables$Mutation$UpdateStocktake instance,
    TRes Function(Variables$Mutation$UpdateStocktake) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateStocktake;

  factory CopyWith$Variables$Mutation$UpdateStocktake.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateStocktake;

  TRes call({Input$CreateStocktakeInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateStocktake<TRes>
    implements CopyWith$Variables$Mutation$UpdateStocktake<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateStocktake(this._instance, this._then);

  final Variables$Mutation$UpdateStocktake _instance;

  final TRes Function(Variables$Mutation$UpdateStocktake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateStocktake._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateStocktakeInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateStocktake<TRes>
    implements CopyWith$Variables$Mutation$UpdateStocktake<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateStocktake(this._res);

  TRes _res;

  call({Input$CreateStocktakeInput? input}) => _res;
}

class Mutation$UpdateStocktake {
  Mutation$UpdateStocktake({
    required this.updateStockTake,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateStocktake.fromJson(Map<String, dynamic> json) {
    final l$updateStockTake = json['updateStockTake'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateStocktake(
      updateStockTake: Mutation$UpdateStocktake$updateStockTake.fromJson(
        (l$updateStockTake as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateStocktake$updateStockTake updateStockTake;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateStockTake = updateStockTake;
    _resultData['updateStockTake'] = l$updateStockTake.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateStockTake = updateStockTake;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateStockTake, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateStocktake ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateStockTake = updateStockTake;
    final lOther$updateStockTake = other.updateStockTake;
    if (l$updateStockTake != lOther$updateStockTake) {
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

extension UtilityExtension$Mutation$UpdateStocktake
    on Mutation$UpdateStocktake {
  CopyWith$Mutation$UpdateStocktake<Mutation$UpdateStocktake> get copyWith =>
      CopyWith$Mutation$UpdateStocktake(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateStocktake<TRes> {
  factory CopyWith$Mutation$UpdateStocktake(
    Mutation$UpdateStocktake instance,
    TRes Function(Mutation$UpdateStocktake) then,
  ) = _CopyWithImpl$Mutation$UpdateStocktake;

  factory CopyWith$Mutation$UpdateStocktake.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateStocktake;

  TRes call({
    Mutation$UpdateStocktake$updateStockTake? updateStockTake,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateStocktake$updateStockTake<TRes> get updateStockTake;
}

class _CopyWithImpl$Mutation$UpdateStocktake<TRes>
    implements CopyWith$Mutation$UpdateStocktake<TRes> {
  _CopyWithImpl$Mutation$UpdateStocktake(this._instance, this._then);

  final Mutation$UpdateStocktake _instance;

  final TRes Function(Mutation$UpdateStocktake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateStockTake = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateStocktake(
      updateStockTake: updateStockTake == _undefined || updateStockTake == null
          ? _instance.updateStockTake
          : (updateStockTake as Mutation$UpdateStocktake$updateStockTake),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateStocktake$updateStockTake<TRes> get updateStockTake {
    final local$updateStockTake = _instance.updateStockTake;
    return CopyWith$Mutation$UpdateStocktake$updateStockTake(
      local$updateStockTake,
      (e) => call(updateStockTake: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateStocktake<TRes>
    implements CopyWith$Mutation$UpdateStocktake<TRes> {
  _CopyWithStubImpl$Mutation$UpdateStocktake(this._res);

  TRes _res;

  call({
    Mutation$UpdateStocktake$updateStockTake? updateStockTake,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateStocktake$updateStockTake<TRes> get updateStockTake =>
      CopyWith$Mutation$UpdateStocktake$updateStockTake.stub(_res);
}

const documentNodeMutationUpdateStocktake = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateStocktake'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateStocktakeInput'),
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
            name: NameNode(value: 'updateStockTake'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'stocktakeInput'),
                value: VariableNode(name: NameNode(value: 'input')),
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

class Mutation$UpdateStocktake$updateStockTake {
  Mutation$UpdateStocktake$updateStockTake({
    required this.success,
    required this.message,
    required this.errorCode,
    this.data,
    this.$__typename = 'StocktakeResponseOfStocktake',
  });

  factory Mutation$UpdateStocktake$updateStockTake.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateStocktake$updateStockTake(
      success: (l$success as bool),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      data: l$data == null
          ? null
          : Mutation$UpdateStocktake$updateStockTake$data.fromJson(
              (l$data as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String message;

  final String errorCode;

  final Mutation$UpdateStocktake$updateStockTake$data? data;

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
    if (other is! Mutation$UpdateStocktake$updateStockTake ||
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

extension UtilityExtension$Mutation$UpdateStocktake$updateStockTake
    on Mutation$UpdateStocktake$updateStockTake {
  CopyWith$Mutation$UpdateStocktake$updateStockTake<
    Mutation$UpdateStocktake$updateStockTake
  >
  get copyWith =>
      CopyWith$Mutation$UpdateStocktake$updateStockTake(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateStocktake$updateStockTake<TRes> {
  factory CopyWith$Mutation$UpdateStocktake$updateStockTake(
    Mutation$UpdateStocktake$updateStockTake instance,
    TRes Function(Mutation$UpdateStocktake$updateStockTake) then,
  ) = _CopyWithImpl$Mutation$UpdateStocktake$updateStockTake;

  factory CopyWith$Mutation$UpdateStocktake$updateStockTake.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateStocktake$updateStockTake;

  TRes call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$UpdateStocktake$updateStockTake$data? data,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateStocktake$updateStockTake$data<TRes> get data;
}

class _CopyWithImpl$Mutation$UpdateStocktake$updateStockTake<TRes>
    implements CopyWith$Mutation$UpdateStocktake$updateStockTake<TRes> {
  _CopyWithImpl$Mutation$UpdateStocktake$updateStockTake(
    this._instance,
    this._then,
  );

  final Mutation$UpdateStocktake$updateStockTake _instance;

  final TRes Function(Mutation$UpdateStocktake$updateStockTake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? errorCode = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateStocktake$updateStockTake(
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
          : (data as Mutation$UpdateStocktake$updateStockTake$data?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateStocktake$updateStockTake$data<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Mutation$UpdateStocktake$updateStockTake$data.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateStocktake$updateStockTake$data(
            local$data,
            (e) => call(data: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateStocktake$updateStockTake<TRes>
    implements CopyWith$Mutation$UpdateStocktake$updateStockTake<TRes> {
  _CopyWithStubImpl$Mutation$UpdateStocktake$updateStockTake(this._res);

  TRes _res;

  call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$UpdateStocktake$updateStockTake$data? data,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateStocktake$updateStockTake$data<TRes> get data =>
      CopyWith$Mutation$UpdateStocktake$updateStockTake$data.stub(_res);
}

class Mutation$UpdateStocktake$updateStockTake$data {
  Mutation$UpdateStocktake$updateStockTake$data({
    required this.id,
    this.$__typename = 'Stocktake',
  });

  factory Mutation$UpdateStocktake$updateStockTake$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateStocktake$updateStockTake$data(
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
    if (other is! Mutation$UpdateStocktake$updateStockTake$data ||
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

extension UtilityExtension$Mutation$UpdateStocktake$updateStockTake$data
    on Mutation$UpdateStocktake$updateStockTake$data {
  CopyWith$Mutation$UpdateStocktake$updateStockTake$data<
    Mutation$UpdateStocktake$updateStockTake$data
  >
  get copyWith =>
      CopyWith$Mutation$UpdateStocktake$updateStockTake$data(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateStocktake$updateStockTake$data<TRes> {
  factory CopyWith$Mutation$UpdateStocktake$updateStockTake$data(
    Mutation$UpdateStocktake$updateStockTake$data instance,
    TRes Function(Mutation$UpdateStocktake$updateStockTake$data) then,
  ) = _CopyWithImpl$Mutation$UpdateStocktake$updateStockTake$data;

  factory CopyWith$Mutation$UpdateStocktake$updateStockTake$data.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateStocktake$updateStockTake$data;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateStocktake$updateStockTake$data<TRes>
    implements CopyWith$Mutation$UpdateStocktake$updateStockTake$data<TRes> {
  _CopyWithImpl$Mutation$UpdateStocktake$updateStockTake$data(
    this._instance,
    this._then,
  );

  final Mutation$UpdateStocktake$updateStockTake$data _instance;

  final TRes Function(Mutation$UpdateStocktake$updateStockTake$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdateStocktake$updateStockTake$data(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpdateStocktake$updateStockTake$data<TRes>
    implements CopyWith$Mutation$UpdateStocktake$updateStockTake$data<TRes> {
  _CopyWithStubImpl$Mutation$UpdateStocktake$updateStockTake$data(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
