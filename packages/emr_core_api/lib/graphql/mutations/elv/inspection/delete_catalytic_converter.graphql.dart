import '../../../fragments/elv/mutations/inspection_error_fields.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$DeleteCat {
  factory Variables$Mutation$DeleteCat({
    required String elvQuotationId,
    required String vehicleKey,
    required String partKey,
  }) => Variables$Mutation$DeleteCat._({
    r'elvQuotationId': elvQuotationId,
    r'vehicleKey': vehicleKey,
    r'partKey': partKey,
  });

  Variables$Mutation$DeleteCat._(this._$data);

  factory Variables$Mutation$DeleteCat.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$elvQuotationId = data['elvQuotationId'];
    result$data['elvQuotationId'] = (l$elvQuotationId as String);
    final l$vehicleKey = data['vehicleKey'];
    result$data['vehicleKey'] = (l$vehicleKey as String);
    final l$partKey = data['partKey'];
    result$data['partKey'] = (l$partKey as String);
    return Variables$Mutation$DeleteCat._(result$data);
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

  CopyWith$Variables$Mutation$DeleteCat<Variables$Mutation$DeleteCat>
  get copyWith => CopyWith$Variables$Mutation$DeleteCat(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteCat ||
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

abstract class CopyWith$Variables$Mutation$DeleteCat<TRes> {
  factory CopyWith$Variables$Mutation$DeleteCat(
    Variables$Mutation$DeleteCat instance,
    TRes Function(Variables$Mutation$DeleteCat) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteCat;

  factory CopyWith$Variables$Mutation$DeleteCat.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteCat;

  TRes call({String? elvQuotationId, String? vehicleKey, String? partKey});
}

class _CopyWithImpl$Variables$Mutation$DeleteCat<TRes>
    implements CopyWith$Variables$Mutation$DeleteCat<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteCat(this._instance, this._then);

  final Variables$Mutation$DeleteCat _instance;

  final TRes Function(Variables$Mutation$DeleteCat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? elvQuotationId = _undefined,
    Object? vehicleKey = _undefined,
    Object? partKey = _undefined,
  }) => _then(
    Variables$Mutation$DeleteCat._({
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

class _CopyWithStubImpl$Variables$Mutation$DeleteCat<TRes>
    implements CopyWith$Variables$Mutation$DeleteCat<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteCat(this._res);

  TRes _res;

  call({String? elvQuotationId, String? vehicleKey, String? partKey}) => _res;
}

class Mutation$DeleteCat {
  Mutation$DeleteCat({
    this.deleteCatalyticConverter,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteCat.fromJson(Map<String, dynamic> json) {
    final l$deleteCatalyticConverter = json['deleteCatalyticConverter'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteCat(
      deleteCatalyticConverter: l$deleteCatalyticConverter == null
          ? null
          : Mutation$DeleteCat$deleteCatalyticConverter.fromJson(
              (l$deleteCatalyticConverter as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteCat$deleteCatalyticConverter? deleteCatalyticConverter;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteCatalyticConverter = deleteCatalyticConverter;
    _resultData['deleteCatalyticConverter'] = l$deleteCatalyticConverter
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteCatalyticConverter = deleteCatalyticConverter;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteCatalyticConverter, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteCat || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteCatalyticConverter = deleteCatalyticConverter;
    final lOther$deleteCatalyticConverter = other.deleteCatalyticConverter;
    if (l$deleteCatalyticConverter != lOther$deleteCatalyticConverter) {
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

extension UtilityExtension$Mutation$DeleteCat on Mutation$DeleteCat {
  CopyWith$Mutation$DeleteCat<Mutation$DeleteCat> get copyWith =>
      CopyWith$Mutation$DeleteCat(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteCat<TRes> {
  factory CopyWith$Mutation$DeleteCat(
    Mutation$DeleteCat instance,
    TRes Function(Mutation$DeleteCat) then,
  ) = _CopyWithImpl$Mutation$DeleteCat;

  factory CopyWith$Mutation$DeleteCat.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteCat;

  TRes call({
    Mutation$DeleteCat$deleteCatalyticConverter? deleteCatalyticConverter,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteCat$deleteCatalyticConverter<TRes>
  get deleteCatalyticConverter;
}

class _CopyWithImpl$Mutation$DeleteCat<TRes>
    implements CopyWith$Mutation$DeleteCat<TRes> {
  _CopyWithImpl$Mutation$DeleteCat(this._instance, this._then);

  final Mutation$DeleteCat _instance;

  final TRes Function(Mutation$DeleteCat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteCatalyticConverter = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteCat(
      deleteCatalyticConverter: deleteCatalyticConverter == _undefined
          ? _instance.deleteCatalyticConverter
          : (deleteCatalyticConverter
                as Mutation$DeleteCat$deleteCatalyticConverter?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DeleteCat$deleteCatalyticConverter<TRes>
  get deleteCatalyticConverter {
    final local$deleteCatalyticConverter = _instance.deleteCatalyticConverter;
    return local$deleteCatalyticConverter == null
        ? CopyWith$Mutation$DeleteCat$deleteCatalyticConverter.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$DeleteCat$deleteCatalyticConverter(
            local$deleteCatalyticConverter,
            (e) => call(deleteCatalyticConverter: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$DeleteCat<TRes>
    implements CopyWith$Mutation$DeleteCat<TRes> {
  _CopyWithStubImpl$Mutation$DeleteCat(this._res);

  TRes _res;

  call({
    Mutation$DeleteCat$deleteCatalyticConverter? deleteCatalyticConverter,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeleteCat$deleteCatalyticConverter<TRes>
  get deleteCatalyticConverter =>
      CopyWith$Mutation$DeleteCat$deleteCatalyticConverter.stub(_res);
}

const documentNodeMutationDeleteCat = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteCat'),
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
            name: NameNode(value: 'deleteCatalyticConverter'),
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
                FragmentSpreadNode(
                  name: NameNode(value: 'InspectionErrorFields'),
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
    fragmentDefinitionInspectionErrorFields,
  ],
);

class Mutation$DeleteCat$deleteCatalyticConverter {
  Mutation$DeleteCat$deleteCatalyticConverter({required this.$__typename});

  factory Mutation$DeleteCat$deleteCatalyticConverter.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "VehicleForInspectionResult":
        return Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult.fromJson(
          json,
        );

      case "ElvInspectionError":
        return Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$DeleteCat$deleteCatalyticConverter(
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
    if (other is! Mutation$DeleteCat$deleteCatalyticConverter ||
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

extension UtilityExtension$Mutation$DeleteCat$deleteCatalyticConverter
    on Mutation$DeleteCat$deleteCatalyticConverter {
  CopyWith$Mutation$DeleteCat$deleteCatalyticConverter<
    Mutation$DeleteCat$deleteCatalyticConverter
  >
  get copyWith =>
      CopyWith$Mutation$DeleteCat$deleteCatalyticConverter(this, (i) => i);

  _T when<_T>({
    required _T Function(
      Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult,
    )
    vehicleForInspectionResult,
    required _T Function(
      Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError,
    )
    elvInspectionError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "VehicleForInspectionResult":
        return vehicleForInspectionResult(
          this
              as Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult,
        );

      case "ElvInspectionError":
        return elvInspectionError(
          this
              as Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult,
    )?
    vehicleForInspectionResult,
    _T Function(
      Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError,
    )?
    elvInspectionError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "VehicleForInspectionResult":
        if (vehicleForInspectionResult != null) {
          return vehicleForInspectionResult(
            this
                as Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult,
          );
        } else {
          return orElse();
        }

      case "ElvInspectionError":
        if (elvInspectionError != null) {
          return elvInspectionError(
            this
                as Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$DeleteCat$deleteCatalyticConverter<TRes> {
  factory CopyWith$Mutation$DeleteCat$deleteCatalyticConverter(
    Mutation$DeleteCat$deleteCatalyticConverter instance,
    TRes Function(Mutation$DeleteCat$deleteCatalyticConverter) then,
  ) = _CopyWithImpl$Mutation$DeleteCat$deleteCatalyticConverter;

  factory CopyWith$Mutation$DeleteCat$deleteCatalyticConverter.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteCat$deleteCatalyticConverter;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteCat$deleteCatalyticConverter<TRes>
    implements CopyWith$Mutation$DeleteCat$deleteCatalyticConverter<TRes> {
  _CopyWithImpl$Mutation$DeleteCat$deleteCatalyticConverter(
    this._instance,
    this._then,
  );

  final Mutation$DeleteCat$deleteCatalyticConverter _instance;

  final TRes Function(Mutation$DeleteCat$deleteCatalyticConverter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$DeleteCat$deleteCatalyticConverter(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteCat$deleteCatalyticConverter<TRes>
    implements CopyWith$Mutation$DeleteCat$deleteCatalyticConverter<TRes> {
  _CopyWithStubImpl$Mutation$DeleteCat$deleteCatalyticConverter(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult
    implements Mutation$DeleteCat$deleteCatalyticConverter {
  Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult({
    this.$__typename = 'VehicleForInspectionResult',
  });

  factory Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$$__typename = json['__typename'];
    return Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult(
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
            is! Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult ||
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

extension UtilityExtension$Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult
    on Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult {
  CopyWith$Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult<
    Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult
  >
  get copyWith =>
      CopyWith$Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult<
  TRes
> {
  factory CopyWith$Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult(
    Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult
    instance,
    TRes Function(
      Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult;

  factory CopyWith$Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult<
  TRes
>
    implements
        CopyWith$Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult(
    this._instance,
    this._then,
  );

  final Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult
  _instance;

  final TRes Function(
    Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult<
  TRes
>
    implements
        CopyWith$Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteCat$deleteCatalyticConverter$$VehicleForInspectionResult(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError
    implements
        Fragment$InspectionErrorFields,
        Mutation$DeleteCat$deleteCatalyticConverter {
  Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError({
    required this.message,
    this.$__typename = 'ElvInspectionError',
  });

  factory Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([l$message, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError
    on Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError {
  CopyWith$Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError<
    Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError
  >
  get copyWith =>
      CopyWith$Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError<
  TRes
> {
  factory CopyWith$Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError(
    Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError instance,
    TRes Function(
      Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError;

  factory CopyWith$Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError<
  TRes
>
    implements
        CopyWith$Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError(
    this._instance,
    this._then,
  );

  final Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError
  _instance;

  final TRes Function(
    Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError<
  TRes
>
    implements
        CopyWith$Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteCat$deleteCatalyticConverter$$ElvInspectionError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
