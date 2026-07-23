import '../../fragments/stocktake/stocktake_approval_fields.graphql.dart';
import '../../fragments/stocktake/stocktake_fields.graphql.dart';
import '../../fragments/uomvalue_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetStocktake {
  factory Variables$Query$GetStocktake({required String id}) =>
      Variables$Query$GetStocktake._({r'id': id});

  Variables$Query$GetStocktake._(this._$data);

  factory Variables$Query$GetStocktake.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetStocktake._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetStocktake<Variables$Query$GetStocktake>
  get copyWith => CopyWith$Variables$Query$GetStocktake(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetStocktake ||
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

abstract class CopyWith$Variables$Query$GetStocktake<TRes> {
  factory CopyWith$Variables$Query$GetStocktake(
    Variables$Query$GetStocktake instance,
    TRes Function(Variables$Query$GetStocktake) then,
  ) = _CopyWithImpl$Variables$Query$GetStocktake;

  factory CopyWith$Variables$Query$GetStocktake.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetStocktake;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetStocktake<TRes>
    implements CopyWith$Variables$Query$GetStocktake<TRes> {
  _CopyWithImpl$Variables$Query$GetStocktake(this._instance, this._then);

  final Variables$Query$GetStocktake _instance;

  final TRes Function(Variables$Query$GetStocktake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$GetStocktake._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetStocktake<TRes>
    implements CopyWith$Variables$Query$GetStocktake<TRes> {
  _CopyWithStubImpl$Variables$Query$GetStocktake(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetStocktake {
  Query$GetStocktake({required this.stocktake, this.$__typename = 'Query'});

  factory Query$GetStocktake.fromJson(Map<String, dynamic> json) {
    final l$stocktake = json['stocktake'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake(
      stocktake: Query$GetStocktake$stocktake.fromJson(
        (l$stocktake as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetStocktake$stocktake stocktake;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stocktake = stocktake;
    _resultData['stocktake'] = l$stocktake.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stocktake = stocktake;
    final l$$__typename = $__typename;
    return Object.hashAll([l$stocktake, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake || runtimeType != other.runtimeType) {
      return false;
    }
    final l$stocktake = stocktake;
    final lOther$stocktake = other.stocktake;
    if (l$stocktake != lOther$stocktake) {
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

extension UtilityExtension$Query$GetStocktake on Query$GetStocktake {
  CopyWith$Query$GetStocktake<Query$GetStocktake> get copyWith =>
      CopyWith$Query$GetStocktake(this, (i) => i);
}

abstract class CopyWith$Query$GetStocktake<TRes> {
  factory CopyWith$Query$GetStocktake(
    Query$GetStocktake instance,
    TRes Function(Query$GetStocktake) then,
  ) = _CopyWithImpl$Query$GetStocktake;

  factory CopyWith$Query$GetStocktake.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStocktake;

  TRes call({Query$GetStocktake$stocktake? stocktake, String? $__typename});
  CopyWith$Query$GetStocktake$stocktake<TRes> get stocktake;
}

class _CopyWithImpl$Query$GetStocktake<TRes>
    implements CopyWith$Query$GetStocktake<TRes> {
  _CopyWithImpl$Query$GetStocktake(this._instance, this._then);

  final Query$GetStocktake _instance;

  final TRes Function(Query$GetStocktake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? stocktake = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake(
      stocktake: stocktake == _undefined || stocktake == null
          ? _instance.stocktake
          : (stocktake as Query$GetStocktake$stocktake),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake<TRes> get stocktake {
    final local$stocktake = _instance.stocktake;
    return CopyWith$Query$GetStocktake$stocktake(
      local$stocktake,
      (e) => call(stocktake: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetStocktake<TRes>
    implements CopyWith$Query$GetStocktake<TRes> {
  _CopyWithStubImpl$Query$GetStocktake(this._res);

  TRes _res;

  call({Query$GetStocktake$stocktake? stocktake, String? $__typename}) => _res;

  CopyWith$Query$GetStocktake$stocktake<TRes> get stocktake =>
      CopyWith$Query$GetStocktake$stocktake.stub(_res);
}

const documentNodeQueryGetStocktake = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetStocktake'),
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
            name: NameNode(value: 'stocktake'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'StocktakeFields'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: 'stocktakeLocations'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'netWeightMt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'weightVariance'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'UomValueFragment'),
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
                        name: NameNode(value: 'valueVariance'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mediaAssets'),
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
                        name: NameNode(value: 'product'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'description'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'classification'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'family'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'line'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'class'),
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
                        name: NameNode(value: 'location'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'active'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'inventoryLocationType'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'description'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'weight'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FragmentSpreadNode(
                                    name: NameNode(value: 'UomValueFragment'),
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
                              name: NameNode(value: 'rate'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FragmentSpreadNode(
                                    name: NameNode(value: 'UomValueFragment'),
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
                        name: NameNode(value: 'comments'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'content'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
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
                        name: NameNode(value: 'status'),
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
                                    name: NameNode(value: 'user'),
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
                              name: NameNode(value: 'grossWeight'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FragmentSpreadNode(
                                    name: NameNode(value: 'UomValueFragment'),
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
                              name: NameNode(value: 'tareWeight'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FragmentSpreadNode(
                                    name: NameNode(value: 'UomValueFragment'),
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
                              name: NameNode(value: 'title'),
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
                              name: NameNode(value: 'isDeleted'),
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
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'content'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
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
                  name: NameNode(value: 'workflow'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'StocktakeApprovalFields'),
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
                  name: NameNode(value: 'submitted'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
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
    fragmentDefinitionStocktakeApprovalFields,
  ],
);

class Query$GetStocktake$stocktake implements Fragment$StocktakeFields {
  Query$GetStocktake$stocktake({
    required this.id,
    required this.name,
    required this.status,
    required this.conductedBy,
    required this.productFamily,
    required this.currencyCode,
    required this.isRoutineCheck,
    required this.defaultUom,
    this.workflow,
    this.conductor,
    required this.yardCode,
    required this.comments,
    required this.tags,
    required this.active,
    required this.stocktakeLocations,
    required this.created,
    required this.modified,
    this.$__typename = 'Stocktake',
    this.submitted,
  });

  factory Query$GetStocktake$stocktake.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$status = json['status'];
    final l$conductedBy = json['conductedBy'];
    final l$productFamily = json['productFamily'];
    final l$currencyCode = json['currencyCode'];
    final l$isRoutineCheck = json['isRoutineCheck'];
    final l$defaultUom = json['defaultUom'];
    final l$workflow = json['workflow'];
    final l$conductor = json['conductor'];
    final l$yardCode = json['yardCode'];
    final l$comments = json['comments'];
    final l$tags = json['tags'];
    final l$active = json['active'];
    final l$stocktakeLocations = json['stocktakeLocations'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$$__typename = json['__typename'];
    final l$submitted = json['submitted'];
    return Query$GetStocktake$stocktake(
      id: (l$id as String),
      name: (l$name as String),
      status: fromJson$Enum$StocktakeStatus((l$status as String)),
      conductedBy: (l$conductedBy as String),
      productFamily: (l$productFamily as String),
      currencyCode: (l$currencyCode as String),
      isRoutineCheck: (l$isRoutineCheck as bool),
      defaultUom: fromJson$Enum$Uom((l$defaultUom as String)),
      workflow: l$workflow == null
          ? null
          : Query$GetStocktake$stocktake$workflow.fromJson(
              (l$workflow as Map<String, dynamic>),
            ),
      conductor: l$conductor == null
          ? null
          : Query$GetStocktake$stocktake$conductor.fromJson(
              (l$conductor as Map<String, dynamic>),
            ),
      yardCode: (l$yardCode as String),
      comments: (l$comments as List<dynamic>)
          .map(
            (e) => Query$GetStocktake$stocktake$comments.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      tags: (l$tags as List<dynamic>).map((e) => (e as String)).toList(),
      active: (l$active as bool),
      stocktakeLocations: (l$stocktakeLocations as List<dynamic>)
          .map(
            (e) => Query$GetStocktake$stocktake$stocktakeLocations.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      created: Query$GetStocktake$stocktake$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      modified: Query$GetStocktake$stocktake$modified.fromJson(
        (l$modified as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
      submitted: l$submitted == null
          ? null
          : Query$GetStocktake$stocktake$submitted.fromJson(
              (l$submitted as Map<String, dynamic>),
            ),
    );
  }

  final String id;

  final String name;

  final Enum$StocktakeStatus status;

  final String conductedBy;

  final String productFamily;

  final String currencyCode;

  final bool isRoutineCheck;

  final Enum$Uom defaultUom;

  final Query$GetStocktake$stocktake$workflow? workflow;

  final Query$GetStocktake$stocktake$conductor? conductor;

  final String yardCode;

  final List<Query$GetStocktake$stocktake$comments> comments;

  final List<String> tags;

  final bool active;

  final List<Query$GetStocktake$stocktake$stocktakeLocations>
  stocktakeLocations;

  final Query$GetStocktake$stocktake$created created;

  final Query$GetStocktake$stocktake$modified modified;

  final String $__typename;

  final Query$GetStocktake$stocktake$submitted? submitted;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$status = status;
    _resultData['status'] = toJson$Enum$StocktakeStatus(l$status);
    final l$conductedBy = conductedBy;
    _resultData['conductedBy'] = l$conductedBy;
    final l$productFamily = productFamily;
    _resultData['productFamily'] = l$productFamily;
    final l$currencyCode = currencyCode;
    _resultData['currencyCode'] = l$currencyCode;
    final l$isRoutineCheck = isRoutineCheck;
    _resultData['isRoutineCheck'] = l$isRoutineCheck;
    final l$defaultUom = defaultUom;
    _resultData['defaultUom'] = toJson$Enum$Uom(l$defaultUom);
    final l$workflow = workflow;
    _resultData['workflow'] = l$workflow?.toJson();
    final l$conductor = conductor;
    _resultData['conductor'] = l$conductor?.toJson();
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$comments = comments;
    _resultData['comments'] = l$comments.map((e) => e.toJson()).toList();
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e).toList();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$stocktakeLocations = stocktakeLocations;
    _resultData['stocktakeLocations'] = l$stocktakeLocations
        .map((e) => e.toJson())
        .toList();
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$submitted = submitted;
    _resultData['submitted'] = l$submitted?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$status = status;
    final l$conductedBy = conductedBy;
    final l$productFamily = productFamily;
    final l$currencyCode = currencyCode;
    final l$isRoutineCheck = isRoutineCheck;
    final l$defaultUom = defaultUom;
    final l$workflow = workflow;
    final l$conductor = conductor;
    final l$yardCode = yardCode;
    final l$comments = comments;
    final l$tags = tags;
    final l$active = active;
    final l$stocktakeLocations = stocktakeLocations;
    final l$created = created;
    final l$modified = modified;
    final l$$__typename = $__typename;
    final l$submitted = submitted;
    return Object.hashAll([
      l$id,
      l$name,
      l$status,
      l$conductedBy,
      l$productFamily,
      l$currencyCode,
      l$isRoutineCheck,
      l$defaultUom,
      l$workflow,
      l$conductor,
      l$yardCode,
      Object.hashAll(l$comments.map((v) => v)),
      Object.hashAll(l$tags.map((v) => v)),
      l$active,
      Object.hashAll(l$stocktakeLocations.map((v) => v)),
      l$created,
      l$modified,
      l$$__typename,
      l$submitted,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$conductedBy = conductedBy;
    final lOther$conductedBy = other.conductedBy;
    if (l$conductedBy != lOther$conductedBy) {
      return false;
    }
    final l$productFamily = productFamily;
    final lOther$productFamily = other.productFamily;
    if (l$productFamily != lOther$productFamily) {
      return false;
    }
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) {
      return false;
    }
    final l$isRoutineCheck = isRoutineCheck;
    final lOther$isRoutineCheck = other.isRoutineCheck;
    if (l$isRoutineCheck != lOther$isRoutineCheck) {
      return false;
    }
    final l$defaultUom = defaultUom;
    final lOther$defaultUom = other.defaultUom;
    if (l$defaultUom != lOther$defaultUom) {
      return false;
    }
    final l$workflow = workflow;
    final lOther$workflow = other.workflow;
    if (l$workflow != lOther$workflow) {
      return false;
    }
    final l$conductor = conductor;
    final lOther$conductor = other.conductor;
    if (l$conductor != lOther$conductor) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$comments = comments;
    final lOther$comments = other.comments;
    if (l$comments.length != lOther$comments.length) {
      return false;
    }
    for (int i = 0; i < l$comments.length; i++) {
      final l$comments$entry = l$comments[i];
      final lOther$comments$entry = lOther$comments[i];
      if (l$comments$entry != lOther$comments$entry) {
        return false;
      }
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags.length != lOther$tags.length) {
      return false;
    }
    for (int i = 0; i < l$tags.length; i++) {
      final l$tags$entry = l$tags[i];
      final lOther$tags$entry = lOther$tags[i];
      if (l$tags$entry != lOther$tags$entry) {
        return false;
      }
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$stocktakeLocations = stocktakeLocations;
    final lOther$stocktakeLocations = other.stocktakeLocations;
    if (l$stocktakeLocations.length != lOther$stocktakeLocations.length) {
      return false;
    }
    for (int i = 0; i < l$stocktakeLocations.length; i++) {
      final l$stocktakeLocations$entry = l$stocktakeLocations[i];
      final lOther$stocktakeLocations$entry = lOther$stocktakeLocations[i];
      if (l$stocktakeLocations$entry != lOther$stocktakeLocations$entry) {
        return false;
      }
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$submitted = submitted;
    final lOther$submitted = other.submitted;
    if (l$submitted != lOther$submitted) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetStocktake$stocktake
    on Query$GetStocktake$stocktake {
  CopyWith$Query$GetStocktake$stocktake<Query$GetStocktake$stocktake>
  get copyWith => CopyWith$Query$GetStocktake$stocktake(this, (i) => i);
}

abstract class CopyWith$Query$GetStocktake$stocktake<TRes> {
  factory CopyWith$Query$GetStocktake$stocktake(
    Query$GetStocktake$stocktake instance,
    TRes Function(Query$GetStocktake$stocktake) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake;

  factory CopyWith$Query$GetStocktake$stocktake.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStocktake$stocktake;

  TRes call({
    String? id,
    String? name,
    Enum$StocktakeStatus? status,
    String? conductedBy,
    String? productFamily,
    String? currencyCode,
    bool? isRoutineCheck,
    Enum$Uom? defaultUom,
    Query$GetStocktake$stocktake$workflow? workflow,
    Query$GetStocktake$stocktake$conductor? conductor,
    String? yardCode,
    List<Query$GetStocktake$stocktake$comments>? comments,
    List<String>? tags,
    bool? active,
    List<Query$GetStocktake$stocktake$stocktakeLocations>? stocktakeLocations,
    Query$GetStocktake$stocktake$created? created,
    Query$GetStocktake$stocktake$modified? modified,
    String? $__typename,
    Query$GetStocktake$stocktake$submitted? submitted,
  });
  CopyWith$Query$GetStocktake$stocktake$workflow<TRes> get workflow;
  CopyWith$Query$GetStocktake$stocktake$conductor<TRes> get conductor;
  TRes comments(
    Iterable<Query$GetStocktake$stocktake$comments> Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$comments<
          Query$GetStocktake$stocktake$comments
        >
      >,
    )
    _fn,
  );
  TRes stocktakeLocations(
    Iterable<Query$GetStocktake$stocktake$stocktakeLocations> Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations<
          Query$GetStocktake$stocktake$stocktakeLocations
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetStocktake$stocktake$created<TRes> get created;
  CopyWith$Query$GetStocktake$stocktake$modified<TRes> get modified;
  CopyWith$Query$GetStocktake$stocktake$submitted<TRes> get submitted;
}

class _CopyWithImpl$Query$GetStocktake$stocktake<TRes>
    implements CopyWith$Query$GetStocktake$stocktake<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake(this._instance, this._then);

  final Query$GetStocktake$stocktake _instance;

  final TRes Function(Query$GetStocktake$stocktake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? status = _undefined,
    Object? conductedBy = _undefined,
    Object? productFamily = _undefined,
    Object? currencyCode = _undefined,
    Object? isRoutineCheck = _undefined,
    Object? defaultUom = _undefined,
    Object? workflow = _undefined,
    Object? conductor = _undefined,
    Object? yardCode = _undefined,
    Object? comments = _undefined,
    Object? tags = _undefined,
    Object? active = _undefined,
    Object? stocktakeLocations = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? $__typename = _undefined,
    Object? submitted = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$StocktakeStatus),
      conductedBy: conductedBy == _undefined || conductedBy == null
          ? _instance.conductedBy
          : (conductedBy as String),
      productFamily: productFamily == _undefined || productFamily == null
          ? _instance.productFamily
          : (productFamily as String),
      currencyCode: currencyCode == _undefined || currencyCode == null
          ? _instance.currencyCode
          : (currencyCode as String),
      isRoutineCheck: isRoutineCheck == _undefined || isRoutineCheck == null
          ? _instance.isRoutineCheck
          : (isRoutineCheck as bool),
      defaultUom: defaultUom == _undefined || defaultUom == null
          ? _instance.defaultUom
          : (defaultUom as Enum$Uom),
      workflow: workflow == _undefined
          ? _instance.workflow
          : (workflow as Query$GetStocktake$stocktake$workflow?),
      conductor: conductor == _undefined
          ? _instance.conductor
          : (conductor as Query$GetStocktake$stocktake$conductor?),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      comments: comments == _undefined || comments == null
          ? _instance.comments
          : (comments as List<Query$GetStocktake$stocktake$comments>),
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags as List<String>),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      stocktakeLocations:
          stocktakeLocations == _undefined || stocktakeLocations == null
          ? _instance.stocktakeLocations
          : (stocktakeLocations
                as List<Query$GetStocktake$stocktake$stocktakeLocations>),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Query$GetStocktake$stocktake$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified as Query$GetStocktake$stocktake$modified),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      submitted: submitted == _undefined
          ? _instance.submitted
          : (submitted as Query$GetStocktake$stocktake$submitted?),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$workflow<TRes> get workflow {
    final local$workflow = _instance.workflow;
    return local$workflow == null
        ? CopyWith$Query$GetStocktake$stocktake$workflow.stub(_then(_instance))
        : CopyWith$Query$GetStocktake$stocktake$workflow(
            local$workflow,
            (e) => call(workflow: e),
          );
  }

  CopyWith$Query$GetStocktake$stocktake$conductor<TRes> get conductor {
    final local$conductor = _instance.conductor;
    return local$conductor == null
        ? CopyWith$Query$GetStocktake$stocktake$conductor.stub(_then(_instance))
        : CopyWith$Query$GetStocktake$stocktake$conductor(
            local$conductor,
            (e) => call(conductor: e),
          );
  }

  TRes comments(
    Iterable<Query$GetStocktake$stocktake$comments> Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$comments<
          Query$GetStocktake$stocktake$comments
        >
      >,
    )
    _fn,
  ) => call(
    comments: _fn(
      _instance.comments.map(
        (e) => CopyWith$Query$GetStocktake$stocktake$comments(e, (i) => i),
      ),
    ).toList(),
  );

  TRes stocktakeLocations(
    Iterable<Query$GetStocktake$stocktake$stocktakeLocations> Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations<
          Query$GetStocktake$stocktake$stocktakeLocations
        >
      >,
    )
    _fn,
  ) => call(
    stocktakeLocations: _fn(
      _instance.stocktakeLocations.map(
        (e) => CopyWith$Query$GetStocktake$stocktake$stocktakeLocations(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  CopyWith$Query$GetStocktake$stocktake$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetStocktake$stocktake$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Query$GetStocktake$stocktake$modified<TRes> get modified {
    final local$modified = _instance.modified;
    return CopyWith$Query$GetStocktake$stocktake$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }

  CopyWith$Query$GetStocktake$stocktake$submitted<TRes> get submitted {
    final local$submitted = _instance.submitted;
    return local$submitted == null
        ? CopyWith$Query$GetStocktake$stocktake$submitted.stub(_then(_instance))
        : CopyWith$Query$GetStocktake$stocktake$submitted(
            local$submitted,
            (e) => call(submitted: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake<TRes>
    implements CopyWith$Query$GetStocktake$stocktake<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Enum$StocktakeStatus? status,
    String? conductedBy,
    String? productFamily,
    String? currencyCode,
    bool? isRoutineCheck,
    Enum$Uom? defaultUom,
    Query$GetStocktake$stocktake$workflow? workflow,
    Query$GetStocktake$stocktake$conductor? conductor,
    String? yardCode,
    List<Query$GetStocktake$stocktake$comments>? comments,
    List<String>? tags,
    bool? active,
    List<Query$GetStocktake$stocktake$stocktakeLocations>? stocktakeLocations,
    Query$GetStocktake$stocktake$created? created,
    Query$GetStocktake$stocktake$modified? modified,
    String? $__typename,
    Query$GetStocktake$stocktake$submitted? submitted,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$workflow<TRes> get workflow =>
      CopyWith$Query$GetStocktake$stocktake$workflow.stub(_res);

  CopyWith$Query$GetStocktake$stocktake$conductor<TRes> get conductor =>
      CopyWith$Query$GetStocktake$stocktake$conductor.stub(_res);

  comments(_fn) => _res;

  stocktakeLocations(_fn) => _res;

  CopyWith$Query$GetStocktake$stocktake$created<TRes> get created =>
      CopyWith$Query$GetStocktake$stocktake$created.stub(_res);

  CopyWith$Query$GetStocktake$stocktake$modified<TRes> get modified =>
      CopyWith$Query$GetStocktake$stocktake$modified.stub(_res);

  CopyWith$Query$GetStocktake$stocktake$submitted<TRes> get submitted =>
      CopyWith$Query$GetStocktake$stocktake$submitted.stub(_res);
}

class Query$GetStocktake$stocktake$workflow
    implements
        Fragment$StocktakeFields$workflow,
        Fragment$StocktakeApprovalFields {
  Query$GetStocktake$stocktake$workflow({
    required this.currentLevel,
    required this.stocktakeStatus,
    this.$__typename = 'StocktakeApproval',
    required this.stocktakeId,
    required this.active,
    this.levelUsers,
    required this.created,
    required this.completed,
    required this.yardCode,
    required this.levels,
    required this.id,
    required this.modified,
  });

  factory Query$GetStocktake$stocktake$workflow.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$currentLevel = json['currentLevel'];
    final l$stocktakeStatus = json['stocktakeStatus'];
    final l$$__typename = json['__typename'];
    final l$stocktakeId = json['stocktakeId'];
    final l$active = json['active'];
    final l$levelUsers = json['levelUsers'];
    final l$created = json['created'];
    final l$completed = json['completed'];
    final l$yardCode = json['yardCode'];
    final l$levels = json['levels'];
    final l$id = json['id'];
    final l$modified = json['modified'];
    return Query$GetStocktake$stocktake$workflow(
      currentLevel: (l$currentLevel as int),
      stocktakeStatus: fromJson$Enum$StocktakeApprovalStatus(
        (l$stocktakeStatus as String),
      ),
      $__typename: (l$$__typename as String),
      stocktakeId: (l$stocktakeId as String),
      active: (l$active as bool),
      levelUsers: (l$levelUsers as List<dynamic>?)
          ?.map(
            (e) => Query$GetStocktake$stocktake$workflow$levelUsers.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      created: Query$GetStocktake$stocktake$workflow$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      completed: (l$completed as bool),
      yardCode: (l$yardCode as String),
      levels: (l$levels as List<dynamic>)
          .map(
            (e) => Query$GetStocktake$stocktake$workflow$levels.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      id: (l$id as String),
      modified: Query$GetStocktake$stocktake$workflow$modified.fromJson(
        (l$modified as Map<String, dynamic>),
      ),
    );
  }

  final int currentLevel;

  final Enum$StocktakeApprovalStatus stocktakeStatus;

  final String $__typename;

  final String stocktakeId;

  final bool active;

  final List<Query$GetStocktake$stocktake$workflow$levelUsers>? levelUsers;

  final Query$GetStocktake$stocktake$workflow$created created;

  final bool completed;

  final String yardCode;

  final List<Query$GetStocktake$stocktake$workflow$levels> levels;

  final String id;

  final Query$GetStocktake$stocktake$workflow$modified modified;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currentLevel = currentLevel;
    _resultData['currentLevel'] = l$currentLevel;
    final l$stocktakeStatus = stocktakeStatus;
    _resultData['stocktakeStatus'] = toJson$Enum$StocktakeApprovalStatus(
      l$stocktakeStatus,
    );
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$stocktakeId = stocktakeId;
    _resultData['stocktakeId'] = l$stocktakeId;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$levelUsers = levelUsers;
    _resultData['levelUsers'] = l$levelUsers?.map((e) => e.toJson()).toList();
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$completed = completed;
    _resultData['completed'] = l$completed;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$levels = levels;
    _resultData['levels'] = l$levels.map((e) => e.toJson()).toList();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currentLevel = currentLevel;
    final l$stocktakeStatus = stocktakeStatus;
    final l$$__typename = $__typename;
    final l$stocktakeId = stocktakeId;
    final l$active = active;
    final l$levelUsers = levelUsers;
    final l$created = created;
    final l$completed = completed;
    final l$yardCode = yardCode;
    final l$levels = levels;
    final l$id = id;
    final l$modified = modified;
    return Object.hashAll([
      l$currentLevel,
      l$stocktakeStatus,
      l$$__typename,
      l$stocktakeId,
      l$active,
      l$levelUsers == null ? null : Object.hashAll(l$levelUsers.map((v) => v)),
      l$created,
      l$completed,
      l$yardCode,
      Object.hashAll(l$levels.map((v) => v)),
      l$id,
      l$modified,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$workflow ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$currentLevel = currentLevel;
    final lOther$currentLevel = other.currentLevel;
    if (l$currentLevel != lOther$currentLevel) {
      return false;
    }
    final l$stocktakeStatus = stocktakeStatus;
    final lOther$stocktakeStatus = other.stocktakeStatus;
    if (l$stocktakeStatus != lOther$stocktakeStatus) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$stocktakeId = stocktakeId;
    final lOther$stocktakeId = other.stocktakeId;
    if (l$stocktakeId != lOther$stocktakeId) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$levelUsers = levelUsers;
    final lOther$levelUsers = other.levelUsers;
    if (l$levelUsers != null && lOther$levelUsers != null) {
      if (l$levelUsers.length != lOther$levelUsers.length) {
        return false;
      }
      for (int i = 0; i < l$levelUsers.length; i++) {
        final l$levelUsers$entry = l$levelUsers[i];
        final lOther$levelUsers$entry = lOther$levelUsers[i];
        if (l$levelUsers$entry != lOther$levelUsers$entry) {
          return false;
        }
      }
    } else if (l$levelUsers != lOther$levelUsers) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$completed = completed;
    final lOther$completed = other.completed;
    if (l$completed != lOther$completed) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$levels = levels;
    final lOther$levels = other.levels;
    if (l$levels.length != lOther$levels.length) {
      return false;
    }
    for (int i = 0; i < l$levels.length; i++) {
      final l$levels$entry = l$levels[i];
      final lOther$levels$entry = lOther$levels[i];
      if (l$levels$entry != lOther$levels$entry) {
        return false;
      }
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetStocktake$stocktake$workflow
    on Query$GetStocktake$stocktake$workflow {
  CopyWith$Query$GetStocktake$stocktake$workflow<
    Query$GetStocktake$stocktake$workflow
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$workflow(this, (i) => i);
}

abstract class CopyWith$Query$GetStocktake$stocktake$workflow<TRes> {
  factory CopyWith$Query$GetStocktake$stocktake$workflow(
    Query$GetStocktake$stocktake$workflow instance,
    TRes Function(Query$GetStocktake$stocktake$workflow) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$workflow;

  factory CopyWith$Query$GetStocktake$stocktake$workflow.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow;

  TRes call({
    int? currentLevel,
    Enum$StocktakeApprovalStatus? stocktakeStatus,
    String? $__typename,
    String? stocktakeId,
    bool? active,
    List<Query$GetStocktake$stocktake$workflow$levelUsers>? levelUsers,
    Query$GetStocktake$stocktake$workflow$created? created,
    bool? completed,
    String? yardCode,
    List<Query$GetStocktake$stocktake$workflow$levels>? levels,
    String? id,
    Query$GetStocktake$stocktake$workflow$modified? modified,
  });
  TRes levelUsers(
    Iterable<Query$GetStocktake$stocktake$workflow$levelUsers>? Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$workflow$levelUsers<
          Query$GetStocktake$stocktake$workflow$levelUsers
        >
      >?,
    )
    _fn,
  );
  CopyWith$Query$GetStocktake$stocktake$workflow$created<TRes> get created;
  TRes levels(
    Iterable<Query$GetStocktake$stocktake$workflow$levels> Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$workflow$levels<
          Query$GetStocktake$stocktake$workflow$levels
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetStocktake$stocktake$workflow$modified<TRes> get modified;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$workflow<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$workflow<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake$workflow(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$workflow _instance;

  final TRes Function(Query$GetStocktake$stocktake$workflow) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentLevel = _undefined,
    Object? stocktakeStatus = _undefined,
    Object? $__typename = _undefined,
    Object? stocktakeId = _undefined,
    Object? active = _undefined,
    Object? levelUsers = _undefined,
    Object? created = _undefined,
    Object? completed = _undefined,
    Object? yardCode = _undefined,
    Object? levels = _undefined,
    Object? id = _undefined,
    Object? modified = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$workflow(
      currentLevel: currentLevel == _undefined || currentLevel == null
          ? _instance.currentLevel
          : (currentLevel as int),
      stocktakeStatus: stocktakeStatus == _undefined || stocktakeStatus == null
          ? _instance.stocktakeStatus
          : (stocktakeStatus as Enum$StocktakeApprovalStatus),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      stocktakeId: stocktakeId == _undefined || stocktakeId == null
          ? _instance.stocktakeId
          : (stocktakeId as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      levelUsers: levelUsers == _undefined
          ? _instance.levelUsers
          : (levelUsers
                as List<Query$GetStocktake$stocktake$workflow$levelUsers>?),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Query$GetStocktake$stocktake$workflow$created),
      completed: completed == _undefined || completed == null
          ? _instance.completed
          : (completed as bool),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      levels: levels == _undefined || levels == null
          ? _instance.levels
          : (levels as List<Query$GetStocktake$stocktake$workflow$levels>),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified as Query$GetStocktake$stocktake$workflow$modified),
    ),
  );

  TRes levelUsers(
    Iterable<Query$GetStocktake$stocktake$workflow$levelUsers>? Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$workflow$levelUsers<
          Query$GetStocktake$stocktake$workflow$levelUsers
        >
      >?,
    )
    _fn,
  ) => call(
    levelUsers: _fn(
      _instance.levelUsers?.map(
        (e) => CopyWith$Query$GetStocktake$stocktake$workflow$levelUsers(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );

  CopyWith$Query$GetStocktake$stocktake$workflow$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetStocktake$stocktake$workflow$created(
      local$created,
      (e) => call(created: e),
    );
  }

  TRes levels(
    Iterable<Query$GetStocktake$stocktake$workflow$levels> Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$workflow$levels<
          Query$GetStocktake$stocktake$workflow$levels
        >
      >,
    )
    _fn,
  ) => call(
    levels: _fn(
      _instance.levels.map(
        (e) =>
            CopyWith$Query$GetStocktake$stocktake$workflow$levels(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Query$GetStocktake$stocktake$workflow$modified<TRes> get modified {
    final local$modified = _instance.modified;
    return CopyWith$Query$GetStocktake$stocktake$workflow$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$workflow<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow(this._res);

  TRes _res;

  call({
    int? currentLevel,
    Enum$StocktakeApprovalStatus? stocktakeStatus,
    String? $__typename,
    String? stocktakeId,
    bool? active,
    List<Query$GetStocktake$stocktake$workflow$levelUsers>? levelUsers,
    Query$GetStocktake$stocktake$workflow$created? created,
    bool? completed,
    String? yardCode,
    List<Query$GetStocktake$stocktake$workflow$levels>? levels,
    String? id,
    Query$GetStocktake$stocktake$workflow$modified? modified,
  }) => _res;

  levelUsers(_fn) => _res;

  CopyWith$Query$GetStocktake$stocktake$workflow$created<TRes> get created =>
      CopyWith$Query$GetStocktake$stocktake$workflow$created.stub(_res);

  levels(_fn) => _res;

  CopyWith$Query$GetStocktake$stocktake$workflow$modified<TRes> get modified =>
      CopyWith$Query$GetStocktake$stocktake$workflow$modified.stub(_res);
}

class Query$GetStocktake$stocktake$conductor
    implements Fragment$StocktakeFields$conductor {
  Query$GetStocktake$stocktake$conductor({
    required this.firstName,
    required this.lastName,
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$GetStocktake$stocktake$conductor.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$conductor(
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String firstName;

  final String lastName;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$firstName, l$lastName, l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$conductor ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$conductor
    on Query$GetStocktake$stocktake$conductor {
  CopyWith$Query$GetStocktake$stocktake$conductor<
    Query$GetStocktake$stocktake$conductor
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$conductor(this, (i) => i);
}

abstract class CopyWith$Query$GetStocktake$stocktake$conductor<TRes> {
  factory CopyWith$Query$GetStocktake$stocktake$conductor(
    Query$GetStocktake$stocktake$conductor instance,
    TRes Function(Query$GetStocktake$stocktake$conductor) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$conductor;

  factory CopyWith$Query$GetStocktake$stocktake$conductor.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStocktake$stocktake$conductor;

  TRes call({
    String? firstName,
    String? lastName,
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetStocktake$stocktake$conductor<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$conductor<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake$conductor(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$conductor _instance;

  final TRes Function(Query$GetStocktake$stocktake$conductor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$conductor(
      firstName: firstName == _undefined || firstName == null
          ? _instance.firstName
          : (firstName as String),
      lastName: lastName == _undefined || lastName == null
          ? _instance.lastName
          : (lastName as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$conductor<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$conductor<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$conductor(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    String? id,
    String? $__typename,
  }) => _res;
}

class Query$GetStocktake$stocktake$comments
    implements Fragment$StocktakeFields$comments {
  Query$GetStocktake$stocktake$comments({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Query$GetStocktake$stocktake$comments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$comments(
      content: (l$content as String),
      created: Query$GetStocktake$stocktake$comments$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Query$GetStocktake$stocktake$comments$created created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([l$content, l$created, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$comments ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$comments
    on Query$GetStocktake$stocktake$comments {
  CopyWith$Query$GetStocktake$stocktake$comments<
    Query$GetStocktake$stocktake$comments
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$comments(this, (i) => i);
}

abstract class CopyWith$Query$GetStocktake$stocktake$comments<TRes> {
  factory CopyWith$Query$GetStocktake$stocktake$comments(
    Query$GetStocktake$stocktake$comments instance,
    TRes Function(Query$GetStocktake$stocktake$comments) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$comments;

  factory CopyWith$Query$GetStocktake$stocktake$comments.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStocktake$stocktake$comments;

  TRes call({
    String? content,
    Query$GetStocktake$stocktake$comments$created? created,
    String? $__typename,
  });
  CopyWith$Query$GetStocktake$stocktake$comments$created<TRes> get created;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$comments<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$comments<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake$comments(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$comments _instance;

  final TRes Function(Query$GetStocktake$stocktake$comments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$comments(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Query$GetStocktake$stocktake$comments$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$comments$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetStocktake$stocktake$comments$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$comments<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$comments<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$comments(this._res);

  TRes _res;

  call({
    String? content,
    Query$GetStocktake$stocktake$comments$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$comments$created<TRes> get created =>
      CopyWith$Query$GetStocktake$stocktake$comments$created.stub(_res);
}

class Query$GetStocktake$stocktake$comments$created
    implements Fragment$StocktakeFields$comments$created {
  Query$GetStocktake$stocktake$comments$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$GetStocktake$stocktake$comments$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$comments$created(
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
    if (other is! Query$GetStocktake$stocktake$comments$created ||
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

extension UtilityExtension$Query$GetStocktake$stocktake$comments$created
    on Query$GetStocktake$stocktake$comments$created {
  CopyWith$Query$GetStocktake$stocktake$comments$created<
    Query$GetStocktake$stocktake$comments$created
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$comments$created(this, (i) => i);
}

abstract class CopyWith$Query$GetStocktake$stocktake$comments$created<TRes> {
  factory CopyWith$Query$GetStocktake$stocktake$comments$created(
    Query$GetStocktake$stocktake$comments$created instance,
    TRes Function(Query$GetStocktake$stocktake$comments$created) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$comments$created;

  factory CopyWith$Query$GetStocktake$stocktake$comments$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$comments$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetStocktake$stocktake$comments$created<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$comments$created<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake$comments$created(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$comments$created _instance;

  final TRes Function(Query$GetStocktake$stocktake$comments$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$comments$created(
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

class _CopyWithStubImpl$Query$GetStocktake$stocktake$comments$created<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$comments$created<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$comments$created(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  }) => _res;
}

class Query$GetStocktake$stocktake$stocktakeLocations
    implements Fragment$StocktakeFields$stocktakeLocations {
  Query$GetStocktake$stocktake$stocktakeLocations({
    required this.locationId,
    this.location,
    this.productId,
    this.product,
    this.snapshot,
    required this.takenWeights,
    this.$__typename = 'StocktakeLocation',
    this.netWeightMt,
    required this.weightVariance,
    required this.valueVariance,
    required this.mediaAssets,
    required this.comments,
    required this.status,
  });

  factory Query$GetStocktake$stocktake$stocktakeLocations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$locationId = json['locationId'];
    final l$location = json['location'];
    final l$productId = json['productId'];
    final l$product = json['product'];
    final l$snapshot = json['snapshot'];
    final l$takenWeights = json['takenWeights'];
    final l$$__typename = json['__typename'];
    final l$netWeightMt = json['netWeightMt'];
    final l$weightVariance = json['weightVariance'];
    final l$valueVariance = json['valueVariance'];
    final l$mediaAssets = json['mediaAssets'];
    final l$comments = json['comments'];
    final l$status = json['status'];
    return Query$GetStocktake$stocktake$stocktakeLocations(
      locationId: (l$locationId as String),
      location: l$location == null
          ? null
          : Query$GetStocktake$stocktake$stocktakeLocations$location.fromJson(
              (l$location as Map<String, dynamic>),
            ),
      productId: (l$productId as String?),
      product: l$product == null
          ? null
          : Query$GetStocktake$stocktake$stocktakeLocations$product.fromJson(
              (l$product as Map<String, dynamic>),
            ),
      snapshot: l$snapshot == null
          ? null
          : Query$GetStocktake$stocktake$stocktakeLocations$snapshot.fromJson(
              (l$snapshot as Map<String, dynamic>),
            ),
      takenWeights: (l$takenWeights as List<dynamic>)
          .map(
            (e) =>
                Query$GetStocktake$stocktake$stocktakeLocations$takenWeights.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
      netWeightMt: (l$netWeightMt as num?)?.toDouble(),
      weightVariance: Fragment$UomValueFragment.fromJson(
        (l$weightVariance as Map<String, dynamic>),
      ),
      valueVariance: (l$valueVariance as num).toDouble(),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      comments: (l$comments as List<dynamic>)
          .map(
            (e) =>
                Query$GetStocktake$stocktake$stocktakeLocations$comments.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      status: fromJson$Enum$StockTakeLocationStatus((l$status as String)),
    );
  }

  final String locationId;

  final Query$GetStocktake$stocktake$stocktakeLocations$location? location;

  final String? productId;

  final Query$GetStocktake$stocktake$stocktakeLocations$product? product;

  final Query$GetStocktake$stocktake$stocktakeLocations$snapshot? snapshot;

  final List<Query$GetStocktake$stocktake$stocktakeLocations$takenWeights>
  takenWeights;

  final String $__typename;

  final double? netWeightMt;

  final Fragment$UomValueFragment weightVariance;

  final double valueVariance;

  final List<Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets>
  mediaAssets;

  final List<Query$GetStocktake$stocktake$stocktakeLocations$comments> comments;

  final Enum$StockTakeLocationStatus status;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$locationId = locationId;
    _resultData['locationId'] = l$locationId;
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$productId = productId;
    _resultData['productId'] = l$productId;
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$snapshot = snapshot;
    _resultData['snapshot'] = l$snapshot?.toJson();
    final l$takenWeights = takenWeights;
    _resultData['takenWeights'] = l$takenWeights
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$netWeightMt = netWeightMt;
    _resultData['netWeightMt'] = l$netWeightMt;
    final l$weightVariance = weightVariance;
    _resultData['weightVariance'] = l$weightVariance.toJson();
    final l$valueVariance = valueVariance;
    _resultData['valueVariance'] = l$valueVariance;
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$comments = comments;
    _resultData['comments'] = l$comments.map((e) => e.toJson()).toList();
    final l$status = status;
    _resultData['status'] = toJson$Enum$StockTakeLocationStatus(l$status);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$locationId = locationId;
    final l$location = location;
    final l$productId = productId;
    final l$product = product;
    final l$snapshot = snapshot;
    final l$takenWeights = takenWeights;
    final l$$__typename = $__typename;
    final l$netWeightMt = netWeightMt;
    final l$weightVariance = weightVariance;
    final l$valueVariance = valueVariance;
    final l$mediaAssets = mediaAssets;
    final l$comments = comments;
    final l$status = status;
    return Object.hashAll([
      l$locationId,
      l$location,
      l$productId,
      l$product,
      l$snapshot,
      Object.hashAll(l$takenWeights.map((v) => v)),
      l$$__typename,
      l$netWeightMt,
      l$weightVariance,
      l$valueVariance,
      Object.hashAll(l$mediaAssets.map((v) => v)),
      Object.hashAll(l$comments.map((v) => v)),
      l$status,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$stocktakeLocations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$locationId = locationId;
    final lOther$locationId = other.locationId;
    if (l$locationId != lOther$locationId) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    final l$snapshot = snapshot;
    final lOther$snapshot = other.snapshot;
    if (l$snapshot != lOther$snapshot) {
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
    final l$netWeightMt = netWeightMt;
    final lOther$netWeightMt = other.netWeightMt;
    if (l$netWeightMt != lOther$netWeightMt) {
      return false;
    }
    final l$weightVariance = weightVariance;
    final lOther$weightVariance = other.weightVariance;
    if (l$weightVariance != lOther$weightVariance) {
      return false;
    }
    final l$valueVariance = valueVariance;
    final lOther$valueVariance = other.valueVariance;
    if (l$valueVariance != lOther$valueVariance) {
      return false;
    }
    final l$mediaAssets = mediaAssets;
    final lOther$mediaAssets = other.mediaAssets;
    if (l$mediaAssets.length != lOther$mediaAssets.length) {
      return false;
    }
    for (int i = 0; i < l$mediaAssets.length; i++) {
      final l$mediaAssets$entry = l$mediaAssets[i];
      final lOther$mediaAssets$entry = lOther$mediaAssets[i];
      if (l$mediaAssets$entry != lOther$mediaAssets$entry) {
        return false;
      }
    }
    final l$comments = comments;
    final lOther$comments = other.comments;
    if (l$comments.length != lOther$comments.length) {
      return false;
    }
    for (int i = 0; i < l$comments.length; i++) {
      final l$comments$entry = l$comments[i];
      final lOther$comments$entry = lOther$comments[i];
      if (l$comments$entry != lOther$comments$entry) {
        return false;
      }
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetStocktake$stocktake$stocktakeLocations
    on Query$GetStocktake$stocktake$stocktakeLocations {
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations<
    Query$GetStocktake$stocktake$stocktakeLocations
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations(this, (i) => i);
}

abstract class CopyWith$Query$GetStocktake$stocktake$stocktakeLocations<TRes> {
  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations(
    Query$GetStocktake$stocktake$stocktakeLocations instance,
    TRes Function(Query$GetStocktake$stocktake$stocktakeLocations) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations;

  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations;

  TRes call({
    String? locationId,
    Query$GetStocktake$stocktake$stocktakeLocations$location? location,
    String? productId,
    Query$GetStocktake$stocktake$stocktakeLocations$product? product,
    Query$GetStocktake$stocktake$stocktakeLocations$snapshot? snapshot,
    List<Query$GetStocktake$stocktake$stocktakeLocations$takenWeights>?
    takenWeights,
    String? $__typename,
    double? netWeightMt,
    Fragment$UomValueFragment? weightVariance,
    double? valueVariance,
    List<Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets>?
    mediaAssets,
    List<Query$GetStocktake$stocktake$stocktakeLocations$comments>? comments,
    Enum$StockTakeLocationStatus? status,
  });
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$location<TRes>
  get location;
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product<TRes>
  get product;
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot<TRes>
  get snapshot;
  TRes takenWeights(
    Iterable<Query$GetStocktake$stocktake$stocktakeLocations$takenWeights>
    Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights<
          Query$GetStocktake$stocktake$stocktakeLocations$takenWeights
        >
      >,
    )
    _fn,
  );
  CopyWith$Fragment$UomValueFragment<TRes> get weightVariance;
  TRes mediaAssets(
    Iterable<Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets>
    Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets<
          Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets
        >
      >,
    )
    _fn,
  );
  TRes comments(
    Iterable<Query$GetStocktake$stocktake$stocktakeLocations$comments> Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments<
          Query$GetStocktake$stocktake$stocktakeLocations$comments
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$stocktakeLocations<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$stocktakeLocations _instance;

  final TRes Function(Query$GetStocktake$stocktake$stocktakeLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? locationId = _undefined,
    Object? location = _undefined,
    Object? productId = _undefined,
    Object? product = _undefined,
    Object? snapshot = _undefined,
    Object? takenWeights = _undefined,
    Object? $__typename = _undefined,
    Object? netWeightMt = _undefined,
    Object? weightVariance = _undefined,
    Object? valueVariance = _undefined,
    Object? mediaAssets = _undefined,
    Object? comments = _undefined,
    Object? status = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$stocktakeLocations(
      locationId: locationId == _undefined || locationId == null
          ? _instance.locationId
          : (locationId as String),
      location: location == _undefined
          ? _instance.location
          : (location
                as Query$GetStocktake$stocktake$stocktakeLocations$location?),
      productId: productId == _undefined
          ? _instance.productId
          : (productId as String?),
      product: product == _undefined
          ? _instance.product
          : (product
                as Query$GetStocktake$stocktake$stocktakeLocations$product?),
      snapshot: snapshot == _undefined
          ? _instance.snapshot
          : (snapshot
                as Query$GetStocktake$stocktake$stocktakeLocations$snapshot?),
      takenWeights: takenWeights == _undefined || takenWeights == null
          ? _instance.takenWeights
          : (takenWeights
                as List<
                  Query$GetStocktake$stocktake$stocktakeLocations$takenWeights
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      netWeightMt: netWeightMt == _undefined
          ? _instance.netWeightMt
          : (netWeightMt as double?),
      weightVariance: weightVariance == _undefined || weightVariance == null
          ? _instance.weightVariance
          : (weightVariance as Fragment$UomValueFragment),
      valueVariance: valueVariance == _undefined || valueVariance == null
          ? _instance.valueVariance
          : (valueVariance as double),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets
                as List<
                  Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets
                >),
      comments: comments == _undefined || comments == null
          ? _instance.comments
          : (comments
                as List<
                  Query$GetStocktake$stocktake$stocktakeLocations$comments
                >),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$StockTakeLocationStatus),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$location<TRes>
  get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$location.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$location(
            local$location,
            (e) => call(location: e),
          );
  }

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product<TRes>
  get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product(
            local$product,
            (e) => call(product: e),
          );
  }

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot<TRes>
  get snapshot {
    final local$snapshot = _instance.snapshot;
    return local$snapshot == null
        ? CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot(
            local$snapshot,
            (e) => call(snapshot: e),
          );
  }

  TRes takenWeights(
    Iterable<Query$GetStocktake$stocktake$stocktakeLocations$takenWeights>
    Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights<
          Query$GetStocktake$stocktake$stocktakeLocations$takenWeights
        >
      >,
    )
    _fn,
  ) => call(
    takenWeights: _fn(
      _instance.takenWeights.map(
        (e) =>
            CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  CopyWith$Fragment$UomValueFragment<TRes> get weightVariance {
    final local$weightVariance = _instance.weightVariance;
    return CopyWith$Fragment$UomValueFragment(
      local$weightVariance,
      (e) => call(weightVariance: e),
    );
  }

  TRes mediaAssets(
    Iterable<Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets>
    Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets<
          Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) =>
            CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes comments(
    Iterable<Query$GetStocktake$stocktake$stocktakeLocations$comments> Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments<
          Query$GetStocktake$stocktake$stocktakeLocations$comments
        >
      >,
    )
    _fn,
  ) => call(
    comments: _fn(
      _instance.comments.map(
        (e) =>
            CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$stocktakeLocations<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations(this._res);

  TRes _res;

  call({
    String? locationId,
    Query$GetStocktake$stocktake$stocktakeLocations$location? location,
    String? productId,
    Query$GetStocktake$stocktake$stocktakeLocations$product? product,
    Query$GetStocktake$stocktake$stocktakeLocations$snapshot? snapshot,
    List<Query$GetStocktake$stocktake$stocktakeLocations$takenWeights>?
    takenWeights,
    String? $__typename,
    double? netWeightMt,
    Fragment$UomValueFragment? weightVariance,
    double? valueVariance,
    List<Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets>?
    mediaAssets,
    List<Query$GetStocktake$stocktake$stocktakeLocations$comments>? comments,
    Enum$StockTakeLocationStatus? status,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$location<TRes>
  get location =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$location.stub(
        _res,
      );

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product<TRes>
  get product =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product.stub(
        _res,
      );

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot<TRes>
  get snapshot =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot.stub(
        _res,
      );

  takenWeights(_fn) => _res;

  CopyWith$Fragment$UomValueFragment<TRes> get weightVariance =>
      CopyWith$Fragment$UomValueFragment.stub(_res);

  mediaAssets(_fn) => _res;

  comments(_fn) => _res;
}

class Query$GetStocktake$stocktake$stocktakeLocations$location
    implements Fragment$StocktakeFields$stocktakeLocations$location {
  Query$GetStocktake$stocktake$stocktakeLocations$location({
    required this.code,
    required this.description,
    this.$__typename = 'InventoryLocation',
    required this.active,
    required this.inventoryLocationType,
    required this.weight,
    required this.rate,
    required this.value,
  });

  factory Query$GetStocktake$stocktake$stocktakeLocations$location.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    final l$active = json['active'];
    final l$inventoryLocationType = json['inventoryLocationType'];
    final l$weight = json['weight'];
    final l$rate = json['rate'];
    final l$value = json['value'];
    return Query$GetStocktake$stocktake$stocktakeLocations$location(
      code: (l$code as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
      active: (l$active as bool),
      inventoryLocationType: fromJson$Enum$InventoryLocationType(
        (l$inventoryLocationType as String),
      ),
      weight: Fragment$UomValueFragment.fromJson(
        (l$weight as Map<String, dynamic>),
      ),
      rate: Fragment$UomValueFragment.fromJson(
        (l$rate as Map<String, dynamic>),
      ),
      value: (l$value as num).toDouble(),
    );
  }

  final String code;

  final String description;

  final String $__typename;

  final bool active;

  final Enum$InventoryLocationType inventoryLocationType;

  final Fragment$UomValueFragment weight;

  final Fragment$UomValueFragment rate;

  final double value;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$inventoryLocationType = inventoryLocationType;
    _resultData['inventoryLocationType'] = toJson$Enum$InventoryLocationType(
      l$inventoryLocationType,
    );
    final l$weight = weight;
    _resultData['weight'] = l$weight.toJson();
    final l$rate = rate;
    _resultData['rate'] = l$rate.toJson();
    final l$value = value;
    _resultData['value'] = l$value;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$description = description;
    final l$$__typename = $__typename;
    final l$active = active;
    final l$inventoryLocationType = inventoryLocationType;
    final l$weight = weight;
    final l$rate = rate;
    final l$value = value;
    return Object.hashAll([
      l$code,
      l$description,
      l$$__typename,
      l$active,
      l$inventoryLocationType,
      l$weight,
      l$rate,
      l$value,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$stocktakeLocations$location ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$inventoryLocationType = inventoryLocationType;
    final lOther$inventoryLocationType = other.inventoryLocationType;
    if (l$inventoryLocationType != lOther$inventoryLocationType) {
      return false;
    }
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetStocktake$stocktake$stocktakeLocations$location
    on Query$GetStocktake$stocktake$stocktakeLocations$location {
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$location<
    Query$GetStocktake$stocktake$stocktakeLocations$location
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$location(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$location<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$location(
    Query$GetStocktake$stocktake$stocktakeLocations$location instance,
    TRes Function(Query$GetStocktake$stocktake$stocktakeLocations$location)
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$location;

  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$location.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$location;

  TRes call({
    String? code,
    String? description,
    String? $__typename,
    bool? active,
    Enum$InventoryLocationType? inventoryLocationType,
    Fragment$UomValueFragment? weight,
    Fragment$UomValueFragment? rate,
    double? value,
  });
  CopyWith$Fragment$UomValueFragment<TRes> get weight;
  CopyWith$Fragment$UomValueFragment<TRes> get rate;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$location<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$location<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$location(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$stocktakeLocations$location _instance;

  final TRes Function(Query$GetStocktake$stocktake$stocktakeLocations$location)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
    Object? active = _undefined,
    Object? inventoryLocationType = _undefined,
    Object? weight = _undefined,
    Object? rate = _undefined,
    Object? value = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$stocktakeLocations$location(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      inventoryLocationType:
          inventoryLocationType == _undefined || inventoryLocationType == null
          ? _instance.inventoryLocationType
          : (inventoryLocationType as Enum$InventoryLocationType),
      weight: weight == _undefined || weight == null
          ? _instance.weight
          : (weight as Fragment$UomValueFragment),
      rate: rate == _undefined || rate == null
          ? _instance.rate
          : (rate as Fragment$UomValueFragment),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
    ),
  );

  CopyWith$Fragment$UomValueFragment<TRes> get weight {
    final local$weight = _instance.weight;
    return CopyWith$Fragment$UomValueFragment(
      local$weight,
      (e) => call(weight: e),
    );
  }

  CopyWith$Fragment$UomValueFragment<TRes> get rate {
    final local$rate = _instance.rate;
    return CopyWith$Fragment$UomValueFragment(local$rate, (e) => call(rate: e));
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$location<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$location<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$location(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    String? description,
    String? $__typename,
    bool? active,
    Enum$InventoryLocationType? inventoryLocationType,
    Fragment$UomValueFragment? weight,
    Fragment$UomValueFragment? rate,
    double? value,
  }) => _res;

  CopyWith$Fragment$UomValueFragment<TRes> get weight =>
      CopyWith$Fragment$UomValueFragment.stub(_res);

  CopyWith$Fragment$UomValueFragment<TRes> get rate =>
      CopyWith$Fragment$UomValueFragment.stub(_res);
}

class Query$GetStocktake$stocktake$stocktakeLocations$product
    implements Fragment$StocktakeFields$stocktakeLocations$product {
  Query$GetStocktake$stocktake$stocktakeLocations$product({
    required this.code,
    required this.description,
    required this.classification,
    this.$__typename = 'Product',
  });

  factory Query$GetStocktake$stocktake$stocktakeLocations$product.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$description = json['description'];
    final l$classification = json['classification'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$stocktakeLocations$product(
      code: (l$code as String),
      description: (l$description as String),
      classification:
          Query$GetStocktake$stocktake$stocktakeLocations$product$classification.fromJson(
            (l$classification as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String description;

  final Query$GetStocktake$stocktake$stocktakeLocations$product$classification
  classification;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$classification = classification;
    _resultData['classification'] = l$classification.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$description = description;
    final l$classification = classification;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$description,
      l$classification,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$stocktakeLocations$product ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$stocktakeLocations$product
    on Query$GetStocktake$stocktake$stocktakeLocations$product {
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product<
    Query$GetStocktake$stocktake$stocktakeLocations$product
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product(
    Query$GetStocktake$stocktake$stocktakeLocations$product instance,
    TRes Function(Query$GetStocktake$stocktake$stocktakeLocations$product) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$product;

  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$product;

  TRes call({
    String? code,
    String? description,
    Query$GetStocktake$stocktake$stocktakeLocations$product$classification?
    classification,
    String? $__typename,
  });
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product$classification<
    TRes
  >
  get classification;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$product<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$product(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$stocktakeLocations$product _instance;

  final TRes Function(Query$GetStocktake$stocktake$stocktakeLocations$product)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? description = _undefined,
    Object? classification = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$stocktakeLocations$product(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      classification: classification == _undefined || classification == null
          ? _instance.classification
          : (classification
                as Query$GetStocktake$stocktake$stocktakeLocations$product$classification),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product$classification<
    TRes
  >
  get classification {
    final local$classification = _instance.classification;
    return CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product$classification(
      local$classification,
      (e) => call(classification: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$product<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$product(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    String? description,
    Query$GetStocktake$stocktake$stocktakeLocations$product$classification?
    classification,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product$classification<
    TRes
  >
  get classification =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product$classification.stub(
        _res,
      );
}

class Query$GetStocktake$stocktake$stocktakeLocations$product$classification
    implements
        Fragment$StocktakeFields$stocktakeLocations$product$classification {
  Query$GetStocktake$stocktake$stocktakeLocations$product$classification({
    required this.family,
    required this.line,
    required this.$class,
    this.$__typename = 'ProductClassification',
  });

  factory Query$GetStocktake$stocktake$stocktakeLocations$product$classification.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$family = json['family'];
    final l$line = json['line'];
    final l$$class = json['class'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$stocktakeLocations$product$classification(
      family: (l$family as String),
      line: (l$line as String),
      $class: (l$$class as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String family;

  final String line;

  final String $class;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$family = family;
    _resultData['family'] = l$family;
    final l$line = line;
    _resultData['line'] = l$line;
    final l$$class = $class;
    _resultData['class'] = l$$class;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$family = family;
    final l$line = line;
    final l$$class = $class;
    final l$$__typename = $__typename;
    return Object.hashAll([l$family, l$line, l$$class, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetStocktake$stocktake$stocktakeLocations$product$classification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
      return false;
    }
    final l$line = line;
    final lOther$line = other.line;
    if (l$line != lOther$line) {
      return false;
    }
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (l$$class != lOther$$class) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$stocktakeLocations$product$classification
    on Query$GetStocktake$stocktake$stocktakeLocations$product$classification {
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product$classification<
    Query$GetStocktake$stocktake$stocktakeLocations$product$classification
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product$classification(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product$classification<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product$classification(
    Query$GetStocktake$stocktake$stocktakeLocations$product$classification
    instance,
    TRes Function(
      Query$GetStocktake$stocktake$stocktakeLocations$product$classification,
    )
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$product$classification;

  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product$classification.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$product$classification;

  TRes call({
    String? family,
    String? line,
    String? $class,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$product$classification<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product$classification<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$product$classification(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$stocktakeLocations$product$classification
  _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$stocktakeLocations$product$classification,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? family = _undefined,
    Object? line = _undefined,
    Object? $class = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$stocktakeLocations$product$classification(
      family: family == _undefined || family == null
          ? _instance.family
          : (family as String),
      line: line == _undefined || line == null
          ? _instance.line
          : (line as String),
      $class: $class == _undefined || $class == null
          ? _instance.$class
          : ($class as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$product$classification<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$product$classification<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$product$classification(
    this._res,
  );

  TRes _res;

  call({String? family, String? line, String? $class, String? $__typename}) =>
      _res;
}

class Query$GetStocktake$stocktake$stocktakeLocations$snapshot
    implements Fragment$StocktakeFields$stocktakeLocations$snapshot {
  Query$GetStocktake$stocktake$stocktakeLocations$snapshot({
    required this.deltaWeight,
    required this.created,
    required this.currentWeight,
    required this.currentCount,
    required this.value,
    required this.rate,
    required this.unpricedWeight,
    required this.unpricedDeltaWeight,
    this.$__typename = 'Snapshot',
  });

  factory Query$GetStocktake$stocktake$stocktakeLocations$snapshot.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$deltaWeight = json['deltaWeight'];
    final l$created = json['created'];
    final l$currentWeight = json['currentWeight'];
    final l$currentCount = json['currentCount'];
    final l$value = json['value'];
    final l$rate = json['rate'];
    final l$unpricedWeight = json['unpricedWeight'];
    final l$unpricedDeltaWeight = json['unpricedDeltaWeight'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$stocktakeLocations$snapshot(
      deltaWeight: Fragment$UomValueFragment.fromJson(
        (l$deltaWeight as Map<String, dynamic>),
      ),
      created:
          Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      currentWeight: Fragment$UomValueFragment.fromJson(
        (l$currentWeight as Map<String, dynamic>),
      ),
      currentCount: (l$currentCount as int),
      value: (l$value as num).toDouble(),
      rate: Fragment$UomValueFragment.fromJson(
        (l$rate as Map<String, dynamic>),
      ),
      unpricedWeight: Fragment$UomValueFragment.fromJson(
        (l$unpricedWeight as Map<String, dynamic>),
      ),
      unpricedDeltaWeight: Fragment$UomValueFragment.fromJson(
        (l$unpricedDeltaWeight as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$UomValueFragment deltaWeight;

  final Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created
  created;

  final Fragment$UomValueFragment currentWeight;

  final int currentCount;

  final double value;

  final Fragment$UomValueFragment rate;

  final Fragment$UomValueFragment unpricedWeight;

  final Fragment$UomValueFragment unpricedDeltaWeight;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deltaWeight = deltaWeight;
    _resultData['deltaWeight'] = l$deltaWeight.toJson();
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$currentWeight = currentWeight;
    _resultData['currentWeight'] = l$currentWeight.toJson();
    final l$currentCount = currentCount;
    _resultData['currentCount'] = l$currentCount;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$rate = rate;
    _resultData['rate'] = l$rate.toJson();
    final l$unpricedWeight = unpricedWeight;
    _resultData['unpricedWeight'] = l$unpricedWeight.toJson();
    final l$unpricedDeltaWeight = unpricedDeltaWeight;
    _resultData['unpricedDeltaWeight'] = l$unpricedDeltaWeight.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deltaWeight = deltaWeight;
    final l$created = created;
    final l$currentWeight = currentWeight;
    final l$currentCount = currentCount;
    final l$value = value;
    final l$rate = rate;
    final l$unpricedWeight = unpricedWeight;
    final l$unpricedDeltaWeight = unpricedDeltaWeight;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deltaWeight,
      l$created,
      l$currentWeight,
      l$currentCount,
      l$value,
      l$rate,
      l$unpricedWeight,
      l$unpricedDeltaWeight,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$stocktakeLocations$snapshot ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deltaWeight = deltaWeight;
    final lOther$deltaWeight = other.deltaWeight;
    if (l$deltaWeight != lOther$deltaWeight) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$currentWeight = currentWeight;
    final lOther$currentWeight = other.currentWeight;
    if (l$currentWeight != lOther$currentWeight) {
      return false;
    }
    final l$currentCount = currentCount;
    final lOther$currentCount = other.currentCount;
    if (l$currentCount != lOther$currentCount) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$unpricedWeight = unpricedWeight;
    final lOther$unpricedWeight = other.unpricedWeight;
    if (l$unpricedWeight != lOther$unpricedWeight) {
      return false;
    }
    final l$unpricedDeltaWeight = unpricedDeltaWeight;
    final lOther$unpricedDeltaWeight = other.unpricedDeltaWeight;
    if (l$unpricedDeltaWeight != lOther$unpricedDeltaWeight) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$stocktakeLocations$snapshot
    on Query$GetStocktake$stocktake$stocktakeLocations$snapshot {
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot<
    Query$GetStocktake$stocktake$stocktakeLocations$snapshot
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot(
    Query$GetStocktake$stocktake$stocktakeLocations$snapshot instance,
    TRes Function(Query$GetStocktake$stocktake$stocktakeLocations$snapshot)
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$snapshot;

  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$snapshot;

  TRes call({
    Fragment$UomValueFragment? deltaWeight,
    Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created? created,
    Fragment$UomValueFragment? currentWeight,
    int? currentCount,
    double? value,
    Fragment$UomValueFragment? rate,
    Fragment$UomValueFragment? unpricedWeight,
    Fragment$UomValueFragment? unpricedDeltaWeight,
    String? $__typename,
  });
  CopyWith$Fragment$UomValueFragment<TRes> get deltaWeight;
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created<
    TRes
  >
  get created;
  CopyWith$Fragment$UomValueFragment<TRes> get currentWeight;
  CopyWith$Fragment$UomValueFragment<TRes> get rate;
  CopyWith$Fragment$UomValueFragment<TRes> get unpricedWeight;
  CopyWith$Fragment$UomValueFragment<TRes> get unpricedDeltaWeight;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$snapshot<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$snapshot(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$stocktakeLocations$snapshot _instance;

  final TRes Function(Query$GetStocktake$stocktake$stocktakeLocations$snapshot)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deltaWeight = _undefined,
    Object? created = _undefined,
    Object? currentWeight = _undefined,
    Object? currentCount = _undefined,
    Object? value = _undefined,
    Object? rate = _undefined,
    Object? unpricedWeight = _undefined,
    Object? unpricedDeltaWeight = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$stocktakeLocations$snapshot(
      deltaWeight: deltaWeight == _undefined || deltaWeight == null
          ? _instance.deltaWeight
          : (deltaWeight as Fragment$UomValueFragment),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created),
      currentWeight: currentWeight == _undefined || currentWeight == null
          ? _instance.currentWeight
          : (currentWeight as Fragment$UomValueFragment),
      currentCount: currentCount == _undefined || currentCount == null
          ? _instance.currentCount
          : (currentCount as int),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      rate: rate == _undefined || rate == null
          ? _instance.rate
          : (rate as Fragment$UomValueFragment),
      unpricedWeight: unpricedWeight == _undefined || unpricedWeight == null
          ? _instance.unpricedWeight
          : (unpricedWeight as Fragment$UomValueFragment),
      unpricedDeltaWeight:
          unpricedDeltaWeight == _undefined || unpricedDeltaWeight == null
          ? _instance.unpricedDeltaWeight
          : (unpricedDeltaWeight as Fragment$UomValueFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$UomValueFragment<TRes> get deltaWeight {
    final local$deltaWeight = _instance.deltaWeight;
    return CopyWith$Fragment$UomValueFragment(
      local$deltaWeight,
      (e) => call(deltaWeight: e),
    );
  }

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Fragment$UomValueFragment<TRes> get currentWeight {
    final local$currentWeight = _instance.currentWeight;
    return CopyWith$Fragment$UomValueFragment(
      local$currentWeight,
      (e) => call(currentWeight: e),
    );
  }

  CopyWith$Fragment$UomValueFragment<TRes> get rate {
    final local$rate = _instance.rate;
    return CopyWith$Fragment$UomValueFragment(local$rate, (e) => call(rate: e));
  }

  CopyWith$Fragment$UomValueFragment<TRes> get unpricedWeight {
    final local$unpricedWeight = _instance.unpricedWeight;
    return CopyWith$Fragment$UomValueFragment(
      local$unpricedWeight,
      (e) => call(unpricedWeight: e),
    );
  }

  CopyWith$Fragment$UomValueFragment<TRes> get unpricedDeltaWeight {
    final local$unpricedDeltaWeight = _instance.unpricedDeltaWeight;
    return CopyWith$Fragment$UomValueFragment(
      local$unpricedDeltaWeight,
      (e) => call(unpricedDeltaWeight: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$snapshot<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$snapshot(
    this._res,
  );

  TRes _res;

  call({
    Fragment$UomValueFragment? deltaWeight,
    Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created? created,
    Fragment$UomValueFragment? currentWeight,
    int? currentCount,
    double? value,
    Fragment$UomValueFragment? rate,
    Fragment$UomValueFragment? unpricedWeight,
    Fragment$UomValueFragment? unpricedDeltaWeight,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$UomValueFragment<TRes> get deltaWeight =>
      CopyWith$Fragment$UomValueFragment.stub(_res);

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created<
    TRes
  >
  get created =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created.stub(
        _res,
      );

  CopyWith$Fragment$UomValueFragment<TRes> get currentWeight =>
      CopyWith$Fragment$UomValueFragment.stub(_res);

  CopyWith$Fragment$UomValueFragment<TRes> get rate =>
      CopyWith$Fragment$UomValueFragment.stub(_res);

  CopyWith$Fragment$UomValueFragment<TRes> get unpricedWeight =>
      CopyWith$Fragment$UomValueFragment.stub(_res);

  CopyWith$Fragment$UomValueFragment<TRes> get unpricedDeltaWeight =>
      CopyWith$Fragment$UomValueFragment.stub(_res);
}

class Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created
    implements Fragment$StocktakeFields$stocktakeLocations$snapshot$created {
  Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created({
    required this.at,
    this.user,
    this.$__typename = 'Created',
  });

  factory Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created(
      at: DateTime.parse((l$at as String)),
      user: l$user == null
          ? null
          : Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user?
  user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created
    on Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created {
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created<
    Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created(
    Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created instance,
    TRes Function(
      Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created,
    )
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created;

  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created;

  TRes call({
    DateTime? at,
    Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user? user,
    String? $__typename,
  });
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user<
    TRes
  >
  get user;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created
  _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      user: user == _undefined
          ? _instance.user
          : (user
                as Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user<
    TRes
  >
  get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user? user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user<
    TRes
  >
  get user =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user.stub(
        _res,
      );
}

class Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user
    implements
        Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user {
  Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user({
    required this.name,
    this.$__typename = 'UserInfo',
  });

  factory Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user
    on Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user {
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user<
    Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user(
    Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user
    instance,
    TRes Function(
      Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user,
    )
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user;

  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user
  _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$snapshot$created$user(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}

class Query$GetStocktake$stocktake$stocktakeLocations$takenWeights
    implements Fragment$StocktakeFields$stocktakeLocations$takenWeights {
  Query$GetStocktake$stocktake$stocktakeLocations$takenWeights({
    required this.id,
    required this.title,
    required this.grossWeight,
    required this.tareWeight,
    required this.isDeleted,
    required this.created,
    required this.captureMethod,
    this.$__typename = 'StocktakeWeight',
    this.grossWeightSerialNumber,
    this.tareWeightSerialNumber,
    this.grossWeightScaleIdentifier,
    this.tareWeightScaleIdentifier,
    required this.comments,
  });

  factory Query$GetStocktake$stocktake$stocktakeLocations$takenWeights.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$grossWeight = json['grossWeight'];
    final l$tareWeight = json['tareWeight'];
    final l$isDeleted = json['isDeleted'];
    final l$created = json['created'];
    final l$captureMethod = json['captureMethod'];
    final l$$__typename = json['__typename'];
    final l$grossWeightSerialNumber = json['grossWeightSerialNumber'];
    final l$tareWeightSerialNumber = json['tareWeightSerialNumber'];
    final l$grossWeightScaleIdentifier = json['grossWeightScaleIdentifier'];
    final l$tareWeightScaleIdentifier = json['tareWeightScaleIdentifier'];
    final l$comments = json['comments'];
    return Query$GetStocktake$stocktake$stocktakeLocations$takenWeights(
      id: (l$id as int),
      title: (l$title as String),
      grossWeight:
          Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight.fromJson(
            (l$grossWeight as Map<String, dynamic>),
          ),
      tareWeight:
          Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight.fromJson(
            (l$tareWeight as Map<String, dynamic>),
          ),
      isDeleted: (l$isDeleted as bool),
      created:
          Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      captureMethod: fromJson$Enum$StockTakeWeightCaptureMethod(
        (l$captureMethod as String),
      ),
      $__typename: (l$$__typename as String),
      grossWeightSerialNumber: (l$grossWeightSerialNumber as String?),
      tareWeightSerialNumber: (l$tareWeightSerialNumber as String?),
      grossWeightScaleIdentifier: (l$grossWeightScaleIdentifier as String?),
      tareWeightScaleIdentifier: (l$tareWeightScaleIdentifier as String?),
      comments: (l$comments as List<dynamic>)
          .map(
            (e) =>
                Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
    );
  }

  final int id;

  final String title;

  final Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight
  grossWeight;

  final Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight
  tareWeight;

  final bool isDeleted;

  final Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created
  created;

  final Enum$StockTakeWeightCaptureMethod captureMethod;

  final String $__typename;

  final String? grossWeightSerialNumber;

  final String? tareWeightSerialNumber;

  final String? grossWeightScaleIdentifier;

  final String? tareWeightScaleIdentifier;

  final List<
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments
  >
  comments;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$grossWeight = grossWeight;
    _resultData['grossWeight'] = l$grossWeight.toJson();
    final l$tareWeight = tareWeight;
    _resultData['tareWeight'] = l$tareWeight.toJson();
    final l$isDeleted = isDeleted;
    _resultData['isDeleted'] = l$isDeleted;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$captureMethod = captureMethod;
    _resultData['captureMethod'] = toJson$Enum$StockTakeWeightCaptureMethod(
      l$captureMethod,
    );
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$grossWeightSerialNumber = grossWeightSerialNumber;
    _resultData['grossWeightSerialNumber'] = l$grossWeightSerialNumber;
    final l$tareWeightSerialNumber = tareWeightSerialNumber;
    _resultData['tareWeightSerialNumber'] = l$tareWeightSerialNumber;
    final l$grossWeightScaleIdentifier = grossWeightScaleIdentifier;
    _resultData['grossWeightScaleIdentifier'] = l$grossWeightScaleIdentifier;
    final l$tareWeightScaleIdentifier = tareWeightScaleIdentifier;
    _resultData['tareWeightScaleIdentifier'] = l$tareWeightScaleIdentifier;
    final l$comments = comments;
    _resultData['comments'] = l$comments.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$grossWeight = grossWeight;
    final l$tareWeight = tareWeight;
    final l$isDeleted = isDeleted;
    final l$created = created;
    final l$captureMethod = captureMethod;
    final l$$__typename = $__typename;
    final l$grossWeightSerialNumber = grossWeightSerialNumber;
    final l$tareWeightSerialNumber = tareWeightSerialNumber;
    final l$grossWeightScaleIdentifier = grossWeightScaleIdentifier;
    final l$tareWeightScaleIdentifier = tareWeightScaleIdentifier;
    final l$comments = comments;
    return Object.hashAll([
      l$id,
      l$title,
      l$grossWeight,
      l$tareWeight,
      l$isDeleted,
      l$created,
      l$captureMethod,
      l$$__typename,
      l$grossWeightSerialNumber,
      l$tareWeightSerialNumber,
      l$grossWeightScaleIdentifier,
      l$tareWeightScaleIdentifier,
      Object.hashAll(l$comments.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetStocktake$stocktake$stocktakeLocations$takenWeights ||
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
    final l$isDeleted = isDeleted;
    final lOther$isDeleted = other.isDeleted;
    if (l$isDeleted != lOther$isDeleted) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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
    final l$comments = comments;
    final lOther$comments = other.comments;
    if (l$comments.length != lOther$comments.length) {
      return false;
    }
    for (int i = 0; i < l$comments.length; i++) {
      final l$comments$entry = l$comments[i];
      final lOther$comments$entry = lOther$comments[i];
      if (l$comments$entry != lOther$comments$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights
    on Query$GetStocktake$stocktake$stocktakeLocations$takenWeights {
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights<
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights instance,
    TRes Function(Query$GetStocktake$stocktake$stocktakeLocations$takenWeights)
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights;

  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights;

  TRes call({
    int? id,
    String? title,
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight?
    grossWeight,
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight?
    tareWeight,
    bool? isDeleted,
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created?
    created,
    Enum$StockTakeWeightCaptureMethod? captureMethod,
    String? $__typename,
    String? grossWeightSerialNumber,
    String? tareWeightSerialNumber,
    String? grossWeightScaleIdentifier,
    String? tareWeightScaleIdentifier,
    List<Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments>?
    comments,
  });
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight<
    TRes
  >
  get grossWeight;
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight<
    TRes
  >
  get tareWeight;
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created<
    TRes
  >
  get created;
  TRes comments(
    Iterable<
      Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments
    >
    Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments<
          Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$stocktakeLocations$takenWeights _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? grossWeight = _undefined,
    Object? tareWeight = _undefined,
    Object? isDeleted = _undefined,
    Object? created = _undefined,
    Object? captureMethod = _undefined,
    Object? $__typename = _undefined,
    Object? grossWeightSerialNumber = _undefined,
    Object? tareWeightSerialNumber = _undefined,
    Object? grossWeightScaleIdentifier = _undefined,
    Object? tareWeightScaleIdentifier = _undefined,
    Object? comments = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights(
      id: id == _undefined || id == null ? _instance.id : (id as int),
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      grossWeight: grossWeight == _undefined || grossWeight == null
          ? _instance.grossWeight
          : (grossWeight
                as Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight),
      tareWeight: tareWeight == _undefined || tareWeight == null
          ? _instance.tareWeight
          : (tareWeight
                as Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight),
      isDeleted: isDeleted == _undefined || isDeleted == null
          ? _instance.isDeleted
          : (isDeleted as bool),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created),
      captureMethod: captureMethod == _undefined || captureMethod == null
          ? _instance.captureMethod
          : (captureMethod as Enum$StockTakeWeightCaptureMethod),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
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
      comments: comments == _undefined || comments == null
          ? _instance.comments
          : (comments
                as List<
                  Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments
                >),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight<
    TRes
  >
  get grossWeight {
    final local$grossWeight = _instance.grossWeight;
    return CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight(
      local$grossWeight,
      (e) => call(grossWeight: e),
    );
  }

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight<
    TRes
  >
  get tareWeight {
    final local$tareWeight = _instance.tareWeight;
    return CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight(
      local$tareWeight,
      (e) => call(tareWeight: e),
    );
  }

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created(
      local$created,
      (e) => call(created: e),
    );
  }

  TRes comments(
    Iterable<
      Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments
    >
    Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments<
          Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments
        >
      >,
    )
    _fn,
  ) => call(
    comments: _fn(
      _instance.comments.map(
        (e) =>
            CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights(
    this._res,
  );

  TRes _res;

  call({
    int? id,
    String? title,
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight?
    grossWeight,
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight?
    tareWeight,
    bool? isDeleted,
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created?
    created,
    Enum$StockTakeWeightCaptureMethod? captureMethod,
    String? $__typename,
    String? grossWeightSerialNumber,
    String? tareWeightSerialNumber,
    String? grossWeightScaleIdentifier,
    String? tareWeightScaleIdentifier,
    List<Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments>?
    comments,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight<
    TRes
  >
  get grossWeight =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight.stub(
        _res,
      );

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight<
    TRes
  >
  get tareWeight =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight.stub(
        _res,
      );

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created<
    TRes
  >
  get created =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created.stub(
        _res,
      );

  comments(_fn) => _res;
}

class Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight
    implements
        Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight,
        Fragment$UomValueFragment {
  Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight({
    required this.value,
    required this.uom,
    required this.mtValue,
    this.$__typename = 'UomValue',
    required this.isRate,
    required this.id,
  });

  factory Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$uom = json['uom'];
    final l$mtValue = json['mtValue'];
    final l$$__typename = json['__typename'];
    final l$isRate = json['isRate'];
    final l$id = json['id'];
    return Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight(
      value: (l$value as num).toDouble(),
      uom: fromJson$Enum$Uom((l$uom as String)),
      mtValue: (l$mtValue as num).toDouble(),
      $__typename: (l$$__typename as String),
      isRate: (l$isRate as bool),
      id: (l$id as int),
    );
  }

  final double value;

  final Enum$Uom uom;

  final double mtValue;

  final String $__typename;

  final bool isRate;

  final int id;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$mtValue = mtValue;
    _resultData['mtValue'] = l$mtValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$isRate = isRate;
    _resultData['isRate'] = l$isRate;
    final l$id = id;
    _resultData['id'] = l$id;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$uom = uom;
    final l$mtValue = mtValue;
    final l$$__typename = $__typename;
    final l$isRate = isRate;
    final l$id = id;
    return Object.hashAll([
      l$value,
      l$uom,
      l$mtValue,
      l$$__typename,
      l$isRate,
      l$id,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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
    return true;
  }
}

extension UtilityExtension$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight
    on Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight {
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight<
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight
    instance,
    TRes Function(
      Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight,
    )
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight;

  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight;

  TRes call({
    double? value,
    Enum$Uom? uom,
    double? mtValue,
    String? $__typename,
    bool? isRate,
    int? id,
  });
}

class _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight
  _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? uom = _undefined,
    Object? mtValue = _undefined,
    Object? $__typename = _undefined,
    Object? isRate = _undefined,
    Object? id = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      mtValue: mtValue == _undefined || mtValue == null
          ? _instance.mtValue
          : (mtValue as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      isRate: isRate == _undefined || isRate == null
          ? _instance.isRate
          : (isRate as bool),
      id: id == _undefined || id == null ? _instance.id : (id as int),
    ),
  );
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$grossWeight(
    this._res,
  );

  TRes _res;

  call({
    double? value,
    Enum$Uom? uom,
    double? mtValue,
    String? $__typename,
    bool? isRate,
    int? id,
  }) => _res;
}

class Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight
    implements
        Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight,
        Fragment$UomValueFragment {
  Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight({
    required this.value,
    required this.uom,
    required this.mtValue,
    this.$__typename = 'UomValue',
    required this.isRate,
    required this.id,
  });

  factory Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$uom = json['uom'];
    final l$mtValue = json['mtValue'];
    final l$$__typename = json['__typename'];
    final l$isRate = json['isRate'];
    final l$id = json['id'];
    return Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight(
      value: (l$value as num).toDouble(),
      uom: fromJson$Enum$Uom((l$uom as String)),
      mtValue: (l$mtValue as num).toDouble(),
      $__typename: (l$$__typename as String),
      isRate: (l$isRate as bool),
      id: (l$id as int),
    );
  }

  final double value;

  final Enum$Uom uom;

  final double mtValue;

  final String $__typename;

  final bool isRate;

  final int id;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$mtValue = mtValue;
    _resultData['mtValue'] = l$mtValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$isRate = isRate;
    _resultData['isRate'] = l$isRate;
    final l$id = id;
    _resultData['id'] = l$id;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$uom = uom;
    final l$mtValue = mtValue;
    final l$$__typename = $__typename;
    final l$isRate = isRate;
    final l$id = id;
    return Object.hashAll([
      l$value,
      l$uom,
      l$mtValue,
      l$$__typename,
      l$isRate,
      l$id,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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
    return true;
  }
}

extension UtilityExtension$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight
    on Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight {
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight<
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight
    instance,
    TRes Function(
      Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight,
    )
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight;

  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight;

  TRes call({
    double? value,
    Enum$Uom? uom,
    double? mtValue,
    String? $__typename,
    bool? isRate,
    int? id,
  });
}

class _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight
  _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? uom = _undefined,
    Object? mtValue = _undefined,
    Object? $__typename = _undefined,
    Object? isRate = _undefined,
    Object? id = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      mtValue: mtValue == _undefined || mtValue == null
          ? _instance.mtValue
          : (mtValue as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      isRate: isRate == _undefined || isRate == null
          ? _instance.isRate
          : (isRate as bool),
      id: id == _undefined || id == null ? _instance.id : (id as int),
    ),
  );
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$tareWeight(
    this._res,
  );

  TRes _res;

  call({
    double? value,
    Enum$Uom? uom,
    double? mtValue,
    String? $__typename,
    bool? isRate,
    int? id,
  }) => _res;
}

class Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created
    implements
        Fragment$StocktakeFields$stocktakeLocations$takenWeights$created {
  Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Created',
    this.user,
  });

  factory Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    final l$user = json['user'];
    return Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
      user: l$user == null
          ? null
          : Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  final Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user?
  user;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    final l$user = user;
    return Object.hashAll([
      l$at,
      l$userName,
      l$userInfoId,
      l$$__typename,
      l$user,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created
    on Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created {
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created<
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created
    instance,
    TRes Function(
      Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created,
    )
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created;

  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user?
    user,
  });
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user<
    TRes
  >
  get user;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created
  _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
    Object? user = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      user: user == _undefined
          ? _instance.user
          : (user
                as Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user?),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user<
    TRes
  >
  get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user?
    user,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user<
    TRes
  >
  get user =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user.stub(
        _res,
      );
}

class Query$GetStocktake$stocktake$created
    implements Fragment$StocktakeFields$created {
  Query$GetStocktake$stocktake$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.user,
    this.$__typename = 'Created',
  });

  factory Query$GetStocktake$stocktake$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$created(
      at: DateTime.parse((l$at as String)),
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      user: l$user == null
          ? null
          : Query$GetStocktake$stocktake$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userInfoId;

  final String userName;

  final Query$GetStocktake$stocktake$created$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$at,
      l$userInfoId,
      l$userName,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$created ||
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
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$created
    on Query$GetStocktake$stocktake$created {
  CopyWith$Query$GetStocktake$stocktake$created<
    Query$GetStocktake$stocktake$created
  >
  get copyWith => CopyWith$Query$GetStocktake$stocktake$created(this, (i) => i);
}

abstract class CopyWith$Query$GetStocktake$stocktake$created<TRes> {
  factory CopyWith$Query$GetStocktake$stocktake$created(
    Query$GetStocktake$stocktake$created instance,
    TRes Function(Query$GetStocktake$stocktake$created) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$created;

  factory CopyWith$Query$GetStocktake$stocktake$created.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStocktake$stocktake$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    Query$GetStocktake$stocktake$created$user? user,
    String? $__typename,
  });
  CopyWith$Query$GetStocktake$stocktake$created$user<TRes> get user;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$created<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$created<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake$created(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$created _instance;

  final TRes Function(Query$GetStocktake$stocktake$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      user: user == _undefined
          ? _instance.user
          : (user as Query$GetStocktake$stocktake$created$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$created$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetStocktake$stocktake$created$user.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetStocktake$stocktake$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$created<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$created<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$created(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    Query$GetStocktake$stocktake$created$user? user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$created$user<TRes> get user =>
      CopyWith$Query$GetStocktake$stocktake$created$user.stub(_res);
}

class Query$GetStocktake$stocktake$created$user
    implements Fragment$StocktakeFields$created$user {
  Query$GetStocktake$stocktake$created$user({
    required this.name,
    required this.id,
    this.$__typename = 'UserInfo',
  });

  factory Query$GetStocktake$stocktake$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$created$user(
      name: (l$name as String),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$created$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$created$user
    on Query$GetStocktake$stocktake$created$user {
  CopyWith$Query$GetStocktake$stocktake$created$user<
    Query$GetStocktake$stocktake$created$user
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$created$user(this, (i) => i);
}

abstract class CopyWith$Query$GetStocktake$stocktake$created$user<TRes> {
  factory CopyWith$Query$GetStocktake$stocktake$created$user(
    Query$GetStocktake$stocktake$created$user instance,
    TRes Function(Query$GetStocktake$stocktake$created$user) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$created$user;

  factory CopyWith$Query$GetStocktake$stocktake$created$user.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStocktake$stocktake$created$user;

  TRes call({String? name, String? id, String? $__typename});
}

class _CopyWithImpl$Query$GetStocktake$stocktake$created$user<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$created$user<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake$created$user(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$created$user _instance;

  final TRes Function(Query$GetStocktake$stocktake$created$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$created$user(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$created$user<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$created$user<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$created$user(this._res);

  TRes _res;

  call({String? name, String? id, String? $__typename}) => _res;
}

class Query$GetStocktake$stocktake$modified
    implements Fragment$StocktakeFields$modified {
  Query$GetStocktake$stocktake$modified({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.user,
    this.$__typename = 'Modified',
  });

  factory Query$GetStocktake$stocktake$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$modified(
      at: DateTime.parse((l$at as String)),
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      user: l$user == null
          ? null
          : Query$GetStocktake$stocktake$modified$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userInfoId;

  final String userName;

  final Query$GetStocktake$stocktake$modified$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$at,
      l$userInfoId,
      l$userName,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$modified ||
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
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$modified
    on Query$GetStocktake$stocktake$modified {
  CopyWith$Query$GetStocktake$stocktake$modified<
    Query$GetStocktake$stocktake$modified
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$modified(this, (i) => i);
}

abstract class CopyWith$Query$GetStocktake$stocktake$modified<TRes> {
  factory CopyWith$Query$GetStocktake$stocktake$modified(
    Query$GetStocktake$stocktake$modified instance,
    TRes Function(Query$GetStocktake$stocktake$modified) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$modified;

  factory CopyWith$Query$GetStocktake$stocktake$modified.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStocktake$stocktake$modified;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    Query$GetStocktake$stocktake$modified$user? user,
    String? $__typename,
  });
  CopyWith$Query$GetStocktake$stocktake$modified$user<TRes> get user;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$modified<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$modified<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake$modified(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$modified _instance;

  final TRes Function(Query$GetStocktake$stocktake$modified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$modified(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      user: user == _undefined
          ? _instance.user
          : (user as Query$GetStocktake$stocktake$modified$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$modified$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetStocktake$stocktake$modified$user.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetStocktake$stocktake$modified$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$modified<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$modified<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$modified(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    Query$GetStocktake$stocktake$modified$user? user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$modified$user<TRes> get user =>
      CopyWith$Query$GetStocktake$stocktake$modified$user.stub(_res);
}

class Query$GetStocktake$stocktake$modified$user
    implements Fragment$StocktakeFields$modified$user {
  Query$GetStocktake$stocktake$modified$user({
    required this.name,
    required this.id,
    this.$__typename = 'UserInfo',
  });

  factory Query$GetStocktake$stocktake$modified$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$modified$user(
      name: (l$name as String),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$modified$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$modified$user
    on Query$GetStocktake$stocktake$modified$user {
  CopyWith$Query$GetStocktake$stocktake$modified$user<
    Query$GetStocktake$stocktake$modified$user
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$modified$user(this, (i) => i);
}

abstract class CopyWith$Query$GetStocktake$stocktake$modified$user<TRes> {
  factory CopyWith$Query$GetStocktake$stocktake$modified$user(
    Query$GetStocktake$stocktake$modified$user instance,
    TRes Function(Query$GetStocktake$stocktake$modified$user) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$modified$user;

  factory CopyWith$Query$GetStocktake$stocktake$modified$user.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStocktake$stocktake$modified$user;

  TRes call({String? name, String? id, String? $__typename});
}

class _CopyWithImpl$Query$GetStocktake$stocktake$modified$user<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$modified$user<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake$modified$user(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$modified$user _instance;

  final TRes Function(Query$GetStocktake$stocktake$modified$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$modified$user(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$modified$user<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$modified$user<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$modified$user(this._res);

  TRes _res;

  call({String? name, String? id, String? $__typename}) => _res;
}

class Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets {
  Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets(
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
    if (other is! Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets ||
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

extension UtilityExtension$Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets
    on Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets {
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets<
    Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets(
    Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets instance,
    TRes Function(Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets)
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets;

  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? url = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets(
          url: url == _undefined || url == null
              ? _instance.url
              : (url as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$mediaAssets(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$GetStocktake$stocktake$stocktakeLocations$comments {
  Query$GetStocktake$stocktake$stocktakeLocations$comments({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Query$GetStocktake$stocktake$stocktakeLocations$comments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$stocktakeLocations$comments(
      content: (l$content as String),
      created:
          Query$GetStocktake$stocktake$stocktakeLocations$comments$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Query$GetStocktake$stocktake$stocktakeLocations$comments$created
  created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([l$content, l$created, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$stocktakeLocations$comments ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$stocktakeLocations$comments
    on Query$GetStocktake$stocktake$stocktakeLocations$comments {
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments<
    Query$GetStocktake$stocktake$stocktakeLocations$comments
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments(
    Query$GetStocktake$stocktake$stocktakeLocations$comments instance,
    TRes Function(Query$GetStocktake$stocktake$stocktakeLocations$comments)
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$comments;

  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$comments;

  TRes call({
    String? content,
    Query$GetStocktake$stocktake$stocktakeLocations$comments$created? created,
    String? $__typename,
  });
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$comments<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$comments(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$stocktakeLocations$comments _instance;

  final TRes Function(Query$GetStocktake$stocktake$stocktakeLocations$comments)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$stocktakeLocations$comments(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$GetStocktake$stocktake$stocktakeLocations$comments$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$comments<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$comments(
    this._res,
  );

  TRes _res;

  call({
    String? content,
    Query$GetStocktake$stocktake$stocktakeLocations$comments$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments$created<
    TRes
  >
  get created =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments$created.stub(
        _res,
      );
}

class Query$GetStocktake$stocktake$stocktakeLocations$comments$created {
  Query$GetStocktake$stocktake$stocktakeLocations$comments$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$GetStocktake$stocktake$stocktakeLocations$comments$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$stocktakeLocations$comments$created(
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
            is! Query$GetStocktake$stocktake$stocktakeLocations$comments$created ||
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

extension UtilityExtension$Query$GetStocktake$stocktake$stocktakeLocations$comments$created
    on Query$GetStocktake$stocktake$stocktakeLocations$comments$created {
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments$created<
    Query$GetStocktake$stocktake$stocktakeLocations$comments$created
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments$created<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments$created(
    Query$GetStocktake$stocktake$stocktakeLocations$comments$created instance,
    TRes Function(
      Query$GetStocktake$stocktake$stocktakeLocations$comments$created,
    )
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$comments$created;

  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$comments$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$comments$created<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments$created<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$comments$created(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$stocktakeLocations$comments$created
  _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$stocktakeLocations$comments$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$stocktakeLocations$comments$created(
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

class _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$comments$created<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$comments$created<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$comments$created(
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

class Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user {
  Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user({
    required this.name,
    required this.id,
    this.$__typename = 'UserInfo',
  });

  factory Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user(
      name: (l$name as String),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user
    on Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user {
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user<
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user
    instance,
    TRes Function(
      Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user,
    )
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user;

  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user;

  TRes call({String? name, String? id, String? $__typename});
}

class _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user
  _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$created$user(
    this._res,
  );

  TRes _res;

  call({String? name, String? id, String? $__typename}) => _res;
}

class Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments {
  Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments(
      content: (l$content as String),
      created:
          Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created
  created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([l$content, l$created, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments
    on Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments {
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments<
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments
    instance,
    TRes Function(
      Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments,
    )
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments;

  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments;

  TRes call({
    String? content,
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created?
    created,
    String? $__typename,
  });
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments
  _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments(
    this._res,
  );

  TRes _res;

  call({
    String? content,
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created?
    created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created<
    TRes
  >
  get created =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created.stub(
        _res,
      );
}

class Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created {
  Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created(
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
            is! Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created ||
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

extension UtilityExtension$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created
    on Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created {
  CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created<
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created
    instance,
    TRes Function(
      Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created,
    )
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created;

  factory CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created
  _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created(
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

class _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$stocktakeLocations$takenWeights$comments$created(
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

class Query$GetStocktake$stocktake$workflow$levelUsers
    implements Fragment$StocktakeApprovalFields$levelUsers {
  Query$GetStocktake$stocktake$workflow$levelUsers({
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.jobTitle,
    this.$__typename = 'User',
  });

  factory Query$GetStocktake$stocktake$workflow$levelUsers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$emailAddress = json['emailAddress'];
    final l$jobTitle = json['jobTitle'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$workflow$levelUsers(
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      emailAddress: (l$emailAddress as String),
      jobTitle: (l$jobTitle as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String firstName;

  final String lastName;

  final String emailAddress;

  final String jobTitle;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$jobTitle = jobTitle;
    _resultData['jobTitle'] = l$jobTitle;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$emailAddress = emailAddress;
    final l$jobTitle = jobTitle;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$firstName,
      l$lastName,
      l$emailAddress,
      l$jobTitle,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$workflow$levelUsers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
      return false;
    }
    final l$jobTitle = jobTitle;
    final lOther$jobTitle = other.jobTitle;
    if (l$jobTitle != lOther$jobTitle) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$workflow$levelUsers
    on Query$GetStocktake$stocktake$workflow$levelUsers {
  CopyWith$Query$GetStocktake$stocktake$workflow$levelUsers<
    Query$GetStocktake$stocktake$workflow$levelUsers
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$workflow$levelUsers(this, (i) => i);
}

abstract class CopyWith$Query$GetStocktake$stocktake$workflow$levelUsers<TRes> {
  factory CopyWith$Query$GetStocktake$stocktake$workflow$levelUsers(
    Query$GetStocktake$stocktake$workflow$levelUsers instance,
    TRes Function(Query$GetStocktake$stocktake$workflow$levelUsers) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levelUsers;

  factory CopyWith$Query$GetStocktake$stocktake$workflow$levelUsers.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levelUsers;

  TRes call({
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? jobTitle,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levelUsers<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$workflow$levelUsers<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levelUsers(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$workflow$levelUsers _instance;

  final TRes Function(Query$GetStocktake$stocktake$workflow$levelUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? emailAddress = _undefined,
    Object? jobTitle = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$workflow$levelUsers(
      firstName: firstName == _undefined || firstName == null
          ? _instance.firstName
          : (firstName as String),
      lastName: lastName == _undefined || lastName == null
          ? _instance.lastName
          : (lastName as String),
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      jobTitle: jobTitle == _undefined || jobTitle == null
          ? _instance.jobTitle
          : (jobTitle as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levelUsers<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$workflow$levelUsers<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levelUsers(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? jobTitle,
    String? $__typename,
  }) => _res;
}

class Query$GetStocktake$stocktake$workflow$created
    implements Fragment$StocktakeApprovalFields$created {
  Query$GetStocktake$stocktake$workflow$created({
    required this.at,
    this.user,
    this.$__typename = 'Created',
  });

  factory Query$GetStocktake$stocktake$workflow$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$workflow$created(
      at: DateTime.parse((l$at as String)),
      user: l$user == null
          ? null
          : Query$GetStocktake$stocktake$workflow$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final Query$GetStocktake$stocktake$workflow$created$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$workflow$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$workflow$created
    on Query$GetStocktake$stocktake$workflow$created {
  CopyWith$Query$GetStocktake$stocktake$workflow$created<
    Query$GetStocktake$stocktake$workflow$created
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$workflow$created(this, (i) => i);
}

abstract class CopyWith$Query$GetStocktake$stocktake$workflow$created<TRes> {
  factory CopyWith$Query$GetStocktake$stocktake$workflow$created(
    Query$GetStocktake$stocktake$workflow$created instance,
    TRes Function(Query$GetStocktake$stocktake$workflow$created) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$workflow$created;

  factory CopyWith$Query$GetStocktake$stocktake$workflow$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$created;

  TRes call({
    DateTime? at,
    Query$GetStocktake$stocktake$workflow$created$user? user,
    String? $__typename,
  });
  CopyWith$Query$GetStocktake$stocktake$workflow$created$user<TRes> get user;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$workflow$created<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$workflow$created<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake$workflow$created(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$workflow$created _instance;

  final TRes Function(Query$GetStocktake$stocktake$workflow$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$workflow$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      user: user == _undefined
          ? _instance.user
          : (user as Query$GetStocktake$stocktake$workflow$created$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$workflow$created$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetStocktake$stocktake$workflow$created$user.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetStocktake$stocktake$workflow$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$created<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$workflow$created<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$created(this._res);

  TRes _res;

  call({
    DateTime? at,
    Query$GetStocktake$stocktake$workflow$created$user? user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$workflow$created$user<TRes> get user =>
      CopyWith$Query$GetStocktake$stocktake$workflow$created$user.stub(_res);
}

class Query$GetStocktake$stocktake$workflow$created$user
    implements Fragment$StocktakeApprovalFields$created$user {
  Query$GetStocktake$stocktake$workflow$created$user({
    required this.name,
    required this.emailAddress,
    this.$__typename = 'UserInfo',
  });

  factory Query$GetStocktake$stocktake$workflow$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$emailAddress = json['emailAddress'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$workflow$created$user(
      name: (l$name as String),
      emailAddress: (l$emailAddress as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String emailAddress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$emailAddress = emailAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$emailAddress, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$workflow$created$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$workflow$created$user
    on Query$GetStocktake$stocktake$workflow$created$user {
  CopyWith$Query$GetStocktake$stocktake$workflow$created$user<
    Query$GetStocktake$stocktake$workflow$created$user
  >
  get copyWith => CopyWith$Query$GetStocktake$stocktake$workflow$created$user(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetStocktake$stocktake$workflow$created$user<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$workflow$created$user(
    Query$GetStocktake$stocktake$workflow$created$user instance,
    TRes Function(Query$GetStocktake$stocktake$workflow$created$user) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$workflow$created$user;

  factory CopyWith$Query$GetStocktake$stocktake$workflow$created$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$created$user;

  TRes call({String? name, String? emailAddress, String? $__typename});
}

class _CopyWithImpl$Query$GetStocktake$stocktake$workflow$created$user<TRes>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$created$user<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake$workflow$created$user(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$workflow$created$user _instance;

  final TRes Function(Query$GetStocktake$stocktake$workflow$created$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? emailAddress = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$workflow$created$user(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$created$user<TRes>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$created$user<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$created$user(
    this._res,
  );

  TRes _res;

  call({String? name, String? emailAddress, String? $__typename}) => _res;
}

class Query$GetStocktake$stocktake$workflow$levels
    implements Fragment$StocktakeApprovalFields$levels {
  Query$GetStocktake$stocktake$workflow$levels({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfInt32AndStocktakeRuleLevel',
  });

  factory Query$GetStocktake$stocktake$workflow$levels.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$workflow$levels(
      key: (l$key as int),
      value: Query$GetStocktake$stocktake$workflow$levels$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final int key;

  final Query$GetStocktake$stocktake$workflow$levels$value value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$workflow$levels ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$workflow$levels
    on Query$GetStocktake$stocktake$workflow$levels {
  CopyWith$Query$GetStocktake$stocktake$workflow$levels<
    Query$GetStocktake$stocktake$workflow$levels
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$workflow$levels(this, (i) => i);
}

abstract class CopyWith$Query$GetStocktake$stocktake$workflow$levels<TRes> {
  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels(
    Query$GetStocktake$stocktake$workflow$levels instance,
    TRes Function(Query$GetStocktake$stocktake$workflow$levels) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels;

  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels;

  TRes call({
    int? key,
    Query$GetStocktake$stocktake$workflow$levels$value? value,
    String? $__typename,
  });
  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value<TRes> get value;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$workflow$levels<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$workflow$levels _instance;

  final TRes Function(Query$GetStocktake$stocktake$workflow$levels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$workflow$levels(
      key: key == _undefined || key == null ? _instance.key : (key as int),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Query$GetStocktake$stocktake$workflow$levels$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value<TRes> get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetStocktake$stocktake$workflow$levels$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$workflow$levels<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels(this._res);

  TRes _res;

  call({
    int? key,
    Query$GetStocktake$stocktake$workflow$levels$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value<TRes> get value =>
      CopyWith$Query$GetStocktake$stocktake$workflow$levels$value.stub(_res);
}

class Query$GetStocktake$stocktake$workflow$levels$value
    implements Fragment$StocktakeApprovalFields$levels$value {
  Query$GetStocktake$stocktake$workflow$levels$value({
    required this.userEmails,
    required this.status,
    required this.notifiedOn,
    required this.approvers,
    required this.rejectors,
    this.$__typename = 'StocktakeRuleLevel',
  });

  factory Query$GetStocktake$stocktake$workflow$levels$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userEmails = json['userEmails'];
    final l$status = json['status'];
    final l$notifiedOn = json['notifiedOn'];
    final l$approvers = json['approvers'];
    final l$rejectors = json['rejectors'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$workflow$levels$value(
      userEmails: (l$userEmails as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      status: fromJson$Enum$StocktakeApprovalStatus((l$status as String)),
      notifiedOn: (l$notifiedOn as List<dynamic>)
          .map((e) => DateTime.parse((e as String)))
          .toList(),
      approvers: (l$approvers as List<dynamic>)
          .map(
            (e) =>
                Query$GetStocktake$stocktake$workflow$levels$value$approvers.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      rejectors: (l$rejectors as List<dynamic>)
          .map(
            (e) =>
                Query$GetStocktake$stocktake$workflow$levels$value$rejectors.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> userEmails;

  final Enum$StocktakeApprovalStatus status;

  final List<DateTime> notifiedOn;

  final List<Query$GetStocktake$stocktake$workflow$levels$value$approvers>
  approvers;

  final List<Query$GetStocktake$stocktake$workflow$levels$value$rejectors>
  rejectors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userEmails = userEmails;
    _resultData['userEmails'] = l$userEmails.map((e) => e).toList();
    final l$status = status;
    _resultData['status'] = toJson$Enum$StocktakeApprovalStatus(l$status);
    final l$notifiedOn = notifiedOn;
    _resultData['notifiedOn'] = l$notifiedOn
        .map((e) => e.toIso8601String())
        .toList();
    final l$approvers = approvers;
    _resultData['approvers'] = l$approvers.map((e) => e.toJson()).toList();
    final l$rejectors = rejectors;
    _resultData['rejectors'] = l$rejectors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userEmails = userEmails;
    final l$status = status;
    final l$notifiedOn = notifiedOn;
    final l$approvers = approvers;
    final l$rejectors = rejectors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$userEmails.map((v) => v)),
      l$status,
      Object.hashAll(l$notifiedOn.map((v) => v)),
      Object.hashAll(l$approvers.map((v) => v)),
      Object.hashAll(l$rejectors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$workflow$levels$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userEmails = userEmails;
    final lOther$userEmails = other.userEmails;
    if (l$userEmails.length != lOther$userEmails.length) {
      return false;
    }
    for (int i = 0; i < l$userEmails.length; i++) {
      final l$userEmails$entry = l$userEmails[i];
      final lOther$userEmails$entry = lOther$userEmails[i];
      if (l$userEmails$entry != lOther$userEmails$entry) {
        return false;
      }
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$notifiedOn = notifiedOn;
    final lOther$notifiedOn = other.notifiedOn;
    if (l$notifiedOn.length != lOther$notifiedOn.length) {
      return false;
    }
    for (int i = 0; i < l$notifiedOn.length; i++) {
      final l$notifiedOn$entry = l$notifiedOn[i];
      final lOther$notifiedOn$entry = lOther$notifiedOn[i];
      if (l$notifiedOn$entry != lOther$notifiedOn$entry) {
        return false;
      }
    }
    final l$approvers = approvers;
    final lOther$approvers = other.approvers;
    if (l$approvers.length != lOther$approvers.length) {
      return false;
    }
    for (int i = 0; i < l$approvers.length; i++) {
      final l$approvers$entry = l$approvers[i];
      final lOther$approvers$entry = lOther$approvers[i];
      if (l$approvers$entry != lOther$approvers$entry) {
        return false;
      }
    }
    final l$rejectors = rejectors;
    final lOther$rejectors = other.rejectors;
    if (l$rejectors.length != lOther$rejectors.length) {
      return false;
    }
    for (int i = 0; i < l$rejectors.length; i++) {
      final l$rejectors$entry = l$rejectors[i];
      final lOther$rejectors$entry = lOther$rejectors[i];
      if (l$rejectors$entry != lOther$rejectors$entry) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$workflow$levels$value
    on Query$GetStocktake$stocktake$workflow$levels$value {
  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value<
    Query$GetStocktake$stocktake$workflow$levels$value
  >
  get copyWith => CopyWith$Query$GetStocktake$stocktake$workflow$levels$value(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetStocktake$stocktake$workflow$levels$value<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels$value(
    Query$GetStocktake$stocktake$workflow$levels$value instance,
    TRes Function(Query$GetStocktake$stocktake$workflow$levels$value) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value;

  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value;

  TRes call({
    List<String>? userEmails,
    Enum$StocktakeApprovalStatus? status,
    List<DateTime>? notifiedOn,
    List<Query$GetStocktake$stocktake$workflow$levels$value$approvers>?
    approvers,
    List<Query$GetStocktake$stocktake$workflow$levels$value$rejectors>?
    rejectors,
    String? $__typename,
  });
  TRes approvers(
    Iterable<Query$GetStocktake$stocktake$workflow$levels$value$approvers>
    Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers<
          Query$GetStocktake$stocktake$workflow$levels$value$approvers
        >
      >,
    )
    _fn,
  );
  TRes rejectors(
    Iterable<Query$GetStocktake$stocktake$workflow$levels$value$rejectors>
    Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors<
          Query$GetStocktake$stocktake$workflow$levels$value$rejectors
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value<TRes>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$workflow$levels$value _instance;

  final TRes Function(Query$GetStocktake$stocktake$workflow$levels$value) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userEmails = _undefined,
    Object? status = _undefined,
    Object? notifiedOn = _undefined,
    Object? approvers = _undefined,
    Object? rejectors = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$workflow$levels$value(
      userEmails: userEmails == _undefined || userEmails == null
          ? _instance.userEmails
          : (userEmails as List<String>),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$StocktakeApprovalStatus),
      notifiedOn: notifiedOn == _undefined || notifiedOn == null
          ? _instance.notifiedOn
          : (notifiedOn as List<DateTime>),
      approvers: approvers == _undefined || approvers == null
          ? _instance.approvers
          : (approvers
                as List<
                  Query$GetStocktake$stocktake$workflow$levels$value$approvers
                >),
      rejectors: rejectors == _undefined || rejectors == null
          ? _instance.rejectors
          : (rejectors
                as List<
                  Query$GetStocktake$stocktake$workflow$levels$value$rejectors
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes approvers(
    Iterable<Query$GetStocktake$stocktake$workflow$levels$value$approvers>
    Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers<
          Query$GetStocktake$stocktake$workflow$levels$value$approvers
        >
      >,
    )
    _fn,
  ) => call(
    approvers: _fn(
      _instance.approvers.map(
        (e) =>
            CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes rejectors(
    Iterable<Query$GetStocktake$stocktake$workflow$levels$value$rejectors>
    Function(
      Iterable<
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors<
          Query$GetStocktake$stocktake$workflow$levels$value$rejectors
        >
      >,
    )
    _fn,
  ) => call(
    rejectors: _fn(
      _instance.rejectors.map(
        (e) =>
            CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value<TRes>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value(
    this._res,
  );

  TRes _res;

  call({
    List<String>? userEmails,
    Enum$StocktakeApprovalStatus? status,
    List<DateTime>? notifiedOn,
    List<Query$GetStocktake$stocktake$workflow$levels$value$approvers>?
    approvers,
    List<Query$GetStocktake$stocktake$workflow$levels$value$rejectors>?
    rejectors,
    String? $__typename,
  }) => _res;

  approvers(_fn) => _res;

  rejectors(_fn) => _res;
}

class Query$GetStocktake$stocktake$workflow$levels$value$approvers
    implements Fragment$StocktakeApprovalFields$levels$value$approvers {
  Query$GetStocktake$stocktake$workflow$levels$value$approvers({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndComment',
  });

  factory Query$GetStocktake$stocktake$workflow$levels$value$approvers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$workflow$levels$value$approvers(
      key: (l$key as String),
      value:
          Query$GetStocktake$stocktake$workflow$levels$value$approvers$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$GetStocktake$stocktake$workflow$levels$value$approvers$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetStocktake$stocktake$workflow$levels$value$approvers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$workflow$levels$value$approvers
    on Query$GetStocktake$stocktake$workflow$levels$value$approvers {
  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers<
    Query$GetStocktake$stocktake$workflow$levels$value$approvers
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers(
    Query$GetStocktake$stocktake$workflow$levels$value$approvers instance,
    TRes Function(Query$GetStocktake$stocktake$workflow$levels$value$approvers)
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers;

  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers;

  TRes call({
    String? key,
    Query$GetStocktake$stocktake$workflow$levels$value$approvers$value? value,
    String? $__typename,
  });
  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$workflow$levels$value$approvers _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$workflow$levels$value$approvers,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$workflow$levels$value$approvers(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$GetStocktake$stocktake$workflow$levels$value$approvers$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    Query$GetStocktake$stocktake$workflow$levels$value$approvers$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value<
    TRes
  >
  get value =>
      CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value.stub(
        _res,
      );
}

class Query$GetStocktake$stocktake$workflow$levels$value$approvers$value
    implements Fragment$StocktakeApprovalFields$levels$value$approvers$value {
  Query$GetStocktake$stocktake$workflow$levels$value$approvers$value({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Query$GetStocktake$stocktake$workflow$levels$value$approvers$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$workflow$levels$value$approvers$value(
      content: (l$content as String),
      created:
          Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created
  created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([l$content, l$created, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetStocktake$stocktake$workflow$levels$value$approvers$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value
    on Query$GetStocktake$stocktake$workflow$levels$value$approvers$value {
  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value<
    Query$GetStocktake$stocktake$workflow$levels$value$approvers$value
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value(
    Query$GetStocktake$stocktake$workflow$levels$value$approvers$value instance,
    TRes Function(
      Query$GetStocktake$stocktake$workflow$levels$value$approvers$value,
    )
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value;

  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value;

  TRes call({
    String? content,
    Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created?
    created,
    String? $__typename,
  });
  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$workflow$levels$value$approvers$value
  _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$workflow$levels$value$approvers$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$workflow$levels$value$approvers$value(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value(
    this._res,
  );

  TRes _res;

  call({
    String? content,
    Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created?
    created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created<
    TRes
  >
  get created =>
      CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created.stub(
        _res,
      );
}

class Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created
    implements
        Fragment$StocktakeApprovalFields$levels$value$approvers$value$created {
  Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created({
    required this.at,
    this.user,
    this.$__typename = 'Created',
  });

  factory Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created(
      at: DateTime.parse((l$at as String)),
      user: l$user == null
          ? null
          : Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user?
  user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created
    on Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created {
  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created<
    Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created(
    Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created
    instance,
    TRes Function(
      Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created,
    )
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created;

  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created;

  TRes call({
    DateTime? at,
    Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user?
    user,
    String? $__typename,
  });
  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user<
    TRes
  >
  get user;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created
  _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      user: user == _undefined
          ? _instance.user
          : (user
                as Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user<
    TRes
  >
  get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user?
    user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user<
    TRes
  >
  get user =>
      CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user.stub(
        _res,
      );
}

class Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user
    implements
        Fragment$StocktakeApprovalFields$levels$value$approvers$value$created$user {
  Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user({
    required this.emailAddress,
    required this.name,
    this.$__typename = 'UserInfo',
  });

  factory Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$emailAddress = json['emailAddress'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user(
      emailAddress: (l$emailAddress as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String emailAddress;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$emailAddress = emailAddress;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$emailAddress, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user
    on
        Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user {
  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user<
    Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user(
    Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user
    instance,
    TRes Function(
      Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user,
    )
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user;

  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user;

  TRes call({String? emailAddress, String? name, String? $__typename});
}

class _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user
  _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? emailAddress = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user(
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$approvers$value$created$user(
    this._res,
  );

  TRes _res;

  call({String? emailAddress, String? name, String? $__typename}) => _res;
}

class Query$GetStocktake$stocktake$workflow$levels$value$rejectors
    implements Fragment$StocktakeApprovalFields$levels$value$rejectors {
  Query$GetStocktake$stocktake$workflow$levels$value$rejectors({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndComment',
  });

  factory Query$GetStocktake$stocktake$workflow$levels$value$rejectors.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$workflow$levels$value$rejectors(
      key: (l$key as String),
      value:
          Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetStocktake$stocktake$workflow$levels$value$rejectors ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$workflow$levels$value$rejectors
    on Query$GetStocktake$stocktake$workflow$levels$value$rejectors {
  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors<
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors(
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors instance,
    TRes Function(Query$GetStocktake$stocktake$workflow$levels$value$rejectors)
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors;

  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors;

  TRes call({
    String? key,
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value? value,
    String? $__typename,
  });
  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$workflow$levels$value$rejectors _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value<
    TRes
  >
  get value =>
      CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value.stub(
        _res,
      );
}

class Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value
    implements Fragment$StocktakeApprovalFields$levels$value$rejectors$value {
  Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value(
      content: (l$content as String),
      created:
          Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created
  created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([l$content, l$created, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value
    on Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value {
  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value<
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value(
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value instance,
    TRes Function(
      Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value,
    )
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value;

  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value;

  TRes call({
    String? content,
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created?
    created,
    String? $__typename,
  });
  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value
  _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value(
    this._res,
  );

  TRes _res;

  call({
    String? content,
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created?
    created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created<
    TRes
  >
  get created =>
      CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created.stub(
        _res,
      );
}

class Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created
    implements
        Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created {
  Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created({
    required this.at,
    this.user,
    this.$__typename = 'Created',
  });

  factory Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created(
      at: DateTime.parse((l$at as String)),
      user: l$user == null
          ? null
          : Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user?
  user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created
    on Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created {
  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created<
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created(
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created
    instance,
    TRes Function(
      Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created,
    )
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created;

  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created;

  TRes call({
    DateTime? at,
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user?
    user,
    String? $__typename,
  });
  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user<
    TRes
  >
  get user;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created
  _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      user: user == _undefined
          ? _instance.user
          : (user
                as Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user<
    TRes
  >
  get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user?
    user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user<
    TRes
  >
  get user =>
      CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user.stub(
        _res,
      );
}

class Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user
    implements
        Fragment$StocktakeApprovalFields$levels$value$rejectors$value$created$user {
  Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user({
    required this.name,
    required this.emailAddress,
    this.$__typename = 'UserInfo',
  });

  factory Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$emailAddress = json['emailAddress'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user(
      name: (l$name as String),
      emailAddress: (l$emailAddress as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String emailAddress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$emailAddress = emailAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$emailAddress, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user
    on
        Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user {
  CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user<
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user(
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user
    instance,
    TRes Function(
      Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user,
    )
    then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user;

  factory CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user;

  TRes call({String? name, String? emailAddress, String? $__typename});
}

class _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user<
          TRes
        > {
  _CopyWithImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user
  _instance;

  final TRes Function(
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? emailAddress = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$levels$value$rejectors$value$created$user(
    this._res,
  );

  TRes _res;

  call({String? name, String? emailAddress, String? $__typename}) => _res;
}

class Query$GetStocktake$stocktake$workflow$modified
    implements Fragment$StocktakeApprovalFields$modified {
  Query$GetStocktake$stocktake$workflow$modified({
    required this.at,
    this.user,
    this.$__typename = 'Modified',
  });

  factory Query$GetStocktake$stocktake$workflow$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$workflow$modified(
      at: DateTime.parse((l$at as String)),
      user: l$user == null
          ? null
          : Query$GetStocktake$stocktake$workflow$modified$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final Query$GetStocktake$stocktake$workflow$modified$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$workflow$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$workflow$modified
    on Query$GetStocktake$stocktake$workflow$modified {
  CopyWith$Query$GetStocktake$stocktake$workflow$modified<
    Query$GetStocktake$stocktake$workflow$modified
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$workflow$modified(this, (i) => i);
}

abstract class CopyWith$Query$GetStocktake$stocktake$workflow$modified<TRes> {
  factory CopyWith$Query$GetStocktake$stocktake$workflow$modified(
    Query$GetStocktake$stocktake$workflow$modified instance,
    TRes Function(Query$GetStocktake$stocktake$workflow$modified) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$workflow$modified;

  factory CopyWith$Query$GetStocktake$stocktake$workflow$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$modified;

  TRes call({
    DateTime? at,
    Query$GetStocktake$stocktake$workflow$modified$user? user,
    String? $__typename,
  });
  CopyWith$Query$GetStocktake$stocktake$workflow$modified$user<TRes> get user;
}

class _CopyWithImpl$Query$GetStocktake$stocktake$workflow$modified<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$workflow$modified<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake$workflow$modified(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$workflow$modified _instance;

  final TRes Function(Query$GetStocktake$stocktake$workflow$modified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$workflow$modified(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      user: user == _undefined
          ? _instance.user
          : (user as Query$GetStocktake$stocktake$workflow$modified$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetStocktake$stocktake$workflow$modified$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetStocktake$stocktake$workflow$modified$user.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetStocktake$stocktake$workflow$modified$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$modified<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$workflow$modified<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$modified(this._res);

  TRes _res;

  call({
    DateTime? at,
    Query$GetStocktake$stocktake$workflow$modified$user? user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetStocktake$stocktake$workflow$modified$user<TRes> get user =>
      CopyWith$Query$GetStocktake$stocktake$workflow$modified$user.stub(_res);
}

class Query$GetStocktake$stocktake$workflow$modified$user
    implements Fragment$StocktakeApprovalFields$modified$user {
  Query$GetStocktake$stocktake$workflow$modified$user({
    required this.name,
    required this.emailAddress,
    this.$__typename = 'UserInfo',
  });

  factory Query$GetStocktake$stocktake$workflow$modified$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$emailAddress = json['emailAddress'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$workflow$modified$user(
      name: (l$name as String),
      emailAddress: (l$emailAddress as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String emailAddress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$emailAddress = emailAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$emailAddress, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$workflow$modified$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$workflow$modified$user
    on Query$GetStocktake$stocktake$workflow$modified$user {
  CopyWith$Query$GetStocktake$stocktake$workflow$modified$user<
    Query$GetStocktake$stocktake$workflow$modified$user
  >
  get copyWith => CopyWith$Query$GetStocktake$stocktake$workflow$modified$user(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetStocktake$stocktake$workflow$modified$user<
  TRes
> {
  factory CopyWith$Query$GetStocktake$stocktake$workflow$modified$user(
    Query$GetStocktake$stocktake$workflow$modified$user instance,
    TRes Function(Query$GetStocktake$stocktake$workflow$modified$user) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$workflow$modified$user;

  factory CopyWith$Query$GetStocktake$stocktake$workflow$modified$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$modified$user;

  TRes call({String? name, String? emailAddress, String? $__typename});
}

class _CopyWithImpl$Query$GetStocktake$stocktake$workflow$modified$user<TRes>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$modified$user<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake$workflow$modified$user(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$workflow$modified$user _instance;

  final TRes Function(Query$GetStocktake$stocktake$workflow$modified$user)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? emailAddress = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$workflow$modified$user(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$modified$user<
  TRes
>
    implements
        CopyWith$Query$GetStocktake$stocktake$workflow$modified$user<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$workflow$modified$user(
    this._res,
  );

  TRes _res;

  call({String? name, String? emailAddress, String? $__typename}) => _res;
}

class Query$GetStocktake$stocktake$submitted {
  Query$GetStocktake$stocktake$submitted({
    required this.userName,
    this.$__typename = 'Modified',
  });

  factory Query$GetStocktake$stocktake$submitted.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktake$stocktake$submitted(
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktake$stocktake$submitted ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetStocktake$stocktake$submitted
    on Query$GetStocktake$stocktake$submitted {
  CopyWith$Query$GetStocktake$stocktake$submitted<
    Query$GetStocktake$stocktake$submitted
  >
  get copyWith =>
      CopyWith$Query$GetStocktake$stocktake$submitted(this, (i) => i);
}

abstract class CopyWith$Query$GetStocktake$stocktake$submitted<TRes> {
  factory CopyWith$Query$GetStocktake$stocktake$submitted(
    Query$GetStocktake$stocktake$submitted instance,
    TRes Function(Query$GetStocktake$stocktake$submitted) then,
  ) = _CopyWithImpl$Query$GetStocktake$stocktake$submitted;

  factory CopyWith$Query$GetStocktake$stocktake$submitted.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStocktake$stocktake$submitted;

  TRes call({String? userName, String? $__typename});
}

class _CopyWithImpl$Query$GetStocktake$stocktake$submitted<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$submitted<TRes> {
  _CopyWithImpl$Query$GetStocktake$stocktake$submitted(
    this._instance,
    this._then,
  );

  final Query$GetStocktake$stocktake$submitted _instance;

  final TRes Function(Query$GetStocktake$stocktake$submitted) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktake$stocktake$submitted(
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetStocktake$stocktake$submitted<TRes>
    implements CopyWith$Query$GetStocktake$stocktake$submitted<TRes> {
  _CopyWithStubImpl$Query$GetStocktake$stocktake$submitted(this._res);

  TRes _res;

  call({String? userName, String? $__typename}) => _res;
}
