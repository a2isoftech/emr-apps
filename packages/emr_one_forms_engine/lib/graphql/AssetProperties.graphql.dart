import 'package:gql/ast.dart';

class Variables$Query$getProperty {
  factory Variables$Query$getProperty({
    required String territoryCode,
    required String assetCode,
  }) =>
      Variables$Query$getProperty._({
        r'territoryCode': territoryCode,
        r'assetCode': assetCode,
      });

  Variables$Query$getProperty._(this._$data);

  factory Variables$Query$getProperty.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$territoryCode = data['territoryCode'];
    result$data['territoryCode'] = (l$territoryCode as String);
    final l$assetCode = data['assetCode'];
    result$data['assetCode'] = (l$assetCode as String);
    return Variables$Query$getProperty._(result$data);
  }

  Map<String, dynamic> _$data;

  String get territoryCode => (_$data['territoryCode'] as String);

  String get assetCode => (_$data['assetCode'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$territoryCode = territoryCode;
    result$data['territoryCode'] = l$territoryCode;
    final l$assetCode = assetCode;
    result$data['assetCode'] = l$assetCode;
    return result$data;
  }

  CopyWith$Variables$Query$getProperty<Variables$Query$getProperty>
      get copyWith => CopyWith$Variables$Query$getProperty(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getProperty) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (l$territoryCode != lOther$territoryCode) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$territoryCode = territoryCode;
    final l$assetCode = assetCode;
    return Object.hashAll([
      l$territoryCode,
      l$assetCode,
    ]);
  }
}

abstract class CopyWith$Variables$Query$getProperty<TRes> {
  factory CopyWith$Variables$Query$getProperty(
    Variables$Query$getProperty instance,
    TRes Function(Variables$Query$getProperty) then,
  ) = _CopyWithImpl$Variables$Query$getProperty;

  factory CopyWith$Variables$Query$getProperty.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getProperty;

  TRes call({
    String? territoryCode,
    String? assetCode,
  });
}

class _CopyWithImpl$Variables$Query$getProperty<TRes>
    implements CopyWith$Variables$Query$getProperty<TRes> {
  _CopyWithImpl$Variables$Query$getProperty(
    this._instance,
    this._then,
  );

  final Variables$Query$getProperty _instance;

  final TRes Function(Variables$Query$getProperty) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? territoryCode = _undefined,
    Object? assetCode = _undefined,
  }) =>
      _then(Variables$Query$getProperty._({
        ..._instance._$data,
        if (territoryCode != _undefined && territoryCode != null)
          'territoryCode': (territoryCode as String),
        if (assetCode != _undefined && assetCode != null)
          'assetCode': (assetCode as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$getProperty<TRes>
    implements CopyWith$Variables$Query$getProperty<TRes> {
  _CopyWithStubImpl$Variables$Query$getProperty(this._res);

  TRes _res;

  call({
    String? territoryCode,
    String? assetCode,
  }) =>
      _res;
}

class Query$getProperty {
  Query$getProperty({
    required this.assetProperty,
    this.$__typename = 'FormsQuery',
  });

  factory Query$getProperty.fromJson(Map<String, dynamic> json) {
    final l$assetProperty = json['assetProperty'];
    final l$$__typename = json['__typename'];
    return Query$getProperty(
      assetProperty: (l$assetProperty as List<dynamic>)
          .map((e) => Query$getProperty$assetProperty.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getProperty$assetProperty> assetProperty;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetProperty = assetProperty;
    _resultData['assetProperty'] =
        l$assetProperty.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assetProperty = assetProperty;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$assetProperty.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getProperty) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetProperty = assetProperty;
    final lOther$assetProperty = other.assetProperty;
    if (l$assetProperty.length != lOther$assetProperty.length) {
      return false;
    }
    for (int i = 0; i < l$assetProperty.length; i++) {
      final l$assetProperty$entry = l$assetProperty[i];
      final lOther$assetProperty$entry = lOther$assetProperty[i];
      if (l$assetProperty$entry != lOther$assetProperty$entry) {
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

extension UtilityExtension$Query$getProperty on Query$getProperty {
  CopyWith$Query$getProperty<Query$getProperty> get copyWith =>
      CopyWith$Query$getProperty(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getProperty<TRes> {
  factory CopyWith$Query$getProperty(
    Query$getProperty instance,
    TRes Function(Query$getProperty) then,
  ) = _CopyWithImpl$Query$getProperty;

  factory CopyWith$Query$getProperty.stub(TRes res) =
      _CopyWithStubImpl$Query$getProperty;

  TRes call({
    List<Query$getProperty$assetProperty>? assetProperty,
    String? $__typename,
  });
  TRes assetProperty(
      Iterable<Query$getProperty$assetProperty> Function(
              Iterable<
                  CopyWith$Query$getProperty$assetProperty<
                      Query$getProperty$assetProperty>>)
          _fn);
}

class _CopyWithImpl$Query$getProperty<TRes>
    implements CopyWith$Query$getProperty<TRes> {
  _CopyWithImpl$Query$getProperty(
    this._instance,
    this._then,
  );

  final Query$getProperty _instance;

  final TRes Function(Query$getProperty) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetProperty = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getProperty(
        assetProperty: assetProperty == _undefined || assetProperty == null
            ? _instance.assetProperty
            : (assetProperty as List<Query$getProperty$assetProperty>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes assetProperty(
          Iterable<Query$getProperty$assetProperty> Function(
                  Iterable<
                      CopyWith$Query$getProperty$assetProperty<
                          Query$getProperty$assetProperty>>)
              _fn) =>
      call(
          assetProperty: _fn(_instance.assetProperty
              .map((e) => CopyWith$Query$getProperty$assetProperty(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$getProperty<TRes>
    implements CopyWith$Query$getProperty<TRes> {
  _CopyWithStubImpl$Query$getProperty(this._res);

  TRes _res;

  call({
    List<Query$getProperty$assetProperty>? assetProperty,
    String? $__typename,
  }) =>
      _res;

  assetProperty(_fn) => _res;
}

const documentNodeQuerygetProperty = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getProperty'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'territoryCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'assetCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'assetProperty'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'territoryCode'),
            value: VariableNode(name: NameNode(value: 'territoryCode')),
          ),
          ArgumentNode(
            name: NameNode(value: 'assetCode'),
            value: VariableNode(name: NameNode(value: 'assetCode')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'assetCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'propertyValue'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'propertyMinValue'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'propertyMaxValue'),
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
            name: NameNode(value: 'checkBothMinMax'),
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
            name: NameNode(value: 'propertyKey'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'propertyKeyWithTerritory'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$getProperty$assetProperty {
  Query$getProperty$assetProperty({
    this.assetCode,
    this.propertyValue,
    this.propertyMinValue,
    this.propertyMaxValue,
    required this.active,
    required this.checkBothMinMax,
    this.territoryCode,
    this.propertyKey,
    this.propertyKeyWithTerritory,
    this.$__typename = 'AssetProperty',
  });

  factory Query$getProperty$assetProperty.fromJson(Map<String, dynamic> json) {
    final l$assetCode = json['assetCode'];
    final l$propertyValue = json['propertyValue'];
    final l$propertyMinValue = json['propertyMinValue'];
    final l$propertyMaxValue = json['propertyMaxValue'];
    final l$active = json['active'];
    final l$checkBothMinMax = json['checkBothMinMax'];
    final l$territoryCode = json['territoryCode'];
    final l$propertyKey = json['propertyKey'];
    final l$propertyKeyWithTerritory = json['propertyKeyWithTerritory'];
    final l$$__typename = json['__typename'];
    return Query$getProperty$assetProperty(
      assetCode: (l$assetCode as String?),
      propertyValue: (l$propertyValue as num?)?.toDouble(),
      propertyMinValue: (l$propertyMinValue as num?)?.toDouble(),
      propertyMaxValue: (l$propertyMaxValue as num?)?.toDouble(),
      active: (l$active as bool),
      checkBothMinMax: (l$checkBothMinMax as bool),
      territoryCode: (l$territoryCode as String?),
      propertyKey: (l$propertyKey as String?),
      propertyKeyWithTerritory: (l$propertyKeyWithTerritory as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? assetCode;

  final double? propertyValue;

  final double? propertyMinValue;

  final double? propertyMaxValue;

  final bool active;

  final bool checkBothMinMax;

  final String? territoryCode;

  final String? propertyKey;

  final String? propertyKeyWithTerritory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetCode = assetCode;
    _resultData['assetCode'] = l$assetCode;
    final l$propertyValue = propertyValue;
    _resultData['propertyValue'] = l$propertyValue;
    final l$propertyMinValue = propertyMinValue;
    _resultData['propertyMinValue'] = l$propertyMinValue;
    final l$propertyMaxValue = propertyMaxValue;
    _resultData['propertyMaxValue'] = l$propertyMaxValue;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$checkBothMinMax = checkBothMinMax;
    _resultData['checkBothMinMax'] = l$checkBothMinMax;
    final l$territoryCode = territoryCode;
    _resultData['territoryCode'] = l$territoryCode;
    final l$propertyKey = propertyKey;
    _resultData['propertyKey'] = l$propertyKey;
    final l$propertyKeyWithTerritory = propertyKeyWithTerritory;
    _resultData['propertyKeyWithTerritory'] = l$propertyKeyWithTerritory;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assetCode = assetCode;
    final l$propertyValue = propertyValue;
    final l$propertyMinValue = propertyMinValue;
    final l$propertyMaxValue = propertyMaxValue;
    final l$active = active;
    final l$checkBothMinMax = checkBothMinMax;
    final l$territoryCode = territoryCode;
    final l$propertyKey = propertyKey;
    final l$propertyKeyWithTerritory = propertyKeyWithTerritory;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assetCode,
      l$propertyValue,
      l$propertyMinValue,
      l$propertyMaxValue,
      l$active,
      l$checkBothMinMax,
      l$territoryCode,
      l$propertyKey,
      l$propertyKeyWithTerritory,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getProperty$assetProperty) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    final l$propertyValue = propertyValue;
    final lOther$propertyValue = other.propertyValue;
    if (l$propertyValue != lOther$propertyValue) {
      return false;
    }
    final l$propertyMinValue = propertyMinValue;
    final lOther$propertyMinValue = other.propertyMinValue;
    if (l$propertyMinValue != lOther$propertyMinValue) {
      return false;
    }
    final l$propertyMaxValue = propertyMaxValue;
    final lOther$propertyMaxValue = other.propertyMaxValue;
    if (l$propertyMaxValue != lOther$propertyMaxValue) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$checkBothMinMax = checkBothMinMax;
    final lOther$checkBothMinMax = other.checkBothMinMax;
    if (l$checkBothMinMax != lOther$checkBothMinMax) {
      return false;
    }
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (l$territoryCode != lOther$territoryCode) {
      return false;
    }
    final l$propertyKey = propertyKey;
    final lOther$propertyKey = other.propertyKey;
    if (l$propertyKey != lOther$propertyKey) {
      return false;
    }
    final l$propertyKeyWithTerritory = propertyKeyWithTerritory;
    final lOther$propertyKeyWithTerritory = other.propertyKeyWithTerritory;
    if (l$propertyKeyWithTerritory != lOther$propertyKeyWithTerritory) {
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

extension UtilityExtension$Query$getProperty$assetProperty
    on Query$getProperty$assetProperty {
  CopyWith$Query$getProperty$assetProperty<Query$getProperty$assetProperty>
      get copyWith => CopyWith$Query$getProperty$assetProperty(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getProperty$assetProperty<TRes> {
  factory CopyWith$Query$getProperty$assetProperty(
    Query$getProperty$assetProperty instance,
    TRes Function(Query$getProperty$assetProperty) then,
  ) = _CopyWithImpl$Query$getProperty$assetProperty;

  factory CopyWith$Query$getProperty$assetProperty.stub(TRes res) =
      _CopyWithStubImpl$Query$getProperty$assetProperty;

  TRes call({
    String? assetCode,
    double? propertyValue,
    double? propertyMinValue,
    double? propertyMaxValue,
    bool? active,
    bool? checkBothMinMax,
    String? territoryCode,
    String? propertyKey,
    String? propertyKeyWithTerritory,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getProperty$assetProperty<TRes>
    implements CopyWith$Query$getProperty$assetProperty<TRes> {
  _CopyWithImpl$Query$getProperty$assetProperty(
    this._instance,
    this._then,
  );

  final Query$getProperty$assetProperty _instance;

  final TRes Function(Query$getProperty$assetProperty) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetCode = _undefined,
    Object? propertyValue = _undefined,
    Object? propertyMinValue = _undefined,
    Object? propertyMaxValue = _undefined,
    Object? active = _undefined,
    Object? checkBothMinMax = _undefined,
    Object? territoryCode = _undefined,
    Object? propertyKey = _undefined,
    Object? propertyKeyWithTerritory = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getProperty$assetProperty(
        assetCode: assetCode == _undefined
            ? _instance.assetCode
            : (assetCode as String?),
        propertyValue: propertyValue == _undefined
            ? _instance.propertyValue
            : (propertyValue as double?),
        propertyMinValue: propertyMinValue == _undefined
            ? _instance.propertyMinValue
            : (propertyMinValue as double?),
        propertyMaxValue: propertyMaxValue == _undefined
            ? _instance.propertyMaxValue
            : (propertyMaxValue as double?),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        checkBothMinMax:
            checkBothMinMax == _undefined || checkBothMinMax == null
                ? _instance.checkBothMinMax
                : (checkBothMinMax as bool),
        territoryCode: territoryCode == _undefined
            ? _instance.territoryCode
            : (territoryCode as String?),
        propertyKey: propertyKey == _undefined
            ? _instance.propertyKey
            : (propertyKey as String?),
        propertyKeyWithTerritory: propertyKeyWithTerritory == _undefined
            ? _instance.propertyKeyWithTerritory
            : (propertyKeyWithTerritory as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getProperty$assetProperty<TRes>
    implements CopyWith$Query$getProperty$assetProperty<TRes> {
  _CopyWithStubImpl$Query$getProperty$assetProperty(this._res);

  TRes _res;

  call({
    String? assetCode,
    double? propertyValue,
    double? propertyMinValue,
    double? propertyMaxValue,
    bool? active,
    bool? checkBothMinMax,
    String? territoryCode,
    String? propertyKey,
    String? propertyKeyWithTerritory,
    String? $__typename,
  }) =>
      _res;
}
