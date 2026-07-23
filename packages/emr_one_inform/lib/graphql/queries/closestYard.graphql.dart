import 'package:gql/ast.dart';

class Variables$Query$ClosestYard {
  factory Variables$Query$ClosestYard({
    required double latitude,
    required double longitude,
  }) =>
      Variables$Query$ClosestYard._({
        r'latitude': latitude,
        r'longitude': longitude,
      });

  Variables$Query$ClosestYard._(this._$data);

  factory Variables$Query$ClosestYard.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$latitude = data['latitude'];
    result$data['latitude'] = (l$latitude as num).toDouble();
    final l$longitude = data['longitude'];
    result$data['longitude'] = (l$longitude as num).toDouble();
    return Variables$Query$ClosestYard._(result$data);
  }

  Map<String, dynamic> _$data;

  double get latitude => (_$data['latitude'] as double);

  double get longitude => (_$data['longitude'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$latitude = latitude;
    result$data['latitude'] = l$latitude;
    final l$longitude = longitude;
    result$data['longitude'] = l$longitude;
    return result$data;
  }

  CopyWith$Variables$Query$ClosestYard<Variables$Query$ClosestYard>
      get copyWith => CopyWith$Variables$Query$ClosestYard(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ClosestYard) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$latitude = latitude;
    final l$longitude = longitude;
    return Object.hashAll([
      l$latitude,
      l$longitude,
    ]);
  }
}

abstract class CopyWith$Variables$Query$ClosestYard<TRes> {
  factory CopyWith$Variables$Query$ClosestYard(
    Variables$Query$ClosestYard instance,
    TRes Function(Variables$Query$ClosestYard) then,
  ) = _CopyWithImpl$Variables$Query$ClosestYard;

  factory CopyWith$Variables$Query$ClosestYard.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ClosestYard;

  TRes call({
    double? latitude,
    double? longitude,
  });
}

class _CopyWithImpl$Variables$Query$ClosestYard<TRes>
    implements CopyWith$Variables$Query$ClosestYard<TRes> {
  _CopyWithImpl$Variables$Query$ClosestYard(
    this._instance,
    this._then,
  );

  final Variables$Query$ClosestYard _instance;

  final TRes Function(Variables$Query$ClosestYard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
  }) =>
      _then(Variables$Query$ClosestYard._({
        ..._instance._$data,
        if (latitude != _undefined && latitude != null)
          'latitude': (latitude as double),
        if (longitude != _undefined && longitude != null)
          'longitude': (longitude as double),
      }));
}

class _CopyWithStubImpl$Variables$Query$ClosestYard<TRes>
    implements CopyWith$Variables$Query$ClosestYard<TRes> {
  _CopyWithStubImpl$Variables$Query$ClosestYard(this._res);

  TRes _res;

  call({
    double? latitude,
    double? longitude,
  }) =>
      _res;
}

class Query$ClosestYard {
  Query$ClosestYard({
    this.closestYard,
    this.$__typename = 'FormsQuery',
  });

  factory Query$ClosestYard.fromJson(Map<String, dynamic> json) {
    final l$closestYard = json['closestYard'];
    final l$$__typename = json['__typename'];
    return Query$ClosestYard(
      closestYard: l$closestYard == null
          ? null
          : Query$ClosestYard$closestYard.fromJson(
              (l$closestYard as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ClosestYard$closestYard? closestYard;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$closestYard = closestYard;
    _resultData['closestYard'] = l$closestYard?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$closestYard = closestYard;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$closestYard,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ClosestYard) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$closestYard = closestYard;
    final lOther$closestYard = other.closestYard;
    if (l$closestYard != lOther$closestYard) {
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

extension UtilityExtension$Query$ClosestYard on Query$ClosestYard {
  CopyWith$Query$ClosestYard<Query$ClosestYard> get copyWith =>
      CopyWith$Query$ClosestYard(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ClosestYard<TRes> {
  factory CopyWith$Query$ClosestYard(
    Query$ClosestYard instance,
    TRes Function(Query$ClosestYard) then,
  ) = _CopyWithImpl$Query$ClosestYard;

  factory CopyWith$Query$ClosestYard.stub(TRes res) =
      _CopyWithStubImpl$Query$ClosestYard;

  TRes call({
    Query$ClosestYard$closestYard? closestYard,
    String? $__typename,
  });
  CopyWith$Query$ClosestYard$closestYard<TRes> get closestYard;
}

class _CopyWithImpl$Query$ClosestYard<TRes>
    implements CopyWith$Query$ClosestYard<TRes> {
  _CopyWithImpl$Query$ClosestYard(
    this._instance,
    this._then,
  );

  final Query$ClosestYard _instance;

  final TRes Function(Query$ClosestYard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? closestYard = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ClosestYard(
        closestYard: closestYard == _undefined
            ? _instance.closestYard
            : (closestYard as Query$ClosestYard$closestYard?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ClosestYard$closestYard<TRes> get closestYard {
    final local$closestYard = _instance.closestYard;
    return local$closestYard == null
        ? CopyWith$Query$ClosestYard$closestYard.stub(_then(_instance))
        : CopyWith$Query$ClosestYard$closestYard(
            local$closestYard, (e) => call(closestYard: e));
  }
}

class _CopyWithStubImpl$Query$ClosestYard<TRes>
    implements CopyWith$Query$ClosestYard<TRes> {
  _CopyWithStubImpl$Query$ClosestYard(this._res);

  TRes _res;

  call({
    Query$ClosestYard$closestYard? closestYard,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ClosestYard$closestYard<TRes> get closestYard =>
      CopyWith$Query$ClosestYard$closestYard.stub(_res);
}

const documentNodeQueryClosestYard = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ClosestYard'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'latitude')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'longitude')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'closestYard'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'latitude'),
            value: VariableNode(name: NameNode(value: 'latitude')),
          ),
          ArgumentNode(
            name: NameNode(value: 'longitude'),
            value: VariableNode(name: NameNode(value: 'longitude')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: 'assets'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'depotNo'),
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

class Query$ClosestYard$closestYard {
  Query$ClosestYard$closestYard({
    this.name,
    this.yardCode,
    required this.assets,
    this.$__typename = 'Yard',
  });

  factory Query$ClosestYard$closestYard.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$assets = json['assets'];
    final l$$__typename = json['__typename'];
    return Query$ClosestYard$closestYard(
      name: (l$name as String?),
      yardCode: (l$yardCode as String?),
      assets: (l$assets as List<dynamic>)
          .map((e) => Query$ClosestYard$closestYard$assets.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? yardCode;

  final List<Query$ClosestYard$closestYard$assets> assets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$assets = assets;
    _resultData['assets'] = l$assets.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$yardCode = yardCode;
    final l$assets = assets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$yardCode,
      Object.hashAll(l$assets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ClosestYard$closestYard) ||
        runtimeType != other.runtimeType) {
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
    final l$assets = assets;
    final lOther$assets = other.assets;
    if (l$assets.length != lOther$assets.length) {
      return false;
    }
    for (int i = 0; i < l$assets.length; i++) {
      final l$assets$entry = l$assets[i];
      final lOther$assets$entry = lOther$assets[i];
      if (l$assets$entry != lOther$assets$entry) {
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

extension UtilityExtension$Query$ClosestYard$closestYard
    on Query$ClosestYard$closestYard {
  CopyWith$Query$ClosestYard$closestYard<Query$ClosestYard$closestYard>
      get copyWith => CopyWith$Query$ClosestYard$closestYard(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ClosestYard$closestYard<TRes> {
  factory CopyWith$Query$ClosestYard$closestYard(
    Query$ClosestYard$closestYard instance,
    TRes Function(Query$ClosestYard$closestYard) then,
  ) = _CopyWithImpl$Query$ClosestYard$closestYard;

  factory CopyWith$Query$ClosestYard$closestYard.stub(TRes res) =
      _CopyWithStubImpl$Query$ClosestYard$closestYard;

  TRes call({
    String? name,
    String? yardCode,
    List<Query$ClosestYard$closestYard$assets>? assets,
    String? $__typename,
  });
  TRes assets(
      Iterable<Query$ClosestYard$closestYard$assets> Function(
              Iterable<
                  CopyWith$Query$ClosestYard$closestYard$assets<
                      Query$ClosestYard$closestYard$assets>>)
          _fn);
}

class _CopyWithImpl$Query$ClosestYard$closestYard<TRes>
    implements CopyWith$Query$ClosestYard$closestYard<TRes> {
  _CopyWithImpl$Query$ClosestYard$closestYard(
    this._instance,
    this._then,
  );

  final Query$ClosestYard$closestYard _instance;

  final TRes Function(Query$ClosestYard$closestYard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? assets = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ClosestYard$closestYard(
        name: name == _undefined ? _instance.name : (name as String?),
        yardCode:
            yardCode == _undefined ? _instance.yardCode : (yardCode as String?),
        assets: assets == _undefined || assets == null
            ? _instance.assets
            : (assets as List<Query$ClosestYard$closestYard$assets>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes assets(
          Iterable<Query$ClosestYard$closestYard$assets> Function(
                  Iterable<
                      CopyWith$Query$ClosestYard$closestYard$assets<
                          Query$ClosestYard$closestYard$assets>>)
              _fn) =>
      call(
          assets: _fn(_instance.assets
              .map((e) => CopyWith$Query$ClosestYard$closestYard$assets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$ClosestYard$closestYard<TRes>
    implements CopyWith$Query$ClosestYard$closestYard<TRes> {
  _CopyWithStubImpl$Query$ClosestYard$closestYard(this._res);

  TRes _res;

  call({
    String? name,
    String? yardCode,
    List<Query$ClosestYard$closestYard$assets>? assets,
    String? $__typename,
  }) =>
      _res;

  assets(_fn) => _res;
}

class Query$ClosestYard$closestYard$assets {
  Query$ClosestYard$closestYard$assets({
    required this.assetCode,
    this.name,
    required this.yardCode,
    required this.depotNo,
    this.$__typename = 'Asset',
  });

  factory Query$ClosestYard$closestYard$assets.fromJson(
      Map<String, dynamic> json) {
    final l$assetCode = json['assetCode'];
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$depotNo = json['depotNo'];
    final l$$__typename = json['__typename'];
    return Query$ClosestYard$closestYard$assets(
      assetCode: (l$assetCode as String),
      name: (l$name as String?),
      yardCode: (l$yardCode as String),
      depotNo: (l$depotNo as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String assetCode;

  final String? name;

  final String yardCode;

  final String depotNo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetCode = assetCode;
    _resultData['assetCode'] = l$assetCode;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assetCode = assetCode;
    final l$name = name;
    final l$yardCode = yardCode;
    final l$depotNo = depotNo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assetCode,
      l$name,
      l$yardCode,
      l$depotNo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ClosestYard$closestYard$assets) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (l$assetCode != lOther$assetCode) {
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
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
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

extension UtilityExtension$Query$ClosestYard$closestYard$assets
    on Query$ClosestYard$closestYard$assets {
  CopyWith$Query$ClosestYard$closestYard$assets<
          Query$ClosestYard$closestYard$assets>
      get copyWith => CopyWith$Query$ClosestYard$closestYard$assets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ClosestYard$closestYard$assets<TRes> {
  factory CopyWith$Query$ClosestYard$closestYard$assets(
    Query$ClosestYard$closestYard$assets instance,
    TRes Function(Query$ClosestYard$closestYard$assets) then,
  ) = _CopyWithImpl$Query$ClosestYard$closestYard$assets;

  factory CopyWith$Query$ClosestYard$closestYard$assets.stub(TRes res) =
      _CopyWithStubImpl$Query$ClosestYard$closestYard$assets;

  TRes call({
    String? assetCode,
    String? name,
    String? yardCode,
    String? depotNo,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ClosestYard$closestYard$assets<TRes>
    implements CopyWith$Query$ClosestYard$closestYard$assets<TRes> {
  _CopyWithImpl$Query$ClosestYard$closestYard$assets(
    this._instance,
    this._then,
  );

  final Query$ClosestYard$closestYard$assets _instance;

  final TRes Function(Query$ClosestYard$closestYard$assets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetCode = _undefined,
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? depotNo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ClosestYard$closestYard$assets(
        assetCode: assetCode == _undefined || assetCode == null
            ? _instance.assetCode
            : (assetCode as String),
        name: name == _undefined ? _instance.name : (name as String?),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        depotNo: depotNo == _undefined || depotNo == null
            ? _instance.depotNo
            : (depotNo as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ClosestYard$closestYard$assets<TRes>
    implements CopyWith$Query$ClosestYard$closestYard$assets<TRes> {
  _CopyWithStubImpl$Query$ClosestYard$closestYard$assets(this._res);

  TRes _res;

  call({
    String? assetCode,
    String? name,
    String? yardCode,
    String? depotNo,
    String? $__typename,
  }) =>
      _res;
}
