import 'package:gql/ast.dart';

class Variables$Query$SearchProducts {
  factory Variables$Query$SearchProducts({
    required String query,
    List<String>? productFamilies,
    List<String>? productClasses,
    List<String>? productLines,
  }) => Variables$Query$SearchProducts._({
    r'query': query,
    if (productFamilies != null) r'productFamilies': productFamilies,
    if (productClasses != null) r'productClasses': productClasses,
    if (productLines != null) r'productLines': productLines,
  });

  Variables$Query$SearchProducts._(this._$data);

  factory Variables$Query$SearchProducts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] = (l$query as String);
    if (data.containsKey('productFamilies')) {
      final l$productFamilies = data['productFamilies'];
      result$data['productFamilies'] = (l$productFamilies as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('productClasses')) {
      final l$productClasses = data['productClasses'];
      result$data['productClasses'] = (l$productClasses as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('productLines')) {
      final l$productLines = data['productLines'];
      result$data['productLines'] = (l$productLines as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Variables$Query$SearchProducts._(result$data);
  }

  Map<String, dynamic> _$data;

  String get query => (_$data['query'] as String);

  List<String>? get productFamilies =>
      (_$data['productFamilies'] as List<String>?);

  List<String>? get productClasses =>
      (_$data['productClasses'] as List<String>?);

  List<String>? get productLines => (_$data['productLines'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query;
    if (_$data.containsKey('productFamilies')) {
      final l$productFamilies = productFamilies;
      result$data['productFamilies'] = l$productFamilies
          ?.map((e) => e)
          .toList();
    }
    if (_$data.containsKey('productClasses')) {
      final l$productClasses = productClasses;
      result$data['productClasses'] = l$productClasses?.map((e) => e).toList();
    }
    if (_$data.containsKey('productLines')) {
      final l$productLines = productLines;
      result$data['productLines'] = l$productLines?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$SearchProducts<Variables$Query$SearchProducts>
  get copyWith => CopyWith$Variables$Query$SearchProducts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    final l$productFamilies = productFamilies;
    final lOther$productFamilies = other.productFamilies;
    if (_$data.containsKey('productFamilies') !=
        other._$data.containsKey('productFamilies')) {
      return false;
    }
    if (l$productFamilies != null && lOther$productFamilies != null) {
      if (l$productFamilies.length != lOther$productFamilies.length) {
        return false;
      }
      for (int i = 0; i < l$productFamilies.length; i++) {
        final l$productFamilies$entry = l$productFamilies[i];
        final lOther$productFamilies$entry = lOther$productFamilies[i];
        if (l$productFamilies$entry != lOther$productFamilies$entry) {
          return false;
        }
      }
    } else if (l$productFamilies != lOther$productFamilies) {
      return false;
    }
    final l$productClasses = productClasses;
    final lOther$productClasses = other.productClasses;
    if (_$data.containsKey('productClasses') !=
        other._$data.containsKey('productClasses')) {
      return false;
    }
    if (l$productClasses != null && lOther$productClasses != null) {
      if (l$productClasses.length != lOther$productClasses.length) {
        return false;
      }
      for (int i = 0; i < l$productClasses.length; i++) {
        final l$productClasses$entry = l$productClasses[i];
        final lOther$productClasses$entry = lOther$productClasses[i];
        if (l$productClasses$entry != lOther$productClasses$entry) {
          return false;
        }
      }
    } else if (l$productClasses != lOther$productClasses) {
      return false;
    }
    final l$productLines = productLines;
    final lOther$productLines = other.productLines;
    if (_$data.containsKey('productLines') !=
        other._$data.containsKey('productLines')) {
      return false;
    }
    if (l$productLines != null && lOther$productLines != null) {
      if (l$productLines.length != lOther$productLines.length) {
        return false;
      }
      for (int i = 0; i < l$productLines.length; i++) {
        final l$productLines$entry = l$productLines[i];
        final lOther$productLines$entry = lOther$productLines[i];
        if (l$productLines$entry != lOther$productLines$entry) {
          return false;
        }
      }
    } else if (l$productLines != lOther$productLines) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$productFamilies = productFamilies;
    final l$productClasses = productClasses;
    final l$productLines = productLines;
    return Object.hashAll([
      l$query,
      _$data.containsKey('productFamilies')
          ? l$productFamilies == null
                ? null
                : Object.hashAll(l$productFamilies.map((v) => v))
          : const {},
      _$data.containsKey('productClasses')
          ? l$productClasses == null
                ? null
                : Object.hashAll(l$productClasses.map((v) => v))
          : const {},
      _$data.containsKey('productLines')
          ? l$productLines == null
                ? null
                : Object.hashAll(l$productLines.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchProducts<TRes> {
  factory CopyWith$Variables$Query$SearchProducts(
    Variables$Query$SearchProducts instance,
    TRes Function(Variables$Query$SearchProducts) then,
  ) = _CopyWithImpl$Variables$Query$SearchProducts;

  factory CopyWith$Variables$Query$SearchProducts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchProducts;

  TRes call({
    String? query,
    List<String>? productFamilies,
    List<String>? productClasses,
    List<String>? productLines,
  });
}

class _CopyWithImpl$Variables$Query$SearchProducts<TRes>
    implements CopyWith$Variables$Query$SearchProducts<TRes> {
  _CopyWithImpl$Variables$Query$SearchProducts(this._instance, this._then);

  final Variables$Query$SearchProducts _instance;

  final TRes Function(Variables$Query$SearchProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? productFamilies = _undefined,
    Object? productClasses = _undefined,
    Object? productLines = _undefined,
  }) => _then(
    Variables$Query$SearchProducts._({
      ..._instance._$data,
      if (query != _undefined && query != null) 'query': (query as String),
      if (productFamilies != _undefined)
        'productFamilies': (productFamilies as List<String>?),
      if (productClasses != _undefined)
        'productClasses': (productClasses as List<String>?),
      if (productLines != _undefined)
        'productLines': (productLines as List<String>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchProducts<TRes>
    implements CopyWith$Variables$Query$SearchProducts<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchProducts(this._res);

  TRes _res;

  call({
    String? query,
    List<String>? productFamilies,
    List<String>? productClasses,
    List<String>? productLines,
  }) => _res;
}

class Query$SearchProducts {
  Query$SearchProducts({this.products, this.$__typename = 'Query'});

  factory Query$SearchProducts.fromJson(Map<String, dynamic> json) {
    final l$products = json['products'];
    final l$$__typename = json['__typename'];
    return Query$SearchProducts(
      products: l$products == null
          ? null
          : Query$SearchProducts$products.fromJson(
              (l$products as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchProducts$products? products;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$products = products;
    _resultData['products'] = l$products?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$products = products;
    final l$$__typename = $__typename;
    return Object.hashAll([l$products, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchProducts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$products = products;
    final lOther$products = other.products;
    if (l$products != lOther$products) {
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

extension UtilityExtension$Query$SearchProducts on Query$SearchProducts {
  CopyWith$Query$SearchProducts<Query$SearchProducts> get copyWith =>
      CopyWith$Query$SearchProducts(this, (i) => i);
}

abstract class CopyWith$Query$SearchProducts<TRes> {
  factory CopyWith$Query$SearchProducts(
    Query$SearchProducts instance,
    TRes Function(Query$SearchProducts) then,
  ) = _CopyWithImpl$Query$SearchProducts;

  factory CopyWith$Query$SearchProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchProducts;

  TRes call({Query$SearchProducts$products? products, String? $__typename});
  CopyWith$Query$SearchProducts$products<TRes> get products;
}

class _CopyWithImpl$Query$SearchProducts<TRes>
    implements CopyWith$Query$SearchProducts<TRes> {
  _CopyWithImpl$Query$SearchProducts(this._instance, this._then);

  final Query$SearchProducts _instance;

  final TRes Function(Query$SearchProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? products = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchProducts(
      products: products == _undefined
          ? _instance.products
          : (products as Query$SearchProducts$products?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchProducts$products<TRes> get products {
    final local$products = _instance.products;
    return local$products == null
        ? CopyWith$Query$SearchProducts$products.stub(_then(_instance))
        : CopyWith$Query$SearchProducts$products(
            local$products,
            (e) => call(products: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchProducts<TRes>
    implements CopyWith$Query$SearchProducts<TRes> {
  _CopyWithStubImpl$Query$SearchProducts(this._res);

  TRes _res;

  call({Query$SearchProducts$products? products, String? $__typename}) => _res;

  CopyWith$Query$SearchProducts$products<TRes> get products =>
      CopyWith$Query$SearchProducts$products.stub(_res);
}

const documentNodeQuerySearchProducts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchProducts'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'query')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'productFamilies')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'productClasses')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'productLines')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'products'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'query'),
                value: VariableNode(name: NameNode(value: 'query')),
              ),
              ArgumentNode(
                name: NameNode(value: 'productFamilies'),
                value: VariableNode(name: NameNode(value: 'productFamilies')),
              ),
              ArgumentNode(
                name: NameNode(value: 'productClasses'),
                value: VariableNode(name: NameNode(value: 'productClasses')),
              ),
              ArgumentNode(
                name: NameNode(value: 'productLines'),
                value: VariableNode(name: NameNode(value: 'productLines')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'code'),
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

class Query$SearchProducts$products {
  Query$SearchProducts$products({
    this.nodes,
    this.$__typename = 'ProductsConnection',
  });

  factory Query$SearchProducts$products.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchProducts$products(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$SearchProducts$products$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchProducts$products$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchProducts$products ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$SearchProducts$products
    on Query$SearchProducts$products {
  CopyWith$Query$SearchProducts$products<Query$SearchProducts$products>
  get copyWith => CopyWith$Query$SearchProducts$products(this, (i) => i);
}

abstract class CopyWith$Query$SearchProducts$products<TRes> {
  factory CopyWith$Query$SearchProducts$products(
    Query$SearchProducts$products instance,
    TRes Function(Query$SearchProducts$products) then,
  ) = _CopyWithImpl$Query$SearchProducts$products;

  factory CopyWith$Query$SearchProducts$products.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchProducts$products;

  TRes call({
    List<Query$SearchProducts$products$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$SearchProducts$products$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchProducts$products$nodes<
          Query$SearchProducts$products$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchProducts$products<TRes>
    implements CopyWith$Query$SearchProducts$products<TRes> {
  _CopyWithImpl$Query$SearchProducts$products(this._instance, this._then);

  final Query$SearchProducts$products _instance;

  final TRes Function(Query$SearchProducts$products) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? nodes = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$SearchProducts$products(
          nodes: nodes == _undefined
              ? _instance.nodes
              : (nodes as List<Query$SearchProducts$products$nodes>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes nodes(
    Iterable<Query$SearchProducts$products$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchProducts$products$nodes<
          Query$SearchProducts$products$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$SearchProducts$products$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchProducts$products<TRes>
    implements CopyWith$Query$SearchProducts$products<TRes> {
  _CopyWithStubImpl$Query$SearchProducts$products(this._res);

  TRes _res;

  call({
    List<Query$SearchProducts$products$nodes>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SearchProducts$products$nodes {
  Query$SearchProducts$products$nodes({
    required this.code,
    required this.description,
    this.$__typename = 'Product',
  });

  factory Query$SearchProducts$products$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$SearchProducts$products$nodes(
      code: (l$code as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchProducts$products$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$SearchProducts$products$nodes
    on Query$SearchProducts$products$nodes {
  CopyWith$Query$SearchProducts$products$nodes<
    Query$SearchProducts$products$nodes
  >
  get copyWith => CopyWith$Query$SearchProducts$products$nodes(this, (i) => i);
}

abstract class CopyWith$Query$SearchProducts$products$nodes<TRes> {
  factory CopyWith$Query$SearchProducts$products$nodes(
    Query$SearchProducts$products$nodes instance,
    TRes Function(Query$SearchProducts$products$nodes) then,
  ) = _CopyWithImpl$Query$SearchProducts$products$nodes;

  factory CopyWith$Query$SearchProducts$products$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchProducts$products$nodes;

  TRes call({String? code, String? description, String? $__typename});
}

class _CopyWithImpl$Query$SearchProducts$products$nodes<TRes>
    implements CopyWith$Query$SearchProducts$products$nodes<TRes> {
  _CopyWithImpl$Query$SearchProducts$products$nodes(this._instance, this._then);

  final Query$SearchProducts$products$nodes _instance;

  final TRes Function(Query$SearchProducts$products$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchProducts$products$nodes(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchProducts$products$nodes<TRes>
    implements CopyWith$Query$SearchProducts$products$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchProducts$products$nodes(this._res);

  TRes _res;

  call({String? code, String? description, String? $__typename}) => _res;
}
