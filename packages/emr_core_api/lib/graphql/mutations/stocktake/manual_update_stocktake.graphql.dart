import '../../fragments/uomvalue_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$ManualUpdateStockTake {
  factory Variables$Mutation$ManualUpdateStockTake({
    required Input$StockTakeManualUpdateInput input,
  }) => Variables$Mutation$ManualUpdateStockTake._({r'input': input});

  Variables$Mutation$ManualUpdateStockTake._(this._$data);

  factory Variables$Mutation$ManualUpdateStockTake.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$StockTakeManualUpdateInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$ManualUpdateStockTake._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StockTakeManualUpdateInput get input =>
      (_$data['input'] as Input$StockTakeManualUpdateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ManualUpdateStockTake<
    Variables$Mutation$ManualUpdateStockTake
  >
  get copyWith =>
      CopyWith$Variables$Mutation$ManualUpdateStockTake(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ManualUpdateStockTake ||
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

abstract class CopyWith$Variables$Mutation$ManualUpdateStockTake<TRes> {
  factory CopyWith$Variables$Mutation$ManualUpdateStockTake(
    Variables$Mutation$ManualUpdateStockTake instance,
    TRes Function(Variables$Mutation$ManualUpdateStockTake) then,
  ) = _CopyWithImpl$Variables$Mutation$ManualUpdateStockTake;

  factory CopyWith$Variables$Mutation$ManualUpdateStockTake.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ManualUpdateStockTake;

  TRes call({Input$StockTakeManualUpdateInput? input});
}

class _CopyWithImpl$Variables$Mutation$ManualUpdateStockTake<TRes>
    implements CopyWith$Variables$Mutation$ManualUpdateStockTake<TRes> {
  _CopyWithImpl$Variables$Mutation$ManualUpdateStockTake(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ManualUpdateStockTake _instance;

  final TRes Function(Variables$Mutation$ManualUpdateStockTake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$ManualUpdateStockTake._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$StockTakeManualUpdateInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ManualUpdateStockTake<TRes>
    implements CopyWith$Variables$Mutation$ManualUpdateStockTake<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ManualUpdateStockTake(this._res);

  TRes _res;

  call({Input$StockTakeManualUpdateInput? input}) => _res;
}

class Mutation$ManualUpdateStockTake {
  Mutation$ManualUpdateStockTake({
    required this.manualUpdateStockTake,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ManualUpdateStockTake.fromJson(Map<String, dynamic> json) {
    final l$manualUpdateStockTake = json['manualUpdateStockTake'];
    final l$$__typename = json['__typename'];
    return Mutation$ManualUpdateStockTake(
      manualUpdateStockTake:
          Mutation$ManualUpdateStockTake$manualUpdateStockTake.fromJson(
            (l$manualUpdateStockTake as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake
  manualUpdateStockTake;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$manualUpdateStockTake = manualUpdateStockTake;
    _resultData['manualUpdateStockTake'] = l$manualUpdateStockTake.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$manualUpdateStockTake = manualUpdateStockTake;
    final l$$__typename = $__typename;
    return Object.hashAll([l$manualUpdateStockTake, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ManualUpdateStockTake ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$manualUpdateStockTake = manualUpdateStockTake;
    final lOther$manualUpdateStockTake = other.manualUpdateStockTake;
    if (l$manualUpdateStockTake != lOther$manualUpdateStockTake) {
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

extension UtilityExtension$Mutation$ManualUpdateStockTake
    on Mutation$ManualUpdateStockTake {
  CopyWith$Mutation$ManualUpdateStockTake<Mutation$ManualUpdateStockTake>
  get copyWith => CopyWith$Mutation$ManualUpdateStockTake(this, (i) => i);
}

abstract class CopyWith$Mutation$ManualUpdateStockTake<TRes> {
  factory CopyWith$Mutation$ManualUpdateStockTake(
    Mutation$ManualUpdateStockTake instance,
    TRes Function(Mutation$ManualUpdateStockTake) then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake;

  factory CopyWith$Mutation$ManualUpdateStockTake.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ManualUpdateStockTake;

  TRes call({
    Mutation$ManualUpdateStockTake$manualUpdateStockTake? manualUpdateStockTake,
    String? $__typename,
  });
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake<TRes>
  get manualUpdateStockTake;
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake<TRes>
    implements CopyWith$Mutation$ManualUpdateStockTake<TRes> {
  _CopyWithImpl$Mutation$ManualUpdateStockTake(this._instance, this._then);

  final Mutation$ManualUpdateStockTake _instance;

  final TRes Function(Mutation$ManualUpdateStockTake) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? manualUpdateStockTake = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManualUpdateStockTake(
      manualUpdateStockTake:
          manualUpdateStockTake == _undefined || manualUpdateStockTake == null
          ? _instance.manualUpdateStockTake
          : (manualUpdateStockTake
                as Mutation$ManualUpdateStockTake$manualUpdateStockTake),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake<TRes>
  get manualUpdateStockTake {
    final local$manualUpdateStockTake = _instance.manualUpdateStockTake;
    return CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake(
      local$manualUpdateStockTake,
      (e) => call(manualUpdateStockTake: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake<TRes>
    implements CopyWith$Mutation$ManualUpdateStockTake<TRes> {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake(this._res);

  TRes _res;

  call({
    Mutation$ManualUpdateStockTake$manualUpdateStockTake? manualUpdateStockTake,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake<TRes>
  get manualUpdateStockTake =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake.stub(_res);
}

const documentNodeMutationManualUpdateStockTake = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ManualUpdateStockTake'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'StockTakeManualUpdateInput'),
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
            name: NameNode(value: 'manualUpdateStockTake'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'stockTakeManualUpdateInput'),
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
                        name: NameNode(value: 'stocktakeLocations'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'productId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
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
                              name: NameNode(value: 'locationId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'location'),
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
                                    name: NameNode(value: 'active'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value: 'inventoryLocationType',
                                    ),
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
                                          name: NameNode(
                                            value: 'UomValueFragment',
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
                                    name: NameNode(value: 'rate'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FragmentSpreadNode(
                                          name: NameNode(
                                            value: 'UomValueFragment',
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
                              name: NameNode(value: 'snapshot'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'deltaWeight'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FragmentSpreadNode(
                                          name: NameNode(
                                            value: 'UomValueFragment',
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
                                  FieldNode(
                                    name: NameNode(value: 'currentWeight'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FragmentSpreadNode(
                                          name: NameNode(
                                            value: 'UomValueFragment',
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
                                    name: NameNode(value: 'currentCount'),
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
                                    name: NameNode(value: 'rate'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FragmentSpreadNode(
                                          name: NameNode(
                                            value: 'UomValueFragment',
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
                                    name: NameNode(value: 'unpricedWeight'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FragmentSpreadNode(
                                          name: NameNode(
                                            value: 'UomValueFragment',
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
                                    name: NameNode(
                                      value: 'unpricedDeltaWeight',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FragmentSpreadNode(
                                          name: NameNode(
                                            value: 'UomValueFragment',
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
                                    name: NameNode(value: 'isDeleted'),
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
                                          name: NameNode(value: 'value'),
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
                                          name: NameNode(value: 'mtValue'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FragmentSpreadNode(
                                          name: NameNode(
                                            value: 'UomValueFragment',
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
                                    name: NameNode(value: 'tareWeight'),
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
                                          name: NameNode(value: 'mtValue'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FragmentSpreadNode(
                                          name: NameNode(
                                            value: 'UomValueFragment',
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
                                          name: NameNode(value: 'userName'),
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
                                          name: NameNode(value: 'user'),
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
                                                name: NameNode(value: 'name'),
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
                                  FieldNode(
                                    name: NameNode(
                                      value: 'grossWeightSerialNumber',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value: 'tareWeightSerialNumber',
                                    ),
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
                                                name: NameNode(
                                                  value: 'userInfoId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'userName',
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
    fragmentDefinitionUomValueFragment,
  ],
);

class Mutation$ManualUpdateStockTake$manualUpdateStockTake {
  Mutation$ManualUpdateStockTake$manualUpdateStockTake({
    required this.success,
    required this.message,
    required this.errorCode,
    this.data,
    this.$__typename = 'StocktakeResponseOfStocktake',
  });

  factory Mutation$ManualUpdateStockTake$manualUpdateStockTake.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$ManualUpdateStockTake$manualUpdateStockTake(
      success: (l$success as bool),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      data: l$data == null
          ? null
          : Mutation$ManualUpdateStockTake$manualUpdateStockTake$data.fromJson(
              (l$data as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String message;

  final String errorCode;

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data? data;

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
    if (other is! Mutation$ManualUpdateStockTake$manualUpdateStockTake ||
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

extension UtilityExtension$Mutation$ManualUpdateStockTake$manualUpdateStockTake
    on Mutation$ManualUpdateStockTake$manualUpdateStockTake {
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake
  >
  get copyWith => CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake<
  TRes
> {
  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake instance,
    TRes Function(Mutation$ManualUpdateStockTake$manualUpdateStockTake) then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake;

  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake;

  TRes call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data? data,
    String? $__typename,
  });
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data<TRes>
  get data;
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake<TRes>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake<TRes> {
  _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake(
    this._instance,
    this._then,
  );

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake _instance;

  final TRes Function(Mutation$ManualUpdateStockTake$manualUpdateStockTake)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? errorCode = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake(
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
                as Mutation$ManualUpdateStockTake$manualUpdateStockTake$data?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data<TRes>
  get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data(
            local$data,
            (e) => call(data: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake<TRes> {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake(
    this._res,
  );

  TRes _res;

  call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data? data,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data<TRes>
  get data =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data.stub(
        _res,
      );
}

class Mutation$ManualUpdateStockTake$manualUpdateStockTake$data {
  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data({
    required this.stocktakeLocations,
    this.$__typename = 'Stocktake',
  });

  factory Mutation$ManualUpdateStockTake$manualUpdateStockTake$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$stocktakeLocations = json['stocktakeLocations'];
    final l$$__typename = json['__typename'];
    return Mutation$ManualUpdateStockTake$manualUpdateStockTake$data(
      stocktakeLocations: (l$stocktakeLocations as List<dynamic>)
          .map(
            (e) =>
                Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations
  >
  stocktakeLocations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stocktakeLocations = stocktakeLocations;
    _resultData['stocktakeLocations'] = l$stocktakeLocations
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stocktakeLocations = stocktakeLocations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$stocktakeLocations.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ManualUpdateStockTake$manualUpdateStockTake$data ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data
    on Mutation$ManualUpdateStockTake$manualUpdateStockTake$data {
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data
  >
  get copyWith =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data<
  TRes
> {
  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data instance,
    TRes Function(Mutation$ManualUpdateStockTake$manualUpdateStockTake$data)
    then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data;

  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data;

  TRes call({
    List<
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations
    >?
    stocktakeLocations,
    String? $__typename,
  });
  TRes stocktakeLocations(
    Iterable<
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations
    >
    Function(
      Iterable<
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations<
          Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data<
          TRes
        > {
  _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data(
    this._instance,
    this._then,
  );

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data _instance;

  final TRes Function(Mutation$ManualUpdateStockTake$manualUpdateStockTake$data)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? stocktakeLocations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data(
      stocktakeLocations:
          stocktakeLocations == _undefined || stocktakeLocations == null
          ? _instance.stocktakeLocations
          : (stocktakeLocations
                as List<
                  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes stocktakeLocations(
    Iterable<
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations
    >
    Function(
      Iterable<
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations<
          Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations
        >
      >,
    )
    _fn,
  ) => call(
    stocktakeLocations: _fn(
      _instance.stocktakeLocations.map(
        (e) =>
            CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations
    >?
    stocktakeLocations,
    String? $__typename,
  }) => _res;

  stocktakeLocations(_fn) => _res;
}

class Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations {
  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations({
    this.productId,
    this.product,
    required this.locationId,
    this.location,
    this.snapshot,
    this.netWeightMt,
    required this.weightVariance,
    required this.valueVariance,
    required this.comments,
    required this.status,
    required this.takenWeights,
    this.$__typename = 'StocktakeLocation',
  });

  factory Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$productId = json['productId'];
    final l$product = json['product'];
    final l$locationId = json['locationId'];
    final l$location = json['location'];
    final l$snapshot = json['snapshot'];
    final l$netWeightMt = json['netWeightMt'];
    final l$weightVariance = json['weightVariance'];
    final l$valueVariance = json['valueVariance'];
    final l$comments = json['comments'];
    final l$status = json['status'];
    final l$takenWeights = json['takenWeights'];
    final l$$__typename = json['__typename'];
    return Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations(
      productId: (l$productId as String?),
      product: l$product == null
          ? null
          : Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product.fromJson(
              (l$product as Map<String, dynamic>),
            ),
      locationId: (l$locationId as String),
      location: l$location == null
          ? null
          : Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location.fromJson(
              (l$location as Map<String, dynamic>),
            ),
      snapshot: l$snapshot == null
          ? null
          : Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot.fromJson(
              (l$snapshot as Map<String, dynamic>),
            ),
      netWeightMt: (l$netWeightMt as num?)?.toDouble(),
      weightVariance: Fragment$UomValueFragment.fromJson(
        (l$weightVariance as Map<String, dynamic>),
      ),
      valueVariance: (l$valueVariance as num).toDouble(),
      comments: (l$comments as List<dynamic>)
          .map(
            (e) =>
                Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      status: fromJson$Enum$StockTakeLocationStatus((l$status as String)),
      takenWeights: (l$takenWeights as List<dynamic>)
          .map(
            (e) =>
                Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? productId;

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product?
  product;

  final String locationId;

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location?
  location;

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot?
  snapshot;

  final double? netWeightMt;

  final Fragment$UomValueFragment weightVariance;

  final double valueVariance;

  final List<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments
  >
  comments;

  final Enum$StockTakeLocationStatus status;

  final List<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights
  >
  takenWeights;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$productId = productId;
    _resultData['productId'] = l$productId;
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$locationId = locationId;
    _resultData['locationId'] = l$locationId;
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$snapshot = snapshot;
    _resultData['snapshot'] = l$snapshot?.toJson();
    final l$netWeightMt = netWeightMt;
    _resultData['netWeightMt'] = l$netWeightMt;
    final l$weightVariance = weightVariance;
    _resultData['weightVariance'] = l$weightVariance.toJson();
    final l$valueVariance = valueVariance;
    _resultData['valueVariance'] = l$valueVariance;
    final l$comments = comments;
    _resultData['comments'] = l$comments.map((e) => e.toJson()).toList();
    final l$status = status;
    _resultData['status'] = toJson$Enum$StockTakeLocationStatus(l$status);
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
    final l$productId = productId;
    final l$product = product;
    final l$locationId = locationId;
    final l$location = location;
    final l$snapshot = snapshot;
    final l$netWeightMt = netWeightMt;
    final l$weightVariance = weightVariance;
    final l$valueVariance = valueVariance;
    final l$comments = comments;
    final l$status = status;
    final l$takenWeights = takenWeights;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$productId,
      l$product,
      l$locationId,
      l$location,
      l$snapshot,
      l$netWeightMt,
      l$weightVariance,
      l$valueVariance,
      Object.hashAll(l$comments.map((v) => v)),
      l$status,
      Object.hashAll(l$takenWeights.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations ||
        runtimeType != other.runtimeType) {
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
    final l$snapshot = snapshot;
    final lOther$snapshot = other.snapshot;
    if (l$snapshot != lOther$snapshot) {
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

extension UtilityExtension$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations
    on Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations {
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations
  >
  get copyWith =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations<
  TRes
> {
  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations
    instance,
    TRes Function(
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations;

  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations;

  TRes call({
    String? productId,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product?
    product,
    String? locationId,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location?
    location,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot?
    snapshot,
    double? netWeightMt,
    Fragment$UomValueFragment? weightVariance,
    double? valueVariance,
    List<
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments
    >?
    comments,
    Enum$StockTakeLocationStatus? status,
    List<
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights
    >?
    takenWeights,
    String? $__typename,
  });
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product<
    TRes
  >
  get product;
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location<
    TRes
  >
  get location;
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot<
    TRes
  >
  get snapshot;
  CopyWith$Fragment$UomValueFragment<TRes> get weightVariance;
  TRes comments(
    Iterable<
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments
    >
    Function(
      Iterable<
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments<
          Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments
        >
      >,
    )
    _fn,
  );
  TRes takenWeights(
    Iterable<
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights
    >
    Function(
      Iterable<
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights<
          Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations<
          TRes
        > {
  _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations(
    this._instance,
    this._then,
  );

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations
  _instance;

  final TRes Function(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productId = _undefined,
    Object? product = _undefined,
    Object? locationId = _undefined,
    Object? location = _undefined,
    Object? snapshot = _undefined,
    Object? netWeightMt = _undefined,
    Object? weightVariance = _undefined,
    Object? valueVariance = _undefined,
    Object? comments = _undefined,
    Object? status = _undefined,
    Object? takenWeights = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations(
      productId: productId == _undefined
          ? _instance.productId
          : (productId as String?),
      product: product == _undefined
          ? _instance.product
          : (product
                as Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product?),
      locationId: locationId == _undefined || locationId == null
          ? _instance.locationId
          : (locationId as String),
      location: location == _undefined
          ? _instance.location
          : (location
                as Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location?),
      snapshot: snapshot == _undefined
          ? _instance.snapshot
          : (snapshot
                as Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot?),
      netWeightMt: netWeightMt == _undefined
          ? _instance.netWeightMt
          : (netWeightMt as double?),
      weightVariance: weightVariance == _undefined || weightVariance == null
          ? _instance.weightVariance
          : (weightVariance as Fragment$UomValueFragment),
      valueVariance: valueVariance == _undefined || valueVariance == null
          ? _instance.valueVariance
          : (valueVariance as double),
      comments: comments == _undefined || comments == null
          ? _instance.comments
          : (comments
                as List<
                  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments
                >),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$StockTakeLocationStatus),
      takenWeights: takenWeights == _undefined || takenWeights == null
          ? _instance.takenWeights
          : (takenWeights
                as List<
                  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product<
    TRes
  >
  get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product(
            local$product,
            (e) => call(product: e),
          );
  }

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location<
    TRes
  >
  get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location(
            local$location,
            (e) => call(location: e),
          );
  }

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot<
    TRes
  >
  get snapshot {
    final local$snapshot = _instance.snapshot;
    return local$snapshot == null
        ? CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot(
            local$snapshot,
            (e) => call(snapshot: e),
          );
  }

  CopyWith$Fragment$UomValueFragment<TRes> get weightVariance {
    final local$weightVariance = _instance.weightVariance;
    return CopyWith$Fragment$UomValueFragment(
      local$weightVariance,
      (e) => call(weightVariance: e),
    );
  }

  TRes comments(
    Iterable<
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments
    >
    Function(
      Iterable<
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments<
          Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments
        >
      >,
    )
    _fn,
  ) => call(
    comments: _fn(
      _instance.comments.map(
        (e) =>
            CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes takenWeights(
    Iterable<
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights
    >
    Function(
      Iterable<
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights<
          Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights
        >
      >,
    )
    _fn,
  ) => call(
    takenWeights: _fn(
      _instance.takenWeights.map(
        (e) =>
            CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations(
    this._res,
  );

  TRes _res;

  call({
    String? productId,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product?
    product,
    String? locationId,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location?
    location,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot?
    snapshot,
    double? netWeightMt,
    Fragment$UomValueFragment? weightVariance,
    double? valueVariance,
    List<
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments
    >?
    comments,
    Enum$StockTakeLocationStatus? status,
    List<
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights
    >?
    takenWeights,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product<
    TRes
  >
  get product =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product.stub(
        _res,
      );

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location<
    TRes
  >
  get location =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location.stub(
        _res,
      );

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot<
    TRes
  >
  get snapshot =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot.stub(
        _res,
      );

  CopyWith$Fragment$UomValueFragment<TRes> get weightVariance =>
      CopyWith$Fragment$UomValueFragment.stub(_res);

  comments(_fn) => _res;

  takenWeights(_fn) => _res;
}

class Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product {
  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product({
    required this.code,
    required this.description,
    required this.classification,
    this.$__typename = 'Product',
  });

  factory Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$description = json['description'];
    final l$classification = json['classification'];
    final l$$__typename = json['__typename'];
    return Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product(
      code: (l$code as String),
      description: (l$description as String),
      classification:
          Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification.fromJson(
            (l$classification as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String description;

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification
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
    if (other
            is! Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product ||
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

extension UtilityExtension$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product
    on
        Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product {
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product
  >
  get copyWith =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product<
  TRes
> {
  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product
    instance,
    TRes Function(
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product;

  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product;

  TRes call({
    String? code,
    String? description,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification?
    classification,
    String? $__typename,
  });
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification<
    TRes
  >
  get classification;
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product<
          TRes
        > {
  _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product(
    this._instance,
    this._then,
  );

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product
  _instance;

  final TRes Function(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? description = _undefined,
    Object? classification = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      classification: classification == _undefined || classification == null
          ? _instance.classification
          : (classification
                as Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification<
    TRes
  >
  get classification {
    final local$classification = _instance.classification;
    return CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification(
      local$classification,
      (e) => call(classification: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    String? description,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification?
    classification,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification<
    TRes
  >
  get classification =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification.stub(
        _res,
      );
}

class Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification {
  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification({
    required this.family,
    required this.line,
    required this.$class,
    this.$__typename = 'ProductClassification',
  });

  factory Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$family = json['family'];
    final l$line = json['line'];
    final l$$class = json['class'];
    final l$$__typename = json['__typename'];
    return Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification(
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
            is! Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification ||
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

extension UtilityExtension$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification
    on
        Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification {
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification
  >
  get copyWith =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification<
  TRes
> {
  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification
    instance,
    TRes Function(
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification;

  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification;

  TRes call({
    String? family,
    String? line,
    String? $class,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification<
          TRes
        > {
  _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification(
    this._instance,
    this._then,
  );

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification
  _instance;

  final TRes Function(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? family = _undefined,
    Object? line = _undefined,
    Object? $class = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification(
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

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$product$classification(
    this._res,
  );

  TRes _res;

  call({String? family, String? line, String? $class, String? $__typename}) =>
      _res;
}

class Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location {
  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location({
    required this.code,
    required this.description,
    required this.active,
    required this.inventoryLocationType,
    required this.weight,
    required this.rate,
    required this.value,
    this.$__typename = 'InventoryLocation',
  });

  factory Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$description = json['description'];
    final l$active = json['active'];
    final l$inventoryLocationType = json['inventoryLocationType'];
    final l$weight = json['weight'];
    final l$rate = json['rate'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location(
      code: (l$code as String),
      description: (l$description as String),
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
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String description;

  final bool active;

  final Enum$InventoryLocationType inventoryLocationType;

  final Fragment$UomValueFragment weight;

  final Fragment$UomValueFragment rate;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$description = description;
    final l$active = active;
    final l$inventoryLocationType = inventoryLocationType;
    final l$weight = weight;
    final l$rate = rate;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$description,
      l$active,
      l$inventoryLocationType,
      l$weight,
      l$rate,
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
            is! Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location
    on
        Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location {
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location
  >
  get copyWith =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location<
  TRes
> {
  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location
    instance,
    TRes Function(
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location;

  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location;

  TRes call({
    String? code,
    String? description,
    bool? active,
    Enum$InventoryLocationType? inventoryLocationType,
    Fragment$UomValueFragment? weight,
    Fragment$UomValueFragment? rate,
    double? value,
    String? $__typename,
  });
  CopyWith$Fragment$UomValueFragment<TRes> get weight;
  CopyWith$Fragment$UomValueFragment<TRes> get rate;
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location<
          TRes
        > {
  _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location(
    this._instance,
    this._then,
  );

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location
  _instance;

  final TRes Function(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? description = _undefined,
    Object? active = _undefined,
    Object? inventoryLocationType = _undefined,
    Object? weight = _undefined,
    Object? rate = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
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
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
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

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$location(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    String? description,
    bool? active,
    Enum$InventoryLocationType? inventoryLocationType,
    Fragment$UomValueFragment? weight,
    Fragment$UomValueFragment? rate,
    double? value,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$UomValueFragment<TRes> get weight =>
      CopyWith$Fragment$UomValueFragment.stub(_res);

  CopyWith$Fragment$UomValueFragment<TRes> get rate =>
      CopyWith$Fragment$UomValueFragment.stub(_res);
}

class Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot {
  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot({
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

  factory Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot.fromJson(
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
    return Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot(
      deltaWeight: Fragment$UomValueFragment.fromJson(
        (l$deltaWeight as Map<String, dynamic>),
      ),
      created:
          Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created.fromJson(
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

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created
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
    if (other
            is! Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot ||
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

extension UtilityExtension$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot
    on
        Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot {
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot
  >
  get copyWith =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot<
  TRes
> {
  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot
    instance,
    TRes Function(
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot;

  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot;

  TRes call({
    Fragment$UomValueFragment? deltaWeight,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created?
    created,
    Fragment$UomValueFragment? currentWeight,
    int? currentCount,
    double? value,
    Fragment$UomValueFragment? rate,
    Fragment$UomValueFragment? unpricedWeight,
    Fragment$UomValueFragment? unpricedDeltaWeight,
    String? $__typename,
  });
  CopyWith$Fragment$UomValueFragment<TRes> get deltaWeight;
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created<
    TRes
  >
  get created;
  CopyWith$Fragment$UomValueFragment<TRes> get currentWeight;
  CopyWith$Fragment$UomValueFragment<TRes> get rate;
  CopyWith$Fragment$UomValueFragment<TRes> get unpricedWeight;
  CopyWith$Fragment$UomValueFragment<TRes> get unpricedDeltaWeight;
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot<
          TRes
        > {
  _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot(
    this._instance,
    this._then,
  );

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot
  _instance;

  final TRes Function(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot,
  )
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
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot(
      deltaWeight: deltaWeight == _undefined || deltaWeight == null
          ? _instance.deltaWeight
          : (deltaWeight as Fragment$UomValueFragment),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created),
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

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created(
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

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot(
    this._res,
  );

  TRes _res;

  call({
    Fragment$UomValueFragment? deltaWeight,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created?
    created,
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

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created<
    TRes
  >
  get created =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created.stub(
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

class Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created {
  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created({
    required this.at,
    this.user,
    this.$__typename = 'Created',
  });

  factory Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created(
      at: DateTime.parse((l$at as String)),
      user: l$user == null
          ? null
          : Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user?
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
            is! Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created ||
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

extension UtilityExtension$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created
    on
        Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created {
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created
  >
  get copyWith =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created<
  TRes
> {
  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created
    instance,
    TRes Function(
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created;

  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created;

  TRes call({
    DateTime? at,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user?
    user,
    String? $__typename,
  });
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user<
    TRes
  >
  get user;
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created<
          TRes
        > {
  _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created(
    this._instance,
    this._then,
  );

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created
  _instance;

  final TRes Function(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      user: user == _undefined
          ? _instance.user
          : (user
                as Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user<
    TRes
  >
  get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user?
    user,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user<
    TRes
  >
  get user =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user.stub(
        _res,
      );
}

class Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user {
  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user({
    required this.name,
    this.$__typename = 'UserInfo',
  });

  factory Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user(
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
            is! Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user ||
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

extension UtilityExtension$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user
    on
        Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user {
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user
  >
  get copyWith =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user<
  TRes
> {
  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user
    instance,
    TRes Function(
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user;

  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user<
          TRes
        > {
  _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user(
    this._instance,
    this._then,
  );

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user
  _instance;

  final TRes Function(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$snapshot$created$user(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}

class Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments {
  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments(
      content: (l$content as String),
      created:
          Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created
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
            is! Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments ||
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

extension UtilityExtension$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments
    on
        Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments {
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments
  >
  get copyWith =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments<
  TRes
> {
  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments
    instance,
    TRes Function(
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments;

  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments;

  TRes call({
    String? content,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created?
    created,
    String? $__typename,
  });
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments<
          TRes
        > {
  _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments(
    this._instance,
    this._then,
  );

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments
  _instance;

  final TRes Function(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments(
    this._res,
  );

  TRes _res;

  call({
    String? content,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created?
    created,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created<
    TRes
  >
  get created =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created.stub(
        _res,
      );
}

class Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created {
  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created(
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
            is! Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created ||
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

extension UtilityExtension$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created
    on
        Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created {
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created
  >
  get copyWith =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created<
  TRes
> {
  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created
    instance,
    TRes Function(
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created;

  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created<
          TRes
        > {
  _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created(
    this._instance,
    this._then,
  );

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created
  _instance;

  final TRes Function(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created(
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

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$comments$created(
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

class Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights {
  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights({
    required this.id,
    required this.title,
    required this.isDeleted,
    required this.grossWeight,
    required this.tareWeight,
    required this.created,
    this.grossWeightSerialNumber,
    this.tareWeightSerialNumber,
    this.grossWeightScaleIdentifier,
    this.tareWeightScaleIdentifier,
    required this.comments,
    required this.captureMethod,
    this.$__typename = 'StocktakeWeight',
  });

  factory Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$isDeleted = json['isDeleted'];
    final l$grossWeight = json['grossWeight'];
    final l$tareWeight = json['tareWeight'];
    final l$created = json['created'];
    final l$grossWeightSerialNumber = json['grossWeightSerialNumber'];
    final l$tareWeightSerialNumber = json['tareWeightSerialNumber'];
    final l$grossWeightScaleIdentifier = json['grossWeightScaleIdentifier'];
    final l$tareWeightScaleIdentifier = json['tareWeightScaleIdentifier'];
    final l$comments = json['comments'];
    final l$captureMethod = json['captureMethod'];
    final l$$__typename = json['__typename'];
    return Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights(
      id: (l$id as int),
      title: (l$title as String),
      isDeleted: (l$isDeleted as bool),
      grossWeight:
          Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight.fromJson(
            (l$grossWeight as Map<String, dynamic>),
          ),
      tareWeight:
          Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight.fromJson(
            (l$tareWeight as Map<String, dynamic>),
          ),
      created:
          Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      grossWeightSerialNumber: (l$grossWeightSerialNumber as String?),
      tareWeightSerialNumber: (l$tareWeightSerialNumber as String?),
      grossWeightScaleIdentifier: (l$grossWeightScaleIdentifier as String?),
      tareWeightScaleIdentifier: (l$tareWeightScaleIdentifier as String?),
      comments: (l$comments as List<dynamic>)
          .map(
            (e) =>
                Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      captureMethod: fromJson$Enum$StockTakeWeightCaptureMethod(
        (l$captureMethod as String),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String title;

  final bool isDeleted;

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight
  grossWeight;

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight
  tareWeight;

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created
  created;

  final String? grossWeightSerialNumber;

  final String? tareWeightSerialNumber;

  final String? grossWeightScaleIdentifier;

  final String? tareWeightScaleIdentifier;

  final List<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments
  >
  comments;

  final Enum$StockTakeWeightCaptureMethod captureMethod;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$isDeleted = isDeleted;
    _resultData['isDeleted'] = l$isDeleted;
    final l$grossWeight = grossWeight;
    _resultData['grossWeight'] = l$grossWeight.toJson();
    final l$tareWeight = tareWeight;
    _resultData['tareWeight'] = l$tareWeight.toJson();
    final l$created = created;
    _resultData['created'] = l$created.toJson();
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
    final l$isDeleted = isDeleted;
    final l$grossWeight = grossWeight;
    final l$tareWeight = tareWeight;
    final l$created = created;
    final l$grossWeightSerialNumber = grossWeightSerialNumber;
    final l$tareWeightSerialNumber = tareWeightSerialNumber;
    final l$grossWeightScaleIdentifier = grossWeightScaleIdentifier;
    final l$tareWeightScaleIdentifier = tareWeightScaleIdentifier;
    final l$comments = comments;
    final l$captureMethod = captureMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$isDeleted,
      l$grossWeight,
      l$tareWeight,
      l$created,
      l$grossWeightSerialNumber,
      l$tareWeightSerialNumber,
      l$grossWeightScaleIdentifier,
      l$tareWeightScaleIdentifier,
      Object.hashAll(l$comments.map((v) => v)),
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
            is! Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights ||
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
    final l$isDeleted = isDeleted;
    final lOther$isDeleted = other.isDeleted;
    if (l$isDeleted != lOther$isDeleted) {
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

extension UtilityExtension$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights
    on
        Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights {
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights
  >
  get copyWith =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights<
  TRes
> {
  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights
    instance,
    TRes Function(
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights;

  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights;

  TRes call({
    int? id,
    String? title,
    bool? isDeleted,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight?
    grossWeight,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight?
    tareWeight,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created?
    created,
    String? grossWeightSerialNumber,
    String? tareWeightSerialNumber,
    String? grossWeightScaleIdentifier,
    String? tareWeightScaleIdentifier,
    List<
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments
    >?
    comments,
    Enum$StockTakeWeightCaptureMethod? captureMethod,
    String? $__typename,
  });
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight<
    TRes
  >
  get grossWeight;
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight<
    TRes
  >
  get tareWeight;
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created<
    TRes
  >
  get created;
  TRes comments(
    Iterable<
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments
    >
    Function(
      Iterable<
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments<
          Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights<
          TRes
        > {
  _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights(
    this._instance,
    this._then,
  );

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights
  _instance;

  final TRes Function(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? isDeleted = _undefined,
    Object? grossWeight = _undefined,
    Object? tareWeight = _undefined,
    Object? created = _undefined,
    Object? grossWeightSerialNumber = _undefined,
    Object? tareWeightSerialNumber = _undefined,
    Object? grossWeightScaleIdentifier = _undefined,
    Object? tareWeightScaleIdentifier = _undefined,
    Object? comments = _undefined,
    Object? captureMethod = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights(
      id: id == _undefined || id == null ? _instance.id : (id as int),
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      isDeleted: isDeleted == _undefined || isDeleted == null
          ? _instance.isDeleted
          : (isDeleted as bool),
      grossWeight: grossWeight == _undefined || grossWeight == null
          ? _instance.grossWeight
          : (grossWeight
                as Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight),
      tareWeight: tareWeight == _undefined || tareWeight == null
          ? _instance.tareWeight
          : (tareWeight
                as Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created),
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
                  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments
                >),
      captureMethod: captureMethod == _undefined || captureMethod == null
          ? _instance.captureMethod
          : (captureMethod as Enum$StockTakeWeightCaptureMethod),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight<
    TRes
  >
  get grossWeight {
    final local$grossWeight = _instance.grossWeight;
    return CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight(
      local$grossWeight,
      (e) => call(grossWeight: e),
    );
  }

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight<
    TRes
  >
  get tareWeight {
    final local$tareWeight = _instance.tareWeight;
    return CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight(
      local$tareWeight,
      (e) => call(tareWeight: e),
    );
  }

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created(
      local$created,
      (e) => call(created: e),
    );
  }

  TRes comments(
    Iterable<
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments
    >
    Function(
      Iterable<
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments<
          Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments
        >
      >,
    )
    _fn,
  ) => call(
    comments: _fn(
      _instance.comments.map(
        (e) =>
            CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights(
    this._res,
  );

  TRes _res;

  call({
    int? id,
    String? title,
    bool? isDeleted,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight?
    grossWeight,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight?
    tareWeight,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created?
    created,
    String? grossWeightSerialNumber,
    String? tareWeightSerialNumber,
    String? grossWeightScaleIdentifier,
    String? tareWeightScaleIdentifier,
    List<
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments
    >?
    comments,
    Enum$StockTakeWeightCaptureMethod? captureMethod,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight<
    TRes
  >
  get grossWeight =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight.stub(
        _res,
      );

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight<
    TRes
  >
  get tareWeight =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight.stub(
        _res,
      );

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created<
    TRes
  >
  get created =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created.stub(
        _res,
      );

  comments(_fn) => _res;
}

class Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight
    implements Fragment$UomValueFragment {
  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight({
    required this.value,
    required this.uom,
    required this.mtValue,
    required this.isRate,
    required this.id,
    this.$__typename = 'UomValue',
  });

  factory Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$uom = json['uom'];
    final l$mtValue = json['mtValue'];
    final l$isRate = json['isRate'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight(
      value: (l$value as num).toDouble(),
      uom: fromJson$Enum$Uom((l$uom as String)),
      mtValue: (l$mtValue as num).toDouble(),
      isRate: (l$isRate as bool),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final double value;

  final Enum$Uom uom;

  final double mtValue;

  final bool isRate;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$mtValue = mtValue;
    _resultData['mtValue'] = l$mtValue;
    final l$isRate = isRate;
    _resultData['isRate'] = l$isRate;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$uom = uom;
    final l$mtValue = mtValue;
    final l$isRate = isRate;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      l$uom,
      l$mtValue,
      l$isRate,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight
    on
        Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight {
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight
  >
  get copyWith =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight<
  TRes
> {
  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight
    instance,
    TRes Function(
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight;

  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight;

  TRes call({
    double? value,
    Enum$Uom? uom,
    double? mtValue,
    bool? isRate,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight<
          TRes
        > {
  _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight(
    this._instance,
    this._then,
  );

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight
  _instance;

  final TRes Function(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? uom = _undefined,
    Object? mtValue = _undefined,
    Object? isRate = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      mtValue: mtValue == _undefined || mtValue == null
          ? _instance.mtValue
          : (mtValue as double),
      isRate: isRate == _undefined || isRate == null
          ? _instance.isRate
          : (isRate as bool),
      id: id == _undefined || id == null ? _instance.id : (id as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$grossWeight(
    this._res,
  );

  TRes _res;

  call({
    double? value,
    Enum$Uom? uom,
    double? mtValue,
    bool? isRate,
    int? id,
    String? $__typename,
  }) => _res;
}

class Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight
    implements Fragment$UomValueFragment {
  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight({
    required this.value,
    required this.uom,
    required this.mtValue,
    required this.isRate,
    required this.id,
    this.$__typename = 'UomValue',
  });

  factory Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$uom = json['uom'];
    final l$mtValue = json['mtValue'];
    final l$isRate = json['isRate'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight(
      value: (l$value as num).toDouble(),
      uom: fromJson$Enum$Uom((l$uom as String)),
      mtValue: (l$mtValue as num).toDouble(),
      isRate: (l$isRate as bool),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final double value;

  final Enum$Uom uom;

  final double mtValue;

  final bool isRate;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$mtValue = mtValue;
    _resultData['mtValue'] = l$mtValue;
    final l$isRate = isRate;
    _resultData['isRate'] = l$isRate;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$uom = uom;
    final l$mtValue = mtValue;
    final l$isRate = isRate;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      l$uom,
      l$mtValue,
      l$isRate,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight
    on
        Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight {
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight
  >
  get copyWith =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight<
  TRes
> {
  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight
    instance,
    TRes Function(
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight;

  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight;

  TRes call({
    double? value,
    Enum$Uom? uom,
    double? mtValue,
    bool? isRate,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight<
          TRes
        > {
  _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight(
    this._instance,
    this._then,
  );

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight
  _instance;

  final TRes Function(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? uom = _undefined,
    Object? mtValue = _undefined,
    Object? isRate = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      mtValue: mtValue == _undefined || mtValue == null
          ? _instance.mtValue
          : (mtValue as double),
      isRate: isRate == _undefined || isRate == null
          ? _instance.isRate
          : (isRate as bool),
      id: id == _undefined || id == null ? _instance.id : (id as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$tareWeight(
    this._res,
  );

  TRes _res;

  call({
    double? value,
    Enum$Uom? uom,
    double? mtValue,
    bool? isRate,
    int? id,
    String? $__typename,
  }) => _res;
}

class Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created {
  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.user,
    this.$__typename = 'Created',
  });

  factory Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      user: l$user == null
          ? null
          : Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user?
  user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$at,
      l$userName,
      l$userInfoId,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created ||
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

extension UtilityExtension$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created
    on
        Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created {
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created
  >
  get copyWith =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created<
  TRes
> {
  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created
    instance,
    TRes Function(
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created;

  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user?
    user,
    String? $__typename,
  });
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user<
    TRes
  >
  get user;
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created<
          TRes
        > {
  _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created(
    this._instance,
    this._then,
  );

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created
  _instance;

  final TRes Function(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      user: user == _undefined
          ? _instance.user
          : (user
                as Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user<
    TRes
  >
  get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user?
    user,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user<
    TRes
  >
  get user =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user.stub(
        _res,
      );
}

class Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user {
  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user({
    required this.id,
    required this.name,
    this.$__typename = 'UserInfo',
  });

  factory Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user
    on
        Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user {
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user
  >
  get copyWith =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user<
  TRes
> {
  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user
    instance,
    TRes Function(
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user;

  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user<
          TRes
        > {
  _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user(
    this._instance,
    this._then,
  );

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user
  _instance;

  final TRes Function(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$created$user(
    this._res,
  );

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

class Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments {
  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments(
      content: (l$content as String),
      created:
          Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created
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
            is! Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments ||
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

extension UtilityExtension$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments
    on
        Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments {
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments
  >
  get copyWith =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments<
  TRes
> {
  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments
    instance,
    TRes Function(
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments;

  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments;

  TRes call({
    String? content,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created?
    created,
    String? $__typename,
  });
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments<
          TRes
        > {
  _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments(
    this._instance,
    this._then,
  );

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments
  _instance;

  final TRes Function(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments(
    this._res,
  );

  TRes _res;

  call({
    String? content,
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created?
    created,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created<
    TRes
  >
  get created =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created.stub(
        _res,
      );
}

class Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created {
  Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created(
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
            is! Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created ||
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

extension UtilityExtension$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created
    on
        Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created {
  CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created<
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created
  >
  get copyWith =>
      CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created<
  TRes
> {
  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created
    instance,
    TRes Function(
      Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created,
    )
    then,
  ) = _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created;

  factory CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created<
          TRes
        > {
  _CopyWithImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created(
    this._instance,
    this._then,
  );

  final Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created
  _instance;

  final TRes Function(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created(
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

class _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created<
  TRes
>
    implements
        CopyWith$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ManualUpdateStockTake$manualUpdateStockTake$data$stocktakeLocations$takenWeights$comments$created(
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
