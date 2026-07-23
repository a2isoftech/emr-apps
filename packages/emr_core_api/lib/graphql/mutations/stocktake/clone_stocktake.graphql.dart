import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CloneStocktake {
  factory Variables$Mutation$CloneStocktake({
    required Input$CreateStocktakeInput input,
  }) => Variables$Mutation$CloneStocktake._({r'input': input});

  Variables$Mutation$CloneStocktake._(this._$data);

  factory Variables$Mutation$CloneStocktake.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateStocktakeInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CloneStocktake._(result$data);
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

  CopyWith$Variables$Mutation$CloneStocktake<Variables$Mutation$CloneStocktake>
  get copyWith => CopyWith$Variables$Mutation$CloneStocktake(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CloneStocktake ||
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

abstract class CopyWith$Variables$Mutation$CloneStocktake<TRes> {
  factory CopyWith$Variables$Mutation$CloneStocktake(
    Variables$Mutation$CloneStocktake instance,
    TRes Function(Variables$Mutation$CloneStocktake) then,
  ) = _CopyWithImpl$Variables$Mutation$CloneStocktake;

  factory CopyWith$Variables$Mutation$CloneStocktake.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CloneStocktake;

  TRes call({Input$CreateStocktakeInput? input});
}

class _CopyWithImpl$Variables$Mutation$CloneStocktake<TRes>
    implements CopyWith$Variables$Mutation$CloneStocktake<TRes> {
  _CopyWithImpl$Variables$Mutation$CloneStocktake(this._instance, this._then);

  final Variables$Mutation$CloneStocktake _instance;

  final TRes Function(Variables$Mutation$CloneStocktake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CloneStocktake._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateStocktakeInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CloneStocktake<TRes>
    implements CopyWith$Variables$Mutation$CloneStocktake<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CloneStocktake(this._res);

  TRes _res;

  call({Input$CreateStocktakeInput? input}) => _res;
}

class Mutation$CloneStocktake {
  Mutation$CloneStocktake({
    required this.cloneStocktake,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CloneStocktake.fromJson(Map<String, dynamic> json) {
    final l$cloneStocktake = json['cloneStocktake'];
    final l$$__typename = json['__typename'];
    return Mutation$CloneStocktake(
      cloneStocktake: Mutation$CloneStocktake$cloneStocktake.fromJson(
        (l$cloneStocktake as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CloneStocktake$cloneStocktake cloneStocktake;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cloneStocktake = cloneStocktake;
    _resultData['cloneStocktake'] = l$cloneStocktake.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cloneStocktake = cloneStocktake;
    final l$$__typename = $__typename;
    return Object.hashAll([l$cloneStocktake, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CloneStocktake || runtimeType != other.runtimeType) {
      return false;
    }
    final l$cloneStocktake = cloneStocktake;
    final lOther$cloneStocktake = other.cloneStocktake;
    if (l$cloneStocktake != lOther$cloneStocktake) {
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

extension UtilityExtension$Mutation$CloneStocktake on Mutation$CloneStocktake {
  CopyWith$Mutation$CloneStocktake<Mutation$CloneStocktake> get copyWith =>
      CopyWith$Mutation$CloneStocktake(this, (i) => i);
}

abstract class CopyWith$Mutation$CloneStocktake<TRes> {
  factory CopyWith$Mutation$CloneStocktake(
    Mutation$CloneStocktake instance,
    TRes Function(Mutation$CloneStocktake) then,
  ) = _CopyWithImpl$Mutation$CloneStocktake;

  factory CopyWith$Mutation$CloneStocktake.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CloneStocktake;

  TRes call({
    Mutation$CloneStocktake$cloneStocktake? cloneStocktake,
    String? $__typename,
  });
  CopyWith$Mutation$CloneStocktake$cloneStocktake<TRes> get cloneStocktake;
}

class _CopyWithImpl$Mutation$CloneStocktake<TRes>
    implements CopyWith$Mutation$CloneStocktake<TRes> {
  _CopyWithImpl$Mutation$CloneStocktake(this._instance, this._then);

  final Mutation$CloneStocktake _instance;

  final TRes Function(Mutation$CloneStocktake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cloneStocktake = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CloneStocktake(
      cloneStocktake: cloneStocktake == _undefined || cloneStocktake == null
          ? _instance.cloneStocktake
          : (cloneStocktake as Mutation$CloneStocktake$cloneStocktake),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CloneStocktake$cloneStocktake<TRes> get cloneStocktake {
    final local$cloneStocktake = _instance.cloneStocktake;
    return CopyWith$Mutation$CloneStocktake$cloneStocktake(
      local$cloneStocktake,
      (e) => call(cloneStocktake: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CloneStocktake<TRes>
    implements CopyWith$Mutation$CloneStocktake<TRes> {
  _CopyWithStubImpl$Mutation$CloneStocktake(this._res);

  TRes _res;

  call({
    Mutation$CloneStocktake$cloneStocktake? cloneStocktake,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CloneStocktake$cloneStocktake<TRes> get cloneStocktake =>
      CopyWith$Mutation$CloneStocktake$cloneStocktake.stub(_res);
}

const documentNodeMutationCloneStocktake = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CloneStocktake'),
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
            name: NameNode(value: 'cloneStocktake'),
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

class Mutation$CloneStocktake$cloneStocktake {
  Mutation$CloneStocktake$cloneStocktake({
    required this.success,
    required this.message,
    required this.errorCode,
    this.data,
    this.$__typename = 'StocktakeResponseOfStocktake',
  });

  factory Mutation$CloneStocktake$cloneStocktake.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$CloneStocktake$cloneStocktake(
      success: (l$success as bool),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      data: l$data == null
          ? null
          : Mutation$CloneStocktake$cloneStocktake$data.fromJson(
              (l$data as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String message;

  final String errorCode;

  final Mutation$CloneStocktake$cloneStocktake$data? data;

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
    if (other is! Mutation$CloneStocktake$cloneStocktake ||
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

extension UtilityExtension$Mutation$CloneStocktake$cloneStocktake
    on Mutation$CloneStocktake$cloneStocktake {
  CopyWith$Mutation$CloneStocktake$cloneStocktake<
    Mutation$CloneStocktake$cloneStocktake
  >
  get copyWith =>
      CopyWith$Mutation$CloneStocktake$cloneStocktake(this, (i) => i);
}

abstract class CopyWith$Mutation$CloneStocktake$cloneStocktake<TRes> {
  factory CopyWith$Mutation$CloneStocktake$cloneStocktake(
    Mutation$CloneStocktake$cloneStocktake instance,
    TRes Function(Mutation$CloneStocktake$cloneStocktake) then,
  ) = _CopyWithImpl$Mutation$CloneStocktake$cloneStocktake;

  factory CopyWith$Mutation$CloneStocktake$cloneStocktake.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CloneStocktake$cloneStocktake;

  TRes call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$CloneStocktake$cloneStocktake$data? data,
    String? $__typename,
  });
  CopyWith$Mutation$CloneStocktake$cloneStocktake$data<TRes> get data;
}

class _CopyWithImpl$Mutation$CloneStocktake$cloneStocktake<TRes>
    implements CopyWith$Mutation$CloneStocktake$cloneStocktake<TRes> {
  _CopyWithImpl$Mutation$CloneStocktake$cloneStocktake(
    this._instance,
    this._then,
  );

  final Mutation$CloneStocktake$cloneStocktake _instance;

  final TRes Function(Mutation$CloneStocktake$cloneStocktake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? errorCode = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CloneStocktake$cloneStocktake(
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
          : (data as Mutation$CloneStocktake$cloneStocktake$data?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CloneStocktake$cloneStocktake$data<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Mutation$CloneStocktake$cloneStocktake$data.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CloneStocktake$cloneStocktake$data(
            local$data,
            (e) => call(data: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CloneStocktake$cloneStocktake<TRes>
    implements CopyWith$Mutation$CloneStocktake$cloneStocktake<TRes> {
  _CopyWithStubImpl$Mutation$CloneStocktake$cloneStocktake(this._res);

  TRes _res;

  call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$CloneStocktake$cloneStocktake$data? data,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CloneStocktake$cloneStocktake$data<TRes> get data =>
      CopyWith$Mutation$CloneStocktake$cloneStocktake$data.stub(_res);
}

class Mutation$CloneStocktake$cloneStocktake$data {
  Mutation$CloneStocktake$cloneStocktake$data({
    required this.id,
    this.$__typename = 'Stocktake',
  });

  factory Mutation$CloneStocktake$cloneStocktake$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CloneStocktake$cloneStocktake$data(
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
    if (other is! Mutation$CloneStocktake$cloneStocktake$data ||
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

extension UtilityExtension$Mutation$CloneStocktake$cloneStocktake$data
    on Mutation$CloneStocktake$cloneStocktake$data {
  CopyWith$Mutation$CloneStocktake$cloneStocktake$data<
    Mutation$CloneStocktake$cloneStocktake$data
  >
  get copyWith =>
      CopyWith$Mutation$CloneStocktake$cloneStocktake$data(this, (i) => i);
}

abstract class CopyWith$Mutation$CloneStocktake$cloneStocktake$data<TRes> {
  factory CopyWith$Mutation$CloneStocktake$cloneStocktake$data(
    Mutation$CloneStocktake$cloneStocktake$data instance,
    TRes Function(Mutation$CloneStocktake$cloneStocktake$data) then,
  ) = _CopyWithImpl$Mutation$CloneStocktake$cloneStocktake$data;

  factory CopyWith$Mutation$CloneStocktake$cloneStocktake$data.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CloneStocktake$cloneStocktake$data;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$CloneStocktake$cloneStocktake$data<TRes>
    implements CopyWith$Mutation$CloneStocktake$cloneStocktake$data<TRes> {
  _CopyWithImpl$Mutation$CloneStocktake$cloneStocktake$data(
    this._instance,
    this._then,
  );

  final Mutation$CloneStocktake$cloneStocktake$data _instance;

  final TRes Function(Mutation$CloneStocktake$cloneStocktake$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$CloneStocktake$cloneStocktake$data(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$CloneStocktake$cloneStocktake$data<TRes>
    implements CopyWith$Mutation$CloneStocktake$cloneStocktake$data<TRes> {
  _CopyWithStubImpl$Mutation$CloneStocktake$cloneStocktake$data(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
