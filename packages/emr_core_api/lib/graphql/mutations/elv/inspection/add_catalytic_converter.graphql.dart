import '../../../fragments/elv/mutations/catalytic_converter_part_fields.graphql.dart';
import '../../../fragments/elv/mutations/inspection_error_fields.graphql.dart';
import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddCat {
  factory Variables$Mutation$AddCat({
    required String elvQuotationId,
    required String vehicleKey,
    required Enum$PartLocation partLocation,
    required Enum$CatalyticConverterClassification classification,
    required List<String> partPhotos,
    String? techemetCatId,
  }) => Variables$Mutation$AddCat._({
    r'elvQuotationId': elvQuotationId,
    r'vehicleKey': vehicleKey,
    r'partLocation': partLocation,
    r'classification': classification,
    r'partPhotos': partPhotos,
    if (techemetCatId != null) r'techemetCatId': techemetCatId,
  });

  Variables$Mutation$AddCat._(this._$data);

  factory Variables$Mutation$AddCat.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$elvQuotationId = data['elvQuotationId'];
    result$data['elvQuotationId'] = (l$elvQuotationId as String);
    final l$vehicleKey = data['vehicleKey'];
    result$data['vehicleKey'] = (l$vehicleKey as String);
    final l$partLocation = data['partLocation'];
    result$data['partLocation'] = fromJson$Enum$PartLocation(
      (l$partLocation as String),
    );
    final l$classification = data['classification'];
    result$data['classification'] =
        fromJson$Enum$CatalyticConverterClassification(
          (l$classification as String),
        );
    final l$partPhotos = data['partPhotos'];
    result$data['partPhotos'] = (l$partPhotos as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    if (data.containsKey('techemetCatId')) {
      final l$techemetCatId = data['techemetCatId'];
      result$data['techemetCatId'] = (l$techemetCatId as String?);
    }
    return Variables$Mutation$AddCat._(result$data);
  }

  Map<String, dynamic> _$data;

  String get elvQuotationId => (_$data['elvQuotationId'] as String);

  String get vehicleKey => (_$data['vehicleKey'] as String);

  Enum$PartLocation get partLocation =>
      (_$data['partLocation'] as Enum$PartLocation);

  Enum$CatalyticConverterClassification get classification =>
      (_$data['classification'] as Enum$CatalyticConverterClassification);

  List<String> get partPhotos => (_$data['partPhotos'] as List<String>);

  String? get techemetCatId => (_$data['techemetCatId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$elvQuotationId = elvQuotationId;
    result$data['elvQuotationId'] = l$elvQuotationId;
    final l$vehicleKey = vehicleKey;
    result$data['vehicleKey'] = l$vehicleKey;
    final l$partLocation = partLocation;
    result$data['partLocation'] = toJson$Enum$PartLocation(l$partLocation);
    final l$classification = classification;
    result$data['classification'] =
        toJson$Enum$CatalyticConverterClassification(l$classification);
    final l$partPhotos = partPhotos;
    result$data['partPhotos'] = l$partPhotos.map((e) => e).toList();
    if (_$data.containsKey('techemetCatId')) {
      final l$techemetCatId = techemetCatId;
      result$data['techemetCatId'] = l$techemetCatId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$AddCat<Variables$Mutation$AddCat> get copyWith =>
      CopyWith$Variables$Mutation$AddCat(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddCat ||
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
    final l$partPhotos = partPhotos;
    final lOther$partPhotos = other.partPhotos;
    if (l$partPhotos.length != lOther$partPhotos.length) {
      return false;
    }
    for (int i = 0; i < l$partPhotos.length; i++) {
      final l$partPhotos$entry = l$partPhotos[i];
      final lOther$partPhotos$entry = lOther$partPhotos[i];
      if (l$partPhotos$entry != lOther$partPhotos$entry) {
        return false;
      }
    }
    final l$techemetCatId = techemetCatId;
    final lOther$techemetCatId = other.techemetCatId;
    if (_$data.containsKey('techemetCatId') !=
        other._$data.containsKey('techemetCatId')) {
      return false;
    }
    if (l$techemetCatId != lOther$techemetCatId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$elvQuotationId = elvQuotationId;
    final l$vehicleKey = vehicleKey;
    final l$partLocation = partLocation;
    final l$classification = classification;
    final l$partPhotos = partPhotos;
    final l$techemetCatId = techemetCatId;
    return Object.hashAll([
      l$elvQuotationId,
      l$vehicleKey,
      l$partLocation,
      l$classification,
      Object.hashAll(l$partPhotos.map((v) => v)),
      _$data.containsKey('techemetCatId') ? l$techemetCatId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$AddCat<TRes> {
  factory CopyWith$Variables$Mutation$AddCat(
    Variables$Mutation$AddCat instance,
    TRes Function(Variables$Mutation$AddCat) then,
  ) = _CopyWithImpl$Variables$Mutation$AddCat;

  factory CopyWith$Variables$Mutation$AddCat.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddCat;

  TRes call({
    String? elvQuotationId,
    String? vehicleKey,
    Enum$PartLocation? partLocation,
    Enum$CatalyticConverterClassification? classification,
    List<String>? partPhotos,
    String? techemetCatId,
  });
}

class _CopyWithImpl$Variables$Mutation$AddCat<TRes>
    implements CopyWith$Variables$Mutation$AddCat<TRes> {
  _CopyWithImpl$Variables$Mutation$AddCat(this._instance, this._then);

  final Variables$Mutation$AddCat _instance;

  final TRes Function(Variables$Mutation$AddCat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? elvQuotationId = _undefined,
    Object? vehicleKey = _undefined,
    Object? partLocation = _undefined,
    Object? classification = _undefined,
    Object? partPhotos = _undefined,
    Object? techemetCatId = _undefined,
  }) => _then(
    Variables$Mutation$AddCat._({
      ..._instance._$data,
      if (elvQuotationId != _undefined && elvQuotationId != null)
        'elvQuotationId': (elvQuotationId as String),
      if (vehicleKey != _undefined && vehicleKey != null)
        'vehicleKey': (vehicleKey as String),
      if (partLocation != _undefined && partLocation != null)
        'partLocation': (partLocation as Enum$PartLocation),
      if (classification != _undefined && classification != null)
        'classification':
            (classification as Enum$CatalyticConverterClassification),
      if (partPhotos != _undefined && partPhotos != null)
        'partPhotos': (partPhotos as List<String>),
      if (techemetCatId != _undefined)
        'techemetCatId': (techemetCatId as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddCat<TRes>
    implements CopyWith$Variables$Mutation$AddCat<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddCat(this._res);

  TRes _res;

  call({
    String? elvQuotationId,
    String? vehicleKey,
    Enum$PartLocation? partLocation,
    Enum$CatalyticConverterClassification? classification,
    List<String>? partPhotos,
    String? techemetCatId,
  }) => _res;
}

class Mutation$AddCat {
  Mutation$AddCat({this.addCatalyticConverter, this.$__typename = 'Mutation'});

  factory Mutation$AddCat.fromJson(Map<String, dynamic> json) {
    final l$addCatalyticConverter = json['addCatalyticConverter'];
    final l$$__typename = json['__typename'];
    return Mutation$AddCat(
      addCatalyticConverter: l$addCatalyticConverter == null
          ? null
          : Mutation$AddCat$addCatalyticConverter.fromJson(
              (l$addCatalyticConverter as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddCat$addCatalyticConverter? addCatalyticConverter;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addCatalyticConverter = addCatalyticConverter;
    _resultData['addCatalyticConverter'] = l$addCatalyticConverter?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addCatalyticConverter = addCatalyticConverter;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addCatalyticConverter, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddCat || runtimeType != other.runtimeType) {
      return false;
    }
    final l$addCatalyticConverter = addCatalyticConverter;
    final lOther$addCatalyticConverter = other.addCatalyticConverter;
    if (l$addCatalyticConverter != lOther$addCatalyticConverter) {
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

extension UtilityExtension$Mutation$AddCat on Mutation$AddCat {
  CopyWith$Mutation$AddCat<Mutation$AddCat> get copyWith =>
      CopyWith$Mutation$AddCat(this, (i) => i);
}

abstract class CopyWith$Mutation$AddCat<TRes> {
  factory CopyWith$Mutation$AddCat(
    Mutation$AddCat instance,
    TRes Function(Mutation$AddCat) then,
  ) = _CopyWithImpl$Mutation$AddCat;

  factory CopyWith$Mutation$AddCat.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddCat;

  TRes call({
    Mutation$AddCat$addCatalyticConverter? addCatalyticConverter,
    String? $__typename,
  });
  CopyWith$Mutation$AddCat$addCatalyticConverter<TRes>
  get addCatalyticConverter;
}

class _CopyWithImpl$Mutation$AddCat<TRes>
    implements CopyWith$Mutation$AddCat<TRes> {
  _CopyWithImpl$Mutation$AddCat(this._instance, this._then);

  final Mutation$AddCat _instance;

  final TRes Function(Mutation$AddCat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addCatalyticConverter = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddCat(
      addCatalyticConverter: addCatalyticConverter == _undefined
          ? _instance.addCatalyticConverter
          : (addCatalyticConverter as Mutation$AddCat$addCatalyticConverter?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddCat$addCatalyticConverter<TRes>
  get addCatalyticConverter {
    final local$addCatalyticConverter = _instance.addCatalyticConverter;
    return local$addCatalyticConverter == null
        ? CopyWith$Mutation$AddCat$addCatalyticConverter.stub(_then(_instance))
        : CopyWith$Mutation$AddCat$addCatalyticConverter(
            local$addCatalyticConverter,
            (e) => call(addCatalyticConverter: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$AddCat<TRes>
    implements CopyWith$Mutation$AddCat<TRes> {
  _CopyWithStubImpl$Mutation$AddCat(this._res);

  TRes _res;

  call({
    Mutation$AddCat$addCatalyticConverter? addCatalyticConverter,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddCat$addCatalyticConverter<TRes>
  get addCatalyticConverter =>
      CopyWith$Mutation$AddCat$addCatalyticConverter.stub(_res);
}

const documentNodeMutationAddCat = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddCat'),
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
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'partPhotos')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'techemetCatId')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'addCatalyticConverter'),
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
                      name: NameNode(value: 'partLocation'),
                      value: VariableNode(
                        name: NameNode(value: 'partLocation'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'classification'),
                      value: VariableNode(
                        name: NameNode(value: 'classification'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'photoPaths'),
                      value: VariableNode(name: NameNode(value: 'partPhotos')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'techemetCatId'),
                      value: VariableNode(
                        name: NameNode(value: 'techemetCatId'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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

class Mutation$AddCat$addCatalyticConverter {
  Mutation$AddCat$addCatalyticConverter({required this.$__typename});

  factory Mutation$AddCat$addCatalyticConverter.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "CatalyticConverterForInspectionResult":
        return Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult.fromJson(
          json,
        );

      case "ElvInspectionError":
        return Mutation$AddCat$addCatalyticConverter$$ElvInspectionError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$AddCat$addCatalyticConverter(
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
    if (other is! Mutation$AddCat$addCatalyticConverter ||
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

extension UtilityExtension$Mutation$AddCat$addCatalyticConverter
    on Mutation$AddCat$addCatalyticConverter {
  CopyWith$Mutation$AddCat$addCatalyticConverter<
    Mutation$AddCat$addCatalyticConverter
  >
  get copyWith =>
      CopyWith$Mutation$AddCat$addCatalyticConverter(this, (i) => i);

  _T when<_T>({
    required _T Function(
      Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult,
    )
    catalyticConverterForInspectionResult,
    required _T Function(
      Mutation$AddCat$addCatalyticConverter$$ElvInspectionError,
    )
    elvInspectionError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "CatalyticConverterForInspectionResult":
        return catalyticConverterForInspectionResult(
          this
              as Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult,
        );

      case "ElvInspectionError":
        return elvInspectionError(
          this as Mutation$AddCat$addCatalyticConverter$$ElvInspectionError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult,
    )?
    catalyticConverterForInspectionResult,
    _T Function(Mutation$AddCat$addCatalyticConverter$$ElvInspectionError)?
    elvInspectionError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "CatalyticConverterForInspectionResult":
        if (catalyticConverterForInspectionResult != null) {
          return catalyticConverterForInspectionResult(
            this
                as Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult,
          );
        } else {
          return orElse();
        }

      case "ElvInspectionError":
        if (elvInspectionError != null) {
          return elvInspectionError(
            this as Mutation$AddCat$addCatalyticConverter$$ElvInspectionError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$AddCat$addCatalyticConverter<TRes> {
  factory CopyWith$Mutation$AddCat$addCatalyticConverter(
    Mutation$AddCat$addCatalyticConverter instance,
    TRes Function(Mutation$AddCat$addCatalyticConverter) then,
  ) = _CopyWithImpl$Mutation$AddCat$addCatalyticConverter;

  factory CopyWith$Mutation$AddCat$addCatalyticConverter.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddCat$addCatalyticConverter;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$AddCat$addCatalyticConverter<TRes>
    implements CopyWith$Mutation$AddCat$addCatalyticConverter<TRes> {
  _CopyWithImpl$Mutation$AddCat$addCatalyticConverter(
    this._instance,
    this._then,
  );

  final Mutation$AddCat$addCatalyticConverter _instance;

  final TRes Function(Mutation$AddCat$addCatalyticConverter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$AddCat$addCatalyticConverter(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddCat$addCatalyticConverter<TRes>
    implements CopyWith$Mutation$AddCat$addCatalyticConverter<TRes> {
  _CopyWithStubImpl$Mutation$AddCat$addCatalyticConverter(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult
    implements Mutation$AddCat$addCatalyticConverter {
  Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult({
    required this.catalyticConverter,
    required this.price,
    this.$__typename = 'CatalyticConverterForInspectionResult',
  });

  factory Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$catalyticConverter = json['catalyticConverter'];
    final l$price = json['price'];
    final l$$__typename = json['__typename'];
    return Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult(
      catalyticConverter: Fragment$CatalyticConverterFields.fromJson(
        (l$catalyticConverter as Map<String, dynamic>),
      ),
      price:
          Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price.fromJson(
            (l$price as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CatalyticConverterFields catalyticConverter;

  final Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price
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
            is! Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult ||
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

extension UtilityExtension$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult
    on Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult {
  CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult<
    Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult
  >
  get copyWith =>
      CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult<
  TRes
> {
  factory CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult(
    Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult
    instance,
    TRes Function(
      Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult;

  factory CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult;

  TRes call({
    Fragment$CatalyticConverterFields? catalyticConverter,
    Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price?
    price,
    String? $__typename,
  });
  CopyWith$Fragment$CatalyticConverterFields<TRes> get catalyticConverter;
  CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price<
    TRes
  >
  get price;
}

class _CopyWithImpl$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult<
  TRes
>
    implements
        CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult<
          TRes
        > {
  _CopyWithImpl$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult(
    this._instance,
    this._then,
  );

  final Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult
  _instance;

  final TRes Function(
    Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? catalyticConverter = _undefined,
    Object? price = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult(
      catalyticConverter:
          catalyticConverter == _undefined || catalyticConverter == null
          ? _instance.catalyticConverter
          : (catalyticConverter as Fragment$CatalyticConverterFields),
      price: price == _undefined || price == null
          ? _instance.price
          : (price
                as Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price),
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

  CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price<
    TRes
  >
  get price {
    final local$price = _instance.price;
    return CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price(
      local$price,
      (e) => call(price: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult<
  TRes
>
    implements
        CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult(
    this._res,
  );

  TRes _res;

  call({
    Fragment$CatalyticConverterFields? catalyticConverter,
    Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price?
    price,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$CatalyticConverterFields<TRes> get catalyticConverter =>
      CopyWith$Fragment$CatalyticConverterFields.stub(_res);

  CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price<
    TRes
  >
  get price =>
      CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price.stub(
        _res,
      );
}

class Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price {
  Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price({
    required this.price,
    this.$__typename = 'PartPrice',
  });

  factory Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$price = json['price'];
    final l$$__typename = json['__typename'];
    return Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price(
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
            is! Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price ||
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

extension UtilityExtension$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price
    on
        Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price {
  CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price<
    Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price
  >
  get copyWith =>
      CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price<
  TRes
> {
  factory CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price(
    Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price
    instance,
    TRes Function(
      Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price;

  factory CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price;

  TRes call({double? price, String? $__typename});
}

class _CopyWithImpl$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price<
  TRes
>
    implements
        CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price<
          TRes
        > {
  _CopyWithImpl$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price(
    this._instance,
    this._then,
  );

  final Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price
  _instance;

  final TRes Function(
    Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? price = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price(
      price: price == _undefined || price == null
          ? _instance.price
          : (price as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price<
  TRes
>
    implements
        CopyWith$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddCat$addCatalyticConverter$$CatalyticConverterForInspectionResult$price(
    this._res,
  );

  TRes _res;

  call({double? price, String? $__typename}) => _res;
}

class Mutation$AddCat$addCatalyticConverter$$ElvInspectionError
    implements
        Fragment$InspectionErrorFields,
        Mutation$AddCat$addCatalyticConverter {
  Mutation$AddCat$addCatalyticConverter$$ElvInspectionError({
    this.$__typename = 'ElvInspectionError',
    required this.message,
  });

  factory Mutation$AddCat$addCatalyticConverter$$ElvInspectionError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    return Mutation$AddCat$addCatalyticConverter$$ElvInspectionError(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
    );
  }

  final String $__typename;

  final String message;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddCat$addCatalyticConverter$$ElvInspectionError ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$AddCat$addCatalyticConverter$$ElvInspectionError
    on Mutation$AddCat$addCatalyticConverter$$ElvInspectionError {
  CopyWith$Mutation$AddCat$addCatalyticConverter$$ElvInspectionError<
    Mutation$AddCat$addCatalyticConverter$$ElvInspectionError
  >
  get copyWith =>
      CopyWith$Mutation$AddCat$addCatalyticConverter$$ElvInspectionError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddCat$addCatalyticConverter$$ElvInspectionError<
  TRes
> {
  factory CopyWith$Mutation$AddCat$addCatalyticConverter$$ElvInspectionError(
    Mutation$AddCat$addCatalyticConverter$$ElvInspectionError instance,
    TRes Function(Mutation$AddCat$addCatalyticConverter$$ElvInspectionError)
    then,
  ) = _CopyWithImpl$Mutation$AddCat$addCatalyticConverter$$ElvInspectionError;

  factory CopyWith$Mutation$AddCat$addCatalyticConverter$$ElvInspectionError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddCat$addCatalyticConverter$$ElvInspectionError;

  TRes call({String? $__typename, String? message});
}

class _CopyWithImpl$Mutation$AddCat$addCatalyticConverter$$ElvInspectionError<
  TRes
>
    implements
        CopyWith$Mutation$AddCat$addCatalyticConverter$$ElvInspectionError<
          TRes
        > {
  _CopyWithImpl$Mutation$AddCat$addCatalyticConverter$$ElvInspectionError(
    this._instance,
    this._then,
  );

  final Mutation$AddCat$addCatalyticConverter$$ElvInspectionError _instance;

  final TRes Function(Mutation$AddCat$addCatalyticConverter$$ElvInspectionError)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined, Object? message = _undefined}) =>
      _then(
        Mutation$AddCat$addCatalyticConverter$$ElvInspectionError(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$AddCat$addCatalyticConverter$$ElvInspectionError<
  TRes
>
    implements
        CopyWith$Mutation$AddCat$addCatalyticConverter$$ElvInspectionError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddCat$addCatalyticConverter$$ElvInspectionError(
    this._res,
  );

  TRes _res;

  call({String? $__typename, String? message}) => _res;
}
