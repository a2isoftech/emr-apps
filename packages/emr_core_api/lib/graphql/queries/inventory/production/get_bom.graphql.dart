import 'package:gql/ast.dart';

class Variables$Query$GetBom {
  factory Variables$Query$GetBom({required String id}) =>
      Variables$Query$GetBom._({r'id': id});

  Variables$Query$GetBom._(this._$data);

  factory Variables$Query$GetBom.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetBom._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetBom<Variables$Query$GetBom> get copyWith =>
      CopyWith$Variables$Query$GetBom(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetBom || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$GetBom<TRes> {
  factory CopyWith$Variables$Query$GetBom(
    Variables$Query$GetBom instance,
    TRes Function(Variables$Query$GetBom) then,
  ) = _CopyWithImpl$Variables$Query$GetBom;

  factory CopyWith$Variables$Query$GetBom.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetBom;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetBom<TRes>
    implements CopyWith$Variables$Query$GetBom<TRes> {
  _CopyWithImpl$Variables$Query$GetBom(this._instance, this._then);

  final Variables$Query$GetBom _instance;

  final TRes Function(Variables$Query$GetBom) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$GetBom._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetBom<TRes>
    implements CopyWith$Variables$Query$GetBom<TRes> {
  _CopyWithStubImpl$Variables$Query$GetBom(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetBom {
  Query$GetBom({required this.billOfMaterials, this.$__typename = 'Query'});

  factory Query$GetBom.fromJson(Map<String, dynamic> json) {
    final l$billOfMaterials = json['billOfMaterials'];
    final l$$__typename = json['__typename'];
    return Query$GetBom(
      billOfMaterials: Query$GetBom$billOfMaterials.fromJson(
        (l$billOfMaterials as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetBom$billOfMaterials billOfMaterials;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$billOfMaterials = billOfMaterials;
    _resultData['billOfMaterials'] = l$billOfMaterials.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$billOfMaterials = billOfMaterials;
    final l$$__typename = $__typename;
    return Object.hashAll([l$billOfMaterials, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetBom || runtimeType != other.runtimeType) {
      return false;
    }
    final l$billOfMaterials = billOfMaterials;
    final lOther$billOfMaterials = other.billOfMaterials;
    if (l$billOfMaterials != lOther$billOfMaterials) {
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

extension UtilityExtension$Query$GetBom on Query$GetBom {
  CopyWith$Query$GetBom<Query$GetBom> get copyWith =>
      CopyWith$Query$GetBom(this, (i) => i);
}

abstract class CopyWith$Query$GetBom<TRes> {
  factory CopyWith$Query$GetBom(
    Query$GetBom instance,
    TRes Function(Query$GetBom) then,
  ) = _CopyWithImpl$Query$GetBom;

  factory CopyWith$Query$GetBom.stub(TRes res) = _CopyWithStubImpl$Query$GetBom;

  TRes call({
    Query$GetBom$billOfMaterials? billOfMaterials,
    String? $__typename,
  });
  CopyWith$Query$GetBom$billOfMaterials<TRes> get billOfMaterials;
}

class _CopyWithImpl$Query$GetBom<TRes> implements CopyWith$Query$GetBom<TRes> {
  _CopyWithImpl$Query$GetBom(this._instance, this._then);

  final Query$GetBom _instance;

  final TRes Function(Query$GetBom) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? billOfMaterials = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetBom(
      billOfMaterials: billOfMaterials == _undefined || billOfMaterials == null
          ? _instance.billOfMaterials
          : (billOfMaterials as Query$GetBom$billOfMaterials),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetBom$billOfMaterials<TRes> get billOfMaterials {
    final local$billOfMaterials = _instance.billOfMaterials;
    return CopyWith$Query$GetBom$billOfMaterials(
      local$billOfMaterials,
      (e) => call(billOfMaterials: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetBom<TRes>
    implements CopyWith$Query$GetBom<TRes> {
  _CopyWithStubImpl$Query$GetBom(this._res);

  TRes _res;

  call({Query$GetBom$billOfMaterials? billOfMaterials, String? $__typename}) =>
      _res;

  CopyWith$Query$GetBom$billOfMaterials<TRes> get billOfMaterials =>
      CopyWith$Query$GetBom$billOfMaterials.stub(_res);
}

const documentNodeQueryGetBom = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetBom'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'billOfMaterials'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'title'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'inputProducts'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'productId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'productCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'product'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'description'),
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
                  name: NameNode(value: 'outputProducts'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'productId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'productCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'product'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'description'),
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
                  name: NameNode(value: 'active'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'created'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'at'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'userName'),
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
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'modified'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'at'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'userName'),
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

class Query$GetBom$billOfMaterials {
  Query$GetBom$billOfMaterials({
    required this.id,
    required this.title,
    required this.inputProducts,
    required this.outputProducts,
    required this.active,
    required this.created,
    required this.modified,
    this.$__typename = 'BillOfMaterials',
  });

  factory Query$GetBom$billOfMaterials.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$inputProducts = json['inputProducts'];
    final l$outputProducts = json['outputProducts'];
    final l$active = json['active'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$$__typename = json['__typename'];
    return Query$GetBom$billOfMaterials(
      id: (l$id as String),
      title: (l$title as String),
      inputProducts: (l$inputProducts as List<dynamic>)
          .map(
            (e) => Query$GetBom$billOfMaterials$inputProducts.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      outputProducts: (l$outputProducts as List<dynamic>)
          .map(
            (e) => Query$GetBom$billOfMaterials$outputProducts.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      active: (l$active as bool),
      created: Query$GetBom$billOfMaterials$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      modified: Query$GetBom$billOfMaterials$modified.fromJson(
        (l$modified as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final List<Query$GetBom$billOfMaterials$inputProducts> inputProducts;

  final List<Query$GetBom$billOfMaterials$outputProducts> outputProducts;

  final bool active;

  final Query$GetBom$billOfMaterials$created created;

  final Query$GetBom$billOfMaterials$modified modified;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$inputProducts = inputProducts;
    _resultData['inputProducts'] = l$inputProducts
        .map((e) => e.toJson())
        .toList();
    final l$outputProducts = outputProducts;
    _resultData['outputProducts'] = l$outputProducts
        .map((e) => e.toJson())
        .toList();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$inputProducts = inputProducts;
    final l$outputProducts = outputProducts;
    final l$active = active;
    final l$created = created;
    final l$modified = modified;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      Object.hashAll(l$inputProducts.map((v) => v)),
      Object.hashAll(l$outputProducts.map((v) => v)),
      l$active,
      l$created,
      l$modified,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetBom$billOfMaterials ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$inputProducts = inputProducts;
    final lOther$inputProducts = other.inputProducts;
    if (l$inputProducts.length != lOther$inputProducts.length) {
      return false;
    }
    for (int i = 0; i < l$inputProducts.length; i++) {
      final l$inputProducts$entry = l$inputProducts[i];
      final lOther$inputProducts$entry = lOther$inputProducts[i];
      if (l$inputProducts$entry != lOther$inputProducts$entry) {
        return false;
      }
    }
    final l$outputProducts = outputProducts;
    final lOther$outputProducts = other.outputProducts;
    if (l$outputProducts.length != lOther$outputProducts.length) {
      return false;
    }
    for (int i = 0; i < l$outputProducts.length; i++) {
      final l$outputProducts$entry = l$outputProducts[i];
      final lOther$outputProducts$entry = lOther$outputProducts[i];
      if (l$outputProducts$entry != lOther$outputProducts$entry) {
        return false;
      }
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
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

extension UtilityExtension$Query$GetBom$billOfMaterials
    on Query$GetBom$billOfMaterials {
  CopyWith$Query$GetBom$billOfMaterials<Query$GetBom$billOfMaterials>
  get copyWith => CopyWith$Query$GetBom$billOfMaterials(this, (i) => i);
}

abstract class CopyWith$Query$GetBom$billOfMaterials<TRes> {
  factory CopyWith$Query$GetBom$billOfMaterials(
    Query$GetBom$billOfMaterials instance,
    TRes Function(Query$GetBom$billOfMaterials) then,
  ) = _CopyWithImpl$Query$GetBom$billOfMaterials;

  factory CopyWith$Query$GetBom$billOfMaterials.stub(TRes res) =
      _CopyWithStubImpl$Query$GetBom$billOfMaterials;

  TRes call({
    String? id,
    String? title,
    List<Query$GetBom$billOfMaterials$inputProducts>? inputProducts,
    List<Query$GetBom$billOfMaterials$outputProducts>? outputProducts,
    bool? active,
    Query$GetBom$billOfMaterials$created? created,
    Query$GetBom$billOfMaterials$modified? modified,
    String? $__typename,
  });
  TRes inputProducts(
    Iterable<Query$GetBom$billOfMaterials$inputProducts> Function(
      Iterable<
        CopyWith$Query$GetBom$billOfMaterials$inputProducts<
          Query$GetBom$billOfMaterials$inputProducts
        >
      >,
    )
    _fn,
  );
  TRes outputProducts(
    Iterable<Query$GetBom$billOfMaterials$outputProducts> Function(
      Iterable<
        CopyWith$Query$GetBom$billOfMaterials$outputProducts<
          Query$GetBom$billOfMaterials$outputProducts
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetBom$billOfMaterials$created<TRes> get created;
  CopyWith$Query$GetBom$billOfMaterials$modified<TRes> get modified;
}

class _CopyWithImpl$Query$GetBom$billOfMaterials<TRes>
    implements CopyWith$Query$GetBom$billOfMaterials<TRes> {
  _CopyWithImpl$Query$GetBom$billOfMaterials(this._instance, this._then);

  final Query$GetBom$billOfMaterials _instance;

  final TRes Function(Query$GetBom$billOfMaterials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? inputProducts = _undefined,
    Object? outputProducts = _undefined,
    Object? active = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetBom$billOfMaterials(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      inputProducts: inputProducts == _undefined || inputProducts == null
          ? _instance.inputProducts
          : (inputProducts as List<Query$GetBom$billOfMaterials$inputProducts>),
      outputProducts: outputProducts == _undefined || outputProducts == null
          ? _instance.outputProducts
          : (outputProducts
                as List<Query$GetBom$billOfMaterials$outputProducts>),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Query$GetBom$billOfMaterials$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified as Query$GetBom$billOfMaterials$modified),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes inputProducts(
    Iterable<Query$GetBom$billOfMaterials$inputProducts> Function(
      Iterable<
        CopyWith$Query$GetBom$billOfMaterials$inputProducts<
          Query$GetBom$billOfMaterials$inputProducts
        >
      >,
    )
    _fn,
  ) => call(
    inputProducts: _fn(
      _instance.inputProducts.map(
        (e) => CopyWith$Query$GetBom$billOfMaterials$inputProducts(e, (i) => i),
      ),
    ).toList(),
  );

  TRes outputProducts(
    Iterable<Query$GetBom$billOfMaterials$outputProducts> Function(
      Iterable<
        CopyWith$Query$GetBom$billOfMaterials$outputProducts<
          Query$GetBom$billOfMaterials$outputProducts
        >
      >,
    )
    _fn,
  ) => call(
    outputProducts: _fn(
      _instance.outputProducts.map(
        (e) =>
            CopyWith$Query$GetBom$billOfMaterials$outputProducts(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Query$GetBom$billOfMaterials$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Query$GetBom$billOfMaterials$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Query$GetBom$billOfMaterials$modified<TRes> get modified {
    final local$modified = _instance.modified;
    return CopyWith$Query$GetBom$billOfMaterials$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetBom$billOfMaterials<TRes>
    implements CopyWith$Query$GetBom$billOfMaterials<TRes> {
  _CopyWithStubImpl$Query$GetBom$billOfMaterials(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    List<Query$GetBom$billOfMaterials$inputProducts>? inputProducts,
    List<Query$GetBom$billOfMaterials$outputProducts>? outputProducts,
    bool? active,
    Query$GetBom$billOfMaterials$created? created,
    Query$GetBom$billOfMaterials$modified? modified,
    String? $__typename,
  }) => _res;

  inputProducts(_fn) => _res;

  outputProducts(_fn) => _res;

  CopyWith$Query$GetBom$billOfMaterials$created<TRes> get created =>
      CopyWith$Query$GetBom$billOfMaterials$created.stub(_res);

  CopyWith$Query$GetBom$billOfMaterials$modified<TRes> get modified =>
      CopyWith$Query$GetBom$billOfMaterials$modified.stub(_res);
}

class Query$GetBom$billOfMaterials$inputProducts {
  Query$GetBom$billOfMaterials$inputProducts({
    required this.productId,
    required this.productCode,
    this.product,
    this.$__typename = 'BomProduct',
  });

  factory Query$GetBom$billOfMaterials$inputProducts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$productId = json['productId'];
    final l$productCode = json['productCode'];
    final l$product = json['product'];
    final l$$__typename = json['__typename'];
    return Query$GetBom$billOfMaterials$inputProducts(
      productId: (l$productId as String),
      productCode: (l$productCode as String),
      product: l$product == null
          ? null
          : Query$GetBom$billOfMaterials$inputProducts$product.fromJson(
              (l$product as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String productId;

  final String productCode;

  final Query$GetBom$billOfMaterials$inputProducts$product? product;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$productId = productId;
    _resultData['productId'] = l$productId;
    final l$productCode = productCode;
    _resultData['productCode'] = l$productCode;
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$productId = productId;
    final l$productCode = productCode;
    final l$product = product;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$productId,
      l$productCode,
      l$product,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetBom$billOfMaterials$inputProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    final l$productCode = productCode;
    final lOther$productCode = other.productCode;
    if (l$productCode != lOther$productCode) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
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

extension UtilityExtension$Query$GetBom$billOfMaterials$inputProducts
    on Query$GetBom$billOfMaterials$inputProducts {
  CopyWith$Query$GetBom$billOfMaterials$inputProducts<
    Query$GetBom$billOfMaterials$inputProducts
  >
  get copyWith =>
      CopyWith$Query$GetBom$billOfMaterials$inputProducts(this, (i) => i);
}

abstract class CopyWith$Query$GetBom$billOfMaterials$inputProducts<TRes> {
  factory CopyWith$Query$GetBom$billOfMaterials$inputProducts(
    Query$GetBom$billOfMaterials$inputProducts instance,
    TRes Function(Query$GetBom$billOfMaterials$inputProducts) then,
  ) = _CopyWithImpl$Query$GetBom$billOfMaterials$inputProducts;

  factory CopyWith$Query$GetBom$billOfMaterials$inputProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetBom$billOfMaterials$inputProducts;

  TRes call({
    String? productId,
    String? productCode,
    Query$GetBom$billOfMaterials$inputProducts$product? product,
    String? $__typename,
  });
  CopyWith$Query$GetBom$billOfMaterials$inputProducts$product<TRes> get product;
}

class _CopyWithImpl$Query$GetBom$billOfMaterials$inputProducts<TRes>
    implements CopyWith$Query$GetBom$billOfMaterials$inputProducts<TRes> {
  _CopyWithImpl$Query$GetBom$billOfMaterials$inputProducts(
    this._instance,
    this._then,
  );

  final Query$GetBom$billOfMaterials$inputProducts _instance;

  final TRes Function(Query$GetBom$billOfMaterials$inputProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productId = _undefined,
    Object? productCode = _undefined,
    Object? product = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetBom$billOfMaterials$inputProducts(
      productId: productId == _undefined || productId == null
          ? _instance.productId
          : (productId as String),
      productCode: productCode == _undefined || productCode == null
          ? _instance.productCode
          : (productCode as String),
      product: product == _undefined
          ? _instance.product
          : (product as Query$GetBom$billOfMaterials$inputProducts$product?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetBom$billOfMaterials$inputProducts$product<TRes>
  get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Query$GetBom$billOfMaterials$inputProducts$product.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetBom$billOfMaterials$inputProducts$product(
            local$product,
            (e) => call(product: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetBom$billOfMaterials$inputProducts<TRes>
    implements CopyWith$Query$GetBom$billOfMaterials$inputProducts<TRes> {
  _CopyWithStubImpl$Query$GetBom$billOfMaterials$inputProducts(this._res);

  TRes _res;

  call({
    String? productId,
    String? productCode,
    Query$GetBom$billOfMaterials$inputProducts$product? product,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetBom$billOfMaterials$inputProducts$product<TRes>
  get product =>
      CopyWith$Query$GetBom$billOfMaterials$inputProducts$product.stub(_res);
}

class Query$GetBom$billOfMaterials$inputProducts$product {
  Query$GetBom$billOfMaterials$inputProducts$product({
    required this.description,
    this.$__typename = 'Product',
  });

  factory Query$GetBom$billOfMaterials$inputProducts$product.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetBom$billOfMaterials$inputProducts$product(
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetBom$billOfMaterials$inputProducts$product ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtension$Query$GetBom$billOfMaterials$inputProducts$product
    on Query$GetBom$billOfMaterials$inputProducts$product {
  CopyWith$Query$GetBom$billOfMaterials$inputProducts$product<
    Query$GetBom$billOfMaterials$inputProducts$product
  >
  get copyWith => CopyWith$Query$GetBom$billOfMaterials$inputProducts$product(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetBom$billOfMaterials$inputProducts$product<
  TRes
> {
  factory CopyWith$Query$GetBom$billOfMaterials$inputProducts$product(
    Query$GetBom$billOfMaterials$inputProducts$product instance,
    TRes Function(Query$GetBom$billOfMaterials$inputProducts$product) then,
  ) = _CopyWithImpl$Query$GetBom$billOfMaterials$inputProducts$product;

  factory CopyWith$Query$GetBom$billOfMaterials$inputProducts$product.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetBom$billOfMaterials$inputProducts$product;

  TRes call({String? description, String? $__typename});
}

class _CopyWithImpl$Query$GetBom$billOfMaterials$inputProducts$product<TRes>
    implements
        CopyWith$Query$GetBom$billOfMaterials$inputProducts$product<TRes> {
  _CopyWithImpl$Query$GetBom$billOfMaterials$inputProducts$product(
    this._instance,
    this._then,
  );

  final Query$GetBom$billOfMaterials$inputProducts$product _instance;

  final TRes Function(Query$GetBom$billOfMaterials$inputProducts$product) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetBom$billOfMaterials$inputProducts$product(
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetBom$billOfMaterials$inputProducts$product<TRes>
    implements
        CopyWith$Query$GetBom$billOfMaterials$inputProducts$product<TRes> {
  _CopyWithStubImpl$Query$GetBom$billOfMaterials$inputProducts$product(
    this._res,
  );

  TRes _res;

  call({String? description, String? $__typename}) => _res;
}

class Query$GetBom$billOfMaterials$outputProducts {
  Query$GetBom$billOfMaterials$outputProducts({
    required this.productId,
    required this.productCode,
    this.product,
    this.$__typename = 'BomProduct',
  });

  factory Query$GetBom$billOfMaterials$outputProducts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$productId = json['productId'];
    final l$productCode = json['productCode'];
    final l$product = json['product'];
    final l$$__typename = json['__typename'];
    return Query$GetBom$billOfMaterials$outputProducts(
      productId: (l$productId as String),
      productCode: (l$productCode as String),
      product: l$product == null
          ? null
          : Query$GetBom$billOfMaterials$outputProducts$product.fromJson(
              (l$product as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String productId;

  final String productCode;

  final Query$GetBom$billOfMaterials$outputProducts$product? product;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$productId = productId;
    _resultData['productId'] = l$productId;
    final l$productCode = productCode;
    _resultData['productCode'] = l$productCode;
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$productId = productId;
    final l$productCode = productCode;
    final l$product = product;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$productId,
      l$productCode,
      l$product,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetBom$billOfMaterials$outputProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    final l$productCode = productCode;
    final lOther$productCode = other.productCode;
    if (l$productCode != lOther$productCode) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
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

extension UtilityExtension$Query$GetBom$billOfMaterials$outputProducts
    on Query$GetBom$billOfMaterials$outputProducts {
  CopyWith$Query$GetBom$billOfMaterials$outputProducts<
    Query$GetBom$billOfMaterials$outputProducts
  >
  get copyWith =>
      CopyWith$Query$GetBom$billOfMaterials$outputProducts(this, (i) => i);
}

abstract class CopyWith$Query$GetBom$billOfMaterials$outputProducts<TRes> {
  factory CopyWith$Query$GetBom$billOfMaterials$outputProducts(
    Query$GetBom$billOfMaterials$outputProducts instance,
    TRes Function(Query$GetBom$billOfMaterials$outputProducts) then,
  ) = _CopyWithImpl$Query$GetBom$billOfMaterials$outputProducts;

  factory CopyWith$Query$GetBom$billOfMaterials$outputProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetBom$billOfMaterials$outputProducts;

  TRes call({
    String? productId,
    String? productCode,
    Query$GetBom$billOfMaterials$outputProducts$product? product,
    String? $__typename,
  });
  CopyWith$Query$GetBom$billOfMaterials$outputProducts$product<TRes>
  get product;
}

class _CopyWithImpl$Query$GetBom$billOfMaterials$outputProducts<TRes>
    implements CopyWith$Query$GetBom$billOfMaterials$outputProducts<TRes> {
  _CopyWithImpl$Query$GetBom$billOfMaterials$outputProducts(
    this._instance,
    this._then,
  );

  final Query$GetBom$billOfMaterials$outputProducts _instance;

  final TRes Function(Query$GetBom$billOfMaterials$outputProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productId = _undefined,
    Object? productCode = _undefined,
    Object? product = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetBom$billOfMaterials$outputProducts(
      productId: productId == _undefined || productId == null
          ? _instance.productId
          : (productId as String),
      productCode: productCode == _undefined || productCode == null
          ? _instance.productCode
          : (productCode as String),
      product: product == _undefined
          ? _instance.product
          : (product as Query$GetBom$billOfMaterials$outputProducts$product?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetBom$billOfMaterials$outputProducts$product<TRes>
  get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Query$GetBom$billOfMaterials$outputProducts$product.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetBom$billOfMaterials$outputProducts$product(
            local$product,
            (e) => call(product: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetBom$billOfMaterials$outputProducts<TRes>
    implements CopyWith$Query$GetBom$billOfMaterials$outputProducts<TRes> {
  _CopyWithStubImpl$Query$GetBom$billOfMaterials$outputProducts(this._res);

  TRes _res;

  call({
    String? productId,
    String? productCode,
    Query$GetBom$billOfMaterials$outputProducts$product? product,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetBom$billOfMaterials$outputProducts$product<TRes>
  get product =>
      CopyWith$Query$GetBom$billOfMaterials$outputProducts$product.stub(_res);
}

class Query$GetBom$billOfMaterials$outputProducts$product {
  Query$GetBom$billOfMaterials$outputProducts$product({
    required this.description,
    this.$__typename = 'Product',
  });

  factory Query$GetBom$billOfMaterials$outputProducts$product.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetBom$billOfMaterials$outputProducts$product(
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetBom$billOfMaterials$outputProducts$product ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtension$Query$GetBom$billOfMaterials$outputProducts$product
    on Query$GetBom$billOfMaterials$outputProducts$product {
  CopyWith$Query$GetBom$billOfMaterials$outputProducts$product<
    Query$GetBom$billOfMaterials$outputProducts$product
  >
  get copyWith => CopyWith$Query$GetBom$billOfMaterials$outputProducts$product(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetBom$billOfMaterials$outputProducts$product<
  TRes
> {
  factory CopyWith$Query$GetBom$billOfMaterials$outputProducts$product(
    Query$GetBom$billOfMaterials$outputProducts$product instance,
    TRes Function(Query$GetBom$billOfMaterials$outputProducts$product) then,
  ) = _CopyWithImpl$Query$GetBom$billOfMaterials$outputProducts$product;

  factory CopyWith$Query$GetBom$billOfMaterials$outputProducts$product.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetBom$billOfMaterials$outputProducts$product;

  TRes call({String? description, String? $__typename});
}

class _CopyWithImpl$Query$GetBom$billOfMaterials$outputProducts$product<TRes>
    implements
        CopyWith$Query$GetBom$billOfMaterials$outputProducts$product<TRes> {
  _CopyWithImpl$Query$GetBom$billOfMaterials$outputProducts$product(
    this._instance,
    this._then,
  );

  final Query$GetBom$billOfMaterials$outputProducts$product _instance;

  final TRes Function(Query$GetBom$billOfMaterials$outputProducts$product)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetBom$billOfMaterials$outputProducts$product(
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetBom$billOfMaterials$outputProducts$product<
  TRes
>
    implements
        CopyWith$Query$GetBom$billOfMaterials$outputProducts$product<TRes> {
  _CopyWithStubImpl$Query$GetBom$billOfMaterials$outputProducts$product(
    this._res,
  );

  TRes _res;

  call({String? description, String? $__typename}) => _res;
}

class Query$GetBom$billOfMaterials$created {
  Query$GetBom$billOfMaterials$created({
    required this.at,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$GetBom$billOfMaterials$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetBom$billOfMaterials$created(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetBom$billOfMaterials$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Query$GetBom$billOfMaterials$created
    on Query$GetBom$billOfMaterials$created {
  CopyWith$Query$GetBom$billOfMaterials$created<
    Query$GetBom$billOfMaterials$created
  >
  get copyWith => CopyWith$Query$GetBom$billOfMaterials$created(this, (i) => i);
}

abstract class CopyWith$Query$GetBom$billOfMaterials$created<TRes> {
  factory CopyWith$Query$GetBom$billOfMaterials$created(
    Query$GetBom$billOfMaterials$created instance,
    TRes Function(Query$GetBom$billOfMaterials$created) then,
  ) = _CopyWithImpl$Query$GetBom$billOfMaterials$created;

  factory CopyWith$Query$GetBom$billOfMaterials$created.stub(TRes res) =
      _CopyWithStubImpl$Query$GetBom$billOfMaterials$created;

  TRes call({DateTime? at, String? userName, String? $__typename});
}

class _CopyWithImpl$Query$GetBom$billOfMaterials$created<TRes>
    implements CopyWith$Query$GetBom$billOfMaterials$created<TRes> {
  _CopyWithImpl$Query$GetBom$billOfMaterials$created(
    this._instance,
    this._then,
  );

  final Query$GetBom$billOfMaterials$created _instance;

  final TRes Function(Query$GetBom$billOfMaterials$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetBom$billOfMaterials$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetBom$billOfMaterials$created<TRes>
    implements CopyWith$Query$GetBom$billOfMaterials$created<TRes> {
  _CopyWithStubImpl$Query$GetBom$billOfMaterials$created(this._res);

  TRes _res;

  call({DateTime? at, String? userName, String? $__typename}) => _res;
}

class Query$GetBom$billOfMaterials$modified {
  Query$GetBom$billOfMaterials$modified({
    required this.at,
    required this.userName,
    this.$__typename = 'Modified',
  });

  factory Query$GetBom$billOfMaterials$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$GetBom$billOfMaterials$modified(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetBom$billOfMaterials$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Query$GetBom$billOfMaterials$modified
    on Query$GetBom$billOfMaterials$modified {
  CopyWith$Query$GetBom$billOfMaterials$modified<
    Query$GetBom$billOfMaterials$modified
  >
  get copyWith =>
      CopyWith$Query$GetBom$billOfMaterials$modified(this, (i) => i);
}

abstract class CopyWith$Query$GetBom$billOfMaterials$modified<TRes> {
  factory CopyWith$Query$GetBom$billOfMaterials$modified(
    Query$GetBom$billOfMaterials$modified instance,
    TRes Function(Query$GetBom$billOfMaterials$modified) then,
  ) = _CopyWithImpl$Query$GetBom$billOfMaterials$modified;

  factory CopyWith$Query$GetBom$billOfMaterials$modified.stub(TRes res) =
      _CopyWithStubImpl$Query$GetBom$billOfMaterials$modified;

  TRes call({DateTime? at, String? userName, String? $__typename});
}

class _CopyWithImpl$Query$GetBom$billOfMaterials$modified<TRes>
    implements CopyWith$Query$GetBom$billOfMaterials$modified<TRes> {
  _CopyWithImpl$Query$GetBom$billOfMaterials$modified(
    this._instance,
    this._then,
  );

  final Query$GetBom$billOfMaterials$modified _instance;

  final TRes Function(Query$GetBom$billOfMaterials$modified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetBom$billOfMaterials$modified(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetBom$billOfMaterials$modified<TRes>
    implements CopyWith$Query$GetBom$billOfMaterials$modified<TRes> {
  _CopyWithStubImpl$Query$GetBom$billOfMaterials$modified(this._res);

  TRes _res;

  call({DateTime? at, String? userName, String? $__typename}) => _res;
}
