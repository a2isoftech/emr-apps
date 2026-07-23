import '../../fragments/stocktake/stocktake_fields.graphql.dart';
import '../../fragments/uomvalue_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateStockTakeLocationStatus {
  factory Variables$Mutation$UpdateStockTakeLocationStatus({
    required Input$UpdateLocationStatusInput input,
  }) => Variables$Mutation$UpdateStockTakeLocationStatus._({r'input': input});

  Variables$Mutation$UpdateStockTakeLocationStatus._(this._$data);

  factory Variables$Mutation$UpdateStockTakeLocationStatus.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateLocationStatusInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateStockTakeLocationStatus._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateLocationStatusInput get input =>
      (_$data['input'] as Input$UpdateLocationStatusInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateStockTakeLocationStatus<
    Variables$Mutation$UpdateStockTakeLocationStatus
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateStockTakeLocationStatus(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateStockTakeLocationStatus ||
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

abstract class CopyWith$Variables$Mutation$UpdateStockTakeLocationStatus<TRes> {
  factory CopyWith$Variables$Mutation$UpdateStockTakeLocationStatus(
    Variables$Mutation$UpdateStockTakeLocationStatus instance,
    TRes Function(Variables$Mutation$UpdateStockTakeLocationStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateStockTakeLocationStatus;

  factory CopyWith$Variables$Mutation$UpdateStockTakeLocationStatus.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$UpdateStockTakeLocationStatus;

  TRes call({Input$UpdateLocationStatusInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateStockTakeLocationStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateStockTakeLocationStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateStockTakeLocationStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateStockTakeLocationStatus _instance;

  final TRes Function(Variables$Mutation$UpdateStockTakeLocationStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateStockTakeLocationStatus._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpdateLocationStatusInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateStockTakeLocationStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateStockTakeLocationStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateStockTakeLocationStatus(this._res);

  TRes _res;

  call({Input$UpdateLocationStatusInput? input}) => _res;
}

class Mutation$UpdateStockTakeLocationStatus {
  Mutation$UpdateStockTakeLocationStatus({
    required this.updateStockTakeLocationStatus,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateStockTakeLocationStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$updateStockTakeLocationStatus =
        json['updateStockTakeLocationStatus'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateStockTakeLocationStatus(
      updateStockTakeLocationStatus:
          Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus.fromJson(
            (l$updateStockTakeLocationStatus as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus
  updateStockTakeLocationStatus;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateStockTakeLocationStatus = updateStockTakeLocationStatus;
    _resultData['updateStockTakeLocationStatus'] =
        l$updateStockTakeLocationStatus.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateStockTakeLocationStatus = updateStockTakeLocationStatus;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateStockTakeLocationStatus, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateStockTakeLocationStatus ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateStockTakeLocationStatus = updateStockTakeLocationStatus;
    final lOther$updateStockTakeLocationStatus =
        other.updateStockTakeLocationStatus;
    if (l$updateStockTakeLocationStatus !=
        lOther$updateStockTakeLocationStatus) {
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

extension UtilityExtension$Mutation$UpdateStockTakeLocationStatus
    on Mutation$UpdateStockTakeLocationStatus {
  CopyWith$Mutation$UpdateStockTakeLocationStatus<
    Mutation$UpdateStockTakeLocationStatus
  >
  get copyWith =>
      CopyWith$Mutation$UpdateStockTakeLocationStatus(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateStockTakeLocationStatus<TRes> {
  factory CopyWith$Mutation$UpdateStockTakeLocationStatus(
    Mutation$UpdateStockTakeLocationStatus instance,
    TRes Function(Mutation$UpdateStockTakeLocationStatus) then,
  ) = _CopyWithImpl$Mutation$UpdateStockTakeLocationStatus;

  factory CopyWith$Mutation$UpdateStockTakeLocationStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateStockTakeLocationStatus;

  TRes call({
    Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus?
    updateStockTakeLocationStatus,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus<
    TRes
  >
  get updateStockTakeLocationStatus;
}

class _CopyWithImpl$Mutation$UpdateStockTakeLocationStatus<TRes>
    implements CopyWith$Mutation$UpdateStockTakeLocationStatus<TRes> {
  _CopyWithImpl$Mutation$UpdateStockTakeLocationStatus(
    this._instance,
    this._then,
  );

  final Mutation$UpdateStockTakeLocationStatus _instance;

  final TRes Function(Mutation$UpdateStockTakeLocationStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateStockTakeLocationStatus = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateStockTakeLocationStatus(
      updateStockTakeLocationStatus:
          updateStockTakeLocationStatus == _undefined ||
              updateStockTakeLocationStatus == null
          ? _instance.updateStockTakeLocationStatus
          : (updateStockTakeLocationStatus
                as Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus<
    TRes
  >
  get updateStockTakeLocationStatus {
    final local$updateStockTakeLocationStatus =
        _instance.updateStockTakeLocationStatus;
    return CopyWith$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus(
      local$updateStockTakeLocationStatus,
      (e) => call(updateStockTakeLocationStatus: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateStockTakeLocationStatus<TRes>
    implements CopyWith$Mutation$UpdateStockTakeLocationStatus<TRes> {
  _CopyWithStubImpl$Mutation$UpdateStockTakeLocationStatus(this._res);

  TRes _res;

  call({
    Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus?
    updateStockTakeLocationStatus,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus<
    TRes
  >
  get updateStockTakeLocationStatus =>
      CopyWith$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus.stub(
        _res,
      );
}

const documentNodeMutationUpdateStockTakeLocationStatus = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateStockTakeLocationStatus'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateLocationStatusInput'),
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
            name: NameNode(value: 'updateStockTakeLocationStatus'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'updateLocationStatusInput'),
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

class Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus {
  Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus({
    required this.success,
    required this.message,
    required this.errorCode,
    this.data,
    this.$__typename = 'StocktakeResponseOfStocktake',
  });

  factory Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus(
      success: (l$success as bool),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      data: l$data == null
          ? null
          : Fragment$StocktakeFields.fromJson((l$data as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String message;

  final String errorCode;

  final Fragment$StocktakeFields? data;

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
            is! Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus ||
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

extension UtilityExtension$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus
    on Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus {
  CopyWith$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus<
    Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus
  >
  get copyWith =>
      CopyWith$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus<
  TRes
> {
  factory CopyWith$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus(
    Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus
    instance,
    TRes Function(
      Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus;

  factory CopyWith$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus;

  TRes call({
    bool? success,
    String? message,
    String? errorCode,
    Fragment$StocktakeFields? data,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeFields<TRes> get data;
}

class _CopyWithImpl$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus<
  TRes
>
    implements
        CopyWith$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus(
    this._instance,
    this._then,
  );

  final Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus
  _instance;

  final TRes Function(
    Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus,
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
    Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus(
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
          : (data as Fragment$StocktakeFields?),
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

class _CopyWithStubImpl$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus<
  TRes
>
    implements
        CopyWith$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateStockTakeLocationStatus$updateStockTakeLocationStatus(
    this._res,
  );

  TRes _res;

  call({
    bool? success,
    String? message,
    String? errorCode,
    Fragment$StocktakeFields? data,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeFields<TRes> get data =>
      CopyWith$Fragment$StocktakeFields.stub(_res);
}
