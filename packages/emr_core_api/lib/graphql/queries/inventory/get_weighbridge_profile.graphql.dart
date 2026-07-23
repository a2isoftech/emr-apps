import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetWeighbridgeProfile {
  factory Variables$Query$GetWeighbridgeProfile({required String id}) =>
      Variables$Query$GetWeighbridgeProfile._({r'id': id});

  Variables$Query$GetWeighbridgeProfile._(this._$data);

  factory Variables$Query$GetWeighbridgeProfile.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetWeighbridgeProfile._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetWeighbridgeProfile<
    Variables$Query$GetWeighbridgeProfile
  >
  get copyWith =>
      CopyWith$Variables$Query$GetWeighbridgeProfile(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetWeighbridgeProfile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$GetWeighbridgeProfile<TRes> {
  factory CopyWith$Variables$Query$GetWeighbridgeProfile(
    Variables$Query$GetWeighbridgeProfile instance,
    TRes Function(Variables$Query$GetWeighbridgeProfile) then,
  ) = _CopyWithImpl$Variables$Query$GetWeighbridgeProfile;

  factory CopyWith$Variables$Query$GetWeighbridgeProfile.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetWeighbridgeProfile;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetWeighbridgeProfile<TRes>
    implements CopyWith$Variables$Query$GetWeighbridgeProfile<TRes> {
  _CopyWithImpl$Variables$Query$GetWeighbridgeProfile(
    this._instance,
    this._then,
  );

  final Variables$Query$GetWeighbridgeProfile _instance;

  final TRes Function(Variables$Query$GetWeighbridgeProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$GetWeighbridgeProfile._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetWeighbridgeProfile<TRes>
    implements CopyWith$Variables$Query$GetWeighbridgeProfile<TRes> {
  _CopyWithStubImpl$Variables$Query$GetWeighbridgeProfile(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetWeighbridgeProfile {
  Query$GetWeighbridgeProfile({
    required this.weighbridgeProfile,
    this.$__typename = 'Query',
  });

  factory Query$GetWeighbridgeProfile.fromJson(Map<String, dynamic> json) {
    final l$weighbridgeProfile = json['weighbridgeProfile'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeProfile(
      weighbridgeProfile:
          Query$GetWeighbridgeProfile$weighbridgeProfile.fromJson(
            (l$weighbridgeProfile as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetWeighbridgeProfile$weighbridgeProfile weighbridgeProfile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$weighbridgeProfile = weighbridgeProfile;
    _resultData['weighbridgeProfile'] = l$weighbridgeProfile.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$weighbridgeProfile = weighbridgeProfile;
    final l$$__typename = $__typename;
    return Object.hashAll([l$weighbridgeProfile, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetWeighbridgeProfile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$weighbridgeProfile = weighbridgeProfile;
    final lOther$weighbridgeProfile = other.weighbridgeProfile;
    if (l$weighbridgeProfile != lOther$weighbridgeProfile) {
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

extension UtilityExtension$Query$GetWeighbridgeProfile
    on Query$GetWeighbridgeProfile {
  CopyWith$Query$GetWeighbridgeProfile<Query$GetWeighbridgeProfile>
  get copyWith => CopyWith$Query$GetWeighbridgeProfile(this, (i) => i);
}

abstract class CopyWith$Query$GetWeighbridgeProfile<TRes> {
  factory CopyWith$Query$GetWeighbridgeProfile(
    Query$GetWeighbridgeProfile instance,
    TRes Function(Query$GetWeighbridgeProfile) then,
  ) = _CopyWithImpl$Query$GetWeighbridgeProfile;

  factory CopyWith$Query$GetWeighbridgeProfile.stub(TRes res) =
      _CopyWithStubImpl$Query$GetWeighbridgeProfile;

  TRes call({
    Query$GetWeighbridgeProfile$weighbridgeProfile? weighbridgeProfile,
    String? $__typename,
  });
  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile<TRes>
  get weighbridgeProfile;
}

class _CopyWithImpl$Query$GetWeighbridgeProfile<TRes>
    implements CopyWith$Query$GetWeighbridgeProfile<TRes> {
  _CopyWithImpl$Query$GetWeighbridgeProfile(this._instance, this._then);

  final Query$GetWeighbridgeProfile _instance;

  final TRes Function(Query$GetWeighbridgeProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? weighbridgeProfile = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWeighbridgeProfile(
      weighbridgeProfile:
          weighbridgeProfile == _undefined || weighbridgeProfile == null
          ? _instance.weighbridgeProfile
          : (weighbridgeProfile
                as Query$GetWeighbridgeProfile$weighbridgeProfile),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile<TRes>
  get weighbridgeProfile {
    final local$weighbridgeProfile = _instance.weighbridgeProfile;
    return CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile(
      local$weighbridgeProfile,
      (e) => call(weighbridgeProfile: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetWeighbridgeProfile<TRes>
    implements CopyWith$Query$GetWeighbridgeProfile<TRes> {
  _CopyWithStubImpl$Query$GetWeighbridgeProfile(this._res);

  TRes _res;

  call({
    Query$GetWeighbridgeProfile$weighbridgeProfile? weighbridgeProfile,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile<TRes>
  get weighbridgeProfile =>
      CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile.stub(_res);
}

const documentNodeQueryGetWeighbridgeProfile = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetWeighbridgeProfile'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'weighbridgeProfile'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: VariableNode(name: NameNode(value: 'id')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'changeVector'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'entity'),
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
                        name: NameNode(value: 'yardId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'yardCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'enableCheckWeight'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'publishTicketToTrade'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'allowRollingWeights'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'rounding'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'scales'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'url'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'assetCode'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'scaleNumber'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'cameras'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'name'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'imageUrl'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'videoUrl'),
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
                        name: NameNode(value: 'knownTares'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'value'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
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
                                    name: NameNode(value: 'isRate'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'id'),
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
                              name: NameNode(value: 'serialNo'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'comments'),
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
                        name: NameNode(value: 'ticketPrints'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'headerText'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'numberOfCopies'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'printer'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'name'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
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
                              name: NameNode(value: 'printForTicketDirections'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'ticketPrintType'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'templateName'),
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
                        name: NameNode(value: 'active'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'yardInformation'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'wmlExemptionNo'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'wasteCarrierRegNo'),
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
                        name: NameNode(value: 'currency'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'dirtDeductionUom'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'territoryCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'enableManualWeight'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'weighbridgeUom'),
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

class Query$GetWeighbridgeProfile$weighbridgeProfile {
  Query$GetWeighbridgeProfile$weighbridgeProfile({
    required this.changeVector,
    required this.entity,
    this.$__typename = 'DocumentOfWeighbridgeProfile',
  });

  factory Query$GetWeighbridgeProfile$weighbridgeProfile.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$changeVector = json['changeVector'];
    final l$entity = json['entity'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeProfile$weighbridgeProfile(
      changeVector: (l$changeVector as String),
      entity: Query$GetWeighbridgeProfile$weighbridgeProfile$entity.fromJson(
        (l$entity as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String changeVector;

  final Query$GetWeighbridgeProfile$weighbridgeProfile$entity entity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$changeVector = changeVector;
    _resultData['changeVector'] = l$changeVector;
    final l$entity = entity;
    _resultData['entity'] = l$entity.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$changeVector = changeVector;
    final l$entity = entity;
    final l$$__typename = $__typename;
    return Object.hashAll([l$changeVector, l$entity, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetWeighbridgeProfile$weighbridgeProfile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$changeVector = changeVector;
    final lOther$changeVector = other.changeVector;
    if (l$changeVector != lOther$changeVector) {
      return false;
    }
    final l$entity = entity;
    final lOther$entity = other.entity;
    if (l$entity != lOther$entity) {
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

extension UtilityExtension$Query$GetWeighbridgeProfile$weighbridgeProfile
    on Query$GetWeighbridgeProfile$weighbridgeProfile {
  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile<
    Query$GetWeighbridgeProfile$weighbridgeProfile
  >
  get copyWith =>
      CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile(this, (i) => i);
}

abstract class CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile<TRes> {
  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile(
    Query$GetWeighbridgeProfile$weighbridgeProfile instance,
    TRes Function(Query$GetWeighbridgeProfile$weighbridgeProfile) then,
  ) = _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile;

  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile;

  TRes call({
    String? changeVector,
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity? entity,
    String? $__typename,
  });
  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity<TRes>
  get entity;
}

class _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile<TRes>
    implements CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile<TRes> {
  _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile(
    this._instance,
    this._then,
  );

  final Query$GetWeighbridgeProfile$weighbridgeProfile _instance;

  final TRes Function(Query$GetWeighbridgeProfile$weighbridgeProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? changeVector = _undefined,
    Object? entity = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWeighbridgeProfile$weighbridgeProfile(
      changeVector: changeVector == _undefined || changeVector == null
          ? _instance.changeVector
          : (changeVector as String),
      entity: entity == _undefined || entity == null
          ? _instance.entity
          : (entity as Query$GetWeighbridgeProfile$weighbridgeProfile$entity),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity<TRes>
  get entity {
    final local$entity = _instance.entity;
    return CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity(
      local$entity,
      (e) => call(entity: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile<TRes>
    implements CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile<TRes> {
  _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile(this._res);

  TRes _res;

  call({
    String? changeVector,
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity? entity,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity<TRes>
  get entity =>
      CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity.stub(_res);
}

class Query$GetWeighbridgeProfile$weighbridgeProfile$entity {
  Query$GetWeighbridgeProfile$weighbridgeProfile$entity({
    this.id,
    required this.yardId,
    required this.name,
    required this.yardCode,
    required this.enableCheckWeight,
    required this.publishTicketToTrade,
    required this.allowRollingWeights,
    required this.rounding,
    required this.scales,
    required this.knownTares,
    required this.ticketPrints,
    required this.active,
    required this.yardInformation,
    required this.currency,
    required this.dirtDeductionUom,
    required this.territoryCode,
    required this.enableManualWeight,
    required this.weighbridgeUom,
    this.$__typename = 'WeighbridgeProfile',
  });

  factory Query$GetWeighbridgeProfile$weighbridgeProfile$entity.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$yardId = json['yardId'];
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$enableCheckWeight = json['enableCheckWeight'];
    final l$publishTicketToTrade = json['publishTicketToTrade'];
    final l$allowRollingWeights = json['allowRollingWeights'];
    final l$rounding = json['rounding'];
    final l$scales = json['scales'];
    final l$knownTares = json['knownTares'];
    final l$ticketPrints = json['ticketPrints'];
    final l$active = json['active'];
    final l$yardInformation = json['yardInformation'];
    final l$currency = json['currency'];
    final l$dirtDeductionUom = json['dirtDeductionUom'];
    final l$territoryCode = json['territoryCode'];
    final l$enableManualWeight = json['enableManualWeight'];
    final l$weighbridgeUom = json['weighbridgeUom'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeProfile$weighbridgeProfile$entity(
      id: (l$id as String?),
      yardId: (l$yardId as String),
      name: (l$name as String),
      yardCode: (l$yardCode as String),
      enableCheckWeight: (l$enableCheckWeight as bool),
      publishTicketToTrade: (l$publishTicketToTrade as bool),
      allowRollingWeights: (l$allowRollingWeights as bool),
      rounding: (l$rounding as num).toDouble(),
      scales: (l$scales as List<dynamic>)
          .map(
            (e) =>
                Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      knownTares: (l$knownTares as List<dynamic>)
          .map(
            (e) =>
                Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      ticketPrints: (l$ticketPrints as List<dynamic>)
          .map(
            (e) =>
                Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      active: (l$active as bool),
      yardInformation:
          Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation.fromJson(
            (l$yardInformation as Map<String, dynamic>),
          ),
      currency: (l$currency as String),
      dirtDeductionUom: fromJson$Enum$Uom((l$dirtDeductionUom as String)),
      territoryCode: (l$territoryCode as String),
      enableManualWeight: (l$enableManualWeight as bool),
      weighbridgeUom: fromJson$Enum$Uom((l$weighbridgeUom as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String yardId;

  final String name;

  final String yardCode;

  final bool enableCheckWeight;

  final bool publishTicketToTrade;

  final bool allowRollingWeights;

  final double rounding;

  final List<Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales>
  scales;

  final List<Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares>
  knownTares;

  final List<Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints>
  ticketPrints;

  final bool active;

  final Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation
  yardInformation;

  final String currency;

  final Enum$Uom dirtDeductionUom;

  final String territoryCode;

  final bool enableManualWeight;

  final Enum$Uom weighbridgeUom;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$enableCheckWeight = enableCheckWeight;
    _resultData['enableCheckWeight'] = l$enableCheckWeight;
    final l$publishTicketToTrade = publishTicketToTrade;
    _resultData['publishTicketToTrade'] = l$publishTicketToTrade;
    final l$allowRollingWeights = allowRollingWeights;
    _resultData['allowRollingWeights'] = l$allowRollingWeights;
    final l$rounding = rounding;
    _resultData['rounding'] = l$rounding;
    final l$scales = scales;
    _resultData['scales'] = l$scales.map((e) => e.toJson()).toList();
    final l$knownTares = knownTares;
    _resultData['knownTares'] = l$knownTares.map((e) => e.toJson()).toList();
    final l$ticketPrints = ticketPrints;
    _resultData['ticketPrints'] = l$ticketPrints
        .map((e) => e.toJson())
        .toList();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$yardInformation = yardInformation;
    _resultData['yardInformation'] = l$yardInformation.toJson();
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$dirtDeductionUom = dirtDeductionUom;
    _resultData['dirtDeductionUom'] = toJson$Enum$Uom(l$dirtDeductionUom);
    final l$territoryCode = territoryCode;
    _resultData['territoryCode'] = l$territoryCode;
    final l$enableManualWeight = enableManualWeight;
    _resultData['enableManualWeight'] = l$enableManualWeight;
    final l$weighbridgeUom = weighbridgeUom;
    _resultData['weighbridgeUom'] = toJson$Enum$Uom(l$weighbridgeUom);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$yardId = yardId;
    final l$name = name;
    final l$yardCode = yardCode;
    final l$enableCheckWeight = enableCheckWeight;
    final l$publishTicketToTrade = publishTicketToTrade;
    final l$allowRollingWeights = allowRollingWeights;
    final l$rounding = rounding;
    final l$scales = scales;
    final l$knownTares = knownTares;
    final l$ticketPrints = ticketPrints;
    final l$active = active;
    final l$yardInformation = yardInformation;
    final l$currency = currency;
    final l$dirtDeductionUom = dirtDeductionUom;
    final l$territoryCode = territoryCode;
    final l$enableManualWeight = enableManualWeight;
    final l$weighbridgeUom = weighbridgeUom;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$yardId,
      l$name,
      l$yardCode,
      l$enableCheckWeight,
      l$publishTicketToTrade,
      l$allowRollingWeights,
      l$rounding,
      Object.hashAll(l$scales.map((v) => v)),
      Object.hashAll(l$knownTares.map((v) => v)),
      Object.hashAll(l$ticketPrints.map((v) => v)),
      l$active,
      l$yardInformation,
      l$currency,
      l$dirtDeductionUom,
      l$territoryCode,
      l$enableManualWeight,
      l$weighbridgeUom,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetWeighbridgeProfile$weighbridgeProfile$entity ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$enableCheckWeight = enableCheckWeight;
    final lOther$enableCheckWeight = other.enableCheckWeight;
    if (l$enableCheckWeight != lOther$enableCheckWeight) {
      return false;
    }
    final l$publishTicketToTrade = publishTicketToTrade;
    final lOther$publishTicketToTrade = other.publishTicketToTrade;
    if (l$publishTicketToTrade != lOther$publishTicketToTrade) {
      return false;
    }
    final l$allowRollingWeights = allowRollingWeights;
    final lOther$allowRollingWeights = other.allowRollingWeights;
    if (l$allowRollingWeights != lOther$allowRollingWeights) {
      return false;
    }
    final l$rounding = rounding;
    final lOther$rounding = other.rounding;
    if (l$rounding != lOther$rounding) {
      return false;
    }
    final l$scales = scales;
    final lOther$scales = other.scales;
    if (l$scales.length != lOther$scales.length) {
      return false;
    }
    for (int i = 0; i < l$scales.length; i++) {
      final l$scales$entry = l$scales[i];
      final lOther$scales$entry = lOther$scales[i];
      if (l$scales$entry != lOther$scales$entry) {
        return false;
      }
    }
    final l$knownTares = knownTares;
    final lOther$knownTares = other.knownTares;
    if (l$knownTares.length != lOther$knownTares.length) {
      return false;
    }
    for (int i = 0; i < l$knownTares.length; i++) {
      final l$knownTares$entry = l$knownTares[i];
      final lOther$knownTares$entry = lOther$knownTares[i];
      if (l$knownTares$entry != lOther$knownTares$entry) {
        return false;
      }
    }
    final l$ticketPrints = ticketPrints;
    final lOther$ticketPrints = other.ticketPrints;
    if (l$ticketPrints.length != lOther$ticketPrints.length) {
      return false;
    }
    for (int i = 0; i < l$ticketPrints.length; i++) {
      final l$ticketPrints$entry = l$ticketPrints[i];
      final lOther$ticketPrints$entry = lOther$ticketPrints[i];
      if (l$ticketPrints$entry != lOther$ticketPrints$entry) {
        return false;
      }
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$yardInformation = yardInformation;
    final lOther$yardInformation = other.yardInformation;
    if (l$yardInformation != lOther$yardInformation) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$dirtDeductionUom = dirtDeductionUom;
    final lOther$dirtDeductionUom = other.dirtDeductionUom;
    if (l$dirtDeductionUom != lOther$dirtDeductionUom) {
      return false;
    }
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (l$territoryCode != lOther$territoryCode) {
      return false;
    }
    final l$enableManualWeight = enableManualWeight;
    final lOther$enableManualWeight = other.enableManualWeight;
    if (l$enableManualWeight != lOther$enableManualWeight) {
      return false;
    }
    final l$weighbridgeUom = weighbridgeUom;
    final lOther$weighbridgeUom = other.weighbridgeUom;
    if (l$weighbridgeUom != lOther$weighbridgeUom) {
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

extension UtilityExtension$Query$GetWeighbridgeProfile$weighbridgeProfile$entity
    on Query$GetWeighbridgeProfile$weighbridgeProfile$entity {
  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity<
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity
  >
  get copyWith =>
      CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity<
  TRes
> {
  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity instance,
    TRes Function(Query$GetWeighbridgeProfile$weighbridgeProfile$entity) then,
  ) = _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity;

  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity;

  TRes call({
    String? id,
    String? yardId,
    String? name,
    String? yardCode,
    bool? enableCheckWeight,
    bool? publishTicketToTrade,
    bool? allowRollingWeights,
    double? rounding,
    List<Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales>? scales,
    List<Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares>?
    knownTares,
    List<Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints>?
    ticketPrints,
    bool? active,
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation?
    yardInformation,
    String? currency,
    Enum$Uom? dirtDeductionUom,
    String? territoryCode,
    bool? enableManualWeight,
    Enum$Uom? weighbridgeUom,
    String? $__typename,
  });
  TRes scales(
    Iterable<Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales>
    Function(
      Iterable<
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales<
          Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales
        >
      >,
    )
    _fn,
  );
  TRes knownTares(
    Iterable<Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares>
    Function(
      Iterable<
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares<
          Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares
        >
      >,
    )
    _fn,
  );
  TRes ticketPrints(
    Iterable<Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints>
    Function(
      Iterable<
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints<
          Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation<
    TRes
  >
  get yardInformation;
}

class _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity<TRes>
    implements
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity<TRes> {
  _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity(
    this._instance,
    this._then,
  );

  final Query$GetWeighbridgeProfile$weighbridgeProfile$entity _instance;

  final TRes Function(Query$GetWeighbridgeProfile$weighbridgeProfile$entity)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? yardId = _undefined,
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? enableCheckWeight = _undefined,
    Object? publishTicketToTrade = _undefined,
    Object? allowRollingWeights = _undefined,
    Object? rounding = _undefined,
    Object? scales = _undefined,
    Object? knownTares = _undefined,
    Object? ticketPrints = _undefined,
    Object? active = _undefined,
    Object? yardInformation = _undefined,
    Object? currency = _undefined,
    Object? dirtDeductionUom = _undefined,
    Object? territoryCode = _undefined,
    Object? enableManualWeight = _undefined,
    Object? weighbridgeUom = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity(
      id: id == _undefined ? _instance.id : (id as String?),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      enableCheckWeight:
          enableCheckWeight == _undefined || enableCheckWeight == null
          ? _instance.enableCheckWeight
          : (enableCheckWeight as bool),
      publishTicketToTrade:
          publishTicketToTrade == _undefined || publishTicketToTrade == null
          ? _instance.publishTicketToTrade
          : (publishTicketToTrade as bool),
      allowRollingWeights:
          allowRollingWeights == _undefined || allowRollingWeights == null
          ? _instance.allowRollingWeights
          : (allowRollingWeights as bool),
      rounding: rounding == _undefined || rounding == null
          ? _instance.rounding
          : (rounding as double),
      scales: scales == _undefined || scales == null
          ? _instance.scales
          : (scales
                as List<
                  Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales
                >),
      knownTares: knownTares == _undefined || knownTares == null
          ? _instance.knownTares
          : (knownTares
                as List<
                  Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares
                >),
      ticketPrints: ticketPrints == _undefined || ticketPrints == null
          ? _instance.ticketPrints
          : (ticketPrints
                as List<
                  Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints
                >),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      yardInformation: yardInformation == _undefined || yardInformation == null
          ? _instance.yardInformation
          : (yardInformation
                as Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation),
      currency: currency == _undefined || currency == null
          ? _instance.currency
          : (currency as String),
      dirtDeductionUom:
          dirtDeductionUom == _undefined || dirtDeductionUom == null
          ? _instance.dirtDeductionUom
          : (dirtDeductionUom as Enum$Uom),
      territoryCode: territoryCode == _undefined || territoryCode == null
          ? _instance.territoryCode
          : (territoryCode as String),
      enableManualWeight:
          enableManualWeight == _undefined || enableManualWeight == null
          ? _instance.enableManualWeight
          : (enableManualWeight as bool),
      weighbridgeUom: weighbridgeUom == _undefined || weighbridgeUom == null
          ? _instance.weighbridgeUom
          : (weighbridgeUom as Enum$Uom),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes scales(
    Iterable<Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales>
    Function(
      Iterable<
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales<
          Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales
        >
      >,
    )
    _fn,
  ) => call(
    scales: _fn(
      _instance.scales.map(
        (e) =>
            CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes knownTares(
    Iterable<Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares>
    Function(
      Iterable<
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares<
          Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares
        >
      >,
    )
    _fn,
  ) => call(
    knownTares: _fn(
      _instance.knownTares.map(
        (e) =>
            CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes ticketPrints(
    Iterable<Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints>
    Function(
      Iterable<
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints<
          Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints
        >
      >,
    )
    _fn,
  ) => call(
    ticketPrints: _fn(
      _instance.ticketPrints.map(
        (e) =>
            CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation<
    TRes
  >
  get yardInformation {
    final local$yardInformation = _instance.yardInformation;
    return CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation(
      local$yardInformation,
      (e) => call(yardInformation: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity<TRes> {
  _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? yardId,
    String? name,
    String? yardCode,
    bool? enableCheckWeight,
    bool? publishTicketToTrade,
    bool? allowRollingWeights,
    double? rounding,
    List<Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales>? scales,
    List<Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares>?
    knownTares,
    List<Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints>?
    ticketPrints,
    bool? active,
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation?
    yardInformation,
    String? currency,
    Enum$Uom? dirtDeductionUom,
    String? territoryCode,
    bool? enableManualWeight,
    Enum$Uom? weighbridgeUom,
    String? $__typename,
  }) => _res;

  scales(_fn) => _res;

  knownTares(_fn) => _res;

  ticketPrints(_fn) => _res;

  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation<
    TRes
  >
  get yardInformation =>
      CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation.stub(
        _res,
      );
}

class Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales {
  Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales({
    required this.name,
    required this.url,
    required this.assetCode,
    required this.scaleNumber,
    required this.cameras,
    this.$__typename = 'Scale',
  });

  factory Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$url = json['url'];
    final l$assetCode = json['assetCode'];
    final l$scaleNumber = json['scaleNumber'];
    final l$cameras = json['cameras'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales(
      name: (l$name as String),
      url: (l$url as String),
      assetCode: (l$assetCode as String),
      scaleNumber: (l$scaleNumber as int),
      cameras: (l$cameras as List<dynamic>)
          .map(
            (e) =>
                Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String url;

  final String assetCode;

  final int scaleNumber;

  final List<
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras
  >
  cameras;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$assetCode = assetCode;
    _resultData['assetCode'] = l$assetCode;
    final l$scaleNumber = scaleNumber;
    _resultData['scaleNumber'] = l$scaleNumber;
    final l$cameras = cameras;
    _resultData['cameras'] = l$cameras.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$url = url;
    final l$assetCode = assetCode;
    final l$scaleNumber = scaleNumber;
    final l$cameras = cameras;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$url,
      l$assetCode,
      l$scaleNumber,
      Object.hashAll(l$cameras.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    final l$scaleNumber = scaleNumber;
    final lOther$scaleNumber = other.scaleNumber;
    if (l$scaleNumber != lOther$scaleNumber) {
      return false;
    }
    final l$cameras = cameras;
    final lOther$cameras = other.cameras;
    if (l$cameras.length != lOther$cameras.length) {
      return false;
    }
    for (int i = 0; i < l$cameras.length; i++) {
      final l$cameras$entry = l$cameras[i];
      final lOther$cameras$entry = lOther$cameras[i];
      if (l$cameras$entry != lOther$cameras$entry) {
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

extension UtilityExtension$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales
    on Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales {
  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales<
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales
  >
  get copyWith =>
      CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales<
  TRes
> {
  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales instance,
    TRes Function(Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales)
    then,
  ) = _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales;

  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales;

  TRes call({
    String? name,
    String? url,
    String? assetCode,
    int? scaleNumber,
    List<Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras>?
    cameras,
    String? $__typename,
  });
  TRes cameras(
    Iterable<
      Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras
    >
    Function(
      Iterable<
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras<
          Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales<
          TRes
        > {
  _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales(
    this._instance,
    this._then,
  );

  final Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales _instance;

  final TRes Function(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? url = _undefined,
    Object? assetCode = _undefined,
    Object? scaleNumber = _undefined,
    Object? cameras = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      url: url == _undefined || url == null ? _instance.url : (url as String),
      assetCode: assetCode == _undefined || assetCode == null
          ? _instance.assetCode
          : (assetCode as String),
      scaleNumber: scaleNumber == _undefined || scaleNumber == null
          ? _instance.scaleNumber
          : (scaleNumber as int),
      cameras: cameras == _undefined || cameras == null
          ? _instance.cameras
          : (cameras
                as List<
                  Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes cameras(
    Iterable<
      Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras
    >
    Function(
      Iterable<
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras<
          Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras
        >
      >,
    )
    _fn,
  ) => call(
    cameras: _fn(
      _instance.cameras.map(
        (e) =>
            CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales<
          TRes
        > {
  _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    String? url,
    String? assetCode,
    int? scaleNumber,
    List<Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras>?
    cameras,
    String? $__typename,
  }) => _res;

  cameras(_fn) => _res;
}

class Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras {
  Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras({
    required this.name,
    this.imageUrl,
    this.videoUrl,
    this.$__typename = 'Camera',
  });

  factory Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$imageUrl = json['imageUrl'];
    final l$videoUrl = json['videoUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras(
      name: (l$name as String),
      imageUrl: (l$imageUrl as String?),
      videoUrl: (l$videoUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String? imageUrl;

  final String? videoUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$imageUrl = imageUrl;
    _resultData['imageUrl'] = l$imageUrl;
    final l$videoUrl = videoUrl;
    _resultData['videoUrl'] = l$videoUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$imageUrl = imageUrl;
    final l$videoUrl = videoUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$imageUrl, l$videoUrl, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$imageUrl = imageUrl;
    final lOther$imageUrl = other.imageUrl;
    if (l$imageUrl != lOther$imageUrl) {
      return false;
    }
    final l$videoUrl = videoUrl;
    final lOther$videoUrl = other.videoUrl;
    if (l$videoUrl != lOther$videoUrl) {
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

extension UtilityExtension$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras
    on Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras {
  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras<
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras
  >
  get copyWith =>
      CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras<
  TRes
> {
  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras
    instance,
    TRes Function(
      Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras,
    )
    then,
  ) = _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras;

  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras;

  TRes call({
    String? name,
    String? imageUrl,
    String? videoUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras<
          TRes
        > {
  _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras(
    this._instance,
    this._then,
  );

  final Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras
  _instance;

  final TRes Function(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? imageUrl = _undefined,
    Object? videoUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      imageUrl: imageUrl == _undefined
          ? _instance.imageUrl
          : (imageUrl as String?),
      videoUrl: videoUrl == _undefined
          ? _instance.videoUrl
          : (videoUrl as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras<
          TRes
        > {
  _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$scales$cameras(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    String? imageUrl,
    String? videoUrl,
    String? $__typename,
  }) => _res;
}

class Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares {
  Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares({
    required this.value,
    this.serialNo,
    this.comments,
    this.$__typename = 'WeightDeduction',
  });

  factory Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$serialNo = json['serialNo'];
    final l$comments = json['comments'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares(
      value:
          Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      serialNo: (l$serialNo as String?),
      comments: (l$comments as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value
  value;

  final String? serialNo;

  final String? comments;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$serialNo = serialNo;
    _resultData['serialNo'] = l$serialNo;
    final l$comments = comments;
    _resultData['comments'] = l$comments;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$serialNo = serialNo;
    final l$comments = comments;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$serialNo, l$comments, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$serialNo = serialNo;
    final lOther$serialNo = other.serialNo;
    if (l$serialNo != lOther$serialNo) {
      return false;
    }
    final l$comments = comments;
    final lOther$comments = other.comments;
    if (l$comments != lOther$comments) {
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

extension UtilityExtension$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares
    on Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares {
  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares<
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares
  >
  get copyWith =>
      CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares<
  TRes
> {
  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares instance,
    TRes Function(
      Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares,
    )
    then,
  ) = _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares;

  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares;

  TRes call({
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value?
    value,
    String? serialNo,
    String? comments,
    String? $__typename,
  });
  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares<
          TRes
        > {
  _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares(
    this._instance,
    this._then,
  );

  final Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares
  _instance;

  final TRes Function(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? serialNo = _undefined,
    Object? comments = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares(
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value),
      serialNo: serialNo == _undefined
          ? _instance.serialNo
          : (serialNo as String?),
      comments: comments == _undefined
          ? _instance.comments
          : (comments as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares<
          TRes
        > {
  _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares(
    this._res,
  );

  TRes _res;

  call({
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value?
    value,
    String? serialNo,
    String? comments,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value<
    TRes
  >
  get value =>
      CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value.stub(
        _res,
      );
}

class Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value {
  Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value({
    required this.uom,
    required this.value,
    required this.isRate,
    required this.id,
    required this.mtValue,
    this.$__typename = 'UomValue',
  });

  factory Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$isRate = json['isRate'];
    final l$id = json['id'];
    final l$mtValue = json['mtValue'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      isRate: (l$isRate as bool),
      id: (l$id as int),
      mtValue: (l$mtValue as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final bool isRate;

  final int id;

  final double mtValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$isRate = isRate;
    _resultData['isRate'] = l$isRate;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$mtValue = mtValue;
    _resultData['mtValue'] = l$mtValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$isRate = isRate;
    final l$id = id;
    final l$mtValue = mtValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$isRate,
      l$id,
      l$mtValue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value ||
        runtimeType != other.runtimeType) {
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
    final l$isRate = isRate;
    final lOther$isRate = other.isRate;
    if (l$isRate != lOther$isRate) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$mtValue = mtValue;
    final lOther$mtValue = other.mtValue;
    if (l$mtValue != lOther$mtValue) {
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

extension UtilityExtension$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value
    on Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value {
  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value<
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value
  >
  get copyWith =>
      CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value<
  TRes
> {
  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value
    instance,
    TRes Function(
      Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value,
    )
    then,
  ) = _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value;

  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value;

  TRes call({
    Enum$Uom? uom,
    double? value,
    bool? isRate,
    int? id,
    double? mtValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value<
          TRes
        > {
  _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value(
    this._instance,
    this._then,
  );

  final Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value
  _instance;

  final TRes Function(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? isRate = _undefined,
    Object? id = _undefined,
    Object? mtValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      isRate: isRate == _undefined || isRate == null
          ? _instance.isRate
          : (isRate as bool),
      id: id == _undefined || id == null ? _instance.id : (id as int),
      mtValue: mtValue == _undefined || mtValue == null
          ? _instance.mtValue
          : (mtValue as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value<
          TRes
        > {
  _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$knownTares$value(
    this._res,
  );

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    bool? isRate,
    int? id,
    double? mtValue,
    String? $__typename,
  }) => _res;
}

class Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints {
  Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints({
    required this.name,
    required this.headerText,
    required this.numberOfCopies,
    required this.printer,
    required this.printForTicketDirections,
    required this.ticketPrintType,
    required this.templateName,
    this.$__typename = 'TicketPrint',
  });

  factory Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$headerText = json['headerText'];
    final l$numberOfCopies = json['numberOfCopies'];
    final l$printer = json['printer'];
    final l$printForTicketDirections = json['printForTicketDirections'];
    final l$ticketPrintType = json['ticketPrintType'];
    final l$templateName = json['templateName'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints(
      name: (l$name as String),
      headerText: (l$headerText as String),
      numberOfCopies: (l$numberOfCopies as int),
      printer:
          Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer.fromJson(
            (l$printer as Map<String, dynamic>),
          ),
      printForTicketDirections: fromJson$Enum$PrintForTicketDirections(
        (l$printForTicketDirections as String),
      ),
      ticketPrintType: fromJson$Enum$TicketPrintType(
        (l$ticketPrintType as String),
      ),
      templateName: (l$templateName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String headerText;

  final int numberOfCopies;

  final Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer
  printer;

  final Enum$PrintForTicketDirections printForTicketDirections;

  final Enum$TicketPrintType ticketPrintType;

  final String templateName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$headerText = headerText;
    _resultData['headerText'] = l$headerText;
    final l$numberOfCopies = numberOfCopies;
    _resultData['numberOfCopies'] = l$numberOfCopies;
    final l$printer = printer;
    _resultData['printer'] = l$printer.toJson();
    final l$printForTicketDirections = printForTicketDirections;
    _resultData['printForTicketDirections'] =
        toJson$Enum$PrintForTicketDirections(l$printForTicketDirections);
    final l$ticketPrintType = ticketPrintType;
    _resultData['ticketPrintType'] = toJson$Enum$TicketPrintType(
      l$ticketPrintType,
    );
    final l$templateName = templateName;
    _resultData['templateName'] = l$templateName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$headerText = headerText;
    final l$numberOfCopies = numberOfCopies;
    final l$printer = printer;
    final l$printForTicketDirections = printForTicketDirections;
    final l$ticketPrintType = ticketPrintType;
    final l$templateName = templateName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$headerText,
      l$numberOfCopies,
      l$printer,
      l$printForTicketDirections,
      l$ticketPrintType,
      l$templateName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$headerText = headerText;
    final lOther$headerText = other.headerText;
    if (l$headerText != lOther$headerText) {
      return false;
    }
    final l$numberOfCopies = numberOfCopies;
    final lOther$numberOfCopies = other.numberOfCopies;
    if (l$numberOfCopies != lOther$numberOfCopies) {
      return false;
    }
    final l$printer = printer;
    final lOther$printer = other.printer;
    if (l$printer != lOther$printer) {
      return false;
    }
    final l$printForTicketDirections = printForTicketDirections;
    final lOther$printForTicketDirections = other.printForTicketDirections;
    if (l$printForTicketDirections != lOther$printForTicketDirections) {
      return false;
    }
    final l$ticketPrintType = ticketPrintType;
    final lOther$ticketPrintType = other.ticketPrintType;
    if (l$ticketPrintType != lOther$ticketPrintType) {
      return false;
    }
    final l$templateName = templateName;
    final lOther$templateName = other.templateName;
    if (l$templateName != lOther$templateName) {
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

extension UtilityExtension$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints
    on Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints {
  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints<
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints
  >
  get copyWith =>
      CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints<
  TRes
> {
  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints instance,
    TRes Function(
      Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints,
    )
    then,
  ) = _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints;

  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints;

  TRes call({
    String? name,
    String? headerText,
    int? numberOfCopies,
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer?
    printer,
    Enum$PrintForTicketDirections? printForTicketDirections,
    Enum$TicketPrintType? ticketPrintType,
    String? templateName,
    String? $__typename,
  });
  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer<
    TRes
  >
  get printer;
}

class _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints<
          TRes
        > {
  _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints(
    this._instance,
    this._then,
  );

  final Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints
  _instance;

  final TRes Function(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? headerText = _undefined,
    Object? numberOfCopies = _undefined,
    Object? printer = _undefined,
    Object? printForTicketDirections = _undefined,
    Object? ticketPrintType = _undefined,
    Object? templateName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      headerText: headerText == _undefined || headerText == null
          ? _instance.headerText
          : (headerText as String),
      numberOfCopies: numberOfCopies == _undefined || numberOfCopies == null
          ? _instance.numberOfCopies
          : (numberOfCopies as int),
      printer: printer == _undefined || printer == null
          ? _instance.printer
          : (printer
                as Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer),
      printForTicketDirections:
          printForTicketDirections == _undefined ||
              printForTicketDirections == null
          ? _instance.printForTicketDirections
          : (printForTicketDirections as Enum$PrintForTicketDirections),
      ticketPrintType: ticketPrintType == _undefined || ticketPrintType == null
          ? _instance.ticketPrintType
          : (ticketPrintType as Enum$TicketPrintType),
      templateName: templateName == _undefined || templateName == null
          ? _instance.templateName
          : (templateName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer<
    TRes
  >
  get printer {
    final local$printer = _instance.printer;
    return CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer(
      local$printer,
      (e) => call(printer: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints<
          TRes
        > {
  _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    String? headerText,
    int? numberOfCopies,
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer?
    printer,
    Enum$PrintForTicketDirections? printForTicketDirections,
    Enum$TicketPrintType? ticketPrintType,
    String? templateName,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer<
    TRes
  >
  get printer =>
      CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer.stub(
        _res,
      );
}

class Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer {
  Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer({
    required this.name,
    required this.url,
    this.$__typename = 'Printer',
  });

  factory Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer(
      name: (l$name as String),
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer
    on Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer {
  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer<
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer
  >
  get copyWith =>
      CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer<
  TRes
> {
  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer
    instance,
    TRes Function(
      Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer,
    )
    then,
  ) = _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer;

  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer;

  TRes call({String? name, String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer<
          TRes
        > {
  _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer(
    this._instance,
    this._then,
  );

  final Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer
  _instance;

  final TRes Function(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer<
          TRes
        > {
  _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$ticketPrints$printer(
    this._res,
  );

  TRes _res;

  call({String? name, String? url, String? $__typename}) => _res;
}

class Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation {
  Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation({
    this.wmlExemptionNo,
    this.wasteCarrierRegNo,
    this.$__typename = 'YardInformation',
  });

  factory Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$wmlExemptionNo = json['wmlExemptionNo'];
    final l$wasteCarrierRegNo = json['wasteCarrierRegNo'];
    final l$$__typename = json['__typename'];
    return Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation(
      wmlExemptionNo: (l$wmlExemptionNo as String?),
      wasteCarrierRegNo: (l$wasteCarrierRegNo as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? wmlExemptionNo;

  final String? wasteCarrierRegNo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$wmlExemptionNo = wmlExemptionNo;
    _resultData['wmlExemptionNo'] = l$wmlExemptionNo;
    final l$wasteCarrierRegNo = wasteCarrierRegNo;
    _resultData['wasteCarrierRegNo'] = l$wasteCarrierRegNo;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$wmlExemptionNo = wmlExemptionNo;
    final l$wasteCarrierRegNo = wasteCarrierRegNo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$wmlExemptionNo,
      l$wasteCarrierRegNo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$wmlExemptionNo = wmlExemptionNo;
    final lOther$wmlExemptionNo = other.wmlExemptionNo;
    if (l$wmlExemptionNo != lOther$wmlExemptionNo) {
      return false;
    }
    final l$wasteCarrierRegNo = wasteCarrierRegNo;
    final lOther$wasteCarrierRegNo = other.wasteCarrierRegNo;
    if (l$wasteCarrierRegNo != lOther$wasteCarrierRegNo) {
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

extension UtilityExtension$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation
    on Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation {
  CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation<
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation
  >
  get copyWith =>
      CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation<
  TRes
> {
  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation
    instance,
    TRes Function(
      Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation,
    )
    then,
  ) = _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation;

  factory CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation;

  TRes call({
    String? wmlExemptionNo,
    String? wasteCarrierRegNo,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation<
          TRes
        > {
  _CopyWithImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation(
    this._instance,
    this._then,
  );

  final Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation
  _instance;

  final TRes Function(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? wmlExemptionNo = _undefined,
    Object? wasteCarrierRegNo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation(
      wmlExemptionNo: wmlExemptionNo == _undefined
          ? _instance.wmlExemptionNo
          : (wmlExemptionNo as String?),
      wasteCarrierRegNo: wasteCarrierRegNo == _undefined
          ? _instance.wasteCarrierRegNo
          : (wasteCarrierRegNo as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation<
  TRes
>
    implements
        CopyWith$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation<
          TRes
        > {
  _CopyWithStubImpl$Query$GetWeighbridgeProfile$weighbridgeProfile$entity$yardInformation(
    this._res,
  );

  TRes _res;

  call({
    String? wmlExemptionNo,
    String? wasteCarrierRegNo,
    String? $__typename,
  }) => _res;
}
