import '../../schema.graphql.dart';
import '../uomvalue_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$StocktakeFields {
  Fragment$StocktakeFields({
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
  });

  factory Fragment$StocktakeFields.fromJson(Map<String, dynamic> json) {
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
    return Fragment$StocktakeFields(
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
          : Fragment$StocktakeFields$workflow.fromJson(
              (l$workflow as Map<String, dynamic>),
            ),
      conductor: l$conductor == null
          ? null
          : Fragment$StocktakeFields$conductor.fromJson(
              (l$conductor as Map<String, dynamic>),
            ),
      yardCode: (l$yardCode as String),
      comments: (l$comments as List<dynamic>)
          .map(
            (e) => Fragment$StocktakeFields$comments.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      tags: (l$tags as List<dynamic>).map((e) => (e as String)).toList(),
      active: (l$active as bool),
      stocktakeLocations: (l$stocktakeLocations as List<dynamic>)
          .map(
            (e) => Fragment$StocktakeFields$stocktakeLocations.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      created: Fragment$StocktakeFields$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      modified: Fragment$StocktakeFields$modified.fromJson(
        (l$modified as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
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

  final Fragment$StocktakeFields$workflow? workflow;

  final Fragment$StocktakeFields$conductor? conductor;

  final String yardCode;

  final List<Fragment$StocktakeFields$comments> comments;

  final List<String> tags;

  final bool active;

  final List<Fragment$StocktakeFields$stocktakeLocations> stocktakeLocations;

  final Fragment$StocktakeFields$created created;

  final Fragment$StocktakeFields$modified modified;

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
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeFields ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$StocktakeFields
    on Fragment$StocktakeFields {
  CopyWith$Fragment$StocktakeFields<Fragment$StocktakeFields> get copyWith =>
      CopyWith$Fragment$StocktakeFields(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeFields<TRes> {
  factory CopyWith$Fragment$StocktakeFields(
    Fragment$StocktakeFields instance,
    TRes Function(Fragment$StocktakeFields) then,
  ) = _CopyWithImpl$Fragment$StocktakeFields;

  factory CopyWith$Fragment$StocktakeFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeFields;

  TRes call({
    String? id,
    String? name,
    Enum$StocktakeStatus? status,
    String? conductedBy,
    String? productFamily,
    String? currencyCode,
    bool? isRoutineCheck,
    Enum$Uom? defaultUom,
    Fragment$StocktakeFields$workflow? workflow,
    Fragment$StocktakeFields$conductor? conductor,
    String? yardCode,
    List<Fragment$StocktakeFields$comments>? comments,
    List<String>? tags,
    bool? active,
    List<Fragment$StocktakeFields$stocktakeLocations>? stocktakeLocations,
    Fragment$StocktakeFields$created? created,
    Fragment$StocktakeFields$modified? modified,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeFields$workflow<TRes> get workflow;
  CopyWith$Fragment$StocktakeFields$conductor<TRes> get conductor;
  TRes comments(
    Iterable<Fragment$StocktakeFields$comments> Function(
      Iterable<
        CopyWith$Fragment$StocktakeFields$comments<
          Fragment$StocktakeFields$comments
        >
      >,
    )
    _fn,
  );
  TRes stocktakeLocations(
    Iterable<Fragment$StocktakeFields$stocktakeLocations> Function(
      Iterable<
        CopyWith$Fragment$StocktakeFields$stocktakeLocations<
          Fragment$StocktakeFields$stocktakeLocations
        >
      >,
    )
    _fn,
  );
  CopyWith$Fragment$StocktakeFields$created<TRes> get created;
  CopyWith$Fragment$StocktakeFields$modified<TRes> get modified;
}

class _CopyWithImpl$Fragment$StocktakeFields<TRes>
    implements CopyWith$Fragment$StocktakeFields<TRes> {
  _CopyWithImpl$Fragment$StocktakeFields(this._instance, this._then);

  final Fragment$StocktakeFields _instance;

  final TRes Function(Fragment$StocktakeFields) _then;

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
  }) => _then(
    Fragment$StocktakeFields(
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
          : (workflow as Fragment$StocktakeFields$workflow?),
      conductor: conductor == _undefined
          ? _instance.conductor
          : (conductor as Fragment$StocktakeFields$conductor?),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      comments: comments == _undefined || comments == null
          ? _instance.comments
          : (comments as List<Fragment$StocktakeFields$comments>),
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
                as List<Fragment$StocktakeFields$stocktakeLocations>),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Fragment$StocktakeFields$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified as Fragment$StocktakeFields$modified),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeFields$workflow<TRes> get workflow {
    final local$workflow = _instance.workflow;
    return local$workflow == null
        ? CopyWith$Fragment$StocktakeFields$workflow.stub(_then(_instance))
        : CopyWith$Fragment$StocktakeFields$workflow(
            local$workflow,
            (e) => call(workflow: e),
          );
  }

  CopyWith$Fragment$StocktakeFields$conductor<TRes> get conductor {
    final local$conductor = _instance.conductor;
    return local$conductor == null
        ? CopyWith$Fragment$StocktakeFields$conductor.stub(_then(_instance))
        : CopyWith$Fragment$StocktakeFields$conductor(
            local$conductor,
            (e) => call(conductor: e),
          );
  }

  TRes comments(
    Iterable<Fragment$StocktakeFields$comments> Function(
      Iterable<
        CopyWith$Fragment$StocktakeFields$comments<
          Fragment$StocktakeFields$comments
        >
      >,
    )
    _fn,
  ) => call(
    comments: _fn(
      _instance.comments.map(
        (e) => CopyWith$Fragment$StocktakeFields$comments(e, (i) => i),
      ),
    ).toList(),
  );

  TRes stocktakeLocations(
    Iterable<Fragment$StocktakeFields$stocktakeLocations> Function(
      Iterable<
        CopyWith$Fragment$StocktakeFields$stocktakeLocations<
          Fragment$StocktakeFields$stocktakeLocations
        >
      >,
    )
    _fn,
  ) => call(
    stocktakeLocations: _fn(
      _instance.stocktakeLocations.map(
        (e) =>
            CopyWith$Fragment$StocktakeFields$stocktakeLocations(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Fragment$StocktakeFields$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$StocktakeFields$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Fragment$StocktakeFields$modified<TRes> get modified {
    final local$modified = _instance.modified;
    return CopyWith$Fragment$StocktakeFields$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeFields<TRes>
    implements CopyWith$Fragment$StocktakeFields<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeFields(this._res);

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
    Fragment$StocktakeFields$workflow? workflow,
    Fragment$StocktakeFields$conductor? conductor,
    String? yardCode,
    List<Fragment$StocktakeFields$comments>? comments,
    List<String>? tags,
    bool? active,
    List<Fragment$StocktakeFields$stocktakeLocations>? stocktakeLocations,
    Fragment$StocktakeFields$created? created,
    Fragment$StocktakeFields$modified? modified,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeFields$workflow<TRes> get workflow =>
      CopyWith$Fragment$StocktakeFields$workflow.stub(_res);

  CopyWith$Fragment$StocktakeFields$conductor<TRes> get conductor =>
      CopyWith$Fragment$StocktakeFields$conductor.stub(_res);

  comments(_fn) => _res;

  stocktakeLocations(_fn) => _res;

  CopyWith$Fragment$StocktakeFields$created<TRes> get created =>
      CopyWith$Fragment$StocktakeFields$created.stub(_res);

  CopyWith$Fragment$StocktakeFields$modified<TRes> get modified =>
      CopyWith$Fragment$StocktakeFields$modified.stub(_res);
}

const fragmentDefinitionStocktakeFields = FragmentDefinitionNode(
  name: NameNode(value: 'StocktakeFields'),
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
        name: NameNode(value: 'currencyCode'),
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
        name: NameNode(value: 'tags'),
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
        name: NameNode(value: 'stocktakeLocations'),
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
                    name: NameNode(value: 'currentWeight'),
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
                    name: NameNode(value: 'unpricedWeight'),
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
                    name: NameNode(value: 'unpricedDeltaWeight'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentStocktakeFields = DocumentNode(
  definitions: [
    fragmentDefinitionStocktakeFields,
    fragmentDefinitionUomValueFragment,
  ],
);

class Fragment$StocktakeFields$workflow {
  Fragment$StocktakeFields$workflow({
    required this.currentLevel,
    required this.stocktakeStatus,
    this.$__typename = 'StocktakeApproval',
  });

  factory Fragment$StocktakeFields$workflow.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$currentLevel = json['currentLevel'];
    final l$stocktakeStatus = json['stocktakeStatus'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeFields$workflow(
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
    if (other is! Fragment$StocktakeFields$workflow ||
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

extension UtilityExtension$Fragment$StocktakeFields$workflow
    on Fragment$StocktakeFields$workflow {
  CopyWith$Fragment$StocktakeFields$workflow<Fragment$StocktakeFields$workflow>
  get copyWith => CopyWith$Fragment$StocktakeFields$workflow(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeFields$workflow<TRes> {
  factory CopyWith$Fragment$StocktakeFields$workflow(
    Fragment$StocktakeFields$workflow instance,
    TRes Function(Fragment$StocktakeFields$workflow) then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$workflow;

  factory CopyWith$Fragment$StocktakeFields$workflow.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeFields$workflow;

  TRes call({
    int? currentLevel,
    Enum$StocktakeApprovalStatus? stocktakeStatus,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$StocktakeFields$workflow<TRes>
    implements CopyWith$Fragment$StocktakeFields$workflow<TRes> {
  _CopyWithImpl$Fragment$StocktakeFields$workflow(this._instance, this._then);

  final Fragment$StocktakeFields$workflow _instance;

  final TRes Function(Fragment$StocktakeFields$workflow) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentLevel = _undefined,
    Object? stocktakeStatus = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeFields$workflow(
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

class _CopyWithStubImpl$Fragment$StocktakeFields$workflow<TRes>
    implements CopyWith$Fragment$StocktakeFields$workflow<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeFields$workflow(this._res);

  TRes _res;

  call({
    int? currentLevel,
    Enum$StocktakeApprovalStatus? stocktakeStatus,
    String? $__typename,
  }) => _res;
}

class Fragment$StocktakeFields$conductor {
  Fragment$StocktakeFields$conductor({
    required this.firstName,
    required this.lastName,
    required this.id,
    this.$__typename = 'User',
  });

  factory Fragment$StocktakeFields$conductor.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeFields$conductor(
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
    if (other is! Fragment$StocktakeFields$conductor ||
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

extension UtilityExtension$Fragment$StocktakeFields$conductor
    on Fragment$StocktakeFields$conductor {
  CopyWith$Fragment$StocktakeFields$conductor<
    Fragment$StocktakeFields$conductor
  >
  get copyWith => CopyWith$Fragment$StocktakeFields$conductor(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeFields$conductor<TRes> {
  factory CopyWith$Fragment$StocktakeFields$conductor(
    Fragment$StocktakeFields$conductor instance,
    TRes Function(Fragment$StocktakeFields$conductor) then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$conductor;

  factory CopyWith$Fragment$StocktakeFields$conductor.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeFields$conductor;

  TRes call({
    String? firstName,
    String? lastName,
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$StocktakeFields$conductor<TRes>
    implements CopyWith$Fragment$StocktakeFields$conductor<TRes> {
  _CopyWithImpl$Fragment$StocktakeFields$conductor(this._instance, this._then);

  final Fragment$StocktakeFields$conductor _instance;

  final TRes Function(Fragment$StocktakeFields$conductor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeFields$conductor(
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

class _CopyWithStubImpl$Fragment$StocktakeFields$conductor<TRes>
    implements CopyWith$Fragment$StocktakeFields$conductor<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeFields$conductor(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    String? id,
    String? $__typename,
  }) => _res;
}

class Fragment$StocktakeFields$comments {
  Fragment$StocktakeFields$comments({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Fragment$StocktakeFields$comments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeFields$comments(
      content: (l$content as String),
      created: Fragment$StocktakeFields$comments$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Fragment$StocktakeFields$comments$created created;

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
    if (other is! Fragment$StocktakeFields$comments ||
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

extension UtilityExtension$Fragment$StocktakeFields$comments
    on Fragment$StocktakeFields$comments {
  CopyWith$Fragment$StocktakeFields$comments<Fragment$StocktakeFields$comments>
  get copyWith => CopyWith$Fragment$StocktakeFields$comments(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeFields$comments<TRes> {
  factory CopyWith$Fragment$StocktakeFields$comments(
    Fragment$StocktakeFields$comments instance,
    TRes Function(Fragment$StocktakeFields$comments) then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$comments;

  factory CopyWith$Fragment$StocktakeFields$comments.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeFields$comments;

  TRes call({
    String? content,
    Fragment$StocktakeFields$comments$created? created,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeFields$comments$created<TRes> get created;
}

class _CopyWithImpl$Fragment$StocktakeFields$comments<TRes>
    implements CopyWith$Fragment$StocktakeFields$comments<TRes> {
  _CopyWithImpl$Fragment$StocktakeFields$comments(this._instance, this._then);

  final Fragment$StocktakeFields$comments _instance;

  final TRes Function(Fragment$StocktakeFields$comments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeFields$comments(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Fragment$StocktakeFields$comments$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeFields$comments$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$StocktakeFields$comments$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeFields$comments<TRes>
    implements CopyWith$Fragment$StocktakeFields$comments<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeFields$comments(this._res);

  TRes _res;

  call({
    String? content,
    Fragment$StocktakeFields$comments$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeFields$comments$created<TRes> get created =>
      CopyWith$Fragment$StocktakeFields$comments$created.stub(_res);
}

class Fragment$StocktakeFields$comments$created {
  Fragment$StocktakeFields$comments$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Fragment$StocktakeFields$comments$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeFields$comments$created(
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
    if (other is! Fragment$StocktakeFields$comments$created ||
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

extension UtilityExtension$Fragment$StocktakeFields$comments$created
    on Fragment$StocktakeFields$comments$created {
  CopyWith$Fragment$StocktakeFields$comments$created<
    Fragment$StocktakeFields$comments$created
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeFields$comments$created(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeFields$comments$created<TRes> {
  factory CopyWith$Fragment$StocktakeFields$comments$created(
    Fragment$StocktakeFields$comments$created instance,
    TRes Function(Fragment$StocktakeFields$comments$created) then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$comments$created;

  factory CopyWith$Fragment$StocktakeFields$comments$created.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeFields$comments$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$StocktakeFields$comments$created<TRes>
    implements CopyWith$Fragment$StocktakeFields$comments$created<TRes> {
  _CopyWithImpl$Fragment$StocktakeFields$comments$created(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeFields$comments$created _instance;

  final TRes Function(Fragment$StocktakeFields$comments$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeFields$comments$created(
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

class _CopyWithStubImpl$Fragment$StocktakeFields$comments$created<TRes>
    implements CopyWith$Fragment$StocktakeFields$comments$created<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeFields$comments$created(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  }) => _res;
}

class Fragment$StocktakeFields$stocktakeLocations {
  Fragment$StocktakeFields$stocktakeLocations({
    required this.locationId,
    this.location,
    this.productId,
    this.product,
    this.snapshot,
    required this.takenWeights,
    this.$__typename = 'StocktakeLocation',
  });

  factory Fragment$StocktakeFields$stocktakeLocations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$locationId = json['locationId'];
    final l$location = json['location'];
    final l$productId = json['productId'];
    final l$product = json['product'];
    final l$snapshot = json['snapshot'];
    final l$takenWeights = json['takenWeights'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeFields$stocktakeLocations(
      locationId: (l$locationId as String),
      location: l$location == null
          ? null
          : Fragment$StocktakeFields$stocktakeLocations$location.fromJson(
              (l$location as Map<String, dynamic>),
            ),
      productId: (l$productId as String?),
      product: l$product == null
          ? null
          : Fragment$StocktakeFields$stocktakeLocations$product.fromJson(
              (l$product as Map<String, dynamic>),
            ),
      snapshot: l$snapshot == null
          ? null
          : Fragment$StocktakeFields$stocktakeLocations$snapshot.fromJson(
              (l$snapshot as Map<String, dynamic>),
            ),
      takenWeights: (l$takenWeights as List<dynamic>)
          .map(
            (e) =>
                Fragment$StocktakeFields$stocktakeLocations$takenWeights.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String locationId;

  final Fragment$StocktakeFields$stocktakeLocations$location? location;

  final String? productId;

  final Fragment$StocktakeFields$stocktakeLocations$product? product;

  final Fragment$StocktakeFields$stocktakeLocations$snapshot? snapshot;

  final List<Fragment$StocktakeFields$stocktakeLocations$takenWeights>
  takenWeights;

  final String $__typename;

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
    return Object.hashAll([
      l$locationId,
      l$location,
      l$productId,
      l$product,
      l$snapshot,
      Object.hashAll(l$takenWeights.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeFields$stocktakeLocations ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$StocktakeFields$stocktakeLocations
    on Fragment$StocktakeFields$stocktakeLocations {
  CopyWith$Fragment$StocktakeFields$stocktakeLocations<
    Fragment$StocktakeFields$stocktakeLocations
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeFields$stocktakeLocations(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeFields$stocktakeLocations<TRes> {
  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations(
    Fragment$StocktakeFields$stocktakeLocations instance,
    TRes Function(Fragment$StocktakeFields$stocktakeLocations) then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations;

  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations;

  TRes call({
    String? locationId,
    Fragment$StocktakeFields$stocktakeLocations$location? location,
    String? productId,
    Fragment$StocktakeFields$stocktakeLocations$product? product,
    Fragment$StocktakeFields$stocktakeLocations$snapshot? snapshot,
    List<Fragment$StocktakeFields$stocktakeLocations$takenWeights>?
    takenWeights,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$location<TRes>
  get location;
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$product<TRes>
  get product;
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot<TRes>
  get snapshot;
  TRes takenWeights(
    Iterable<Fragment$StocktakeFields$stocktakeLocations$takenWeights> Function(
      Iterable<
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights<
          Fragment$StocktakeFields$stocktakeLocations$takenWeights
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations<TRes>
    implements CopyWith$Fragment$StocktakeFields$stocktakeLocations<TRes> {
  _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeFields$stocktakeLocations _instance;

  final TRes Function(Fragment$StocktakeFields$stocktakeLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? locationId = _undefined,
    Object? location = _undefined,
    Object? productId = _undefined,
    Object? product = _undefined,
    Object? snapshot = _undefined,
    Object? takenWeights = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeFields$stocktakeLocations(
      locationId: locationId == _undefined || locationId == null
          ? _instance.locationId
          : (locationId as String),
      location: location == _undefined
          ? _instance.location
          : (location as Fragment$StocktakeFields$stocktakeLocations$location?),
      productId: productId == _undefined
          ? _instance.productId
          : (productId as String?),
      product: product == _undefined
          ? _instance.product
          : (product as Fragment$StocktakeFields$stocktakeLocations$product?),
      snapshot: snapshot == _undefined
          ? _instance.snapshot
          : (snapshot as Fragment$StocktakeFields$stocktakeLocations$snapshot?),
      takenWeights: takenWeights == _undefined || takenWeights == null
          ? _instance.takenWeights
          : (takenWeights
                as List<
                  Fragment$StocktakeFields$stocktakeLocations$takenWeights
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeFields$stocktakeLocations$location<TRes>
  get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Fragment$StocktakeFields$stocktakeLocations$location.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$StocktakeFields$stocktakeLocations$location(
            local$location,
            (e) => call(location: e),
          );
  }

  CopyWith$Fragment$StocktakeFields$stocktakeLocations$product<TRes>
  get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Fragment$StocktakeFields$stocktakeLocations$product.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$StocktakeFields$stocktakeLocations$product(
            local$product,
            (e) => call(product: e),
          );
  }

  CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot<TRes>
  get snapshot {
    final local$snapshot = _instance.snapshot;
    return local$snapshot == null
        ? CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot(
            local$snapshot,
            (e) => call(snapshot: e),
          );
  }

  TRes takenWeights(
    Iterable<Fragment$StocktakeFields$stocktakeLocations$takenWeights> Function(
      Iterable<
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights<
          Fragment$StocktakeFields$stocktakeLocations$takenWeights
        >
      >,
    )
    _fn,
  ) => call(
    takenWeights: _fn(
      _instance.takenWeights.map(
        (e) =>
            CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations<TRes>
    implements CopyWith$Fragment$StocktakeFields$stocktakeLocations<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations(this._res);

  TRes _res;

  call({
    String? locationId,
    Fragment$StocktakeFields$stocktakeLocations$location? location,
    String? productId,
    Fragment$StocktakeFields$stocktakeLocations$product? product,
    Fragment$StocktakeFields$stocktakeLocations$snapshot? snapshot,
    List<Fragment$StocktakeFields$stocktakeLocations$takenWeights>?
    takenWeights,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeFields$stocktakeLocations$location<TRes>
  get location =>
      CopyWith$Fragment$StocktakeFields$stocktakeLocations$location.stub(_res);

  CopyWith$Fragment$StocktakeFields$stocktakeLocations$product<TRes>
  get product =>
      CopyWith$Fragment$StocktakeFields$stocktakeLocations$product.stub(_res);

  CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot<TRes>
  get snapshot =>
      CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot.stub(_res);

  takenWeights(_fn) => _res;
}

class Fragment$StocktakeFields$stocktakeLocations$location {
  Fragment$StocktakeFields$stocktakeLocations$location({
    required this.code,
    required this.description,
    this.$__typename = 'InventoryLocation',
  });

  factory Fragment$StocktakeFields$stocktakeLocations$location.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeFields$stocktakeLocations$location(
      code: (l$code as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeFields$stocktakeLocations$location ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$StocktakeFields$stocktakeLocations$location
    on Fragment$StocktakeFields$stocktakeLocations$location {
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$location<
    Fragment$StocktakeFields$stocktakeLocations$location
  >
  get copyWith => CopyWith$Fragment$StocktakeFields$stocktakeLocations$location(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$StocktakeFields$stocktakeLocations$location<
  TRes
> {
  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$location(
    Fragment$StocktakeFields$stocktakeLocations$location instance,
    TRes Function(Fragment$StocktakeFields$stocktakeLocations$location) then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$location;

  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$location.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$location;

  TRes call({String? code, String? description, String? $__typename});
}

class _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$location<TRes>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$location<TRes> {
  _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$location(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeFields$stocktakeLocations$location _instance;

  final TRes Function(Fragment$StocktakeFields$stocktakeLocations$location)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeFields$stocktakeLocations$location(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$location<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$location<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$location(
    this._res,
  );

  TRes _res;

  call({String? code, String? description, String? $__typename}) => _res;
}

class Fragment$StocktakeFields$stocktakeLocations$product {
  Fragment$StocktakeFields$stocktakeLocations$product({
    required this.code,
    required this.description,
    required this.classification,
    this.$__typename = 'Product',
  });

  factory Fragment$StocktakeFields$stocktakeLocations$product.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$description = json['description'];
    final l$classification = json['classification'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeFields$stocktakeLocations$product(
      code: (l$code as String),
      description: (l$description as String),
      classification:
          Fragment$StocktakeFields$stocktakeLocations$product$classification.fromJson(
            (l$classification as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String description;

  final Fragment$StocktakeFields$stocktakeLocations$product$classification
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
    if (other is! Fragment$StocktakeFields$stocktakeLocations$product ||
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

extension UtilityExtension$Fragment$StocktakeFields$stocktakeLocations$product
    on Fragment$StocktakeFields$stocktakeLocations$product {
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$product<
    Fragment$StocktakeFields$stocktakeLocations$product
  >
  get copyWith => CopyWith$Fragment$StocktakeFields$stocktakeLocations$product(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$StocktakeFields$stocktakeLocations$product<
  TRes
> {
  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$product(
    Fragment$StocktakeFields$stocktakeLocations$product instance,
    TRes Function(Fragment$StocktakeFields$stocktakeLocations$product) then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$product;

  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$product.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$product;

  TRes call({
    String? code,
    String? description,
    Fragment$StocktakeFields$stocktakeLocations$product$classification?
    classification,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$product$classification<
    TRes
  >
  get classification;
}

class _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$product<TRes>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$product<TRes> {
  _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$product(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeFields$stocktakeLocations$product _instance;

  final TRes Function(Fragment$StocktakeFields$stocktakeLocations$product)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? description = _undefined,
    Object? classification = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeFields$stocktakeLocations$product(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      classification: classification == _undefined || classification == null
          ? _instance.classification
          : (classification
                as Fragment$StocktakeFields$stocktakeLocations$product$classification),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeFields$stocktakeLocations$product$classification<
    TRes
  >
  get classification {
    final local$classification = _instance.classification;
    return CopyWith$Fragment$StocktakeFields$stocktakeLocations$product$classification(
      local$classification,
      (e) => call(classification: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$product<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$product<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$product(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    String? description,
    Fragment$StocktakeFields$stocktakeLocations$product$classification?
    classification,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeFields$stocktakeLocations$product$classification<
    TRes
  >
  get classification =>
      CopyWith$Fragment$StocktakeFields$stocktakeLocations$product$classification.stub(
        _res,
      );
}

class Fragment$StocktakeFields$stocktakeLocations$product$classification {
  Fragment$StocktakeFields$stocktakeLocations$product$classification({
    required this.family,
    required this.line,
    required this.$class,
    this.$__typename = 'ProductClassification',
  });

  factory Fragment$StocktakeFields$stocktakeLocations$product$classification.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$family = json['family'];
    final l$line = json['line'];
    final l$$class = json['class'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeFields$stocktakeLocations$product$classification(
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
            is! Fragment$StocktakeFields$stocktakeLocations$product$classification ||
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

extension UtilityExtension$Fragment$StocktakeFields$stocktakeLocations$product$classification
    on Fragment$StocktakeFields$stocktakeLocations$product$classification {
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$product$classification<
    Fragment$StocktakeFields$stocktakeLocations$product$classification
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeFields$stocktakeLocations$product$classification(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StocktakeFields$stocktakeLocations$product$classification<
  TRes
> {
  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$product$classification(
    Fragment$StocktakeFields$stocktakeLocations$product$classification instance,
    TRes Function(
      Fragment$StocktakeFields$stocktakeLocations$product$classification,
    )
    then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$product$classification;

  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$product$classification.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$product$classification;

  TRes call({
    String? family,
    String? line,
    String? $class,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$product$classification<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$product$classification<
          TRes
        > {
  _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$product$classification(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeFields$stocktakeLocations$product$classification
  _instance;

  final TRes Function(
    Fragment$StocktakeFields$stocktakeLocations$product$classification,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? family = _undefined,
    Object? line = _undefined,
    Object? $class = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeFields$stocktakeLocations$product$classification(
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

class _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$product$classification<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$product$classification<
          TRes
        > {
  _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$product$classification(
    this._res,
  );

  TRes _res;

  call({String? family, String? line, String? $class, String? $__typename}) =>
      _res;
}

class Fragment$StocktakeFields$stocktakeLocations$snapshot {
  Fragment$StocktakeFields$stocktakeLocations$snapshot({
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

  factory Fragment$StocktakeFields$stocktakeLocations$snapshot.fromJson(
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
    return Fragment$StocktakeFields$stocktakeLocations$snapshot(
      deltaWeight: Fragment$UomValueFragment.fromJson(
        (l$deltaWeight as Map<String, dynamic>),
      ),
      created:
          Fragment$StocktakeFields$stocktakeLocations$snapshot$created.fromJson(
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

  final Fragment$StocktakeFields$stocktakeLocations$snapshot$created created;

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
    if (other is! Fragment$StocktakeFields$stocktakeLocations$snapshot ||
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

extension UtilityExtension$Fragment$StocktakeFields$stocktakeLocations$snapshot
    on Fragment$StocktakeFields$stocktakeLocations$snapshot {
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot<
    Fragment$StocktakeFields$stocktakeLocations$snapshot
  >
  get copyWith => CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot<
  TRes
> {
  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot(
    Fragment$StocktakeFields$stocktakeLocations$snapshot instance,
    TRes Function(Fragment$StocktakeFields$stocktakeLocations$snapshot) then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$snapshot;

  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$snapshot;

  TRes call({
    Fragment$UomValueFragment? deltaWeight,
    Fragment$StocktakeFields$stocktakeLocations$snapshot$created? created,
    Fragment$UomValueFragment? currentWeight,
    int? currentCount,
    double? value,
    Fragment$UomValueFragment? rate,
    Fragment$UomValueFragment? unpricedWeight,
    Fragment$UomValueFragment? unpricedDeltaWeight,
    String? $__typename,
  });
  CopyWith$Fragment$UomValueFragment<TRes> get deltaWeight;
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created<TRes>
  get created;
  CopyWith$Fragment$UomValueFragment<TRes> get currentWeight;
  CopyWith$Fragment$UomValueFragment<TRes> get rate;
  CopyWith$Fragment$UomValueFragment<TRes> get unpricedWeight;
  CopyWith$Fragment$UomValueFragment<TRes> get unpricedDeltaWeight;
}

class _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$snapshot<TRes>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot<TRes> {
  _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$snapshot(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeFields$stocktakeLocations$snapshot _instance;

  final TRes Function(Fragment$StocktakeFields$stocktakeLocations$snapshot)
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
    Fragment$StocktakeFields$stocktakeLocations$snapshot(
      deltaWeight: deltaWeight == _undefined || deltaWeight == null
          ? _instance.deltaWeight
          : (deltaWeight as Fragment$UomValueFragment),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Fragment$StocktakeFields$stocktakeLocations$snapshot$created),
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

  CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created<TRes>
  get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created(
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

class _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$snapshot<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$snapshot(
    this._res,
  );

  TRes _res;

  call({
    Fragment$UomValueFragment? deltaWeight,
    Fragment$StocktakeFields$stocktakeLocations$snapshot$created? created,
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

  CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created<TRes>
  get created =>
      CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created.stub(
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

class Fragment$StocktakeFields$stocktakeLocations$snapshot$created {
  Fragment$StocktakeFields$stocktakeLocations$snapshot$created({
    required this.at,
    this.user,
    this.$__typename = 'Created',
  });

  factory Fragment$StocktakeFields$stocktakeLocations$snapshot$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeFields$stocktakeLocations$snapshot$created(
      at: DateTime.parse((l$at as String)),
      user: l$user == null
          ? null
          : Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user? user;

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
            is! Fragment$StocktakeFields$stocktakeLocations$snapshot$created ||
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

extension UtilityExtension$Fragment$StocktakeFields$stocktakeLocations$snapshot$created
    on Fragment$StocktakeFields$stocktakeLocations$snapshot$created {
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created<
    Fragment$StocktakeFields$stocktakeLocations$snapshot$created
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created<
  TRes
> {
  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created(
    Fragment$StocktakeFields$stocktakeLocations$snapshot$created instance,
    TRes Function(Fragment$StocktakeFields$stocktakeLocations$snapshot$created)
    then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$snapshot$created;

  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$snapshot$created;

  TRes call({
    DateTime? at,
    Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user? user,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user<
    TRes
  >
  get user;
}

class _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$snapshot$created<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created<
          TRes
        > {
  _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$snapshot$created(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeFields$stocktakeLocations$snapshot$created _instance;

  final TRes Function(
    Fragment$StocktakeFields$stocktakeLocations$snapshot$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeFields$stocktakeLocations$snapshot$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      user: user == _undefined
          ? _instance.user
          : (user
                as Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user<
    TRes
  >
  get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$snapshot$created<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created<
          TRes
        > {
  _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$snapshot$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user? user,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user<
    TRes
  >
  get user =>
      CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user.stub(
        _res,
      );
}

class Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user {
  Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user({
    required this.name,
    this.$__typename = 'UserInfo',
  });

  factory Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user(
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
            is! Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user ||
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

extension UtilityExtension$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user
    on Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user {
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user<
    Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user<
  TRes
> {
  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user(
    Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user instance,
    TRes Function(
      Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user,
    )
    then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user;

  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user<
          TRes
        > {
  _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user
  _instance;

  final TRes Function(
    Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user<
          TRes
        > {
  _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$snapshot$created$user(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}

class Fragment$StocktakeFields$stocktakeLocations$takenWeights {
  Fragment$StocktakeFields$stocktakeLocations$takenWeights({
    required this.id,
    required this.title,
    required this.grossWeight,
    required this.tareWeight,
    required this.isDeleted,
    required this.created,
    required this.captureMethod,
    this.$__typename = 'StocktakeWeight',
  });

  factory Fragment$StocktakeFields$stocktakeLocations$takenWeights.fromJson(
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
    return Fragment$StocktakeFields$stocktakeLocations$takenWeights(
      id: (l$id as int),
      title: (l$title as String),
      grossWeight:
          Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight.fromJson(
            (l$grossWeight as Map<String, dynamic>),
          ),
      tareWeight:
          Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight.fromJson(
            (l$tareWeight as Map<String, dynamic>),
          ),
      isDeleted: (l$isDeleted as bool),
      created:
          Fragment$StocktakeFields$stocktakeLocations$takenWeights$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      captureMethod: fromJson$Enum$StockTakeWeightCaptureMethod(
        (l$captureMethod as String),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String title;

  final Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight
  grossWeight;

  final Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight
  tareWeight;

  final bool isDeleted;

  final Fragment$StocktakeFields$stocktakeLocations$takenWeights$created
  created;

  final Enum$StockTakeWeightCaptureMethod captureMethod;

  final String $__typename;

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
    return Object.hashAll([
      l$id,
      l$title,
      l$grossWeight,
      l$tareWeight,
      l$isDeleted,
      l$created,
      l$captureMethod,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$StocktakeFields$stocktakeLocations$takenWeights ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$StocktakeFields$stocktakeLocations$takenWeights
    on Fragment$StocktakeFields$stocktakeLocations$takenWeights {
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights<
    Fragment$StocktakeFields$stocktakeLocations$takenWeights
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights<
  TRes
> {
  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights(
    Fragment$StocktakeFields$stocktakeLocations$takenWeights instance,
    TRes Function(Fragment$StocktakeFields$stocktakeLocations$takenWeights)
    then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights;

  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights;

  TRes call({
    int? id,
    String? title,
    Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight?
    grossWeight,
    Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight?
    tareWeight,
    bool? isDeleted,
    Fragment$StocktakeFields$stocktakeLocations$takenWeights$created? created,
    Enum$StockTakeWeightCaptureMethod? captureMethod,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight<
    TRes
  >
  get grossWeight;
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight<
    TRes
  >
  get tareWeight;
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights<
          TRes
        > {
  _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeFields$stocktakeLocations$takenWeights _instance;

  final TRes Function(Fragment$StocktakeFields$stocktakeLocations$takenWeights)
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
  }) => _then(
    Fragment$StocktakeFields$stocktakeLocations$takenWeights(
      id: id == _undefined || id == null ? _instance.id : (id as int),
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      grossWeight: grossWeight == _undefined || grossWeight == null
          ? _instance.grossWeight
          : (grossWeight
                as Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight),
      tareWeight: tareWeight == _undefined || tareWeight == null
          ? _instance.tareWeight
          : (tareWeight
                as Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight),
      isDeleted: isDeleted == _undefined || isDeleted == null
          ? _instance.isDeleted
          : (isDeleted as bool),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Fragment$StocktakeFields$stocktakeLocations$takenWeights$created),
      captureMethod: captureMethod == _undefined || captureMethod == null
          ? _instance.captureMethod
          : (captureMethod as Enum$StockTakeWeightCaptureMethod),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight<
    TRes
  >
  get grossWeight {
    final local$grossWeight = _instance.grossWeight;
    return CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight(
      local$grossWeight,
      (e) => call(grossWeight: e),
    );
  }

  CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight<
    TRes
  >
  get tareWeight {
    final local$tareWeight = _instance.tareWeight;
    return CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight(
      local$tareWeight,
      (e) => call(tareWeight: e),
    );
  }

  CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights<
          TRes
        > {
  _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights(
    this._res,
  );

  TRes _res;

  call({
    int? id,
    String? title,
    Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight?
    grossWeight,
    Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight?
    tareWeight,
    bool? isDeleted,
    Fragment$StocktakeFields$stocktakeLocations$takenWeights$created? created,
    Enum$StockTakeWeightCaptureMethod? captureMethod,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight<
    TRes
  >
  get grossWeight =>
      CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight.stub(
        _res,
      );

  CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight<
    TRes
  >
  get tareWeight =>
      CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight.stub(
        _res,
      );

  CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created<
    TRes
  >
  get created =>
      CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created.stub(
        _res,
      );
}

class Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight {
  Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight({
    required this.value,
    required this.uom,
    required this.mtValue,
    this.$__typename = 'UomValue',
  });

  factory Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$uom = json['uom'];
    final l$mtValue = json['mtValue'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight(
      value: (l$value as num).toDouble(),
      uom: fromJson$Enum$Uom((l$uom as String)),
      mtValue: (l$mtValue as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double value;

  final Enum$Uom uom;

  final double mtValue;

  final String $__typename;

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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$uom = uom;
    final l$mtValue = mtValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$uom, l$mtValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight
    on Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight {
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight<
    Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight<
  TRes
> {
  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight(
    Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight
    instance,
    TRes Function(
      Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight,
    )
    then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight;

  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight;

  TRes call({
    double? value,
    Enum$Uom? uom,
    double? mtValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight<
          TRes
        > {
  _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight
  _instance;

  final TRes Function(
    Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? uom = _undefined,
    Object? mtValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight(
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
    ),
  );
}

class _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight<
          TRes
        > {
  _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights$grossWeight(
    this._res,
  );

  TRes _res;

  call({double? value, Enum$Uom? uom, double? mtValue, String? $__typename}) =>
      _res;
}

class Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight {
  Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight({
    required this.value,
    required this.uom,
    required this.mtValue,
    this.$__typename = 'UomValue',
  });

  factory Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$uom = json['uom'];
    final l$mtValue = json['mtValue'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight(
      value: (l$value as num).toDouble(),
      uom: fromJson$Enum$Uom((l$uom as String)),
      mtValue: (l$mtValue as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double value;

  final Enum$Uom uom;

  final double mtValue;

  final String $__typename;

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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$uom = uom;
    final l$mtValue = mtValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$uom, l$mtValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight
    on Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight {
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight<
    Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight<
  TRes
> {
  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight(
    Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight
    instance,
    TRes Function(
      Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight,
    )
    then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight;

  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight;

  TRes call({
    double? value,
    Enum$Uom? uom,
    double? mtValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight<
          TRes
        > {
  _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight
  _instance;

  final TRes Function(
    Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? uom = _undefined,
    Object? mtValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight(
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
    ),
  );
}

class _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight<
          TRes
        > {
  _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights$tareWeight(
    this._res,
  );

  TRes _res;

  call({double? value, Enum$Uom? uom, double? mtValue, String? $__typename}) =>
      _res;
}

class Fragment$StocktakeFields$stocktakeLocations$takenWeights$created {
  Fragment$StocktakeFields$stocktakeLocations$takenWeights$created({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Created',
  });

  factory Fragment$StocktakeFields$stocktakeLocations$takenWeights$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeFields$stocktakeLocations$takenWeights$created(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$StocktakeFields$stocktakeLocations$takenWeights$created ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created
    on Fragment$StocktakeFields$stocktakeLocations$takenWeights$created {
  CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created<
    Fragment$StocktakeFields$stocktakeLocations$takenWeights$created
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created<
  TRes
> {
  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created(
    Fragment$StocktakeFields$stocktakeLocations$takenWeights$created instance,
    TRes Function(
      Fragment$StocktakeFields$stocktakeLocations$takenWeights$created,
    )
    then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created;

  factory CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created<
          TRes
        > {
  _CopyWithImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeFields$stocktakeLocations$takenWeights$created
  _instance;

  final TRes Function(
    Fragment$StocktakeFields$stocktakeLocations$takenWeights$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeFields$stocktakeLocations$takenWeights$created(
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
    ),
  );
}

class _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created<
  TRes
>
    implements
        CopyWith$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created<
          TRes
        > {
  _CopyWithStubImpl$Fragment$StocktakeFields$stocktakeLocations$takenWeights$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Fragment$StocktakeFields$created {
  Fragment$StocktakeFields$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.user,
    this.$__typename = 'Created',
  });

  factory Fragment$StocktakeFields$created.fromJson(Map<String, dynamic> json) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeFields$created(
      at: DateTime.parse((l$at as String)),
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      user: l$user == null
          ? null
          : Fragment$StocktakeFields$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userInfoId;

  final String userName;

  final Fragment$StocktakeFields$created$user? user;

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
    if (other is! Fragment$StocktakeFields$created ||
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

extension UtilityExtension$Fragment$StocktakeFields$created
    on Fragment$StocktakeFields$created {
  CopyWith$Fragment$StocktakeFields$created<Fragment$StocktakeFields$created>
  get copyWith => CopyWith$Fragment$StocktakeFields$created(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeFields$created<TRes> {
  factory CopyWith$Fragment$StocktakeFields$created(
    Fragment$StocktakeFields$created instance,
    TRes Function(Fragment$StocktakeFields$created) then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$created;

  factory CopyWith$Fragment$StocktakeFields$created.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeFields$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    Fragment$StocktakeFields$created$user? user,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeFields$created$user<TRes> get user;
}

class _CopyWithImpl$Fragment$StocktakeFields$created<TRes>
    implements CopyWith$Fragment$StocktakeFields$created<TRes> {
  _CopyWithImpl$Fragment$StocktakeFields$created(this._instance, this._then);

  final Fragment$StocktakeFields$created _instance;

  final TRes Function(Fragment$StocktakeFields$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeFields$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      user: user == _undefined
          ? _instance.user
          : (user as Fragment$StocktakeFields$created$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeFields$created$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$StocktakeFields$created$user.stub(_then(_instance))
        : CopyWith$Fragment$StocktakeFields$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeFields$created<TRes>
    implements CopyWith$Fragment$StocktakeFields$created<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeFields$created(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    Fragment$StocktakeFields$created$user? user,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeFields$created$user<TRes> get user =>
      CopyWith$Fragment$StocktakeFields$created$user.stub(_res);
}

class Fragment$StocktakeFields$created$user {
  Fragment$StocktakeFields$created$user({
    required this.name,
    required this.id,
    this.$__typename = 'UserInfo',
  });

  factory Fragment$StocktakeFields$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeFields$created$user(
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
    if (other is! Fragment$StocktakeFields$created$user ||
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

extension UtilityExtension$Fragment$StocktakeFields$created$user
    on Fragment$StocktakeFields$created$user {
  CopyWith$Fragment$StocktakeFields$created$user<
    Fragment$StocktakeFields$created$user
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeFields$created$user(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeFields$created$user<TRes> {
  factory CopyWith$Fragment$StocktakeFields$created$user(
    Fragment$StocktakeFields$created$user instance,
    TRes Function(Fragment$StocktakeFields$created$user) then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$created$user;

  factory CopyWith$Fragment$StocktakeFields$created$user.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeFields$created$user;

  TRes call({String? name, String? id, String? $__typename});
}

class _CopyWithImpl$Fragment$StocktakeFields$created$user<TRes>
    implements CopyWith$Fragment$StocktakeFields$created$user<TRes> {
  _CopyWithImpl$Fragment$StocktakeFields$created$user(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeFields$created$user _instance;

  final TRes Function(Fragment$StocktakeFields$created$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeFields$created$user(
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

class _CopyWithStubImpl$Fragment$StocktakeFields$created$user<TRes>
    implements CopyWith$Fragment$StocktakeFields$created$user<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeFields$created$user(this._res);

  TRes _res;

  call({String? name, String? id, String? $__typename}) => _res;
}

class Fragment$StocktakeFields$modified {
  Fragment$StocktakeFields$modified({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.user,
    this.$__typename = 'Modified',
  });

  factory Fragment$StocktakeFields$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeFields$modified(
      at: DateTime.parse((l$at as String)),
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      user: l$user == null
          ? null
          : Fragment$StocktakeFields$modified$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userInfoId;

  final String userName;

  final Fragment$StocktakeFields$modified$user? user;

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
    if (other is! Fragment$StocktakeFields$modified ||
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

extension UtilityExtension$Fragment$StocktakeFields$modified
    on Fragment$StocktakeFields$modified {
  CopyWith$Fragment$StocktakeFields$modified<Fragment$StocktakeFields$modified>
  get copyWith => CopyWith$Fragment$StocktakeFields$modified(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeFields$modified<TRes> {
  factory CopyWith$Fragment$StocktakeFields$modified(
    Fragment$StocktakeFields$modified instance,
    TRes Function(Fragment$StocktakeFields$modified) then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$modified;

  factory CopyWith$Fragment$StocktakeFields$modified.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeFields$modified;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    Fragment$StocktakeFields$modified$user? user,
    String? $__typename,
  });
  CopyWith$Fragment$StocktakeFields$modified$user<TRes> get user;
}

class _CopyWithImpl$Fragment$StocktakeFields$modified<TRes>
    implements CopyWith$Fragment$StocktakeFields$modified<TRes> {
  _CopyWithImpl$Fragment$StocktakeFields$modified(this._instance, this._then);

  final Fragment$StocktakeFields$modified _instance;

  final TRes Function(Fragment$StocktakeFields$modified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeFields$modified(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      user: user == _undefined
          ? _instance.user
          : (user as Fragment$StocktakeFields$modified$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$StocktakeFields$modified$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$StocktakeFields$modified$user.stub(_then(_instance))
        : CopyWith$Fragment$StocktakeFields$modified$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$StocktakeFields$modified<TRes>
    implements CopyWith$Fragment$StocktakeFields$modified<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeFields$modified(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    Fragment$StocktakeFields$modified$user? user,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$StocktakeFields$modified$user<TRes> get user =>
      CopyWith$Fragment$StocktakeFields$modified$user.stub(_res);
}

class Fragment$StocktakeFields$modified$user {
  Fragment$StocktakeFields$modified$user({
    required this.name,
    required this.id,
    this.$__typename = 'UserInfo',
  });

  factory Fragment$StocktakeFields$modified$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$StocktakeFields$modified$user(
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
    if (other is! Fragment$StocktakeFields$modified$user ||
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

extension UtilityExtension$Fragment$StocktakeFields$modified$user
    on Fragment$StocktakeFields$modified$user {
  CopyWith$Fragment$StocktakeFields$modified$user<
    Fragment$StocktakeFields$modified$user
  >
  get copyWith =>
      CopyWith$Fragment$StocktakeFields$modified$user(this, (i) => i);
}

abstract class CopyWith$Fragment$StocktakeFields$modified$user<TRes> {
  factory CopyWith$Fragment$StocktakeFields$modified$user(
    Fragment$StocktakeFields$modified$user instance,
    TRes Function(Fragment$StocktakeFields$modified$user) then,
  ) = _CopyWithImpl$Fragment$StocktakeFields$modified$user;

  factory CopyWith$Fragment$StocktakeFields$modified$user.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StocktakeFields$modified$user;

  TRes call({String? name, String? id, String? $__typename});
}

class _CopyWithImpl$Fragment$StocktakeFields$modified$user<TRes>
    implements CopyWith$Fragment$StocktakeFields$modified$user<TRes> {
  _CopyWithImpl$Fragment$StocktakeFields$modified$user(
    this._instance,
    this._then,
  );

  final Fragment$StocktakeFields$modified$user _instance;

  final TRes Function(Fragment$StocktakeFields$modified$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$StocktakeFields$modified$user(
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

class _CopyWithStubImpl$Fragment$StocktakeFields$modified$user<TRes>
    implements CopyWith$Fragment$StocktakeFields$modified$user<TRes> {
  _CopyWithStubImpl$Fragment$StocktakeFields$modified$user(this._res);

  TRes _res;

  call({String? name, String? id, String? $__typename}) => _res;
}
