import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateStocktake {
  factory Variables$Mutation$CreateStocktake({
    required Input$CreateStocktakeInput input,
  }) => Variables$Mutation$CreateStocktake._({r'input': input});

  Variables$Mutation$CreateStocktake._(this._$data);

  factory Variables$Mutation$CreateStocktake.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateStocktakeInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateStocktake._(result$data);
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

  CopyWith$Variables$Mutation$CreateStocktake<
    Variables$Mutation$CreateStocktake
  >
  get copyWith => CopyWith$Variables$Mutation$CreateStocktake(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateStocktake ||
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

abstract class CopyWith$Variables$Mutation$CreateStocktake<TRes> {
  factory CopyWith$Variables$Mutation$CreateStocktake(
    Variables$Mutation$CreateStocktake instance,
    TRes Function(Variables$Mutation$CreateStocktake) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateStocktake;

  factory CopyWith$Variables$Mutation$CreateStocktake.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateStocktake;

  TRes call({Input$CreateStocktakeInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateStocktake<TRes>
    implements CopyWith$Variables$Mutation$CreateStocktake<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateStocktake(this._instance, this._then);

  final Variables$Mutation$CreateStocktake _instance;

  final TRes Function(Variables$Mutation$CreateStocktake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreateStocktake._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateStocktakeInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateStocktake<TRes>
    implements CopyWith$Variables$Mutation$CreateStocktake<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateStocktake(this._res);

  TRes _res;

  call({Input$CreateStocktakeInput? input}) => _res;
}

class Mutation$CreateStocktake {
  Mutation$CreateStocktake({
    required this.createStockTake,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateStocktake.fromJson(Map<String, dynamic> json) {
    final l$createStockTake = json['createStockTake'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateStocktake(
      createStockTake: Mutation$CreateStocktake$createStockTake.fromJson(
        (l$createStockTake as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateStocktake$createStockTake createStockTake;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createStockTake = createStockTake;
    _resultData['createStockTake'] = l$createStockTake.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createStockTake = createStockTake;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createStockTake, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateStocktake ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createStockTake = createStockTake;
    final lOther$createStockTake = other.createStockTake;
    if (l$createStockTake != lOther$createStockTake) {
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

extension UtilityExtension$Mutation$CreateStocktake
    on Mutation$CreateStocktake {
  CopyWith$Mutation$CreateStocktake<Mutation$CreateStocktake> get copyWith =>
      CopyWith$Mutation$CreateStocktake(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateStocktake<TRes> {
  factory CopyWith$Mutation$CreateStocktake(
    Mutation$CreateStocktake instance,
    TRes Function(Mutation$CreateStocktake) then,
  ) = _CopyWithImpl$Mutation$CreateStocktake;

  factory CopyWith$Mutation$CreateStocktake.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateStocktake;

  TRes call({
    Mutation$CreateStocktake$createStockTake? createStockTake,
    String? $__typename,
  });
  CopyWith$Mutation$CreateStocktake$createStockTake<TRes> get createStockTake;
}

class _CopyWithImpl$Mutation$CreateStocktake<TRes>
    implements CopyWith$Mutation$CreateStocktake<TRes> {
  _CopyWithImpl$Mutation$CreateStocktake(this._instance, this._then);

  final Mutation$CreateStocktake _instance;

  final TRes Function(Mutation$CreateStocktake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createStockTake = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateStocktake(
      createStockTake: createStockTake == _undefined || createStockTake == null
          ? _instance.createStockTake
          : (createStockTake as Mutation$CreateStocktake$createStockTake),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateStocktake$createStockTake<TRes> get createStockTake {
    final local$createStockTake = _instance.createStockTake;
    return CopyWith$Mutation$CreateStocktake$createStockTake(
      local$createStockTake,
      (e) => call(createStockTake: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreateStocktake<TRes>
    implements CopyWith$Mutation$CreateStocktake<TRes> {
  _CopyWithStubImpl$Mutation$CreateStocktake(this._res);

  TRes _res;

  call({
    Mutation$CreateStocktake$createStockTake? createStockTake,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateStocktake$createStockTake<TRes> get createStockTake =>
      CopyWith$Mutation$CreateStocktake$createStockTake.stub(_res);
}

const documentNodeMutationCreateStocktake = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateStocktake'),
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
            name: NameNode(value: 'createStockTake'),
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

class Mutation$CreateStocktake$createStockTake {
  Mutation$CreateStocktake$createStockTake({
    required this.success,
    required this.message,
    required this.errorCode,
    this.data,
    this.$__typename = 'StocktakeResponseOfStocktake',
  });

  factory Mutation$CreateStocktake$createStockTake.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateStocktake$createStockTake(
      success: (l$success as bool),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      data: l$data == null
          ? null
          : Mutation$CreateStocktake$createStockTake$data.fromJson(
              (l$data as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String message;

  final String errorCode;

  final Mutation$CreateStocktake$createStockTake$data? data;

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
    if (other is! Mutation$CreateStocktake$createStockTake ||
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

extension UtilityExtension$Mutation$CreateStocktake$createStockTake
    on Mutation$CreateStocktake$createStockTake {
  CopyWith$Mutation$CreateStocktake$createStockTake<
    Mutation$CreateStocktake$createStockTake
  >
  get copyWith =>
      CopyWith$Mutation$CreateStocktake$createStockTake(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateStocktake$createStockTake<TRes> {
  factory CopyWith$Mutation$CreateStocktake$createStockTake(
    Mutation$CreateStocktake$createStockTake instance,
    TRes Function(Mutation$CreateStocktake$createStockTake) then,
  ) = _CopyWithImpl$Mutation$CreateStocktake$createStockTake;

  factory CopyWith$Mutation$CreateStocktake$createStockTake.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateStocktake$createStockTake;

  TRes call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$CreateStocktake$createStockTake$data? data,
    String? $__typename,
  });
  CopyWith$Mutation$CreateStocktake$createStockTake$data<TRes> get data;
}

class _CopyWithImpl$Mutation$CreateStocktake$createStockTake<TRes>
    implements CopyWith$Mutation$CreateStocktake$createStockTake<TRes> {
  _CopyWithImpl$Mutation$CreateStocktake$createStockTake(
    this._instance,
    this._then,
  );

  final Mutation$CreateStocktake$createStockTake _instance;

  final TRes Function(Mutation$CreateStocktake$createStockTake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? errorCode = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateStocktake$createStockTake(
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
          : (data as Mutation$CreateStocktake$createStockTake$data?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateStocktake$createStockTake$data<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Mutation$CreateStocktake$createStockTake$data.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CreateStocktake$createStockTake$data(
            local$data,
            (e) => call(data: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CreateStocktake$createStockTake<TRes>
    implements CopyWith$Mutation$CreateStocktake$createStockTake<TRes> {
  _CopyWithStubImpl$Mutation$CreateStocktake$createStockTake(this._res);

  TRes _res;

  call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$CreateStocktake$createStockTake$data? data,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateStocktake$createStockTake$data<TRes> get data =>
      CopyWith$Mutation$CreateStocktake$createStockTake$data.stub(_res);
}

class Mutation$CreateStocktake$createStockTake$data {
  Mutation$CreateStocktake$createStockTake$data({
    required this.id,
    this.$__typename = 'Stocktake',
  });

  factory Mutation$CreateStocktake$createStockTake$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateStocktake$createStockTake$data(
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
    if (other is! Mutation$CreateStocktake$createStockTake$data ||
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

extension UtilityExtension$Mutation$CreateStocktake$createStockTake$data
    on Mutation$CreateStocktake$createStockTake$data {
  CopyWith$Mutation$CreateStocktake$createStockTake$data<
    Mutation$CreateStocktake$createStockTake$data
  >
  get copyWith =>
      CopyWith$Mutation$CreateStocktake$createStockTake$data(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateStocktake$createStockTake$data<TRes> {
  factory CopyWith$Mutation$CreateStocktake$createStockTake$data(
    Mutation$CreateStocktake$createStockTake$data instance,
    TRes Function(Mutation$CreateStocktake$createStockTake$data) then,
  ) = _CopyWithImpl$Mutation$CreateStocktake$createStockTake$data;

  factory CopyWith$Mutation$CreateStocktake$createStockTake$data.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateStocktake$createStockTake$data;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateStocktake$createStockTake$data<TRes>
    implements CopyWith$Mutation$CreateStocktake$createStockTake$data<TRes> {
  _CopyWithImpl$Mutation$CreateStocktake$createStockTake$data(
    this._instance,
    this._then,
  );

  final Mutation$CreateStocktake$createStockTake$data _instance;

  final TRes Function(Mutation$CreateStocktake$createStockTake$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$CreateStocktake$createStockTake$data(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$CreateStocktake$createStockTake$data<TRes>
    implements CopyWith$Mutation$CreateStocktake$createStockTake$data<TRes> {
  _CopyWithStubImpl$Mutation$CreateStocktake$createStockTake$data(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
