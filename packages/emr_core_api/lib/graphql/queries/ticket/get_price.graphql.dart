import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetPrice {
  factory Variables$Query$GetPrice({
    required List<String> accountIds,
    required List<String> productIds,
    required List<String> yardIds,
  }) => Variables$Query$GetPrice._({
    r'accountIds': accountIds,
    r'productIds': productIds,
    r'yardIds': yardIds,
  });

  Variables$Query$GetPrice._(this._$data);

  factory Variables$Query$GetPrice.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$accountIds = data['accountIds'];
    result$data['accountIds'] = (l$accountIds as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    final l$productIds = data['productIds'];
    result$data['productIds'] = (l$productIds as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    final l$yardIds = data['yardIds'];
    result$data['yardIds'] = (l$yardIds as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    return Variables$Query$GetPrice._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get accountIds => (_$data['accountIds'] as List<String>);

  List<String> get productIds => (_$data['productIds'] as List<String>);

  List<String> get yardIds => (_$data['yardIds'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accountIds = accountIds;
    result$data['accountIds'] = l$accountIds.map((e) => e).toList();
    final l$productIds = productIds;
    result$data['productIds'] = l$productIds.map((e) => e).toList();
    final l$yardIds = yardIds;
    result$data['yardIds'] = l$yardIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Query$GetPrice<Variables$Query$GetPrice> get copyWith =>
      CopyWith$Variables$Query$GetPrice(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetPrice ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountIds = accountIds;
    final lOther$accountIds = other.accountIds;
    if (l$accountIds.length != lOther$accountIds.length) {
      return false;
    }
    for (int i = 0; i < l$accountIds.length; i++) {
      final l$accountIds$entry = l$accountIds[i];
      final lOther$accountIds$entry = lOther$accountIds[i];
      if (l$accountIds$entry != lOther$accountIds$entry) {
        return false;
      }
    }
    final l$productIds = productIds;
    final lOther$productIds = other.productIds;
    if (l$productIds.length != lOther$productIds.length) {
      return false;
    }
    for (int i = 0; i < l$productIds.length; i++) {
      final l$productIds$entry = l$productIds[i];
      final lOther$productIds$entry = lOther$productIds[i];
      if (l$productIds$entry != lOther$productIds$entry) {
        return false;
      }
    }
    final l$yardIds = yardIds;
    final lOther$yardIds = other.yardIds;
    if (l$yardIds.length != lOther$yardIds.length) {
      return false;
    }
    for (int i = 0; i < l$yardIds.length; i++) {
      final l$yardIds$entry = l$yardIds[i];
      final lOther$yardIds$entry = lOther$yardIds[i];
      if (l$yardIds$entry != lOther$yardIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountIds = accountIds;
    final l$productIds = productIds;
    final l$yardIds = yardIds;
    return Object.hashAll([
      Object.hashAll(l$accountIds.map((v) => v)),
      Object.hashAll(l$productIds.map((v) => v)),
      Object.hashAll(l$yardIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetPrice<TRes> {
  factory CopyWith$Variables$Query$GetPrice(
    Variables$Query$GetPrice instance,
    TRes Function(Variables$Query$GetPrice) then,
  ) = _CopyWithImpl$Variables$Query$GetPrice;

  factory CopyWith$Variables$Query$GetPrice.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetPrice;

  TRes call({
    List<String>? accountIds,
    List<String>? productIds,
    List<String>? yardIds,
  });
}

class _CopyWithImpl$Variables$Query$GetPrice<TRes>
    implements CopyWith$Variables$Query$GetPrice<TRes> {
  _CopyWithImpl$Variables$Query$GetPrice(this._instance, this._then);

  final Variables$Query$GetPrice _instance;

  final TRes Function(Variables$Query$GetPrice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountIds = _undefined,
    Object? productIds = _undefined,
    Object? yardIds = _undefined,
  }) => _then(
    Variables$Query$GetPrice._({
      ..._instance._$data,
      if (accountIds != _undefined && accountIds != null)
        'accountIds': (accountIds as List<String>),
      if (productIds != _undefined && productIds != null)
        'productIds': (productIds as List<String>),
      if (yardIds != _undefined && yardIds != null)
        'yardIds': (yardIds as List<String>),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetPrice<TRes>
    implements CopyWith$Variables$Query$GetPrice<TRes> {
  _CopyWithStubImpl$Variables$Query$GetPrice(this._res);

  TRes _res;

  call({
    List<String>? accountIds,
    List<String>? productIds,
    List<String>? yardIds,
  }) => _res;
}

class Query$GetPrice {
  Query$GetPrice({required this.pricesForAccounts, this.$__typename = 'Query'});

  factory Query$GetPrice.fromJson(Map<String, dynamic> json) {
    final l$pricesForAccounts = json['pricesForAccounts'];
    final l$$__typename = json['__typename'];
    return Query$GetPrice(
      pricesForAccounts: (l$pricesForAccounts as List<dynamic>)
          .map(
            (e) => Query$GetPrice$pricesForAccounts.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetPrice$pricesForAccounts> pricesForAccounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pricesForAccounts = pricesForAccounts;
    _resultData['pricesForAccounts'] = l$pricesForAccounts
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pricesForAccounts = pricesForAccounts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$pricesForAccounts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPrice || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pricesForAccounts = pricesForAccounts;
    final lOther$pricesForAccounts = other.pricesForAccounts;
    if (l$pricesForAccounts.length != lOther$pricesForAccounts.length) {
      return false;
    }
    for (int i = 0; i < l$pricesForAccounts.length; i++) {
      final l$pricesForAccounts$entry = l$pricesForAccounts[i];
      final lOther$pricesForAccounts$entry = lOther$pricesForAccounts[i];
      if (l$pricesForAccounts$entry != lOther$pricesForAccounts$entry) {
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

extension UtilityExtension$Query$GetPrice on Query$GetPrice {
  CopyWith$Query$GetPrice<Query$GetPrice> get copyWith =>
      CopyWith$Query$GetPrice(this, (i) => i);
}

abstract class CopyWith$Query$GetPrice<TRes> {
  factory CopyWith$Query$GetPrice(
    Query$GetPrice instance,
    TRes Function(Query$GetPrice) then,
  ) = _CopyWithImpl$Query$GetPrice;

  factory CopyWith$Query$GetPrice.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPrice;

  TRes call({
    List<Query$GetPrice$pricesForAccounts>? pricesForAccounts,
    String? $__typename,
  });
  TRes pricesForAccounts(
    Iterable<Query$GetPrice$pricesForAccounts> Function(
      Iterable<
        CopyWith$Query$GetPrice$pricesForAccounts<
          Query$GetPrice$pricesForAccounts
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetPrice<TRes>
    implements CopyWith$Query$GetPrice<TRes> {
  _CopyWithImpl$Query$GetPrice(this._instance, this._then);

  final Query$GetPrice _instance;

  final TRes Function(Query$GetPrice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pricesForAccounts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPrice(
      pricesForAccounts:
          pricesForAccounts == _undefined || pricesForAccounts == null
          ? _instance.pricesForAccounts
          : (pricesForAccounts as List<Query$GetPrice$pricesForAccounts>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes pricesForAccounts(
    Iterable<Query$GetPrice$pricesForAccounts> Function(
      Iterable<
        CopyWith$Query$GetPrice$pricesForAccounts<
          Query$GetPrice$pricesForAccounts
        >
      >,
    )
    _fn,
  ) => call(
    pricesForAccounts: _fn(
      _instance.pricesForAccounts.map(
        (e) => CopyWith$Query$GetPrice$pricesForAccounts(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetPrice<TRes>
    implements CopyWith$Query$GetPrice<TRes> {
  _CopyWithStubImpl$Query$GetPrice(this._res);

  TRes _res;

  call({
    List<Query$GetPrice$pricesForAccounts>? pricesForAccounts,
    String? $__typename,
  }) => _res;

  pricesForAccounts(_fn) => _res;
}

const documentNodeQueryGetPrice = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetPrice'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'accountIds')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'productIds')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'yardIds')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'pricesForAccounts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'accountIds'),
                value: VariableNode(name: NameNode(value: 'accountIds')),
              ),
              ArgumentNode(
                name: NameNode(value: 'productIds'),
                value: VariableNode(name: NameNode(value: 'productIds')),
              ),
              ArgumentNode(
                name: NameNode(value: 'yardIds'),
                value: VariableNode(name: NameNode(value: 'yardIds')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'accountId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'yards'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'key'),
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
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'productsByDeliveryMethod'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'key'),
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
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'products'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'key'),
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
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: 'rate',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'id',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'isRate',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'mtValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'uom',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'value',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value:
                                                                      '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                            ],
                                                          ),
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                      ],
                                    ),
                                  ),
                                  FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                ],
                              ),
                            ),
                            FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);

class Query$GetPrice$pricesForAccounts {
  Query$GetPrice$pricesForAccounts({
    required this.accountId,
    required this.yards,
    this.$__typename = 'AccountPrices',
  });

  factory Query$GetPrice$pricesForAccounts.fromJson(Map<String, dynamic> json) {
    final l$accountId = json['accountId'];
    final l$yards = json['yards'];
    final l$$__typename = json['__typename'];
    return Query$GetPrice$pricesForAccounts(
      accountId: (l$accountId as String),
      yards: (l$yards as List<dynamic>)
          .map(
            (e) => Query$GetPrice$pricesForAccounts$yards.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String accountId;

  final List<Query$GetPrice$pricesForAccounts$yards> yards;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountId = accountId;
    _resultData['accountId'] = l$accountId;
    final l$yards = yards;
    _resultData['yards'] = l$yards.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountId = accountId;
    final l$yards = yards;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountId,
      Object.hashAll(l$yards.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPrice$pricesForAccounts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$yards = yards;
    final lOther$yards = other.yards;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPrice$pricesForAccounts
    on Query$GetPrice$pricesForAccounts {
  CopyWith$Query$GetPrice$pricesForAccounts<Query$GetPrice$pricesForAccounts>
  get copyWith => CopyWith$Query$GetPrice$pricesForAccounts(this, (i) => i);
}

abstract class CopyWith$Query$GetPrice$pricesForAccounts<TRes> {
  factory CopyWith$Query$GetPrice$pricesForAccounts(
    Query$GetPrice$pricesForAccounts instance,
    TRes Function(Query$GetPrice$pricesForAccounts) then,
  ) = _CopyWithImpl$Query$GetPrice$pricesForAccounts;

  factory CopyWith$Query$GetPrice$pricesForAccounts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPrice$pricesForAccounts;

  TRes call({
    String? accountId,
    List<Query$GetPrice$pricesForAccounts$yards>? yards,
    String? $__typename,
  });
  TRes yards(
    Iterable<Query$GetPrice$pricesForAccounts$yards> Function(
      Iterable<
        CopyWith$Query$GetPrice$pricesForAccounts$yards<
          Query$GetPrice$pricesForAccounts$yards
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetPrice$pricesForAccounts<TRes>
    implements CopyWith$Query$GetPrice$pricesForAccounts<TRes> {
  _CopyWithImpl$Query$GetPrice$pricesForAccounts(this._instance, this._then);

  final Query$GetPrice$pricesForAccounts _instance;

  final TRes Function(Query$GetPrice$pricesForAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountId = _undefined,
    Object? yards = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPrice$pricesForAccounts(
      accountId: accountId == _undefined || accountId == null
          ? _instance.accountId
          : (accountId as String),
      yards: yards == _undefined || yards == null
          ? _instance.yards
          : (yards as List<Query$GetPrice$pricesForAccounts$yards>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes yards(
    Iterable<Query$GetPrice$pricesForAccounts$yards> Function(
      Iterable<
        CopyWith$Query$GetPrice$pricesForAccounts$yards<
          Query$GetPrice$pricesForAccounts$yards
        >
      >,
    )
    _fn,
  ) => call(
    yards: _fn(
      _instance.yards.map(
        (e) => CopyWith$Query$GetPrice$pricesForAccounts$yards(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetPrice$pricesForAccounts<TRes>
    implements CopyWith$Query$GetPrice$pricesForAccounts<TRes> {
  _CopyWithStubImpl$Query$GetPrice$pricesForAccounts(this._res);

  TRes _res;

  call({
    String? accountId,
    List<Query$GetPrice$pricesForAccounts$yards>? yards,
    String? $__typename,
  }) => _res;

  yards(_fn) => _res;
}

class Query$GetPrice$pricesForAccounts$yards {
  Query$GetPrice$pricesForAccounts$yards({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndYardPrices',
  });

  factory Query$GetPrice$pricesForAccounts$yards.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetPrice$pricesForAccounts$yards(
      key: (l$key as String),
      value: Query$GetPrice$pricesForAccounts$yards$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$GetPrice$pricesForAccounts$yards$value value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPrice$pricesForAccounts$yards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$GetPrice$pricesForAccounts$yards
    on Query$GetPrice$pricesForAccounts$yards {
  CopyWith$Query$GetPrice$pricesForAccounts$yards<
    Query$GetPrice$pricesForAccounts$yards
  >
  get copyWith =>
      CopyWith$Query$GetPrice$pricesForAccounts$yards(this, (i) => i);
}

abstract class CopyWith$Query$GetPrice$pricesForAccounts$yards<TRes> {
  factory CopyWith$Query$GetPrice$pricesForAccounts$yards(
    Query$GetPrice$pricesForAccounts$yards instance,
    TRes Function(Query$GetPrice$pricesForAccounts$yards) then,
  ) = _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards;

  factory CopyWith$Query$GetPrice$pricesForAccounts$yards.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards;

  TRes call({
    String? key,
    Query$GetPrice$pricesForAccounts$yards$value? value,
    String? $__typename,
  });
  CopyWith$Query$GetPrice$pricesForAccounts$yards$value<TRes> get value;
}

class _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards<TRes>
    implements CopyWith$Query$GetPrice$pricesForAccounts$yards<TRes> {
  _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards(
    this._instance,
    this._then,
  );

  final Query$GetPrice$pricesForAccounts$yards _instance;

  final TRes Function(Query$GetPrice$pricesForAccounts$yards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPrice$pricesForAccounts$yards(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Query$GetPrice$pricesForAccounts$yards$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetPrice$pricesForAccounts$yards$value<TRes> get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetPrice$pricesForAccounts$yards$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards<TRes>
    implements CopyWith$Query$GetPrice$pricesForAccounts$yards<TRes> {
  _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards(this._res);

  TRes _res;

  call({
    String? key,
    Query$GetPrice$pricesForAccounts$yards$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetPrice$pricesForAccounts$yards$value<TRes> get value =>
      CopyWith$Query$GetPrice$pricesForAccounts$yards$value.stub(_res);
}

class Query$GetPrice$pricesForAccounts$yards$value {
  Query$GetPrice$pricesForAccounts$yards$value({
    required this.productsByDeliveryMethod,
    this.$__typename = 'YardPrices',
  });

  factory Query$GetPrice$pricesForAccounts$yards$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$productsByDeliveryMethod = json['productsByDeliveryMethod'];
    final l$$__typename = json['__typename'];
    return Query$GetPrice$pricesForAccounts$yards$value(
      productsByDeliveryMethod: (l$productsByDeliveryMethod as List<dynamic>)
          .map(
            (e) =>
                Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod
  >
  productsByDeliveryMethod;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$productsByDeliveryMethod = productsByDeliveryMethod;
    _resultData['productsByDeliveryMethod'] = l$productsByDeliveryMethod
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$productsByDeliveryMethod = productsByDeliveryMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$productsByDeliveryMethod.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPrice$pricesForAccounts$yards$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$productsByDeliveryMethod = productsByDeliveryMethod;
    final lOther$productsByDeliveryMethod = other.productsByDeliveryMethod;
    if (l$productsByDeliveryMethod.length !=
        lOther$productsByDeliveryMethod.length) {
      return false;
    }
    for (int i = 0; i < l$productsByDeliveryMethod.length; i++) {
      final l$productsByDeliveryMethod$entry = l$productsByDeliveryMethod[i];
      final lOther$productsByDeliveryMethod$entry =
          lOther$productsByDeliveryMethod[i];
      if (l$productsByDeliveryMethod$entry !=
          lOther$productsByDeliveryMethod$entry) {
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

extension UtilityExtension$Query$GetPrice$pricesForAccounts$yards$value
    on Query$GetPrice$pricesForAccounts$yards$value {
  CopyWith$Query$GetPrice$pricesForAccounts$yards$value<
    Query$GetPrice$pricesForAccounts$yards$value
  >
  get copyWith =>
      CopyWith$Query$GetPrice$pricesForAccounts$yards$value(this, (i) => i);
}

abstract class CopyWith$Query$GetPrice$pricesForAccounts$yards$value<TRes> {
  factory CopyWith$Query$GetPrice$pricesForAccounts$yards$value(
    Query$GetPrice$pricesForAccounts$yards$value instance,
    TRes Function(Query$GetPrice$pricesForAccounts$yards$value) then,
  ) = _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards$value;

  factory CopyWith$Query$GetPrice$pricesForAccounts$yards$value.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards$value;

  TRes call({
    List<Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod>?
    productsByDeliveryMethod,
    String? $__typename,
  });
  TRes productsByDeliveryMethod(
    Iterable<
      Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod
    >
    Function(
      Iterable<
        CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod<
          Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards$value<TRes>
    implements CopyWith$Query$GetPrice$pricesForAccounts$yards$value<TRes> {
  _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards$value(
    this._instance,
    this._then,
  );

  final Query$GetPrice$pricesForAccounts$yards$value _instance;

  final TRes Function(Query$GetPrice$pricesForAccounts$yards$value) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productsByDeliveryMethod = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPrice$pricesForAccounts$yards$value(
      productsByDeliveryMethod:
          productsByDeliveryMethod == _undefined ||
              productsByDeliveryMethod == null
          ? _instance.productsByDeliveryMethod
          : (productsByDeliveryMethod
                as List<
                  Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes productsByDeliveryMethod(
    Iterable<
      Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod
    >
    Function(
      Iterable<
        CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod<
          Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod
        >
      >,
    )
    _fn,
  ) => call(
    productsByDeliveryMethod: _fn(
      _instance.productsByDeliveryMethod.map(
        (e) =>
            CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards$value<TRes>
    implements CopyWith$Query$GetPrice$pricesForAccounts$yards$value<TRes> {
  _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards$value(this._res);

  TRes _res;

  call({
    List<Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod>?
    productsByDeliveryMethod,
    String? $__typename,
  }) => _res;

  productsByDeliveryMethod(_fn) => _res;
}

class Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod {
  Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndDeliveryMethodRate',
  });

  factory Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod(
      key: (l$key as String),
      value:
          Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod
    on Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod {
  CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod<
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod
  >
  get copyWith =>
      CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod<
  TRes
> {
  factory CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod(
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod
    instance,
    TRes Function(
      Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod,
    )
    then,
  ) = _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod;

  factory CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod;

  TRes call({
    String? key,
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod<
  TRes
>
    implements
        CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod<
          TRes
        > {
  _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod(
    this._instance,
    this._then,
  );

  final Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod
  _instance;

  final TRes Function(
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod<
  TRes
>
    implements
        CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod<
          TRes
        > {
  _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value<
    TRes
  >
  get value =>
      CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value.stub(
        _res,
      );
}

class Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value {
  Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value({
    required this.products,
    this.$__typename = 'DeliveryMethodRate',
  });

  factory Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$products = json['products'];
    final l$$__typename = json['__typename'];
    return Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value(
      products: (l$products as List<dynamic>)
          .map(
            (e) =>
                Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products
  >
  products;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$products = products;
    _resultData['products'] = l$products.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$products = products;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$products.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$products = products;
    final lOther$products = other.products;
    if (l$products.length != lOther$products.length) {
      return false;
    }
    for (int i = 0; i < l$products.length; i++) {
      final l$products$entry = l$products[i];
      final lOther$products$entry = lOther$products[i];
      if (l$products$entry != lOther$products$entry) {
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

extension UtilityExtension$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value
    on Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value {
  CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value<
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value
  >
  get copyWith =>
      CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value<
  TRes
> {
  factory CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value(
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value
    instance,
    TRes Function(
      Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value,
    )
    then,
  ) = _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value;

  factory CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value;

  TRes call({
    List<
      Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products
    >?
    products,
    String? $__typename,
  });
  TRes products(
    Iterable<
      Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products
    >
    Function(
      Iterable<
        CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products<
          Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value<
  TRes
>
    implements
        CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value<
          TRes
        > {
  _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value(
    this._instance,
    this._then,
  );

  final Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value
  _instance;

  final TRes Function(
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? products = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value(
      products: products == _undefined || products == null
          ? _instance.products
          : (products
                as List<
                  Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes products(
    Iterable<
      Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products
    >
    Function(
      Iterable<
        CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products<
          Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products
        >
      >,
    )
    _fn,
  ) => call(
    products: _fn(
      _instance.products.map(
        (e) =>
            CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value<
  TRes
>
    implements
        CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value<
          TRes
        > {
  _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products
    >?
    products,
    String? $__typename,
  }) => _res;

  products(_fn) => _res;
}

class Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products {
  Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfDeliveryMethodAndProductRate',
  });

  factory Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products(
      key: fromJson$Enum$DeliveryMethod((l$key as String)),
      value:
          Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$DeliveryMethod key;

  final Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = toJson$Enum$DeliveryMethod(l$key);
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products
    on
        Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products {
  CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products<
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products
  >
  get copyWith =>
      CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products<
  TRes
> {
  factory CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products(
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products
    instance,
    TRes Function(
      Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products,
    )
    then,
  ) = _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products;

  factory CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products;

  TRes call({
    Enum$DeliveryMethod? key,
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products<
  TRes
>
    implements
        CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products<
          TRes
        > {
  _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products(
    this._instance,
    this._then,
  );

  final Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products
  _instance;

  final TRes Function(
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products(
      key: key == _undefined || key == null
          ? _instance.key
          : (key as Enum$DeliveryMethod),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products<
  TRes
>
    implements
        CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products<
          TRes
        > {
  _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products(
    this._res,
  );

  TRes _res;

  call({
    Enum$DeliveryMethod? key,
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value<
    TRes
  >
  get value =>
      CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value.stub(
        _res,
      );
}

class Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value {
  Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value({
    required this.rate,
    this.$__typename = 'ProductRate',
  });

  factory Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$rate = json['rate'];
    final l$$__typename = json['__typename'];
    return Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value(
      rate:
          Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate.fromJson(
            (l$rate as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate
  rate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rate = rate;
    _resultData['rate'] = l$rate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rate = rate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$rate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value
    on
        Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value {
  CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value<
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value
  >
  get copyWith =>
      CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value<
  TRes
> {
  factory CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value(
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value
    instance,
    TRes Function(
      Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value,
    )
    then,
  ) = _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value;

  factory CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value;

  TRes call({
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate?
    rate,
    String? $__typename,
  });
  CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate<
    TRes
  >
  get rate;
}

class _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value<
  TRes
>
    implements
        CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value<
          TRes
        > {
  _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value(
    this._instance,
    this._then,
  );

  final Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value
  _instance;

  final TRes Function(
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value(
      rate: rate == _undefined || rate == null
          ? _instance.rate
          : (rate
                as Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate<
    TRes
  >
  get rate {
    final local$rate = _instance.rate;
    return CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate(
      local$rate,
      (e) => call(rate: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value<
  TRes
>
    implements
        CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value<
          TRes
        > {
  _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value(
    this._res,
  );

  TRes _res;

  call({
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate?
    rate,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate<
    TRes
  >
  get rate =>
      CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate.stub(
        _res,
      );
}

class Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate {
  Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate({
    required this.id,
    required this.isRate,
    required this.mtValue,
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$isRate = json['isRate'];
    final l$mtValue = json['mtValue'];
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate(
      id: (l$id as int),
      isRate: (l$isRate as bool),
      mtValue: (l$mtValue as num).toDouble(),
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final bool isRate;

  final double mtValue;

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$isRate = isRate;
    _resultData['isRate'] = l$isRate;
    final l$mtValue = mtValue;
    _resultData['mtValue'] = l$mtValue;
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$isRate = isRate;
    final l$mtValue = mtValue;
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$isRate,
      l$mtValue,
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$isRate = isRate;
    final lOther$isRate = other.isRate;
    if (l$isRate != lOther$isRate) {
      return false;
    }
    final l$mtValue = mtValue;
    final lOther$mtValue = other.mtValue;
    if (l$mtValue != lOther$mtValue) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate
    on
        Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate {
  CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate<
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate
  >
  get copyWith =>
      CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate<
  TRes
> {
  factory CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate(
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate
    instance,
    TRes Function(
      Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate,
    )
    then,
  ) = _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate;

  factory CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate;

  TRes call({
    int? id,
    bool? isRate,
    double? mtValue,
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate<
  TRes
>
    implements
        CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate<
          TRes
        > {
  _CopyWithImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate(
    this._instance,
    this._then,
  );

  final Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate
  _instance;

  final TRes Function(
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isRate = _undefined,
    Object? mtValue = _undefined,
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate(
      id: id == _undefined || id == null ? _instance.id : (id as int),
      isRate: isRate == _undefined || isRate == null
          ? _instance.isRate
          : (isRate as bool),
      mtValue: mtValue == _undefined || mtValue == null
          ? _instance.mtValue
          : (mtValue as double),
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate<
  TRes
>
    implements
        CopyWith$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate<
          TRes
        > {
  _CopyWithStubImpl$Query$GetPrice$pricesForAccounts$yards$value$productsByDeliveryMethod$value$products$value$rate(
    this._res,
  );

  TRes _res;

  call({
    int? id,
    bool? isRate,
    double? mtValue,
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) => _res;
}
