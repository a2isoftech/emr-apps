import 'package:gql/ast.dart';

class Variables$Query$GetMarketPrices {
  factory Variables$Query$GetMarketPrices({
    required String productType,
    required String territoryCode,
    DateTime? cutOffDate,
  }) =>
      Variables$Query$GetMarketPrices._({
        r'productType': productType,
        r'territoryCode': territoryCode,
        if (cutOffDate != null) r'cutOffDate': cutOffDate,
      });

  Variables$Query$GetMarketPrices._(this._$data);

  factory Variables$Query$GetMarketPrices.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$productType = data['productType'];
    result$data['productType'] = (l$productType as String);
    final l$territoryCode = data['territoryCode'];
    result$data['territoryCode'] = (l$territoryCode as String);
    if (data.containsKey('cutOffDate')) {
      final l$cutOffDate = data['cutOffDate'];
      result$data['cutOffDate'] = l$cutOffDate == null
          ? null
          : DateTime.parse((l$cutOffDate as String));
    }
    return Variables$Query$GetMarketPrices._(result$data);
  }

  Map<String, dynamic> _$data;

  String get productType => (_$data['productType'] as String);

  String get territoryCode => (_$data['territoryCode'] as String);

  DateTime? get cutOffDate => (_$data['cutOffDate'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$productType = productType;
    result$data['productType'] = l$productType;
    final l$territoryCode = territoryCode;
    result$data['territoryCode'] = l$territoryCode;
    if (_$data.containsKey('cutOffDate')) {
      final l$cutOffDate = cutOffDate;
      result$data['cutOffDate'] = l$cutOffDate?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetMarketPrices<Variables$Query$GetMarketPrices>
      get copyWith => CopyWith$Variables$Query$GetMarketPrices(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetMarketPrices ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$productType = productType;
    final lOther$productType = other.productType;
    if (l$productType != lOther$productType) {
      return false;
    }
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (l$territoryCode != lOther$territoryCode) {
      return false;
    }
    final l$cutOffDate = cutOffDate;
    final lOther$cutOffDate = other.cutOffDate;
    if (_$data.containsKey('cutOffDate') !=
        other._$data.containsKey('cutOffDate')) {
      return false;
    }
    if (l$cutOffDate != lOther$cutOffDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$productType = productType;
    final l$territoryCode = territoryCode;
    final l$cutOffDate = cutOffDate;
    return Object.hashAll([
      l$productType,
      l$territoryCode,
      _$data.containsKey('cutOffDate') ? l$cutOffDate : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetMarketPrices<TRes> {
  factory CopyWith$Variables$Query$GetMarketPrices(
    Variables$Query$GetMarketPrices instance,
    TRes Function(Variables$Query$GetMarketPrices) then,
  ) = _CopyWithImpl$Variables$Query$GetMarketPrices;

  factory CopyWith$Variables$Query$GetMarketPrices.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetMarketPrices;

  TRes call({
    String? productType,
    String? territoryCode,
    DateTime? cutOffDate,
  });
}

class _CopyWithImpl$Variables$Query$GetMarketPrices<TRes>
    implements CopyWith$Variables$Query$GetMarketPrices<TRes> {
  _CopyWithImpl$Variables$Query$GetMarketPrices(
    this._instance,
    this._then,
  );

  final Variables$Query$GetMarketPrices _instance;

  final TRes Function(Variables$Query$GetMarketPrices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productType = _undefined,
    Object? territoryCode = _undefined,
    Object? cutOffDate = _undefined,
  }) =>
      _then(Variables$Query$GetMarketPrices._({
        ..._instance._$data,
        if (productType != _undefined && productType != null)
          'productType': (productType as String),
        if (territoryCode != _undefined && territoryCode != null)
          'territoryCode': (territoryCode as String),
        if (cutOffDate != _undefined) 'cutOffDate': (cutOffDate as DateTime?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetMarketPrices<TRes>
    implements CopyWith$Variables$Query$GetMarketPrices<TRes> {
  _CopyWithStubImpl$Variables$Query$GetMarketPrices(this._res);

  TRes _res;

  call({
    String? productType,
    String? territoryCode,
    DateTime? cutOffDate,
  }) =>
      _res;
}

class Query$GetMarketPrices {
  Query$GetMarketPrices({
    this.marketPrice,
    this.$__typename = 'Query',
  });

  factory Query$GetMarketPrices.fromJson(Map<String, dynamic> json) {
    final l$marketPrice = json['marketPrice'];
    final l$$__typename = json['__typename'];
    return Query$GetMarketPrices(
      marketPrice: l$marketPrice == null
          ? null
          : Query$GetMarketPrices$marketPrice.fromJson(
              (l$marketPrice as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetMarketPrices$marketPrice? marketPrice;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$marketPrice = marketPrice;
    _resultData['marketPrice'] = l$marketPrice?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$marketPrice = marketPrice;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$marketPrice,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMarketPrices || runtimeType != other.runtimeType) {
      return false;
    }
    final l$marketPrice = marketPrice;
    final lOther$marketPrice = other.marketPrice;
    if (l$marketPrice != lOther$marketPrice) {
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

extension UtilityExtension$Query$GetMarketPrices on Query$GetMarketPrices {
  CopyWith$Query$GetMarketPrices<Query$GetMarketPrices> get copyWith =>
      CopyWith$Query$GetMarketPrices(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMarketPrices<TRes> {
  factory CopyWith$Query$GetMarketPrices(
    Query$GetMarketPrices instance,
    TRes Function(Query$GetMarketPrices) then,
  ) = _CopyWithImpl$Query$GetMarketPrices;

  factory CopyWith$Query$GetMarketPrices.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMarketPrices;

  TRes call({
    Query$GetMarketPrices$marketPrice? marketPrice,
    String? $__typename,
  });
  CopyWith$Query$GetMarketPrices$marketPrice<TRes> get marketPrice;
}

class _CopyWithImpl$Query$GetMarketPrices<TRes>
    implements CopyWith$Query$GetMarketPrices<TRes> {
  _CopyWithImpl$Query$GetMarketPrices(
    this._instance,
    this._then,
  );

  final Query$GetMarketPrices _instance;

  final TRes Function(Query$GetMarketPrices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? marketPrice = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMarketPrices(
        marketPrice: marketPrice == _undefined
            ? _instance.marketPrice
            : (marketPrice as Query$GetMarketPrices$marketPrice?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMarketPrices$marketPrice<TRes> get marketPrice {
    final local$marketPrice = _instance.marketPrice;
    return local$marketPrice == null
        ? CopyWith$Query$GetMarketPrices$marketPrice.stub(_then(_instance))
        : CopyWith$Query$GetMarketPrices$marketPrice(
            local$marketPrice, (e) => call(marketPrice: e));
  }
}

class _CopyWithStubImpl$Query$GetMarketPrices<TRes>
    implements CopyWith$Query$GetMarketPrices<TRes> {
  _CopyWithStubImpl$Query$GetMarketPrices(this._res);

  TRes _res;

  call({
    Query$GetMarketPrices$marketPrice? marketPrice,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMarketPrices$marketPrice<TRes> get marketPrice =>
      CopyWith$Query$GetMarketPrices$marketPrice.stub(_res);
}

const documentNodeQueryGetMarketPrices = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetMarketPrices'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'productType')),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cutOffDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'DateTime'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'marketPrice'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'productType'),
            value: VariableNode(name: NameNode(value: 'productType')),
          ),
          ArgumentNode(
            name: NameNode(value: 'territoryCode'),
            value: VariableNode(name: NameNode(value: 'territoryCode')),
          ),
          ArgumentNode(
            name: NameNode(value: 'cutOffDate'),
            value: VariableNode(name: NameNode(value: 'cutOffDate')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'productType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'territory'),
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
                name: NameNode(value: 'createdDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'amount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'updatedDate'),
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
            name: NameNode(value: 'updatedDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'totalMWPValue'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'currency'),
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

class Query$GetMarketPrices$marketPrice {
  Query$GetMarketPrices$marketPrice({
    required this.productType,
    required this.territory,
    this.prices,
    this.updatedDate,
    required this.totalMWPValue,
    required this.currency,
    this.$__typename = 'MarketPriceResult',
  });

  factory Query$GetMarketPrices$marketPrice.fromJson(
      Map<String, dynamic> json) {
    final l$productType = json['productType'];
    final l$territory = json['territory'];
    final l$prices = json['prices'];
    final l$updatedDate = json['updatedDate'];
    final l$totalMWPValue = json['totalMWPValue'];
    final l$currency = json['currency'];
    final l$$__typename = json['__typename'];
    return Query$GetMarketPrices$marketPrice(
      productType: (l$productType as String),
      territory: (l$territory as String),
      prices: (l$prices as List<dynamic>?)
          ?.map((e) => Query$GetMarketPrices$marketPrice$prices.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      updatedDate: l$updatedDate == null
          ? null
          : DateTime.parse((l$updatedDate as String)),
      totalMWPValue: (l$totalMWPValue as num).toDouble(),
      currency: (l$currency as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String productType;

  final String territory;

  final List<Query$GetMarketPrices$marketPrice$prices>? prices;

  final DateTime? updatedDate;

  final double totalMWPValue;

  final String currency;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$productType = productType;
    _resultData['productType'] = l$productType;
    final l$territory = territory;
    _resultData['territory'] = l$territory;
    final l$prices = prices;
    _resultData['prices'] = l$prices?.map((e) => e.toJson()).toList();
    final l$updatedDate = updatedDate;
    _resultData['updatedDate'] = l$updatedDate?.toIso8601String();
    final l$totalMWPValue = totalMWPValue;
    _resultData['totalMWPValue'] = l$totalMWPValue;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$productType = productType;
    final l$territory = territory;
    final l$prices = prices;
    final l$updatedDate = updatedDate;
    final l$totalMWPValue = totalMWPValue;
    final l$currency = currency;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$productType,
      l$territory,
      l$prices == null ? null : Object.hashAll(l$prices.map((v) => v)),
      l$updatedDate,
      l$totalMWPValue,
      l$currency,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMarketPrices$marketPrice ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$productType = productType;
    final lOther$productType = other.productType;
    if (l$productType != lOther$productType) {
      return false;
    }
    final l$territory = territory;
    final lOther$territory = other.territory;
    if (l$territory != lOther$territory) {
      return false;
    }
    final l$prices = prices;
    final lOther$prices = other.prices;
    if (l$prices != null && lOther$prices != null) {
      if (l$prices.length != lOther$prices.length) {
        return false;
      }
      for (int i = 0; i < l$prices.length; i++) {
        final l$prices$entry = l$prices[i];
        final lOther$prices$entry = lOther$prices[i];
        if (l$prices$entry != lOther$prices$entry) {
          return false;
        }
      }
    } else if (l$prices != lOther$prices) {
      return false;
    }
    final l$updatedDate = updatedDate;
    final lOther$updatedDate = other.updatedDate;
    if (l$updatedDate != lOther$updatedDate) {
      return false;
    }
    final l$totalMWPValue = totalMWPValue;
    final lOther$totalMWPValue = other.totalMWPValue;
    if (l$totalMWPValue != lOther$totalMWPValue) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
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

extension UtilityExtension$Query$GetMarketPrices$marketPrice
    on Query$GetMarketPrices$marketPrice {
  CopyWith$Query$GetMarketPrices$marketPrice<Query$GetMarketPrices$marketPrice>
      get copyWith => CopyWith$Query$GetMarketPrices$marketPrice(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMarketPrices$marketPrice<TRes> {
  factory CopyWith$Query$GetMarketPrices$marketPrice(
    Query$GetMarketPrices$marketPrice instance,
    TRes Function(Query$GetMarketPrices$marketPrice) then,
  ) = _CopyWithImpl$Query$GetMarketPrices$marketPrice;

  factory CopyWith$Query$GetMarketPrices$marketPrice.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMarketPrices$marketPrice;

  TRes call({
    String? productType,
    String? territory,
    List<Query$GetMarketPrices$marketPrice$prices>? prices,
    DateTime? updatedDate,
    double? totalMWPValue,
    String? currency,
    String? $__typename,
  });
  TRes prices(
      Iterable<Query$GetMarketPrices$marketPrice$prices>? Function(
              Iterable<
                  CopyWith$Query$GetMarketPrices$marketPrice$prices<
                      Query$GetMarketPrices$marketPrice$prices>>?)
          _fn);
}

class _CopyWithImpl$Query$GetMarketPrices$marketPrice<TRes>
    implements CopyWith$Query$GetMarketPrices$marketPrice<TRes> {
  _CopyWithImpl$Query$GetMarketPrices$marketPrice(
    this._instance,
    this._then,
  );

  final Query$GetMarketPrices$marketPrice _instance;

  final TRes Function(Query$GetMarketPrices$marketPrice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productType = _undefined,
    Object? territory = _undefined,
    Object? prices = _undefined,
    Object? updatedDate = _undefined,
    Object? totalMWPValue = _undefined,
    Object? currency = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMarketPrices$marketPrice(
        productType: productType == _undefined || productType == null
            ? _instance.productType
            : (productType as String),
        territory: territory == _undefined || territory == null
            ? _instance.territory
            : (territory as String),
        prices: prices == _undefined
            ? _instance.prices
            : (prices as List<Query$GetMarketPrices$marketPrice$prices>?),
        updatedDate: updatedDate == _undefined
            ? _instance.updatedDate
            : (updatedDate as DateTime?),
        totalMWPValue: totalMWPValue == _undefined || totalMWPValue == null
            ? _instance.totalMWPValue
            : (totalMWPValue as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes prices(
          Iterable<Query$GetMarketPrices$marketPrice$prices>? Function(
                  Iterable<
                      CopyWith$Query$GetMarketPrices$marketPrice$prices<
                          Query$GetMarketPrices$marketPrice$prices>>?)
              _fn) =>
      call(
          prices: _fn(_instance.prices
              ?.map((e) => CopyWith$Query$GetMarketPrices$marketPrice$prices(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$GetMarketPrices$marketPrice<TRes>
    implements CopyWith$Query$GetMarketPrices$marketPrice<TRes> {
  _CopyWithStubImpl$Query$GetMarketPrices$marketPrice(this._res);

  TRes _res;

  call({
    String? productType,
    String? territory,
    List<Query$GetMarketPrices$marketPrice$prices>? prices,
    DateTime? updatedDate,
    double? totalMWPValue,
    String? currency,
    String? $__typename,
  }) =>
      _res;

  prices(_fn) => _res;
}

class Query$GetMarketPrices$marketPrice$prices {
  Query$GetMarketPrices$marketPrice$prices({
    this.createdDate,
    required this.amount,
    this.updatedDate,
    this.$__typename = 'Price',
  });

  factory Query$GetMarketPrices$marketPrice$prices.fromJson(
      Map<String, dynamic> json) {
    final l$createdDate = json['createdDate'];
    final l$amount = json['amount'];
    final l$updatedDate = json['updatedDate'];
    final l$$__typename = json['__typename'];
    return Query$GetMarketPrices$marketPrice$prices(
      createdDate: l$createdDate == null
          ? null
          : DateTime.parse((l$createdDate as String)),
      amount: (l$amount as num).toDouble(),
      updatedDate: l$updatedDate == null
          ? null
          : DateTime.parse((l$updatedDate as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? createdDate;

  final double amount;

  final DateTime? updatedDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createdDate = createdDate;
    _resultData['createdDate'] = l$createdDate?.toIso8601String();
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$updatedDate = updatedDate;
    _resultData['updatedDate'] = l$updatedDate?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createdDate = createdDate;
    final l$amount = amount;
    final l$updatedDate = updatedDate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createdDate,
      l$amount,
      l$updatedDate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMarketPrices$marketPrice$prices ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$updatedDate = updatedDate;
    final lOther$updatedDate = other.updatedDate;
    if (l$updatedDate != lOther$updatedDate) {
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

extension UtilityExtension$Query$GetMarketPrices$marketPrice$prices
    on Query$GetMarketPrices$marketPrice$prices {
  CopyWith$Query$GetMarketPrices$marketPrice$prices<
          Query$GetMarketPrices$marketPrice$prices>
      get copyWith => CopyWith$Query$GetMarketPrices$marketPrice$prices(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMarketPrices$marketPrice$prices<TRes> {
  factory CopyWith$Query$GetMarketPrices$marketPrice$prices(
    Query$GetMarketPrices$marketPrice$prices instance,
    TRes Function(Query$GetMarketPrices$marketPrice$prices) then,
  ) = _CopyWithImpl$Query$GetMarketPrices$marketPrice$prices;

  factory CopyWith$Query$GetMarketPrices$marketPrice$prices.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMarketPrices$marketPrice$prices;

  TRes call({
    DateTime? createdDate,
    double? amount,
    DateTime? updatedDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMarketPrices$marketPrice$prices<TRes>
    implements CopyWith$Query$GetMarketPrices$marketPrice$prices<TRes> {
  _CopyWithImpl$Query$GetMarketPrices$marketPrice$prices(
    this._instance,
    this._then,
  );

  final Query$GetMarketPrices$marketPrice$prices _instance;

  final TRes Function(Query$GetMarketPrices$marketPrice$prices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdDate = _undefined,
    Object? amount = _undefined,
    Object? updatedDate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMarketPrices$marketPrice$prices(
        createdDate: createdDate == _undefined
            ? _instance.createdDate
            : (createdDate as DateTime?),
        amount: amount == _undefined || amount == null
            ? _instance.amount
            : (amount as double),
        updatedDate: updatedDate == _undefined
            ? _instance.updatedDate
            : (updatedDate as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMarketPrices$marketPrice$prices<TRes>
    implements CopyWith$Query$GetMarketPrices$marketPrice$prices<TRes> {
  _CopyWithStubImpl$Query$GetMarketPrices$marketPrice$prices(this._res);

  TRes _res;

  call({
    DateTime? createdDate,
    double? amount,
    DateTime? updatedDate,
    String? $__typename,
  }) =>
      _res;
}
