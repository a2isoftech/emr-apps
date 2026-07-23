import 'package:gql/ast.dart';

class Variables$Query$GetProducts {
  factory Variables$Query$GetProducts({String? query}) =>
      Variables$Query$GetProducts._({if (query != null) r'query': query});

  Variables$Query$GetProducts._(this._$data);

  factory Variables$Query$GetProducts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    return Variables$Query$GetProducts._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get query => (_$data['query'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetProducts<Variables$Query$GetProducts>
  get copyWith => CopyWith$Variables$Query$GetProducts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (_$data.containsKey('query') != other._$data.containsKey('query')) {
      return false;
    }
    if (l$query != lOther$query) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    return Object.hashAll([_$data.containsKey('query') ? l$query : const {}]);
  }
}

abstract class CopyWith$Variables$Query$GetProducts<TRes> {
  factory CopyWith$Variables$Query$GetProducts(
    Variables$Query$GetProducts instance,
    TRes Function(Variables$Query$GetProducts) then,
  ) = _CopyWithImpl$Variables$Query$GetProducts;

  factory CopyWith$Variables$Query$GetProducts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetProducts;

  TRes call({String? query});
}

class _CopyWithImpl$Variables$Query$GetProducts<TRes>
    implements CopyWith$Variables$Query$GetProducts<TRes> {
  _CopyWithImpl$Variables$Query$GetProducts(this._instance, this._then);

  final Variables$Query$GetProducts _instance;

  final TRes Function(Variables$Query$GetProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? query = _undefined}) => _then(
    Variables$Query$GetProducts._({
      ..._instance._$data,
      if (query != _undefined) 'query': (query as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetProducts<TRes>
    implements CopyWith$Variables$Query$GetProducts<TRes> {
  _CopyWithStubImpl$Variables$Query$GetProducts(this._res);

  TRes _res;

  call({String? query}) => _res;
}

class Query$GetProducts {
  Query$GetProducts({this.products, this.$__typename = 'Query'});

  factory Query$GetProducts.fromJson(Map<String, dynamic> json) {
    final l$products = json['products'];
    final l$$__typename = json['__typename'];
    return Query$GetProducts(
      products: l$products == null
          ? null
          : Query$GetProducts$products.fromJson(
              (l$products as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetProducts$products? products;

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
    if (other is! Query$GetProducts || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetProducts on Query$GetProducts {
  CopyWith$Query$GetProducts<Query$GetProducts> get copyWith =>
      CopyWith$Query$GetProducts(this, (i) => i);
}

abstract class CopyWith$Query$GetProducts<TRes> {
  factory CopyWith$Query$GetProducts(
    Query$GetProducts instance,
    TRes Function(Query$GetProducts) then,
  ) = _CopyWithImpl$Query$GetProducts;

  factory CopyWith$Query$GetProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProducts;

  TRes call({Query$GetProducts$products? products, String? $__typename});
  CopyWith$Query$GetProducts$products<TRes> get products;
}

class _CopyWithImpl$Query$GetProducts<TRes>
    implements CopyWith$Query$GetProducts<TRes> {
  _CopyWithImpl$Query$GetProducts(this._instance, this._then);

  final Query$GetProducts _instance;

  final TRes Function(Query$GetProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? products = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetProducts(
      products: products == _undefined
          ? _instance.products
          : (products as Query$GetProducts$products?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetProducts$products<TRes> get products {
    final local$products = _instance.products;
    return local$products == null
        ? CopyWith$Query$GetProducts$products.stub(_then(_instance))
        : CopyWith$Query$GetProducts$products(
            local$products,
            (e) => call(products: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetProducts<TRes>
    implements CopyWith$Query$GetProducts<TRes> {
  _CopyWithStubImpl$Query$GetProducts(this._res);

  TRes _res;

  call({Query$GetProducts$products? products, String? $__typename}) => _res;

  CopyWith$Query$GetProducts$products<TRes> get products =>
      CopyWith$Query$GetProducts$products.stub(_res);
}

const documentNodeQueryGetProducts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetProducts'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'query')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
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
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '50'),
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
                        name: NameNode(value: 'classification'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'family'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'class'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'line'),
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

class Query$GetProducts$products {
  Query$GetProducts$products({
    this.nodes,
    this.$__typename = 'ProductsConnection',
  });

  factory Query$GetProducts$products.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetProducts$products(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$GetProducts$products$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetProducts$products$nodes>? nodes;

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
    if (other is! Query$GetProducts$products ||
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

extension UtilityExtension$Query$GetProducts$products
    on Query$GetProducts$products {
  CopyWith$Query$GetProducts$products<Query$GetProducts$products>
  get copyWith => CopyWith$Query$GetProducts$products(this, (i) => i);
}

abstract class CopyWith$Query$GetProducts$products<TRes> {
  factory CopyWith$Query$GetProducts$products(
    Query$GetProducts$products instance,
    TRes Function(Query$GetProducts$products) then,
  ) = _CopyWithImpl$Query$GetProducts$products;

  factory CopyWith$Query$GetProducts$products.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProducts$products;

  TRes call({
    List<Query$GetProducts$products$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$GetProducts$products$nodes>? Function(
      Iterable<
        CopyWith$Query$GetProducts$products$nodes<
          Query$GetProducts$products$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetProducts$products<TRes>
    implements CopyWith$Query$GetProducts$products<TRes> {
  _CopyWithImpl$Query$GetProducts$products(this._instance, this._then);

  final Query$GetProducts$products _instance;

  final TRes Function(Query$GetProducts$products) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? nodes = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetProducts$products(
          nodes: nodes == _undefined
              ? _instance.nodes
              : (nodes as List<Query$GetProducts$products$nodes>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes nodes(
    Iterable<Query$GetProducts$products$nodes>? Function(
      Iterable<
        CopyWith$Query$GetProducts$products$nodes<
          Query$GetProducts$products$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$GetProducts$products$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetProducts$products<TRes>
    implements CopyWith$Query$GetProducts$products<TRes> {
  _CopyWithStubImpl$Query$GetProducts$products(this._res);

  TRes _res;

  call({List<Query$GetProducts$products$nodes>? nodes, String? $__typename}) =>
      _res;

  nodes(_fn) => _res;
}

class Query$GetProducts$products$nodes {
  Query$GetProducts$products$nodes({
    required this.code,
    required this.description,
    required this.classification,
    this.$__typename = 'Product',
  });

  factory Query$GetProducts$products$nodes.fromJson(Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$description = json['description'];
    final l$classification = json['classification'];
    final l$$__typename = json['__typename'];
    return Query$GetProducts$products$nodes(
      code: (l$code as String),
      description: (l$description as String),
      classification: Query$GetProducts$products$nodes$classification.fromJson(
        (l$classification as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String description;

  final Query$GetProducts$products$nodes$classification classification;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$classification = classification;
    _resultData['classification'] = l$classification.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$description = description;
    final l$classification = classification;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$description,
      l$classification,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetProducts$products$nodes ||
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
    final l$classification = classification;
    final lOther$classification = other.classification;
    if (l$classification != lOther$classification) {
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

extension UtilityExtension$Query$GetProducts$products$nodes
    on Query$GetProducts$products$nodes {
  CopyWith$Query$GetProducts$products$nodes<Query$GetProducts$products$nodes>
  get copyWith => CopyWith$Query$GetProducts$products$nodes(this, (i) => i);
}

abstract class CopyWith$Query$GetProducts$products$nodes<TRes> {
  factory CopyWith$Query$GetProducts$products$nodes(
    Query$GetProducts$products$nodes instance,
    TRes Function(Query$GetProducts$products$nodes) then,
  ) = _CopyWithImpl$Query$GetProducts$products$nodes;

  factory CopyWith$Query$GetProducts$products$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProducts$products$nodes;

  TRes call({
    String? code,
    String? description,
    Query$GetProducts$products$nodes$classification? classification,
    String? $__typename,
  });
  CopyWith$Query$GetProducts$products$nodes$classification<TRes>
  get classification;
}

class _CopyWithImpl$Query$GetProducts$products$nodes<TRes>
    implements CopyWith$Query$GetProducts$products$nodes<TRes> {
  _CopyWithImpl$Query$GetProducts$products$nodes(this._instance, this._then);

  final Query$GetProducts$products$nodes _instance;

  final TRes Function(Query$GetProducts$products$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? description = _undefined,
    Object? classification = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetProducts$products$nodes(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      classification: classification == _undefined || classification == null
          ? _instance.classification
          : (classification as Query$GetProducts$products$nodes$classification),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetProducts$products$nodes$classification<TRes>
  get classification {
    final local$classification = _instance.classification;
    return CopyWith$Query$GetProducts$products$nodes$classification(
      local$classification,
      (e) => call(classification: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetProducts$products$nodes<TRes>
    implements CopyWith$Query$GetProducts$products$nodes<TRes> {
  _CopyWithStubImpl$Query$GetProducts$products$nodes(this._res);

  TRes _res;

  call({
    String? code,
    String? description,
    Query$GetProducts$products$nodes$classification? classification,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetProducts$products$nodes$classification<TRes>
  get classification =>
      CopyWith$Query$GetProducts$products$nodes$classification.stub(_res);
}

class Query$GetProducts$products$nodes$classification {
  Query$GetProducts$products$nodes$classification({
    required this.family,
    required this.$class,
    required this.line,
    this.$__typename = 'ProductClassification',
  });

  factory Query$GetProducts$products$nodes$classification.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$family = json['family'];
    final l$$class = json['class'];
    final l$line = json['line'];
    final l$$__typename = json['__typename'];
    return Query$GetProducts$products$nodes$classification(
      family: (l$family as String),
      $class: (l$$class as String),
      line: (l$line as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String family;

  final String $class;

  final String line;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$family = family;
    _resultData['family'] = l$family;
    final l$$class = $class;
    _resultData['class'] = l$$class;
    final l$line = line;
    _resultData['line'] = l$line;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$family = family;
    final l$$class = $class;
    final l$line = line;
    final l$$__typename = $__typename;
    return Object.hashAll([l$family, l$$class, l$line, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetProducts$products$nodes$classification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
      return false;
    }
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (l$$class != lOther$$class) {
      return false;
    }
    final l$line = line;
    final lOther$line = other.line;
    if (l$line != lOther$line) {
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

extension UtilityExtension$Query$GetProducts$products$nodes$classification
    on Query$GetProducts$products$nodes$classification {
  CopyWith$Query$GetProducts$products$nodes$classification<
    Query$GetProducts$products$nodes$classification
  >
  get copyWith =>
      CopyWith$Query$GetProducts$products$nodes$classification(this, (i) => i);
}

abstract class CopyWith$Query$GetProducts$products$nodes$classification<TRes> {
  factory CopyWith$Query$GetProducts$products$nodes$classification(
    Query$GetProducts$products$nodes$classification instance,
    TRes Function(Query$GetProducts$products$nodes$classification) then,
  ) = _CopyWithImpl$Query$GetProducts$products$nodes$classification;

  factory CopyWith$Query$GetProducts$products$nodes$classification.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetProducts$products$nodes$classification;

  TRes call({
    String? family,
    String? $class,
    String? line,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetProducts$products$nodes$classification<TRes>
    implements CopyWith$Query$GetProducts$products$nodes$classification<TRes> {
  _CopyWithImpl$Query$GetProducts$products$nodes$classification(
    this._instance,
    this._then,
  );

  final Query$GetProducts$products$nodes$classification _instance;

  final TRes Function(Query$GetProducts$products$nodes$classification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? family = _undefined,
    Object? $class = _undefined,
    Object? line = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetProducts$products$nodes$classification(
      family: family == _undefined || family == null
          ? _instance.family
          : (family as String),
      $class: $class == _undefined || $class == null
          ? _instance.$class
          : ($class as String),
      line: line == _undefined || line == null
          ? _instance.line
          : (line as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetProducts$products$nodes$classification<TRes>
    implements CopyWith$Query$GetProducts$products$nodes$classification<TRes> {
  _CopyWithStubImpl$Query$GetProducts$products$nodes$classification(this._res);

  TRes _res;

  call({String? family, String? $class, String? line, String? $__typename}) =>
      _res;
}
