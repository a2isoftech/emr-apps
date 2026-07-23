import 'package:gql/ast.dart';

class Variables$Query$SearchProducts {
  factory Variables$Query$SearchProducts({
    String? query,
    List<String>? productClasses,
    List<String>? productFamilies,
    List<String>? productLines,
    int? first,
    int? last,
    String? before,
    String? after,
  }) => Variables$Query$SearchProducts._({
    if (query != null) r'query': query,
    if (productClasses != null) r'productClasses': productClasses,
    if (productFamilies != null) r'productFamilies': productFamilies,
    if (productLines != null) r'productLines': productLines,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
  });

  Variables$Query$SearchProducts._(this._$data);

  factory Variables$Query$SearchProducts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    if (data.containsKey('productClasses')) {
      final l$productClasses = data['productClasses'];
      result$data['productClasses'] = (l$productClasses as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('productFamilies')) {
      final l$productFamilies = data['productFamilies'];
      result$data['productFamilies'] = (l$productFamilies as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('productLines')) {
      final l$productLines = data['productLines'];
      result$data['productLines'] = (l$productLines as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables$Query$SearchProducts._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get query => (_$data['query'] as String?);

  List<String>? get productClasses =>
      (_$data['productClasses'] as List<String>?);

  List<String>? get productFamilies =>
      (_$data['productFamilies'] as List<String>?);

  List<String>? get productLines => (_$data['productLines'] as List<String>?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    if (_$data.containsKey('productClasses')) {
      final l$productClasses = productClasses;
      result$data['productClasses'] = l$productClasses?.map((e) => e).toList();
    }
    if (_$data.containsKey('productFamilies')) {
      final l$productFamilies = productFamilies;
      result$data['productFamilies'] = l$productFamilies
          ?.map((e) => e)
          .toList();
    }
    if (_$data.containsKey('productLines')) {
      final l$productLines = productLines;
      result$data['productLines'] = l$productLines?.map((e) => e).toList();
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
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
    if (_$data.containsKey('query') != other._$data.containsKey('query')) {
      return false;
    }
    if (l$query != lOther$query) {
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
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$last = last;
    final lOther$last = other.last;
    if (_$data.containsKey('last') != other._$data.containsKey('last')) {
      return false;
    }
    if (l$last != lOther$last) {
      return false;
    }
    final l$before = before;
    final lOther$before = other.before;
    if (_$data.containsKey('before') != other._$data.containsKey('before')) {
      return false;
    }
    if (l$before != lOther$before) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$productClasses = productClasses;
    final l$productFamilies = productFamilies;
    final l$productLines = productLines;
    final l$first = first;
    final l$last = last;
    final l$before = before;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('query') ? l$query : const {},
      _$data.containsKey('productClasses')
          ? l$productClasses == null
                ? null
                : Object.hashAll(l$productClasses.map((v) => v))
          : const {},
      _$data.containsKey('productFamilies')
          ? l$productFamilies == null
                ? null
                : Object.hashAll(l$productFamilies.map((v) => v))
          : const {},
      _$data.containsKey('productLines')
          ? l$productLines == null
                ? null
                : Object.hashAll(l$productLines.map((v) => v))
          : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
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
    List<String>? productClasses,
    List<String>? productFamilies,
    List<String>? productLines,
    int? first,
    int? last,
    String? before,
    String? after,
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
    Object? productClasses = _undefined,
    Object? productFamilies = _undefined,
    Object? productLines = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables$Query$SearchProducts._({
      ..._instance._$data,
      if (query != _undefined) 'query': (query as String?),
      if (productClasses != _undefined)
        'productClasses': (productClasses as List<String>?),
      if (productFamilies != _undefined)
        'productFamilies': (productFamilies as List<String>?),
      if (productLines != _undefined)
        'productLines': (productLines as List<String>?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchProducts<TRes>
    implements CopyWith$Variables$Query$SearchProducts<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchProducts(this._res);

  TRes _res;

  call({
    String? query,
    List<String>? productClasses,
    List<String>? productFamilies,
    List<String>? productLines,
    int? first,
    int? last,
    String? before,
    String? after,
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
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
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
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'last')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'before')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'after')),
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
                name: NameNode(value: 'productClasses'),
                value: VariableNode(name: NameNode(value: 'productClasses')),
              ),
              ArgumentNode(
                name: NameNode(value: 'productFamilies'),
                value: VariableNode(name: NameNode(value: 'productFamilies')),
              ),
              ArgumentNode(
                name: NameNode(value: 'productLines'),
                value: VariableNode(name: NameNode(value: 'productLines')),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'last'),
                value: VariableNode(name: NameNode(value: 'last')),
              ),
              ArgumentNode(
                name: NameNode(value: 'before'),
                value: VariableNode(name: NameNode(value: 'before')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'totalCount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'pageInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'startCursor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'endCursor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'hasNextPage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'hasPreviousPage'),
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
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
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
                              name: NameNode(value: 'line'),
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

class Query$SearchProducts$products {
  Query$SearchProducts$products({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'ProductsConnection',
  });

  factory Query$SearchProducts$products.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchProducts$products(
      totalCount: (l$totalCount as int),
      pageInfo: Query$SearchProducts$products$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
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

  final int totalCount;

  final Query$SearchProducts$products$pageInfo pageInfo;

  final List<Query$SearchProducts$products$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$pageInfo,
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
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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
    int? totalCount,
    Query$SearchProducts$products$pageInfo? pageInfo,
    List<Query$SearchProducts$products$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchProducts$products$pageInfo<TRes> get pageInfo;
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

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchProducts$products(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$SearchProducts$products$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$SearchProducts$products$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchProducts$products$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchProducts$products$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

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
    int? totalCount,
    Query$SearchProducts$products$pageInfo? pageInfo,
    List<Query$SearchProducts$products$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchProducts$products$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$SearchProducts$products$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$SearchProducts$products$pageInfo {
  Query$SearchProducts$products$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchProducts$products$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$SearchProducts$products$pageInfo(
      startCursor: (l$startCursor as String?),
      endCursor: (l$endCursor as String?),
      hasNextPage: (l$hasNextPage as bool),
      hasPreviousPage: (l$hasPreviousPage as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? startCursor;

  final String? endCursor;

  final bool hasNextPage;

  final bool hasPreviousPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$startCursor = startCursor;
    _resultData['startCursor'] = l$startCursor;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$startCursor = startCursor;
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$startCursor,
      l$endCursor,
      l$hasNextPage,
      l$hasPreviousPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchProducts$products$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$startCursor = startCursor;
    final lOther$startCursor = other.startCursor;
    if (l$startCursor != lOther$startCursor) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
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

extension UtilityExtension$Query$SearchProducts$products$pageInfo
    on Query$SearchProducts$products$pageInfo {
  CopyWith$Query$SearchProducts$products$pageInfo<
    Query$SearchProducts$products$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SearchProducts$products$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$SearchProducts$products$pageInfo<TRes> {
  factory CopyWith$Query$SearchProducts$products$pageInfo(
    Query$SearchProducts$products$pageInfo instance,
    TRes Function(Query$SearchProducts$products$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchProducts$products$pageInfo;

  factory CopyWith$Query$SearchProducts$products$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchProducts$products$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchProducts$products$pageInfo<TRes>
    implements CopyWith$Query$SearchProducts$products$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchProducts$products$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchProducts$products$pageInfo _instance;

  final TRes Function(Query$SearchProducts$products$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchProducts$products$pageInfo(
      startCursor: startCursor == _undefined
          ? _instance.startCursor
          : (startCursor as String?),
      endCursor: endCursor == _undefined
          ? _instance.endCursor
          : (endCursor as String?),
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      hasPreviousPage: hasPreviousPage == _undefined || hasPreviousPage == null
          ? _instance.hasPreviousPage
          : (hasPreviousPage as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchProducts$products$pageInfo<TRes>
    implements CopyWith$Query$SearchProducts$products$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchProducts$products$pageInfo(this._res);

  TRes _res;

  call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  }) => _res;
}

class Query$SearchProducts$products$nodes {
  Query$SearchProducts$products$nodes({
    required this.id,
    required this.code,
    required this.description,
    required this.classification,
    this.$__typename = 'Product',
  });

  factory Query$SearchProducts$products$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$description = json['description'];
    final l$classification = json['classification'];
    final l$$__typename = json['__typename'];
    return Query$SearchProducts$products$nodes(
      id: (l$id as String),
      code: (l$code as String),
      description: (l$description as String),
      classification:
          Query$SearchProducts$products$nodes$classification.fromJson(
            (l$classification as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String description;

  final Query$SearchProducts$products$nodes$classification classification;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$id = id;
    final l$code = code;
    final l$description = description;
    final l$classification = classification;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
    if (other is! Query$SearchProducts$products$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

  TRes call({
    String? id,
    String? code,
    String? description,
    Query$SearchProducts$products$nodes$classification? classification,
    String? $__typename,
  });
  CopyWith$Query$SearchProducts$products$nodes$classification<TRes>
  get classification;
}

class _CopyWithImpl$Query$SearchProducts$products$nodes<TRes>
    implements CopyWith$Query$SearchProducts$products$nodes<TRes> {
  _CopyWithImpl$Query$SearchProducts$products$nodes(this._instance, this._then);

  final Query$SearchProducts$products$nodes _instance;

  final TRes Function(Query$SearchProducts$products$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? description = _undefined,
    Object? classification = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchProducts$products$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      classification: classification == _undefined || classification == null
          ? _instance.classification
          : (classification
                as Query$SearchProducts$products$nodes$classification),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchProducts$products$nodes$classification<TRes>
  get classification {
    final local$classification = _instance.classification;
    return CopyWith$Query$SearchProducts$products$nodes$classification(
      local$classification,
      (e) => call(classification: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchProducts$products$nodes<TRes>
    implements CopyWith$Query$SearchProducts$products$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchProducts$products$nodes(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    String? description,
    Query$SearchProducts$products$nodes$classification? classification,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchProducts$products$nodes$classification<TRes>
  get classification =>
      CopyWith$Query$SearchProducts$products$nodes$classification.stub(_res);
}

class Query$SearchProducts$products$nodes$classification {
  Query$SearchProducts$products$nodes$classification({
    required this.family,
    required this.line,
    required this.$class,
    this.$__typename = 'ProductClassification',
  });

  factory Query$SearchProducts$products$nodes$classification.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$family = json['family'];
    final l$line = json['line'];
    final l$$class = json['class'];
    final l$$__typename = json['__typename'];
    return Query$SearchProducts$products$nodes$classification(
      family: (l$family as String),
      line: (l$line as String),
      $class: (l$$class as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String family;

  final String line;

  final String $class;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$family = family;
    _resultData['family'] = l$family;
    final l$line = line;
    _resultData['line'] = l$line;
    final l$$class = $class;
    _resultData['class'] = l$$class;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$family = family;
    final l$line = line;
    final l$$class = $class;
    final l$$__typename = $__typename;
    return Object.hashAll([l$family, l$line, l$$class, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchProducts$products$nodes$classification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
      return false;
    }
    final l$line = line;
    final lOther$line = other.line;
    if (l$line != lOther$line) {
      return false;
    }
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (l$$class != lOther$$class) {
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

extension UtilityExtension$Query$SearchProducts$products$nodes$classification
    on Query$SearchProducts$products$nodes$classification {
  CopyWith$Query$SearchProducts$products$nodes$classification<
    Query$SearchProducts$products$nodes$classification
  >
  get copyWith => CopyWith$Query$SearchProducts$products$nodes$classification(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$SearchProducts$products$nodes$classification<
  TRes
> {
  factory CopyWith$Query$SearchProducts$products$nodes$classification(
    Query$SearchProducts$products$nodes$classification instance,
    TRes Function(Query$SearchProducts$products$nodes$classification) then,
  ) = _CopyWithImpl$Query$SearchProducts$products$nodes$classification;

  factory CopyWith$Query$SearchProducts$products$nodes$classification.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchProducts$products$nodes$classification;

  TRes call({
    String? family,
    String? line,
    String? $class,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchProducts$products$nodes$classification<TRes>
    implements
        CopyWith$Query$SearchProducts$products$nodes$classification<TRes> {
  _CopyWithImpl$Query$SearchProducts$products$nodes$classification(
    this._instance,
    this._then,
  );

  final Query$SearchProducts$products$nodes$classification _instance;

  final TRes Function(Query$SearchProducts$products$nodes$classification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? family = _undefined,
    Object? line = _undefined,
    Object? $class = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchProducts$products$nodes$classification(
      family: family == _undefined || family == null
          ? _instance.family
          : (family as String),
      line: line == _undefined || line == null
          ? _instance.line
          : (line as String),
      $class: $class == _undefined || $class == null
          ? _instance.$class
          : ($class as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchProducts$products$nodes$classification<TRes>
    implements
        CopyWith$Query$SearchProducts$products$nodes$classification<TRes> {
  _CopyWithStubImpl$Query$SearchProducts$products$nodes$classification(
    this._res,
  );

  TRes _res;

  call({String? family, String? line, String? $class, String? $__typename}) =>
      _res;
}
