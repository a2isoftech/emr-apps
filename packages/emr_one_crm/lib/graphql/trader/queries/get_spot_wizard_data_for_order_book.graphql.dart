import 'package:gql/ast.dart';

class Variables$Query$GetSpotWizardDataForOrderBook {
  factory Variables$Query$GetSpotWizardDataForOrderBook({
    required int id,
    required String gradeType,
    required String territoryCode,
  }) =>
      Variables$Query$GetSpotWizardDataForOrderBook._({
        r'id': id,
        r'gradeType': gradeType,
        r'territoryCode': territoryCode,
      });

  Variables$Query$GetSpotWizardDataForOrderBook._(this._$data);

  factory Variables$Query$GetSpotWizardDataForOrderBook.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$gradeType = data['gradeType'];
    result$data['gradeType'] = (l$gradeType as String);
    final l$territoryCode = data['territoryCode'];
    result$data['territoryCode'] = (l$territoryCode as String);
    return Variables$Query$GetSpotWizardDataForOrderBook._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  String get gradeType => (_$data['gradeType'] as String);

  String get territoryCode => (_$data['territoryCode'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$gradeType = gradeType;
    result$data['gradeType'] = l$gradeType;
    final l$territoryCode = territoryCode;
    result$data['territoryCode'] = l$territoryCode;
    return result$data;
  }

  CopyWith$Variables$Query$GetSpotWizardDataForOrderBook<
          Variables$Query$GetSpotWizardDataForOrderBook>
      get copyWith => CopyWith$Variables$Query$GetSpotWizardDataForOrderBook(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetSpotWizardDataForOrderBook ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$gradeType = gradeType;
    final lOther$gradeType = other.gradeType;
    if (l$gradeType != lOther$gradeType) {
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
    final l$id = id;
    final l$gradeType = gradeType;
    final l$territoryCode = territoryCode;
    return Object.hashAll([
      l$id,
      l$gradeType,
      l$territoryCode,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetSpotWizardDataForOrderBook<TRes> {
  factory CopyWith$Variables$Query$GetSpotWizardDataForOrderBook(
    Variables$Query$GetSpotWizardDataForOrderBook instance,
    TRes Function(Variables$Query$GetSpotWizardDataForOrderBook) then,
  ) = _CopyWithImpl$Variables$Query$GetSpotWizardDataForOrderBook;

  factory CopyWith$Variables$Query$GetSpotWizardDataForOrderBook.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSpotWizardDataForOrderBook;

  TRes call({
    int? id,
    String? gradeType,
    String? territoryCode,
  });
}

class _CopyWithImpl$Variables$Query$GetSpotWizardDataForOrderBook<TRes>
    implements CopyWith$Variables$Query$GetSpotWizardDataForOrderBook<TRes> {
  _CopyWithImpl$Variables$Query$GetSpotWizardDataForOrderBook(
    this._instance,
    this._then,
  );

  final Variables$Query$GetSpotWizardDataForOrderBook _instance;

  final TRes Function(Variables$Query$GetSpotWizardDataForOrderBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? gradeType = _undefined,
    Object? territoryCode = _undefined,
  }) =>
      _then(Variables$Query$GetSpotWizardDataForOrderBook._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (gradeType != _undefined && gradeType != null)
          'gradeType': (gradeType as String),
        if (territoryCode != _undefined && territoryCode != null)
          'territoryCode': (territoryCode as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetSpotWizardDataForOrderBook<TRes>
    implements CopyWith$Variables$Query$GetSpotWizardDataForOrderBook<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSpotWizardDataForOrderBook(this._res);

  TRes _res;

  call({
    int? id,
    String? gradeType,
    String? territoryCode,
  }) =>
      _res;
}

class Query$GetSpotWizardDataForOrderBook {
  Query$GetSpotWizardDataForOrderBook({
    required this.contractOrderBookDefaults,
    required this.gradesForUserByGradeType,
    this.$__typename = 'Query',
  });

  factory Query$GetSpotWizardDataForOrderBook.fromJson(
      Map<String, dynamic> json) {
    final l$contractOrderBookDefaults = json['contractOrderBookDefaults'];
    final l$gradesForUserByGradeType = json['gradesForUserByGradeType'];
    final l$$__typename = json['__typename'];
    return Query$GetSpotWizardDataForOrderBook(
      contractOrderBookDefaults:
          Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults
              .fromJson((l$contractOrderBookDefaults as Map<String, dynamic>)),
      gradesForUserByGradeType: (l$gradesForUserByGradeType as List<dynamic>)
          .map((e) =>
              Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults
      contractOrderBookDefaults;

  final List<Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType>
      gradesForUserByGradeType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contractOrderBookDefaults = contractOrderBookDefaults;
    _resultData['contractOrderBookDefaults'] =
        l$contractOrderBookDefaults.toJson();
    final l$gradesForUserByGradeType = gradesForUserByGradeType;
    _resultData['gradesForUserByGradeType'] =
        l$gradesForUserByGradeType.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contractOrderBookDefaults = contractOrderBookDefaults;
    final l$gradesForUserByGradeType = gradesForUserByGradeType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contractOrderBookDefaults,
      Object.hashAll(l$gradesForUserByGradeType.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetSpotWizardDataForOrderBook ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contractOrderBookDefaults = contractOrderBookDefaults;
    final lOther$contractOrderBookDefaults = other.contractOrderBookDefaults;
    if (l$contractOrderBookDefaults != lOther$contractOrderBookDefaults) {
      return false;
    }
    final l$gradesForUserByGradeType = gradesForUserByGradeType;
    final lOther$gradesForUserByGradeType = other.gradesForUserByGradeType;
    if (l$gradesForUserByGradeType.length !=
        lOther$gradesForUserByGradeType.length) {
      return false;
    }
    for (int i = 0; i < l$gradesForUserByGradeType.length; i++) {
      final l$gradesForUserByGradeType$entry = l$gradesForUserByGradeType[i];
      final lOther$gradesForUserByGradeType$entry =
          lOther$gradesForUserByGradeType[i];
      if (l$gradesForUserByGradeType$entry !=
          lOther$gradesForUserByGradeType$entry) {
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

extension UtilityExtension$Query$GetSpotWizardDataForOrderBook
    on Query$GetSpotWizardDataForOrderBook {
  CopyWith$Query$GetSpotWizardDataForOrderBook<
          Query$GetSpotWizardDataForOrderBook>
      get copyWith => CopyWith$Query$GetSpotWizardDataForOrderBook(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSpotWizardDataForOrderBook<TRes> {
  factory CopyWith$Query$GetSpotWizardDataForOrderBook(
    Query$GetSpotWizardDataForOrderBook instance,
    TRes Function(Query$GetSpotWizardDataForOrderBook) then,
  ) = _CopyWithImpl$Query$GetSpotWizardDataForOrderBook;

  factory CopyWith$Query$GetSpotWizardDataForOrderBook.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSpotWizardDataForOrderBook;

  TRes call({
    Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults?
        contractOrderBookDefaults,
    List<Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType>?
        gradesForUserByGradeType,
    String? $__typename,
  });
  CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults<TRes>
      get contractOrderBookDefaults;
  TRes gradesForUserByGradeType(
      Iterable<Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType> Function(
              Iterable<
                  CopyWith$Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType<
                      Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType>>)
          _fn);
}

class _CopyWithImpl$Query$GetSpotWizardDataForOrderBook<TRes>
    implements CopyWith$Query$GetSpotWizardDataForOrderBook<TRes> {
  _CopyWithImpl$Query$GetSpotWizardDataForOrderBook(
    this._instance,
    this._then,
  );

  final Query$GetSpotWizardDataForOrderBook _instance;

  final TRes Function(Query$GetSpotWizardDataForOrderBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contractOrderBookDefaults = _undefined,
    Object? gradesForUserByGradeType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSpotWizardDataForOrderBook(
        contractOrderBookDefaults: contractOrderBookDefaults == _undefined ||
                contractOrderBookDefaults == null
            ? _instance.contractOrderBookDefaults
            : (contractOrderBookDefaults
                as Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults),
        gradesForUserByGradeType: gradesForUserByGradeType == _undefined ||
                gradesForUserByGradeType == null
            ? _instance.gradesForUserByGradeType
            : (gradesForUserByGradeType as List<
                Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults<TRes>
      get contractOrderBookDefaults {
    final local$contractOrderBookDefaults = _instance.contractOrderBookDefaults;
    return CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults(
        local$contractOrderBookDefaults,
        (e) => call(contractOrderBookDefaults: e));
  }

  TRes gradesForUserByGradeType(
          Iterable<Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType> Function(
                  Iterable<
                      CopyWith$Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType<
                          Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType>>)
              _fn) =>
      call(
          gradesForUserByGradeType: _fn(_instance.gradesForUserByGradeType.map(
              (e) =>
                  CopyWith$Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetSpotWizardDataForOrderBook<TRes>
    implements CopyWith$Query$GetSpotWizardDataForOrderBook<TRes> {
  _CopyWithStubImpl$Query$GetSpotWizardDataForOrderBook(this._res);

  TRes _res;

  call({
    Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults?
        contractOrderBookDefaults,
    List<Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType>?
        gradesForUserByGradeType,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults<TRes>
      get contractOrderBookDefaults =>
          CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults
              .stub(_res);

  gradesForUserByGradeType(_fn) => _res;
}

const documentNodeQueryGetSpotWizardDataForOrderBook =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetSpotWizardDataForOrderBook'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'gradeType')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'territoryCode')),
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
        name: NameNode(value: 'contractOrderBookDefaults'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'orderBookTypeId'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'contract'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'contractTypeID'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'currencyCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'priceTypeID'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'targetTonnageUomID'),
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
        name: NameNode(value: 'gradesForUserByGradeType'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'gradeType'),
            value: VariableNode(name: NameNode(value: 'gradeType')),
          ),
          ArgumentNode(
            name: NameNode(value: 'territoryCode'),
            value: VariableNode(name: NameNode(value: 'territoryCode')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'gradeGroup'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gradeType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gradeCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'comment'),
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

class Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults {
  Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults({
    this.contract,
    this.$__typename = 'ContractOrderBookDefaults',
  });

  factory Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults.fromJson(
      Map<String, dynamic> json) {
    final l$contract = json['contract'];
    final l$$__typename = json['__typename'];
    return Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults(
      contract: l$contract == null
          ? null
          : Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract
              .fromJson((l$contract as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract?
      contract;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contract = contract;
    _resultData['contract'] = l$contract?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contract = contract;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contract,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contract = contract;
    final lOther$contract = other.contract;
    if (l$contract != lOther$contract) {
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

extension UtilityExtension$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults
    on Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults {
  CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults<
          Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults>
      get copyWith =>
          CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults<
    TRes> {
  factory CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults(
    Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults instance,
    TRes Function(Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults)
        then,
  ) = _CopyWithImpl$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults;

  factory CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults;

  TRes call({
    Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract?
        contract,
    String? $__typename,
  });
  CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract<
      TRes> get contract;
}

class _CopyWithImpl$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults<
        TRes>
    implements
        CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults<
            TRes> {
  _CopyWithImpl$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults(
    this._instance,
    this._then,
  );

  final Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults _instance;

  final TRes Function(
      Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contract = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults(
        contract: contract == _undefined
            ? _instance.contract
            : (contract
                as Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract<
      TRes> get contract {
    final local$contract = _instance.contract;
    return local$contract == null
        ? CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract
            .stub(_then(_instance))
        : CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract(
            local$contract, (e) => call(contract: e));
  }
}

class _CopyWithStubImpl$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults<
        TRes>
    implements
        CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults<
            TRes> {
  _CopyWithStubImpl$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults(
      this._res);

  TRes _res;

  call({
    Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract?
        contract,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract<
          TRes>
      get contract =>
          CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract
              .stub(_res);
}

class Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract {
  Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract({
    this.contractTypeID,
    this.currencyCode,
    this.priceTypeID,
    this.targetTonnageUomID,
    this.$__typename = 'ContractOrderBookHeaderDefaults',
  });

  factory Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract.fromJson(
      Map<String, dynamic> json) {
    final l$contractTypeID = json['contractTypeID'];
    final l$currencyCode = json['currencyCode'];
    final l$priceTypeID = json['priceTypeID'];
    final l$targetTonnageUomID = json['targetTonnageUomID'];
    final l$$__typename = json['__typename'];
    return Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract(
      contractTypeID: (l$contractTypeID as int?),
      currencyCode: (l$currencyCode as String?),
      priceTypeID: (l$priceTypeID as int?),
      targetTonnageUomID: (l$targetTonnageUomID as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? contractTypeID;

  final String? currencyCode;

  final int? priceTypeID;

  final int? targetTonnageUomID;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contractTypeID = contractTypeID;
    _resultData['contractTypeID'] = l$contractTypeID;
    final l$currencyCode = currencyCode;
    _resultData['currencyCode'] = l$currencyCode;
    final l$priceTypeID = priceTypeID;
    _resultData['priceTypeID'] = l$priceTypeID;
    final l$targetTonnageUomID = targetTonnageUomID;
    _resultData['targetTonnageUomID'] = l$targetTonnageUomID;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contractTypeID = contractTypeID;
    final l$currencyCode = currencyCode;
    final l$priceTypeID = priceTypeID;
    final l$targetTonnageUomID = targetTonnageUomID;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contractTypeID,
      l$currencyCode,
      l$priceTypeID,
      l$targetTonnageUomID,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contractTypeID = contractTypeID;
    final lOther$contractTypeID = other.contractTypeID;
    if (l$contractTypeID != lOther$contractTypeID) {
      return false;
    }
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) {
      return false;
    }
    final l$priceTypeID = priceTypeID;
    final lOther$priceTypeID = other.priceTypeID;
    if (l$priceTypeID != lOther$priceTypeID) {
      return false;
    }
    final l$targetTonnageUomID = targetTonnageUomID;
    final lOther$targetTonnageUomID = other.targetTonnageUomID;
    if (l$targetTonnageUomID != lOther$targetTonnageUomID) {
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

extension UtilityExtension$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract
    on Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract {
  CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract<
          Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract>
      get copyWith =>
          CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract<
    TRes> {
  factory CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract(
    Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract
        instance,
    TRes Function(
            Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract)
        then,
  ) = _CopyWithImpl$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract;

  factory CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract;

  TRes call({
    int? contractTypeID,
    String? currencyCode,
    int? priceTypeID,
    int? targetTonnageUomID,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract<
        TRes>
    implements
        CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract<
            TRes> {
  _CopyWithImpl$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract(
    this._instance,
    this._then,
  );

  final Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract
      _instance;

  final TRes Function(
          Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contractTypeID = _undefined,
    Object? currencyCode = _undefined,
    Object? priceTypeID = _undefined,
    Object? targetTonnageUomID = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract(
        contractTypeID: contractTypeID == _undefined
            ? _instance.contractTypeID
            : (contractTypeID as int?),
        currencyCode: currencyCode == _undefined
            ? _instance.currencyCode
            : (currencyCode as String?),
        priceTypeID: priceTypeID == _undefined
            ? _instance.priceTypeID
            : (priceTypeID as int?),
        targetTonnageUomID: targetTonnageUomID == _undefined
            ? _instance.targetTonnageUomID
            : (targetTonnageUomID as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract<
        TRes>
    implements
        CopyWith$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract<
            TRes> {
  _CopyWithStubImpl$Query$GetSpotWizardDataForOrderBook$contractOrderBookDefaults$contract(
      this._res);

  TRes _res;

  call({
    int? contractTypeID,
    String? currencyCode,
    int? priceTypeID,
    int? targetTonnageUomID,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType {
  Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType({
    required this.gradeGroup,
    required this.gradeType,
    required this.gradeCode,
    required this.comment,
    this.$__typename = 'Grade',
  });

  factory Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType.fromJson(
      Map<String, dynamic> json) {
    final l$gradeGroup = json['gradeGroup'];
    final l$gradeType = json['gradeType'];
    final l$gradeCode = json['gradeCode'];
    final l$comment = json['comment'];
    final l$$__typename = json['__typename'];
    return Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType(
      gradeGroup: (l$gradeGroup as String),
      gradeType: (l$gradeType as String),
      gradeCode: (l$gradeCode as String),
      comment: (l$comment as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String gradeGroup;

  final String gradeType;

  final String gradeCode;

  final String comment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gradeGroup = gradeGroup;
    _resultData['gradeGroup'] = l$gradeGroup;
    final l$gradeType = gradeType;
    _resultData['gradeType'] = l$gradeType;
    final l$gradeCode = gradeCode;
    _resultData['gradeCode'] = l$gradeCode;
    final l$comment = comment;
    _resultData['comment'] = l$comment;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gradeGroup = gradeGroup;
    final l$gradeType = gradeType;
    final l$gradeCode = gradeCode;
    final l$comment = comment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$gradeGroup,
      l$gradeType,
      l$gradeCode,
      l$comment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gradeGroup = gradeGroup;
    final lOther$gradeGroup = other.gradeGroup;
    if (l$gradeGroup != lOther$gradeGroup) {
      return false;
    }
    final l$gradeType = gradeType;
    final lOther$gradeType = other.gradeType;
    if (l$gradeType != lOther$gradeType) {
      return false;
    }
    final l$gradeCode = gradeCode;
    final lOther$gradeCode = other.gradeCode;
    if (l$gradeCode != lOther$gradeCode) {
      return false;
    }
    final l$comment = comment;
    final lOther$comment = other.comment;
    if (l$comment != lOther$comment) {
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

extension UtilityExtension$Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType
    on Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType {
  CopyWith$Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType<
          Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType>
      get copyWith =>
          CopyWith$Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType<
    TRes> {
  factory CopyWith$Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType(
    Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType instance,
    TRes Function(Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType)
        then,
  ) = _CopyWithImpl$Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType;

  factory CopyWith$Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType;

  TRes call({
    String? gradeGroup,
    String? gradeType,
    String? gradeCode,
    String? comment,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType<
        TRes>
    implements
        CopyWith$Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType<
            TRes> {
  _CopyWithImpl$Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType(
    this._instance,
    this._then,
  );

  final Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType _instance;

  final TRes Function(
      Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gradeGroup = _undefined,
    Object? gradeType = _undefined,
    Object? gradeCode = _undefined,
    Object? comment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType(
        gradeGroup: gradeGroup == _undefined || gradeGroup == null
            ? _instance.gradeGroup
            : (gradeGroup as String),
        gradeType: gradeType == _undefined || gradeType == null
            ? _instance.gradeType
            : (gradeType as String),
        gradeCode: gradeCode == _undefined || gradeCode == null
            ? _instance.gradeCode
            : (gradeCode as String),
        comment: comment == _undefined || comment == null
            ? _instance.comment
            : (comment as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType<
        TRes>
    implements
        CopyWith$Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType<
            TRes> {
  _CopyWithStubImpl$Query$GetSpotWizardDataForOrderBook$gradesForUserByGradeType(
      this._res);

  TRes _res;

  call({
    String? gradeGroup,
    String? gradeType,
    String? gradeCode,
    String? comment,
    String? $__typename,
  }) =>
      _res;
}
