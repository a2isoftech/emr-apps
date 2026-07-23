import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateStockTakeBasicDetails {
  factory Variables$Mutation$UpdateStockTakeBasicDetails({
    required Input$UpdateBasicDetailsInput input,
  }) => Variables$Mutation$UpdateStockTakeBasicDetails._({r'input': input});

  Variables$Mutation$UpdateStockTakeBasicDetails._(this._$data);

  factory Variables$Mutation$UpdateStockTakeBasicDetails.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateBasicDetailsInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateStockTakeBasicDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateBasicDetailsInput get input =>
      (_$data['input'] as Input$UpdateBasicDetailsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateStockTakeBasicDetails<
    Variables$Mutation$UpdateStockTakeBasicDetails
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateStockTakeBasicDetails(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateStockTakeBasicDetails ||
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

abstract class CopyWith$Variables$Mutation$UpdateStockTakeBasicDetails<TRes> {
  factory CopyWith$Variables$Mutation$UpdateStockTakeBasicDetails(
    Variables$Mutation$UpdateStockTakeBasicDetails instance,
    TRes Function(Variables$Mutation$UpdateStockTakeBasicDetails) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateStockTakeBasicDetails;

  factory CopyWith$Variables$Mutation$UpdateStockTakeBasicDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$UpdateStockTakeBasicDetails;

  TRes call({Input$UpdateBasicDetailsInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateStockTakeBasicDetails<TRes>
    implements CopyWith$Variables$Mutation$UpdateStockTakeBasicDetails<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateStockTakeBasicDetails(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateStockTakeBasicDetails _instance;

  final TRes Function(Variables$Mutation$UpdateStockTakeBasicDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateStockTakeBasicDetails._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpdateBasicDetailsInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateStockTakeBasicDetails<TRes>
    implements CopyWith$Variables$Mutation$UpdateStockTakeBasicDetails<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateStockTakeBasicDetails(this._res);

  TRes _res;

  call({Input$UpdateBasicDetailsInput? input}) => _res;
}

class Mutation$UpdateStockTakeBasicDetails {
  Mutation$UpdateStockTakeBasicDetails({
    required this.updateStockTakeBasicDetails,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateStockTakeBasicDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$updateStockTakeBasicDetails = json['updateStockTakeBasicDetails'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateStockTakeBasicDetails(
      updateStockTakeBasicDetails:
          Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails.fromJson(
            (l$updateStockTakeBasicDetails as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails
  updateStockTakeBasicDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateStockTakeBasicDetails = updateStockTakeBasicDetails;
    _resultData['updateStockTakeBasicDetails'] = l$updateStockTakeBasicDetails
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateStockTakeBasicDetails = updateStockTakeBasicDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateStockTakeBasicDetails, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateStockTakeBasicDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateStockTakeBasicDetails = updateStockTakeBasicDetails;
    final lOther$updateStockTakeBasicDetails =
        other.updateStockTakeBasicDetails;
    if (l$updateStockTakeBasicDetails != lOther$updateStockTakeBasicDetails) {
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

extension UtilityExtension$Mutation$UpdateStockTakeBasicDetails
    on Mutation$UpdateStockTakeBasicDetails {
  CopyWith$Mutation$UpdateStockTakeBasicDetails<
    Mutation$UpdateStockTakeBasicDetails
  >
  get copyWith => CopyWith$Mutation$UpdateStockTakeBasicDetails(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateStockTakeBasicDetails<TRes> {
  factory CopyWith$Mutation$UpdateStockTakeBasicDetails(
    Mutation$UpdateStockTakeBasicDetails instance,
    TRes Function(Mutation$UpdateStockTakeBasicDetails) then,
  ) = _CopyWithImpl$Mutation$UpdateStockTakeBasicDetails;

  factory CopyWith$Mutation$UpdateStockTakeBasicDetails.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateStockTakeBasicDetails;

  TRes call({
    Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails?
    updateStockTakeBasicDetails,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails<
    TRes
  >
  get updateStockTakeBasicDetails;
}

class _CopyWithImpl$Mutation$UpdateStockTakeBasicDetails<TRes>
    implements CopyWith$Mutation$UpdateStockTakeBasicDetails<TRes> {
  _CopyWithImpl$Mutation$UpdateStockTakeBasicDetails(
    this._instance,
    this._then,
  );

  final Mutation$UpdateStockTakeBasicDetails _instance;

  final TRes Function(Mutation$UpdateStockTakeBasicDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateStockTakeBasicDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateStockTakeBasicDetails(
      updateStockTakeBasicDetails:
          updateStockTakeBasicDetails == _undefined ||
              updateStockTakeBasicDetails == null
          ? _instance.updateStockTakeBasicDetails
          : (updateStockTakeBasicDetails
                as Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails<
    TRes
  >
  get updateStockTakeBasicDetails {
    final local$updateStockTakeBasicDetails =
        _instance.updateStockTakeBasicDetails;
    return CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails(
      local$updateStockTakeBasicDetails,
      (e) => call(updateStockTakeBasicDetails: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateStockTakeBasicDetails<TRes>
    implements CopyWith$Mutation$UpdateStockTakeBasicDetails<TRes> {
  _CopyWithStubImpl$Mutation$UpdateStockTakeBasicDetails(this._res);

  TRes _res;

  call({
    Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails?
    updateStockTakeBasicDetails,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails<
    TRes
  >
  get updateStockTakeBasicDetails =>
      CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails.stub(
        _res,
      );
}

const documentNodeMutationUpdateStockTakeBasicDetails = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateStockTakeBasicDetails'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateBasicDetailsInput'),
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
            name: NameNode(value: 'updateStockTakeBasicDetails'),
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

class Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails {
  Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails({
    required this.success,
    required this.message,
    required this.errorCode,
    this.data,
    this.$__typename = 'StocktakeResponseOfStocktake',
  });

  factory Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails(
      success: (l$success as bool),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      data: l$data == null
          ? null
          : Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data.fromJson(
              (l$data as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String message;

  final String errorCode;

  final Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data?
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
            is! Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails ||
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

extension UtilityExtension$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails
    on Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails {
  CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails<
    Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails
  >
  get copyWith =>
      CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails<
  TRes
> {
  factory CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails(
    Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails instance,
    TRes Function(
      Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails;

  factory CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails;

  TRes call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data? data,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data<
    TRes
  >
  get data;
}

class _CopyWithImpl$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails<
  TRes
>
    implements
        CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails(
    this._instance,
    this._then,
  );

  final Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails
  _instance;

  final TRes Function(
    Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails,
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
    Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails(
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
                as Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data<
    TRes
  >
  get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data(
            local$data,
            (e) => call(data: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails<
  TRes
>
    implements
        CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails(
    this._res,
  );

  TRes _res;

  call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data? data,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data<
    TRes
  >
  get data =>
      CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data.stub(
        _res,
      );
}

class Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data {
  Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data({
    required this.id,
    this.$__typename = 'Stocktake',
  });

  factory Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data(
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
    if (other
            is! Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data ||
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

extension UtilityExtension$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data
    on Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data {
  CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data<
    Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data
  >
  get copyWith =>
      CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data<
  TRes
> {
  factory CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data(
    Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data
    instance,
    TRes Function(
      Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data;

  factory CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data<
  TRes
>
    implements
        CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data(
    this._instance,
    this._then,
  );

  final Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data
  _instance;

  final TRes Function(
    Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data<
  TRes
>
    implements
        CopyWith$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateStockTakeBasicDetails$updateStockTakeBasicDetails$data(
    this._res,
  );

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
