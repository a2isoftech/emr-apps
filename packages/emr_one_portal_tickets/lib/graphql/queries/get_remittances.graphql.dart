import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetRemittances {
  factory Variables$Query$GetRemittances({
    required int pageSize,
    String? after,
    List<Input$RemittanceSortOrderInput>? sortOrders,
    String? searchText,
  }) =>
      Variables$Query$GetRemittances._({
        r'pageSize': pageSize,
        if (after != null) r'after': after,
        if (sortOrders != null) r'sortOrders': sortOrders,
        if (searchText != null) r'searchText': searchText,
      });

  Variables$Query$GetRemittances._(this._$data);

  factory Variables$Query$GetRemittances.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$pageSize = data['pageSize'];
    result$data['pageSize'] = (l$pageSize as int);
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('sortOrders')) {
      final l$sortOrders = data['sortOrders'];
      result$data['sortOrders'] = (l$sortOrders as List<dynamic>?)
          ?.map((e) => Input$RemittanceSortOrderInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = (l$searchText as String?);
    }
    return Variables$Query$GetRemittances._(result$data);
  }

  Map<String, dynamic> _$data;

  int get pageSize => (_$data['pageSize'] as int);

  String? get after => (_$data['after'] as String?);

  List<Input$RemittanceSortOrderInput>? get sortOrders =>
      (_$data['sortOrders'] as List<Input$RemittanceSortOrderInput>?);

  String? get searchText => (_$data['searchText'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$pageSize = pageSize;
    result$data['pageSize'] = l$pageSize;
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('sortOrders')) {
      final l$sortOrders = sortOrders;
      result$data['sortOrders'] = l$sortOrders?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetRemittances<Variables$Query$GetRemittances>
      get copyWith => CopyWith$Variables$Query$GetRemittances(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetRemittances ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageSize = pageSize;
    final lOther$pageSize = other.pageSize;
    if (l$pageSize != lOther$pageSize) {
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
    final l$sortOrders = sortOrders;
    final lOther$sortOrders = other.sortOrders;
    if (_$data.containsKey('sortOrders') !=
        other._$data.containsKey('sortOrders')) {
      return false;
    }
    if (l$sortOrders != null && lOther$sortOrders != null) {
      if (l$sortOrders.length != lOther$sortOrders.length) {
        return false;
      }
      for (int i = 0; i < l$sortOrders.length; i++) {
        final l$sortOrders$entry = l$sortOrders[i];
        final lOther$sortOrders$entry = lOther$sortOrders[i];
        if (l$sortOrders$entry != lOther$sortOrders$entry) {
          return false;
        }
      }
    } else if (l$sortOrders != lOther$sortOrders) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$pageSize = pageSize;
    final l$after = after;
    final l$sortOrders = sortOrders;
    final l$searchText = searchText;
    return Object.hashAll([
      l$pageSize,
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('sortOrders')
          ? l$sortOrders == null
              ? null
              : Object.hashAll(l$sortOrders.map((v) => v))
          : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetRemittances<TRes> {
  factory CopyWith$Variables$Query$GetRemittances(
    Variables$Query$GetRemittances instance,
    TRes Function(Variables$Query$GetRemittances) then,
  ) = _CopyWithImpl$Variables$Query$GetRemittances;

  factory CopyWith$Variables$Query$GetRemittances.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetRemittances;

  TRes call({
    int? pageSize,
    String? after,
    List<Input$RemittanceSortOrderInput>? sortOrders,
    String? searchText,
  });
}

class _CopyWithImpl$Variables$Query$GetRemittances<TRes>
    implements CopyWith$Variables$Query$GetRemittances<TRes> {
  _CopyWithImpl$Variables$Query$GetRemittances(
    this._instance,
    this._then,
  );

  final Variables$Query$GetRemittances _instance;

  final TRes Function(Variables$Query$GetRemittances) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageSize = _undefined,
    Object? after = _undefined,
    Object? sortOrders = _undefined,
    Object? searchText = _undefined,
  }) =>
      _then(Variables$Query$GetRemittances._({
        ..._instance._$data,
        if (pageSize != _undefined && pageSize != null)
          'pageSize': (pageSize as int),
        if (after != _undefined) 'after': (after as String?),
        if (sortOrders != _undefined)
          'sortOrders': (sortOrders as List<Input$RemittanceSortOrderInput>?),
        if (searchText != _undefined) 'searchText': (searchText as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetRemittances<TRes>
    implements CopyWith$Variables$Query$GetRemittances<TRes> {
  _CopyWithStubImpl$Variables$Query$GetRemittances(this._res);

  TRes _res;

  call({
    int? pageSize,
    String? after,
    List<Input$RemittanceSortOrderInput>? sortOrders,
    String? searchText,
  }) =>
      _res;
}

class Query$GetRemittances {
  Query$GetRemittances({
    this.supplierRemittances,
    this.$__typename = 'Query',
  });

  factory Query$GetRemittances.fromJson(Map<String, dynamic> json) {
    final l$supplierRemittances = json['supplierRemittances'];
    final l$$__typename = json['__typename'];
    return Query$GetRemittances(
      supplierRemittances: l$supplierRemittances == null
          ? null
          : Query$GetRemittances$supplierRemittances.fromJson(
              (l$supplierRemittances as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetRemittances$supplierRemittances? supplierRemittances;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$supplierRemittances = supplierRemittances;
    _resultData['supplierRemittances'] = l$supplierRemittances?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$supplierRemittances = supplierRemittances;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$supplierRemittances,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRemittances || runtimeType != other.runtimeType) {
      return false;
    }
    final l$supplierRemittances = supplierRemittances;
    final lOther$supplierRemittances = other.supplierRemittances;
    if (l$supplierRemittances != lOther$supplierRemittances) {
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

extension UtilityExtension$Query$GetRemittances on Query$GetRemittances {
  CopyWith$Query$GetRemittances<Query$GetRemittances> get copyWith =>
      CopyWith$Query$GetRemittances(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetRemittances<TRes> {
  factory CopyWith$Query$GetRemittances(
    Query$GetRemittances instance,
    TRes Function(Query$GetRemittances) then,
  ) = _CopyWithImpl$Query$GetRemittances;

  factory CopyWith$Query$GetRemittances.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRemittances;

  TRes call({
    Query$GetRemittances$supplierRemittances? supplierRemittances,
    String? $__typename,
  });
  CopyWith$Query$GetRemittances$supplierRemittances<TRes>
      get supplierRemittances;
}

class _CopyWithImpl$Query$GetRemittances<TRes>
    implements CopyWith$Query$GetRemittances<TRes> {
  _CopyWithImpl$Query$GetRemittances(
    this._instance,
    this._then,
  );

  final Query$GetRemittances _instance;

  final TRes Function(Query$GetRemittances) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? supplierRemittances = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRemittances(
        supplierRemittances: supplierRemittances == _undefined
            ? _instance.supplierRemittances
            : (supplierRemittances
                as Query$GetRemittances$supplierRemittances?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetRemittances$supplierRemittances<TRes>
      get supplierRemittances {
    final local$supplierRemittances = _instance.supplierRemittances;
    return local$supplierRemittances == null
        ? CopyWith$Query$GetRemittances$supplierRemittances.stub(
            _then(_instance))
        : CopyWith$Query$GetRemittances$supplierRemittances(
            local$supplierRemittances, (e) => call(supplierRemittances: e));
  }
}

class _CopyWithStubImpl$Query$GetRemittances<TRes>
    implements CopyWith$Query$GetRemittances<TRes> {
  _CopyWithStubImpl$Query$GetRemittances(this._res);

  TRes _res;

  call({
    Query$GetRemittances$supplierRemittances? supplierRemittances,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetRemittances$supplierRemittances<TRes>
      get supplierRemittances =>
          CopyWith$Query$GetRemittances$supplierRemittances.stub(_res);
}

const documentNodeQueryGetRemittances = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetRemittances'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'pageSize')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
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
        variable: VariableNode(name: NameNode(value: 'sortOrders')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'RemittanceSortOrderInput'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'searchText')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'supplierRemittances'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'pageSize')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
          ArgumentNode(
            name: NameNode(value: 'sortOrders'),
            value: VariableNode(name: NameNode(value: 'sortOrders')),
          ),
          ArgumentNode(
            name: NameNode(value: 'searchText'),
            value: VariableNode(name: NameNode(value: 'searchText')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'hasPreviousPage'),
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
            ]),
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
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'remittanceDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'remittanceFileName'),
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
]);

class Query$GetRemittances$supplierRemittances {
  Query$GetRemittances$supplierRemittances({
    required this.pageInfo,
    required this.totalCount,
    this.nodes,
    this.$__typename = 'SupplierRemittancesConnection',
  });

  factory Query$GetRemittances$supplierRemittances.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetRemittances$supplierRemittances(
      pageInfo: Query$GetRemittances$supplierRemittances$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => Query$GetRemittances$supplierRemittances$nodes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetRemittances$supplierRemittances$pageInfo pageInfo;

  final int totalCount;

  final List<Query$GetRemittances$supplierRemittances$nodes>? nodes;

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
    if (other is! Query$GetRemittances$supplierRemittances ||
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

extension UtilityExtension$Query$GetRemittances$supplierRemittances
    on Query$GetRemittances$supplierRemittances {
  CopyWith$Query$GetRemittances$supplierRemittances<
          Query$GetRemittances$supplierRemittances>
      get copyWith => CopyWith$Query$GetRemittances$supplierRemittances(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRemittances$supplierRemittances<TRes> {
  factory CopyWith$Query$GetRemittances$supplierRemittances(
    Query$GetRemittances$supplierRemittances instance,
    TRes Function(Query$GetRemittances$supplierRemittances) then,
  ) = _CopyWithImpl$Query$GetRemittances$supplierRemittances;

  factory CopyWith$Query$GetRemittances$supplierRemittances.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRemittances$supplierRemittances;

  TRes call({
    Query$GetRemittances$supplierRemittances$pageInfo? pageInfo,
    int? totalCount,
    List<Query$GetRemittances$supplierRemittances$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetRemittances$supplierRemittances$pageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$GetRemittances$supplierRemittances$nodes>? Function(
              Iterable<
                  CopyWith$Query$GetRemittances$supplierRemittances$nodes<
                      Query$GetRemittances$supplierRemittances$nodes>>?)
          _fn);
}

class _CopyWithImpl$Query$GetRemittances$supplierRemittances<TRes>
    implements CopyWith$Query$GetRemittances$supplierRemittances<TRes> {
  _CopyWithImpl$Query$GetRemittances$supplierRemittances(
    this._instance,
    this._then,
  );

  final Query$GetRemittances$supplierRemittances _instance;

  final TRes Function(Query$GetRemittances$supplierRemittances) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRemittances$supplierRemittances(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$GetRemittances$supplierRemittances$pageInfo),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$GetRemittances$supplierRemittances$nodes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetRemittances$supplierRemittances$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetRemittances$supplierRemittances$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$GetRemittances$supplierRemittances$nodes>? Function(
                  Iterable<
                      CopyWith$Query$GetRemittances$supplierRemittances$nodes<
                          Query$GetRemittances$supplierRemittances$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map(
              (e) => CopyWith$Query$GetRemittances$supplierRemittances$nodes(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$GetRemittances$supplierRemittances<TRes>
    implements CopyWith$Query$GetRemittances$supplierRemittances<TRes> {
  _CopyWithStubImpl$Query$GetRemittances$supplierRemittances(this._res);

  TRes _res;

  call({
    Query$GetRemittances$supplierRemittances$pageInfo? pageInfo,
    int? totalCount,
    List<Query$GetRemittances$supplierRemittances$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetRemittances$supplierRemittances$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$GetRemittances$supplierRemittances$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$GetRemittances$supplierRemittances$pageInfo {
  Query$GetRemittances$supplierRemittances$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetRemittances$supplierRemittances$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetRemittances$supplierRemittances$pageInfo(
      hasPreviousPage: (l$hasPreviousPage as bool),
      hasNextPage: (l$hasNextPage as bool),
      startCursor: (l$startCursor as String?),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasPreviousPage;

  final bool hasNextPage;

  final String? startCursor;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
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
    final l$hasPreviousPage = hasPreviousPage;
    final l$hasNextPage = hasNextPage;
    final l$startCursor = startCursor;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasPreviousPage,
      l$hasNextPage,
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
    if (other is! Query$GetRemittances$supplierRemittances$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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

extension UtilityExtension$Query$GetRemittances$supplierRemittances$pageInfo
    on Query$GetRemittances$supplierRemittances$pageInfo {
  CopyWith$Query$GetRemittances$supplierRemittances$pageInfo<
          Query$GetRemittances$supplierRemittances$pageInfo>
      get copyWith =>
          CopyWith$Query$GetRemittances$supplierRemittances$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRemittances$supplierRemittances$pageInfo<
    TRes> {
  factory CopyWith$Query$GetRemittances$supplierRemittances$pageInfo(
    Query$GetRemittances$supplierRemittances$pageInfo instance,
    TRes Function(Query$GetRemittances$supplierRemittances$pageInfo) then,
  ) = _CopyWithImpl$Query$GetRemittances$supplierRemittances$pageInfo;

  factory CopyWith$Query$GetRemittances$supplierRemittances$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetRemittances$supplierRemittances$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetRemittances$supplierRemittances$pageInfo<TRes>
    implements
        CopyWith$Query$GetRemittances$supplierRemittances$pageInfo<TRes> {
  _CopyWithImpl$Query$GetRemittances$supplierRemittances$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetRemittances$supplierRemittances$pageInfo _instance;

  final TRes Function(Query$GetRemittances$supplierRemittances$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRemittances$supplierRemittances$pageInfo(
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
                ? _instance.hasPreviousPage
                : (hasPreviousPage as bool),
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        startCursor: startCursor == _undefined
            ? _instance.startCursor
            : (startCursor as String?),
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetRemittances$supplierRemittances$pageInfo<TRes>
    implements
        CopyWith$Query$GetRemittances$supplierRemittances$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetRemittances$supplierRemittances$pageInfo(
      this._res);

  TRes _res;

  call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetRemittances$supplierRemittances$nodes {
  Query$GetRemittances$supplierRemittances$nodes({
    this.remittanceDate,
    required this.remittanceFileName,
    this.$__typename = 'SupplierRemittanceSummary',
  });

  factory Query$GetRemittances$supplierRemittances$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$remittanceDate = json['remittanceDate'];
    final l$remittanceFileName = json['remittanceFileName'];
    final l$$__typename = json['__typename'];
    return Query$GetRemittances$supplierRemittances$nodes(
      remittanceDate: l$remittanceDate == null
          ? null
          : DateTime.parse((l$remittanceDate as String)),
      remittanceFileName: (l$remittanceFileName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? remittanceDate;

  final String remittanceFileName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$remittanceDate = remittanceDate;
    _resultData['remittanceDate'] = l$remittanceDate?.toIso8601String();
    final l$remittanceFileName = remittanceFileName;
    _resultData['remittanceFileName'] = l$remittanceFileName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$remittanceDate = remittanceDate;
    final l$remittanceFileName = remittanceFileName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$remittanceDate,
      l$remittanceFileName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRemittances$supplierRemittances$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$remittanceDate = remittanceDate;
    final lOther$remittanceDate = other.remittanceDate;
    if (l$remittanceDate != lOther$remittanceDate) {
      return false;
    }
    final l$remittanceFileName = remittanceFileName;
    final lOther$remittanceFileName = other.remittanceFileName;
    if (l$remittanceFileName != lOther$remittanceFileName) {
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

extension UtilityExtension$Query$GetRemittances$supplierRemittances$nodes
    on Query$GetRemittances$supplierRemittances$nodes {
  CopyWith$Query$GetRemittances$supplierRemittances$nodes<
          Query$GetRemittances$supplierRemittances$nodes>
      get copyWith => CopyWith$Query$GetRemittances$supplierRemittances$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRemittances$supplierRemittances$nodes<TRes> {
  factory CopyWith$Query$GetRemittances$supplierRemittances$nodes(
    Query$GetRemittances$supplierRemittances$nodes instance,
    TRes Function(Query$GetRemittances$supplierRemittances$nodes) then,
  ) = _CopyWithImpl$Query$GetRemittances$supplierRemittances$nodes;

  factory CopyWith$Query$GetRemittances$supplierRemittances$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetRemittances$supplierRemittances$nodes;

  TRes call({
    DateTime? remittanceDate,
    String? remittanceFileName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetRemittances$supplierRemittances$nodes<TRes>
    implements CopyWith$Query$GetRemittances$supplierRemittances$nodes<TRes> {
  _CopyWithImpl$Query$GetRemittances$supplierRemittances$nodes(
    this._instance,
    this._then,
  );

  final Query$GetRemittances$supplierRemittances$nodes _instance;

  final TRes Function(Query$GetRemittances$supplierRemittances$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? remittanceDate = _undefined,
    Object? remittanceFileName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRemittances$supplierRemittances$nodes(
        remittanceDate: remittanceDate == _undefined
            ? _instance.remittanceDate
            : (remittanceDate as DateTime?),
        remittanceFileName:
            remittanceFileName == _undefined || remittanceFileName == null
                ? _instance.remittanceFileName
                : (remittanceFileName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetRemittances$supplierRemittances$nodes<TRes>
    implements CopyWith$Query$GetRemittances$supplierRemittances$nodes<TRes> {
  _CopyWithStubImpl$Query$GetRemittances$supplierRemittances$nodes(this._res);

  TRes _res;

  call({
    DateTime? remittanceDate,
    String? remittanceFileName,
    String? $__typename,
  }) =>
      _res;
}
