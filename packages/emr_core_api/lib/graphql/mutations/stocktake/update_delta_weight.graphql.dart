import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateDeltaWeight {
  factory Variables$Mutation$UpdateDeltaWeight({
    required Input$UpdateDeltaWeightInput input,
  }) => Variables$Mutation$UpdateDeltaWeight._({r'input': input});

  Variables$Mutation$UpdateDeltaWeight._(this._$data);

  factory Variables$Mutation$UpdateDeltaWeight.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateDeltaWeightInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateDeltaWeight._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateDeltaWeightInput get input =>
      (_$data['input'] as Input$UpdateDeltaWeightInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDeltaWeight<
    Variables$Mutation$UpdateDeltaWeight
  >
  get copyWith => CopyWith$Variables$Mutation$UpdateDeltaWeight(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateDeltaWeight ||
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

abstract class CopyWith$Variables$Mutation$UpdateDeltaWeight<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDeltaWeight(
    Variables$Mutation$UpdateDeltaWeight instance,
    TRes Function(Variables$Mutation$UpdateDeltaWeight) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDeltaWeight;

  factory CopyWith$Variables$Mutation$UpdateDeltaWeight.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDeltaWeight;

  TRes call({Input$UpdateDeltaWeightInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateDeltaWeight<TRes>
    implements CopyWith$Variables$Mutation$UpdateDeltaWeight<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDeltaWeight(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDeltaWeight _instance;

  final TRes Function(Variables$Mutation$UpdateDeltaWeight) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateDeltaWeight._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpdateDeltaWeightInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDeltaWeight<TRes>
    implements CopyWith$Variables$Mutation$UpdateDeltaWeight<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDeltaWeight(this._res);

  TRes _res;

  call({Input$UpdateDeltaWeightInput? input}) => _res;
}

class Mutation$UpdateDeltaWeight {
  Mutation$UpdateDeltaWeight({
    required this.updateDeltaWeight,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateDeltaWeight.fromJson(Map<String, dynamic> json) {
    final l$updateDeltaWeight = json['updateDeltaWeight'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDeltaWeight(
      updateDeltaWeight: Mutation$UpdateDeltaWeight$updateDeltaWeight.fromJson(
        (l$updateDeltaWeight as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateDeltaWeight$updateDeltaWeight updateDeltaWeight;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateDeltaWeight = updateDeltaWeight;
    _resultData['updateDeltaWeight'] = l$updateDeltaWeight.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateDeltaWeight = updateDeltaWeight;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateDeltaWeight, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateDeltaWeight ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateDeltaWeight = updateDeltaWeight;
    final lOther$updateDeltaWeight = other.updateDeltaWeight;
    if (l$updateDeltaWeight != lOther$updateDeltaWeight) {
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

extension UtilityExtension$Mutation$UpdateDeltaWeight
    on Mutation$UpdateDeltaWeight {
  CopyWith$Mutation$UpdateDeltaWeight<Mutation$UpdateDeltaWeight>
  get copyWith => CopyWith$Mutation$UpdateDeltaWeight(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateDeltaWeight<TRes> {
  factory CopyWith$Mutation$UpdateDeltaWeight(
    Mutation$UpdateDeltaWeight instance,
    TRes Function(Mutation$UpdateDeltaWeight) then,
  ) = _CopyWithImpl$Mutation$UpdateDeltaWeight;

  factory CopyWith$Mutation$UpdateDeltaWeight.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDeltaWeight;

  TRes call({
    Mutation$UpdateDeltaWeight$updateDeltaWeight? updateDeltaWeight,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateDeltaWeight$updateDeltaWeight<TRes>
  get updateDeltaWeight;
}

class _CopyWithImpl$Mutation$UpdateDeltaWeight<TRes>
    implements CopyWith$Mutation$UpdateDeltaWeight<TRes> {
  _CopyWithImpl$Mutation$UpdateDeltaWeight(this._instance, this._then);

  final Mutation$UpdateDeltaWeight _instance;

  final TRes Function(Mutation$UpdateDeltaWeight) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateDeltaWeight = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateDeltaWeight(
      updateDeltaWeight:
          updateDeltaWeight == _undefined || updateDeltaWeight == null
          ? _instance.updateDeltaWeight
          : (updateDeltaWeight as Mutation$UpdateDeltaWeight$updateDeltaWeight),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateDeltaWeight$updateDeltaWeight<TRes>
  get updateDeltaWeight {
    final local$updateDeltaWeight = _instance.updateDeltaWeight;
    return CopyWith$Mutation$UpdateDeltaWeight$updateDeltaWeight(
      local$updateDeltaWeight,
      (e) => call(updateDeltaWeight: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateDeltaWeight<TRes>
    implements CopyWith$Mutation$UpdateDeltaWeight<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDeltaWeight(this._res);

  TRes _res;

  call({
    Mutation$UpdateDeltaWeight$updateDeltaWeight? updateDeltaWeight,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateDeltaWeight$updateDeltaWeight<TRes>
  get updateDeltaWeight =>
      CopyWith$Mutation$UpdateDeltaWeight$updateDeltaWeight.stub(_res);
}

const documentNodeMutationUpdateDeltaWeight = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateDeltaWeight'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateDeltaWeightInput'),
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
            name: NameNode(value: 'updateDeltaWeight'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
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
                  name: NameNode(value: 'data'),
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

class Mutation$UpdateDeltaWeight$updateDeltaWeight {
  Mutation$UpdateDeltaWeight$updateDeltaWeight({
    required this.success,
    required this.data,
    required this.message,
    required this.errorCode,
    this.$__typename = 'StocktakeResponseOfBoolean',
  });

  factory Mutation$UpdateDeltaWeight$updateDeltaWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$success = json['success'];
    final l$data = json['data'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDeltaWeight$updateDeltaWeight(
      success: (l$success as bool),
      data: (l$data as bool),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final bool data;

  final String message;

  final String errorCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$data = data;
    _resultData['data'] = l$data;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$errorCode = errorCode;
    _resultData['errorCode'] = l$errorCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$data = data;
    final l$message = message;
    final l$errorCode = errorCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$data,
      l$message,
      l$errorCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateDeltaWeight$updateDeltaWeight ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateDeltaWeight$updateDeltaWeight
    on Mutation$UpdateDeltaWeight$updateDeltaWeight {
  CopyWith$Mutation$UpdateDeltaWeight$updateDeltaWeight<
    Mutation$UpdateDeltaWeight$updateDeltaWeight
  >
  get copyWith =>
      CopyWith$Mutation$UpdateDeltaWeight$updateDeltaWeight(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateDeltaWeight$updateDeltaWeight<TRes> {
  factory CopyWith$Mutation$UpdateDeltaWeight$updateDeltaWeight(
    Mutation$UpdateDeltaWeight$updateDeltaWeight instance,
    TRes Function(Mutation$UpdateDeltaWeight$updateDeltaWeight) then,
  ) = _CopyWithImpl$Mutation$UpdateDeltaWeight$updateDeltaWeight;

  factory CopyWith$Mutation$UpdateDeltaWeight$updateDeltaWeight.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDeltaWeight$updateDeltaWeight;

  TRes call({
    bool? success,
    bool? data,
    String? message,
    String? errorCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateDeltaWeight$updateDeltaWeight<TRes>
    implements CopyWith$Mutation$UpdateDeltaWeight$updateDeltaWeight<TRes> {
  _CopyWithImpl$Mutation$UpdateDeltaWeight$updateDeltaWeight(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDeltaWeight$updateDeltaWeight _instance;

  final TRes Function(Mutation$UpdateDeltaWeight$updateDeltaWeight) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? data = _undefined,
    Object? message = _undefined,
    Object? errorCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateDeltaWeight$updateDeltaWeight(
      success: success == _undefined || success == null
          ? _instance.success
          : (success as bool),
      data: data == _undefined || data == null
          ? _instance.data
          : (data as bool),
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      errorCode: errorCode == _undefined || errorCode == null
          ? _instance.errorCode
          : (errorCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateDeltaWeight$updateDeltaWeight<TRes>
    implements CopyWith$Mutation$UpdateDeltaWeight$updateDeltaWeight<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDeltaWeight$updateDeltaWeight(this._res);

  TRes _res;

  call({
    bool? success,
    bool? data,
    String? message,
    String? errorCode,
    String? $__typename,
  }) => _res;
}
