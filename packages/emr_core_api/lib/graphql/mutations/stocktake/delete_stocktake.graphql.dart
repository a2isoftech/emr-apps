import 'package:gql/ast.dart';

class Variables$Mutation$DeleteStocktake {
  factory Variables$Mutation$DeleteStocktake({required String input}) =>
      Variables$Mutation$DeleteStocktake._({r'input': input});

  Variables$Mutation$DeleteStocktake._(this._$data);

  factory Variables$Mutation$DeleteStocktake.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = (l$input as String);
    return Variables$Mutation$DeleteStocktake._(result$data);
  }

  Map<String, dynamic> _$data;

  String get input => (_$data['input'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteStocktake<
    Variables$Mutation$DeleteStocktake
  >
  get copyWith => CopyWith$Variables$Mutation$DeleteStocktake(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteStocktake ||
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

abstract class CopyWith$Variables$Mutation$DeleteStocktake<TRes> {
  factory CopyWith$Variables$Mutation$DeleteStocktake(
    Variables$Mutation$DeleteStocktake instance,
    TRes Function(Variables$Mutation$DeleteStocktake) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteStocktake;

  factory CopyWith$Variables$Mutation$DeleteStocktake.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteStocktake;

  TRes call({String? input});
}

class _CopyWithImpl$Variables$Mutation$DeleteStocktake<TRes>
    implements CopyWith$Variables$Mutation$DeleteStocktake<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteStocktake(this._instance, this._then);

  final Variables$Mutation$DeleteStocktake _instance;

  final TRes Function(Variables$Mutation$DeleteStocktake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$DeleteStocktake._({
      ..._instance._$data,
      if (input != _undefined && input != null) 'input': (input as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$DeleteStocktake<TRes>
    implements CopyWith$Variables$Mutation$DeleteStocktake<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteStocktake(this._res);

  TRes _res;

  call({String? input}) => _res;
}

class Mutation$DeleteStocktake {
  Mutation$DeleteStocktake({
    required this.deleteStocktake,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteStocktake.fromJson(Map<String, dynamic> json) {
    final l$deleteStocktake = json['deleteStocktake'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteStocktake(
      deleteStocktake: Mutation$DeleteStocktake$deleteStocktake.fromJson(
        (l$deleteStocktake as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteStocktake$deleteStocktake deleteStocktake;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteStocktake = deleteStocktake;
    _resultData['deleteStocktake'] = l$deleteStocktake.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteStocktake = deleteStocktake;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteStocktake, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteStocktake ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteStocktake = deleteStocktake;
    final lOther$deleteStocktake = other.deleteStocktake;
    if (l$deleteStocktake != lOther$deleteStocktake) {
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

extension UtilityExtension$Mutation$DeleteStocktake
    on Mutation$DeleteStocktake {
  CopyWith$Mutation$DeleteStocktake<Mutation$DeleteStocktake> get copyWith =>
      CopyWith$Mutation$DeleteStocktake(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteStocktake<TRes> {
  factory CopyWith$Mutation$DeleteStocktake(
    Mutation$DeleteStocktake instance,
    TRes Function(Mutation$DeleteStocktake) then,
  ) = _CopyWithImpl$Mutation$DeleteStocktake;

  factory CopyWith$Mutation$DeleteStocktake.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteStocktake;

  TRes call({
    Mutation$DeleteStocktake$deleteStocktake? deleteStocktake,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteStocktake$deleteStocktake<TRes> get deleteStocktake;
}

class _CopyWithImpl$Mutation$DeleteStocktake<TRes>
    implements CopyWith$Mutation$DeleteStocktake<TRes> {
  _CopyWithImpl$Mutation$DeleteStocktake(this._instance, this._then);

  final Mutation$DeleteStocktake _instance;

  final TRes Function(Mutation$DeleteStocktake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteStocktake = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteStocktake(
      deleteStocktake: deleteStocktake == _undefined || deleteStocktake == null
          ? _instance.deleteStocktake
          : (deleteStocktake as Mutation$DeleteStocktake$deleteStocktake),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DeleteStocktake$deleteStocktake<TRes> get deleteStocktake {
    final local$deleteStocktake = _instance.deleteStocktake;
    return CopyWith$Mutation$DeleteStocktake$deleteStocktake(
      local$deleteStocktake,
      (e) => call(deleteStocktake: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$DeleteStocktake<TRes>
    implements CopyWith$Mutation$DeleteStocktake<TRes> {
  _CopyWithStubImpl$Mutation$DeleteStocktake(this._res);

  TRes _res;

  call({
    Mutation$DeleteStocktake$deleteStocktake? deleteStocktake,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeleteStocktake$deleteStocktake<TRes> get deleteStocktake =>
      CopyWith$Mutation$DeleteStocktake$deleteStocktake.stub(_res);
}

const documentNodeMutationDeleteStocktake = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteStocktake'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deleteStocktake'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'stocktakeId'),
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

class Mutation$DeleteStocktake$deleteStocktake {
  Mutation$DeleteStocktake$deleteStocktake({
    required this.success,
    required this.message,
    required this.errorCode,
    this.data,
    this.$__typename = 'StocktakeResponseOfStocktake',
  });

  factory Mutation$DeleteStocktake$deleteStocktake.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteStocktake$deleteStocktake(
      success: (l$success as bool),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      data: l$data == null
          ? null
          : Mutation$DeleteStocktake$deleteStocktake$data.fromJson(
              (l$data as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String message;

  final String errorCode;

  final Mutation$DeleteStocktake$deleteStocktake$data? data;

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
    if (other is! Mutation$DeleteStocktake$deleteStocktake ||
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

extension UtilityExtension$Mutation$DeleteStocktake$deleteStocktake
    on Mutation$DeleteStocktake$deleteStocktake {
  CopyWith$Mutation$DeleteStocktake$deleteStocktake<
    Mutation$DeleteStocktake$deleteStocktake
  >
  get copyWith =>
      CopyWith$Mutation$DeleteStocktake$deleteStocktake(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteStocktake$deleteStocktake<TRes> {
  factory CopyWith$Mutation$DeleteStocktake$deleteStocktake(
    Mutation$DeleteStocktake$deleteStocktake instance,
    TRes Function(Mutation$DeleteStocktake$deleteStocktake) then,
  ) = _CopyWithImpl$Mutation$DeleteStocktake$deleteStocktake;

  factory CopyWith$Mutation$DeleteStocktake$deleteStocktake.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteStocktake$deleteStocktake;

  TRes call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$DeleteStocktake$deleteStocktake$data? data,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteStocktake$deleteStocktake$data<TRes> get data;
}

class _CopyWithImpl$Mutation$DeleteStocktake$deleteStocktake<TRes>
    implements CopyWith$Mutation$DeleteStocktake$deleteStocktake<TRes> {
  _CopyWithImpl$Mutation$DeleteStocktake$deleteStocktake(
    this._instance,
    this._then,
  );

  final Mutation$DeleteStocktake$deleteStocktake _instance;

  final TRes Function(Mutation$DeleteStocktake$deleteStocktake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? errorCode = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteStocktake$deleteStocktake(
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
          : (data as Mutation$DeleteStocktake$deleteStocktake$data?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DeleteStocktake$deleteStocktake$data<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Mutation$DeleteStocktake$deleteStocktake$data.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$DeleteStocktake$deleteStocktake$data(
            local$data,
            (e) => call(data: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$DeleteStocktake$deleteStocktake<TRes>
    implements CopyWith$Mutation$DeleteStocktake$deleteStocktake<TRes> {
  _CopyWithStubImpl$Mutation$DeleteStocktake$deleteStocktake(this._res);

  TRes _res;

  call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$DeleteStocktake$deleteStocktake$data? data,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeleteStocktake$deleteStocktake$data<TRes> get data =>
      CopyWith$Mutation$DeleteStocktake$deleteStocktake$data.stub(_res);
}

class Mutation$DeleteStocktake$deleteStocktake$data {
  Mutation$DeleteStocktake$deleteStocktake$data({
    required this.id,
    this.$__typename = 'Stocktake',
  });

  factory Mutation$DeleteStocktake$deleteStocktake$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteStocktake$deleteStocktake$data(
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
    if (other is! Mutation$DeleteStocktake$deleteStocktake$data ||
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

extension UtilityExtension$Mutation$DeleteStocktake$deleteStocktake$data
    on Mutation$DeleteStocktake$deleteStocktake$data {
  CopyWith$Mutation$DeleteStocktake$deleteStocktake$data<
    Mutation$DeleteStocktake$deleteStocktake$data
  >
  get copyWith =>
      CopyWith$Mutation$DeleteStocktake$deleteStocktake$data(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteStocktake$deleteStocktake$data<TRes> {
  factory CopyWith$Mutation$DeleteStocktake$deleteStocktake$data(
    Mutation$DeleteStocktake$deleteStocktake$data instance,
    TRes Function(Mutation$DeleteStocktake$deleteStocktake$data) then,
  ) = _CopyWithImpl$Mutation$DeleteStocktake$deleteStocktake$data;

  factory CopyWith$Mutation$DeleteStocktake$deleteStocktake$data.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteStocktake$deleteStocktake$data;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteStocktake$deleteStocktake$data<TRes>
    implements CopyWith$Mutation$DeleteStocktake$deleteStocktake$data<TRes> {
  _CopyWithImpl$Mutation$DeleteStocktake$deleteStocktake$data(
    this._instance,
    this._then,
  );

  final Mutation$DeleteStocktake$deleteStocktake$data _instance;

  final TRes Function(Mutation$DeleteStocktake$deleteStocktake$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$DeleteStocktake$deleteStocktake$data(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$DeleteStocktake$deleteStocktake$data<TRes>
    implements CopyWith$Mutation$DeleteStocktake$deleteStocktake$data<TRes> {
  _CopyWithStubImpl$Mutation$DeleteStocktake$deleteStocktake$data(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
