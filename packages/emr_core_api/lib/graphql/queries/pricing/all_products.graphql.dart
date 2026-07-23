import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$AllProducts {
  factory Variables$Query$AllProducts({
    String? query,
    String? after,
    String? before,
    int? first,
    int? last,
    List<String>? productFamilies,
    List<Input$ProductSortInput>? order,
  }) => Variables$Query$AllProducts._({
    if (query != null) r'query': query,
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (productFamilies != null) r'productFamilies': productFamilies,
    if (order != null) r'order': order,
  });

  Variables$Query$AllProducts._(this._$data);

  factory Variables$Query$AllProducts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('productFamilies')) {
      final l$productFamilies = data['productFamilies'];
      result$data['productFamilies'] = (l$productFamilies as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) => Input$ProductSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    return Variables$Query$AllProducts._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get query => (_$data['query'] as String?);

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  List<String>? get productFamilies =>
      (_$data['productFamilies'] as List<String>?);

  List<Input$ProductSortInput>? get order =>
      (_$data['order'] as List<Input$ProductSortInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('productFamilies')) {
      final l$productFamilies = productFamilies;
      result$data['productFamilies'] = l$productFamilies
          ?.map((e) => e)
          .toList();
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$AllProducts<Variables$Query$AllProducts>
  get copyWith => CopyWith$Variables$Query$AllProducts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$AllProducts ||
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
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
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
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != null && lOther$order != null) {
      if (l$order.length != lOther$order.length) {
        return false;
      }
      for (int i = 0; i < l$order.length; i++) {
        final l$order$entry = l$order[i];
        final lOther$order$entry = lOther$order[i];
        if (l$order$entry != lOther$order$entry) {
          return false;
        }
      }
    } else if (l$order != lOther$order) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$after = after;
    final l$before = before;
    final l$first = first;
    final l$last = last;
    final l$productFamilies = productFamilies;
    final l$order = order;
    return Object.hashAll([
      _$data.containsKey('query') ? l$query : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('productFamilies')
          ? l$productFamilies == null
                ? null
                : Object.hashAll(l$productFamilies.map((v) => v))
          : const {},
      _$data.containsKey('order')
          ? l$order == null
                ? null
                : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$AllProducts<TRes> {
  factory CopyWith$Variables$Query$AllProducts(
    Variables$Query$AllProducts instance,
    TRes Function(Variables$Query$AllProducts) then,
  ) = _CopyWithImpl$Variables$Query$AllProducts;

  factory CopyWith$Variables$Query$AllProducts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$AllProducts;

  TRes call({
    String? query,
    String? after,
    String? before,
    int? first,
    int? last,
    List<String>? productFamilies,
    List<Input$ProductSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$AllProducts<TRes>
    implements CopyWith$Variables$Query$AllProducts<TRes> {
  _CopyWithImpl$Variables$Query$AllProducts(this._instance, this._then);

  final Variables$Query$AllProducts _instance;

  final TRes Function(Variables$Query$AllProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? productFamilies = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$AllProducts._({
      ..._instance._$data,
      if (query != _undefined) 'query': (query as String?),
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (productFamilies != _undefined)
        'productFamilies': (productFamilies as List<String>?),
      if (order != _undefined)
        'order': (order as List<Input$ProductSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$AllProducts<TRes>
    implements CopyWith$Variables$Query$AllProducts<TRes> {
  _CopyWithStubImpl$Variables$Query$AllProducts(this._res);

  TRes _res;

  call({
    String? query,
    String? after,
    String? before,
    int? first,
    int? last,
    List<String>? productFamilies,
    List<Input$ProductSortInput>? order,
  }) => _res;
}

class Query$AllProducts {
  Query$AllProducts({this.products, this.$__typename = 'Query'});

  factory Query$AllProducts.fromJson(Map<String, dynamic> json) {
    final l$products = json['products'];
    final l$$__typename = json['__typename'];
    return Query$AllProducts(
      products: l$products == null
          ? null
          : Query$AllProducts$products.fromJson(
              (l$products as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AllProducts$products? products;

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
    if (other is! Query$AllProducts || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$AllProducts on Query$AllProducts {
  CopyWith$Query$AllProducts<Query$AllProducts> get copyWith =>
      CopyWith$Query$AllProducts(this, (i) => i);
}

abstract class CopyWith$Query$AllProducts<TRes> {
  factory CopyWith$Query$AllProducts(
    Query$AllProducts instance,
    TRes Function(Query$AllProducts) then,
  ) = _CopyWithImpl$Query$AllProducts;

  factory CopyWith$Query$AllProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$AllProducts;

  TRes call({Query$AllProducts$products? products, String? $__typename});
  CopyWith$Query$AllProducts$products<TRes> get products;
}

class _CopyWithImpl$Query$AllProducts<TRes>
    implements CopyWith$Query$AllProducts<TRes> {
  _CopyWithImpl$Query$AllProducts(this._instance, this._then);

  final Query$AllProducts _instance;

  final TRes Function(Query$AllProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? products = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AllProducts(
      products: products == _undefined
          ? _instance.products
          : (products as Query$AllProducts$products?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AllProducts$products<TRes> get products {
    final local$products = _instance.products;
    return local$products == null
        ? CopyWith$Query$AllProducts$products.stub(_then(_instance))
        : CopyWith$Query$AllProducts$products(
            local$products,
            (e) => call(products: e),
          );
  }
}

class _CopyWithStubImpl$Query$AllProducts<TRes>
    implements CopyWith$Query$AllProducts<TRes> {
  _CopyWithStubImpl$Query$AllProducts(this._res);

  TRes _res;

  call({Query$AllProducts$products? products, String? $__typename}) => _res;

  CopyWith$Query$AllProducts$products<TRes> get products =>
      CopyWith$Query$AllProducts$products.stub(_res);
}

const documentNodeQueryAllProducts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'AllProducts'),
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
          variable: VariableNode(name: NameNode(value: 'after')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
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
          variable: VariableNode(name: NameNode(value: 'order')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'ProductSortInput'),
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
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
              ),
              ArgumentNode(
                name: NameNode(value: 'before'),
                value: VariableNode(name: NameNode(value: 'before')),
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
                name: NameNode(value: 'productFamilies'),
                value: VariableNode(name: NameNode(value: 'productFamilies')),
              ),
              ArgumentNode(
                name: NameNode(value: 'order'),
                value: VariableNode(name: NameNode(value: 'order')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'pageInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
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
                  name: NameNode(value: 'totalCount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
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
                        name: NameNode(value: 'description'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'permittedLocationType'),
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

class Query$AllProducts$products {
  Query$AllProducts$products({
    required this.pageInfo,
    required this.totalCount,
    this.nodes,
    this.$__typename = 'ProductsConnection',
  });

  factory Query$AllProducts$products.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$AllProducts$products(
      pageInfo: Query$AllProducts$products$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$AllProducts$products$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AllProducts$products$pageInfo pageInfo;

  final int totalCount;

  final List<Query$AllProducts$products$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$totalCount = totalCount;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$totalCount,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AllProducts$products ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
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

extension UtilityExtension$Query$AllProducts$products
    on Query$AllProducts$products {
  CopyWith$Query$AllProducts$products<Query$AllProducts$products>
  get copyWith => CopyWith$Query$AllProducts$products(this, (i) => i);
}

abstract class CopyWith$Query$AllProducts$products<TRes> {
  factory CopyWith$Query$AllProducts$products(
    Query$AllProducts$products instance,
    TRes Function(Query$AllProducts$products) then,
  ) = _CopyWithImpl$Query$AllProducts$products;

  factory CopyWith$Query$AllProducts$products.stub(TRes res) =
      _CopyWithStubImpl$Query$AllProducts$products;

  TRes call({
    Query$AllProducts$products$pageInfo? pageInfo,
    int? totalCount,
    List<Query$AllProducts$products$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$AllProducts$products$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$AllProducts$products$nodes>? Function(
      Iterable<
        CopyWith$Query$AllProducts$products$nodes<
          Query$AllProducts$products$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$AllProducts$products<TRes>
    implements CopyWith$Query$AllProducts$products<TRes> {
  _CopyWithImpl$Query$AllProducts$products(this._instance, this._then);

  final Query$AllProducts$products _instance;

  final TRes Function(Query$AllProducts$products) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AllProducts$products(
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$AllProducts$products$pageInfo),
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$AllProducts$products$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AllProducts$products$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$AllProducts$products$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$AllProducts$products$nodes>? Function(
      Iterable<
        CopyWith$Query$AllProducts$products$nodes<
          Query$AllProducts$products$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$AllProducts$products$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$AllProducts$products<TRes>
    implements CopyWith$Query$AllProducts$products<TRes> {
  _CopyWithStubImpl$Query$AllProducts$products(this._res);

  TRes _res;

  call({
    Query$AllProducts$products$pageInfo? pageInfo,
    int? totalCount,
    List<Query$AllProducts$products$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AllProducts$products$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$AllProducts$products$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$AllProducts$products$pageInfo {
  Query$AllProducts$products$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$AllProducts$products$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$AllProducts$products$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      hasPreviousPage: (l$hasPreviousPage as bool),
      startCursor: (l$startCursor as String?),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final bool hasPreviousPage;

  final String? startCursor;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$startCursor = startCursor;
    _resultData['startCursor'] = l$startCursor;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    final l$startCursor = startCursor;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$hasPreviousPage,
      l$startCursor,
      l$endCursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AllProducts$products$pageInfo ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AllProducts$products$pageInfo
    on Query$AllProducts$products$pageInfo {
  CopyWith$Query$AllProducts$products$pageInfo<
    Query$AllProducts$products$pageInfo
  >
  get copyWith => CopyWith$Query$AllProducts$products$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$AllProducts$products$pageInfo<TRes> {
  factory CopyWith$Query$AllProducts$products$pageInfo(
    Query$AllProducts$products$pageInfo instance,
    TRes Function(Query$AllProducts$products$pageInfo) then,
  ) = _CopyWithImpl$Query$AllProducts$products$pageInfo;

  factory CopyWith$Query$AllProducts$products$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$AllProducts$products$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AllProducts$products$pageInfo<TRes>
    implements CopyWith$Query$AllProducts$products$pageInfo<TRes> {
  _CopyWithImpl$Query$AllProducts$products$pageInfo(this._instance, this._then);

  final Query$AllProducts$products$pageInfo _instance;

  final TRes Function(Query$AllProducts$products$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AllProducts$products$pageInfo(
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      hasPreviousPage: hasPreviousPage == _undefined || hasPreviousPage == null
          ? _instance.hasPreviousPage
          : (hasPreviousPage as bool),
      startCursor: startCursor == _undefined
          ? _instance.startCursor
          : (startCursor as String?),
      endCursor: endCursor == _undefined
          ? _instance.endCursor
          : (endCursor as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AllProducts$products$pageInfo<TRes>
    implements CopyWith$Query$AllProducts$products$pageInfo<TRes> {
  _CopyWithStubImpl$Query$AllProducts$products$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}

class Query$AllProducts$products$nodes {
  Query$AllProducts$products$nodes({
    required this.id,
    required this.code,
    required this.classification,
    required this.description,
    required this.permittedLocationType,
    this.$__typename = 'Product',
  });

  factory Query$AllProducts$products$nodes.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$classification = json['classification'];
    final l$description = json['description'];
    final l$permittedLocationType = json['permittedLocationType'];
    final l$$__typename = json['__typename'];
    return Query$AllProducts$products$nodes(
      id: (l$id as String),
      code: (l$code as String),
      classification: Query$AllProducts$products$nodes$classification.fromJson(
        (l$classification as Map<String, dynamic>),
      ),
      description: (l$description as String),
      permittedLocationType: fromJson$Enum$InventoryLocationType(
        (l$permittedLocationType as String),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final Query$AllProducts$products$nodes$classification classification;

  final String description;

  final Enum$InventoryLocationType permittedLocationType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$classification = classification;
    _resultData['classification'] = l$classification.toJson();
    final l$description = description;
    _resultData['description'] = l$description;
    final l$permittedLocationType = permittedLocationType;
    _resultData['permittedLocationType'] = toJson$Enum$InventoryLocationType(
      l$permittedLocationType,
    );
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$classification = classification;
    final l$description = description;
    final l$permittedLocationType = permittedLocationType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$classification,
      l$description,
      l$permittedLocationType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AllProducts$products$nodes ||
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
    final l$classification = classification;
    final lOther$classification = other.classification;
    if (l$classification != lOther$classification) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$permittedLocationType = permittedLocationType;
    final lOther$permittedLocationType = other.permittedLocationType;
    if (l$permittedLocationType != lOther$permittedLocationType) {
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

extension UtilityExtension$Query$AllProducts$products$nodes
    on Query$AllProducts$products$nodes {
  CopyWith$Query$AllProducts$products$nodes<Query$AllProducts$products$nodes>
  get copyWith => CopyWith$Query$AllProducts$products$nodes(this, (i) => i);
}

abstract class CopyWith$Query$AllProducts$products$nodes<TRes> {
  factory CopyWith$Query$AllProducts$products$nodes(
    Query$AllProducts$products$nodes instance,
    TRes Function(Query$AllProducts$products$nodes) then,
  ) = _CopyWithImpl$Query$AllProducts$products$nodes;

  factory CopyWith$Query$AllProducts$products$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$AllProducts$products$nodes;

  TRes call({
    String? id,
    String? code,
    Query$AllProducts$products$nodes$classification? classification,
    String? description,
    Enum$InventoryLocationType? permittedLocationType,
    String? $__typename,
  });
  CopyWith$Query$AllProducts$products$nodes$classification<TRes>
  get classification;
}

class _CopyWithImpl$Query$AllProducts$products$nodes<TRes>
    implements CopyWith$Query$AllProducts$products$nodes<TRes> {
  _CopyWithImpl$Query$AllProducts$products$nodes(this._instance, this._then);

  final Query$AllProducts$products$nodes _instance;

  final TRes Function(Query$AllProducts$products$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? classification = _undefined,
    Object? description = _undefined,
    Object? permittedLocationType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AllProducts$products$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      classification: classification == _undefined || classification == null
          ? _instance.classification
          : (classification as Query$AllProducts$products$nodes$classification),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      permittedLocationType:
          permittedLocationType == _undefined || permittedLocationType == null
          ? _instance.permittedLocationType
          : (permittedLocationType as Enum$InventoryLocationType),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AllProducts$products$nodes$classification<TRes>
  get classification {
    final local$classification = _instance.classification;
    return CopyWith$Query$AllProducts$products$nodes$classification(
      local$classification,
      (e) => call(classification: e),
    );
  }
}

class _CopyWithStubImpl$Query$AllProducts$products$nodes<TRes>
    implements CopyWith$Query$AllProducts$products$nodes<TRes> {
  _CopyWithStubImpl$Query$AllProducts$products$nodes(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    Query$AllProducts$products$nodes$classification? classification,
    String? description,
    Enum$InventoryLocationType? permittedLocationType,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AllProducts$products$nodes$classification<TRes>
  get classification =>
      CopyWith$Query$AllProducts$products$nodes$classification.stub(_res);
}

class Query$AllProducts$products$nodes$classification {
  Query$AllProducts$products$nodes$classification({
    required this.family,
    this.$__typename = 'ProductClassification',
  });

  factory Query$AllProducts$products$nodes$classification.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$family = json['family'];
    final l$$__typename = json['__typename'];
    return Query$AllProducts$products$nodes$classification(
      family: (l$family as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String family;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$family = family;
    _resultData['family'] = l$family;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$family = family;
    final l$$__typename = $__typename;
    return Object.hashAll([l$family, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AllProducts$products$nodes$classification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
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

extension UtilityExtension$Query$AllProducts$products$nodes$classification
    on Query$AllProducts$products$nodes$classification {
  CopyWith$Query$AllProducts$products$nodes$classification<
    Query$AllProducts$products$nodes$classification
  >
  get copyWith =>
      CopyWith$Query$AllProducts$products$nodes$classification(this, (i) => i);
}

abstract class CopyWith$Query$AllProducts$products$nodes$classification<TRes> {
  factory CopyWith$Query$AllProducts$products$nodes$classification(
    Query$AllProducts$products$nodes$classification instance,
    TRes Function(Query$AllProducts$products$nodes$classification) then,
  ) = _CopyWithImpl$Query$AllProducts$products$nodes$classification;

  factory CopyWith$Query$AllProducts$products$nodes$classification.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AllProducts$products$nodes$classification;

  TRes call({String? family, String? $__typename});
}

class _CopyWithImpl$Query$AllProducts$products$nodes$classification<TRes>
    implements CopyWith$Query$AllProducts$products$nodes$classification<TRes> {
  _CopyWithImpl$Query$AllProducts$products$nodes$classification(
    this._instance,
    this._then,
  );

  final Query$AllProducts$products$nodes$classification _instance;

  final TRes Function(Query$AllProducts$products$nodes$classification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? family = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$AllProducts$products$nodes$classification(
          family: family == _undefined || family == null
              ? _instance.family
              : (family as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$AllProducts$products$nodes$classification<TRes>
    implements CopyWith$Query$AllProducts$products$nodes$classification<TRes> {
  _CopyWithStubImpl$Query$AllProducts$products$nodes$classification(this._res);

  TRes _res;

  call({String? family, String? $__typename}) => _res;
}
