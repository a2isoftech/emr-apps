import 'package:gql/ast.dart';

class Variables$Query$GetAssetByCode {
  factory Variables$Query$GetAssetByCode({required String assetCode}) =>
      Variables$Query$GetAssetByCode._({
        r'assetCode': assetCode,
      });

  Variables$Query$GetAssetByCode._(this._$data);

  factory Variables$Query$GetAssetByCode.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$assetCode = data['assetCode'];
    result$data['assetCode'] = (l$assetCode as String);
    return Variables$Query$GetAssetByCode._(result$data);
  }

  Map<String, dynamic> _$data;

  String get assetCode => (_$data['assetCode'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$assetCode = assetCode;
    result$data['assetCode'] = l$assetCode;
    return result$data;
  }

  CopyWith$Variables$Query$GetAssetByCode<Variables$Query$GetAssetByCode>
      get copyWith => CopyWith$Variables$Query$GetAssetByCode(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAssetByCode) ||
        runtimeType != other.runtimeType) {
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
    final l$assetCode = assetCode;
    return Object.hashAll([l$assetCode]);
  }
}

abstract class CopyWith$Variables$Query$GetAssetByCode<TRes> {
  factory CopyWith$Variables$Query$GetAssetByCode(
    Variables$Query$GetAssetByCode instance,
    TRes Function(Variables$Query$GetAssetByCode) then,
  ) = _CopyWithImpl$Variables$Query$GetAssetByCode;

  factory CopyWith$Variables$Query$GetAssetByCode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAssetByCode;

  TRes call({String? assetCode});
}

class _CopyWithImpl$Variables$Query$GetAssetByCode<TRes>
    implements CopyWith$Variables$Query$GetAssetByCode<TRes> {
  _CopyWithImpl$Variables$Query$GetAssetByCode(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAssetByCode _instance;

  final TRes Function(Variables$Query$GetAssetByCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? assetCode = _undefined}) =>
      _then(Variables$Query$GetAssetByCode._({
        ..._instance._$data,
        if (assetCode != _undefined && assetCode != null)
          'assetCode': (assetCode as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAssetByCode<TRes>
    implements CopyWith$Variables$Query$GetAssetByCode<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAssetByCode(this._res);

  TRes _res;

  call({String? assetCode}) => _res;
}

class Query$GetAssetByCode {
  Query$GetAssetByCode({
    this.assetByCode,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetAssetByCode.fromJson(Map<String, dynamic> json) {
    final l$assetByCode = json['assetByCode'];
    final l$$__typename = json['__typename'];
    return Query$GetAssetByCode(
      assetByCode: l$assetByCode == null
          ? null
          : Query$GetAssetByCode$assetByCode.fromJson(
              (l$assetByCode as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAssetByCode$assetByCode? assetByCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetByCode = assetByCode;
    _resultData['assetByCode'] = l$assetByCode?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assetByCode = assetByCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assetByCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAssetByCode) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetByCode = assetByCode;
    final lOther$assetByCode = other.assetByCode;
    if (l$assetByCode != lOther$assetByCode) {
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

extension UtilityExtension$Query$GetAssetByCode on Query$GetAssetByCode {
  CopyWith$Query$GetAssetByCode<Query$GetAssetByCode> get copyWith =>
      CopyWith$Query$GetAssetByCode(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAssetByCode<TRes> {
  factory CopyWith$Query$GetAssetByCode(
    Query$GetAssetByCode instance,
    TRes Function(Query$GetAssetByCode) then,
  ) = _CopyWithImpl$Query$GetAssetByCode;

  factory CopyWith$Query$GetAssetByCode.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAssetByCode;

  TRes call({
    Query$GetAssetByCode$assetByCode? assetByCode,
    String? $__typename,
  });
  CopyWith$Query$GetAssetByCode$assetByCode<TRes> get assetByCode;
}

class _CopyWithImpl$Query$GetAssetByCode<TRes>
    implements CopyWith$Query$GetAssetByCode<TRes> {
  _CopyWithImpl$Query$GetAssetByCode(
    this._instance,
    this._then,
  );

  final Query$GetAssetByCode _instance;

  final TRes Function(Query$GetAssetByCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetByCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAssetByCode(
        assetByCode: assetByCode == _undefined
            ? _instance.assetByCode
            : (assetByCode as Query$GetAssetByCode$assetByCode?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAssetByCode$assetByCode<TRes> get assetByCode {
    final local$assetByCode = _instance.assetByCode;
    return local$assetByCode == null
        ? CopyWith$Query$GetAssetByCode$assetByCode.stub(_then(_instance))
        : CopyWith$Query$GetAssetByCode$assetByCode(
            local$assetByCode, (e) => call(assetByCode: e));
  }
}

class _CopyWithStubImpl$Query$GetAssetByCode<TRes>
    implements CopyWith$Query$GetAssetByCode<TRes> {
  _CopyWithStubImpl$Query$GetAssetByCode(this._res);

  TRes _res;

  call({
    Query$GetAssetByCode$assetByCode? assetByCode,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAssetByCode$assetByCode<TRes> get assetByCode =>
      CopyWith$Query$GetAssetByCode$assetByCode.stub(_res);
}

const documentNodeQueryGetAssetByCode = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAssetByCode'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'assetCode')),
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
        name: NameNode(value: 'assetByCode'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'assetCode'),
            value: VariableNode(name: NameNode(value: 'assetCode')),
          )
        ],
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
            name: NameNode(value: 'depotNo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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
            name: NameNode(value: 'assetType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'make'),
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
            name: NameNode(value: 'serialNumber'),
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

class Query$GetAssetByCode$assetByCode {
  Query$GetAssetByCode$assetByCode({
    required this.yardCode,
    required this.depotNo,
    required this.assetCode,
    this.name,
    this.assetType,
    this.make,
    this.model,
    this.serialNumber,
    this.$__typename = 'Asset',
  });

  factory Query$GetAssetByCode$assetByCode.fromJson(Map<String, dynamic> json) {
    final l$yardCode = json['yardCode'];
    final l$depotNo = json['depotNo'];
    final l$assetCode = json['assetCode'];
    final l$name = json['name'];
    final l$assetType = json['assetType'];
    final l$make = json['make'];
    final l$model = json['model'];
    final l$serialNumber = json['serialNumber'];
    final l$$__typename = json['__typename'];
    return Query$GetAssetByCode$assetByCode(
      yardCode: (l$yardCode as String),
      depotNo: (l$depotNo as String),
      assetCode: (l$assetCode as String),
      name: (l$name as String?),
      assetType: (l$assetType as String?),
      make: (l$make as String?),
      model: (l$model as String?),
      serialNumber: (l$serialNumber as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String yardCode;

  final String depotNo;

  final String assetCode;

  final String? name;

  final String? assetType;

  final String? make;

  final String? model;

  final String? serialNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$assetCode = assetCode;
    _resultData['assetCode'] = l$assetCode;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$assetType = assetType;
    _resultData['assetType'] = l$assetType;
    final l$make = make;
    _resultData['make'] = l$make;
    final l$model = model;
    _resultData['model'] = l$model;
    final l$serialNumber = serialNumber;
    _resultData['serialNumber'] = l$serialNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$depotNo = depotNo;
    final l$assetCode = assetCode;
    final l$name = name;
    final l$assetType = assetType;
    final l$make = make;
    final l$model = model;
    final l$serialNumber = serialNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yardCode,
      l$depotNo,
      l$assetCode,
      l$name,
      l$assetType,
      l$make,
      l$model,
      l$serialNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAssetByCode$assetByCode) ||
        runtimeType != other.runtimeType) {
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
    final l$assetType = assetType;
    final lOther$assetType = other.assetType;
    if (l$assetType != lOther$assetType) {
      return false;
    }
    final l$make = make;
    final lOther$make = other.make;
    if (l$make != lOther$make) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (l$model != lOther$model) {
      return false;
    }
    final l$serialNumber = serialNumber;
    final lOther$serialNumber = other.serialNumber;
    if (l$serialNumber != lOther$serialNumber) {
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

extension UtilityExtension$Query$GetAssetByCode$assetByCode
    on Query$GetAssetByCode$assetByCode {
  CopyWith$Query$GetAssetByCode$assetByCode<Query$GetAssetByCode$assetByCode>
      get copyWith => CopyWith$Query$GetAssetByCode$assetByCode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAssetByCode$assetByCode<TRes> {
  factory CopyWith$Query$GetAssetByCode$assetByCode(
    Query$GetAssetByCode$assetByCode instance,
    TRes Function(Query$GetAssetByCode$assetByCode) then,
  ) = _CopyWithImpl$Query$GetAssetByCode$assetByCode;

  factory CopyWith$Query$GetAssetByCode$assetByCode.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAssetByCode$assetByCode;

  TRes call({
    String? yardCode,
    String? depotNo,
    String? assetCode,
    String? name,
    String? assetType,
    String? make,
    String? model,
    String? serialNumber,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAssetByCode$assetByCode<TRes>
    implements CopyWith$Query$GetAssetByCode$assetByCode<TRes> {
  _CopyWithImpl$Query$GetAssetByCode$assetByCode(
    this._instance,
    this._then,
  );

  final Query$GetAssetByCode$assetByCode _instance;

  final TRes Function(Query$GetAssetByCode$assetByCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? depotNo = _undefined,
    Object? assetCode = _undefined,
    Object? name = _undefined,
    Object? assetType = _undefined,
    Object? make = _undefined,
    Object? model = _undefined,
    Object? serialNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAssetByCode$assetByCode(
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        depotNo: depotNo == _undefined || depotNo == null
            ? _instance.depotNo
            : (depotNo as String),
        assetCode: assetCode == _undefined || assetCode == null
            ? _instance.assetCode
            : (assetCode as String),
        name: name == _undefined ? _instance.name : (name as String?),
        assetType: assetType == _undefined
            ? _instance.assetType
            : (assetType as String?),
        make: make == _undefined ? _instance.make : (make as String?),
        model: model == _undefined ? _instance.model : (model as String?),
        serialNumber: serialNumber == _undefined
            ? _instance.serialNumber
            : (serialNumber as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAssetByCode$assetByCode<TRes>
    implements CopyWith$Query$GetAssetByCode$assetByCode<TRes> {
  _CopyWithStubImpl$Query$GetAssetByCode$assetByCode(this._res);

  TRes _res;

  call({
    String? yardCode,
    String? depotNo,
    String? assetCode,
    String? name,
    String? assetType,
    String? make,
    String? model,
    String? serialNumber,
    String? $__typename,
  }) =>
      _res;
}
