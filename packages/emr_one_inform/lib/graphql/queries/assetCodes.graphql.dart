import 'package:gql/ast.dart';

class Variables$Query$AssetCodes {
  factory Variables$Query$AssetCodes({required String code}) =>
      Variables$Query$AssetCodes._({
        r'code': code,
      });

  Variables$Query$AssetCodes._(this._$data);

  factory Variables$Query$AssetCodes.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    return Variables$Query$AssetCodes._(result$data);
  }

  Map<String, dynamic> _$data;

  String get code => (_$data['code'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$code = code;
    result$data['code'] = l$code;
    return result$data;
  }

  CopyWith$Variables$Query$AssetCodes<Variables$Query$AssetCodes>
      get copyWith => CopyWith$Variables$Query$AssetCodes(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$AssetCodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    return Object.hashAll([l$code]);
  }
}

abstract class CopyWith$Variables$Query$AssetCodes<TRes> {
  factory CopyWith$Variables$Query$AssetCodes(
    Variables$Query$AssetCodes instance,
    TRes Function(Variables$Query$AssetCodes) then,
  ) = _CopyWithImpl$Variables$Query$AssetCodes;

  factory CopyWith$Variables$Query$AssetCodes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$AssetCodes;

  TRes call({String? code});
}

class _CopyWithImpl$Variables$Query$AssetCodes<TRes>
    implements CopyWith$Variables$Query$AssetCodes<TRes> {
  _CopyWithImpl$Variables$Query$AssetCodes(
    this._instance,
    this._then,
  );

  final Variables$Query$AssetCodes _instance;

  final TRes Function(Variables$Query$AssetCodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined}) => _then(Variables$Query$AssetCodes._({
        ..._instance._$data,
        if (code != _undefined && code != null) 'code': (code as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$AssetCodes<TRes>
    implements CopyWith$Variables$Query$AssetCodes<TRes> {
  _CopyWithStubImpl$Variables$Query$AssetCodes(this._res);

  TRes _res;

  call({String? code}) => _res;
}

class Query$AssetCodes {
  Query$AssetCodes({
    required this.territory,
    this.$__typename = 'FormsQuery',
  });

  factory Query$AssetCodes.fromJson(Map<String, dynamic> json) {
    final l$territory = json['territory'];
    final l$$__typename = json['__typename'];
    return Query$AssetCodes(
      territory: Query$AssetCodes$territory.fromJson(
          (l$territory as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AssetCodes$territory territory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$territory = territory;
    _resultData['territory'] = l$territory.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$territory = territory;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$territory,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AssetCodes) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$territory = territory;
    final lOther$territory = other.territory;
    if (l$territory != lOther$territory) {
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

extension UtilityExtension$Query$AssetCodes on Query$AssetCodes {
  CopyWith$Query$AssetCodes<Query$AssetCodes> get copyWith =>
      CopyWith$Query$AssetCodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AssetCodes<TRes> {
  factory CopyWith$Query$AssetCodes(
    Query$AssetCodes instance,
    TRes Function(Query$AssetCodes) then,
  ) = _CopyWithImpl$Query$AssetCodes;

  factory CopyWith$Query$AssetCodes.stub(TRes res) =
      _CopyWithStubImpl$Query$AssetCodes;

  TRes call({
    Query$AssetCodes$territory? territory,
    String? $__typename,
  });
  CopyWith$Query$AssetCodes$territory<TRes> get territory;
}

class _CopyWithImpl$Query$AssetCodes<TRes>
    implements CopyWith$Query$AssetCodes<TRes> {
  _CopyWithImpl$Query$AssetCodes(
    this._instance,
    this._then,
  );

  final Query$AssetCodes _instance;

  final TRes Function(Query$AssetCodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? territory = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AssetCodes(
        territory: territory == _undefined || territory == null
            ? _instance.territory
            : (territory as Query$AssetCodes$territory),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$AssetCodes$territory<TRes> get territory {
    final local$territory = _instance.territory;
    return CopyWith$Query$AssetCodes$territory(
        local$territory, (e) => call(territory: e));
  }
}

class _CopyWithStubImpl$Query$AssetCodes<TRes>
    implements CopyWith$Query$AssetCodes<TRes> {
  _CopyWithStubImpl$Query$AssetCodes(this._res);

  TRes _res;

  call({
    Query$AssetCodes$territory? territory,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$AssetCodes$territory<TRes> get territory =>
      CopyWith$Query$AssetCodes$territory.stub(_res);
}

const documentNodeQueryAssetCodes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AssetCodes'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'code')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'territory'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: VariableNode(name: NameNode(value: 'code')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'yards'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'yardCode'),
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
                    name: NameNode(value: 'depotNo'),
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

class Query$AssetCodes$territory {
  Query$AssetCodes$territory({
    this.yards,
    this.$__typename = 'Territory',
  });

  factory Query$AssetCodes$territory.fromJson(Map<String, dynamic> json) {
    final l$yards = json['yards'];
    final l$$__typename = json['__typename'];
    return Query$AssetCodes$territory(
      yards: (l$yards as List<dynamic>?)
          ?.map((e) => Query$AssetCodes$territory$yards.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$AssetCodes$territory$yards>? yards;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yards = yards;
    _resultData['yards'] = l$yards?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yards = yards;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yards == null ? null : Object.hashAll(l$yards.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AssetCodes$territory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yards = yards;
    final lOther$yards = other.yards;
    if (l$yards != null && lOther$yards != null) {
      if (l$yards.length != lOther$yards.length) {
        return false;
      }
      for (int i = 0; i < l$yards.length; i++) {
        final l$yards$entry = l$yards[i];
        final lOther$yards$entry = lOther$yards[i];
        if (l$yards$entry != lOther$yards$entry) {
          return false;
        }
      }
    } else if (l$yards != lOther$yards) {
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

extension UtilityExtension$Query$AssetCodes$territory
    on Query$AssetCodes$territory {
  CopyWith$Query$AssetCodes$territory<Query$AssetCodes$territory>
      get copyWith => CopyWith$Query$AssetCodes$territory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AssetCodes$territory<TRes> {
  factory CopyWith$Query$AssetCodes$territory(
    Query$AssetCodes$territory instance,
    TRes Function(Query$AssetCodes$territory) then,
  ) = _CopyWithImpl$Query$AssetCodes$territory;

  factory CopyWith$Query$AssetCodes$territory.stub(TRes res) =
      _CopyWithStubImpl$Query$AssetCodes$territory;

  TRes call({
    List<Query$AssetCodes$territory$yards>? yards,
    String? $__typename,
  });
  TRes yards(
      Iterable<Query$AssetCodes$territory$yards>? Function(
              Iterable<
                  CopyWith$Query$AssetCodes$territory$yards<
                      Query$AssetCodes$territory$yards>>?)
          _fn);
}

class _CopyWithImpl$Query$AssetCodes$territory<TRes>
    implements CopyWith$Query$AssetCodes$territory<TRes> {
  _CopyWithImpl$Query$AssetCodes$territory(
    this._instance,
    this._then,
  );

  final Query$AssetCodes$territory _instance;

  final TRes Function(Query$AssetCodes$territory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yards = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AssetCodes$territory(
        yards: yards == _undefined
            ? _instance.yards
            : (yards as List<Query$AssetCodes$territory$yards>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes yards(
          Iterable<Query$AssetCodes$territory$yards>? Function(
                  Iterable<
                      CopyWith$Query$AssetCodes$territory$yards<
                          Query$AssetCodes$territory$yards>>?)
              _fn) =>
      call(
          yards: _fn(_instance.yards
              ?.map((e) => CopyWith$Query$AssetCodes$territory$yards(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$AssetCodes$territory<TRes>
    implements CopyWith$Query$AssetCodes$territory<TRes> {
  _CopyWithStubImpl$Query$AssetCodes$territory(this._res);

  TRes _res;

  call({
    List<Query$AssetCodes$territory$yards>? yards,
    String? $__typename,
  }) =>
      _res;

  yards(_fn) => _res;
}

class Query$AssetCodes$territory$yards {
  Query$AssetCodes$territory$yards({
    this.yardCode,
    this.name,
    required this.assets,
    this.$__typename = 'Yard',
  });

  factory Query$AssetCodes$territory$yards.fromJson(Map<String, dynamic> json) {
    final l$yardCode = json['yardCode'];
    final l$name = json['name'];
    final l$assets = json['assets'];
    final l$$__typename = json['__typename'];
    return Query$AssetCodes$territory$yards(
      yardCode: (l$yardCode as String?),
      name: (l$name as String?),
      assets: (l$assets as List<dynamic>)
          .map((e) => Query$AssetCodes$territory$yards$assets.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? yardCode;

  final String? name;

  final List<Query$AssetCodes$territory$yards$assets> assets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$assets = assets;
    _resultData['assets'] = l$assets.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$name = name;
    final l$assets = assets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yardCode,
      l$name,
      Object.hashAll(l$assets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AssetCodes$territory$yards) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$AssetCodes$territory$yards
    on Query$AssetCodes$territory$yards {
  CopyWith$Query$AssetCodes$territory$yards<Query$AssetCodes$territory$yards>
      get copyWith => CopyWith$Query$AssetCodes$territory$yards(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AssetCodes$territory$yards<TRes> {
  factory CopyWith$Query$AssetCodes$territory$yards(
    Query$AssetCodes$territory$yards instance,
    TRes Function(Query$AssetCodes$territory$yards) then,
  ) = _CopyWithImpl$Query$AssetCodes$territory$yards;

  factory CopyWith$Query$AssetCodes$territory$yards.stub(TRes res) =
      _CopyWithStubImpl$Query$AssetCodes$territory$yards;

  TRes call({
    String? yardCode,
    String? name,
    List<Query$AssetCodes$territory$yards$assets>? assets,
    String? $__typename,
  });
  TRes assets(
      Iterable<Query$AssetCodes$territory$yards$assets> Function(
              Iterable<
                  CopyWith$Query$AssetCodes$territory$yards$assets<
                      Query$AssetCodes$territory$yards$assets>>)
          _fn);
}

class _CopyWithImpl$Query$AssetCodes$territory$yards<TRes>
    implements CopyWith$Query$AssetCodes$territory$yards<TRes> {
  _CopyWithImpl$Query$AssetCodes$territory$yards(
    this._instance,
    this._then,
  );

  final Query$AssetCodes$territory$yards _instance;

  final TRes Function(Query$AssetCodes$territory$yards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? name = _undefined,
    Object? assets = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AssetCodes$territory$yards(
        yardCode:
            yardCode == _undefined ? _instance.yardCode : (yardCode as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        assets: assets == _undefined || assets == null
            ? _instance.assets
            : (assets as List<Query$AssetCodes$territory$yards$assets>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes assets(
          Iterable<Query$AssetCodes$territory$yards$assets> Function(
                  Iterable<
                      CopyWith$Query$AssetCodes$territory$yards$assets<
                          Query$AssetCodes$territory$yards$assets>>)
              _fn) =>
      call(
          assets: _fn(_instance.assets
              .map((e) => CopyWith$Query$AssetCodes$territory$yards$assets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$AssetCodes$territory$yards<TRes>
    implements CopyWith$Query$AssetCodes$territory$yards<TRes> {
  _CopyWithStubImpl$Query$AssetCodes$territory$yards(this._res);

  TRes _res;

  call({
    String? yardCode,
    String? name,
    List<Query$AssetCodes$territory$yards$assets>? assets,
    String? $__typename,
  }) =>
      _res;

  assets(_fn) => _res;
}

class Query$AssetCodes$territory$yards$assets {
  Query$AssetCodes$territory$yards$assets({
    required this.assetCode,
    required this.depotNo,
    this.name,
    required this.yardCode,
    this.$__typename = 'Asset',
  });

  factory Query$AssetCodes$territory$yards$assets.fromJson(
      Map<String, dynamic> json) {
    final l$assetCode = json['assetCode'];
    final l$depotNo = json['depotNo'];
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$$__typename = json['__typename'];
    return Query$AssetCodes$territory$yards$assets(
      assetCode: (l$assetCode as String),
      depotNo: (l$depotNo as String),
      name: (l$name as String?),
      yardCode: (l$yardCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String assetCode;

  final String depotNo;

  final String? name;

  final String yardCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetCode = assetCode;
    _resultData['assetCode'] = l$assetCode;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assetCode = assetCode;
    final l$depotNo = depotNo;
    final l$name = name;
    final l$yardCode = yardCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assetCode,
      l$depotNo,
      l$name,
      l$yardCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AssetCodes$territory$yards$assets) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AssetCodes$territory$yards$assets
    on Query$AssetCodes$territory$yards$assets {
  CopyWith$Query$AssetCodes$territory$yards$assets<
          Query$AssetCodes$territory$yards$assets>
      get copyWith => CopyWith$Query$AssetCodes$territory$yards$assets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AssetCodes$territory$yards$assets<TRes> {
  factory CopyWith$Query$AssetCodes$territory$yards$assets(
    Query$AssetCodes$territory$yards$assets instance,
    TRes Function(Query$AssetCodes$territory$yards$assets) then,
  ) = _CopyWithImpl$Query$AssetCodes$territory$yards$assets;

  factory CopyWith$Query$AssetCodes$territory$yards$assets.stub(TRes res) =
      _CopyWithStubImpl$Query$AssetCodes$territory$yards$assets;

  TRes call({
    String? assetCode,
    String? depotNo,
    String? name,
    String? yardCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AssetCodes$territory$yards$assets<TRes>
    implements CopyWith$Query$AssetCodes$territory$yards$assets<TRes> {
  _CopyWithImpl$Query$AssetCodes$territory$yards$assets(
    this._instance,
    this._then,
  );

  final Query$AssetCodes$territory$yards$assets _instance;

  final TRes Function(Query$AssetCodes$territory$yards$assets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetCode = _undefined,
    Object? depotNo = _undefined,
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AssetCodes$territory$yards$assets(
        assetCode: assetCode == _undefined || assetCode == null
            ? _instance.assetCode
            : (assetCode as String),
        depotNo: depotNo == _undefined || depotNo == null
            ? _instance.depotNo
            : (depotNo as String),
        name: name == _undefined ? _instance.name : (name as String?),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$AssetCodes$territory$yards$assets<TRes>
    implements CopyWith$Query$AssetCodes$territory$yards$assets<TRes> {
  _CopyWithStubImpl$Query$AssetCodes$territory$yards$assets(this._res);

  TRes _res;

  call({
    String? assetCode,
    String? depotNo,
    String? name,
    String? yardCode,
    String? $__typename,
  }) =>
      _res;
}
