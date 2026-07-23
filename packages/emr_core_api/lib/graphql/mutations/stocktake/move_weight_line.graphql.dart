import '../../fragments/stocktake/stocktake_fields.graphql.dart';
import '../../fragments/uomvalue_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$MoveWeightLine {
  factory Variables$Mutation$MoveWeightLine({
    required Input$MoveWeightLineInput input,
  }) => Variables$Mutation$MoveWeightLine._({r'input': input});

  Variables$Mutation$MoveWeightLine._(this._$data);

  factory Variables$Mutation$MoveWeightLine.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$MoveWeightLineInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$MoveWeightLine._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$MoveWeightLineInput get input =>
      (_$data['input'] as Input$MoveWeightLineInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$MoveWeightLine<Variables$Mutation$MoveWeightLine>
  get copyWith => CopyWith$Variables$Mutation$MoveWeightLine(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$MoveWeightLine ||
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

abstract class CopyWith$Variables$Mutation$MoveWeightLine<TRes> {
  factory CopyWith$Variables$Mutation$MoveWeightLine(
    Variables$Mutation$MoveWeightLine instance,
    TRes Function(Variables$Mutation$MoveWeightLine) then,
  ) = _CopyWithImpl$Variables$Mutation$MoveWeightLine;

  factory CopyWith$Variables$Mutation$MoveWeightLine.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$MoveWeightLine;

  TRes call({Input$MoveWeightLineInput? input});
}

class _CopyWithImpl$Variables$Mutation$MoveWeightLine<TRes>
    implements CopyWith$Variables$Mutation$MoveWeightLine<TRes> {
  _CopyWithImpl$Variables$Mutation$MoveWeightLine(this._instance, this._then);

  final Variables$Mutation$MoveWeightLine _instance;

  final TRes Function(Variables$Mutation$MoveWeightLine) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$MoveWeightLine._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$MoveWeightLineInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$MoveWeightLine<TRes>
    implements CopyWith$Variables$Mutation$MoveWeightLine<TRes> {
  _CopyWithStubImpl$Variables$Mutation$MoveWeightLine(this._res);

  TRes _res;

  call({Input$MoveWeightLineInput? input}) => _res;
}

class Mutation$MoveWeightLine {
  Mutation$MoveWeightLine({
    required this.moveWeightLineToAnotherLocation,
    this.$__typename = 'Mutation',
  });

  factory Mutation$MoveWeightLine.fromJson(Map<String, dynamic> json) {
    final l$moveWeightLineToAnotherLocation =
        json['moveWeightLineToAnotherLocation'];
    final l$$__typename = json['__typename'];
    return Mutation$MoveWeightLine(
      moveWeightLineToAnotherLocation:
          Mutation$MoveWeightLine$moveWeightLineToAnotherLocation.fromJson(
            (l$moveWeightLineToAnotherLocation as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$MoveWeightLine$moveWeightLineToAnotherLocation
  moveWeightLineToAnotherLocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$moveWeightLineToAnotherLocation = moveWeightLineToAnotherLocation;
    _resultData['moveWeightLineToAnotherLocation'] =
        l$moveWeightLineToAnotherLocation.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$moveWeightLineToAnotherLocation = moveWeightLineToAnotherLocation;
    final l$$__typename = $__typename;
    return Object.hashAll([l$moveWeightLineToAnotherLocation, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$MoveWeightLine || runtimeType != other.runtimeType) {
      return false;
    }
    final l$moveWeightLineToAnotherLocation = moveWeightLineToAnotherLocation;
    final lOther$moveWeightLineToAnotherLocation =
        other.moveWeightLineToAnotherLocation;
    if (l$moveWeightLineToAnotherLocation !=
        lOther$moveWeightLineToAnotherLocation) {
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

extension UtilityExtension$Mutation$MoveWeightLine on Mutation$MoveWeightLine {
  CopyWith$Mutation$MoveWeightLine<Mutation$MoveWeightLine> get copyWith =>
      CopyWith$Mutation$MoveWeightLine(this, (i) => i);
}

abstract class CopyWith$Mutation$MoveWeightLine<TRes> {
  factory CopyWith$Mutation$MoveWeightLine(
    Mutation$MoveWeightLine instance,
    TRes Function(Mutation$MoveWeightLine) then,
  ) = _CopyWithImpl$Mutation$MoveWeightLine;

  factory CopyWith$Mutation$MoveWeightLine.stub(TRes res) =
      _CopyWithStubImpl$Mutation$MoveWeightLine;

  TRes call({
    Mutation$MoveWeightLine$moveWeightLineToAnotherLocation?
    moveWeightLineToAnotherLocation,
    String? $__typename,
  });
  CopyWith$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation<TRes>
  get moveWeightLineToAnotherLocation;
}

class _CopyWithImpl$Mutation$MoveWeightLine<TRes>
    implements CopyWith$Mutation$MoveWeightLine<TRes> {
  _CopyWithImpl$Mutation$MoveWeightLine(this._instance, this._then);

  final Mutation$MoveWeightLine _instance;

  final TRes Function(Mutation$MoveWeightLine) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? moveWeightLineToAnotherLocation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$MoveWeightLine(
      moveWeightLineToAnotherLocation:
          moveWeightLineToAnotherLocation == _undefined ||
              moveWeightLineToAnotherLocation == null
          ? _instance.moveWeightLineToAnotherLocation
          : (moveWeightLineToAnotherLocation
                as Mutation$MoveWeightLine$moveWeightLineToAnotherLocation),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation<TRes>
  get moveWeightLineToAnotherLocation {
    final local$moveWeightLineToAnotherLocation =
        _instance.moveWeightLineToAnotherLocation;
    return CopyWith$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation(
      local$moveWeightLineToAnotherLocation,
      (e) => call(moveWeightLineToAnotherLocation: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$MoveWeightLine<TRes>
    implements CopyWith$Mutation$MoveWeightLine<TRes> {
  _CopyWithStubImpl$Mutation$MoveWeightLine(this._res);

  TRes _res;

  call({
    Mutation$MoveWeightLine$moveWeightLineToAnotherLocation?
    moveWeightLineToAnotherLocation,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation<TRes>
  get moveWeightLineToAnotherLocation =>
      CopyWith$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation.stub(
        _res,
      );
}

const documentNodeMutationMoveWeightLine = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'MoveWeightLine'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'MoveWeightLineInput'),
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
            name: NameNode(value: 'moveWeightLineToAnotherLocation'),
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
                  name: NameNode(value: 'data'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'StocktakeFields'),
                        directives: [],
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
    fragmentDefinitionStocktakeFields,
    fragmentDefinitionUomValueFragment,
  ],
);

class Mutation$MoveWeightLine$moveWeightLineToAnotherLocation {
  Mutation$MoveWeightLine$moveWeightLineToAnotherLocation({
    this.data,
    required this.success,
    required this.message,
    required this.errorCode,
    this.$__typename = 'StocktakeResponseOfStocktake',
  });

  factory Mutation$MoveWeightLine$moveWeightLineToAnotherLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$data = json['data'];
    final l$success = json['success'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$$__typename = json['__typename'];
    return Mutation$MoveWeightLine$moveWeightLineToAnotherLocation(
      data: l$data == null
          ? null
          : Fragment$StocktakeFields.fromJson((l$data as Map<String, dynamic>)),
      success: (l$success as bool),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$StocktakeFields? data;

  final bool success;

  final String message;

  final String errorCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$data = data;
    _resultData['data'] = l$data?.toJson();
    final l$success = success;
    _resultData['success'] = l$success;
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
    final l$data = data;
    final l$success = success;
    final l$message = message;
    final l$errorCode = errorCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$data,
      l$success,
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
    if (other is! Mutation$MoveWeightLine$moveWeightLineToAnotherLocation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation
    on Mutation$MoveWeightLine$moveWeightLineToAnotherLocation {
  CopyWith$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation<
    Mutation$MoveWeightLine$moveWeightLineToAnotherLocation
  >
  get copyWith =>
      CopyWith$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation<
  TRes
> {
  factory CopyWith$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation(
    Mutation$MoveWeightLine$moveWeightLineToAnotherLocation instance,
    TRes Function(Mutation$MoveWeightLine$moveWeightLineToAnotherLocation) then,
  ) = _CopyWithImpl$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation;

  factory CopyWith$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation;

  TRes call({
    Fragment$StocktakeFields? data,
    bool? success,
    String? message,
    String? errorCode,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeFields<TRes> get data;
}

class _CopyWithImpl$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation<
  TRes
>
    implements
        CopyWith$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation<TRes> {
  _CopyWithImpl$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation(
    this._instance,
    this._then,
  );

  final Mutation$MoveWeightLine$moveWeightLineToAnotherLocation _instance;

  final TRes Function(Mutation$MoveWeightLine$moveWeightLineToAnotherLocation)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? success = _undefined,
    Object? message = _undefined,
    Object? errorCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$MoveWeightLine$moveWeightLineToAnotherLocation(
      data: data == _undefined
          ? _instance.data
          : (data as Fragment$StocktakeFields?),
      success: success == _undefined || success == null
          ? _instance.success
          : (success as bool),
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

  CopyWith$Fragment$StocktakeFields<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Fragment$StocktakeFields.stub(_then(_instance))
        : CopyWith$Fragment$StocktakeFields(local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation<
  TRes
>
    implements
        CopyWith$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation<TRes> {
  _CopyWithStubImpl$Mutation$MoveWeightLine$moveWeightLineToAnotherLocation(
    this._res,
  );

  TRes _res;

  call({
    Fragment$StocktakeFields? data,
    bool? success,
    String? message,
    String? errorCode,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeFields<TRes> get data =>
      CopyWith$Fragment$StocktakeFields.stub(_res);
}
