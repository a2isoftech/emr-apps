import '../../../fragments/elv/mutations/catalytic_converter_part_fields.graphql.dart';
import '../../../fragments/elv/mutations/inspection_error_fields.graphql.dart';
import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateCat {
  factory Variables$Mutation$UpdateCat({
    required String elvQuotationId,
    required String vehicleKey,
    required String partKey,
    required Enum$PartLocation partLocation,
    required Enum$CatalyticConverterClassification classification,
  }) => Variables$Mutation$UpdateCat._({
    r'elvQuotationId': elvQuotationId,
    r'vehicleKey': vehicleKey,
    r'partKey': partKey,
    r'partLocation': partLocation,
    r'classification': classification,
  });

  Variables$Mutation$UpdateCat._(this._$data);

  factory Variables$Mutation$UpdateCat.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$elvQuotationId = data['elvQuotationId'];
    result$data['elvQuotationId'] = (l$elvQuotationId as String);
    final l$vehicleKey = data['vehicleKey'];
    result$data['vehicleKey'] = (l$vehicleKey as String);
    final l$partKey = data['partKey'];
    result$data['partKey'] = (l$partKey as String);
    final l$partLocation = data['partLocation'];
    result$data['partLocation'] = fromJson$Enum$PartLocation(
      (l$partLocation as String),
    );
    final l$classification = data['classification'];
    result$data['classification'] =
        fromJson$Enum$CatalyticConverterClassification(
          (l$classification as String),
        );
    return Variables$Mutation$UpdateCat._(result$data);
  }

  Map<String, dynamic> _$data;

  String get elvQuotationId => (_$data['elvQuotationId'] as String);

  String get vehicleKey => (_$data['vehicleKey'] as String);

  String get partKey => (_$data['partKey'] as String);

  Enum$PartLocation get partLocation =>
      (_$data['partLocation'] as Enum$PartLocation);

  Enum$CatalyticConverterClassification get classification =>
      (_$data['classification'] as Enum$CatalyticConverterClassification);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$elvQuotationId = elvQuotationId;
    result$data['elvQuotationId'] = l$elvQuotationId;
    final l$vehicleKey = vehicleKey;
    result$data['vehicleKey'] = l$vehicleKey;
    final l$partKey = partKey;
    result$data['partKey'] = l$partKey;
    final l$partLocation = partLocation;
    result$data['partLocation'] = toJson$Enum$PartLocation(l$partLocation);
    final l$classification = classification;
    result$data['classification'] =
        toJson$Enum$CatalyticConverterClassification(l$classification);
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateCat<Variables$Mutation$UpdateCat>
  get copyWith => CopyWith$Variables$Mutation$UpdateCat(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateCat ||
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
    final l$partLocation = partLocation;
    final lOther$partLocation = other.partLocation;
    if (l$partLocation != lOther$partLocation) {
      return false;
    }
    final l$classification = classification;
    final lOther$classification = other.classification;
    if (l$classification != lOther$classification) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$elvQuotationId = elvQuotationId;
    final l$vehicleKey = vehicleKey;
    final l$partKey = partKey;
    final l$partLocation = partLocation;
    final l$classification = classification;
    return Object.hashAll([
      l$elvQuotationId,
      l$vehicleKey,
      l$partKey,
      l$partLocation,
      l$classification,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateCat<TRes> {
  factory CopyWith$Variables$Mutation$UpdateCat(
    Variables$Mutation$UpdateCat instance,
    TRes Function(Variables$Mutation$UpdateCat) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateCat;

  factory CopyWith$Variables$Mutation$UpdateCat.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateCat;

  TRes call({
    String? elvQuotationId,
    String? vehicleKey,
    String? partKey,
    Enum$PartLocation? partLocation,
    Enum$CatalyticConverterClassification? classification,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateCat<TRes>
    implements CopyWith$Variables$Mutation$UpdateCat<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateCat(this._instance, this._then);

  final Variables$Mutation$UpdateCat _instance;

  final TRes Function(Variables$Mutation$UpdateCat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? elvQuotationId = _undefined,
    Object? vehicleKey = _undefined,
    Object? partKey = _undefined,
    Object? partLocation = _undefined,
    Object? classification = _undefined,
  }) => _then(
    Variables$Mutation$UpdateCat._({
      ..._instance._$data,
      if (elvQuotationId != _undefined && elvQuotationId != null)
        'elvQuotationId': (elvQuotationId as String),
      if (vehicleKey != _undefined && vehicleKey != null)
        'vehicleKey': (vehicleKey as String),
      if (partKey != _undefined && partKey != null)
        'partKey': (partKey as String),
      if (partLocation != _undefined && partLocation != null)
        'partLocation': (partLocation as Enum$PartLocation),
      if (classification != _undefined && classification != null)
        'classification':
            (classification as Enum$CatalyticConverterClassification),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateCat<TRes>
    implements CopyWith$Variables$Mutation$UpdateCat<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateCat(this._res);

  TRes _res;

  call({
    String? elvQuotationId,
    String? vehicleKey,
    String? partKey,
    Enum$PartLocation? partLocation,
    Enum$CatalyticConverterClassification? classification,
  }) => _res;
}

class Mutation$UpdateCat {
  Mutation$UpdateCat({
    this.updateCatalyticConverter,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateCat.fromJson(Map<String, dynamic> json) {
    final l$updateCatalyticConverter = json['updateCatalyticConverter'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCat(
      updateCatalyticConverter: l$updateCatalyticConverter == null
          ? null
          : Mutation$UpdateCat$updateCatalyticConverter.fromJson(
              (l$updateCatalyticConverter as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateCat$updateCatalyticConverter? updateCatalyticConverter;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateCatalyticConverter = updateCatalyticConverter;
    _resultData['updateCatalyticConverter'] = l$updateCatalyticConverter
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateCatalyticConverter = updateCatalyticConverter;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateCatalyticConverter, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateCat || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateCatalyticConverter = updateCatalyticConverter;
    final lOther$updateCatalyticConverter = other.updateCatalyticConverter;
    if (l$updateCatalyticConverter != lOther$updateCatalyticConverter) {
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

extension UtilityExtension$Mutation$UpdateCat on Mutation$UpdateCat {
  CopyWith$Mutation$UpdateCat<Mutation$UpdateCat> get copyWith =>
      CopyWith$Mutation$UpdateCat(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateCat<TRes> {
  factory CopyWith$Mutation$UpdateCat(
    Mutation$UpdateCat instance,
    TRes Function(Mutation$UpdateCat) then,
  ) = _CopyWithImpl$Mutation$UpdateCat;

  factory CopyWith$Mutation$UpdateCat.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCat;

  TRes call({
    Mutation$UpdateCat$updateCatalyticConverter? updateCatalyticConverter,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateCat$updateCatalyticConverter<TRes>
  get updateCatalyticConverter;
}

class _CopyWithImpl$Mutation$UpdateCat<TRes>
    implements CopyWith$Mutation$UpdateCat<TRes> {
  _CopyWithImpl$Mutation$UpdateCat(this._instance, this._then);

  final Mutation$UpdateCat _instance;

  final TRes Function(Mutation$UpdateCat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateCatalyticConverter = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateCat(
      updateCatalyticConverter: updateCatalyticConverter == _undefined
          ? _instance.updateCatalyticConverter
          : (updateCatalyticConverter
                as Mutation$UpdateCat$updateCatalyticConverter?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateCat$updateCatalyticConverter<TRes>
  get updateCatalyticConverter {
    final local$updateCatalyticConverter = _instance.updateCatalyticConverter;
    return local$updateCatalyticConverter == null
        ? CopyWith$Mutation$UpdateCat$updateCatalyticConverter.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateCat$updateCatalyticConverter(
            local$updateCatalyticConverter,
            (e) => call(updateCatalyticConverter: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateCat<TRes>
    implements CopyWith$Mutation$UpdateCat<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCat(this._res);

  TRes _res;

  call({
    Mutation$UpdateCat$updateCatalyticConverter? updateCatalyticConverter,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateCat$updateCatalyticConverter<TRes>
  get updateCatalyticConverter =>
      CopyWith$Mutation$UpdateCat$updateCatalyticConverter.stub(_res);
}

const documentNodeMutationUpdateCat = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateCat'),
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
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'partLocation')),
          type: NamedTypeNode(
            name: NameNode(value: 'PartLocation'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'classification')),
          type: NamedTypeNode(
            name: NameNode(value: 'CatalyticConverterClassification'),
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
            name: NameNode(value: 'updateCatalyticConverter'),
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
                    ObjectFieldNode(
                      name: NameNode(value: 'classification'),
                      value: VariableNode(
                        name: NameNode(value: 'classification'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'partLocation'),
                      value: VariableNode(
                        name: NameNode(value: 'partLocation'),
                      ),
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
                      name: NameNode(
                        value: 'CatalyticConverterForInspectionResult',
                      ),
                      isNonNull: false,
                    ),
                  ),
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'catalyticConverter'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'CatalyticConverterFields'),
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
                        name: NameNode(value: 'price'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'price'),
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
    fragmentDefinitionCatalyticConverterFields,
    fragmentDefinitionInspectionErrorFields,
  ],
);

class Mutation$UpdateCat$updateCatalyticConverter {
  Mutation$UpdateCat$updateCatalyticConverter({required this.$__typename});

  factory Mutation$UpdateCat$updateCatalyticConverter.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "CatalyticConverterForInspectionResult":
        return Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult.fromJson(
          json,
        );

      case "ElvInspectionError":
        return Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$UpdateCat$updateCatalyticConverter(
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
    if (other is! Mutation$UpdateCat$updateCatalyticConverter ||
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

extension UtilityExtension$Mutation$UpdateCat$updateCatalyticConverter
    on Mutation$UpdateCat$updateCatalyticConverter {
  CopyWith$Mutation$UpdateCat$updateCatalyticConverter<
    Mutation$UpdateCat$updateCatalyticConverter
  >
  get copyWith =>
      CopyWith$Mutation$UpdateCat$updateCatalyticConverter(this, (i) => i);

  _T when<_T>({
    required _T Function(
      Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult,
    )
    catalyticConverterForInspectionResult,
    required _T Function(
      Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError,
    )
    elvInspectionError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "CatalyticConverterForInspectionResult":
        return catalyticConverterForInspectionResult(
          this
              as Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult,
        );

      case "ElvInspectionError":
        return elvInspectionError(
          this
              as Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult,
    )?
    catalyticConverterForInspectionResult,
    _T Function(
      Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError,
    )?
    elvInspectionError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "CatalyticConverterForInspectionResult":
        if (catalyticConverterForInspectionResult != null) {
          return catalyticConverterForInspectionResult(
            this
                as Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult,
          );
        } else {
          return orElse();
        }

      case "ElvInspectionError":
        if (elvInspectionError != null) {
          return elvInspectionError(
            this
                as Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$UpdateCat$updateCatalyticConverter<TRes> {
  factory CopyWith$Mutation$UpdateCat$updateCatalyticConverter(
    Mutation$UpdateCat$updateCatalyticConverter instance,
    TRes Function(Mutation$UpdateCat$updateCatalyticConverter) then,
  ) = _CopyWithImpl$Mutation$UpdateCat$updateCatalyticConverter;

  factory CopyWith$Mutation$UpdateCat$updateCatalyticConverter.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCat$updateCatalyticConverter;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateCat$updateCatalyticConverter<TRes>
    implements CopyWith$Mutation$UpdateCat$updateCatalyticConverter<TRes> {
  _CopyWithImpl$Mutation$UpdateCat$updateCatalyticConverter(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCat$updateCatalyticConverter _instance;

  final TRes Function(Mutation$UpdateCat$updateCatalyticConverter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdateCat$updateCatalyticConverter(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateCat$updateCatalyticConverter<TRes>
    implements CopyWith$Mutation$UpdateCat$updateCatalyticConverter<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCat$updateCatalyticConverter(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult
    implements Mutation$UpdateCat$updateCatalyticConverter {
  Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult({
    required this.catalyticConverter,
    required this.price,
    this.$__typename = 'CatalyticConverterForInspectionResult',
  });

  factory Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$catalyticConverter = json['catalyticConverter'];
    final l$price = json['price'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult(
      catalyticConverter: Fragment$CatalyticConverterFields.fromJson(
        (l$catalyticConverter as Map<String, dynamic>),
      ),
      price:
          Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price.fromJson(
            (l$price as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CatalyticConverterFields catalyticConverter;

  final Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price
  price;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$catalyticConverter = catalyticConverter;
    _resultData['catalyticConverter'] = l$catalyticConverter.toJson();
    final l$price = price;
    _resultData['price'] = l$price.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$catalyticConverter = catalyticConverter;
    final l$price = price;
    final l$$__typename = $__typename;
    return Object.hashAll([l$catalyticConverter, l$price, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$catalyticConverter = catalyticConverter;
    final lOther$catalyticConverter = other.catalyticConverter;
    if (l$catalyticConverter != lOther$catalyticConverter) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
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

extension UtilityExtension$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult
    on
        Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult {
  CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult<
    Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult
  >
  get copyWith =>
      CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult<
  TRes
> {
  factory CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult(
    Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult
    instance,
    TRes Function(
      Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult;

  factory CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult;

  TRes call({
    Fragment$CatalyticConverterFields? catalyticConverter,
    Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price?
    price,
    String? $__typename,
  });
  CopyWith$Fragment$CatalyticConverterFields<TRes> get catalyticConverter;
  CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price<
    TRes
  >
  get price;
}

class _CopyWithImpl$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult<
  TRes
>
    implements
        CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult
  _instance;

  final TRes Function(
    Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? catalyticConverter = _undefined,
    Object? price = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult(
      catalyticConverter:
          catalyticConverter == _undefined || catalyticConverter == null
          ? _instance.catalyticConverter
          : (catalyticConverter as Fragment$CatalyticConverterFields),
      price: price == _undefined || price == null
          ? _instance.price
          : (price
                as Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$CatalyticConverterFields<TRes> get catalyticConverter {
    final local$catalyticConverter = _instance.catalyticConverter;
    return CopyWith$Fragment$CatalyticConverterFields(
      local$catalyticConverter,
      (e) => call(catalyticConverter: e),
    );
  }

  CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price<
    TRes
  >
  get price {
    final local$price = _instance.price;
    return CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price(
      local$price,
      (e) => call(price: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult<
  TRes
>
    implements
        CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult(
    this._res,
  );

  TRes _res;

  call({
    Fragment$CatalyticConverterFields? catalyticConverter,
    Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price?
    price,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$CatalyticConverterFields<TRes> get catalyticConverter =>
      CopyWith$Fragment$CatalyticConverterFields.stub(_res);

  CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price<
    TRes
  >
  get price =>
      CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price.stub(
        _res,
      );
}

class Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price {
  Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price({
    required this.price,
    this.$__typename = 'PartPrice',
  });

  factory Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$price = json['price'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price(
      price: (l$price as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double price;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$price = price;
    _resultData['price'] = l$price;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$price = price;
    final l$$__typename = $__typename;
    return Object.hashAll([l$price, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
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

extension UtilityExtension$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price
    on
        Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price {
  CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price<
    Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price
  >
  get copyWith =>
      CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price<
  TRes
> {
  factory CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price(
    Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price
    instance,
    TRes Function(
      Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price;

  factory CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price;

  TRes call({double? price, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price<
  TRes
>
    implements
        CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price
  _instance;

  final TRes Function(
    Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? price = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price(
      price: price == _undefined || price == null
          ? _instance.price
          : (price as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price<
  TRes
>
    implements
        CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateCat$updateCatalyticConverter$$CatalyticConverterForInspectionResult$price(
    this._res,
  );

  TRes _res;

  call({double? price, String? $__typename}) => _res;
}

class Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError
    implements
        Fragment$InspectionErrorFields,
        Mutation$UpdateCat$updateCatalyticConverter {
  Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError({
    required this.message,
    this.$__typename = 'ElvInspectionError',
  });

  factory Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError(
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
            is! Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError ||
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

extension UtilityExtension$Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError
    on Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError {
  CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError<
    Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError
  >
  get copyWith =>
      CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError<
  TRes
> {
  factory CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError(
    Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError instance,
    TRes Function(
      Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError;

  factory CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError
  _instance;

  final TRes Function(
    Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateCat$updateCatalyticConverter$$ElvInspectionError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
