import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$VehicleFields {
  Fragment$VehicleFields({
    this.vin,
    this.vrn,
    required this.vehicleStatus,
    this.stockValue,
    this.year,
    this.manufacturer,
    this.model,
    this.trim,
    this.fuelType,
    required this.id,
    this.location,
    required this.weight,
    this.product,
    required this.active,
    required this.vehicleParts,
    this.$__typename = 'Vehicle',
  });

  factory Fragment$VehicleFields.fromJson(Map<String, dynamic> json) {
    final l$vin = json['vin'];
    final l$vrn = json['vrn'];
    final l$vehicleStatus = json['vehicleStatus'];
    final l$stockValue = json['stockValue'];
    final l$year = json['year'];
    final l$manufacturer = json['manufacturer'];
    final l$model = json['model'];
    final l$trim = json['trim'];
    final l$fuelType = json['fuelType'];
    final l$id = json['id'];
    final l$location = json['location'];
    final l$weight = json['weight'];
    final l$product = json['product'];
    final l$active = json['active'];
    final l$vehicleParts = json['vehicleParts'];
    final l$$__typename = json['__typename'];
    return Fragment$VehicleFields(
      vin: (l$vin as String?),
      vrn: (l$vrn as String?),
      vehicleStatus: fromJson$Enum$VehicleStatus((l$vehicleStatus as String)),
      stockValue: (l$stockValue as num?)?.toDouble(),
      year: (l$year as int?),
      manufacturer: (l$manufacturer as String?),
      model: (l$model as String?),
      trim: (l$trim as String?),
      fuelType: (l$fuelType as String?),
      id: (l$id as String),
      location: l$location == null
          ? null
          : Fragment$VehicleFields$location.fromJson(
              (l$location as Map<String, dynamic>),
            ),
      weight: Fragment$VehicleFields$weight.fromJson(
        (l$weight as Map<String, dynamic>),
      ),
      product: l$product == null
          ? null
          : Fragment$VehicleFields$product.fromJson(
              (l$product as Map<String, dynamic>),
            ),
      active: (l$active as bool),
      vehicleParts: (l$vehicleParts as List<dynamic>)
          .map(
            (e) => Fragment$VehicleFields$vehicleParts.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? vin;

  final String? vrn;

  final Enum$VehicleStatus vehicleStatus;

  final double? stockValue;

  final int? year;

  final String? manufacturer;

  final String? model;

  final String? trim;

  final String? fuelType;

  final String id;

  final Fragment$VehicleFields$location? location;

  final Fragment$VehicleFields$weight weight;

  final Fragment$VehicleFields$product? product;

  final bool active;

  final List<Fragment$VehicleFields$vehicleParts> vehicleParts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vin = vin;
    _resultData['vin'] = l$vin;
    final l$vrn = vrn;
    _resultData['vrn'] = l$vrn;
    final l$vehicleStatus = vehicleStatus;
    _resultData['vehicleStatus'] = toJson$Enum$VehicleStatus(l$vehicleStatus);
    final l$stockValue = stockValue;
    _resultData['stockValue'] = l$stockValue;
    final l$year = year;
    _resultData['year'] = l$year;
    final l$manufacturer = manufacturer;
    _resultData['manufacturer'] = l$manufacturer;
    final l$model = model;
    _resultData['model'] = l$model;
    final l$trim = trim;
    _resultData['trim'] = l$trim;
    final l$fuelType = fuelType;
    _resultData['fuelType'] = l$fuelType;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$weight = weight;
    _resultData['weight'] = l$weight.toJson();
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$vehicleParts = vehicleParts;
    _resultData['vehicleParts'] = l$vehicleParts
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vin = vin;
    final l$vrn = vrn;
    final l$vehicleStatus = vehicleStatus;
    final l$stockValue = stockValue;
    final l$year = year;
    final l$manufacturer = manufacturer;
    final l$model = model;
    final l$trim = trim;
    final l$fuelType = fuelType;
    final l$id = id;
    final l$location = location;
    final l$weight = weight;
    final l$product = product;
    final l$active = active;
    final l$vehicleParts = vehicleParts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$vin,
      l$vrn,
      l$vehicleStatus,
      l$stockValue,
      l$year,
      l$manufacturer,
      l$model,
      l$trim,
      l$fuelType,
      l$id,
      l$location,
      l$weight,
      l$product,
      l$active,
      Object.hashAll(l$vehicleParts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$VehicleFields || runtimeType != other.runtimeType) {
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
    final l$vehicleStatus = vehicleStatus;
    final lOther$vehicleStatus = other.vehicleStatus;
    if (l$vehicleStatus != lOther$vehicleStatus) {
      return false;
    }
    final l$stockValue = stockValue;
    final lOther$stockValue = other.stockValue;
    if (l$stockValue != lOther$stockValue) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    final l$manufacturer = manufacturer;
    final lOther$manufacturer = other.manufacturer;
    if (l$manufacturer != lOther$manufacturer) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (l$model != lOther$model) {
      return false;
    }
    final l$trim = trim;
    final lOther$trim = other.trim;
    if (l$trim != lOther$trim) {
      return false;
    }
    final l$fuelType = fuelType;
    final lOther$fuelType = other.fuelType;
    if (l$fuelType != lOther$fuelType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$vehicleParts = vehicleParts;
    final lOther$vehicleParts = other.vehicleParts;
    if (l$vehicleParts.length != lOther$vehicleParts.length) {
      return false;
    }
    for (int i = 0; i < l$vehicleParts.length; i++) {
      final l$vehicleParts$entry = l$vehicleParts[i];
      final lOther$vehicleParts$entry = lOther$vehicleParts[i];
      if (l$vehicleParts$entry != lOther$vehicleParts$entry) {
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

extension UtilityExtension$Fragment$VehicleFields on Fragment$VehicleFields {
  CopyWith$Fragment$VehicleFields<Fragment$VehicleFields> get copyWith =>
      CopyWith$Fragment$VehicleFields(this, (i) => i);
}

abstract class CopyWith$Fragment$VehicleFields<TRes> {
  factory CopyWith$Fragment$VehicleFields(
    Fragment$VehicleFields instance,
    TRes Function(Fragment$VehicleFields) then,
  ) = _CopyWithImpl$Fragment$VehicleFields;

  factory CopyWith$Fragment$VehicleFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$VehicleFields;

  TRes call({
    String? vin,
    String? vrn,
    Enum$VehicleStatus? vehicleStatus,
    double? stockValue,
    int? year,
    String? manufacturer,
    String? model,
    String? trim,
    String? fuelType,
    String? id,
    Fragment$VehicleFields$location? location,
    Fragment$VehicleFields$weight? weight,
    Fragment$VehicleFields$product? product,
    bool? active,
    List<Fragment$VehicleFields$vehicleParts>? vehicleParts,
    String? $__typename,
  });
  CopyWith$Fragment$VehicleFields$location<TRes> get location;
  CopyWith$Fragment$VehicleFields$weight<TRes> get weight;
  CopyWith$Fragment$VehicleFields$product<TRes> get product;
  TRes vehicleParts(
    Iterable<Fragment$VehicleFields$vehicleParts> Function(
      Iterable<
        CopyWith$Fragment$VehicleFields$vehicleParts<
          Fragment$VehicleFields$vehicleParts
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$VehicleFields<TRes>
    implements CopyWith$Fragment$VehicleFields<TRes> {
  _CopyWithImpl$Fragment$VehicleFields(this._instance, this._then);

  final Fragment$VehicleFields _instance;

  final TRes Function(Fragment$VehicleFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vin = _undefined,
    Object? vrn = _undefined,
    Object? vehicleStatus = _undefined,
    Object? stockValue = _undefined,
    Object? year = _undefined,
    Object? manufacturer = _undefined,
    Object? model = _undefined,
    Object? trim = _undefined,
    Object? fuelType = _undefined,
    Object? id = _undefined,
    Object? location = _undefined,
    Object? weight = _undefined,
    Object? product = _undefined,
    Object? active = _undefined,
    Object? vehicleParts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$VehicleFields(
      vin: vin == _undefined ? _instance.vin : (vin as String?),
      vrn: vrn == _undefined ? _instance.vrn : (vrn as String?),
      vehicleStatus: vehicleStatus == _undefined || vehicleStatus == null
          ? _instance.vehicleStatus
          : (vehicleStatus as Enum$VehicleStatus),
      stockValue: stockValue == _undefined
          ? _instance.stockValue
          : (stockValue as double?),
      year: year == _undefined ? _instance.year : (year as int?),
      manufacturer: manufacturer == _undefined
          ? _instance.manufacturer
          : (manufacturer as String?),
      model: model == _undefined ? _instance.model : (model as String?),
      trim: trim == _undefined ? _instance.trim : (trim as String?),
      fuelType: fuelType == _undefined
          ? _instance.fuelType
          : (fuelType as String?),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      location: location == _undefined
          ? _instance.location
          : (location as Fragment$VehicleFields$location?),
      weight: weight == _undefined || weight == null
          ? _instance.weight
          : (weight as Fragment$VehicleFields$weight),
      product: product == _undefined
          ? _instance.product
          : (product as Fragment$VehicleFields$product?),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      vehicleParts: vehicleParts == _undefined || vehicleParts == null
          ? _instance.vehicleParts
          : (vehicleParts as List<Fragment$VehicleFields$vehicleParts>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$VehicleFields$location<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Fragment$VehicleFields$location.stub(_then(_instance))
        : CopyWith$Fragment$VehicleFields$location(
            local$location,
            (e) => call(location: e),
          );
  }

  CopyWith$Fragment$VehicleFields$weight<TRes> get weight {
    final local$weight = _instance.weight;
    return CopyWith$Fragment$VehicleFields$weight(
      local$weight,
      (e) => call(weight: e),
    );
  }

  CopyWith$Fragment$VehicleFields$product<TRes> get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Fragment$VehicleFields$product.stub(_then(_instance))
        : CopyWith$Fragment$VehicleFields$product(
            local$product,
            (e) => call(product: e),
          );
  }

  TRes vehicleParts(
    Iterable<Fragment$VehicleFields$vehicleParts> Function(
      Iterable<
        CopyWith$Fragment$VehicleFields$vehicleParts<
          Fragment$VehicleFields$vehicleParts
        >
      >,
    )
    _fn,
  ) => call(
    vehicleParts: _fn(
      _instance.vehicleParts.map(
        (e) => CopyWith$Fragment$VehicleFields$vehicleParts(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$VehicleFields<TRes>
    implements CopyWith$Fragment$VehicleFields<TRes> {
  _CopyWithStubImpl$Fragment$VehicleFields(this._res);

  TRes _res;

  call({
    String? vin,
    String? vrn,
    Enum$VehicleStatus? vehicleStatus,
    double? stockValue,
    int? year,
    String? manufacturer,
    String? model,
    String? trim,
    String? fuelType,
    String? id,
    Fragment$VehicleFields$location? location,
    Fragment$VehicleFields$weight? weight,
    Fragment$VehicleFields$product? product,
    bool? active,
    List<Fragment$VehicleFields$vehicleParts>? vehicleParts,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$VehicleFields$location<TRes> get location =>
      CopyWith$Fragment$VehicleFields$location.stub(_res);

  CopyWith$Fragment$VehicleFields$weight<TRes> get weight =>
      CopyWith$Fragment$VehicleFields$weight.stub(_res);

  CopyWith$Fragment$VehicleFields$product<TRes> get product =>
      CopyWith$Fragment$VehicleFields$product.stub(_res);

  vehicleParts(_fn) => _res;
}

const fragmentDefinitionVehicleFields = FragmentDefinitionNode(
  name: NameNode(value: 'VehicleFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Vehicle'), isNonNull: false),
  ),
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
        name: NameNode(value: 'vehicleStatus'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'stockValue'),
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
        name: NameNode(value: 'manufacturer'),
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
        name: NameNode(value: 'trim'),
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
        name: NameNode(value: 'id'),
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
              name: NameNode(value: 'yardId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'yard'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'yardCode'),
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
        name: NameNode(value: 'weight'),
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
        name: NameNode(value: 'vehicleParts'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'type'),
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
              name: NameNode(value: 'partStatus'),
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
              name: NameNode(value: 'active'),
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
);
const documentNodeFragmentVehicleFields = DocumentNode(
  definitions: [fragmentDefinitionVehicleFields],
);

class Fragment$VehicleFields$location {
  Fragment$VehicleFields$location({
    required this.code,
    required this.yardId,
    this.yard,
    this.$__typename = 'InventoryLocation',
  });

  factory Fragment$VehicleFields$location.fromJson(Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$yardId = json['yardId'];
    final l$yard = json['yard'];
    final l$$__typename = json['__typename'];
    return Fragment$VehicleFields$location(
      code: (l$code as String),
      yardId: (l$yardId as String),
      yard: l$yard == null
          ? null
          : Fragment$VehicleFields$location$yard.fromJson(
              (l$yard as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String yardId;

  final Fragment$VehicleFields$location$yard? yard;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$yard = yard;
    _resultData['yard'] = l$yard?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$yardId = yardId;
    final l$yard = yard;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$yardId, l$yard, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$VehicleFields$location ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
      return false;
    }
    final l$yard = yard;
    final lOther$yard = other.yard;
    if (l$yard != lOther$yard) {
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

extension UtilityExtension$Fragment$VehicleFields$location
    on Fragment$VehicleFields$location {
  CopyWith$Fragment$VehicleFields$location<Fragment$VehicleFields$location>
  get copyWith => CopyWith$Fragment$VehicleFields$location(this, (i) => i);
}

abstract class CopyWith$Fragment$VehicleFields$location<TRes> {
  factory CopyWith$Fragment$VehicleFields$location(
    Fragment$VehicleFields$location instance,
    TRes Function(Fragment$VehicleFields$location) then,
  ) = _CopyWithImpl$Fragment$VehicleFields$location;

  factory CopyWith$Fragment$VehicleFields$location.stub(TRes res) =
      _CopyWithStubImpl$Fragment$VehicleFields$location;

  TRes call({
    String? code,
    String? yardId,
    Fragment$VehicleFields$location$yard? yard,
    String? $__typename,
  });
  CopyWith$Fragment$VehicleFields$location$yard<TRes> get yard;
}

class _CopyWithImpl$Fragment$VehicleFields$location<TRes>
    implements CopyWith$Fragment$VehicleFields$location<TRes> {
  _CopyWithImpl$Fragment$VehicleFields$location(this._instance, this._then);

  final Fragment$VehicleFields$location _instance;

  final TRes Function(Fragment$VehicleFields$location) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? yardId = _undefined,
    Object? yard = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$VehicleFields$location(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      yard: yard == _undefined
          ? _instance.yard
          : (yard as Fragment$VehicleFields$location$yard?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$VehicleFields$location$yard<TRes> get yard {
    final local$yard = _instance.yard;
    return local$yard == null
        ? CopyWith$Fragment$VehicleFields$location$yard.stub(_then(_instance))
        : CopyWith$Fragment$VehicleFields$location$yard(
            local$yard,
            (e) => call(yard: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$VehicleFields$location<TRes>
    implements CopyWith$Fragment$VehicleFields$location<TRes> {
  _CopyWithStubImpl$Fragment$VehicleFields$location(this._res);

  TRes _res;

  call({
    String? code,
    String? yardId,
    Fragment$VehicleFields$location$yard? yard,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$VehicleFields$location$yard<TRes> get yard =>
      CopyWith$Fragment$VehicleFields$location$yard.stub(_res);
}

class Fragment$VehicleFields$location$yard {
  Fragment$VehicleFields$location$yard({
    required this.yardCode,
    this.$__typename = 'Yard',
  });

  factory Fragment$VehicleFields$location$yard.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$yardCode = json['yardCode'];
    final l$$__typename = json['__typename'];
    return Fragment$VehicleFields$location$yard(
      yardCode: (l$yardCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String yardCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$yardCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$VehicleFields$location$yard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
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

extension UtilityExtension$Fragment$VehicleFields$location$yard
    on Fragment$VehicleFields$location$yard {
  CopyWith$Fragment$VehicleFields$location$yard<
    Fragment$VehicleFields$location$yard
  >
  get copyWith => CopyWith$Fragment$VehicleFields$location$yard(this, (i) => i);
}

abstract class CopyWith$Fragment$VehicleFields$location$yard<TRes> {
  factory CopyWith$Fragment$VehicleFields$location$yard(
    Fragment$VehicleFields$location$yard instance,
    TRes Function(Fragment$VehicleFields$location$yard) then,
  ) = _CopyWithImpl$Fragment$VehicleFields$location$yard;

  factory CopyWith$Fragment$VehicleFields$location$yard.stub(TRes res) =
      _CopyWithStubImpl$Fragment$VehicleFields$location$yard;

  TRes call({String? yardCode, String? $__typename});
}

class _CopyWithImpl$Fragment$VehicleFields$location$yard<TRes>
    implements CopyWith$Fragment$VehicleFields$location$yard<TRes> {
  _CopyWithImpl$Fragment$VehicleFields$location$yard(
    this._instance,
    this._then,
  );

  final Fragment$VehicleFields$location$yard _instance;

  final TRes Function(Fragment$VehicleFields$location$yard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$VehicleFields$location$yard(
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$VehicleFields$location$yard<TRes>
    implements CopyWith$Fragment$VehicleFields$location$yard<TRes> {
  _CopyWithStubImpl$Fragment$VehicleFields$location$yard(this._res);

  TRes _res;

  call({String? yardCode, String? $__typename}) => _res;
}

class Fragment$VehicleFields$weight {
  Fragment$VehicleFields$weight({
    required this.uom,
    required this.value,
    required this.id,
    required this.mtValue,
    this.$__typename = 'UomValue',
  });

  factory Fragment$VehicleFields$weight.fromJson(Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$mtValue = json['mtValue'];
    final l$$__typename = json['__typename'];
    return Fragment$VehicleFields$weight(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      mtValue: (l$mtValue as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final int id;

  final double mtValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
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
    final l$id = id;
    final l$mtValue = mtValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$id, l$mtValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$VehicleFields$weight ||
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

extension UtilityExtension$Fragment$VehicleFields$weight
    on Fragment$VehicleFields$weight {
  CopyWith$Fragment$VehicleFields$weight<Fragment$VehicleFields$weight>
  get copyWith => CopyWith$Fragment$VehicleFields$weight(this, (i) => i);
}

abstract class CopyWith$Fragment$VehicleFields$weight<TRes> {
  factory CopyWith$Fragment$VehicleFields$weight(
    Fragment$VehicleFields$weight instance,
    TRes Function(Fragment$VehicleFields$weight) then,
  ) = _CopyWithImpl$Fragment$VehicleFields$weight;

  factory CopyWith$Fragment$VehicleFields$weight.stub(TRes res) =
      _CopyWithStubImpl$Fragment$VehicleFields$weight;

  TRes call({
    Enum$Uom? uom,
    double? value,
    int? id,
    double? mtValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$VehicleFields$weight<TRes>
    implements CopyWith$Fragment$VehicleFields$weight<TRes> {
  _CopyWithImpl$Fragment$VehicleFields$weight(this._instance, this._then);

  final Fragment$VehicleFields$weight _instance;

  final TRes Function(Fragment$VehicleFields$weight) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? mtValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$VehicleFields$weight(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
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

class _CopyWithStubImpl$Fragment$VehicleFields$weight<TRes>
    implements CopyWith$Fragment$VehicleFields$weight<TRes> {
  _CopyWithStubImpl$Fragment$VehicleFields$weight(this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    int? id,
    double? mtValue,
    String? $__typename,
  }) => _res;
}

class Fragment$VehicleFields$product {
  Fragment$VehicleFields$product({
    required this.code,
    this.$__typename = 'Product',
  });

  factory Fragment$VehicleFields$product.fromJson(Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Fragment$VehicleFields$product(
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
    if (other is! Fragment$VehicleFields$product ||
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

extension UtilityExtension$Fragment$VehicleFields$product
    on Fragment$VehicleFields$product {
  CopyWith$Fragment$VehicleFields$product<Fragment$VehicleFields$product>
  get copyWith => CopyWith$Fragment$VehicleFields$product(this, (i) => i);
}

abstract class CopyWith$Fragment$VehicleFields$product<TRes> {
  factory CopyWith$Fragment$VehicleFields$product(
    Fragment$VehicleFields$product instance,
    TRes Function(Fragment$VehicleFields$product) then,
  ) = _CopyWithImpl$Fragment$VehicleFields$product;

  factory CopyWith$Fragment$VehicleFields$product.stub(TRes res) =
      _CopyWithStubImpl$Fragment$VehicleFields$product;

  TRes call({String? code, String? $__typename});
}

class _CopyWithImpl$Fragment$VehicleFields$product<TRes>
    implements CopyWith$Fragment$VehicleFields$product<TRes> {
  _CopyWithImpl$Fragment$VehicleFields$product(this._instance, this._then);

  final Fragment$VehicleFields$product _instance;

  final TRes Function(Fragment$VehicleFields$product) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$VehicleFields$product(
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$VehicleFields$product<TRes>
    implements CopyWith$Fragment$VehicleFields$product<TRes> {
  _CopyWithStubImpl$Fragment$VehicleFields$product(this._res);

  TRes _res;

  call({String? code, String? $__typename}) => _res;
}

class Fragment$VehicleFields$vehicleParts {
  Fragment$VehicleFields$vehicleParts({
    required this.type,
    this.description,
    required this.partStatus,
    required this.weight,
    required this.active,
    this.$__typename = 'VehiclePart',
  });

  factory Fragment$VehicleFields$vehicleParts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$type = json['type'];
    final l$description = json['description'];
    final l$partStatus = json['partStatus'];
    final l$weight = json['weight'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Fragment$VehicleFields$vehicleParts(
      type: fromJson$Enum$PartType((l$type as String)),
      description: (l$description as String?),
      partStatus: fromJson$Enum$PartStatus((l$partStatus as String)),
      weight: Fragment$VehicleFields$vehicleParts$weight.fromJson(
        (l$weight as Map<String, dynamic>),
      ),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$PartType type;

  final String? description;

  final Enum$PartStatus partStatus;

  final Fragment$VehicleFields$vehicleParts$weight weight;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = toJson$Enum$PartType(l$type);
    final l$description = description;
    _resultData['description'] = l$description;
    final l$partStatus = partStatus;
    _resultData['partStatus'] = toJson$Enum$PartStatus(l$partStatus);
    final l$weight = weight;
    _resultData['weight'] = l$weight.toJson();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$description = description;
    final l$partStatus = partStatus;
    final l$weight = weight;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$description,
      l$partStatus,
      l$weight,
      l$active,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$VehicleFields$vehicleParts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$partStatus = partStatus;
    final lOther$partStatus = other.partStatus;
    if (l$partStatus != lOther$partStatus) {
      return false;
    }
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
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

extension UtilityExtension$Fragment$VehicleFields$vehicleParts
    on Fragment$VehicleFields$vehicleParts {
  CopyWith$Fragment$VehicleFields$vehicleParts<
    Fragment$VehicleFields$vehicleParts
  >
  get copyWith => CopyWith$Fragment$VehicleFields$vehicleParts(this, (i) => i);
}

abstract class CopyWith$Fragment$VehicleFields$vehicleParts<TRes> {
  factory CopyWith$Fragment$VehicleFields$vehicleParts(
    Fragment$VehicleFields$vehicleParts instance,
    TRes Function(Fragment$VehicleFields$vehicleParts) then,
  ) = _CopyWithImpl$Fragment$VehicleFields$vehicleParts;

  factory CopyWith$Fragment$VehicleFields$vehicleParts.stub(TRes res) =
      _CopyWithStubImpl$Fragment$VehicleFields$vehicleParts;

  TRes call({
    Enum$PartType? type,
    String? description,
    Enum$PartStatus? partStatus,
    Fragment$VehicleFields$vehicleParts$weight? weight,
    bool? active,
    String? $__typename,
  });
  CopyWith$Fragment$VehicleFields$vehicleParts$weight<TRes> get weight;
}

class _CopyWithImpl$Fragment$VehicleFields$vehicleParts<TRes>
    implements CopyWith$Fragment$VehicleFields$vehicleParts<TRes> {
  _CopyWithImpl$Fragment$VehicleFields$vehicleParts(this._instance, this._then);

  final Fragment$VehicleFields$vehicleParts _instance;

  final TRes Function(Fragment$VehicleFields$vehicleParts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? description = _undefined,
    Object? partStatus = _undefined,
    Object? weight = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$VehicleFields$vehicleParts(
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$PartType),
      description: description == _undefined
          ? _instance.description
          : (description as String?),
      partStatus: partStatus == _undefined || partStatus == null
          ? _instance.partStatus
          : (partStatus as Enum$PartStatus),
      weight: weight == _undefined || weight == null
          ? _instance.weight
          : (weight as Fragment$VehicleFields$vehicleParts$weight),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$VehicleFields$vehicleParts$weight<TRes> get weight {
    final local$weight = _instance.weight;
    return CopyWith$Fragment$VehicleFields$vehicleParts$weight(
      local$weight,
      (e) => call(weight: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$VehicleFields$vehicleParts<TRes>
    implements CopyWith$Fragment$VehicleFields$vehicleParts<TRes> {
  _CopyWithStubImpl$Fragment$VehicleFields$vehicleParts(this._res);

  TRes _res;

  call({
    Enum$PartType? type,
    String? description,
    Enum$PartStatus? partStatus,
    Fragment$VehicleFields$vehicleParts$weight? weight,
    bool? active,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$VehicleFields$vehicleParts$weight<TRes> get weight =>
      CopyWith$Fragment$VehicleFields$vehicleParts$weight.stub(_res);
}

class Fragment$VehicleFields$vehicleParts$weight {
  Fragment$VehicleFields$vehicleParts$weight({
    required this.uom,
    required this.value,
    required this.id,
    required this.mtValue,
    this.$__typename = 'UomValue',
  });

  factory Fragment$VehicleFields$vehicleParts$weight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$mtValue = json['mtValue'];
    final l$$__typename = json['__typename'];
    return Fragment$VehicleFields$vehicleParts$weight(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      mtValue: (l$mtValue as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final int id;

  final double mtValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
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
    final l$id = id;
    final l$mtValue = mtValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$id, l$mtValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$VehicleFields$vehicleParts$weight ||
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

extension UtilityExtension$Fragment$VehicleFields$vehicleParts$weight
    on Fragment$VehicleFields$vehicleParts$weight {
  CopyWith$Fragment$VehicleFields$vehicleParts$weight<
    Fragment$VehicleFields$vehicleParts$weight
  >
  get copyWith =>
      CopyWith$Fragment$VehicleFields$vehicleParts$weight(this, (i) => i);
}

abstract class CopyWith$Fragment$VehicleFields$vehicleParts$weight<TRes> {
  factory CopyWith$Fragment$VehicleFields$vehicleParts$weight(
    Fragment$VehicleFields$vehicleParts$weight instance,
    TRes Function(Fragment$VehicleFields$vehicleParts$weight) then,
  ) = _CopyWithImpl$Fragment$VehicleFields$vehicleParts$weight;

  factory CopyWith$Fragment$VehicleFields$vehicleParts$weight.stub(TRes res) =
      _CopyWithStubImpl$Fragment$VehicleFields$vehicleParts$weight;

  TRes call({
    Enum$Uom? uom,
    double? value,
    int? id,
    double? mtValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$VehicleFields$vehicleParts$weight<TRes>
    implements CopyWith$Fragment$VehicleFields$vehicleParts$weight<TRes> {
  _CopyWithImpl$Fragment$VehicleFields$vehicleParts$weight(
    this._instance,
    this._then,
  );

  final Fragment$VehicleFields$vehicleParts$weight _instance;

  final TRes Function(Fragment$VehicleFields$vehicleParts$weight) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? mtValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$VehicleFields$vehicleParts$weight(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
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

class _CopyWithStubImpl$Fragment$VehicleFields$vehicleParts$weight<TRes>
    implements CopyWith$Fragment$VehicleFields$vehicleParts$weight<TRes> {
  _CopyWithStubImpl$Fragment$VehicleFields$vehicleParts$weight(this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    int? id,
    double? mtValue,
    String? $__typename,
  }) => _res;
}
