import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetAdminPricingData {
  factory Variables$Query$GetAdminPricingData(
          {required String partyAccountNo}) =>
      Variables$Query$GetAdminPricingData._({
        r'partyAccountNo': partyAccountNo,
      });

  Variables$Query$GetAdminPricingData._(this._$data);

  factory Variables$Query$GetAdminPricingData.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$partyAccountNo = data['partyAccountNo'];
    result$data['partyAccountNo'] = (l$partyAccountNo as String);
    return Variables$Query$GetAdminPricingData._(result$data);
  }

  Map<String, dynamic> _$data;

  String get partyAccountNo => (_$data['partyAccountNo'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$partyAccountNo = partyAccountNo;
    result$data['partyAccountNo'] = l$partyAccountNo;
    return result$data;
  }

  CopyWith$Variables$Query$GetAdminPricingData<
          Variables$Query$GetAdminPricingData>
      get copyWith => CopyWith$Variables$Query$GetAdminPricingData(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAdminPricingData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$partyAccountNo = partyAccountNo;
    return Object.hashAll([l$partyAccountNo]);
  }
}

abstract class CopyWith$Variables$Query$GetAdminPricingData<TRes> {
  factory CopyWith$Variables$Query$GetAdminPricingData(
    Variables$Query$GetAdminPricingData instance,
    TRes Function(Variables$Query$GetAdminPricingData) then,
  ) = _CopyWithImpl$Variables$Query$GetAdminPricingData;

  factory CopyWith$Variables$Query$GetAdminPricingData.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAdminPricingData;

  TRes call({String? partyAccountNo});
}

class _CopyWithImpl$Variables$Query$GetAdminPricingData<TRes>
    implements CopyWith$Variables$Query$GetAdminPricingData<TRes> {
  _CopyWithImpl$Variables$Query$GetAdminPricingData(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAdminPricingData _instance;

  final TRes Function(Variables$Query$GetAdminPricingData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? partyAccountNo = _undefined}) =>
      _then(Variables$Query$GetAdminPricingData._({
        ..._instance._$data,
        if (partyAccountNo != _undefined && partyAccountNo != null)
          'partyAccountNo': (partyAccountNo as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAdminPricingData<TRes>
    implements CopyWith$Variables$Query$GetAdminPricingData<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAdminPricingData(this._res);

  TRes _res;

  call({String? partyAccountNo}) => _res;
}

class Query$GetAdminPricingData {
  Query$GetAdminPricingData({
    required this.adminPricingData,
    this.$__typename = 'Query',
  });

  factory Query$GetAdminPricingData.fromJson(Map<String, dynamic> json) {
    final l$adminPricingData = json['adminPricingData'];
    final l$$__typename = json['__typename'];
    return Query$GetAdminPricingData(
      adminPricingData: (l$adminPricingData as List<dynamic>)
          .map((e) => Query$GetAdminPricingData$adminPricingData.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAdminPricingData$adminPricingData> adminPricingData;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$adminPricingData = adminPricingData;
    _resultData['adminPricingData'] =
        l$adminPricingData.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$adminPricingData = adminPricingData;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$adminPricingData.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAdminPricingData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$adminPricingData = adminPricingData;
    final lOther$adminPricingData = other.adminPricingData;
    if (l$adminPricingData.length != lOther$adminPricingData.length) {
      return false;
    }
    for (int i = 0; i < l$adminPricingData.length; i++) {
      final l$adminPricingData$entry = l$adminPricingData[i];
      final lOther$adminPricingData$entry = lOther$adminPricingData[i];
      if (l$adminPricingData$entry != lOther$adminPricingData$entry) {
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

extension UtilityExtension$Query$GetAdminPricingData
    on Query$GetAdminPricingData {
  CopyWith$Query$GetAdminPricingData<Query$GetAdminPricingData> get copyWith =>
      CopyWith$Query$GetAdminPricingData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAdminPricingData<TRes> {
  factory CopyWith$Query$GetAdminPricingData(
    Query$GetAdminPricingData instance,
    TRes Function(Query$GetAdminPricingData) then,
  ) = _CopyWithImpl$Query$GetAdminPricingData;

  factory CopyWith$Query$GetAdminPricingData.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAdminPricingData;

  TRes call({
    List<Query$GetAdminPricingData$adminPricingData>? adminPricingData,
    String? $__typename,
  });
  TRes adminPricingData(
      Iterable<Query$GetAdminPricingData$adminPricingData> Function(
              Iterable<
                  CopyWith$Query$GetAdminPricingData$adminPricingData<
                      Query$GetAdminPricingData$adminPricingData>>)
          _fn);
}

class _CopyWithImpl$Query$GetAdminPricingData<TRes>
    implements CopyWith$Query$GetAdminPricingData<TRes> {
  _CopyWithImpl$Query$GetAdminPricingData(
    this._instance,
    this._then,
  );

  final Query$GetAdminPricingData _instance;

  final TRes Function(Query$GetAdminPricingData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminPricingData = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAdminPricingData(
        adminPricingData:
            adminPricingData == _undefined || adminPricingData == null
                ? _instance.adminPricingData
                : (adminPricingData
                    as List<Query$GetAdminPricingData$adminPricingData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes adminPricingData(
          Iterable<Query$GetAdminPricingData$adminPricingData> Function(
                  Iterable<
                      CopyWith$Query$GetAdminPricingData$adminPricingData<
                          Query$GetAdminPricingData$adminPricingData>>)
              _fn) =>
      call(
          adminPricingData: _fn(_instance.adminPricingData
              .map((e) => CopyWith$Query$GetAdminPricingData$adminPricingData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAdminPricingData<TRes>
    implements CopyWith$Query$GetAdminPricingData<TRes> {
  _CopyWithStubImpl$Query$GetAdminPricingData(this._res);

  TRes _res;

  call({
    List<Query$GetAdminPricingData$adminPricingData>? adminPricingData,
    String? $__typename,
  }) =>
      _res;

  adminPricingData(_fn) => _res;
}

const documentNodeQueryGetAdminPricingData = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAdminPricingData'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'partyAccountNo')),
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
        name: NameNode(value: 'adminPricingData'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'partyAccountNo'),
            value: VariableNode(name: NameNode(value: 'partyAccountNo')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'contractLineId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'contractDepotPremiumId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'prices'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'currentPrice'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: 'tags'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'DepotPremiumTag'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'description'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'rate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
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
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'effectiveFrom'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'effectiveTo'),
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
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'CollectedTag'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'description'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'locationCode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'fullyCharged'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'haulageRate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
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
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'showToCustomer'),
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
                    name: NameNode(value: 'rate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
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

class Query$GetAdminPricingData$adminPricingData {
  Query$GetAdminPricingData$adminPricingData({
    required this.contractLineId,
    required this.contractDepotPremiumId,
    this.prices,
    required this.tags,
    this.$__typename = 'AdminPricingData',
  });

  factory Query$GetAdminPricingData$adminPricingData.fromJson(
      Map<String, dynamic> json) {
    final l$contractLineId = json['contractLineId'];
    final l$contractDepotPremiumId = json['contractDepotPremiumId'];
    final l$prices = json['prices'];
    final l$tags = json['tags'];
    final l$$__typename = json['__typename'];
    return Query$GetAdminPricingData$adminPricingData(
      contractLineId: (l$contractLineId as int),
      contractDepotPremiumId: (l$contractDepotPremiumId as int),
      prices: l$prices == null
          ? null
          : Query$GetAdminPricingData$adminPricingData$prices.fromJson(
              (l$prices as Map<String, dynamic>)),
      tags: (l$tags as List<dynamic>)
          .map((e) => Query$GetAdminPricingData$adminPricingData$tags.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int contractLineId;

  final int contractDepotPremiumId;

  final Query$GetAdminPricingData$adminPricingData$prices? prices;

  final List<Query$GetAdminPricingData$adminPricingData$tags> tags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contractLineId = contractLineId;
    _resultData['contractLineId'] = l$contractLineId;
    final l$contractDepotPremiumId = contractDepotPremiumId;
    _resultData['contractDepotPremiumId'] = l$contractDepotPremiumId;
    final l$prices = prices;
    _resultData['prices'] = l$prices?.toJson();
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contractLineId = contractLineId;
    final l$contractDepotPremiumId = contractDepotPremiumId;
    final l$prices = prices;
    final l$tags = tags;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contractLineId,
      l$contractDepotPremiumId,
      l$prices,
      Object.hashAll(l$tags.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAdminPricingData$adminPricingData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contractLineId = contractLineId;
    final lOther$contractLineId = other.contractLineId;
    if (l$contractLineId != lOther$contractLineId) {
      return false;
    }
    final l$contractDepotPremiumId = contractDepotPremiumId;
    final lOther$contractDepotPremiumId = other.contractDepotPremiumId;
    if (l$contractDepotPremiumId != lOther$contractDepotPremiumId) {
      return false;
    }
    final l$prices = prices;
    final lOther$prices = other.prices;
    if (l$prices != lOther$prices) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags.length != lOther$tags.length) {
      return false;
    }
    for (int i = 0; i < l$tags.length; i++) {
      final l$tags$entry = l$tags[i];
      final lOther$tags$entry = lOther$tags[i];
      if (l$tags$entry != lOther$tags$entry) {
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

extension UtilityExtension$Query$GetAdminPricingData$adminPricingData
    on Query$GetAdminPricingData$adminPricingData {
  CopyWith$Query$GetAdminPricingData$adminPricingData<
          Query$GetAdminPricingData$adminPricingData>
      get copyWith => CopyWith$Query$GetAdminPricingData$adminPricingData(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAdminPricingData$adminPricingData<TRes> {
  factory CopyWith$Query$GetAdminPricingData$adminPricingData(
    Query$GetAdminPricingData$adminPricingData instance,
    TRes Function(Query$GetAdminPricingData$adminPricingData) then,
  ) = _CopyWithImpl$Query$GetAdminPricingData$adminPricingData;

  factory CopyWith$Query$GetAdminPricingData$adminPricingData.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData;

  TRes call({
    int? contractLineId,
    int? contractDepotPremiumId,
    Query$GetAdminPricingData$adminPricingData$prices? prices,
    List<Query$GetAdminPricingData$adminPricingData$tags>? tags,
    String? $__typename,
  });
  CopyWith$Query$GetAdminPricingData$adminPricingData$prices<TRes> get prices;
  TRes tags(
      Iterable<Query$GetAdminPricingData$adminPricingData$tags> Function(
              Iterable<
                  CopyWith$Query$GetAdminPricingData$adminPricingData$tags<
                      Query$GetAdminPricingData$adminPricingData$tags>>)
          _fn);
}

class _CopyWithImpl$Query$GetAdminPricingData$adminPricingData<TRes>
    implements CopyWith$Query$GetAdminPricingData$adminPricingData<TRes> {
  _CopyWithImpl$Query$GetAdminPricingData$adminPricingData(
    this._instance,
    this._then,
  );

  final Query$GetAdminPricingData$adminPricingData _instance;

  final TRes Function(Query$GetAdminPricingData$adminPricingData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contractLineId = _undefined,
    Object? contractDepotPremiumId = _undefined,
    Object? prices = _undefined,
    Object? tags = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAdminPricingData$adminPricingData(
        contractLineId: contractLineId == _undefined || contractLineId == null
            ? _instance.contractLineId
            : (contractLineId as int),
        contractDepotPremiumId: contractDepotPremiumId == _undefined ||
                contractDepotPremiumId == null
            ? _instance.contractDepotPremiumId
            : (contractDepotPremiumId as int),
        prices: prices == _undefined
            ? _instance.prices
            : (prices as Query$GetAdminPricingData$adminPricingData$prices?),
        tags: tags == _undefined || tags == null
            ? _instance.tags
            : (tags as List<Query$GetAdminPricingData$adminPricingData$tags>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAdminPricingData$adminPricingData$prices<TRes> get prices {
    final local$prices = _instance.prices;
    return local$prices == null
        ? CopyWith$Query$GetAdminPricingData$adminPricingData$prices.stub(
            _then(_instance))
        : CopyWith$Query$GetAdminPricingData$adminPricingData$prices(
            local$prices, (e) => call(prices: e));
  }

  TRes tags(
          Iterable<Query$GetAdminPricingData$adminPricingData$tags> Function(
                  Iterable<
                      CopyWith$Query$GetAdminPricingData$adminPricingData$tags<
                          Query$GetAdminPricingData$adminPricingData$tags>>)
              _fn) =>
      call(
          tags: _fn(_instance.tags.map(
              (e) => CopyWith$Query$GetAdminPricingData$adminPricingData$tags(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData<TRes>
    implements CopyWith$Query$GetAdminPricingData$adminPricingData<TRes> {
  _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData(this._res);

  TRes _res;

  call({
    int? contractLineId,
    int? contractDepotPremiumId,
    Query$GetAdminPricingData$adminPricingData$prices? prices,
    List<Query$GetAdminPricingData$adminPricingData$tags>? tags,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAdminPricingData$adminPricingData$prices<TRes> get prices =>
      CopyWith$Query$GetAdminPricingData$adminPricingData$prices.stub(_res);

  tags(_fn) => _res;
}

class Query$GetAdminPricingData$adminPricingData$prices {
  Query$GetAdminPricingData$adminPricingData$prices({
    required this.currentPrice,
    this.$__typename = 'Prices',
  });

  factory Query$GetAdminPricingData$adminPricingData$prices.fromJson(
      Map<String, dynamic> json) {
    final l$currentPrice = json['currentPrice'];
    final l$$__typename = json['__typename'];
    return Query$GetAdminPricingData$adminPricingData$prices(
      currentPrice:
          Query$GetAdminPricingData$adminPricingData$prices$currentPrice
              .fromJson((l$currentPrice as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAdminPricingData$adminPricingData$prices$currentPrice
      currentPrice;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currentPrice = currentPrice;
    _resultData['currentPrice'] = l$currentPrice.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currentPrice = currentPrice;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$currentPrice,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAdminPricingData$adminPricingData$prices ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$currentPrice = currentPrice;
    final lOther$currentPrice = other.currentPrice;
    if (l$currentPrice != lOther$currentPrice) {
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

extension UtilityExtension$Query$GetAdminPricingData$adminPricingData$prices
    on Query$GetAdminPricingData$adminPricingData$prices {
  CopyWith$Query$GetAdminPricingData$adminPricingData$prices<
          Query$GetAdminPricingData$adminPricingData$prices>
      get copyWith =>
          CopyWith$Query$GetAdminPricingData$adminPricingData$prices(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAdminPricingData$adminPricingData$prices<
    TRes> {
  factory CopyWith$Query$GetAdminPricingData$adminPricingData$prices(
    Query$GetAdminPricingData$adminPricingData$prices instance,
    TRes Function(Query$GetAdminPricingData$adminPricingData$prices) then,
  ) = _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$prices;

  factory CopyWith$Query$GetAdminPricingData$adminPricingData$prices.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$prices;

  TRes call({
    Query$GetAdminPricingData$adminPricingData$prices$currentPrice?
        currentPrice,
    String? $__typename,
  });
  CopyWith$Query$GetAdminPricingData$adminPricingData$prices$currentPrice<TRes>
      get currentPrice;
}

class _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$prices<TRes>
    implements
        CopyWith$Query$GetAdminPricingData$adminPricingData$prices<TRes> {
  _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$prices(
    this._instance,
    this._then,
  );

  final Query$GetAdminPricingData$adminPricingData$prices _instance;

  final TRes Function(Query$GetAdminPricingData$adminPricingData$prices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentPrice = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAdminPricingData$adminPricingData$prices(
        currentPrice: currentPrice == _undefined || currentPrice == null
            ? _instance.currentPrice
            : (currentPrice
                as Query$GetAdminPricingData$adminPricingData$prices$currentPrice),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAdminPricingData$adminPricingData$prices$currentPrice<TRes>
      get currentPrice {
    final local$currentPrice = _instance.currentPrice;
    return CopyWith$Query$GetAdminPricingData$adminPricingData$prices$currentPrice(
        local$currentPrice, (e) => call(currentPrice: e));
  }
}

class _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$prices<TRes>
    implements
        CopyWith$Query$GetAdminPricingData$adminPricingData$prices<TRes> {
  _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$prices(
      this._res);

  TRes _res;

  call({
    Query$GetAdminPricingData$adminPricingData$prices$currentPrice?
        currentPrice,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAdminPricingData$adminPricingData$prices$currentPrice<TRes>
      get currentPrice =>
          CopyWith$Query$GetAdminPricingData$adminPricingData$prices$currentPrice
              .stub(_res);
}

class Query$GetAdminPricingData$adminPricingData$prices$currentPrice {
  Query$GetAdminPricingData$adminPricingData$prices$currentPrice({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'UomValue',
  });

  factory Query$GetAdminPricingData$adminPricingData$prices$currentPrice.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetAdminPricingData$adminPricingData$prices$currentPrice(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAdminPricingData$adminPricingData$prices$currentPrice ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAdminPricingData$adminPricingData$prices$currentPrice
    on Query$GetAdminPricingData$adminPricingData$prices$currentPrice {
  CopyWith$Query$GetAdminPricingData$adminPricingData$prices$currentPrice<
          Query$GetAdminPricingData$adminPricingData$prices$currentPrice>
      get copyWith =>
          CopyWith$Query$GetAdminPricingData$adminPricingData$prices$currentPrice(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAdminPricingData$adminPricingData$prices$currentPrice<
    TRes> {
  factory CopyWith$Query$GetAdminPricingData$adminPricingData$prices$currentPrice(
    Query$GetAdminPricingData$adminPricingData$prices$currentPrice instance,
    TRes Function(
            Query$GetAdminPricingData$adminPricingData$prices$currentPrice)
        then,
  ) = _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$prices$currentPrice;

  factory CopyWith$Query$GetAdminPricingData$adminPricingData$prices$currentPrice.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$prices$currentPrice;

  TRes call({
    Enum$Uom? uom,
    double? value,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$prices$currentPrice<
        TRes>
    implements
        CopyWith$Query$GetAdminPricingData$adminPricingData$prices$currentPrice<
            TRes> {
  _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$prices$currentPrice(
    this._instance,
    this._then,
  );

  final Query$GetAdminPricingData$adminPricingData$prices$currentPrice
      _instance;

  final TRes Function(
      Query$GetAdminPricingData$adminPricingData$prices$currentPrice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAdminPricingData$adminPricingData$prices$currentPrice(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$prices$currentPrice<
        TRes>
    implements
        CopyWith$Query$GetAdminPricingData$adminPricingData$prices$currentPrice<
            TRes> {
  _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$prices$currentPrice(
      this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAdminPricingData$adminPricingData$tags {
  Query$GetAdminPricingData$adminPricingData$tags({required this.$__typename});

  factory Query$GetAdminPricingData$adminPricingData$tags.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "DepotPremiumTag":
        return Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag
            .fromJson(json);

      case "CollectedTag":
        return Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$GetAdminPricingData$adminPricingData$tags(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAdminPricingData$adminPricingData$tags ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetAdminPricingData$adminPricingData$tags
    on Query$GetAdminPricingData$adminPricingData$tags {
  CopyWith$Query$GetAdminPricingData$adminPricingData$tags<
          Query$GetAdminPricingData$adminPricingData$tags>
      get copyWith => CopyWith$Query$GetAdminPricingData$adminPricingData$tags(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag)
        depotPremiumTag,
    required _T Function(
            Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag)
        collectedTag,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "DepotPremiumTag":
        return depotPremiumTag(this
            as Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag);

      case "CollectedTag":
        return collectedTag(this
            as Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag)?
        depotPremiumTag,
    _T Function(Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag)?
        collectedTag,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "DepotPremiumTag":
        if (depotPremiumTag != null) {
          return depotPremiumTag(this
              as Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag);
        } else {
          return orElse();
        }

      case "CollectedTag":
        if (collectedTag != null) {
          return collectedTag(this
              as Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$GetAdminPricingData$adminPricingData$tags<TRes> {
  factory CopyWith$Query$GetAdminPricingData$adminPricingData$tags(
    Query$GetAdminPricingData$adminPricingData$tags instance,
    TRes Function(Query$GetAdminPricingData$adminPricingData$tags) then,
  ) = _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$tags;

  factory CopyWith$Query$GetAdminPricingData$adminPricingData$tags.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$tags;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$tags<TRes>
    implements CopyWith$Query$GetAdminPricingData$adminPricingData$tags<TRes> {
  _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$tags(
    this._instance,
    this._then,
  );

  final Query$GetAdminPricingData$adminPricingData$tags _instance;

  final TRes Function(Query$GetAdminPricingData$adminPricingData$tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$GetAdminPricingData$adminPricingData$tags(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$tags<TRes>
    implements CopyWith$Query$GetAdminPricingData$adminPricingData$tags<TRes> {
  _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$tags(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag
    implements Query$GetAdminPricingData$adminPricingData$tags {
  Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag({
    required this.description,
    required this.rate,
    required this.effectiveFrom,
    required this.effectiveTo,
    this.$__typename = 'DepotPremiumTag',
  });

  factory Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag.fromJson(
      Map<String, dynamic> json) {
    final l$description = json['description'];
    final l$rate = json['rate'];
    final l$effectiveFrom = json['effectiveFrom'];
    final l$effectiveTo = json['effectiveTo'];
    final l$$__typename = json['__typename'];
    return Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag(
      description: (l$description as String),
      rate:
          Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate
              .fromJson((l$rate as Map<String, dynamic>)),
      effectiveFrom: DateTime.parse((l$effectiveFrom as String)),
      effectiveTo: DateTime.parse((l$effectiveTo as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String description;

  final Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate
      rate;

  final DateTime effectiveFrom;

  final DateTime effectiveTo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$description = description;
    _resultData['description'] = l$description;
    final l$rate = rate;
    _resultData['rate'] = l$rate.toJson();
    final l$effectiveFrom = effectiveFrom;
    _resultData['effectiveFrom'] = l$effectiveFrom.toIso8601String();
    final l$effectiveTo = effectiveTo;
    _resultData['effectiveTo'] = l$effectiveTo.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$rate = rate;
    final l$effectiveFrom = effectiveFrom;
    final l$effectiveTo = effectiveTo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$description,
      l$rate,
      l$effectiveFrom,
      l$effectiveTo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$effectiveFrom = effectiveFrom;
    final lOther$effectiveFrom = other.effectiveFrom;
    if (l$effectiveFrom != lOther$effectiveFrom) {
      return false;
    }
    final l$effectiveTo = effectiveTo;
    final lOther$effectiveTo = other.effectiveTo;
    if (l$effectiveTo != lOther$effectiveTo) {
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

extension UtilityExtension$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag
    on Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag {
  CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag<
          Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag>
      get copyWith =>
          CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag<
    TRes> {
  factory CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag(
    Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag instance,
    TRes Function(
            Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag)
        then,
  ) = _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag;

  factory CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag;

  TRes call({
    String? description,
    Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate? rate,
    DateTime? effectiveFrom,
    DateTime? effectiveTo,
    String? $__typename,
  });
  CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate<
      TRes> get rate;
}

class _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag<
        TRes>
    implements
        CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag<
            TRes> {
  _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag(
    this._instance,
    this._then,
  );

  final Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag
      _instance;

  final TRes Function(
      Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? rate = _undefined,
    Object? effectiveFrom = _undefined,
    Object? effectiveTo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag(
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        rate: rate == _undefined || rate == null
            ? _instance.rate
            : (rate
                as Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate),
        effectiveFrom: effectiveFrom == _undefined || effectiveFrom == null
            ? _instance.effectiveFrom
            : (effectiveFrom as DateTime),
        effectiveTo: effectiveTo == _undefined || effectiveTo == null
            ? _instance.effectiveTo
            : (effectiveTo as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate<
      TRes> get rate {
    final local$rate = _instance.rate;
    return CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate(
        local$rate, (e) => call(rate: e));
  }
}

class _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag<
        TRes>
    implements
        CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag<
            TRes> {
  _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag(
      this._res);

  TRes _res;

  call({
    String? description,
    Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate? rate,
    DateTime? effectiveFrom,
    DateTime? effectiveTo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate<
          TRes>
      get rate =>
          CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate
              .stub(_res);
}

class Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate {
  Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'UomValue',
  });

  factory Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate
    on Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate {
  CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate<
          Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate>
      get copyWith =>
          CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate<
    TRes> {
  factory CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate(
    Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate
        instance,
    TRes Function(
            Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate)
        then,
  ) = _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate;

  factory CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate;

  TRes call({
    Enum$Uom? uom,
    double? value,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate<
        TRes>
    implements
        CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate<
            TRes> {
  _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate(
    this._instance,
    this._then,
  );

  final Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate
      _instance;

  final TRes Function(
          Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate<
        TRes>
    implements
        CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate<
            TRes> {
  _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$tags$$DepotPremiumTag$rate(
      this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag
    implements Query$GetAdminPricingData$adminPricingData$tags {
  Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag({
    required this.description,
    required this.locationCode,
    required this.fullyCharged,
    required this.haulageRate,
    required this.showToCustomer,
    required this.rate,
    this.$__typename = 'CollectedTag',
  });

  factory Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag.fromJson(
      Map<String, dynamic> json) {
    final l$description = json['description'];
    final l$locationCode = json['locationCode'];
    final l$fullyCharged = json['fullyCharged'];
    final l$haulageRate = json['haulageRate'];
    final l$showToCustomer = json['showToCustomer'];
    final l$rate = json['rate'];
    final l$$__typename = json['__typename'];
    return Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag(
      description: (l$description as String),
      locationCode: (l$locationCode as String),
      fullyCharged: (l$fullyCharged as bool),
      haulageRate:
          Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate
              .fromJson((l$haulageRate as Map<String, dynamic>)),
      showToCustomer: (l$showToCustomer as bool),
      rate: Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate
          .fromJson((l$rate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String description;

  final String locationCode;

  final bool fullyCharged;

  final Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate
      haulageRate;

  final bool showToCustomer;

  final Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate rate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$description = description;
    _resultData['description'] = l$description;
    final l$locationCode = locationCode;
    _resultData['locationCode'] = l$locationCode;
    final l$fullyCharged = fullyCharged;
    _resultData['fullyCharged'] = l$fullyCharged;
    final l$haulageRate = haulageRate;
    _resultData['haulageRate'] = l$haulageRate.toJson();
    final l$showToCustomer = showToCustomer;
    _resultData['showToCustomer'] = l$showToCustomer;
    final l$rate = rate;
    _resultData['rate'] = l$rate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$locationCode = locationCode;
    final l$fullyCharged = fullyCharged;
    final l$haulageRate = haulageRate;
    final l$showToCustomer = showToCustomer;
    final l$rate = rate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$description,
      l$locationCode,
      l$fullyCharged,
      l$haulageRate,
      l$showToCustomer,
      l$rate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$locationCode = locationCode;
    final lOther$locationCode = other.locationCode;
    if (l$locationCode != lOther$locationCode) {
      return false;
    }
    final l$fullyCharged = fullyCharged;
    final lOther$fullyCharged = other.fullyCharged;
    if (l$fullyCharged != lOther$fullyCharged) {
      return false;
    }
    final l$haulageRate = haulageRate;
    final lOther$haulageRate = other.haulageRate;
    if (l$haulageRate != lOther$haulageRate) {
      return false;
    }
    final l$showToCustomer = showToCustomer;
    final lOther$showToCustomer = other.showToCustomer;
    if (l$showToCustomer != lOther$showToCustomer) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
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

extension UtilityExtension$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag
    on Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag {
  CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag<
          Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag>
      get copyWith =>
          CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag<
    TRes> {
  factory CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag(
    Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag instance,
    TRes Function(Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag)
        then,
  ) = _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag;

  factory CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag;

  TRes call({
    String? description,
    String? locationCode,
    bool? fullyCharged,
    Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate?
        haulageRate,
    bool? showToCustomer,
    Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate? rate,
    String? $__typename,
  });
  CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate<
      TRes> get haulageRate;
  CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate<
      TRes> get rate;
}

class _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag<
        TRes>
    implements
        CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag<
            TRes> {
  _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag(
    this._instance,
    this._then,
  );

  final Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag _instance;

  final TRes Function(
      Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? locationCode = _undefined,
    Object? fullyCharged = _undefined,
    Object? haulageRate = _undefined,
    Object? showToCustomer = _undefined,
    Object? rate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag(
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        locationCode: locationCode == _undefined || locationCode == null
            ? _instance.locationCode
            : (locationCode as String),
        fullyCharged: fullyCharged == _undefined || fullyCharged == null
            ? _instance.fullyCharged
            : (fullyCharged as bool),
        haulageRate: haulageRate == _undefined || haulageRate == null
            ? _instance.haulageRate
            : (haulageRate
                as Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate),
        showToCustomer: showToCustomer == _undefined || showToCustomer == null
            ? _instance.showToCustomer
            : (showToCustomer as bool),
        rate: rate == _undefined || rate == null
            ? _instance.rate
            : (rate
                as Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate<
      TRes> get haulageRate {
    final local$haulageRate = _instance.haulageRate;
    return CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate(
        local$haulageRate, (e) => call(haulageRate: e));
  }

  CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate<
      TRes> get rate {
    final local$rate = _instance.rate;
    return CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate(
        local$rate, (e) => call(rate: e));
  }
}

class _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag<
        TRes>
    implements
        CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag<
            TRes> {
  _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag(
      this._res);

  TRes _res;

  call({
    String? description,
    String? locationCode,
    bool? fullyCharged,
    Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate?
        haulageRate,
    bool? showToCustomer,
    Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate? rate,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate<
          TRes>
      get haulageRate =>
          CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate
              .stub(_res);

  CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate<
          TRes>
      get rate =>
          CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate
              .stub(_res);
}

class Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate {
  Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'UomValue',
  });

  factory Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate
    on Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate {
  CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate<
          Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate>
      get copyWith =>
          CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate<
    TRes> {
  factory CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate(
    Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate
        instance,
    TRes Function(
            Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate)
        then,
  ) = _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate;

  factory CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate;

  TRes call({
    Enum$Uom? uom,
    double? value,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate<
        TRes>
    implements
        CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate<
            TRes> {
  _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate(
    this._instance,
    this._then,
  );

  final Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate
      _instance;

  final TRes Function(
          Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate<
        TRes>
    implements
        CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate<
            TRes> {
  _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$haulageRate(
      this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate {
  Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'UomValue',
  });

  factory Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate
    on Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate {
  CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate<
          Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate>
      get copyWith =>
          CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate<
    TRes> {
  factory CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate(
    Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate instance,
    TRes Function(
            Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate)
        then,
  ) = _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate;

  factory CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate;

  TRes call({
    Enum$Uom? uom,
    double? value,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate<
        TRes>
    implements
        CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate<
            TRes> {
  _CopyWithImpl$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate(
    this._instance,
    this._then,
  );

  final Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate
      _instance;

  final TRes Function(
      Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate<
        TRes>
    implements
        CopyWith$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate<
            TRes> {
  _CopyWithStubImpl$Query$GetAdminPricingData$adminPricingData$tags$$CollectedTag$rate(
      this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    int? id,
    String? $__typename,
  }) =>
      _res;
}
