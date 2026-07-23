import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddStocktakeWeight {
  factory Variables$Mutation$AddStocktakeWeight({
    required Input$AddStocktakeWeightInput input,
  }) => Variables$Mutation$AddStocktakeWeight._({r'input': input});

  Variables$Mutation$AddStocktakeWeight._(this._$data);

  factory Variables$Mutation$AddStocktakeWeight.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$AddStocktakeWeightInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$AddStocktakeWeight._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AddStocktakeWeightInput get input =>
      (_$data['input'] as Input$AddStocktakeWeightInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AddStocktakeWeight<
    Variables$Mutation$AddStocktakeWeight
  >
  get copyWith =>
      CopyWith$Variables$Mutation$AddStocktakeWeight(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddStocktakeWeight ||
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

abstract class CopyWith$Variables$Mutation$AddStocktakeWeight<TRes> {
  factory CopyWith$Variables$Mutation$AddStocktakeWeight(
    Variables$Mutation$AddStocktakeWeight instance,
    TRes Function(Variables$Mutation$AddStocktakeWeight) then,
  ) = _CopyWithImpl$Variables$Mutation$AddStocktakeWeight;

  factory CopyWith$Variables$Mutation$AddStocktakeWeight.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddStocktakeWeight;

  TRes call({Input$AddStocktakeWeightInput? input});
}

class _CopyWithImpl$Variables$Mutation$AddStocktakeWeight<TRes>
    implements CopyWith$Variables$Mutation$AddStocktakeWeight<TRes> {
  _CopyWithImpl$Variables$Mutation$AddStocktakeWeight(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddStocktakeWeight _instance;

  final TRes Function(Variables$Mutation$AddStocktakeWeight) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$AddStocktakeWeight._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$AddStocktakeWeightInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddStocktakeWeight<TRes>
    implements CopyWith$Variables$Mutation$AddStocktakeWeight<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddStocktakeWeight(this._res);

  TRes _res;

  call({Input$AddStocktakeWeightInput? input}) => _res;
}

class Mutation$AddStocktakeWeight {
  Mutation$AddStocktakeWeight({
    required this.addStocktakeWeight,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddStocktakeWeight.fromJson(Map<String, dynamic> json) {
    final l$addStocktakeWeight = json['addStocktakeWeight'];
    final l$$__typename = json['__typename'];
    return Mutation$AddStocktakeWeight(
      addStocktakeWeight:
          Mutation$AddStocktakeWeight$addStocktakeWeight.fromJson(
            (l$addStocktakeWeight as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddStocktakeWeight$addStocktakeWeight addStocktakeWeight;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addStocktakeWeight = addStocktakeWeight;
    _resultData['addStocktakeWeight'] = l$addStocktakeWeight.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addStocktakeWeight = addStocktakeWeight;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addStocktakeWeight, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddStocktakeWeight ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addStocktakeWeight = addStocktakeWeight;
    final lOther$addStocktakeWeight = other.addStocktakeWeight;
    if (l$addStocktakeWeight != lOther$addStocktakeWeight) {
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

extension UtilityExtension$Mutation$AddStocktakeWeight
    on Mutation$AddStocktakeWeight {
  CopyWith$Mutation$AddStocktakeWeight<Mutation$AddStocktakeWeight>
  get copyWith => CopyWith$Mutation$AddStocktakeWeight(this, (i) => i);
}

abstract class CopyWith$Mutation$AddStocktakeWeight<TRes> {
  factory CopyWith$Mutation$AddStocktakeWeight(
    Mutation$AddStocktakeWeight instance,
    TRes Function(Mutation$AddStocktakeWeight) then,
  ) = _CopyWithImpl$Mutation$AddStocktakeWeight;

  factory CopyWith$Mutation$AddStocktakeWeight.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddStocktakeWeight;

  TRes call({
    Mutation$AddStocktakeWeight$addStocktakeWeight? addStocktakeWeight,
    String? $__typename,
  });
  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight<TRes>
  get addStocktakeWeight;
}

class _CopyWithImpl$Mutation$AddStocktakeWeight<TRes>
    implements CopyWith$Mutation$AddStocktakeWeight<TRes> {
  _CopyWithImpl$Mutation$AddStocktakeWeight(this._instance, this._then);

  final Mutation$AddStocktakeWeight _instance;

  final TRes Function(Mutation$AddStocktakeWeight) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addStocktakeWeight = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddStocktakeWeight(
      addStocktakeWeight:
          addStocktakeWeight == _undefined || addStocktakeWeight == null
          ? _instance.addStocktakeWeight
          : (addStocktakeWeight
                as Mutation$AddStocktakeWeight$addStocktakeWeight),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight<TRes>
  get addStocktakeWeight {
    final local$addStocktakeWeight = _instance.addStocktakeWeight;
    return CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight(
      local$addStocktakeWeight,
      (e) => call(addStocktakeWeight: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$AddStocktakeWeight<TRes>
    implements CopyWith$Mutation$AddStocktakeWeight<TRes> {
  _CopyWithStubImpl$Mutation$AddStocktakeWeight(this._res);

  TRes _res;

  call({
    Mutation$AddStocktakeWeight$addStocktakeWeight? addStocktakeWeight,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight<TRes>
  get addStocktakeWeight =>
      CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight.stub(_res);
}

const documentNodeMutationAddStocktakeWeight = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddStocktakeWeight'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'AddStocktakeWeightInput'),
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
            name: NameNode(value: 'addStocktakeWeight'),
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
                        name: NameNode(value: 'locationId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'productId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'takenWeights'),
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
                              name: NameNode(value: 'title'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'grossWeightSerialNumber'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'tareWeightSerialNumber'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value: 'grossWeightScaleIdentifier',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value: 'tareWeightScaleIdentifier',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'grossWeight'),
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
                                    name: NameNode(value: 'isRate'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'mtValue'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'uom'),
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
                              name: NameNode(value: 'tareWeight'),
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
                                    name: NameNode(value: 'isRate'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'mtValue'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'uom'),
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
                              name: NameNode(value: 'created'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'at'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'userInfoId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'userName'),
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
                              name: NameNode(value: 'isDeleted'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'captureMethod'),
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
  ],
);

class Mutation$AddStocktakeWeight$addStocktakeWeight {
  Mutation$AddStocktakeWeight$addStocktakeWeight({
    required this.success,
    required this.message,
    required this.errorCode,
    this.data,
    this.$__typename = 'StocktakeResponseOfStocktakeLocation',
  });

  factory Mutation$AddStocktakeWeight$addStocktakeWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$AddStocktakeWeight$addStocktakeWeight(
      success: (l$success as bool),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      data: l$data == null
          ? null
          : Mutation$AddStocktakeWeight$addStocktakeWeight$data.fromJson(
              (l$data as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String message;

  final String errorCode;

  final Mutation$AddStocktakeWeight$addStocktakeWeight$data? data;

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
    if (other is! Mutation$AddStocktakeWeight$addStocktakeWeight ||
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

extension UtilityExtension$Mutation$AddStocktakeWeight$addStocktakeWeight
    on Mutation$AddStocktakeWeight$addStocktakeWeight {
  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight<
    Mutation$AddStocktakeWeight$addStocktakeWeight
  >
  get copyWith =>
      CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight(this, (i) => i);
}

abstract class CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight<TRes> {
  factory CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight(
    Mutation$AddStocktakeWeight$addStocktakeWeight instance,
    TRes Function(Mutation$AddStocktakeWeight$addStocktakeWeight) then,
  ) = _CopyWithImpl$Mutation$AddStocktakeWeight$addStocktakeWeight;

  factory CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddStocktakeWeight$addStocktakeWeight;

  TRes call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$AddStocktakeWeight$addStocktakeWeight$data? data,
    String? $__typename,
  });
  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data<TRes> get data;
}

class _CopyWithImpl$Mutation$AddStocktakeWeight$addStocktakeWeight<TRes>
    implements CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight<TRes> {
  _CopyWithImpl$Mutation$AddStocktakeWeight$addStocktakeWeight(
    this._instance,
    this._then,
  );

  final Mutation$AddStocktakeWeight$addStocktakeWeight _instance;

  final TRes Function(Mutation$AddStocktakeWeight$addStocktakeWeight) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? errorCode = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddStocktakeWeight$addStocktakeWeight(
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
          : (data as Mutation$AddStocktakeWeight$addStocktakeWeight$data?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data(
            local$data,
            (e) => call(data: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$AddStocktakeWeight$addStocktakeWeight<TRes>
    implements CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight<TRes> {
  _CopyWithStubImpl$Mutation$AddStocktakeWeight$addStocktakeWeight(this._res);

  TRes _res;

  call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$AddStocktakeWeight$addStocktakeWeight$data? data,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data<TRes> get data =>
      CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data.stub(_res);
}

class Mutation$AddStocktakeWeight$addStocktakeWeight$data {
  Mutation$AddStocktakeWeight$addStocktakeWeight$data({
    required this.locationId,
    this.productId,
    required this.takenWeights,
    this.$__typename = 'StocktakeLocation',
  });

  factory Mutation$AddStocktakeWeight$addStocktakeWeight$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$locationId = json['locationId'];
    final l$productId = json['productId'];
    final l$takenWeights = json['takenWeights'];
    final l$$__typename = json['__typename'];
    return Mutation$AddStocktakeWeight$addStocktakeWeight$data(
      locationId: (l$locationId as String),
      productId: (l$productId as String?),
      takenWeights: (l$takenWeights as List<dynamic>)
          .map(
            (e) =>
                Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String locationId;

  final String? productId;

  final List<Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights>
  takenWeights;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$locationId = locationId;
    _resultData['locationId'] = l$locationId;
    final l$productId = productId;
    _resultData['productId'] = l$productId;
    final l$takenWeights = takenWeights;
    _resultData['takenWeights'] = l$takenWeights
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$locationId = locationId;
    final l$productId = productId;
    final l$takenWeights = takenWeights;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$locationId,
      l$productId,
      Object.hashAll(l$takenWeights.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddStocktakeWeight$addStocktakeWeight$data ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$locationId = locationId;
    final lOther$locationId = other.locationId;
    if (l$locationId != lOther$locationId) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    final l$takenWeights = takenWeights;
    final lOther$takenWeights = other.takenWeights;
    if (l$takenWeights.length != lOther$takenWeights.length) {
      return false;
    }
    for (int i = 0; i < l$takenWeights.length; i++) {
      final l$takenWeights$entry = l$takenWeights[i];
      final lOther$takenWeights$entry = lOther$takenWeights[i];
      if (l$takenWeights$entry != lOther$takenWeights$entry) {
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

extension UtilityExtension$Mutation$AddStocktakeWeight$addStocktakeWeight$data
    on Mutation$AddStocktakeWeight$addStocktakeWeight$data {
  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data<
    Mutation$AddStocktakeWeight$addStocktakeWeight$data
  >
  get copyWith => CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data<
  TRes
> {
  factory CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data(
    Mutation$AddStocktakeWeight$addStocktakeWeight$data instance,
    TRes Function(Mutation$AddStocktakeWeight$addStocktakeWeight$data) then,
  ) = _CopyWithImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data;

  factory CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data;

  TRes call({
    String? locationId,
    String? productId,
    List<Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights>?
    takenWeights,
    String? $__typename,
  });
  TRes takenWeights(
    Iterable<Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights>
    Function(
      Iterable<
        CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights<
          Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data<TRes>
    implements
        CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data<TRes> {
  _CopyWithImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data(
    this._instance,
    this._then,
  );

  final Mutation$AddStocktakeWeight$addStocktakeWeight$data _instance;

  final TRes Function(Mutation$AddStocktakeWeight$addStocktakeWeight$data)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? locationId = _undefined,
    Object? productId = _undefined,
    Object? takenWeights = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddStocktakeWeight$addStocktakeWeight$data(
      locationId: locationId == _undefined || locationId == null
          ? _instance.locationId
          : (locationId as String),
      productId: productId == _undefined
          ? _instance.productId
          : (productId as String?),
      takenWeights: takenWeights == _undefined || takenWeights == null
          ? _instance.takenWeights
          : (takenWeights
                as List<
                  Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes takenWeights(
    Iterable<Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights>
    Function(
      Iterable<
        CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights<
          Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights
        >
      >,
    )
    _fn,
  ) => call(
    takenWeights: _fn(
      _instance.takenWeights.map(
        (e) =>
            CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data<
  TRes
>
    implements
        CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data<TRes> {
  _CopyWithStubImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data(
    this._res,
  );

  TRes _res;

  call({
    String? locationId,
    String? productId,
    List<Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights>?
    takenWeights,
    String? $__typename,
  }) => _res;

  takenWeights(_fn) => _res;
}

class Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights {
  Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights({
    required this.id,
    required this.title,
    this.grossWeightSerialNumber,
    this.tareWeightSerialNumber,
    this.grossWeightScaleIdentifier,
    this.tareWeightScaleIdentifier,
    required this.grossWeight,
    required this.tareWeight,
    required this.created,
    required this.isDeleted,
    required this.captureMethod,
    this.$__typename = 'StocktakeWeight',
  });

  factory Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$grossWeightSerialNumber = json['grossWeightSerialNumber'];
    final l$tareWeightSerialNumber = json['tareWeightSerialNumber'];
    final l$grossWeightScaleIdentifier = json['grossWeightScaleIdentifier'];
    final l$tareWeightScaleIdentifier = json['tareWeightScaleIdentifier'];
    final l$grossWeight = json['grossWeight'];
    final l$tareWeight = json['tareWeight'];
    final l$created = json['created'];
    final l$isDeleted = json['isDeleted'];
    final l$captureMethod = json['captureMethod'];
    final l$$__typename = json['__typename'];
    return Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights(
      id: (l$id as int),
      title: (l$title as String),
      grossWeightSerialNumber: (l$grossWeightSerialNumber as String?),
      tareWeightSerialNumber: (l$tareWeightSerialNumber as String?),
      grossWeightScaleIdentifier: (l$grossWeightScaleIdentifier as String?),
      tareWeightScaleIdentifier: (l$tareWeightScaleIdentifier as String?),
      grossWeight:
          Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight.fromJson(
            (l$grossWeight as Map<String, dynamic>),
          ),
      tareWeight:
          Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight.fromJson(
            (l$tareWeight as Map<String, dynamic>),
          ),
      created:
          Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      isDeleted: (l$isDeleted as bool),
      captureMethod: fromJson$Enum$StockTakeWeightCaptureMethod(
        (l$captureMethod as String),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String title;

  final String? grossWeightSerialNumber;

  final String? tareWeightSerialNumber;

  final String? grossWeightScaleIdentifier;

  final String? tareWeightScaleIdentifier;

  final Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight
  grossWeight;

  final Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight
  tareWeight;

  final Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created
  created;

  final bool isDeleted;

  final Enum$StockTakeWeightCaptureMethod captureMethod;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$grossWeightSerialNumber = grossWeightSerialNumber;
    _resultData['grossWeightSerialNumber'] = l$grossWeightSerialNumber;
    final l$tareWeightSerialNumber = tareWeightSerialNumber;
    _resultData['tareWeightSerialNumber'] = l$tareWeightSerialNumber;
    final l$grossWeightScaleIdentifier = grossWeightScaleIdentifier;
    _resultData['grossWeightScaleIdentifier'] = l$grossWeightScaleIdentifier;
    final l$tareWeightScaleIdentifier = tareWeightScaleIdentifier;
    _resultData['tareWeightScaleIdentifier'] = l$tareWeightScaleIdentifier;
    final l$grossWeight = grossWeight;
    _resultData['grossWeight'] = l$grossWeight.toJson();
    final l$tareWeight = tareWeight;
    _resultData['tareWeight'] = l$tareWeight.toJson();
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$isDeleted = isDeleted;
    _resultData['isDeleted'] = l$isDeleted;
    final l$captureMethod = captureMethod;
    _resultData['captureMethod'] = toJson$Enum$StockTakeWeightCaptureMethod(
      l$captureMethod,
    );
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$grossWeightSerialNumber = grossWeightSerialNumber;
    final l$tareWeightSerialNumber = tareWeightSerialNumber;
    final l$grossWeightScaleIdentifier = grossWeightScaleIdentifier;
    final l$tareWeightScaleIdentifier = tareWeightScaleIdentifier;
    final l$grossWeight = grossWeight;
    final l$tareWeight = tareWeight;
    final l$created = created;
    final l$isDeleted = isDeleted;
    final l$captureMethod = captureMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$grossWeightSerialNumber,
      l$tareWeightSerialNumber,
      l$grossWeightScaleIdentifier,
      l$tareWeightScaleIdentifier,
      l$grossWeight,
      l$tareWeight,
      l$created,
      l$isDeleted,
      l$captureMethod,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$grossWeightSerialNumber = grossWeightSerialNumber;
    final lOther$grossWeightSerialNumber = other.grossWeightSerialNumber;
    if (l$grossWeightSerialNumber != lOther$grossWeightSerialNumber) {
      return false;
    }
    final l$tareWeightSerialNumber = tareWeightSerialNumber;
    final lOther$tareWeightSerialNumber = other.tareWeightSerialNumber;
    if (l$tareWeightSerialNumber != lOther$tareWeightSerialNumber) {
      return false;
    }
    final l$grossWeightScaleIdentifier = grossWeightScaleIdentifier;
    final lOther$grossWeightScaleIdentifier = other.grossWeightScaleIdentifier;
    if (l$grossWeightScaleIdentifier != lOther$grossWeightScaleIdentifier) {
      return false;
    }
    final l$tareWeightScaleIdentifier = tareWeightScaleIdentifier;
    final lOther$tareWeightScaleIdentifier = other.tareWeightScaleIdentifier;
    if (l$tareWeightScaleIdentifier != lOther$tareWeightScaleIdentifier) {
      return false;
    }
    final l$grossWeight = grossWeight;
    final lOther$grossWeight = other.grossWeight;
    if (l$grossWeight != lOther$grossWeight) {
      return false;
    }
    final l$tareWeight = tareWeight;
    final lOther$tareWeight = other.tareWeight;
    if (l$tareWeight != lOther$tareWeight) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$isDeleted = isDeleted;
    final lOther$isDeleted = other.isDeleted;
    if (l$isDeleted != lOther$isDeleted) {
      return false;
    }
    final l$captureMethod = captureMethod;
    final lOther$captureMethod = other.captureMethod;
    if (l$captureMethod != lOther$captureMethod) {
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

extension UtilityExtension$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights
    on Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights {
  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights<
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights
  >
  get copyWith =>
      CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights<
  TRes
> {
  factory CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights(
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights instance,
    TRes Function(
      Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights;

  factory CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights;

  TRes call({
    int? id,
    String? title,
    String? grossWeightSerialNumber,
    String? tareWeightSerialNumber,
    String? grossWeightScaleIdentifier,
    String? tareWeightScaleIdentifier,
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight?
    grossWeight,
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight?
    tareWeight,
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created?
    created,
    bool? isDeleted,
    Enum$StockTakeWeightCaptureMethod? captureMethod,
    String? $__typename,
  });
  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight<
    TRes
  >
  get grossWeight;
  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight<
    TRes
  >
  get tareWeight;
  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights<
  TRes
>
    implements
        CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights<
          TRes
        > {
  _CopyWithImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights(
    this._instance,
    this._then,
  );

  final Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights
  _instance;

  final TRes Function(
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? grossWeightSerialNumber = _undefined,
    Object? tareWeightSerialNumber = _undefined,
    Object? grossWeightScaleIdentifier = _undefined,
    Object? tareWeightScaleIdentifier = _undefined,
    Object? grossWeight = _undefined,
    Object? tareWeight = _undefined,
    Object? created = _undefined,
    Object? isDeleted = _undefined,
    Object? captureMethod = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights(
      id: id == _undefined || id == null ? _instance.id : (id as int),
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      grossWeightSerialNumber: grossWeightSerialNumber == _undefined
          ? _instance.grossWeightSerialNumber
          : (grossWeightSerialNumber as String?),
      tareWeightSerialNumber: tareWeightSerialNumber == _undefined
          ? _instance.tareWeightSerialNumber
          : (tareWeightSerialNumber as String?),
      grossWeightScaleIdentifier: grossWeightScaleIdentifier == _undefined
          ? _instance.grossWeightScaleIdentifier
          : (grossWeightScaleIdentifier as String?),
      tareWeightScaleIdentifier: tareWeightScaleIdentifier == _undefined
          ? _instance.tareWeightScaleIdentifier
          : (tareWeightScaleIdentifier as String?),
      grossWeight: grossWeight == _undefined || grossWeight == null
          ? _instance.grossWeight
          : (grossWeight
                as Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight),
      tareWeight: tareWeight == _undefined || tareWeight == null
          ? _instance.tareWeight
          : (tareWeight
                as Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created),
      isDeleted: isDeleted == _undefined || isDeleted == null
          ? _instance.isDeleted
          : (isDeleted as bool),
      captureMethod: captureMethod == _undefined || captureMethod == null
          ? _instance.captureMethod
          : (captureMethod as Enum$StockTakeWeightCaptureMethod),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight<
    TRes
  >
  get grossWeight {
    final local$grossWeight = _instance.grossWeight;
    return CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight(
      local$grossWeight,
      (e) => call(grossWeight: e),
    );
  }

  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight<
    TRes
  >
  get tareWeight {
    final local$tareWeight = _instance.tareWeight;
    return CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight(
      local$tareWeight,
      (e) => call(tareWeight: e),
    );
  }

  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights<
  TRes
>
    implements
        CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights(
    this._res,
  );

  TRes _res;

  call({
    int? id,
    String? title,
    String? grossWeightSerialNumber,
    String? tareWeightSerialNumber,
    String? grossWeightScaleIdentifier,
    String? tareWeightScaleIdentifier,
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight?
    grossWeight,
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight?
    tareWeight,
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created?
    created,
    bool? isDeleted,
    Enum$StockTakeWeightCaptureMethod? captureMethod,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight<
    TRes
  >
  get grossWeight =>
      CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight.stub(
        _res,
      );

  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight<
    TRes
  >
  get tareWeight =>
      CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight.stub(
        _res,
      );

  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created<
    TRes
  >
  get created =>
      CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created.stub(
        _res,
      );
}

class Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight {
  Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight({
    required this.id,
    required this.isRate,
    required this.mtValue,
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$isRate = json['isRate'];
    final l$mtValue = json['mtValue'];
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight(
      id: (l$id as int),
      isRate: (l$isRate as bool),
      mtValue: (l$mtValue as num).toDouble(),
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final bool isRate;

  final double mtValue;

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$isRate = isRate;
    _resultData['isRate'] = l$isRate;
    final l$mtValue = mtValue;
    _resultData['mtValue'] = l$mtValue;
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$isRate = isRate;
    final l$mtValue = mtValue;
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$isRate,
      l$mtValue,
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$isRate = isRate;
    final lOther$isRate = other.isRate;
    if (l$isRate != lOther$isRate) {
      return false;
    }
    final l$mtValue = mtValue;
    final lOther$mtValue = other.mtValue;
    if (l$mtValue != lOther$mtValue) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight
    on Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight {
  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight<
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight
  >
  get copyWith =>
      CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight<
  TRes
> {
  factory CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight(
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight
    instance,
    TRes Function(
      Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight;

  factory CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight;

  TRes call({
    int? id,
    bool? isRate,
    double? mtValue,
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight<
  TRes
>
    implements
        CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight<
          TRes
        > {
  _CopyWithImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight(
    this._instance,
    this._then,
  );

  final Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight
  _instance;

  final TRes Function(
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isRate = _undefined,
    Object? mtValue = _undefined,
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight(
      id: id == _undefined || id == null ? _instance.id : (id as int),
      isRate: isRate == _undefined || isRate == null
          ? _instance.isRate
          : (isRate as bool),
      mtValue: mtValue == _undefined || mtValue == null
          ? _instance.mtValue
          : (mtValue as double),
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight<
  TRes
>
    implements
        CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$grossWeight(
    this._res,
  );

  TRes _res;

  call({
    int? id,
    bool? isRate,
    double? mtValue,
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) => _res;
}

class Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight {
  Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight({
    required this.id,
    required this.isRate,
    required this.mtValue,
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$isRate = json['isRate'];
    final l$mtValue = json['mtValue'];
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight(
      id: (l$id as int),
      isRate: (l$isRate as bool),
      mtValue: (l$mtValue as num).toDouble(),
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final bool isRate;

  final double mtValue;

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$isRate = isRate;
    _resultData['isRate'] = l$isRate;
    final l$mtValue = mtValue;
    _resultData['mtValue'] = l$mtValue;
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$isRate = isRate;
    final l$mtValue = mtValue;
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$isRate,
      l$mtValue,
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$isRate = isRate;
    final lOther$isRate = other.isRate;
    if (l$isRate != lOther$isRate) {
      return false;
    }
    final l$mtValue = mtValue;
    final lOther$mtValue = other.mtValue;
    if (l$mtValue != lOther$mtValue) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight
    on Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight {
  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight<
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight
  >
  get copyWith =>
      CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight<
  TRes
> {
  factory CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight(
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight
    instance,
    TRes Function(
      Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight;

  factory CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight;

  TRes call({
    int? id,
    bool? isRate,
    double? mtValue,
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight<
  TRes
>
    implements
        CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight<
          TRes
        > {
  _CopyWithImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight(
    this._instance,
    this._then,
  );

  final Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight
  _instance;

  final TRes Function(
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isRate = _undefined,
    Object? mtValue = _undefined,
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight(
      id: id == _undefined || id == null ? _instance.id : (id as int),
      isRate: isRate == _undefined || isRate == null
          ? _instance.isRate
          : (isRate as bool),
      mtValue: mtValue == _undefined || mtValue == null
          ? _instance.mtValue
          : (mtValue as double),
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight<
  TRes
>
    implements
        CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$tareWeight(
    this._res,
  );

  TRes _res;

  call({
    int? id,
    bool? isRate,
    double? mtValue,
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) => _res;
}

class Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created {
  Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created(
      at: DateTime.parse((l$at as String)),
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userInfoId;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userInfoId, l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created
    on Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created {
  CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created<
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created
  >
  get copyWith =>
      CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created<
  TRes
> {
  factory CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created(
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created
    instance,
    TRes Function(
      Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created;

  factory CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created<
  TRes
>
    implements
        CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created<
          TRes
        > {
  _CopyWithImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created(
    this._instance,
    this._then,
  );

  final Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created
  _instance;

  final TRes Function(
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created<
  TRes
>
    implements
        CopyWith$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddStocktakeWeight$addStocktakeWeight$data$takenWeights$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  }) => _res;
}
