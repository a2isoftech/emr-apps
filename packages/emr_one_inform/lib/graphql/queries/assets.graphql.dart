import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$Assets {
  factory Variables$Query$Assets(
          {required Input$AssetQueryFilterInput filter}) =>
      Variables$Query$Assets._({
        r'filter': filter,
      });

  Variables$Query$Assets._(this._$data);

  factory Variables$Query$Assets.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$filter = data['filter'];
    result$data['filter'] = Input$AssetQueryFilterInput.fromJson(
        (l$filter as Map<String, dynamic>));
    return Variables$Query$Assets._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AssetQueryFilterInput get filter =>
      (_$data['filter'] as Input$AssetQueryFilterInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$filter = filter;
    result$data['filter'] = l$filter.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$Assets<Variables$Query$Assets> get copyWith =>
      CopyWith$Variables$Query$Assets(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Assets) ||
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

abstract class CopyWith$Variables$Query$Assets<TRes> {
  factory CopyWith$Variables$Query$Assets(
    Variables$Query$Assets instance,
    TRes Function(Variables$Query$Assets) then,
  ) = _CopyWithImpl$Variables$Query$Assets;

  factory CopyWith$Variables$Query$Assets.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Assets;

  TRes call({Input$AssetQueryFilterInput? filter});
}

class _CopyWithImpl$Variables$Query$Assets<TRes>
    implements CopyWith$Variables$Query$Assets<TRes> {
  _CopyWithImpl$Variables$Query$Assets(
    this._instance,
    this._then,
  );

  final Variables$Query$Assets _instance;

  final TRes Function(Variables$Query$Assets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) => _then(Variables$Query$Assets._({
        ..._instance._$data,
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$AssetQueryFilterInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$Assets<TRes>
    implements CopyWith$Variables$Query$Assets<TRes> {
  _CopyWithStubImpl$Variables$Query$Assets(this._res);

  TRes _res;

  call({Input$AssetQueryFilterInput? filter}) => _res;
}

class Query$Assets {
  Query$Assets({
    required this.assets,
    this.$__typename = 'FormsQuery',
  });

  factory Query$Assets.fromJson(Map<String, dynamic> json) {
    final l$assets = json['assets'];
    final l$$__typename = json['__typename'];
    return Query$Assets(
      assets: (l$assets as List<dynamic>)
          .map((e) => Query$Assets$assets.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Assets$assets> assets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assets = assets;
    _resultData['assets'] = l$assets.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assets = assets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$assets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Assets) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Assets on Query$Assets {
  CopyWith$Query$Assets<Query$Assets> get copyWith => CopyWith$Query$Assets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Assets<TRes> {
  factory CopyWith$Query$Assets(
    Query$Assets instance,
    TRes Function(Query$Assets) then,
  ) = _CopyWithImpl$Query$Assets;

  factory CopyWith$Query$Assets.stub(TRes res) = _CopyWithStubImpl$Query$Assets;

  TRes call({
    List<Query$Assets$assets>? assets,
    String? $__typename,
  });
  TRes assets(
      Iterable<Query$Assets$assets> Function(
              Iterable<CopyWith$Query$Assets$assets<Query$Assets$assets>>)
          _fn);
}

class _CopyWithImpl$Query$Assets<TRes> implements CopyWith$Query$Assets<TRes> {
  _CopyWithImpl$Query$Assets(
    this._instance,
    this._then,
  );

  final Query$Assets _instance;

  final TRes Function(Query$Assets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assets = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Assets(
        assets: assets == _undefined || assets == null
            ? _instance.assets
            : (assets as List<Query$Assets$assets>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes assets(
          Iterable<Query$Assets$assets> Function(
                  Iterable<CopyWith$Query$Assets$assets<Query$Assets$assets>>)
              _fn) =>
      call(
          assets: _fn(_instance.assets.map((e) => CopyWith$Query$Assets$assets(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$Assets<TRes>
    implements CopyWith$Query$Assets<TRes> {
  _CopyWithStubImpl$Query$Assets(this._res);

  TRes _res;

  call({
    List<Query$Assets$assets>? assets,
    String? $__typename,
  }) =>
      _res;

  assets(_fn) => _res;
}

const documentNodeQueryAssets = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Assets'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'AssetQueryFilterInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'assets'),
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
            name: NameNode(value: 'status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'maintenance'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'assetType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'faultSymptoms'),
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

class Query$Assets$assets {
  Query$Assets$assets({
    required this.assetCode,
    this.name,
    required this.yardCode,
    required this.depotNo,
    this.status,
    required this.maintenance,
    this.$__typename = 'Asset',
  });

  factory Query$Assets$assets.fromJson(Map<String, dynamic> json) {
    final l$assetCode = json['assetCode'];
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$depotNo = json['depotNo'];
    final l$status = json['status'];
    final l$maintenance = json['maintenance'];
    final l$$__typename = json['__typename'];
    return Query$Assets$assets(
      assetCode: (l$assetCode as String),
      name: (l$name as String?),
      yardCode: (l$yardCode as String),
      depotNo: (l$depotNo as String),
      status: (l$status as String?),
      maintenance: Query$Assets$assets$maintenance.fromJson(
          (l$maintenance as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String assetCode;

  final String? name;

  final String yardCode;

  final String depotNo;

  final String? status;

  final Query$Assets$assets$maintenance maintenance;

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
    final l$status = status;
    _resultData['status'] = l$status;
    final l$maintenance = maintenance;
    _resultData['maintenance'] = l$maintenance.toJson();
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
    final l$status = status;
    final l$maintenance = maintenance;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assetCode,
      l$name,
      l$yardCode,
      l$depotNo,
      l$status,
      l$maintenance,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Assets$assets) || runtimeType != other.runtimeType) {
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
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$maintenance = maintenance;
    final lOther$maintenance = other.maintenance;
    if (l$maintenance != lOther$maintenance) {
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

extension UtilityExtension$Query$Assets$assets on Query$Assets$assets {
  CopyWith$Query$Assets$assets<Query$Assets$assets> get copyWith =>
      CopyWith$Query$Assets$assets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Assets$assets<TRes> {
  factory CopyWith$Query$Assets$assets(
    Query$Assets$assets instance,
    TRes Function(Query$Assets$assets) then,
  ) = _CopyWithImpl$Query$Assets$assets;

  factory CopyWith$Query$Assets$assets.stub(TRes res) =
      _CopyWithStubImpl$Query$Assets$assets;

  TRes call({
    String? assetCode,
    String? name,
    String? yardCode,
    String? depotNo,
    String? status,
    Query$Assets$assets$maintenance? maintenance,
    String? $__typename,
  });
  CopyWith$Query$Assets$assets$maintenance<TRes> get maintenance;
}

class _CopyWithImpl$Query$Assets$assets<TRes>
    implements CopyWith$Query$Assets$assets<TRes> {
  _CopyWithImpl$Query$Assets$assets(
    this._instance,
    this._then,
  );

  final Query$Assets$assets _instance;

  final TRes Function(Query$Assets$assets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetCode = _undefined,
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? depotNo = _undefined,
    Object? status = _undefined,
    Object? maintenance = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Assets$assets(
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
        status: status == _undefined ? _instance.status : (status as String?),
        maintenance: maintenance == _undefined || maintenance == null
            ? _instance.maintenance
            : (maintenance as Query$Assets$assets$maintenance),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Assets$assets$maintenance<TRes> get maintenance {
    final local$maintenance = _instance.maintenance;
    return CopyWith$Query$Assets$assets$maintenance(
        local$maintenance, (e) => call(maintenance: e));
  }
}

class _CopyWithStubImpl$Query$Assets$assets<TRes>
    implements CopyWith$Query$Assets$assets<TRes> {
  _CopyWithStubImpl$Query$Assets$assets(this._res);

  TRes _res;

  call({
    String? assetCode,
    String? name,
    String? yardCode,
    String? depotNo,
    String? status,
    Query$Assets$assets$maintenance? maintenance,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Assets$assets$maintenance<TRes> get maintenance =>
      CopyWith$Query$Assets$assets$maintenance.stub(_res);
}

class Query$Assets$assets$maintenance {
  Query$Assets$assets$maintenance({
    this.assetType,
    this.faultSymptoms,
    this.$__typename = 'AssetMaintenanceDetails',
  });

  factory Query$Assets$assets$maintenance.fromJson(Map<String, dynamic> json) {
    final l$assetType = json['assetType'];
    final l$faultSymptoms = json['faultSymptoms'];
    final l$$__typename = json['__typename'];
    return Query$Assets$assets$maintenance(
      assetType: (l$assetType as String?),
      faultSymptoms: (l$faultSymptoms as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? assetType;

  final List<String>? faultSymptoms;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetType = assetType;
    _resultData['assetType'] = l$assetType;
    final l$faultSymptoms = faultSymptoms;
    _resultData['faultSymptoms'] = l$faultSymptoms?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assetType = assetType;
    final l$faultSymptoms = faultSymptoms;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assetType,
      l$faultSymptoms == null
          ? null
          : Object.hashAll(l$faultSymptoms.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Assets$assets$maintenance) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetType = assetType;
    final lOther$assetType = other.assetType;
    if (l$assetType != lOther$assetType) {
      return false;
    }
    final l$faultSymptoms = faultSymptoms;
    final lOther$faultSymptoms = other.faultSymptoms;
    if (l$faultSymptoms != null && lOther$faultSymptoms != null) {
      if (l$faultSymptoms.length != lOther$faultSymptoms.length) {
        return false;
      }
      for (int i = 0; i < l$faultSymptoms.length; i++) {
        final l$faultSymptoms$entry = l$faultSymptoms[i];
        final lOther$faultSymptoms$entry = lOther$faultSymptoms[i];
        if (l$faultSymptoms$entry != lOther$faultSymptoms$entry) {
          return false;
        }
      }
    } else if (l$faultSymptoms != lOther$faultSymptoms) {
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

extension UtilityExtension$Query$Assets$assets$maintenance
    on Query$Assets$assets$maintenance {
  CopyWith$Query$Assets$assets$maintenance<Query$Assets$assets$maintenance>
      get copyWith => CopyWith$Query$Assets$assets$maintenance(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Assets$assets$maintenance<TRes> {
  factory CopyWith$Query$Assets$assets$maintenance(
    Query$Assets$assets$maintenance instance,
    TRes Function(Query$Assets$assets$maintenance) then,
  ) = _CopyWithImpl$Query$Assets$assets$maintenance;

  factory CopyWith$Query$Assets$assets$maintenance.stub(TRes res) =
      _CopyWithStubImpl$Query$Assets$assets$maintenance;

  TRes call({
    String? assetType,
    List<String>? faultSymptoms,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Assets$assets$maintenance<TRes>
    implements CopyWith$Query$Assets$assets$maintenance<TRes> {
  _CopyWithImpl$Query$Assets$assets$maintenance(
    this._instance,
    this._then,
  );

  final Query$Assets$assets$maintenance _instance;

  final TRes Function(Query$Assets$assets$maintenance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetType = _undefined,
    Object? faultSymptoms = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Assets$assets$maintenance(
        assetType: assetType == _undefined
            ? _instance.assetType
            : (assetType as String?),
        faultSymptoms: faultSymptoms == _undefined
            ? _instance.faultSymptoms
            : (faultSymptoms as List<String>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Assets$assets$maintenance<TRes>
    implements CopyWith$Query$Assets$assets$maintenance<TRes> {
  _CopyWithStubImpl$Query$Assets$assets$maintenance(this._res);

  TRes _res;

  call({
    String? assetType,
    List<String>? faultSymptoms,
    String? $__typename,
  }) =>
      _res;
}
