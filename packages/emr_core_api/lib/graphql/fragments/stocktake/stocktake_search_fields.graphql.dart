import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$StocktakeSearchFields {
  Fragment$StocktakeSearchFields({
    required this.id,
    required this.name,
    required this.status,
    required this.conductedBy,
    required this.productFamily,
    required this.isRoutineCheck,
    required this.defaultUom,
    required this.currencyCode,
    required this.modified,
    this.workflow,
    this.conductor,
    required this.yardCode,
    required this.created,
    required this.stocktakeLocations,
    this.$__typename = 'Stocktake',
  });

  factory Fragment$StocktakeSearchFields.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$status = json['status'];
    final l$conductedBy = json['conductedBy'];
    final l$productFamily = json['productFamily'];
    final l$isRoutineCheck = json['isRoutineCheck'];
    final l$defaultUom = json['defaultUom'];
    final l$currencyCode = json['currencyCode'];
    final l$modified = json['modified'];
    final l$workflow = json['workflow'];
    final l$conductor = json['conductor'];
    final l$yardCode = json['yardCode'];
    final l$created = json['created'];
    final l$stocktakeLocations = json['stocktakeLocations'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeSearchFields(
      id: (l$id as String),
      name: (l$name as String),
      status: fromJson$Enum$StocktakeStatus((l$status as String)),
      conductedBy: (l$conductedBy as String),
      productFamily: (l$productFamily as String),
      isRoutineCheck: (l$isRoutineCheck as bool),
      defaultUom: fromJson$Enum$Uom((l$defaultUom as String)),
      currencyCode: (l$currencyCode as String),
      modified: Fragment$StocktakeSearchFields$modified.fromJson(
        (l$modified as Map<String, dynamic>),
      ),
      workflow: l$workflow == null
          ? null
          : Fragment$StocktakeSearchFields$workflow.fromJson(
              (l$workflow as Map<String, dynamic>),
            ),
      conductor: l$conductor == null
          ? null
          : Fragment$StocktakeSearchFields$conductor.fromJson(
              (l$conductor as Map<String, dynamic>),
            ),
      yardCode: (l$yardCode as String),
      created: Fragment$StocktakeSearchFields$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      stocktakeLocations: (l$stocktakeLocations as List<dynamic>)
          .map(
            (e) => Fragment$StocktakeSearchFields$stocktakeLocations.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final Enum$StocktakeStatus status;

  final String conductedBy;

  final String productFamily;

  final bool isRoutineCheck;

  final Enum$Uom defaultUom;

  final String currencyCode;

  final Fragment$StocktakeSearchFields$modified modified;

  final Fragment$StocktakeSearchFields$workflow? workflow;

  final Fragment$StocktakeSearchFields$conductor? conductor;

  final String yardCode;

  final Fragment$StocktakeSearchFields$created created;

  final List<Fragment$StocktakeSearchFields$stocktakeLocations>
  stocktakeLocations;

  final String $__typename;

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
    final l$isRoutineCheck = isRoutineCheck;
    _resultData['isRoutineCheck'] = l$isRoutineCheck;
    final l$defaultUom = defaultUom;
    _resultData['defaultUom'] = toJson$Enum$Uom(l$defaultUom);
    final l$currencyCode = currencyCode;
    _resultData['currencyCode'] = l$currencyCode;
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$workflow = workflow;
    _resultData['workflow'] = l$workflow?.toJson();
    final l$conductor = conductor;
    _resultData['conductor'] = l$conductor?.toJson();
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
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
    final l$id = id;
    final l$name = name;
    final l$status = status;
    final l$conductedBy = conductedBy;
    final l$productFamily = productFamily;
    final l$isRoutineCheck = isRoutineCheck;
    final l$defaultUom = defaultUom;
    final l$currencyCode = currencyCode;
    final l$modified = modified;
    final l$workflow = workflow;
    final l$conductor = conductor;
    final l$yardCode = yardCode;
    final l$created = created;
    final l$stocktakeLocations = stocktakeLocations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$status,
      l$conductedBy,
      l$productFamily,
      l$isRoutineCheck,
      l$defaultUom,
      l$currencyCode,
      l$modified,
      l$workflow,
      l$conductor,
      l$yardCode,
      l$created,
      Object.hashAll(l$stocktakeLocations.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeSearchFields ||
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
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
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
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Fragment$StocktakeSearchFields
    on Fragment$StocktakeSearchFields {
  CopyWith$Fragment$StocktakeSearchFields<Fragment$StocktakeSearchFields>
  get copyWith => CopyWith$Fragment$StocktakeSearchFields(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeSearchFields<TRes> {
  factory CopyWith$Fragment$StocktakeSearchFields(
    Fragment$StocktakeSearchFields instance,
    TRes Function(Fragment$StocktakeSearchFields) then,
  ) = _CopyWithImpl$Fragment$StocktakeSearchFields;

  factory CopyWith$Fragment$StocktakeSearchFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeSearchFields;

  TRes call({
    String? id,
    String? name,
    Enum$StocktakeStatus? status,
    String? conductedBy,
    String? productFamily,
    bool? isRoutineCheck,
    Enum$Uom? defaultUom,
    String? currencyCode,
    Fragment$StocktakeSearchFields$modified? modified,
    Fragment$StocktakeSearchFields$workflow? workflow,
    Fragment$StocktakeSearchFields$conductor? conductor,
    String? yardCode,
    Fragment$StocktakeSearchFields$created? created,
    List<Fragment$StocktakeSearchFields$stocktakeLocations>? stocktakeLocations,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeSearchFields$modified<TRes> get modified;
  CopyWith$Fragment$StocktakeSearchFields$workflow<TRes> get workflow;
  CopyWith$Fragment$StocktakeSearchFields$conductor<TRes> get conductor;
  CopyWith$Fragment$StocktakeSearchFields$created<TRes> get created;
  TRes stocktakeLocations(
    Iterable<Fragment$StocktakeSearchFields$stocktakeLocations> Function(
      Iterable<
        CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations<
          Fragment$StocktakeSearchFields$stocktakeLocations
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$StocktakeSearchFields<TRes>
    implements CopyWith$Fragment$StocktakeSearchFields<TRes> {
  _CopyWithImpl$Fragment$StocktakeSearchFields(this._instance, this._then);

  final Fragment$StocktakeSearchFields _instance;

  final TRes Function(Fragment$StocktakeSearchFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? status = _undefined,
    Object? conductedBy = _undefined,
    Object? productFamily = _undefined,
    Object? isRoutineCheck = _undefined,
    Object? defaultUom = _undefined,
    Object? currencyCode = _undefined,
    Object? modified = _undefined,
    Object? workflow = _undefined,
    Object? conductor = _undefined,
    Object? yardCode = _undefined,
    Object? created = _undefined,
    Object? stocktakeLocations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeSearchFields(
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
      isRoutineCheck: isRoutineCheck == _undefined || isRoutineCheck == null
          ? _instance.isRoutineCheck
          : (isRoutineCheck as bool),
      defaultUom: defaultUom == _undefined || defaultUom == null
          ? _instance.defaultUom
          : (defaultUom as Enum$Uom),
      currencyCode: currencyCode == _undefined || currencyCode == null
          ? _instance.currencyCode
          : (currencyCode as String),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified as Fragment$StocktakeSearchFields$modified),
      workflow: workflow == _undefined
          ? _instance.workflow
          : (workflow as Fragment$StocktakeSearchFields$workflow?),
      conductor: conductor == _undefined
          ? _instance.conductor
          : (conductor as Fragment$StocktakeSearchFields$conductor?),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Fragment$StocktakeSearchFields$created),
      stocktakeLocations:
          stocktakeLocations == _undefined || stocktakeLocations == null
          ? _instance.stocktakeLocations
          : (stocktakeLocations
                as List<Fragment$StocktakeSearchFields$stocktakeLocations>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeSearchFields$modified<TRes> get modified {
    final local$modified = _instance.modified;
    return CopyWith$Fragment$StocktakeSearchFields$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }

  CopyWith$Fragment$StocktakeSearchFields$workflow<TRes> get workflow {
    final local$workflow = _instance.workflow;
    return local$workflow == null
        ? CopyWith$Fragment$StocktakeSearchFields$workflow.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$StocktakeSearchFields$workflow(
            local$workflow,
            (e) => call(workflow: e),
          );
  }

  CopyWith$Fragment$StocktakeSearchFields$conductor<TRes> get conductor {
    final local$conductor = _instance.conductor;
    return local$conductor == null
        ? CopyWith$Fragment$StocktakeSearchFields$conductor.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$StocktakeSearchFields$conductor(
            local$conductor,
            (e) => call(conductor: e),
          );
  }

  CopyWith$Fragment$StocktakeSearchFields$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$StocktakeSearchFields$created(
      local$created,
      (e) => call(created: e),
    );
  }

  TRes stocktakeLocations(
    Iterable<Fragment$StocktakeSearchFields$stocktakeLocations> Function(
      Iterable<
        CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations<
          Fragment$StocktakeSearchFields$stocktakeLocations
        >
      >,
    )
    _fn,
  ) => call(
    stocktakeLocations: _fn(
      _instance.stocktakeLocations.map(
        (e) => CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$StocktakeSearchFields<TRes>
    implements CopyWith$Fragment$StocktakeSearchFields<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeSearchFields(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Enum$StocktakeStatus? status,
    String? conductedBy,
    String? productFamily,
    bool? isRoutineCheck,
    Enum$Uom? defaultUom,
    String? currencyCode,
    Fragment$StocktakeSearchFields$modified? modified,
    Fragment$StocktakeSearchFields$workflow? workflow,
    Fragment$StocktakeSearchFields$conductor? conductor,
    String? yardCode,
    Fragment$StocktakeSearchFields$created? created,
    List<Fragment$StocktakeSearchFields$stocktakeLocations>? stocktakeLocations,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeSearchFields$modified<TRes> get modified =>
      CopyWith$Fragment$StocktakeSearchFields$modified.stub(_res);

  CopyWith$Fragment$StocktakeSearchFields$workflow<TRes> get workflow =>
      CopyWith$Fragment$StocktakeSearchFields$workflow.stub(_res);

  CopyWith$Fragment$StocktakeSearchFields$conductor<TRes> get conductor =>
      CopyWith$Fragment$StocktakeSearchFields$conductor.stub(_res);

  CopyWith$Fragment$StocktakeSearchFields$created<TRes> get created =>
      CopyWith$Fragment$StocktakeSearchFields$created.stub(_res);

  stocktakeLocations(_fn) => _res;
}

const fragmentDefinitionStocktakeSearchFields = FragmentDefinitionNode(
  name: NameNode(value: 'StocktakeSearchFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Stocktake'), isNonNull: false),
  ),
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
        name: NameNode(value: 'status'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'conductedBy'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'productFamily'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isRoutineCheck'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'defaultUom'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'currencyCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'modified'),
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
            FieldNode(
              name: NameNode(value: 'currentLevel'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'stocktakeStatus'),
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
        name: NameNode(value: 'conductor'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'firstName'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'lastName'),
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
        name: NameNode(value: 'yardCode'),
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
        name: NameNode(value: 'stocktakeLocations'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
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
              name: NameNode(value: 'snapshot'),
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
);
const documentNodeFragmentStocktakeSearchFields = DocumentNode(
  definitions: [fragmentDefinitionStocktakeSearchFields],
);

class Fragment$StocktakeSearchFields$modified {
  Fragment$StocktakeSearchFields$modified({
    required this.at,
    this.$__typename = 'Modified',
  });

  factory Fragment$StocktakeSearchFields$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeSearchFields$modified(
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeSearchFields$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
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

extension UtilityExtension$Fragment$StocktakeSearchFields$modified
    on Fragment$StocktakeSearchFields$modified {
  CopyWith$Fragment$StocktakeSearchFields$modified<
    Fragment$StocktakeSearchFields$modified
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeSearchFields$modified(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeSearchFields$modified<TRes> {
  factory CopyWith$Fragment$StocktakeSearchFields$modified(
    Fragment$StocktakeSearchFields$modified instance,
    TRes Function(Fragment$StocktakeSearchFields$modified) then,
  ) = _CopyWithImpl$Fragment$StocktakeSearchFields$modified;

  factory CopyWith$Fragment$StocktakeSearchFields$modified.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeSearchFields$modified;

  TRes call({DateTime? at, String? $__typename});
}

class _CopyWithImpl$Fragment$StocktakeSearchFields$modified<TRes>
    implements CopyWith$Fragment$StocktakeSearchFields$modified<TRes> {
  _CopyWithImpl$Fragment$StocktakeSearchFields$modified(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeSearchFields$modified _instance;

  final TRes Function(Fragment$StocktakeSearchFields$modified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? at = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$StocktakeSearchFields$modified(
          at: at == _undefined || at == null ? _instance.at : (at as DateTime),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$StocktakeSearchFields$modified<TRes>
    implements CopyWith$Fragment$StocktakeSearchFields$modified<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeSearchFields$modified(this._res);

  TRes _res;

  call({DateTime? at, String? $__typename}) => _res;
}

class Fragment$StocktakeSearchFields$workflow {
  Fragment$StocktakeSearchFields$workflow({
    required this.currentLevel,
    required this.stocktakeStatus,
    this.$__typename = 'StocktakeApproval',
  });

  factory Fragment$StocktakeSearchFields$workflow.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$currentLevel = json['currentLevel'];
    final l$stocktakeStatus = json['stocktakeStatus'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeSearchFields$workflow(
      currentLevel: (l$currentLevel as int),
      stocktakeStatus: fromJson$Enum$StocktakeApprovalStatus(
        (l$stocktakeStatus as String),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final int currentLevel;

  final Enum$StocktakeApprovalStatus stocktakeStatus;

  final String $__typename;

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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currentLevel = currentLevel;
    final l$stocktakeStatus = stocktakeStatus;
    final l$$__typename = $__typename;
    return Object.hashAll([l$currentLevel, l$stocktakeStatus, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeSearchFields$workflow ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$StocktakeSearchFields$workflow
    on Fragment$StocktakeSearchFields$workflow {
  CopyWith$Fragment$StocktakeSearchFields$workflow<
    Fragment$StocktakeSearchFields$workflow
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeSearchFields$workflow(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeSearchFields$workflow<TRes> {
  factory CopyWith$Fragment$StocktakeSearchFields$workflow(
    Fragment$StocktakeSearchFields$workflow instance,
    TRes Function(Fragment$StocktakeSearchFields$workflow) then,
  ) = _CopyWithImpl$Fragment$StocktakeSearchFields$workflow;

  factory CopyWith$Fragment$StocktakeSearchFields$workflow.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeSearchFields$workflow;

  TRes call({
    int? currentLevel,
    Enum$StocktakeApprovalStatus? stocktakeStatus,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$StocktakeSearchFields$workflow<TRes>
    implements CopyWith$Fragment$StocktakeSearchFields$workflow<TRes> {
  _CopyWithImpl$Fragment$StocktakeSearchFields$workflow(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeSearchFields$workflow _instance;

  final TRes Function(Fragment$StocktakeSearchFields$workflow) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentLevel = _undefined,
    Object? stocktakeStatus = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeSearchFields$workflow(
      currentLevel: currentLevel == _undefined || currentLevel == null
          ? _instance.currentLevel
          : (currentLevel as int),
      stocktakeStatus: stocktakeStatus == _undefined || stocktakeStatus == null
          ? _instance.stocktakeStatus
          : (stocktakeStatus as Enum$StocktakeApprovalStatus),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$StocktakeSearchFields$workflow<TRes>
    implements CopyWith$Fragment$StocktakeSearchFields$workflow<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeSearchFields$workflow(this._res);

  TRes _res;

  call({
    int? currentLevel,
    Enum$StocktakeApprovalStatus? stocktakeStatus,
    String? $__typename,
  }) => _res;
}

class Fragment$StocktakeSearchFields$conductor {
  Fragment$StocktakeSearchFields$conductor({
    required this.firstName,
    required this.lastName,
    required this.id,
    this.$__typename = 'User',
  });

  factory Fragment$StocktakeSearchFields$conductor.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeSearchFields$conductor(
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
    if (other is! Fragment$StocktakeSearchFields$conductor ||
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

extension UtilityExtension$Fragment$StocktakeSearchFields$conductor
    on Fragment$StocktakeSearchFields$conductor {
  CopyWith$Fragment$StocktakeSearchFields$conductor<
    Fragment$StocktakeSearchFields$conductor
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeSearchFields$conductor(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeSearchFields$conductor<TRes> {
  factory CopyWith$Fragment$StocktakeSearchFields$conductor(
    Fragment$StocktakeSearchFields$conductor instance,
    TRes Function(Fragment$StocktakeSearchFields$conductor) then,
  ) = _CopyWithImpl$Fragment$StocktakeSearchFields$conductor;

  factory CopyWith$Fragment$StocktakeSearchFields$conductor.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeSearchFields$conductor;

  TRes call({
    String? firstName,
    String? lastName,
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$StocktakeSearchFields$conductor<TRes>
    implements CopyWith$Fragment$StocktakeSearchFields$conductor<TRes> {
  _CopyWithImpl$Fragment$StocktakeSearchFields$conductor(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeSearchFields$conductor _instance;

  final TRes Function(Fragment$StocktakeSearchFields$conductor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeSearchFields$conductor(
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

class _CopyWithStubImpl$Fragment$StocktakeSearchFields$conductor<TRes>
    implements CopyWith$Fragment$StocktakeSearchFields$conductor<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeSearchFields$conductor(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    String? id,
    String? $__typename,
  }) => _res;
}

class Fragment$StocktakeSearchFields$created {
  Fragment$StocktakeSearchFields$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.user,
    this.$__typename = 'Created',
  });

  factory Fragment$StocktakeSearchFields$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeSearchFields$created(
      at: DateTime.parse((l$at as String)),
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      user: l$user == null
          ? null
          : Fragment$StocktakeSearchFields$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userInfoId;

  final String userName;

  final Fragment$StocktakeSearchFields$created$user? user;

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
    if (other is! Fragment$StocktakeSearchFields$created ||
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

extension UtilityExtension$Fragment$StocktakeSearchFields$created
    on Fragment$StocktakeSearchFields$created {
  CopyWith$Fragment$StocktakeSearchFields$created<
    Fragment$StocktakeSearchFields$created
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeSearchFields$created(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeSearchFields$created<TRes> {
  factory CopyWith$Fragment$StocktakeSearchFields$created(
    Fragment$StocktakeSearchFields$created instance,
    TRes Function(Fragment$StocktakeSearchFields$created) then,
  ) = _CopyWithImpl$Fragment$StocktakeSearchFields$created;

  factory CopyWith$Fragment$StocktakeSearchFields$created.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeSearchFields$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    Fragment$StocktakeSearchFields$created$user? user,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeSearchFields$created$user<TRes> get user;
}

class _CopyWithImpl$Fragment$StocktakeSearchFields$created<TRes>
    implements CopyWith$Fragment$StocktakeSearchFields$created<TRes> {
  _CopyWithImpl$Fragment$StocktakeSearchFields$created(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeSearchFields$created _instance;

  final TRes Function(Fragment$StocktakeSearchFields$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeSearchFields$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      user: user == _undefined
          ? _instance.user
          : (user as Fragment$StocktakeSearchFields$created$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeSearchFields$created$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$StocktakeSearchFields$created$user.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$StocktakeSearchFields$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeSearchFields$created<TRes>
    implements CopyWith$Fragment$StocktakeSearchFields$created<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeSearchFields$created(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    Fragment$StocktakeSearchFields$created$user? user,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeSearchFields$created$user<TRes> get user =>
      CopyWith$Fragment$StocktakeSearchFields$created$user.stub(_res);
}

class Fragment$StocktakeSearchFields$created$user {
  Fragment$StocktakeSearchFields$created$user({
    required this.name,
    required this.id,
    this.$__typename = 'UserInfo',
  });

  factory Fragment$StocktakeSearchFields$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeSearchFields$created$user(
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
    if (other is! Fragment$StocktakeSearchFields$created$user ||
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

extension UtilityExtension$Fragment$StocktakeSearchFields$created$user
    on Fragment$StocktakeSearchFields$created$user {
  CopyWith$Fragment$StocktakeSearchFields$created$user<
    Fragment$StocktakeSearchFields$created$user
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeSearchFields$created$user(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeSearchFields$created$user<TRes> {
  factory CopyWith$Fragment$StocktakeSearchFields$created$user(
    Fragment$StocktakeSearchFields$created$user instance,
    TRes Function(Fragment$StocktakeSearchFields$created$user) then,
  ) = _CopyWithImpl$Fragment$StocktakeSearchFields$created$user;

  factory CopyWith$Fragment$StocktakeSearchFields$created$user.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeSearchFields$created$user;

  TRes call({String? name, String? id, String? $__typename});
}

class _CopyWithImpl$Fragment$StocktakeSearchFields$created$user<TRes>
    implements CopyWith$Fragment$StocktakeSearchFields$created$user<TRes> {
  _CopyWithImpl$Fragment$StocktakeSearchFields$created$user(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeSearchFields$created$user _instance;

  final TRes Function(Fragment$StocktakeSearchFields$created$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeSearchFields$created$user(
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

class _CopyWithStubImpl$Fragment$StocktakeSearchFields$created$user<TRes>
    implements CopyWith$Fragment$StocktakeSearchFields$created$user<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeSearchFields$created$user(this._res);

  TRes _res;

  call({String? name, String? id, String? $__typename}) => _res;
}

class Fragment$StocktakeSearchFields$stocktakeLocations {
  Fragment$StocktakeSearchFields$stocktakeLocations({
    this.location,
    required this.locationId,
    this.snapshot,
    this.$__typename = 'StocktakeLocation',
  });

  factory Fragment$StocktakeSearchFields$stocktakeLocations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$location = json['location'];
    final l$locationId = json['locationId'];
    final l$snapshot = json['snapshot'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeSearchFields$stocktakeLocations(
      location: l$location == null
          ? null
          : Fragment$StocktakeSearchFields$stocktakeLocations$location.fromJson(
              (l$location as Map<String, dynamic>),
            ),
      locationId: (l$locationId as String),
      snapshot: l$snapshot == null
          ? null
          : Fragment$StocktakeSearchFields$stocktakeLocations$snapshot.fromJson(
              (l$snapshot as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$StocktakeSearchFields$stocktakeLocations$location? location;

  final String locationId;

  final Fragment$StocktakeSearchFields$stocktakeLocations$snapshot? snapshot;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$locationId = locationId;
    _resultData['locationId'] = l$locationId;
    final l$snapshot = snapshot;
    _resultData['snapshot'] = l$snapshot?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$location = location;
    final l$locationId = locationId;
    final l$snapshot = snapshot;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$location,
      l$locationId,
      l$snapshot,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeSearchFields$stocktakeLocations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$locationId = locationId;
    final lOther$locationId = other.locationId;
    if (l$locationId != lOther$locationId) {
      return false;
    }
    final l$snapshot = snapshot;
    final lOther$snapshot = other.snapshot;
    if (l$snapshot != lOther$snapshot) {
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

extension UtilityExtension$Fragment$StocktakeSearchFields$stocktakeLocations
    on Fragment$StocktakeSearchFields$stocktakeLocations {
  CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations<
    Fragment$StocktakeSearchFields$stocktakeLocations
  >
  get copyWith => CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations<
  TRes
> {
  factory CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations(
    Fragment$StocktakeSearchFields$stocktakeLocations instance,
    TRes Function(Fragment$StocktakeSearchFields$stocktakeLocations) then,
  ) = _CopyWithImpl$Fragment$StocktakeSearchFields$stocktakeLocations;

  factory CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeSearchFields$stocktakeLocations;

  TRes call({
    Fragment$StocktakeSearchFields$stocktakeLocations$location? location,
    String? locationId,
    Fragment$StocktakeSearchFields$stocktakeLocations$snapshot? snapshot,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$location<TRes>
  get location;
  CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot<TRes>
  get snapshot;
}

class _CopyWithImpl$Fragment$StocktakeSearchFields$stocktakeLocations<TRes>
    implements
        CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations<TRes> {
  _CopyWithImpl$Fragment$StocktakeSearchFields$stocktakeLocations(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeSearchFields$stocktakeLocations _instance;

  final TRes Function(Fragment$StocktakeSearchFields$stocktakeLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? location = _undefined,
    Object? locationId = _undefined,
    Object? snapshot = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeSearchFields$stocktakeLocations(
      location: location == _undefined
          ? _instance.location
          : (location
                as Fragment$StocktakeSearchFields$stocktakeLocations$location?),
      locationId: locationId == _undefined || locationId == null
          ? _instance.locationId
          : (locationId as String),
      snapshot: snapshot == _undefined
          ? _instance.snapshot
          : (snapshot
                as Fragment$StocktakeSearchFields$stocktakeLocations$snapshot?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$location<TRes>
  get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$location.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$location(
            local$location,
            (e) => call(location: e),
          );
  }

  CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot<TRes>
  get snapshot {
    final local$snapshot = _instance.snapshot;
    return local$snapshot == null
        ? CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot(
            local$snapshot,
            (e) => call(snapshot: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeSearchFields$stocktakeLocations<TRes>
    implements
        CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeSearchFields$stocktakeLocations(
    this._res,
  );

  TRes _res;

  call({
    Fragment$StocktakeSearchFields$stocktakeLocations$location? location,
    String? locationId,
    Fragment$StocktakeSearchFields$stocktakeLocations$snapshot? snapshot,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$location<TRes>
  get location =>
      CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$location.stub(
        _res,
      );

  CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot<TRes>
  get snapshot =>
      CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot.stub(
        _res,
      );
}

class Fragment$StocktakeSearchFields$stocktakeLocations$location {
  Fragment$StocktakeSearchFields$stocktakeLocations$location({
    required this.code,
    this.$__typename = 'InventoryLocation',
  });

  factory Fragment$StocktakeSearchFields$stocktakeLocations$location.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeSearchFields$stocktakeLocations$location(
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeSearchFields$stocktakeLocations$location ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Fragment$StocktakeSearchFields$stocktakeLocations$location
    on Fragment$StocktakeSearchFields$stocktakeLocations$location {
  CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$location<
    Fragment$StocktakeSearchFields$stocktakeLocations$location
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$location(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$location<
  TRes
> {
  factory CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$location(
    Fragment$StocktakeSearchFields$stocktakeLocations$location instance,
    TRes Function(Fragment$StocktakeSearchFields$stocktakeLocations$location)
    then,
  ) = _CopyWithImpl$Fragment$StocktakeSearchFields$stocktakeLocations$location;

  factory CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$location.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeSearchFields$stocktakeLocations$location;

  TRes call({String? code, String? $__typename});
}

class _CopyWithImpl$Fragment$StocktakeSearchFields$stocktakeLocations$location<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$location<
          TRes
        > {
  _CopyWithImpl$Fragment$StocktakeSearchFields$stocktakeLocations$location(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeSearchFields$stocktakeLocations$location _instance;

  final TRes Function(
    Fragment$StocktakeSearchFields$stocktakeLocations$location,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$StocktakeSearchFields$stocktakeLocations$location(
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$StocktakeSearchFields$stocktakeLocations$location<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$location<
          TRes
        > {
  _CopyWithStubImpl$Fragment$StocktakeSearchFields$stocktakeLocations$location(
    this._res,
  );

  TRes _res;

  call({String? code, String? $__typename}) => _res;
}

class Fragment$StocktakeSearchFields$stocktakeLocations$snapshot {
  Fragment$StocktakeSearchFields$stocktakeLocations$snapshot({
    required this.created,
    this.$__typename = 'Snapshot',
  });

  factory Fragment$StocktakeSearchFields$stocktakeLocations$snapshot.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeSearchFields$stocktakeLocations$snapshot(
      created:
          Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created
  created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([l$created, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeSearchFields$stocktakeLocations$snapshot ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot
    on Fragment$StocktakeSearchFields$stocktakeLocations$snapshot {
  CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot<
    Fragment$StocktakeSearchFields$stocktakeLocations$snapshot
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot<
  TRes
> {
  factory CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot(
    Fragment$StocktakeSearchFields$stocktakeLocations$snapshot instance,
    TRes Function(Fragment$StocktakeSearchFields$stocktakeLocations$snapshot)
    then,
  ) = _CopyWithImpl$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot;

  factory CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot;

  TRes call({
    Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created? created,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot<
          TRes
        > {
  _CopyWithImpl$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeSearchFields$stocktakeLocations$snapshot _instance;

  final TRes Function(
    Fragment$StocktakeSearchFields$stocktakeLocations$snapshot,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeSearchFields$stocktakeLocations$snapshot(
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot<
          TRes
        > {
  _CopyWithStubImpl$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot(
    this._res,
  );

  TRes _res;

  call({
    Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created<
    TRes
  >
  get created =>
      CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created.stub(
        _res,
      );
}

class Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created {
  Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created({
    required this.at,
    this.$__typename = 'Created',
  });

  factory Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created(
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
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

extension UtilityExtension$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created
    on Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created {
  CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created<
    Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created<
  TRes
> {
  factory CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created(
    Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created instance,
    TRes Function(
      Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created,
    )
    then,
  ) = _CopyWithImpl$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created;

  factory CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created;

  TRes call({DateTime? at, String? $__typename});
}

class _CopyWithImpl$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created<
          TRes
        > {
  _CopyWithImpl$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created
  _instance;

  final TRes Function(
    Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? at = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created(
          at: at == _undefined || at == null ? _instance.at : (at as DateTime),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created<
          TRes
        > {
  _CopyWithStubImpl$Fragment$StocktakeSearchFields$stocktakeLocations$snapshot$created(
    this._res,
  );

  TRes _res;

  call({DateTime? at, String? $__typename}) => _res;
}
