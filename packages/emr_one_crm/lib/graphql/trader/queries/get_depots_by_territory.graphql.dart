import 'package:gql/ast.dart';

class Variables$Query$DepotsByTerritory {
  factory Variables$Query$DepotsByTerritory({required String territoryCode}) =>
      Variables$Query$DepotsByTerritory._({
        r'territoryCode': territoryCode,
      });

  Variables$Query$DepotsByTerritory._(this._$data);

  factory Variables$Query$DepotsByTerritory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$territoryCode = data['territoryCode'];
    result$data['territoryCode'] = (l$territoryCode as String);
    return Variables$Query$DepotsByTerritory._(result$data);
  }

  Map<String, dynamic> _$data;

  String get territoryCode => (_$data['territoryCode'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$territoryCode = territoryCode;
    result$data['territoryCode'] = l$territoryCode;
    return result$data;
  }

  CopyWith$Variables$Query$DepotsByTerritory<Variables$Query$DepotsByTerritory>
      get copyWith => CopyWith$Variables$Query$DepotsByTerritory(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$DepotsByTerritory ||
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

abstract class CopyWith$Variables$Query$DepotsByTerritory<TRes> {
  factory CopyWith$Variables$Query$DepotsByTerritory(
    Variables$Query$DepotsByTerritory instance,
    TRes Function(Variables$Query$DepotsByTerritory) then,
  ) = _CopyWithImpl$Variables$Query$DepotsByTerritory;

  factory CopyWith$Variables$Query$DepotsByTerritory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$DepotsByTerritory;

  TRes call({String? territoryCode});
}

class _CopyWithImpl$Variables$Query$DepotsByTerritory<TRes>
    implements CopyWith$Variables$Query$DepotsByTerritory<TRes> {
  _CopyWithImpl$Variables$Query$DepotsByTerritory(
    this._instance,
    this._then,
  );

  final Variables$Query$DepotsByTerritory _instance;

  final TRes Function(Variables$Query$DepotsByTerritory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? territoryCode = _undefined}) =>
      _then(Variables$Query$DepotsByTerritory._({
        ..._instance._$data,
        if (territoryCode != _undefined && territoryCode != null)
          'territoryCode': (territoryCode as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$DepotsByTerritory<TRes>
    implements CopyWith$Variables$Query$DepotsByTerritory<TRes> {
  _CopyWithStubImpl$Variables$Query$DepotsByTerritory(this._res);

  TRes _res;

  call({String? territoryCode}) => _res;
}

class Query$DepotsByTerritory {
  Query$DepotsByTerritory({
    required this.depotsByTerritoryCode,
    this.$__typename = 'Query',
  });

  factory Query$DepotsByTerritory.fromJson(Map<String, dynamic> json) {
    final l$depotsByTerritoryCode = json['depotsByTerritoryCode'];
    final l$$__typename = json['__typename'];
    return Query$DepotsByTerritory(
      depotsByTerritoryCode: (l$depotsByTerritoryCode as List<dynamic>)
          .map((e) => Query$DepotsByTerritory$depotsByTerritoryCode.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$DepotsByTerritory$depotsByTerritoryCode>
      depotsByTerritoryCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$depotsByTerritoryCode = depotsByTerritoryCode;
    _resultData['depotsByTerritoryCode'] =
        l$depotsByTerritoryCode.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$depotsByTerritoryCode = depotsByTerritoryCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$depotsByTerritoryCode.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$DepotsByTerritory || runtimeType != other.runtimeType) {
      return false;
    }
    final l$depotsByTerritoryCode = depotsByTerritoryCode;
    final lOther$depotsByTerritoryCode = other.depotsByTerritoryCode;
    if (l$depotsByTerritoryCode.length != lOther$depotsByTerritoryCode.length) {
      return false;
    }
    for (int i = 0; i < l$depotsByTerritoryCode.length; i++) {
      final l$depotsByTerritoryCode$entry = l$depotsByTerritoryCode[i];
      final lOther$depotsByTerritoryCode$entry =
          lOther$depotsByTerritoryCode[i];
      if (l$depotsByTerritoryCode$entry != lOther$depotsByTerritoryCode$entry) {
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

extension UtilityExtension$Query$DepotsByTerritory on Query$DepotsByTerritory {
  CopyWith$Query$DepotsByTerritory<Query$DepotsByTerritory> get copyWith =>
      CopyWith$Query$DepotsByTerritory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepotsByTerritory<TRes> {
  factory CopyWith$Query$DepotsByTerritory(
    Query$DepotsByTerritory instance,
    TRes Function(Query$DepotsByTerritory) then,
  ) = _CopyWithImpl$Query$DepotsByTerritory;

  factory CopyWith$Query$DepotsByTerritory.stub(TRes res) =
      _CopyWithStubImpl$Query$DepotsByTerritory;

  TRes call({
    List<Query$DepotsByTerritory$depotsByTerritoryCode>? depotsByTerritoryCode,
    String? $__typename,
  });
  TRes depotsByTerritoryCode(
      Iterable<Query$DepotsByTerritory$depotsByTerritoryCode> Function(
              Iterable<
                  CopyWith$Query$DepotsByTerritory$depotsByTerritoryCode<
                      Query$DepotsByTerritory$depotsByTerritoryCode>>)
          _fn);
}

class _CopyWithImpl$Query$DepotsByTerritory<TRes>
    implements CopyWith$Query$DepotsByTerritory<TRes> {
  _CopyWithImpl$Query$DepotsByTerritory(
    this._instance,
    this._then,
  );

  final Query$DepotsByTerritory _instance;

  final TRes Function(Query$DepotsByTerritory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depotsByTerritoryCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DepotsByTerritory(
        depotsByTerritoryCode:
            depotsByTerritoryCode == _undefined || depotsByTerritoryCode == null
                ? _instance.depotsByTerritoryCode
                : (depotsByTerritoryCode
                    as List<Query$DepotsByTerritory$depotsByTerritoryCode>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes depotsByTerritoryCode(
          Iterable<Query$DepotsByTerritory$depotsByTerritoryCode> Function(
                  Iterable<
                      CopyWith$Query$DepotsByTerritory$depotsByTerritoryCode<
                          Query$DepotsByTerritory$depotsByTerritoryCode>>)
              _fn) =>
      call(
          depotsByTerritoryCode: _fn(_instance.depotsByTerritoryCode.map(
              (e) => CopyWith$Query$DepotsByTerritory$depotsByTerritoryCode(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$DepotsByTerritory<TRes>
    implements CopyWith$Query$DepotsByTerritory<TRes> {
  _CopyWithStubImpl$Query$DepotsByTerritory(this._res);

  TRes _res;

  call({
    List<Query$DepotsByTerritory$depotsByTerritoryCode>? depotsByTerritoryCode,
    String? $__typename,
  }) =>
      _res;

  depotsByTerritoryCode(_fn) => _res;
}

const documentNodeQueryDepotsByTerritory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'DepotsByTerritory'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'territoryCode')),
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
        name: NameNode(value: 'depotsByTerritoryCode'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'territoryCode'),
            value: VariableNode(name: NameNode(value: 'territoryCode')),
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
            name: NameNode(value: 'cmpCode'),
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

class Query$DepotsByTerritory$depotsByTerritoryCode {
  Query$DepotsByTerritory$depotsByTerritoryCode({
    required this.depotNo,
    required this.cmpCode,
    required this.active,
    required this.yardCode,
    required this.name,
    this.$__typename = 'Depot',
  });

  factory Query$DepotsByTerritory$depotsByTerritoryCode.fromJson(
      Map<String, dynamic> json) {
    final l$depotNo = json['depotNo'];
    final l$cmpCode = json['cmpCode'];
    final l$active = json['active'];
    final l$yardCode = json['yardCode'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$DepotsByTerritory$depotsByTerritoryCode(
      depotNo: (l$depotNo as String),
      cmpCode: (l$cmpCode as String),
      active: (l$active as bool),
      yardCode: (l$yardCode as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String depotNo;

  final String cmpCode;

  final bool active;

  final String yardCode;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$cmpCode = cmpCode;
    _resultData['cmpCode'] = l$cmpCode;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$depotNo = depotNo;
    final l$cmpCode = cmpCode;
    final l$active = active;
    final l$yardCode = yardCode;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$depotNo,
      l$cmpCode,
      l$active,
      l$yardCode,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$DepotsByTerritory$depotsByTerritoryCode ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$cmpCode = cmpCode;
    final lOther$cmpCode = other.cmpCode;
    if (l$cmpCode != lOther$cmpCode) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$DepotsByTerritory$depotsByTerritoryCode
    on Query$DepotsByTerritory$depotsByTerritoryCode {
  CopyWith$Query$DepotsByTerritory$depotsByTerritoryCode<
          Query$DepotsByTerritory$depotsByTerritoryCode>
      get copyWith => CopyWith$Query$DepotsByTerritory$depotsByTerritoryCode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DepotsByTerritory$depotsByTerritoryCode<TRes> {
  factory CopyWith$Query$DepotsByTerritory$depotsByTerritoryCode(
    Query$DepotsByTerritory$depotsByTerritoryCode instance,
    TRes Function(Query$DepotsByTerritory$depotsByTerritoryCode) then,
  ) = _CopyWithImpl$Query$DepotsByTerritory$depotsByTerritoryCode;

  factory CopyWith$Query$DepotsByTerritory$depotsByTerritoryCode.stub(
          TRes res) =
      _CopyWithStubImpl$Query$DepotsByTerritory$depotsByTerritoryCode;

  TRes call({
    String? depotNo,
    String? cmpCode,
    bool? active,
    String? yardCode,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$DepotsByTerritory$depotsByTerritoryCode<TRes>
    implements CopyWith$Query$DepotsByTerritory$depotsByTerritoryCode<TRes> {
  _CopyWithImpl$Query$DepotsByTerritory$depotsByTerritoryCode(
    this._instance,
    this._then,
  );

  final Query$DepotsByTerritory$depotsByTerritoryCode _instance;

  final TRes Function(Query$DepotsByTerritory$depotsByTerritoryCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depotNo = _undefined,
    Object? cmpCode = _undefined,
    Object? active = _undefined,
    Object? yardCode = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DepotsByTerritory$depotsByTerritoryCode(
        depotNo: depotNo == _undefined || depotNo == null
            ? _instance.depotNo
            : (depotNo as String),
        cmpCode: cmpCode == _undefined || cmpCode == null
            ? _instance.cmpCode
            : (cmpCode as String),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$DepotsByTerritory$depotsByTerritoryCode<TRes>
    implements CopyWith$Query$DepotsByTerritory$depotsByTerritoryCode<TRes> {
  _CopyWithStubImpl$Query$DepotsByTerritory$depotsByTerritoryCode(this._res);

  TRes _res;

  call({
    String? depotNo,
    String? cmpCode,
    bool? active,
    String? yardCode,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
