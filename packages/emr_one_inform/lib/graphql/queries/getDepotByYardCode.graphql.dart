import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetDepotByYardCode {
  factory Variables$Query$GetDepotByYardCode(
          {required Input$DepotQueryFilterInput filter}) =>
      Variables$Query$GetDepotByYardCode._({
        r'filter': filter,
      });

  Variables$Query$GetDepotByYardCode._(this._$data);

  factory Variables$Query$GetDepotByYardCode.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$filter = data['filter'];
    result$data['filter'] = Input$DepotQueryFilterInput.fromJson(
        (l$filter as Map<String, dynamic>));
    return Variables$Query$GetDepotByYardCode._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DepotQueryFilterInput get filter =>
      (_$data['filter'] as Input$DepotQueryFilterInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$filter = filter;
    result$data['filter'] = l$filter.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GetDepotByYardCode<
          Variables$Query$GetDepotByYardCode>
      get copyWith => CopyWith$Variables$Query$GetDepotByYardCode(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetDepotByYardCode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    return Object.hashAll([l$filter]);
  }
}

abstract class CopyWith$Variables$Query$GetDepotByYardCode<TRes> {
  factory CopyWith$Variables$Query$GetDepotByYardCode(
    Variables$Query$GetDepotByYardCode instance,
    TRes Function(Variables$Query$GetDepotByYardCode) then,
  ) = _CopyWithImpl$Variables$Query$GetDepotByYardCode;

  factory CopyWith$Variables$Query$GetDepotByYardCode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetDepotByYardCode;

  TRes call({Input$DepotQueryFilterInput? filter});
}

class _CopyWithImpl$Variables$Query$GetDepotByYardCode<TRes>
    implements CopyWith$Variables$Query$GetDepotByYardCode<TRes> {
  _CopyWithImpl$Variables$Query$GetDepotByYardCode(
    this._instance,
    this._then,
  );

  final Variables$Query$GetDepotByYardCode _instance;

  final TRes Function(Variables$Query$GetDepotByYardCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) =>
      _then(Variables$Query$GetDepotByYardCode._({
        ..._instance._$data,
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$DepotQueryFilterInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetDepotByYardCode<TRes>
    implements CopyWith$Variables$Query$GetDepotByYardCode<TRes> {
  _CopyWithStubImpl$Variables$Query$GetDepotByYardCode(this._res);

  TRes _res;

  call({Input$DepotQueryFilterInput? filter}) => _res;
}

class Query$GetDepotByYardCode {
  Query$GetDepotByYardCode({
    required this.depots,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetDepotByYardCode.fromJson(Map<String, dynamic> json) {
    final l$depots = json['depots'];
    final l$$__typename = json['__typename'];
    return Query$GetDepotByYardCode(
      depots: (l$depots as List<dynamic>)
          .map((e) => Query$GetDepotByYardCode$depots.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetDepotByYardCode$depots> depots;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$depots = depots;
    _resultData['depots'] = l$depots.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$depots = depots;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$depots.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetDepotByYardCode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$depots = depots;
    final lOther$depots = other.depots;
    if (l$depots.length != lOther$depots.length) {
      return false;
    }
    for (int i = 0; i < l$depots.length; i++) {
      final l$depots$entry = l$depots[i];
      final lOther$depots$entry = lOther$depots[i];
      if (l$depots$entry != lOther$depots$entry) {
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

extension UtilityExtension$Query$GetDepotByYardCode
    on Query$GetDepotByYardCode {
  CopyWith$Query$GetDepotByYardCode<Query$GetDepotByYardCode> get copyWith =>
      CopyWith$Query$GetDepotByYardCode(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDepotByYardCode<TRes> {
  factory CopyWith$Query$GetDepotByYardCode(
    Query$GetDepotByYardCode instance,
    TRes Function(Query$GetDepotByYardCode) then,
  ) = _CopyWithImpl$Query$GetDepotByYardCode;

  factory CopyWith$Query$GetDepotByYardCode.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDepotByYardCode;

  TRes call({
    List<Query$GetDepotByYardCode$depots>? depots,
    String? $__typename,
  });
  TRes depots(
      Iterable<Query$GetDepotByYardCode$depots> Function(
              Iterable<
                  CopyWith$Query$GetDepotByYardCode$depots<
                      Query$GetDepotByYardCode$depots>>)
          _fn);
}

class _CopyWithImpl$Query$GetDepotByYardCode<TRes>
    implements CopyWith$Query$GetDepotByYardCode<TRes> {
  _CopyWithImpl$Query$GetDepotByYardCode(
    this._instance,
    this._then,
  );

  final Query$GetDepotByYardCode _instance;

  final TRes Function(Query$GetDepotByYardCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depots = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDepotByYardCode(
        depots: depots == _undefined || depots == null
            ? _instance.depots
            : (depots as List<Query$GetDepotByYardCode$depots>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes depots(
          Iterable<Query$GetDepotByYardCode$depots> Function(
                  Iterable<
                      CopyWith$Query$GetDepotByYardCode$depots<
                          Query$GetDepotByYardCode$depots>>)
              _fn) =>
      call(
          depots: _fn(_instance.depots
              .map((e) => CopyWith$Query$GetDepotByYardCode$depots(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetDepotByYardCode<TRes>
    implements CopyWith$Query$GetDepotByYardCode<TRes> {
  _CopyWithStubImpl$Query$GetDepotByYardCode(this._res);

  TRes _res;

  call({
    List<Query$GetDepotByYardCode$depots>? depots,
    String? $__typename,
  }) =>
      _res;

  depots(_fn) => _res;
}

const documentNodeQueryGetDepotByYardCode = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetDepotByYardCode'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'DepotQueryFilterInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'depots'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: 'assetType'),
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

class Query$GetDepotByYardCode$depots {
  Query$GetDepotByYardCode$depots({
    this.depotNo,
    this.name,
    this.yardCode,
    required this.assets,
    this.$__typename = 'Depot',
  });

  factory Query$GetDepotByYardCode$depots.fromJson(Map<String, dynamic> json) {
    final l$depotNo = json['depotNo'];
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$assets = json['assets'];
    final l$$__typename = json['__typename'];
    return Query$GetDepotByYardCode$depots(
      depotNo: (l$depotNo as String?),
      name: (l$name as String?),
      yardCode: (l$yardCode as String?),
      assets: (l$assets as List<dynamic>)
          .map((e) => Query$GetDepotByYardCode$depots$assets.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? depotNo;

  final String? name;

  final String? yardCode;

  final List<Query$GetDepotByYardCode$depots$assets> assets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
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
    final l$depotNo = depotNo;
    final l$name = name;
    final l$yardCode = yardCode;
    final l$assets = assets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$depotNo,
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
    if (!(other is Query$GetDepotByYardCode$depots) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetDepotByYardCode$depots
    on Query$GetDepotByYardCode$depots {
  CopyWith$Query$GetDepotByYardCode$depots<Query$GetDepotByYardCode$depots>
      get copyWith => CopyWith$Query$GetDepotByYardCode$depots(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetDepotByYardCode$depots<TRes> {
  factory CopyWith$Query$GetDepotByYardCode$depots(
    Query$GetDepotByYardCode$depots instance,
    TRes Function(Query$GetDepotByYardCode$depots) then,
  ) = _CopyWithImpl$Query$GetDepotByYardCode$depots;

  factory CopyWith$Query$GetDepotByYardCode$depots.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDepotByYardCode$depots;

  TRes call({
    String? depotNo,
    String? name,
    String? yardCode,
    List<Query$GetDepotByYardCode$depots$assets>? assets,
    String? $__typename,
  });
  TRes assets(
      Iterable<Query$GetDepotByYardCode$depots$assets> Function(
              Iterable<
                  CopyWith$Query$GetDepotByYardCode$depots$assets<
                      Query$GetDepotByYardCode$depots$assets>>)
          _fn);
}

class _CopyWithImpl$Query$GetDepotByYardCode$depots<TRes>
    implements CopyWith$Query$GetDepotByYardCode$depots<TRes> {
  _CopyWithImpl$Query$GetDepotByYardCode$depots(
    this._instance,
    this._then,
  );

  final Query$GetDepotByYardCode$depots _instance;

  final TRes Function(Query$GetDepotByYardCode$depots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depotNo = _undefined,
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? assets = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDepotByYardCode$depots(
        depotNo:
            depotNo == _undefined ? _instance.depotNo : (depotNo as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        yardCode:
            yardCode == _undefined ? _instance.yardCode : (yardCode as String?),
        assets: assets == _undefined || assets == null
            ? _instance.assets
            : (assets as List<Query$GetDepotByYardCode$depots$assets>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes assets(
          Iterable<Query$GetDepotByYardCode$depots$assets> Function(
                  Iterable<
                      CopyWith$Query$GetDepotByYardCode$depots$assets<
                          Query$GetDepotByYardCode$depots$assets>>)
              _fn) =>
      call(
          assets: _fn(_instance.assets
              .map((e) => CopyWith$Query$GetDepotByYardCode$depots$assets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetDepotByYardCode$depots<TRes>
    implements CopyWith$Query$GetDepotByYardCode$depots<TRes> {
  _CopyWithStubImpl$Query$GetDepotByYardCode$depots(this._res);

  TRes _res;

  call({
    String? depotNo,
    String? name,
    String? yardCode,
    List<Query$GetDepotByYardCode$depots$assets>? assets,
    String? $__typename,
  }) =>
      _res;

  assets(_fn) => _res;
}

class Query$GetDepotByYardCode$depots$assets {
  Query$GetDepotByYardCode$depots$assets({
    required this.assetCode,
    this.assetType,
    this.name,
    required this.yardCode,
    required this.depotNo,
    this.$__typename = 'Asset',
  });

  factory Query$GetDepotByYardCode$depots$assets.fromJson(
      Map<String, dynamic> json) {
    final l$assetCode = json['assetCode'];
    final l$assetType = json['assetType'];
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$depotNo = json['depotNo'];
    final l$$__typename = json['__typename'];
    return Query$GetDepotByYardCode$depots$assets(
      assetCode: (l$assetCode as String),
      assetType: (l$assetType as String?),
      name: (l$name as String?),
      yardCode: (l$yardCode as String),
      depotNo: (l$depotNo as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String assetCode;

  final String? assetType;

  final String? name;

  final String yardCode;

  final String depotNo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetCode = assetCode;
    _resultData['assetCode'] = l$assetCode;
    final l$assetType = assetType;
    _resultData['assetType'] = l$assetType;
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
    final l$assetType = assetType;
    final l$name = name;
    final l$yardCode = yardCode;
    final l$depotNo = depotNo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assetCode,
      l$assetType,
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
    if (!(other is Query$GetDepotByYardCode$depots$assets) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    final l$assetType = assetType;
    final lOther$assetType = other.assetType;
    if (l$assetType != lOther$assetType) {
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

extension UtilityExtension$Query$GetDepotByYardCode$depots$assets
    on Query$GetDepotByYardCode$depots$assets {
  CopyWith$Query$GetDepotByYardCode$depots$assets<
          Query$GetDepotByYardCode$depots$assets>
      get copyWith => CopyWith$Query$GetDepotByYardCode$depots$assets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetDepotByYardCode$depots$assets<TRes> {
  factory CopyWith$Query$GetDepotByYardCode$depots$assets(
    Query$GetDepotByYardCode$depots$assets instance,
    TRes Function(Query$GetDepotByYardCode$depots$assets) then,
  ) = _CopyWithImpl$Query$GetDepotByYardCode$depots$assets;

  factory CopyWith$Query$GetDepotByYardCode$depots$assets.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDepotByYardCode$depots$assets;

  TRes call({
    String? assetCode,
    String? assetType,
    String? name,
    String? yardCode,
    String? depotNo,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetDepotByYardCode$depots$assets<TRes>
    implements CopyWith$Query$GetDepotByYardCode$depots$assets<TRes> {
  _CopyWithImpl$Query$GetDepotByYardCode$depots$assets(
    this._instance,
    this._then,
  );

  final Query$GetDepotByYardCode$depots$assets _instance;

  final TRes Function(Query$GetDepotByYardCode$depots$assets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetCode = _undefined,
    Object? assetType = _undefined,
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? depotNo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDepotByYardCode$depots$assets(
        assetCode: assetCode == _undefined || assetCode == null
            ? _instance.assetCode
            : (assetCode as String),
        assetType: assetType == _undefined
            ? _instance.assetType
            : (assetType as String?),
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

class _CopyWithStubImpl$Query$GetDepotByYardCode$depots$assets<TRes>
    implements CopyWith$Query$GetDepotByYardCode$depots$assets<TRes> {
  _CopyWithStubImpl$Query$GetDepotByYardCode$depots$assets(this._res);

  TRes _res;

  call({
    String? assetCode,
    String? assetType,
    String? name,
    String? yardCode,
    String? depotNo,
    String? $__typename,
  }) =>
      _res;
}
