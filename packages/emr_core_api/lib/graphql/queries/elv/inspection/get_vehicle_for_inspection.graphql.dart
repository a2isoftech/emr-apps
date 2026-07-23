import '../../../fragments/elv/mutations/catalytic_converter_part_fields.graphql.dart';
import '../../../fragments/elv/mutations/non_conforming_part_fields.graphql.dart';
import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetVehicleForInspection {
  factory Variables$Query$GetVehicleForInspection({
    required String yardCode,
    required String elvQuotationId,
    required String vehicleKey,
  }) => Variables$Query$GetVehicleForInspection._({
    r'yardCode': yardCode,
    r'elvQuotationId': elvQuotationId,
    r'vehicleKey': vehicleKey,
  });

  Variables$Query$GetVehicleForInspection._(this._$data);

  factory Variables$Query$GetVehicleForInspection.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    final l$elvQuotationId = data['elvQuotationId'];
    result$data['elvQuotationId'] = (l$elvQuotationId as String);
    final l$vehicleKey = data['vehicleKey'];
    result$data['vehicleKey'] = (l$vehicleKey as String);
    return Variables$Query$GetVehicleForInspection._(result$data);
  }

  Map<String, dynamic> _$data;

  String get yardCode => (_$data['yardCode'] as String);

  String get elvQuotationId => (_$data['elvQuotationId'] as String);

  String get vehicleKey => (_$data['vehicleKey'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$yardCode = yardCode;
    result$data['yardCode'] = l$yardCode;
    final l$elvQuotationId = elvQuotationId;
    result$data['elvQuotationId'] = l$elvQuotationId;
    final l$vehicleKey = vehicleKey;
    result$data['vehicleKey'] = l$vehicleKey;
    return result$data;
  }

  CopyWith$Variables$Query$GetVehicleForInspection<
    Variables$Query$GetVehicleForInspection
  >
  get copyWith =>
      CopyWith$Variables$Query$GetVehicleForInspection(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetVehicleForInspection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$elvQuotationId = elvQuotationId;
    final l$vehicleKey = vehicleKey;
    return Object.hashAll([l$yardCode, l$elvQuotationId, l$vehicleKey]);
  }
}

abstract class CopyWith$Variables$Query$GetVehicleForInspection<TRes> {
  factory CopyWith$Variables$Query$GetVehicleForInspection(
    Variables$Query$GetVehicleForInspection instance,
    TRes Function(Variables$Query$GetVehicleForInspection) then,
  ) = _CopyWithImpl$Variables$Query$GetVehicleForInspection;

  factory CopyWith$Variables$Query$GetVehicleForInspection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetVehicleForInspection;

  TRes call({String? yardCode, String? elvQuotationId, String? vehicleKey});
}

class _CopyWithImpl$Variables$Query$GetVehicleForInspection<TRes>
    implements CopyWith$Variables$Query$GetVehicleForInspection<TRes> {
  _CopyWithImpl$Variables$Query$GetVehicleForInspection(
    this._instance,
    this._then,
  );

  final Variables$Query$GetVehicleForInspection _instance;

  final TRes Function(Variables$Query$GetVehicleForInspection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? elvQuotationId = _undefined,
    Object? vehicleKey = _undefined,
  }) => _then(
    Variables$Query$GetVehicleForInspection._({
      ..._instance._$data,
      if (yardCode != _undefined && yardCode != null)
        'yardCode': (yardCode as String),
      if (elvQuotationId != _undefined && elvQuotationId != null)
        'elvQuotationId': (elvQuotationId as String),
      if (vehicleKey != _undefined && vehicleKey != null)
        'vehicleKey': (vehicleKey as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetVehicleForInspection<TRes>
    implements CopyWith$Variables$Query$GetVehicleForInspection<TRes> {
  _CopyWithStubImpl$Variables$Query$GetVehicleForInspection(this._res);

  TRes _res;

  call({String? yardCode, String? elvQuotationId, String? vehicleKey}) => _res;
}

class Query$GetVehicleForInspection {
  Query$GetVehicleForInspection({
    required this.vehicleForInspection,
    this.$__typename = 'Query',
  });

  factory Query$GetVehicleForInspection.fromJson(Map<String, dynamic> json) {
    final l$vehicleForInspection = json['vehicleForInspection'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection(
      vehicleForInspection:
          Query$GetVehicleForInspection$vehicleForInspection.fromJson(
            (l$vehicleForInspection as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetVehicleForInspection$vehicleForInspection vehicleForInspection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vehicleForInspection = vehicleForInspection;
    _resultData['vehicleForInspection'] = l$vehicleForInspection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vehicleForInspection = vehicleForInspection;
    final l$$__typename = $__typename;
    return Object.hashAll([l$vehicleForInspection, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetVehicleForInspection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$vehicleForInspection = vehicleForInspection;
    final lOther$vehicleForInspection = other.vehicleForInspection;
    if (l$vehicleForInspection != lOther$vehicleForInspection) {
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

extension UtilityExtension$Query$GetVehicleForInspection
    on Query$GetVehicleForInspection {
  CopyWith$Query$GetVehicleForInspection<Query$GetVehicleForInspection>
  get copyWith => CopyWith$Query$GetVehicleForInspection(this, (i) => i);
}

abstract class CopyWith$Query$GetVehicleForInspection<TRes> {
  factory CopyWith$Query$GetVehicleForInspection(
    Query$GetVehicleForInspection instance,
    TRes Function(Query$GetVehicleForInspection) then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection;

  factory CopyWith$Query$GetVehicleForInspection.stub(TRes res) =
      _CopyWithStubImpl$Query$GetVehicleForInspection;

  TRes call({
    Query$GetVehicleForInspection$vehicleForInspection? vehicleForInspection,
    String? $__typename,
  });
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection<TRes>
  get vehicleForInspection;
}

class _CopyWithImpl$Query$GetVehicleForInspection<TRes>
    implements CopyWith$Query$GetVehicleForInspection<TRes> {
  _CopyWithImpl$Query$GetVehicleForInspection(this._instance, this._then);

  final Query$GetVehicleForInspection _instance;

  final TRes Function(Query$GetVehicleForInspection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vehicleForInspection = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection(
      vehicleForInspection:
          vehicleForInspection == _undefined || vehicleForInspection == null
          ? _instance.vehicleForInspection
          : (vehicleForInspection
                as Query$GetVehicleForInspection$vehicleForInspection),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection<TRes>
  get vehicleForInspection {
    final local$vehicleForInspection = _instance.vehicleForInspection;
    return CopyWith$Query$GetVehicleForInspection$vehicleForInspection(
      local$vehicleForInspection,
      (e) => call(vehicleForInspection: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetVehicleForInspection<TRes>
    implements CopyWith$Query$GetVehicleForInspection<TRes> {
  _CopyWithStubImpl$Query$GetVehicleForInspection(this._res);

  TRes _res;

  call({
    Query$GetVehicleForInspection$vehicleForInspection? vehicleForInspection,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection<TRes>
  get vehicleForInspection =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection.stub(_res);
}

const documentNodeQueryGetVehicleForInspection = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetVehicleForInspection'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'yardCode')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'vehicleForInspection'),
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
                      name: NameNode(value: 'yardCode'),
                      value: VariableNode(name: NameNode(value: 'yardCode')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'elvQuotationId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'quoteSource'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'vehicleInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'detail'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'vin'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'vrn'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'engineSize'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'curbWeight'),
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
                              name: NameNode(value: 'make'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'model'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'fuelType'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'year'),
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
                        name: NameNode(value: 'configuration'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'vinUnreadable'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'hasBattery'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'parts'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  InlineFragmentNode(
                                    typeCondition: TypeConditionNode(
                                      on: NamedTypeNode(
                                        name: NameNode(
                                          value: 'VehiclePartConfig',
                                        ),
                                        isNonNull: false,
                                      ),
                                    ),
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'partKey'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'partInfo'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'partType',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'partLocation',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'partPhotos'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'url'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
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
                                  InlineFragmentNode(
                                    typeCondition: TypeConditionNode(
                                      on: NamedTypeNode(
                                        name: NameNode(
                                          value: 'CatalyticConverterConfig',
                                        ),
                                        isNonNull: false,
                                      ),
                                    ),
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FragmentSpreadNode(
                                          name: NameNode(
                                            value: 'CatalyticConverterFields',
                                          ),
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
                              name: NameNode(value: 'nonConformingParts'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FragmentSpreadNode(
                                    name: NameNode(
                                      value: 'NonConformingPartFields',
                                    ),
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
                        name: NameNode(value: 'documents'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'frontPhoto'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'url'),
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
                              name: NameNode(value: 'rearPhoto'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'url'),
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
                              name: NameNode(value: 'vinPhoto'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'url'),
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
                              name: NameNode(value: 'v5LogBook'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'url'),
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
                  name: NameNode(value: 'vehiclePriceDetail'),
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
                        name: NameNode(value: 'totalCatPrice'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'status'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'partPrices'),
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
                              name: NameNode(value: 'partInfo'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'partType'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'partLocation'),
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
                              name: NameNode(value: 'vehiclePartKeys'),
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
    fragmentDefinitionCatalyticConverterFields,
    fragmentDefinitionNonConformingPartFields,
  ],
);

class Query$GetVehicleForInspection$vehicleForInspection {
  Query$GetVehicleForInspection$vehicleForInspection({
    required this.elvQuotationId,
    required this.quoteSource,
    required this.vehicleInfo,
    required this.vehiclePriceDetail,
    this.$__typename = 'VehicleForInspectionResult',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$elvQuotationId = json['elvQuotationId'];
    final l$quoteSource = json['quoteSource'];
    final l$vehicleInfo = json['vehicleInfo'];
    final l$vehiclePriceDetail = json['vehiclePriceDetail'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection(
      elvQuotationId: (l$elvQuotationId as String),
      quoteSource: fromJson$Enum$QuoteSource((l$quoteSource as String)),
      vehicleInfo:
          Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo.fromJson(
            (l$vehicleInfo as Map<String, dynamic>),
          ),
      vehiclePriceDetail:
          Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail.fromJson(
            (l$vehiclePriceDetail as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String elvQuotationId;

  final Enum$QuoteSource quoteSource;

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo
  vehicleInfo;

  final Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail
  vehiclePriceDetail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$elvQuotationId = elvQuotationId;
    _resultData['elvQuotationId'] = l$elvQuotationId;
    final l$quoteSource = quoteSource;
    _resultData['quoteSource'] = toJson$Enum$QuoteSource(l$quoteSource);
    final l$vehicleInfo = vehicleInfo;
    _resultData['vehicleInfo'] = l$vehicleInfo.toJson();
    final l$vehiclePriceDetail = vehiclePriceDetail;
    _resultData['vehiclePriceDetail'] = l$vehiclePriceDetail.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$elvQuotationId = elvQuotationId;
    final l$quoteSource = quoteSource;
    final l$vehicleInfo = vehicleInfo;
    final l$vehiclePriceDetail = vehiclePriceDetail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$elvQuotationId,
      l$quoteSource,
      l$vehicleInfo,
      l$vehiclePriceDetail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetVehicleForInspection$vehicleForInspection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$elvQuotationId = elvQuotationId;
    final lOther$elvQuotationId = other.elvQuotationId;
    if (l$elvQuotationId != lOther$elvQuotationId) {
      return false;
    }
    final l$quoteSource = quoteSource;
    final lOther$quoteSource = other.quoteSource;
    if (l$quoteSource != lOther$quoteSource) {
      return false;
    }
    final l$vehicleInfo = vehicleInfo;
    final lOther$vehicleInfo = other.vehicleInfo;
    if (l$vehicleInfo != lOther$vehicleInfo) {
      return false;
    }
    final l$vehiclePriceDetail = vehiclePriceDetail;
    final lOther$vehiclePriceDetail = other.vehiclePriceDetail;
    if (l$vehiclePriceDetail != lOther$vehiclePriceDetail) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection
    on Query$GetVehicleForInspection$vehicleForInspection {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection<
    Query$GetVehicleForInspection$vehicleForInspection
  >
  get copyWith => CopyWith$Query$GetVehicleForInspection$vehicleForInspection(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection(
    Query$GetVehicleForInspection$vehicleForInspection instance,
    TRes Function(Query$GetVehicleForInspection$vehicleForInspection) then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection;

  TRes call({
    String? elvQuotationId,
    Enum$QuoteSource? quoteSource,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo? vehicleInfo,
    Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail?
    vehiclePriceDetail,
    String? $__typename,
  });
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo<TRes>
  get vehicleInfo;
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail<
    TRes
  >
  get vehiclePriceDetail;
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection<TRes>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection<TRes> {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection _instance;

  final TRes Function(Query$GetVehicleForInspection$vehicleForInspection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? elvQuotationId = _undefined,
    Object? quoteSource = _undefined,
    Object? vehicleInfo = _undefined,
    Object? vehiclePriceDetail = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection(
      elvQuotationId: elvQuotationId == _undefined || elvQuotationId == null
          ? _instance.elvQuotationId
          : (elvQuotationId as String),
      quoteSource: quoteSource == _undefined || quoteSource == null
          ? _instance.quoteSource
          : (quoteSource as Enum$QuoteSource),
      vehicleInfo: vehicleInfo == _undefined || vehicleInfo == null
          ? _instance.vehicleInfo
          : (vehicleInfo
                as Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo),
      vehiclePriceDetail:
          vehiclePriceDetail == _undefined || vehiclePriceDetail == null
          ? _instance.vehiclePriceDetail
          : (vehiclePriceDetail
                as Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo<TRes>
  get vehicleInfo {
    final local$vehicleInfo = _instance.vehicleInfo;
    return CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo(
      local$vehicleInfo,
      (e) => call(vehicleInfo: e),
    );
  }

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail<
    TRes
  >
  get vehiclePriceDetail {
    final local$vehiclePriceDetail = _instance.vehiclePriceDetail;
    return CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail(
      local$vehiclePriceDetail,
      (e) => call(vehiclePriceDetail: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection<TRes>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection<TRes> {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection(
    this._res,
  );

  TRes _res;

  call({
    String? elvQuotationId,
    Enum$QuoteSource? quoteSource,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo? vehicleInfo,
    Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail?
    vehiclePriceDetail,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo<TRes>
  get vehicleInfo =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo.stub(
        _res,
      );

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail<
    TRes
  >
  get vehiclePriceDetail =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail.stub(
        _res,
      );
}

class Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo {
  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo({
    required this.detail,
    required this.configuration,
    required this.documents,
    this.$__typename = 'VehicleInfo',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$detail = json['detail'];
    final l$configuration = json['configuration'];
    final l$documents = json['documents'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo(
      detail:
          Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail.fromJson(
            (l$detail as Map<String, dynamic>),
          ),
      configuration:
          Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration.fromJson(
            (l$configuration as Map<String, dynamic>),
          ),
      documents:
          Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents.fromJson(
            (l$documents as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail
  detail;

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration
  configuration;

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents
  documents;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$detail = detail;
    _resultData['detail'] = l$detail.toJson();
    final l$configuration = configuration;
    _resultData['configuration'] = l$configuration.toJson();
    final l$documents = documents;
    _resultData['documents'] = l$documents.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$detail = detail;
    final l$configuration = configuration;
    final l$documents = documents;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$detail,
      l$configuration,
      l$documents,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$detail = detail;
    final lOther$detail = other.detail;
    if (l$detail != lOther$detail) {
      return false;
    }
    final l$configuration = configuration;
    final lOther$configuration = other.configuration;
    if (l$configuration != lOther$configuration) {
      return false;
    }
    final l$documents = documents;
    final lOther$documents = other.documents;
    if (l$documents != lOther$documents) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo
    on Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo;

  TRes call({
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail?
    detail,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration?
    configuration,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents?
    documents,
    String? $__typename,
  });
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail<
    TRes
  >
  get detail;
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration<
    TRes
  >
  get configuration;
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents<
    TRes
  >
  get documents;
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? detail = _undefined,
    Object? configuration = _undefined,
    Object? documents = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo(
      detail: detail == _undefined || detail == null
          ? _instance.detail
          : (detail
                as Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail),
      configuration: configuration == _undefined || configuration == null
          ? _instance.configuration
          : (configuration
                as Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration),
      documents: documents == _undefined || documents == null
          ? _instance.documents
          : (documents
                as Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail<
    TRes
  >
  get detail {
    final local$detail = _instance.detail;
    return CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail(
      local$detail,
      (e) => call(detail: e),
    );
  }

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration<
    TRes
  >
  get configuration {
    final local$configuration = _instance.configuration;
    return CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration(
      local$configuration,
      (e) => call(configuration: e),
    );
  }

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents<
    TRes
  >
  get documents {
    final local$documents = _instance.documents;
    return CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents(
      local$documents,
      (e) => call(documents: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo(
    this._res,
  );

  TRes _res;

  call({
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail?
    detail,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration?
    configuration,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents?
    documents,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail<
    TRes
  >
  get detail =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail.stub(
        _res,
      );

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration<
    TRes
  >
  get configuration =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration.stub(
        _res,
      );

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents<
    TRes
  >
  get documents =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents.stub(
        _res,
      );
}

class Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail {
  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail({
    required this.vin,
    required this.vrn,
    required this.engineSize,
    required this.curbWeight,
    required this.make,
    required this.model,
    required this.fuelType,
    required this.year,
    this.$__typename = 'VehicleDetail',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$vin = json['vin'];
    final l$vrn = json['vrn'];
    final l$engineSize = json['engineSize'];
    final l$curbWeight = json['curbWeight'];
    final l$make = json['make'];
    final l$model = json['model'];
    final l$fuelType = json['fuelType'];
    final l$year = json['year'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail(
      vin: (l$vin as String),
      vrn: (l$vrn as String),
      engineSize: (l$engineSize as num).toDouble(),
      curbWeight:
          Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight.fromJson(
            (l$curbWeight as Map<String, dynamic>),
          ),
      make: (l$make as String),
      model: (l$model as String),
      fuelType: (l$fuelType as String),
      year: (l$year as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String vin;

  final String vrn;

  final double engineSize;

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight
  curbWeight;

  final String make;

  final String model;

  final String fuelType;

  final int year;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vin = vin;
    _resultData['vin'] = l$vin;
    final l$vrn = vrn;
    _resultData['vrn'] = l$vrn;
    final l$engineSize = engineSize;
    _resultData['engineSize'] = l$engineSize;
    final l$curbWeight = curbWeight;
    _resultData['curbWeight'] = l$curbWeight.toJson();
    final l$make = make;
    _resultData['make'] = l$make;
    final l$model = model;
    _resultData['model'] = l$model;
    final l$fuelType = fuelType;
    _resultData['fuelType'] = l$fuelType;
    final l$year = year;
    _resultData['year'] = l$year;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vin = vin;
    final l$vrn = vrn;
    final l$engineSize = engineSize;
    final l$curbWeight = curbWeight;
    final l$make = make;
    final l$model = model;
    final l$fuelType = fuelType;
    final l$year = year;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$vin,
      l$vrn,
      l$engineSize,
      l$curbWeight,
      l$make,
      l$model,
      l$fuelType,
      l$year,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$vin = vin;
    final lOther$vin = other.vin;
    if (l$vin != lOther$vin) {
      return false;
    }
    final l$vrn = vrn;
    final lOther$vrn = other.vrn;
    if (l$vrn != lOther$vrn) {
      return false;
    }
    final l$engineSize = engineSize;
    final lOther$engineSize = other.engineSize;
    if (l$engineSize != lOther$engineSize) {
      return false;
    }
    final l$curbWeight = curbWeight;
    final lOther$curbWeight = other.curbWeight;
    if (l$curbWeight != lOther$curbWeight) {
      return false;
    }
    final l$make = make;
    final lOther$make = other.make;
    if (l$make != lOther$make) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (l$model != lOther$model) {
      return false;
    }
    final l$fuelType = fuelType;
    final lOther$fuelType = other.fuelType;
    if (l$fuelType != lOther$fuelType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail
    on Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail;

  TRes call({
    String? vin,
    String? vrn,
    double? engineSize,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight?
    curbWeight,
    String? make,
    String? model,
    String? fuelType,
    int? year,
    String? $__typename,
  });
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight<
    TRes
  >
  get curbWeight;
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vin = _undefined,
    Object? vrn = _undefined,
    Object? engineSize = _undefined,
    Object? curbWeight = _undefined,
    Object? make = _undefined,
    Object? model = _undefined,
    Object? fuelType = _undefined,
    Object? year = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail(
      vin: vin == _undefined || vin == null ? _instance.vin : (vin as String),
      vrn: vrn == _undefined || vrn == null ? _instance.vrn : (vrn as String),
      engineSize: engineSize == _undefined || engineSize == null
          ? _instance.engineSize
          : (engineSize as double),
      curbWeight: curbWeight == _undefined || curbWeight == null
          ? _instance.curbWeight
          : (curbWeight
                as Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight),
      make: make == _undefined || make == null
          ? _instance.make
          : (make as String),
      model: model == _undefined || model == null
          ? _instance.model
          : (model as String),
      fuelType: fuelType == _undefined || fuelType == null
          ? _instance.fuelType
          : (fuelType as String),
      year: year == _undefined || year == null ? _instance.year : (year as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight<
    TRes
  >
  get curbWeight {
    final local$curbWeight = _instance.curbWeight;
    return CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight(
      local$curbWeight,
      (e) => call(curbWeight: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail(
    this._res,
  );

  TRes _res;

  call({
    String? vin,
    String? vrn,
    double? engineSize,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight?
    curbWeight,
    String? make,
    String? model,
    String? fuelType,
    int? year,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight<
    TRes
  >
  get curbWeight =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight.stub(
        _res,
      );
}

class Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight {
  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight({
    required this.id,
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight(
      id: (l$id as int),
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$uom, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight
    on
        Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight;

  TRes call({int? id, Enum$Uom? uom, double? value, String? $__typename});
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight(
      id: id == _undefined || id == null ? _instance.id : (id as int),
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

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$detail$curbWeight(
    this._res,
  );

  TRes _res;

  call({int? id, Enum$Uom? uom, double? value, String? $__typename}) => _res;
}

class Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration {
  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration({
    required this.vinUnreadable,
    required this.hasBattery,
    required this.parts,
    required this.nonConformingParts,
    this.$__typename = 'VehicleConfig',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$vinUnreadable = json['vinUnreadable'];
    final l$hasBattery = json['hasBattery'];
    final l$parts = json['parts'];
    final l$nonConformingParts = json['nonConformingParts'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration(
      vinUnreadable: (l$vinUnreadable as bool),
      hasBattery: (l$hasBattery as bool),
      parts: (l$parts as List<dynamic>)
          .map(
            (e) =>
                Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      nonConformingParts: (l$nonConformingParts as List<dynamic>)
          .map(
            (e) => Fragment$NonConformingPartFields.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool vinUnreadable;

  final bool hasBattery;

  final List<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts
  >
  parts;

  final List<Fragment$NonConformingPartFields> nonConformingParts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vinUnreadable = vinUnreadable;
    _resultData['vinUnreadable'] = l$vinUnreadable;
    final l$hasBattery = hasBattery;
    _resultData['hasBattery'] = l$hasBattery;
    final l$parts = parts;
    _resultData['parts'] = l$parts.map((e) => e.toJson()).toList();
    final l$nonConformingParts = nonConformingParts;
    _resultData['nonConformingParts'] = l$nonConformingParts
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vinUnreadable = vinUnreadable;
    final l$hasBattery = hasBattery;
    final l$parts = parts;
    final l$nonConformingParts = nonConformingParts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$vinUnreadable,
      l$hasBattery,
      Object.hashAll(l$parts.map((v) => v)),
      Object.hashAll(l$nonConformingParts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$vinUnreadable = vinUnreadable;
    final lOther$vinUnreadable = other.vinUnreadable;
    if (l$vinUnreadable != lOther$vinUnreadable) {
      return false;
    }
    final l$hasBattery = hasBattery;
    final lOther$hasBattery = other.hasBattery;
    if (l$hasBattery != lOther$hasBattery) {
      return false;
    }
    final l$parts = parts;
    final lOther$parts = other.parts;
    if (l$parts.length != lOther$parts.length) {
      return false;
    }
    for (int i = 0; i < l$parts.length; i++) {
      final l$parts$entry = l$parts[i];
      final lOther$parts$entry = lOther$parts[i];
      if (l$parts$entry != lOther$parts$entry) {
        return false;
      }
    }
    final l$nonConformingParts = nonConformingParts;
    final lOther$nonConformingParts = other.nonConformingParts;
    if (l$nonConformingParts.length != lOther$nonConformingParts.length) {
      return false;
    }
    for (int i = 0; i < l$nonConformingParts.length; i++) {
      final l$nonConformingParts$entry = l$nonConformingParts[i];
      final lOther$nonConformingParts$entry = lOther$nonConformingParts[i];
      if (l$nonConformingParts$entry != lOther$nonConformingParts$entry) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration
    on Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration;

  TRes call({
    bool? vinUnreadable,
    bool? hasBattery,
    List<
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts
    >?
    parts,
    List<Fragment$NonConformingPartFields>? nonConformingParts,
    String? $__typename,
  });
  TRes parts(
    Iterable<
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts
    >
    Function(
      Iterable<
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts<
          Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts
        >
      >,
    )
    _fn,
  );
  TRes nonConformingParts(
    Iterable<Fragment$NonConformingPartFields> Function(
      Iterable<
        CopyWith$Fragment$NonConformingPartFields<
          Fragment$NonConformingPartFields
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vinUnreadable = _undefined,
    Object? hasBattery = _undefined,
    Object? parts = _undefined,
    Object? nonConformingParts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration(
      vinUnreadable: vinUnreadable == _undefined || vinUnreadable == null
          ? _instance.vinUnreadable
          : (vinUnreadable as bool),
      hasBattery: hasBattery == _undefined || hasBattery == null
          ? _instance.hasBattery
          : (hasBattery as bool),
      parts: parts == _undefined || parts == null
          ? _instance.parts
          : (parts
                as List<
                  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts
                >),
      nonConformingParts:
          nonConformingParts == _undefined || nonConformingParts == null
          ? _instance.nonConformingParts
          : (nonConformingParts as List<Fragment$NonConformingPartFields>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes parts(
    Iterable<
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts
    >
    Function(
      Iterable<
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts<
          Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts
        >
      >,
    )
    _fn,
  ) => call(
    parts: _fn(
      _instance.parts.map(
        (e) =>
            CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes nonConformingParts(
    Iterable<Fragment$NonConformingPartFields> Function(
      Iterable<
        CopyWith$Fragment$NonConformingPartFields<
          Fragment$NonConformingPartFields
        >
      >,
    )
    _fn,
  ) => call(
    nonConformingParts: _fn(
      _instance.nonConformingParts.map(
        (e) => CopyWith$Fragment$NonConformingPartFields(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration(
    this._res,
  );

  TRes _res;

  call({
    bool? vinUnreadable,
    bool? hasBattery,
    List<
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts
    >?
    parts,
    List<Fragment$NonConformingPartFields>? nonConformingParts,
    String? $__typename,
  }) => _res;

  parts(_fn) => _res;

  nonConformingParts(_fn) => _res;
}

class Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts {
  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts({
    required this.$__typename,
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "VehiclePartConfig":
        return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig.fromJson(
          json,
        );

      case "CatalyticConverterConfig":
        return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts(
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
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts ||
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts
    on
        Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig,
    )
    vehiclePartConfig,
    required _T Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig,
    )
    catalyticConverterConfig,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "VehiclePartConfig":
        return vehiclePartConfig(
          this
              as Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig,
        );

      case "CatalyticConverterConfig":
        return catalyticConverterConfig(
          this
              as Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig,
    )?
    vehiclePartConfig,
    _T Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig,
    )?
    catalyticConverterConfig,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "VehiclePartConfig":
        if (vehiclePartConfig != null) {
          return vehiclePartConfig(
            this
                as Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig,
          );
        } else {
          return orElse();
        }

      case "CatalyticConverterConfig":
        if (catalyticConverterConfig != null) {
          return catalyticConverterConfig(
            this
                as Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig
    implements
        Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts {
  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig({
    required this.partKey,
    required this.partInfo,
    required this.partPhotos,
    this.$__typename = 'VehiclePartConfig',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$partKey = json['partKey'];
    final l$partInfo = json['partInfo'];
    final l$partPhotos = json['partPhotos'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig(
      partKey: (l$partKey as String),
      partInfo:
          Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo.fromJson(
            (l$partInfo as Map<String, dynamic>),
          ),
      partPhotos: (l$partPhotos as List<dynamic>)
          .map(
            (e) =>
                Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String partKey;

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo
  partInfo;

  final List<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos
  >
  partPhotos;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$partKey = partKey;
    _resultData['partKey'] = l$partKey;
    final l$partInfo = partInfo;
    _resultData['partInfo'] = l$partInfo.toJson();
    final l$partPhotos = partPhotos;
    _resultData['partPhotos'] = l$partPhotos.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$partKey = partKey;
    final l$partInfo = partInfo;
    final l$partPhotos = partPhotos;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$partKey,
      l$partInfo,
      Object.hashAll(l$partPhotos.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partKey = partKey;
    final lOther$partKey = other.partKey;
    if (l$partKey != lOther$partKey) {
      return false;
    }
    final l$partInfo = partInfo;
    final lOther$partInfo = other.partInfo;
    if (l$partInfo != lOther$partInfo) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig
    on
        Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig;

  TRes call({
    String? partKey,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo?
    partInfo,
    List<
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos
    >?
    partPhotos,
    String? $__typename,
  });
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo<
    TRes
  >
  get partInfo;
  TRes partPhotos(
    Iterable<
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos
    >
    Function(
      Iterable<
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos<
          Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partKey = _undefined,
    Object? partInfo = _undefined,
    Object? partPhotos = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig(
      partKey: partKey == _undefined || partKey == null
          ? _instance.partKey
          : (partKey as String),
      partInfo: partInfo == _undefined || partInfo == null
          ? _instance.partInfo
          : (partInfo
                as Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo),
      partPhotos: partPhotos == _undefined || partPhotos == null
          ? _instance.partPhotos
          : (partPhotos
                as List<
                  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo<
    TRes
  >
  get partInfo {
    final local$partInfo = _instance.partInfo;
    return CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo(
      local$partInfo,
      (e) => call(partInfo: e),
    );
  }

  TRes partPhotos(
    Iterable<
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos
    >
    Function(
      Iterable<
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos<
          Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos
        >
      >,
    )
    _fn,
  ) => call(
    partPhotos: _fn(
      _instance.partPhotos.map(
        (e) =>
            CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig(
    this._res,
  );

  TRes _res;

  call({
    String? partKey,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo?
    partInfo,
    List<
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos
    >?
    partPhotos,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo<
    TRes
  >
  get partInfo =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo.stub(
        _res,
      );

  partPhotos(_fn) => _res;
}

class Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo {
  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo({
    required this.partType,
    required this.partLocation,
    this.$__typename = 'PartInfo',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$partType = json['partType'];
    final l$partLocation = json['partLocation'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo(
      partType: fromJson$Enum$PartType((l$partType as String)),
      partLocation: fromJson$Enum$PartLocation((l$partLocation as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$PartType partType;

  final Enum$PartLocation partLocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$partType = partType;
    _resultData['partType'] = toJson$Enum$PartType(l$partType);
    final l$partLocation = partLocation;
    _resultData['partLocation'] = toJson$Enum$PartLocation(l$partLocation);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$partType = partType;
    final l$partLocation = partLocation;
    final l$$__typename = $__typename;
    return Object.hashAll([l$partType, l$partLocation, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partType = partType;
    final lOther$partType = other.partType;
    if (l$partType != lOther$partType) {
      return false;
    }
    final l$partLocation = partLocation;
    final lOther$partLocation = other.partLocation;
    if (l$partLocation != lOther$partLocation) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo
    on
        Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo;

  TRes call({
    Enum$PartType? partType,
    Enum$PartLocation? partLocation,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partType = _undefined,
    Object? partLocation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo(
      partType: partType == _undefined || partType == null
          ? _instance.partType
          : (partType as Enum$PartType),
      partLocation: partLocation == _undefined || partLocation == null
          ? _instance.partLocation
          : (partLocation as Enum$PartLocation),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partInfo(
    this._res,
  );

  TRes _res;

  call({
    Enum$PartType? partType,
    Enum$PartLocation? partLocation,
    String? $__typename,
  }) => _res;
}

class Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos {
  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos
    on
        Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$VehiclePartConfig$partPhotos(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig
    implements
        Fragment$CatalyticConverterFields,
        Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts {
  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig({
    required this.partKey,
    required this.partInfo,
    required this.partPhotos,
    required this.techemetCatId,
    this.techemetCat,
    required this.classification,
    this.$__typename = 'CatalyticConverterConfig',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$partKey = json['partKey'];
    final l$partInfo = json['partInfo'];
    final l$partPhotos = json['partPhotos'];
    final l$techemetCatId = json['techemetCatId'];
    final l$techemetCat = json['techemetCat'];
    final l$classification = json['classification'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig(
      partKey: (l$partKey as String),
      partInfo:
          Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo.fromJson(
            (l$partInfo as Map<String, dynamic>),
          ),
      partPhotos: (l$partPhotos as List<dynamic>)
          .map(
            (e) =>
                Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      techemetCatId: (l$techemetCatId as String),
      techemetCat: l$techemetCat == null
          ? null
          : Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat.fromJson(
              (l$techemetCat as Map<String, dynamic>),
            ),
      classification: fromJson$Enum$CatalyticConverterClassification(
        (l$classification as String),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String partKey;

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo
  partInfo;

  final List<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos
  >
  partPhotos;

  final String techemetCatId;

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat?
  techemetCat;

  final Enum$CatalyticConverterClassification classification;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$partKey = partKey;
    _resultData['partKey'] = l$partKey;
    final l$partInfo = partInfo;
    _resultData['partInfo'] = l$partInfo.toJson();
    final l$partPhotos = partPhotos;
    _resultData['partPhotos'] = l$partPhotos.map((e) => e.toJson()).toList();
    final l$techemetCatId = techemetCatId;
    _resultData['techemetCatId'] = l$techemetCatId;
    final l$techemetCat = techemetCat;
    _resultData['techemetCat'] = l$techemetCat?.toJson();
    final l$classification = classification;
    _resultData['classification'] =
        toJson$Enum$CatalyticConverterClassification(l$classification);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$partKey = partKey;
    final l$partInfo = partInfo;
    final l$partPhotos = partPhotos;
    final l$techemetCatId = techemetCatId;
    final l$techemetCat = techemetCat;
    final l$classification = classification;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$partKey,
      l$partInfo,
      Object.hashAll(l$partPhotos.map((v) => v)),
      l$techemetCatId,
      l$techemetCat,
      l$classification,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partKey = partKey;
    final lOther$partKey = other.partKey;
    if (l$partKey != lOther$partKey) {
      return false;
    }
    final l$partInfo = partInfo;
    final lOther$partInfo = other.partInfo;
    if (l$partInfo != lOther$partInfo) {
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
    if (l$techemetCatId != lOther$techemetCatId) {
      return false;
    }
    final l$techemetCat = techemetCat;
    final lOther$techemetCat = other.techemetCat;
    if (l$techemetCat != lOther$techemetCat) {
      return false;
    }
    final l$classification = classification;
    final lOther$classification = other.classification;
    if (l$classification != lOther$classification) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig
    on
        Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig;

  TRes call({
    String? partKey,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo?
    partInfo,
    List<
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos
    >?
    partPhotos,
    String? techemetCatId,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat?
    techemetCat,
    Enum$CatalyticConverterClassification? classification,
    String? $__typename,
  });
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo<
    TRes
  >
  get partInfo;
  TRes partPhotos(
    Iterable<
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos
    >
    Function(
      Iterable<
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos<
          Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat<
    TRes
  >
  get techemetCat;
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partKey = _undefined,
    Object? partInfo = _undefined,
    Object? partPhotos = _undefined,
    Object? techemetCatId = _undefined,
    Object? techemetCat = _undefined,
    Object? classification = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig(
      partKey: partKey == _undefined || partKey == null
          ? _instance.partKey
          : (partKey as String),
      partInfo: partInfo == _undefined || partInfo == null
          ? _instance.partInfo
          : (partInfo
                as Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo),
      partPhotos: partPhotos == _undefined || partPhotos == null
          ? _instance.partPhotos
          : (partPhotos
                as List<
                  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos
                >),
      techemetCatId: techemetCatId == _undefined || techemetCatId == null
          ? _instance.techemetCatId
          : (techemetCatId as String),
      techemetCat: techemetCat == _undefined
          ? _instance.techemetCat
          : (techemetCat
                as Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat?),
      classification: classification == _undefined || classification == null
          ? _instance.classification
          : (classification as Enum$CatalyticConverterClassification),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo<
    TRes
  >
  get partInfo {
    final local$partInfo = _instance.partInfo;
    return CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo(
      local$partInfo,
      (e) => call(partInfo: e),
    );
  }

  TRes partPhotos(
    Iterable<
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos
    >
    Function(
      Iterable<
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos<
          Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos
        >
      >,
    )
    _fn,
  ) => call(
    partPhotos: _fn(
      _instance.partPhotos.map(
        (e) =>
            CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat<
    TRes
  >
  get techemetCat {
    final local$techemetCat = _instance.techemetCat;
    return local$techemetCat == null
        ? CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat(
            local$techemetCat,
            (e) => call(techemetCat: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig(
    this._res,
  );

  TRes _res;

  call({
    String? partKey,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo?
    partInfo,
    List<
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos
    >?
    partPhotos,
    String? techemetCatId,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat?
    techemetCat,
    Enum$CatalyticConverterClassification? classification,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo<
    TRes
  >
  get partInfo =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo.stub(
        _res,
      );

  partPhotos(_fn) => _res;

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat<
    TRes
  >
  get techemetCat =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat.stub(
        _res,
      );
}

class Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo
    implements Fragment$CatalyticConverterFields$partInfo {
  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo({
    required this.partType,
    required this.partLocation,
    this.$__typename = 'PartInfo',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$partType = json['partType'];
    final l$partLocation = json['partLocation'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo(
      partType: fromJson$Enum$PartType((l$partType as String)),
      partLocation: fromJson$Enum$PartLocation((l$partLocation as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$PartType partType;

  final Enum$PartLocation partLocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$partType = partType;
    _resultData['partType'] = toJson$Enum$PartType(l$partType);
    final l$partLocation = partLocation;
    _resultData['partLocation'] = toJson$Enum$PartLocation(l$partLocation);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$partType = partType;
    final l$partLocation = partLocation;
    final l$$__typename = $__typename;
    return Object.hashAll([l$partType, l$partLocation, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partType = partType;
    final lOther$partType = other.partType;
    if (l$partType != lOther$partType) {
      return false;
    }
    final l$partLocation = partLocation;
    final lOther$partLocation = other.partLocation;
    if (l$partLocation != lOther$partLocation) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo
    on
        Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo;

  TRes call({
    Enum$PartType? partType,
    Enum$PartLocation? partLocation,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partType = _undefined,
    Object? partLocation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo(
      partType: partType == _undefined || partType == null
          ? _instance.partType
          : (partType as Enum$PartType),
      partLocation: partLocation == _undefined || partLocation == null
          ? _instance.partLocation
          : (partLocation as Enum$PartLocation),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partInfo(
    this._res,
  );

  TRes _res;

  call({
    Enum$PartType? partType,
    Enum$PartLocation? partLocation,
    String? $__typename,
  }) => _res;
}

class Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos
    implements Fragment$CatalyticConverterFields$partPhotos {
  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos
    on
        Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$partPhotos(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat
    implements Fragment$CatalyticConverterFields$techemetCat {
  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat({
    required this.sealNo,
    required this.serial,
    this.$__typename = 'TechemetCat',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sealNo = json['sealNo'];
    final l$serial = json['serial'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat(
      sealNo: (l$sealNo as String),
      serial: (l$serial as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String sealNo;

  final String serial;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sealNo = sealNo;
    _resultData['sealNo'] = l$sealNo;
    final l$serial = serial;
    _resultData['serial'] = l$serial;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sealNo = sealNo;
    final l$serial = serial;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sealNo, l$serial, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sealNo = sealNo;
    final lOther$sealNo = other.sealNo;
    if (l$sealNo != lOther$sealNo) {
      return false;
    }
    final l$serial = serial;
    final lOther$serial = other.serial;
    if (l$serial != lOther$serial) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat
    on
        Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat;

  TRes call({String? sealNo, String? serial, String? $__typename});
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sealNo = _undefined,
    Object? serial = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat(
      sealNo: sealNo == _undefined || sealNo == null
          ? _instance.sealNo
          : (sealNo as String),
      serial: serial == _undefined || serial == null
          ? _instance.serial
          : (serial as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$configuration$parts$$CatalyticConverterConfig$techemetCat(
    this._res,
  );

  TRes _res;

  call({String? sealNo, String? serial, String? $__typename}) => _res;
}

class Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents {
  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents({
    this.frontPhoto,
    this.rearPhoto,
    this.vinPhoto,
    this.v5LogBook,
    this.$__typename = 'VehicleDocuments',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$frontPhoto = json['frontPhoto'];
    final l$rearPhoto = json['rearPhoto'];
    final l$vinPhoto = json['vinPhoto'];
    final l$v5LogBook = json['v5LogBook'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents(
      frontPhoto: l$frontPhoto == null
          ? null
          : Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto.fromJson(
              (l$frontPhoto as Map<String, dynamic>),
            ),
      rearPhoto: l$rearPhoto == null
          ? null
          : Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto.fromJson(
              (l$rearPhoto as Map<String, dynamic>),
            ),
      vinPhoto: l$vinPhoto == null
          ? null
          : Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto.fromJson(
              (l$vinPhoto as Map<String, dynamic>),
            ),
      v5LogBook: l$v5LogBook == null
          ? null
          : Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook.fromJson(
              (l$v5LogBook as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto?
  frontPhoto;

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto?
  rearPhoto;

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto?
  vinPhoto;

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook?
  v5LogBook;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$frontPhoto = frontPhoto;
    _resultData['frontPhoto'] = l$frontPhoto?.toJson();
    final l$rearPhoto = rearPhoto;
    _resultData['rearPhoto'] = l$rearPhoto?.toJson();
    final l$vinPhoto = vinPhoto;
    _resultData['vinPhoto'] = l$vinPhoto?.toJson();
    final l$v5LogBook = v5LogBook;
    _resultData['v5LogBook'] = l$v5LogBook?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$frontPhoto = frontPhoto;
    final l$rearPhoto = rearPhoto;
    final l$vinPhoto = vinPhoto;
    final l$v5LogBook = v5LogBook;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$frontPhoto,
      l$rearPhoto,
      l$vinPhoto,
      l$v5LogBook,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$frontPhoto = frontPhoto;
    final lOther$frontPhoto = other.frontPhoto;
    if (l$frontPhoto != lOther$frontPhoto) {
      return false;
    }
    final l$rearPhoto = rearPhoto;
    final lOther$rearPhoto = other.rearPhoto;
    if (l$rearPhoto != lOther$rearPhoto) {
      return false;
    }
    final l$vinPhoto = vinPhoto;
    final lOther$vinPhoto = other.vinPhoto;
    if (l$vinPhoto != lOther$vinPhoto) {
      return false;
    }
    final l$v5LogBook = v5LogBook;
    final lOther$v5LogBook = other.v5LogBook;
    if (l$v5LogBook != lOther$v5LogBook) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents
    on Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents;

  TRes call({
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto?
    frontPhoto,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto?
    rearPhoto,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto?
    vinPhoto,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook?
    v5LogBook,
    String? $__typename,
  });
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto<
    TRes
  >
  get frontPhoto;
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto<
    TRes
  >
  get rearPhoto;
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto<
    TRes
  >
  get vinPhoto;
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook<
    TRes
  >
  get v5LogBook;
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? frontPhoto = _undefined,
    Object? rearPhoto = _undefined,
    Object? vinPhoto = _undefined,
    Object? v5LogBook = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents(
      frontPhoto: frontPhoto == _undefined
          ? _instance.frontPhoto
          : (frontPhoto
                as Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto?),
      rearPhoto: rearPhoto == _undefined
          ? _instance.rearPhoto
          : (rearPhoto
                as Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto?),
      vinPhoto: vinPhoto == _undefined
          ? _instance.vinPhoto
          : (vinPhoto
                as Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto?),
      v5LogBook: v5LogBook == _undefined
          ? _instance.v5LogBook
          : (v5LogBook
                as Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto<
    TRes
  >
  get frontPhoto {
    final local$frontPhoto = _instance.frontPhoto;
    return local$frontPhoto == null
        ? CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto(
            local$frontPhoto,
            (e) => call(frontPhoto: e),
          );
  }

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto<
    TRes
  >
  get rearPhoto {
    final local$rearPhoto = _instance.rearPhoto;
    return local$rearPhoto == null
        ? CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto(
            local$rearPhoto,
            (e) => call(rearPhoto: e),
          );
  }

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto<
    TRes
  >
  get vinPhoto {
    final local$vinPhoto = _instance.vinPhoto;
    return local$vinPhoto == null
        ? CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto(
            local$vinPhoto,
            (e) => call(vinPhoto: e),
          );
  }

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook<
    TRes
  >
  get v5LogBook {
    final local$v5LogBook = _instance.v5LogBook;
    return local$v5LogBook == null
        ? CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook(
            local$v5LogBook,
            (e) => call(v5LogBook: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents(
    this._res,
  );

  TRes _res;

  call({
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto?
    frontPhoto,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto?
    rearPhoto,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto?
    vinPhoto,
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook?
    v5LogBook,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto<
    TRes
  >
  get frontPhoto =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto.stub(
        _res,
      );

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto<
    TRes
  >
  get rearPhoto =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto.stub(
        _res,
      );

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto<
    TRes
  >
  get vinPhoto =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto.stub(
        _res,
      );

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook<
    TRes
  >
  get v5LogBook =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook.stub(
        _res,
      );
}

class Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto {
  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto
    on
        Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$frontPhoto(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto {
  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto
    on
        Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$rearPhoto(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto {
  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto
    on
        Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$vinPhoto(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook {
  Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook
    on
        Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook<
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehicleInfo$documents$v5LogBook(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail {
  Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail({
    required this.price,
    required this.totalCatPrice,
    required this.status,
    required this.partPrices,
    this.$__typename = 'VehiclePriceDetail',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$price = json['price'];
    final l$totalCatPrice = json['totalCatPrice'];
    final l$status = json['status'];
    final l$partPrices = json['partPrices'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail(
      price: (l$price as num).toDouble(),
      totalCatPrice: (l$totalCatPrice as num).toDouble(),
      status: fromJson$Enum$QuoteStatus((l$status as String)),
      partPrices: (l$partPrices as List<dynamic>)
          .map(
            (e) =>
                Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final double price;

  final double totalCatPrice;

  final Enum$QuoteStatus status;

  final List<
    Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices
  >
  partPrices;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$price = price;
    _resultData['price'] = l$price;
    final l$totalCatPrice = totalCatPrice;
    _resultData['totalCatPrice'] = l$totalCatPrice;
    final l$status = status;
    _resultData['status'] = toJson$Enum$QuoteStatus(l$status);
    final l$partPrices = partPrices;
    _resultData['partPrices'] = l$partPrices.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$price = price;
    final l$totalCatPrice = totalCatPrice;
    final l$status = status;
    final l$partPrices = partPrices;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$price,
      l$totalCatPrice,
      l$status,
      Object.hashAll(l$partPrices.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$totalCatPrice = totalCatPrice;
    final lOther$totalCatPrice = other.totalCatPrice;
    if (l$totalCatPrice != lOther$totalCatPrice) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$partPrices = partPrices;
    final lOther$partPrices = other.partPrices;
    if (l$partPrices.length != lOther$partPrices.length) {
      return false;
    }
    for (int i = 0; i < l$partPrices.length; i++) {
      final l$partPrices$entry = l$partPrices[i];
      final lOther$partPrices$entry = lOther$partPrices[i];
      if (l$partPrices$entry != lOther$partPrices$entry) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail
    on Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail<
    Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail(
    Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail;

  TRes call({
    double? price,
    double? totalCatPrice,
    Enum$QuoteStatus? status,
    List<
      Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices
    >?
    partPrices,
    String? $__typename,
  });
  TRes partPrices(
    Iterable<
      Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices
    >
    Function(
      Iterable<
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices<
          Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? price = _undefined,
    Object? totalCatPrice = _undefined,
    Object? status = _undefined,
    Object? partPrices = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail(
      price: price == _undefined || price == null
          ? _instance.price
          : (price as double),
      totalCatPrice: totalCatPrice == _undefined || totalCatPrice == null
          ? _instance.totalCatPrice
          : (totalCatPrice as double),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$QuoteStatus),
      partPrices: partPrices == _undefined || partPrices == null
          ? _instance.partPrices
          : (partPrices
                as List<
                  Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes partPrices(
    Iterable<
      Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices
    >
    Function(
      Iterable<
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices<
          Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices
        >
      >,
    )
    _fn,
  ) => call(
    partPrices: _fn(
      _instance.partPrices.map(
        (e) =>
            CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail(
    this._res,
  );

  TRes _res;

  call({
    double? price,
    double? totalCatPrice,
    Enum$QuoteStatus? status,
    List<
      Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices
    >?
    partPrices,
    String? $__typename,
  }) => _res;

  partPrices(_fn) => _res;
}

class Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices {
  Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices({
    required this.price,
    required this.partInfo,
    required this.vehiclePartKeys,
    this.$__typename = 'PartPrice',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$price = json['price'];
    final l$partInfo = json['partInfo'];
    final l$vehiclePartKeys = json['vehiclePartKeys'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices(
      price: (l$price as num).toDouble(),
      partInfo:
          Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo.fromJson(
            (l$partInfo as Map<String, dynamic>),
          ),
      vehiclePartKeys: (l$vehiclePartKeys as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final double price;

  final Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo
  partInfo;

  final List<String> vehiclePartKeys;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$price = price;
    _resultData['price'] = l$price;
    final l$partInfo = partInfo;
    _resultData['partInfo'] = l$partInfo.toJson();
    final l$vehiclePartKeys = vehiclePartKeys;
    _resultData['vehiclePartKeys'] = l$vehiclePartKeys.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$price = price;
    final l$partInfo = partInfo;
    final l$vehiclePartKeys = vehiclePartKeys;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$price,
      l$partInfo,
      Object.hashAll(l$vehiclePartKeys.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$partInfo = partInfo;
    final lOther$partInfo = other.partInfo;
    if (l$partInfo != lOther$partInfo) {
      return false;
    }
    final l$vehiclePartKeys = vehiclePartKeys;
    final lOther$vehiclePartKeys = other.vehiclePartKeys;
    if (l$vehiclePartKeys.length != lOther$vehiclePartKeys.length) {
      return false;
    }
    for (int i = 0; i < l$vehiclePartKeys.length; i++) {
      final l$vehiclePartKeys$entry = l$vehiclePartKeys[i];
      final lOther$vehiclePartKeys$entry = lOther$vehiclePartKeys[i];
      if (l$vehiclePartKeys$entry != lOther$vehiclePartKeys$entry) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices
    on
        Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices<
    Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices(
    Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices;

  TRes call({
    double? price,
    Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo?
    partInfo,
    List<String>? vehiclePartKeys,
    String? $__typename,
  });
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo<
    TRes
  >
  get partInfo;
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? price = _undefined,
    Object? partInfo = _undefined,
    Object? vehiclePartKeys = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices(
      price: price == _undefined || price == null
          ? _instance.price
          : (price as double),
      partInfo: partInfo == _undefined || partInfo == null
          ? _instance.partInfo
          : (partInfo
                as Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo),
      vehiclePartKeys: vehiclePartKeys == _undefined || vehiclePartKeys == null
          ? _instance.vehiclePartKeys
          : (vehiclePartKeys as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo<
    TRes
  >
  get partInfo {
    final local$partInfo = _instance.partInfo;
    return CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo(
      local$partInfo,
      (e) => call(partInfo: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices(
    this._res,
  );

  TRes _res;

  call({
    double? price,
    Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo?
    partInfo,
    List<String>? vehiclePartKeys,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo<
    TRes
  >
  get partInfo =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo.stub(
        _res,
      );
}

class Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo {
  Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo({
    required this.partType,
    required this.partLocation,
    this.$__typename = 'PartInfo',
  });

  factory Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$partType = json['partType'];
    final l$partLocation = json['partLocation'];
    final l$$__typename = json['__typename'];
    return Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo(
      partType: fromJson$Enum$PartType((l$partType as String)),
      partLocation: fromJson$Enum$PartLocation((l$partLocation as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$PartType partType;

  final Enum$PartLocation partLocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$partType = partType;
    _resultData['partType'] = toJson$Enum$PartType(l$partType);
    final l$partLocation = partLocation;
    _resultData['partLocation'] = toJson$Enum$PartLocation(l$partLocation);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$partType = partType;
    final l$partLocation = partLocation;
    final l$$__typename = $__typename;
    return Object.hashAll([l$partType, l$partLocation, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partType = partType;
    final lOther$partType = other.partType;
    if (l$partType != lOther$partType) {
      return false;
    }
    final l$partLocation = partLocation;
    final lOther$partLocation = other.partLocation;
    if (l$partLocation != lOther$partLocation) {
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

extension UtilityExtension$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo
    on
        Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo {
  CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo<
    Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo
  >
  get copyWith =>
      CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo<
  TRes
> {
  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo(
    Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo
    instance,
    TRes Function(
      Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo;

  factory CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo;

  TRes call({
    Enum$PartType? partType,
    Enum$PartLocation? partLocation,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo<
          TRes
        > {
  _CopyWithImpl$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo(
    this._instance,
    this._then,
  );

  final Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo
  _instance;

  final TRes Function(
    Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partType = _undefined,
    Object? partLocation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo(
      partType: partType == _undefined || partType == null
          ? _instance.partType
          : (partType as Enum$PartType),
      partLocation: partLocation == _undefined || partLocation == null
          ? _instance.partLocation
          : (partLocation as Enum$PartLocation),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo<
  TRes
>
    implements
        CopyWith$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehicleForInspection$vehicleForInspection$vehiclePriceDetail$partPrices$partInfo(
    this._res,
  );

  TRes _res;

  call({
    Enum$PartType? partType,
    Enum$PartLocation? partLocation,
    String? $__typename,
  }) => _res;
}
