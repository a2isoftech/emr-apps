import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetAllProducts {
  factory Variables$Query$GetAllProducts({
    String? query,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$ProductSortInput>? order,
  }) => Variables$Query$GetAllProducts._({
    if (query != null) r'query': query,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (order != null) r'order': order,
  });

  Variables$Query$GetAllProducts._(this._$data);

  factory Variables$Query$GetAllProducts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) => Input$ProductSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    return Variables$Query$GetAllProducts._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get query => (_$data['query'] as String?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  List<Input$ProductSortInput>? get order =>
      (_$data['order'] as List<Input$ProductSortInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetAllProducts<Variables$Query$GetAllProducts>
  get copyWith => CopyWith$Variables$Query$GetAllProducts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAllProducts ||
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
    final l$before = before;
    final l$after = after;
    final l$first = first;
    final l$last = last;
    final l$order = order;
    return Object.hashAll([
      _$data.containsKey('query') ? l$query : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('order')
          ? l$order == null
                ? null
                : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetAllProducts<TRes> {
  factory CopyWith$Variables$Query$GetAllProducts(
    Variables$Query$GetAllProducts instance,
    TRes Function(Variables$Query$GetAllProducts) then,
  ) = _CopyWithImpl$Variables$Query$GetAllProducts;

  factory CopyWith$Variables$Query$GetAllProducts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllProducts;

  TRes call({
    String? query,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$ProductSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$GetAllProducts<TRes>
    implements CopyWith$Variables$Query$GetAllProducts<TRes> {
  _CopyWithImpl$Variables$Query$GetAllProducts(this._instance, this._then);

  final Variables$Query$GetAllProducts _instance;

  final TRes Function(Variables$Query$GetAllProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$GetAllProducts._({
      ..._instance._$data,
      if (query != _undefined) 'query': (query as String?),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (order != _undefined)
        'order': (order as List<Input$ProductSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAllProducts<TRes>
    implements CopyWith$Variables$Query$GetAllProducts<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllProducts(this._res);

  TRes _res;

  call({
    String? query,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$ProductSortInput>? order,
  }) => _res;
}

class Query$GetAllProducts {
  Query$GetAllProducts({this.products, this.$__typename = 'Query'});

  factory Query$GetAllProducts.fromJson(Map<String, dynamic> json) {
    final l$products = json['products'];
    final l$$__typename = json['__typename'];
    return Query$GetAllProducts(
      products: l$products == null
          ? null
          : Query$GetAllProducts$products.fromJson(
              (l$products as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAllProducts$products? products;

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
    if (other is! Query$GetAllProducts || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetAllProducts on Query$GetAllProducts {
  CopyWith$Query$GetAllProducts<Query$GetAllProducts> get copyWith =>
      CopyWith$Query$GetAllProducts(this, (i) => i);
}

abstract class CopyWith$Query$GetAllProducts<TRes> {
  factory CopyWith$Query$GetAllProducts(
    Query$GetAllProducts instance,
    TRes Function(Query$GetAllProducts) then,
  ) = _CopyWithImpl$Query$GetAllProducts;

  factory CopyWith$Query$GetAllProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllProducts;

  TRes call({Query$GetAllProducts$products? products, String? $__typename});
  CopyWith$Query$GetAllProducts$products<TRes> get products;
}

class _CopyWithImpl$Query$GetAllProducts<TRes>
    implements CopyWith$Query$GetAllProducts<TRes> {
  _CopyWithImpl$Query$GetAllProducts(this._instance, this._then);

  final Query$GetAllProducts _instance;

  final TRes Function(Query$GetAllProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? products = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllProducts(
      products: products == _undefined
          ? _instance.products
          : (products as Query$GetAllProducts$products?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAllProducts$products<TRes> get products {
    final local$products = _instance.products;
    return local$products == null
        ? CopyWith$Query$GetAllProducts$products.stub(_then(_instance))
        : CopyWith$Query$GetAllProducts$products(
            local$products,
            (e) => call(products: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetAllProducts<TRes>
    implements CopyWith$Query$GetAllProducts<TRes> {
  _CopyWithStubImpl$Query$GetAllProducts(this._res);

  TRes _res;

  call({Query$GetAllProducts$products? products, String? $__typename}) => _res;

  CopyWith$Query$GetAllProducts$products<TRes> get products =>
      CopyWith$Query$GetAllProducts$products.stub(_res);
}

const documentNodeQueryGetAllProducts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAllProducts'),
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
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
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
                name: NameNode(value: 'order'),
                value: VariableNode(name: NameNode(value: 'order')),
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
                  name: NameNode(value: 'edges'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'node'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'active'),
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
                              name: NameNode(value: 'itemType'),
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
                        name: NameNode(value: 'cursor'),
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
                  name: NameNode(value: 'pageInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
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
                        name: NameNode(value: 'startCursor'),
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

class Query$GetAllProducts$products {
  Query$GetAllProducts$products({
    required this.totalCount,
    this.edges,
    required this.pageInfo,
    this.$__typename = 'ProductsConnection',
  });

  factory Query$GetAllProducts$products.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetAllProducts$products(
      totalCount: (l$totalCount as int),
      edges: (l$edges as List<dynamic>?)
          ?.map(
            (e) => Query$GetAllProducts$products$edges.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      pageInfo: Query$GetAllProducts$products$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$GetAllProducts$products$edges>? edges;

  final Query$GetAllProducts$products$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$edges = edges;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllProducts$products ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$GetAllProducts$products
    on Query$GetAllProducts$products {
  CopyWith$Query$GetAllProducts$products<Query$GetAllProducts$products>
  get copyWith => CopyWith$Query$GetAllProducts$products(this, (i) => i);
}

abstract class CopyWith$Query$GetAllProducts$products<TRes> {
  factory CopyWith$Query$GetAllProducts$products(
    Query$GetAllProducts$products instance,
    TRes Function(Query$GetAllProducts$products) then,
  ) = _CopyWithImpl$Query$GetAllProducts$products;

  factory CopyWith$Query$GetAllProducts$products.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllProducts$products;

  TRes call({
    int? totalCount,
    List<Query$GetAllProducts$products$edges>? edges,
    Query$GetAllProducts$products$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
    Iterable<Query$GetAllProducts$products$edges>? Function(
      Iterable<
        CopyWith$Query$GetAllProducts$products$edges<
          Query$GetAllProducts$products$edges
        >
      >?,
    )
    _fn,
  );
  CopyWith$Query$GetAllProducts$products$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$GetAllProducts$products<TRes>
    implements CopyWith$Query$GetAllProducts$products<TRes> {
  _CopyWithImpl$Query$GetAllProducts$products(this._instance, this._then);

  final Query$GetAllProducts$products _instance;

  final TRes Function(Query$GetAllProducts$products) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllProducts$products(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      edges: edges == _undefined
          ? _instance.edges
          : (edges as List<Query$GetAllProducts$products$edges>?),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$GetAllProducts$products$pageInfo),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes edges(
    Iterable<Query$GetAllProducts$products$edges>? Function(
      Iterable<
        CopyWith$Query$GetAllProducts$products$edges<
          Query$GetAllProducts$products$edges
        >
      >?,
    )
    _fn,
  ) => call(
    edges: _fn(
      _instance.edges?.map(
        (e) => CopyWith$Query$GetAllProducts$products$edges(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Query$GetAllProducts$products$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetAllProducts$products$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAllProducts$products<TRes>
    implements CopyWith$Query$GetAllProducts$products<TRes> {
  _CopyWithStubImpl$Query$GetAllProducts$products(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$GetAllProducts$products$edges>? edges,
    Query$GetAllProducts$products$pageInfo? pageInfo,
    String? $__typename,
  }) => _res;

  edges(_fn) => _res;

  CopyWith$Query$GetAllProducts$products$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetAllProducts$products$pageInfo.stub(_res);
}

class Query$GetAllProducts$products$edges {
  Query$GetAllProducts$products$edges({
    required this.node,
    required this.cursor,
    this.$__typename = 'ProductsEdge',
  });

  factory Query$GetAllProducts$products$edges.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$node = json['node'];
    final l$cursor = json['cursor'];
    final l$$__typename = json['__typename'];
    return Query$GetAllProducts$products$edges(
      node: Query$GetAllProducts$products$edges$node.fromJson(
        (l$node as Map<String, dynamic>),
      ),
      cursor: (l$cursor as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAllProducts$products$edges$node node;

  final String cursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$cursor = cursor;
    _resultData['cursor'] = l$cursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$cursor = cursor;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$cursor, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllProducts$products$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$cursor = cursor;
    final lOther$cursor = other.cursor;
    if (l$cursor != lOther$cursor) {
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

extension UtilityExtension$Query$GetAllProducts$products$edges
    on Query$GetAllProducts$products$edges {
  CopyWith$Query$GetAllProducts$products$edges<
    Query$GetAllProducts$products$edges
  >
  get copyWith => CopyWith$Query$GetAllProducts$products$edges(this, (i) => i);
}

abstract class CopyWith$Query$GetAllProducts$products$edges<TRes> {
  factory CopyWith$Query$GetAllProducts$products$edges(
    Query$GetAllProducts$products$edges instance,
    TRes Function(Query$GetAllProducts$products$edges) then,
  ) = _CopyWithImpl$Query$GetAllProducts$products$edges;

  factory CopyWith$Query$GetAllProducts$products$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllProducts$products$edges;

  TRes call({
    Query$GetAllProducts$products$edges$node? node,
    String? cursor,
    String? $__typename,
  });
  CopyWith$Query$GetAllProducts$products$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$GetAllProducts$products$edges<TRes>
    implements CopyWith$Query$GetAllProducts$products$edges<TRes> {
  _CopyWithImpl$Query$GetAllProducts$products$edges(this._instance, this._then);

  final Query$GetAllProducts$products$edges _instance;

  final TRes Function(Query$GetAllProducts$products$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? cursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllProducts$products$edges(
      node: node == _undefined || node == null
          ? _instance.node
          : (node as Query$GetAllProducts$products$edges$node),
      cursor: cursor == _undefined || cursor == null
          ? _instance.cursor
          : (cursor as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAllProducts$products$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$GetAllProducts$products$edges$node(
      local$node,
      (e) => call(node: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAllProducts$products$edges<TRes>
    implements CopyWith$Query$GetAllProducts$products$edges<TRes> {
  _CopyWithStubImpl$Query$GetAllProducts$products$edges(this._res);

  TRes _res;

  call({
    Query$GetAllProducts$products$edges$node? node,
    String? cursor,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAllProducts$products$edges$node<TRes> get node =>
      CopyWith$Query$GetAllProducts$products$edges$node.stub(_res);
}

class Query$GetAllProducts$products$edges$node {
  Query$GetAllProducts$products$edges$node({
    required this.active,
    required this.description,
    required this.id,
    required this.code,
    required this.itemType,
    this.$__typename = 'Product',
  });

  factory Query$GetAllProducts$products$edges$node.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$active = json['active'];
    final l$description = json['description'];
    final l$id = json['id'];
    final l$code = json['code'];
    final l$itemType = json['itemType'];
    final l$$__typename = json['__typename'];
    return Query$GetAllProducts$products$edges$node(
      active: (l$active as bool),
      description: (l$description as String),
      id: (l$id as String),
      code: (l$code as String),
      itemType: fromJson$Enum$ItemType((l$itemType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final bool active;

  final String description;

  final String id;

  final String code;

  final Enum$ItemType itemType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$active = active;
    _resultData['active'] = l$active;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$itemType = itemType;
    _resultData['itemType'] = toJson$Enum$ItemType(l$itemType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$active = active;
    final l$description = description;
    final l$id = id;
    final l$code = code;
    final l$itemType = itemType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$active,
      l$description,
      l$id,
      l$code,
      l$itemType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllProducts$products$edges$node ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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
    final l$itemType = itemType;
    final lOther$itemType = other.itemType;
    if (l$itemType != lOther$itemType) {
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

extension UtilityExtension$Query$GetAllProducts$products$edges$node
    on Query$GetAllProducts$products$edges$node {
  CopyWith$Query$GetAllProducts$products$edges$node<
    Query$GetAllProducts$products$edges$node
  >
  get copyWith =>
      CopyWith$Query$GetAllProducts$products$edges$node(this, (i) => i);
}

abstract class CopyWith$Query$GetAllProducts$products$edges$node<TRes> {
  factory CopyWith$Query$GetAllProducts$products$edges$node(
    Query$GetAllProducts$products$edges$node instance,
    TRes Function(Query$GetAllProducts$products$edges$node) then,
  ) = _CopyWithImpl$Query$GetAllProducts$products$edges$node;

  factory CopyWith$Query$GetAllProducts$products$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllProducts$products$edges$node;

  TRes call({
    bool? active,
    String? description,
    String? id,
    String? code,
    Enum$ItemType? itemType,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllProducts$products$edges$node<TRes>
    implements CopyWith$Query$GetAllProducts$products$edges$node<TRes> {
  _CopyWithImpl$Query$GetAllProducts$products$edges$node(
    this._instance,
    this._then,
  );

  final Query$GetAllProducts$products$edges$node _instance;

  final TRes Function(Query$GetAllProducts$products$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? active = _undefined,
    Object? description = _undefined,
    Object? id = _undefined,
    Object? code = _undefined,
    Object? itemType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllProducts$products$edges$node(
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      itemType: itemType == _undefined || itemType == null
          ? _instance.itemType
          : (itemType as Enum$ItemType),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAllProducts$products$edges$node<TRes>
    implements CopyWith$Query$GetAllProducts$products$edges$node<TRes> {
  _CopyWithStubImpl$Query$GetAllProducts$products$edges$node(this._res);

  TRes _res;

  call({
    bool? active,
    String? description,
    String? id,
    String? code,
    Enum$ItemType? itemType,
    String? $__typename,
  }) => _res;
}

class Query$GetAllProducts$products$pageInfo {
  Query$GetAllProducts$products$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetAllProducts$products$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetAllProducts$products$pageInfo(
      endCursor: (l$endCursor as String?),
      hasNextPage: (l$hasNextPage as bool),
      hasPreviousPage: (l$hasPreviousPage as bool),
      startCursor: (l$startCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? endCursor;

  final bool hasNextPage;

  final bool hasPreviousPage;

  final String? startCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$startCursor = startCursor;
    _resultData['startCursor'] = l$startCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    final l$startCursor = startCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$endCursor,
      l$hasNextPage,
      l$hasPreviousPage,
      l$startCursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllProducts$products$pageInfo ||
        runtimeType != other.runtimeType) {
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
    final l$startCursor = startCursor;
    final lOther$startCursor = other.startCursor;
    if (l$startCursor != lOther$startCursor) {
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

extension UtilityExtension$Query$GetAllProducts$products$pageInfo
    on Query$GetAllProducts$products$pageInfo {
  CopyWith$Query$GetAllProducts$products$pageInfo<
    Query$GetAllProducts$products$pageInfo
  >
  get copyWith =>
      CopyWith$Query$GetAllProducts$products$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$GetAllProducts$products$pageInfo<TRes> {
  factory CopyWith$Query$GetAllProducts$products$pageInfo(
    Query$GetAllProducts$products$pageInfo instance,
    TRes Function(Query$GetAllProducts$products$pageInfo) then,
  ) = _CopyWithImpl$Query$GetAllProducts$products$pageInfo;

  factory CopyWith$Query$GetAllProducts$products$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllProducts$products$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllProducts$products$pageInfo<TRes>
    implements CopyWith$Query$GetAllProducts$products$pageInfo<TRes> {
  _CopyWithImpl$Query$GetAllProducts$products$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetAllProducts$products$pageInfo _instance;

  final TRes Function(Query$GetAllProducts$products$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllProducts$products$pageInfo(
      endCursor: endCursor == _undefined
          ? _instance.endCursor
          : (endCursor as String?),
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      hasPreviousPage: hasPreviousPage == _undefined || hasPreviousPage == null
          ? _instance.hasPreviousPage
          : (hasPreviousPage as bool),
      startCursor: startCursor == _undefined
          ? _instance.startCursor
          : (startCursor as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAllProducts$products$pageInfo<TRes>
    implements CopyWith$Query$GetAllProducts$products$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetAllProducts$products$pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  }) => _res;
}
