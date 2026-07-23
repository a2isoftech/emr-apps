import 'package:gql/ast.dart';

class Variables$Mutation$DeleteNonConformingPart {
  factory Variables$Mutation$DeleteNonConformingPart({
    required String elvQuotationId,
    required String vehicleKey,
    required String partKey,
  }) => Variables$Mutation$DeleteNonConformingPart._({
    r'elvQuotationId': elvQuotationId,
    r'vehicleKey': vehicleKey,
    r'partKey': partKey,
  });

  Variables$Mutation$DeleteNonConformingPart._(this._$data);

  factory Variables$Mutation$DeleteNonConformingPart.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$elvQuotationId = data['elvQuotationId'];
    result$data['elvQuotationId'] = (l$elvQuotationId as String);
    final l$vehicleKey = data['vehicleKey'];
    result$data['vehicleKey'] = (l$vehicleKey as String);
    final l$partKey = data['partKey'];
    result$data['partKey'] = (l$partKey as String);
    return Variables$Mutation$DeleteNonConformingPart._(result$data);
  }

  Map<String, dynamic> _$data;

  String get elvQuotationId => (_$data['elvQuotationId'] as String);

  String get vehicleKey => (_$data['vehicleKey'] as String);

  String get partKey => (_$data['partKey'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$elvQuotationId = elvQuotationId;
    result$data['elvQuotationId'] = l$elvQuotationId;
    final l$vehicleKey = vehicleKey;
    result$data['vehicleKey'] = l$vehicleKey;
    final l$partKey = partKey;
    result$data['partKey'] = l$partKey;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteNonConformingPart<
    Variables$Mutation$DeleteNonConformingPart
  >
  get copyWith =>
      CopyWith$Variables$Mutation$DeleteNonConformingPart(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteNonConformingPart ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$elvQuotationId = elvQuotationId;
    final lOther$elvQuotationId = other.elvQuotationId;
    if (l$elvQuotationId != lOther$elvQuotationId) {
      return false;
    }
    final l$vehicleKey = vehicleKey;
    final lOther$vehicleKey = other.vehicleKey;
    if (l$vehicleKey != lOther$vehicleKey) {
      return false;
    }
    final l$partKey = partKey;
    final lOther$partKey = other.partKey;
    if (l$partKey != lOther$partKey) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$elvQuotationId = elvQuotationId;
    final l$vehicleKey = vehicleKey;
    final l$partKey = partKey;
    return Object.hashAll([l$elvQuotationId, l$vehicleKey, l$partKey]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteNonConformingPart<TRes> {
  factory CopyWith$Variables$Mutation$DeleteNonConformingPart(
    Variables$Mutation$DeleteNonConformingPart instance,
    TRes Function(Variables$Mutation$DeleteNonConformingPart) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteNonConformingPart;

  factory CopyWith$Variables$Mutation$DeleteNonConformingPart.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteNonConformingPart;

  TRes call({String? elvQuotationId, String? vehicleKey, String? partKey});
}

class _CopyWithImpl$Variables$Mutation$DeleteNonConformingPart<TRes>
    implements CopyWith$Variables$Mutation$DeleteNonConformingPart<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteNonConformingPart(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteNonConformingPart _instance;

  final TRes Function(Variables$Mutation$DeleteNonConformingPart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? elvQuotationId = _undefined,
    Object? vehicleKey = _undefined,
    Object? partKey = _undefined,
  }) => _then(
    Variables$Mutation$DeleteNonConformingPart._({
      ..._instance._$data,
      if (elvQuotationId != _undefined && elvQuotationId != null)
        'elvQuotationId': (elvQuotationId as String),
      if (vehicleKey != _undefined && vehicleKey != null)
        'vehicleKey': (vehicleKey as String),
      if (partKey != _undefined && partKey != null)
        'partKey': (partKey as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$DeleteNonConformingPart<TRes>
    implements CopyWith$Variables$Mutation$DeleteNonConformingPart<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteNonConformingPart(this._res);

  TRes _res;

  call({String? elvQuotationId, String? vehicleKey, String? partKey}) => _res;
}

class Mutation$DeleteNonConformingPart {
  Mutation$DeleteNonConformingPart({
    this.deleteNonConformingPart,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteNonConformingPart.fromJson(Map<String, dynamic> json) {
    final l$deleteNonConformingPart = json['deleteNonConformingPart'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteNonConformingPart(
      deleteNonConformingPart: l$deleteNonConformingPart == null
          ? null
          : Mutation$DeleteNonConformingPart$deleteNonConformingPart.fromJson(
              (l$deleteNonConformingPart as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteNonConformingPart$deleteNonConformingPart?
  deleteNonConformingPart;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteNonConformingPart = deleteNonConformingPart;
    _resultData['deleteNonConformingPart'] = l$deleteNonConformingPart
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteNonConformingPart = deleteNonConformingPart;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteNonConformingPart, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteNonConformingPart ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteNonConformingPart = deleteNonConformingPart;
    final lOther$deleteNonConformingPart = other.deleteNonConformingPart;
    if (l$deleteNonConformingPart != lOther$deleteNonConformingPart) {
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

extension UtilityExtension$Mutation$DeleteNonConformingPart
    on Mutation$DeleteNonConformingPart {
  CopyWith$Mutation$DeleteNonConformingPart<Mutation$DeleteNonConformingPart>
  get copyWith => CopyWith$Mutation$DeleteNonConformingPart(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteNonConformingPart<TRes> {
  factory CopyWith$Mutation$DeleteNonConformingPart(
    Mutation$DeleteNonConformingPart instance,
    TRes Function(Mutation$DeleteNonConformingPart) then,
  ) = _CopyWithImpl$Mutation$DeleteNonConformingPart;

  factory CopyWith$Mutation$DeleteNonConformingPart.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteNonConformingPart;

  TRes call({
    Mutation$DeleteNonConformingPart$deleteNonConformingPart?
    deleteNonConformingPart,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart<TRes>
  get deleteNonConformingPart;
}

class _CopyWithImpl$Mutation$DeleteNonConformingPart<TRes>
    implements CopyWith$Mutation$DeleteNonConformingPart<TRes> {
  _CopyWithImpl$Mutation$DeleteNonConformingPart(this._instance, this._then);

  final Mutation$DeleteNonConformingPart _instance;

  final TRes Function(Mutation$DeleteNonConformingPart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteNonConformingPart = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteNonConformingPart(
      deleteNonConformingPart: deleteNonConformingPart == _undefined
          ? _instance.deleteNonConformingPart
          : (deleteNonConformingPart
                as Mutation$DeleteNonConformingPart$deleteNonConformingPart?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart<TRes>
  get deleteNonConformingPart {
    final local$deleteNonConformingPart = _instance.deleteNonConformingPart;
    return local$deleteNonConformingPart == null
        ? CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart(
            local$deleteNonConformingPart,
            (e) => call(deleteNonConformingPart: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$DeleteNonConformingPart<TRes>
    implements CopyWith$Mutation$DeleteNonConformingPart<TRes> {
  _CopyWithStubImpl$Mutation$DeleteNonConformingPart(this._res);

  TRes _res;

  call({
    Mutation$DeleteNonConformingPart$deleteNonConformingPart?
    deleteNonConformingPart,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart<TRes>
  get deleteNonConformingPart =>
      CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart.stub(
        _res,
      );
}

const documentNodeMutationDeleteNonConformingPart = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteNonConformingPart'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'elvQuotationId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'vehicleKey')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'partKey')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deleteNonConformingPart'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'elvQuotationVehicleInput'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'elvQuotationId'),
                            value: VariableNode(
                              name: NameNode(value: 'elvQuotationId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'vehicleKey'),
                            value: VariableNode(
                              name: NameNode(value: 'vehicleKey'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'partKey'),
                      value: VariableNode(name: NameNode(value: 'partKey')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'VehicleForInspectionResult'),
                      isNonNull: false,
                    ),
                  ),
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
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
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'ElvInspectionError'),
                      isNonNull: false,
                    ),
                  ),
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
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

class Mutation$DeleteNonConformingPart$deleteNonConformingPart {
  Mutation$DeleteNonConformingPart$deleteNonConformingPart({
    required this.$__typename,
  });

  factory Mutation$DeleteNonConformingPart$deleteNonConformingPart.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "VehicleForInspectionResult":
        return Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult.fromJson(
          json,
        );

      case "ElvInspectionError":
        return Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$DeleteNonConformingPart$deleteNonConformingPart(
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteNonConformingPart$deleteNonConformingPart ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$DeleteNonConformingPart$deleteNonConformingPart
    on Mutation$DeleteNonConformingPart$deleteNonConformingPart {
  CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart<
    Mutation$DeleteNonConformingPart$deleteNonConformingPart
  >
  get copyWith =>
      CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult,
    )
    vehicleForInspectionResult,
    required _T Function(
      Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError,
    )
    elvInspectionError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "VehicleForInspectionResult":
        return vehicleForInspectionResult(
          this
              as Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult,
        );

      case "ElvInspectionError":
        return elvInspectionError(
          this
              as Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult,
    )?
    vehicleForInspectionResult,
    _T Function(
      Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError,
    )?
    elvInspectionError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "VehicleForInspectionResult":
        if (vehicleForInspectionResult != null) {
          return vehicleForInspectionResult(
            this
                as Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult,
          );
        } else {
          return orElse();
        }

      case "ElvInspectionError":
        if (elvInspectionError != null) {
          return elvInspectionError(
            this
                as Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart<
  TRes
> {
  factory CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart(
    Mutation$DeleteNonConformingPart$deleteNonConformingPart instance,
    TRes Function(Mutation$DeleteNonConformingPart$deleteNonConformingPart)
    then,
  ) = _CopyWithImpl$Mutation$DeleteNonConformingPart$deleteNonConformingPart;

  factory CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteNonConformingPart$deleteNonConformingPart;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteNonConformingPart$deleteNonConformingPart<
  TRes
>
    implements
        CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteNonConformingPart$deleteNonConformingPart(
    this._instance,
    this._then,
  );

  final Mutation$DeleteNonConformingPart$deleteNonConformingPart _instance;

  final TRes Function(Mutation$DeleteNonConformingPart$deleteNonConformingPart)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$DeleteNonConformingPart$deleteNonConformingPart(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteNonConformingPart$deleteNonConformingPart<
  TRes
>
    implements
        CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteNonConformingPart$deleteNonConformingPart(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult
    implements Mutation$DeleteNonConformingPart$deleteNonConformingPart {
  Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult({
    this.$__typename = 'VehicleForInspectionResult',
  });

  factory Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$$__typename = json['__typename'];
    return Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult(
      $__typename: (l$$__typename as String),
    );
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult
    on
        Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult {
  CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult<
    Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult
  >
  get copyWith =>
      CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult<
  TRes
> {
  factory CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult(
    Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult
    instance,
    TRes Function(
      Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult;

  factory CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult<
  TRes
>
    implements
        CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult(
    this._instance,
    this._then,
  );

  final Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult
  _instance;

  final TRes Function(
    Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult<
  TRes
>
    implements
        CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$VehicleForInspectionResult(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError
    implements Mutation$DeleteNonConformingPart$deleteNonConformingPart {
  Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError({
    this.$__typename = 'ElvInspectionError',
  });

  factory Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$$__typename = json['__typename'];
    return Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError(
      $__typename: (l$$__typename as String),
    );
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError
    on Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError {
  CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError<
    Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError
  >
  get copyWith =>
      CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError<
  TRes
> {
  factory CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError(
    Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError
    instance,
    TRes Function(
      Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError;

  factory CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError<
  TRes
>
    implements
        CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError(
    this._instance,
    this._then,
  );

  final Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError
  _instance;

  final TRes Function(
    Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError<
  TRes
>
    implements
        CopyWith$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteNonConformingPart$deleteNonConformingPart$$ElvInspectionError(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}
