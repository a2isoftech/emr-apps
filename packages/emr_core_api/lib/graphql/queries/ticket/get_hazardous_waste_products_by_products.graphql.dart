import 'package:gql/ast.dart';

class Variables$Query$GetHazardousWasteProductsByProducts {
  factory Variables$Query$GetHazardousWasteProductsByProducts({
    required List<String> products,
  }) => Variables$Query$GetHazardousWasteProductsByProducts._({
    r'products': products,
  });

  Variables$Query$GetHazardousWasteProductsByProducts._(this._$data);

  factory Variables$Query$GetHazardousWasteProductsByProducts.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$products = data['products'];
    result$data['products'] = (l$products as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    return Variables$Query$GetHazardousWasteProductsByProducts._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get products => (_$data['products'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$products = products;
    result$data['products'] = l$products.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Query$GetHazardousWasteProductsByProducts<
    Variables$Query$GetHazardousWasteProductsByProducts
  >
  get copyWith => CopyWith$Variables$Query$GetHazardousWasteProductsByProducts(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetHazardousWasteProductsByProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$products = products;
    final lOther$products = other.products;
    if (l$products.length != lOther$products.length) {
      return false;
    }
    for (int i = 0; i < l$products.length; i++) {
      final l$products$entry = l$products[i];
      final lOther$products$entry = lOther$products[i];
      if (l$products$entry != lOther$products$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$products = products;
    return Object.hashAll([Object.hashAll(l$products.map((v) => v))]);
  }
}

abstract class CopyWith$Variables$Query$GetHazardousWasteProductsByProducts<
  TRes
> {
  factory CopyWith$Variables$Query$GetHazardousWasteProductsByProducts(
    Variables$Query$GetHazardousWasteProductsByProducts instance,
    TRes Function(Variables$Query$GetHazardousWasteProductsByProducts) then,
  ) = _CopyWithImpl$Variables$Query$GetHazardousWasteProductsByProducts;

  factory CopyWith$Variables$Query$GetHazardousWasteProductsByProducts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$GetHazardousWasteProductsByProducts;

  TRes call({List<String>? products});
}

class _CopyWithImpl$Variables$Query$GetHazardousWasteProductsByProducts<TRes>
    implements
        CopyWith$Variables$Query$GetHazardousWasteProductsByProducts<TRes> {
  _CopyWithImpl$Variables$Query$GetHazardousWasteProductsByProducts(
    this._instance,
    this._then,
  );

  final Variables$Query$GetHazardousWasteProductsByProducts _instance;

  final TRes Function(Variables$Query$GetHazardousWasteProductsByProducts)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? products = _undefined}) => _then(
    Variables$Query$GetHazardousWasteProductsByProducts._({
      ..._instance._$data,
      if (products != _undefined && products != null)
        'products': (products as List<String>),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetHazardousWasteProductsByProducts<
  TRes
>
    implements
        CopyWith$Variables$Query$GetHazardousWasteProductsByProducts<TRes> {
  _CopyWithStubImpl$Variables$Query$GetHazardousWasteProductsByProducts(
    this._res,
  );

  TRes _res;

  call({List<String>? products}) => _res;
}

class Query$GetHazardousWasteProductsByProducts {
  Query$GetHazardousWasteProductsByProducts({
    required this.hazardousWasteProducts,
    this.$__typename = 'Query',
  });

  factory Query$GetHazardousWasteProductsByProducts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hazardousWasteProducts = json['hazardousWasteProducts'];
    final l$$__typename = json['__typename'];
    return Query$GetHazardousWasteProductsByProducts(
      hazardousWasteProducts: (l$hazardousWasteProducts as List<dynamic>)
          .map(
            (e) =>
                Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts>
  hazardousWasteProducts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hazardousWasteProducts = hazardousWasteProducts;
    _resultData['hazardousWasteProducts'] = l$hazardousWasteProducts
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hazardousWasteProducts = hazardousWasteProducts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$hazardousWasteProducts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetHazardousWasteProductsByProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hazardousWasteProducts = hazardousWasteProducts;
    final lOther$hazardousWasteProducts = other.hazardousWasteProducts;
    if (l$hazardousWasteProducts.length !=
        lOther$hazardousWasteProducts.length) {
      return false;
    }
    for (int i = 0; i < l$hazardousWasteProducts.length; i++) {
      final l$hazardousWasteProducts$entry = l$hazardousWasteProducts[i];
      final lOther$hazardousWasteProducts$entry =
          lOther$hazardousWasteProducts[i];
      if (l$hazardousWasteProducts$entry !=
          lOther$hazardousWasteProducts$entry) {
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

extension UtilityExtension$Query$GetHazardousWasteProductsByProducts
    on Query$GetHazardousWasteProductsByProducts {
  CopyWith$Query$GetHazardousWasteProductsByProducts<
    Query$GetHazardousWasteProductsByProducts
  >
  get copyWith =>
      CopyWith$Query$GetHazardousWasteProductsByProducts(this, (i) => i);
}

abstract class CopyWith$Query$GetHazardousWasteProductsByProducts<TRes> {
  factory CopyWith$Query$GetHazardousWasteProductsByProducts(
    Query$GetHazardousWasteProductsByProducts instance,
    TRes Function(Query$GetHazardousWasteProductsByProducts) then,
  ) = _CopyWithImpl$Query$GetHazardousWasteProductsByProducts;

  factory CopyWith$Query$GetHazardousWasteProductsByProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetHazardousWasteProductsByProducts;

  TRes call({
    List<Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts>?
    hazardousWasteProducts,
    String? $__typename,
  });
  TRes hazardousWasteProducts(
    Iterable<Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts>
    Function(
      Iterable<
        CopyWith$Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts<
          Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetHazardousWasteProductsByProducts<TRes>
    implements CopyWith$Query$GetHazardousWasteProductsByProducts<TRes> {
  _CopyWithImpl$Query$GetHazardousWasteProductsByProducts(
    this._instance,
    this._then,
  );

  final Query$GetHazardousWasteProductsByProducts _instance;

  final TRes Function(Query$GetHazardousWasteProductsByProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hazardousWasteProducts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetHazardousWasteProductsByProducts(
      hazardousWasteProducts:
          hazardousWasteProducts == _undefined || hazardousWasteProducts == null
          ? _instance.hazardousWasteProducts
          : (hazardousWasteProducts
                as List<
                  Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes hazardousWasteProducts(
    Iterable<Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts>
    Function(
      Iterable<
        CopyWith$Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts<
          Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts
        >
      >,
    )
    _fn,
  ) => call(
    hazardousWasteProducts: _fn(
      _instance.hazardousWasteProducts.map(
        (e) =>
            CopyWith$Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetHazardousWasteProductsByProducts<TRes>
    implements CopyWith$Query$GetHazardousWasteProductsByProducts<TRes> {
  _CopyWithStubImpl$Query$GetHazardousWasteProductsByProducts(this._res);

  TRes _res;

  call({
    List<Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts>?
    hazardousWasteProducts,
    String? $__typename,
  }) => _res;

  hazardousWasteProducts(_fn) => _res;
}

const documentNodeQueryGetHazardousWasteProductsByProducts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetHazardousWasteProductsByProducts'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'products')),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'hazardousWasteProducts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'products'),
                value: VariableNode(name: NameNode(value: 'products')),
              ),
            ],
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
                  name: NameNode(value: 'productCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'component'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'europeanWasteCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'concentration'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'physicalForm'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'hazardCodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'containerType'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'purchasesOrSales'),
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
                  name: NameNode(value: 'uniDnumber'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'unClass'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'properShippingName'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'packingGroup'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'specialHandlingRequirements'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'wasteManagementOperationRDCode'),
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
  ],
);

class Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts {
  Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts({
    required this.id,
    required this.productCode,
    required this.component,
    required this.europeanWasteCode,
    required this.concentration,
    required this.physicalForm,
    required this.hazardCodes,
    required this.containerType,
    required this.purchasesOrSales,
    required this.description,
    required this.uniDnumber,
    required this.unClass,
    required this.properShippingName,
    required this.packingGroup,
    required this.specialHandlingRequirements,
    required this.wasteManagementOperationRDCode,
    this.$__typename = 'HazardousWasteProduct',
  });

  factory Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$productCode = json['productCode'];
    final l$component = json['component'];
    final l$europeanWasteCode = json['europeanWasteCode'];
    final l$concentration = json['concentration'];
    final l$physicalForm = json['physicalForm'];
    final l$hazardCodes = json['hazardCodes'];
    final l$containerType = json['containerType'];
    final l$purchasesOrSales = json['purchasesOrSales'];
    final l$description = json['description'];
    final l$uniDnumber = json['uniDnumber'];
    final l$unClass = json['unClass'];
    final l$properShippingName = json['properShippingName'];
    final l$packingGroup = json['packingGroup'];
    final l$specialHandlingRequirements = json['specialHandlingRequirements'];
    final l$wasteManagementOperationRDCode =
        json['wasteManagementOperationRDCode'];
    final l$$__typename = json['__typename'];
    return Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts(
      id: (l$id as String),
      productCode: (l$productCode as String),
      component: (l$component as String),
      europeanWasteCode: (l$europeanWasteCode as String),
      concentration: (l$concentration as String),
      physicalForm: (l$physicalForm as String),
      hazardCodes: (l$hazardCodes as String),
      containerType: (l$containerType as String),
      purchasesOrSales: (l$purchasesOrSales as String),
      description: (l$description as String),
      uniDnumber: (l$uniDnumber as String),
      unClass: (l$unClass as String),
      properShippingName: (l$properShippingName as String),
      packingGroup: (l$packingGroup as String),
      specialHandlingRequirements: (l$specialHandlingRequirements as String),
      wasteManagementOperationRDCode:
          (l$wasteManagementOperationRDCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String productCode;

  final String component;

  final String europeanWasteCode;

  final String concentration;

  final String physicalForm;

  final String hazardCodes;

  final String containerType;

  final String purchasesOrSales;

  final String description;

  final String uniDnumber;

  final String unClass;

  final String properShippingName;

  final String packingGroup;

  final String specialHandlingRequirements;

  final String wasteManagementOperationRDCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$productCode = productCode;
    _resultData['productCode'] = l$productCode;
    final l$component = component;
    _resultData['component'] = l$component;
    final l$europeanWasteCode = europeanWasteCode;
    _resultData['europeanWasteCode'] = l$europeanWasteCode;
    final l$concentration = concentration;
    _resultData['concentration'] = l$concentration;
    final l$physicalForm = physicalForm;
    _resultData['physicalForm'] = l$physicalForm;
    final l$hazardCodes = hazardCodes;
    _resultData['hazardCodes'] = l$hazardCodes;
    final l$containerType = containerType;
    _resultData['containerType'] = l$containerType;
    final l$purchasesOrSales = purchasesOrSales;
    _resultData['purchasesOrSales'] = l$purchasesOrSales;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$uniDnumber = uniDnumber;
    _resultData['uniDnumber'] = l$uniDnumber;
    final l$unClass = unClass;
    _resultData['unClass'] = l$unClass;
    final l$properShippingName = properShippingName;
    _resultData['properShippingName'] = l$properShippingName;
    final l$packingGroup = packingGroup;
    _resultData['packingGroup'] = l$packingGroup;
    final l$specialHandlingRequirements = specialHandlingRequirements;
    _resultData['specialHandlingRequirements'] = l$specialHandlingRequirements;
    final l$wasteManagementOperationRDCode = wasteManagementOperationRDCode;
    _resultData['wasteManagementOperationRDCode'] =
        l$wasteManagementOperationRDCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$productCode = productCode;
    final l$component = component;
    final l$europeanWasteCode = europeanWasteCode;
    final l$concentration = concentration;
    final l$physicalForm = physicalForm;
    final l$hazardCodes = hazardCodes;
    final l$containerType = containerType;
    final l$purchasesOrSales = purchasesOrSales;
    final l$description = description;
    final l$uniDnumber = uniDnumber;
    final l$unClass = unClass;
    final l$properShippingName = properShippingName;
    final l$packingGroup = packingGroup;
    final l$specialHandlingRequirements = specialHandlingRequirements;
    final l$wasteManagementOperationRDCode = wasteManagementOperationRDCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$productCode,
      l$component,
      l$europeanWasteCode,
      l$concentration,
      l$physicalForm,
      l$hazardCodes,
      l$containerType,
      l$purchasesOrSales,
      l$description,
      l$uniDnumber,
      l$unClass,
      l$properShippingName,
      l$packingGroup,
      l$specialHandlingRequirements,
      l$wasteManagementOperationRDCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$productCode = productCode;
    final lOther$productCode = other.productCode;
    if (l$productCode != lOther$productCode) {
      return false;
    }
    final l$component = component;
    final lOther$component = other.component;
    if (l$component != lOther$component) {
      return false;
    }
    final l$europeanWasteCode = europeanWasteCode;
    final lOther$europeanWasteCode = other.europeanWasteCode;
    if (l$europeanWasteCode != lOther$europeanWasteCode) {
      return false;
    }
    final l$concentration = concentration;
    final lOther$concentration = other.concentration;
    if (l$concentration != lOther$concentration) {
      return false;
    }
    final l$physicalForm = physicalForm;
    final lOther$physicalForm = other.physicalForm;
    if (l$physicalForm != lOther$physicalForm) {
      return false;
    }
    final l$hazardCodes = hazardCodes;
    final lOther$hazardCodes = other.hazardCodes;
    if (l$hazardCodes != lOther$hazardCodes) {
      return false;
    }
    final l$containerType = containerType;
    final lOther$containerType = other.containerType;
    if (l$containerType != lOther$containerType) {
      return false;
    }
    final l$purchasesOrSales = purchasesOrSales;
    final lOther$purchasesOrSales = other.purchasesOrSales;
    if (l$purchasesOrSales != lOther$purchasesOrSales) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$uniDnumber = uniDnumber;
    final lOther$uniDnumber = other.uniDnumber;
    if (l$uniDnumber != lOther$uniDnumber) {
      return false;
    }
    final l$unClass = unClass;
    final lOther$unClass = other.unClass;
    if (l$unClass != lOther$unClass) {
      return false;
    }
    final l$properShippingName = properShippingName;
    final lOther$properShippingName = other.properShippingName;
    if (l$properShippingName != lOther$properShippingName) {
      return false;
    }
    final l$packingGroup = packingGroup;
    final lOther$packingGroup = other.packingGroup;
    if (l$packingGroup != lOther$packingGroup) {
      return false;
    }
    final l$specialHandlingRequirements = specialHandlingRequirements;
    final lOther$specialHandlingRequirements =
        other.specialHandlingRequirements;
    if (l$specialHandlingRequirements != lOther$specialHandlingRequirements) {
      return false;
    }
    final l$wasteManagementOperationRDCode = wasteManagementOperationRDCode;
    final lOther$wasteManagementOperationRDCode =
        other.wasteManagementOperationRDCode;
    if (l$wasteManagementOperationRDCode !=
        lOther$wasteManagementOperationRDCode) {
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

extension UtilityExtension$Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts
    on Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts {
  CopyWith$Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts<
    Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts
  >
  get copyWith =>
      CopyWith$Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts<
  TRes
> {
  factory CopyWith$Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts(
    Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts instance,
    TRes Function(
      Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts,
    )
    then,
  ) = _CopyWithImpl$Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts;

  factory CopyWith$Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts;

  TRes call({
    String? id,
    String? productCode,
    String? component,
    String? europeanWasteCode,
    String? concentration,
    String? physicalForm,
    String? hazardCodes,
    String? containerType,
    String? purchasesOrSales,
    String? description,
    String? uniDnumber,
    String? unClass,
    String? properShippingName,
    String? packingGroup,
    String? specialHandlingRequirements,
    String? wasteManagementOperationRDCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts<
  TRes
>
    implements
        CopyWith$Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts<
          TRes
        > {
  _CopyWithImpl$Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts(
    this._instance,
    this._then,
  );

  final Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts
  _instance;

  final TRes Function(
    Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? productCode = _undefined,
    Object? component = _undefined,
    Object? europeanWasteCode = _undefined,
    Object? concentration = _undefined,
    Object? physicalForm = _undefined,
    Object? hazardCodes = _undefined,
    Object? containerType = _undefined,
    Object? purchasesOrSales = _undefined,
    Object? description = _undefined,
    Object? uniDnumber = _undefined,
    Object? unClass = _undefined,
    Object? properShippingName = _undefined,
    Object? packingGroup = _undefined,
    Object? specialHandlingRequirements = _undefined,
    Object? wasteManagementOperationRDCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      productCode: productCode == _undefined || productCode == null
          ? _instance.productCode
          : (productCode as String),
      component: component == _undefined || component == null
          ? _instance.component
          : (component as String),
      europeanWasteCode:
          europeanWasteCode == _undefined || europeanWasteCode == null
          ? _instance.europeanWasteCode
          : (europeanWasteCode as String),
      concentration: concentration == _undefined || concentration == null
          ? _instance.concentration
          : (concentration as String),
      physicalForm: physicalForm == _undefined || physicalForm == null
          ? _instance.physicalForm
          : (physicalForm as String),
      hazardCodes: hazardCodes == _undefined || hazardCodes == null
          ? _instance.hazardCodes
          : (hazardCodes as String),
      containerType: containerType == _undefined || containerType == null
          ? _instance.containerType
          : (containerType as String),
      purchasesOrSales:
          purchasesOrSales == _undefined || purchasesOrSales == null
          ? _instance.purchasesOrSales
          : (purchasesOrSales as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      uniDnumber: uniDnumber == _undefined || uniDnumber == null
          ? _instance.uniDnumber
          : (uniDnumber as String),
      unClass: unClass == _undefined || unClass == null
          ? _instance.unClass
          : (unClass as String),
      properShippingName:
          properShippingName == _undefined || properShippingName == null
          ? _instance.properShippingName
          : (properShippingName as String),
      packingGroup: packingGroup == _undefined || packingGroup == null
          ? _instance.packingGroup
          : (packingGroup as String),
      specialHandlingRequirements:
          specialHandlingRequirements == _undefined ||
              specialHandlingRequirements == null
          ? _instance.specialHandlingRequirements
          : (specialHandlingRequirements as String),
      wasteManagementOperationRDCode:
          wasteManagementOperationRDCode == _undefined ||
              wasteManagementOperationRDCode == null
          ? _instance.wasteManagementOperationRDCode
          : (wasteManagementOperationRDCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts<
  TRes
>
    implements
        CopyWith$Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts<
          TRes
        > {
  _CopyWithStubImpl$Query$GetHazardousWasteProductsByProducts$hazardousWasteProducts(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? productCode,
    String? component,
    String? europeanWasteCode,
    String? concentration,
    String? physicalForm,
    String? hazardCodes,
    String? containerType,
    String? purchasesOrSales,
    String? description,
    String? uniDnumber,
    String? unClass,
    String? properShippingName,
    String? packingGroup,
    String? specialHandlingRequirements,
    String? wasteManagementOperationRDCode,
    String? $__typename,
  }) => _res;
}
