import '../../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetVehiclePartInventoryCodes {
  factory Variables$Query$GetVehiclePartInventoryCodes({
    required String territoryCode,
  }) => Variables$Query$GetVehiclePartInventoryCodes._({
    r'territoryCode': territoryCode,
  });

  Variables$Query$GetVehiclePartInventoryCodes._(this._$data);

  factory Variables$Query$GetVehiclePartInventoryCodes.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$territoryCode = data['territoryCode'];
    result$data['territoryCode'] = (l$territoryCode as String);
    return Variables$Query$GetVehiclePartInventoryCodes._(result$data);
  }

  Map<String, dynamic> _$data;

  String get territoryCode => (_$data['territoryCode'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$territoryCode = territoryCode;
    result$data['territoryCode'] = l$territoryCode;
    return result$data;
  }

  CopyWith$Variables$Query$GetVehiclePartInventoryCodes<
    Variables$Query$GetVehiclePartInventoryCodes
  >
  get copyWith =>
      CopyWith$Variables$Query$GetVehiclePartInventoryCodes(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetVehiclePartInventoryCodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (l$territoryCode != lOther$territoryCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$territoryCode = territoryCode;
    return Object.hashAll([l$territoryCode]);
  }
}

abstract class CopyWith$Variables$Query$GetVehiclePartInventoryCodes<TRes> {
  factory CopyWith$Variables$Query$GetVehiclePartInventoryCodes(
    Variables$Query$GetVehiclePartInventoryCodes instance,
    TRes Function(Variables$Query$GetVehiclePartInventoryCodes) then,
  ) = _CopyWithImpl$Variables$Query$GetVehiclePartInventoryCodes;

  factory CopyWith$Variables$Query$GetVehiclePartInventoryCodes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetVehiclePartInventoryCodes;

  TRes call({String? territoryCode});
}

class _CopyWithImpl$Variables$Query$GetVehiclePartInventoryCodes<TRes>
    implements CopyWith$Variables$Query$GetVehiclePartInventoryCodes<TRes> {
  _CopyWithImpl$Variables$Query$GetVehiclePartInventoryCodes(
    this._instance,
    this._then,
  );

  final Variables$Query$GetVehiclePartInventoryCodes _instance;

  final TRes Function(Variables$Query$GetVehiclePartInventoryCodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? territoryCode = _undefined}) => _then(
    Variables$Query$GetVehiclePartInventoryCodes._({
      ..._instance._$data,
      if (territoryCode != _undefined && territoryCode != null)
        'territoryCode': (territoryCode as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetVehiclePartInventoryCodes<TRes>
    implements CopyWith$Variables$Query$GetVehiclePartInventoryCodes<TRes> {
  _CopyWithStubImpl$Variables$Query$GetVehiclePartInventoryCodes(this._res);

  TRes _res;

  call({String? territoryCode}) => _res;
}

class Query$GetVehiclePartInventoryCodes {
  Query$GetVehiclePartInventoryCodes({
    required this.vehiclePartInventoryCodes,
    this.$__typename = 'Query',
  });

  factory Query$GetVehiclePartInventoryCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$vehiclePartInventoryCodes = json['vehiclePartInventoryCodes'];
    final l$$__typename = json['__typename'];
    return Query$GetVehiclePartInventoryCodes(
      vehiclePartInventoryCodes:
          Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes.fromJson(
            (l$vehiclePartInventoryCodes as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes
  vehiclePartInventoryCodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vehiclePartInventoryCodes = vehiclePartInventoryCodes;
    _resultData['vehiclePartInventoryCodes'] = l$vehiclePartInventoryCodes
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vehiclePartInventoryCodes = vehiclePartInventoryCodes;
    final l$$__typename = $__typename;
    return Object.hashAll([l$vehiclePartInventoryCodes, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetVehiclePartInventoryCodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$vehiclePartInventoryCodes = vehiclePartInventoryCodes;
    final lOther$vehiclePartInventoryCodes = other.vehiclePartInventoryCodes;
    if (l$vehiclePartInventoryCodes != lOther$vehiclePartInventoryCodes) {
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

extension UtilityExtension$Query$GetVehiclePartInventoryCodes
    on Query$GetVehiclePartInventoryCodes {
  CopyWith$Query$GetVehiclePartInventoryCodes<
    Query$GetVehiclePartInventoryCodes
  >
  get copyWith => CopyWith$Query$GetVehiclePartInventoryCodes(this, (i) => i);
}

abstract class CopyWith$Query$GetVehiclePartInventoryCodes<TRes> {
  factory CopyWith$Query$GetVehiclePartInventoryCodes(
    Query$GetVehiclePartInventoryCodes instance,
    TRes Function(Query$GetVehiclePartInventoryCodes) then,
  ) = _CopyWithImpl$Query$GetVehiclePartInventoryCodes;

  factory CopyWith$Query$GetVehiclePartInventoryCodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetVehiclePartInventoryCodes;

  TRes call({
    Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes?
    vehiclePartInventoryCodes,
    String? $__typename,
  });
  CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes<TRes>
  get vehiclePartInventoryCodes;
}

class _CopyWithImpl$Query$GetVehiclePartInventoryCodes<TRes>
    implements CopyWith$Query$GetVehiclePartInventoryCodes<TRes> {
  _CopyWithImpl$Query$GetVehiclePartInventoryCodes(this._instance, this._then);

  final Query$GetVehiclePartInventoryCodes _instance;

  final TRes Function(Query$GetVehiclePartInventoryCodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vehiclePartInventoryCodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehiclePartInventoryCodes(
      vehiclePartInventoryCodes:
          vehiclePartInventoryCodes == _undefined ||
              vehiclePartInventoryCodes == null
          ? _instance.vehiclePartInventoryCodes
          : (vehiclePartInventoryCodes
                as Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes<TRes>
  get vehiclePartInventoryCodes {
    final local$vehiclePartInventoryCodes = _instance.vehiclePartInventoryCodes;
    return CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes(
      local$vehiclePartInventoryCodes,
      (e) => call(vehiclePartInventoryCodes: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetVehiclePartInventoryCodes<TRes>
    implements CopyWith$Query$GetVehiclePartInventoryCodes<TRes> {
  _CopyWithStubImpl$Query$GetVehiclePartInventoryCodes(this._res);

  TRes _res;

  call({
    Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes?
    vehiclePartInventoryCodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes<TRes>
  get vehiclePartInventoryCodes =>
      CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes.stub(
        _res,
      );
}

const documentNodeQueryGetVehiclePartInventoryCodes = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetVehiclePartInventoryCodes'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'territoryCode')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'vehiclePartInventoryCodes'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'territoryCode'),
                value: VariableNode(name: NameNode(value: 'territoryCode')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'data'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'key'),
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
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'inventoryLocationCode'),
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
  ],
);

class Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes {
  Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes({
    required this.data,
    this.$__typename =
        'ReferenceDataOfDictionaryOfPartTypeAndVehiclePartInventoryReferenceData',
  });

  factory Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes(
      data: (l$data as List<dynamic>)
          .map(
            (e) =>
                Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data>
  data;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$data = data;
    _resultData['data'] = l$data.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$data.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data.length != lOther$data.length) {
      return false;
    }
    for (int i = 0; i < l$data.length; i++) {
      final l$data$entry = l$data[i];
      final lOther$data$entry = lOther$data[i];
      if (l$data$entry != lOther$data$entry) {
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

extension UtilityExtension$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes
    on Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes {
  CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes<
    Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes
  >
  get copyWith =>
      CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes<
  TRes
> {
  factory CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes(
    Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes instance,
    TRes Function(Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes)
    then,
  ) = _CopyWithImpl$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes;

  factory CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes;

  TRes call({
    List<Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data>?
    data,
    String? $__typename,
  });
  TRes data(
    Iterable<Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data>
    Function(
      Iterable<
        CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data<
          Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes<
  TRes
>
    implements
        CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes<
          TRes
        > {
  _CopyWithImpl$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes(
    this._instance,
    this._then,
  );

  final Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes _instance;

  final TRes Function(
    Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes(
      data: data == _undefined || data == null
          ? _instance.data
          : (data
                as List<
                  Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes data(
    Iterable<Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data>
    Function(
      Iterable<
        CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data<
          Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data
        >
      >,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) =>
            CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes<
  TRes
>
    implements
        CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes(
    this._res,
  );

  TRes _res;

  call({
    List<Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data>?
    data,
    String? $__typename,
  }) => _res;

  data(_fn) => _res;
}

class Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data {
  Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data({
    required this.key,
    required this.value,
    this.$__typename =
        'KeyValuePairOfPartTypeAndVehiclePartInventoryReferenceData',
  });

  factory Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data(
      key: fromJson$Enum$PartType((l$key as String)),
      value:
          Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$PartType key;

  final Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = toJson$Enum$PartType(l$key);
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
            is! Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data ||
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

extension UtilityExtension$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data
    on Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data {
  CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data<
    Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data
  >
  get copyWith =>
      CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data<
  TRes
> {
  factory CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data(
    Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data instance,
    TRes Function(
      Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data;

  factory CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data;

  TRes call({
    Enum$PartType? key,
    Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data<
  TRes
>
    implements
        CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data<
          TRes
        > {
  _CopyWithImpl$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data(
    this._instance,
    this._then,
  );

  final Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data
  _instance;

  final TRes Function(
    Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data(
      key: key == _undefined || key == null
          ? _instance.key
          : (key as Enum$PartType),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data<
  TRes
>
    implements
        CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data(
    this._res,
  );

  TRes _res;

  call({
    Enum$PartType? key,
    Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value<
    TRes
  >
  get value =>
      CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value.stub(
        _res,
      );
}

class Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value {
  Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value({
    required this.inventoryLocationCode,
    this.$__typename = 'VehiclePartInventoryReferenceData',
  });

  factory Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$inventoryLocationCode = json['inventoryLocationCode'];
    final l$$__typename = json['__typename'];
    return Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value(
      inventoryLocationCode: (l$inventoryLocationCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String inventoryLocationCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$inventoryLocationCode = inventoryLocationCode;
    _resultData['inventoryLocationCode'] = l$inventoryLocationCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$inventoryLocationCode = inventoryLocationCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$inventoryLocationCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$inventoryLocationCode = inventoryLocationCode;
    final lOther$inventoryLocationCode = other.inventoryLocationCode;
    if (l$inventoryLocationCode != lOther$inventoryLocationCode) {
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

extension UtilityExtension$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value
    on Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value {
  CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value<
    Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value
  >
  get copyWith =>
      CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value<
  TRes
> {
  factory CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value(
    Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value
    instance,
    TRes Function(
      Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value,
    )
    then,
  ) = _CopyWithImpl$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value;

  factory CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value;

  TRes call({String? inventoryLocationCode, String? $__typename});
}

class _CopyWithImpl$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value<
  TRes
>
    implements
        CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value<
          TRes
        > {
  _CopyWithImpl$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value(
    this._instance,
    this._then,
  );

  final Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value
  _instance;

  final TRes Function(
    Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? inventoryLocationCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value(
      inventoryLocationCode:
          inventoryLocationCode == _undefined || inventoryLocationCode == null
          ? _instance.inventoryLocationCode
          : (inventoryLocationCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value<
  TRes
>
    implements
        CopyWith$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value<
          TRes
        > {
  _CopyWithStubImpl$Query$GetVehiclePartInventoryCodes$vehiclePartInventoryCodes$data$value(
    this._res,
  );

  TRes _res;

  call({String? inventoryLocationCode, String? $__typename}) => _res;
}
