import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchAssets {
  factory Variables$Query$SearchAssets({
    String? after,
    String? before,
    int? first,
    int? last,
    required Input$SearchAssetInput input,
    List<Input$AssetSearchResultSortInput>? order,
  }) =>
      Variables$Query$SearchAssets._({
        if (after != null) r'after': after,
        if (before != null) r'before': before,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        r'input': input,
        if (order != null) r'order': order,
      });

  Variables$Query$SearchAssets._(this._$data);

  factory Variables$Query$SearchAssets.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    final l$input = data['input'];
    result$data['input'] =
        Input$SearchAssetInput.fromJson((l$input as Map<String, dynamic>));
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map((e) => Input$AssetSearchResultSortInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$SearchAssets._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  Input$SearchAssetInput get input =>
      (_$data['input'] as Input$SearchAssetInput);

  List<Input$AssetSearchResultSortInput>? get order =>
      (_$data['order'] as List<Input$AssetSearchResultSortInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    final l$input = input;
    result$data['input'] = l$input.toJson();
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$SearchAssets<Variables$Query$SearchAssets>
      get copyWith => CopyWith$Variables$Query$SearchAssets(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$SearchAssets) ||
        runtimeType != other.runtimeType) {
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
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
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
    final l$after = after;
    final l$before = before;
    final l$first = first;
    final l$last = last;
    final l$input = input;
    final l$order = order;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      l$input,
      _$data.containsKey('order')
          ? l$order == null
              ? null
              : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchAssets<TRes> {
  factory CopyWith$Variables$Query$SearchAssets(
    Variables$Query$SearchAssets instance,
    TRes Function(Variables$Query$SearchAssets) then,
  ) = _CopyWithImpl$Variables$Query$SearchAssets;

  factory CopyWith$Variables$Query$SearchAssets.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchAssets;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchAssetInput? input,
    List<Input$AssetSearchResultSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$SearchAssets<TRes>
    implements CopyWith$Variables$Query$SearchAssets<TRes> {
  _CopyWithImpl$Variables$Query$SearchAssets(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchAssets _instance;

  final TRes Function(Variables$Query$SearchAssets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? input = _undefined,
    Object? order = _undefined,
  }) =>
      _then(Variables$Query$SearchAssets._({
        ..._instance._$data,
        if (after != _undefined) 'after': (after as String?),
        if (before != _undefined) 'before': (before as String?),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (input != _undefined && input != null)
          'input': (input as Input$SearchAssetInput),
        if (order != _undefined)
          'order': (order as List<Input$AssetSearchResultSortInput>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchAssets<TRes>
    implements CopyWith$Variables$Query$SearchAssets<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchAssets(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchAssetInput? input,
    List<Input$AssetSearchResultSortInput>? order,
  }) =>
      _res;
}

class Query$SearchAssets {
  Query$SearchAssets({
    this.searchAssets,
    this.$__typename = 'Query',
  });

  factory Query$SearchAssets.fromJson(Map<String, dynamic> json) {
    final l$searchAssets = json['searchAssets'];
    final l$$__typename = json['__typename'];
    return Query$SearchAssets(
      searchAssets: l$searchAssets == null
          ? null
          : Query$SearchAssets$searchAssets.fromJson(
              (l$searchAssets as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchAssets$searchAssets? searchAssets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchAssets = searchAssets;
    _resultData['searchAssets'] = l$searchAssets?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchAssets = searchAssets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$searchAssets,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchAssets) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchAssets = searchAssets;
    final lOther$searchAssets = other.searchAssets;
    if (l$searchAssets != lOther$searchAssets) {
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

extension UtilityExtension$Query$SearchAssets on Query$SearchAssets {
  CopyWith$Query$SearchAssets<Query$SearchAssets> get copyWith =>
      CopyWith$Query$SearchAssets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAssets<TRes> {
  factory CopyWith$Query$SearchAssets(
    Query$SearchAssets instance,
    TRes Function(Query$SearchAssets) then,
  ) = _CopyWithImpl$Query$SearchAssets;

  factory CopyWith$Query$SearchAssets.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAssets;

  TRes call({
    Query$SearchAssets$searchAssets? searchAssets,
    String? $__typename,
  });
  CopyWith$Query$SearchAssets$searchAssets<TRes> get searchAssets;
}

class _CopyWithImpl$Query$SearchAssets<TRes>
    implements CopyWith$Query$SearchAssets<TRes> {
  _CopyWithImpl$Query$SearchAssets(
    this._instance,
    this._then,
  );

  final Query$SearchAssets _instance;

  final TRes Function(Query$SearchAssets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchAssets = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchAssets(
        searchAssets: searchAssets == _undefined
            ? _instance.searchAssets
            : (searchAssets as Query$SearchAssets$searchAssets?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchAssets$searchAssets<TRes> get searchAssets {
    final local$searchAssets = _instance.searchAssets;
    return local$searchAssets == null
        ? CopyWith$Query$SearchAssets$searchAssets.stub(_then(_instance))
        : CopyWith$Query$SearchAssets$searchAssets(
            local$searchAssets, (e) => call(searchAssets: e));
  }
}

class _CopyWithStubImpl$Query$SearchAssets<TRes>
    implements CopyWith$Query$SearchAssets<TRes> {
  _CopyWithStubImpl$Query$SearchAssets(this._res);

  TRes _res;

  call({
    Query$SearchAssets$searchAssets? searchAssets,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchAssets$searchAssets<TRes> get searchAssets =>
      CopyWith$Query$SearchAssets$searchAssets.stub(_res);
}

const documentNodeQuerySearchAssets = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchAssets'),
    variableDefinitions: [
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
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'last')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SearchAssetInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'order')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'AssetSearchResultSortInput'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'searchAssets'),
        alias: null,
        arguments: [
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
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
          ArgumentNode(
            name: NameNode(value: 'order'),
            value: VariableNode(name: NameNode(value: 'order')),
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
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'depotNo'),
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
                name: NameNode(value: 'make'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'model'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'serialNumber'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'status'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'assetType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'transferToDepotNo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'transferToDepotNoAssetApprovalId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'disposalStatus'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'disposalApprovalId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'approved'),
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

class Query$SearchAssets$searchAssets {
  Query$SearchAssets$searchAssets({
    required this.pageInfo,
    required this.totalCount,
    this.nodes,
    this.$__typename = 'SearchAssetsConnection',
  });

  factory Query$SearchAssets$searchAssets.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchAssets$searchAssets(
      pageInfo: Query$SearchAssets$searchAssets$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => Query$SearchAssets$searchAssets$nodes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchAssets$searchAssets$pageInfo pageInfo;

  final int totalCount;

  final List<Query$SearchAssets$searchAssets$nodes>? nodes;

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
    if (!(other is Query$SearchAssets$searchAssets) ||
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

extension UtilityExtension$Query$SearchAssets$searchAssets
    on Query$SearchAssets$searchAssets {
  CopyWith$Query$SearchAssets$searchAssets<Query$SearchAssets$searchAssets>
      get copyWith => CopyWith$Query$SearchAssets$searchAssets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchAssets$searchAssets<TRes> {
  factory CopyWith$Query$SearchAssets$searchAssets(
    Query$SearchAssets$searchAssets instance,
    TRes Function(Query$SearchAssets$searchAssets) then,
  ) = _CopyWithImpl$Query$SearchAssets$searchAssets;

  factory CopyWith$Query$SearchAssets$searchAssets.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAssets$searchAssets;

  TRes call({
    Query$SearchAssets$searchAssets$pageInfo? pageInfo,
    int? totalCount,
    List<Query$SearchAssets$searchAssets$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchAssets$searchAssets$pageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$SearchAssets$searchAssets$nodes>? Function(
              Iterable<
                  CopyWith$Query$SearchAssets$searchAssets$nodes<
                      Query$SearchAssets$searchAssets$nodes>>?)
          _fn);
}

class _CopyWithImpl$Query$SearchAssets$searchAssets<TRes>
    implements CopyWith$Query$SearchAssets$searchAssets<TRes> {
  _CopyWithImpl$Query$SearchAssets$searchAssets(
    this._instance,
    this._then,
  );

  final Query$SearchAssets$searchAssets _instance;

  final TRes Function(Query$SearchAssets$searchAssets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchAssets$searchAssets(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$SearchAssets$searchAssets$pageInfo),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$SearchAssets$searchAssets$nodes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchAssets$searchAssets$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchAssets$searchAssets$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$SearchAssets$searchAssets$nodes>? Function(
                  Iterable<
                      CopyWith$Query$SearchAssets$searchAssets$nodes<
                          Query$SearchAssets$searchAssets$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes
              ?.map((e) => CopyWith$Query$SearchAssets$searchAssets$nodes(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$SearchAssets$searchAssets<TRes>
    implements CopyWith$Query$SearchAssets$searchAssets<TRes> {
  _CopyWithStubImpl$Query$SearchAssets$searchAssets(this._res);

  TRes _res;

  call({
    Query$SearchAssets$searchAssets$pageInfo? pageInfo,
    int? totalCount,
    List<Query$SearchAssets$searchAssets$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchAssets$searchAssets$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$SearchAssets$searchAssets$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$SearchAssets$searchAssets$pageInfo {
  Query$SearchAssets$searchAssets$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchAssets$searchAssets$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchAssets$searchAssets$pageInfo(
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
    if (!(other is Query$SearchAssets$searchAssets$pageInfo) ||
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

extension UtilityExtension$Query$SearchAssets$searchAssets$pageInfo
    on Query$SearchAssets$searchAssets$pageInfo {
  CopyWith$Query$SearchAssets$searchAssets$pageInfo<
          Query$SearchAssets$searchAssets$pageInfo>
      get copyWith => CopyWith$Query$SearchAssets$searchAssets$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchAssets$searchAssets$pageInfo<TRes> {
  factory CopyWith$Query$SearchAssets$searchAssets$pageInfo(
    Query$SearchAssets$searchAssets$pageInfo instance,
    TRes Function(Query$SearchAssets$searchAssets$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchAssets$searchAssets$pageInfo;

  factory CopyWith$Query$SearchAssets$searchAssets$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAssets$searchAssets$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAssets$searchAssets$pageInfo<TRes>
    implements CopyWith$Query$SearchAssets$searchAssets$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchAssets$searchAssets$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchAssets$searchAssets$pageInfo _instance;

  final TRes Function(Query$SearchAssets$searchAssets$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchAssets$searchAssets$pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
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
      ));
}

class _CopyWithStubImpl$Query$SearchAssets$searchAssets$pageInfo<TRes>
    implements CopyWith$Query$SearchAssets$searchAssets$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchAssets$searchAssets$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}

class Query$SearchAssets$searchAssets$nodes {
  Query$SearchAssets$searchAssets$nodes({
    required this.id,
    required this.depotNo,
    required this.code,
    required this.make,
    this.model,
    this.serialNumber,
    this.name,
    required this.status,
    required this.assetType,
    this.transferToDepotNo,
    this.transferToDepotNoAssetApprovalId,
    this.disposalStatus,
    this.disposalApprovalId,
    required this.approved,
    this.$__typename = 'AssetSearchResult',
  });

  factory Query$SearchAssets$searchAssets$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$depotNo = json['depotNo'];
    final l$code = json['code'];
    final l$make = json['make'];
    final l$model = json['model'];
    final l$serialNumber = json['serialNumber'];
    final l$name = json['name'];
    final l$status = json['status'];
    final l$assetType = json['assetType'];
    final l$transferToDepotNo = json['transferToDepotNo'];
    final l$transferToDepotNoAssetApprovalId =
        json['transferToDepotNoAssetApprovalId'];
    final l$disposalStatus = json['disposalStatus'];
    final l$disposalApprovalId = json['disposalApprovalId'];
    final l$approved = json['approved'];
    final l$$__typename = json['__typename'];
    return Query$SearchAssets$searchAssets$nodes(
      id: (l$id as String),
      depotNo: (l$depotNo as String),
      code: (l$code as String),
      make: (l$make as String),
      model: (l$model as String?),
      serialNumber: (l$serialNumber as String?),
      name: (l$name as String?),
      status: (l$status as String),
      assetType: (l$assetType as String),
      transferToDepotNo: (l$transferToDepotNo as String?),
      transferToDepotNoAssetApprovalId:
          (l$transferToDepotNoAssetApprovalId as int?),
      disposalStatus: (l$disposalStatus as String?),
      disposalApprovalId: (l$disposalApprovalId as int?),
      approved: (l$approved as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String depotNo;

  final String code;

  final String make;

  final String? model;

  final String? serialNumber;

  final String? name;

  final String status;

  final String assetType;

  final String? transferToDepotNo;

  final int? transferToDepotNoAssetApprovalId;

  final String? disposalStatus;

  final int? disposalApprovalId;

  final bool approved;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$make = make;
    _resultData['make'] = l$make;
    final l$model = model;
    _resultData['model'] = l$model;
    final l$serialNumber = serialNumber;
    _resultData['serialNumber'] = l$serialNumber;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$assetType = assetType;
    _resultData['assetType'] = l$assetType;
    final l$transferToDepotNo = transferToDepotNo;
    _resultData['transferToDepotNo'] = l$transferToDepotNo;
    final l$transferToDepotNoAssetApprovalId = transferToDepotNoAssetApprovalId;
    _resultData['transferToDepotNoAssetApprovalId'] =
        l$transferToDepotNoAssetApprovalId;
    final l$disposalStatus = disposalStatus;
    _resultData['disposalStatus'] = l$disposalStatus;
    final l$disposalApprovalId = disposalApprovalId;
    _resultData['disposalApprovalId'] = l$disposalApprovalId;
    final l$approved = approved;
    _resultData['approved'] = l$approved;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$depotNo = depotNo;
    final l$code = code;
    final l$make = make;
    final l$model = model;
    final l$serialNumber = serialNumber;
    final l$name = name;
    final l$status = status;
    final l$assetType = assetType;
    final l$transferToDepotNo = transferToDepotNo;
    final l$transferToDepotNoAssetApprovalId = transferToDepotNoAssetApprovalId;
    final l$disposalStatus = disposalStatus;
    final l$disposalApprovalId = disposalApprovalId;
    final l$approved = approved;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$depotNo,
      l$code,
      l$make,
      l$model,
      l$serialNumber,
      l$name,
      l$status,
      l$assetType,
      l$transferToDepotNo,
      l$transferToDepotNoAssetApprovalId,
      l$disposalStatus,
      l$disposalApprovalId,
      l$approved,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchAssets$searchAssets$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$make = make;
    final lOther$make = other.make;
    if (l$make != lOther$make) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (l$model != lOther$model) {
      return false;
    }
    final l$serialNumber = serialNumber;
    final lOther$serialNumber = other.serialNumber;
    if (l$serialNumber != lOther$serialNumber) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$assetType = assetType;
    final lOther$assetType = other.assetType;
    if (l$assetType != lOther$assetType) {
      return false;
    }
    final l$transferToDepotNo = transferToDepotNo;
    final lOther$transferToDepotNo = other.transferToDepotNo;
    if (l$transferToDepotNo != lOther$transferToDepotNo) {
      return false;
    }
    final l$transferToDepotNoAssetApprovalId = transferToDepotNoAssetApprovalId;
    final lOther$transferToDepotNoAssetApprovalId =
        other.transferToDepotNoAssetApprovalId;
    if (l$transferToDepotNoAssetApprovalId !=
        lOther$transferToDepotNoAssetApprovalId) {
      return false;
    }
    final l$disposalStatus = disposalStatus;
    final lOther$disposalStatus = other.disposalStatus;
    if (l$disposalStatus != lOther$disposalStatus) {
      return false;
    }
    final l$disposalApprovalId = disposalApprovalId;
    final lOther$disposalApprovalId = other.disposalApprovalId;
    if (l$disposalApprovalId != lOther$disposalApprovalId) {
      return false;
    }
    final l$approved = approved;
    final lOther$approved = other.approved;
    if (l$approved != lOther$approved) {
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

extension UtilityExtension$Query$SearchAssets$searchAssets$nodes
    on Query$SearchAssets$searchAssets$nodes {
  CopyWith$Query$SearchAssets$searchAssets$nodes<
          Query$SearchAssets$searchAssets$nodes>
      get copyWith => CopyWith$Query$SearchAssets$searchAssets$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchAssets$searchAssets$nodes<TRes> {
  factory CopyWith$Query$SearchAssets$searchAssets$nodes(
    Query$SearchAssets$searchAssets$nodes instance,
    TRes Function(Query$SearchAssets$searchAssets$nodes) then,
  ) = _CopyWithImpl$Query$SearchAssets$searchAssets$nodes;

  factory CopyWith$Query$SearchAssets$searchAssets$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAssets$searchAssets$nodes;

  TRes call({
    String? id,
    String? depotNo,
    String? code,
    String? make,
    String? model,
    String? serialNumber,
    String? name,
    String? status,
    String? assetType,
    String? transferToDepotNo,
    int? transferToDepotNoAssetApprovalId,
    String? disposalStatus,
    int? disposalApprovalId,
    bool? approved,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAssets$searchAssets$nodes<TRes>
    implements CopyWith$Query$SearchAssets$searchAssets$nodes<TRes> {
  _CopyWithImpl$Query$SearchAssets$searchAssets$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchAssets$searchAssets$nodes _instance;

  final TRes Function(Query$SearchAssets$searchAssets$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? depotNo = _undefined,
    Object? code = _undefined,
    Object? make = _undefined,
    Object? model = _undefined,
    Object? serialNumber = _undefined,
    Object? name = _undefined,
    Object? status = _undefined,
    Object? assetType = _undefined,
    Object? transferToDepotNo = _undefined,
    Object? transferToDepotNoAssetApprovalId = _undefined,
    Object? disposalStatus = _undefined,
    Object? disposalApprovalId = _undefined,
    Object? approved = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchAssets$searchAssets$nodes(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        depotNo: depotNo == _undefined || depotNo == null
            ? _instance.depotNo
            : (depotNo as String),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        make: make == _undefined || make == null
            ? _instance.make
            : (make as String),
        model: model == _undefined ? _instance.model : (model as String?),
        serialNumber: serialNumber == _undefined
            ? _instance.serialNumber
            : (serialNumber as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as String),
        assetType: assetType == _undefined || assetType == null
            ? _instance.assetType
            : (assetType as String),
        transferToDepotNo: transferToDepotNo == _undefined
            ? _instance.transferToDepotNo
            : (transferToDepotNo as String?),
        transferToDepotNoAssetApprovalId:
            transferToDepotNoAssetApprovalId == _undefined
                ? _instance.transferToDepotNoAssetApprovalId
                : (transferToDepotNoAssetApprovalId as int?),
        disposalStatus: disposalStatus == _undefined
            ? _instance.disposalStatus
            : (disposalStatus as String?),
        disposalApprovalId: disposalApprovalId == _undefined
            ? _instance.disposalApprovalId
            : (disposalApprovalId as int?),
        approved: approved == _undefined || approved == null
            ? _instance.approved
            : (approved as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchAssets$searchAssets$nodes<TRes>
    implements CopyWith$Query$SearchAssets$searchAssets$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchAssets$searchAssets$nodes(this._res);

  TRes _res;

  call({
    String? id,
    String? depotNo,
    String? code,
    String? make,
    String? model,
    String? serialNumber,
    String? name,
    String? status,
    String? assetType,
    String? transferToDepotNo,
    int? transferToDepotNoAssetApprovalId,
    String? disposalStatus,
    int? disposalApprovalId,
    bool? approved,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$SearchAssetsFacet {
  factory Variables$Query$SearchAssetsFacet(
          {required Input$SearchAssetInput input}) =>
      Variables$Query$SearchAssetsFacet._({
        r'input': input,
      });

  Variables$Query$SearchAssetsFacet._(this._$data);

  factory Variables$Query$SearchAssetsFacet.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$SearchAssetInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Query$SearchAssetsFacet._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchAssetInput get input =>
      (_$data['input'] as Input$SearchAssetInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$SearchAssetsFacet<Variables$Query$SearchAssetsFacet>
      get copyWith => CopyWith$Variables$Query$SearchAssetsFacet(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$SearchAssetsFacet) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Query$SearchAssetsFacet<TRes> {
  factory CopyWith$Variables$Query$SearchAssetsFacet(
    Variables$Query$SearchAssetsFacet instance,
    TRes Function(Variables$Query$SearchAssetsFacet) then,
  ) = _CopyWithImpl$Variables$Query$SearchAssetsFacet;

  factory CopyWith$Variables$Query$SearchAssetsFacet.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchAssetsFacet;

  TRes call({Input$SearchAssetInput? input});
}

class _CopyWithImpl$Variables$Query$SearchAssetsFacet<TRes>
    implements CopyWith$Variables$Query$SearchAssetsFacet<TRes> {
  _CopyWithImpl$Variables$Query$SearchAssetsFacet(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchAssetsFacet _instance;

  final TRes Function(Variables$Query$SearchAssetsFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$SearchAssetsFacet._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$SearchAssetInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchAssetsFacet<TRes>
    implements CopyWith$Variables$Query$SearchAssetsFacet<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchAssetsFacet(this._res);

  TRes _res;

  call({Input$SearchAssetInput? input}) => _res;
}

class Query$SearchAssetsFacet {
  Query$SearchAssetsFacet({
    required this.searchAssetsFacet,
    this.$__typename = 'Query',
  });

  factory Query$SearchAssetsFacet.fromJson(Map<String, dynamic> json) {
    final l$searchAssetsFacet = json['searchAssetsFacet'];
    final l$$__typename = json['__typename'];
    return Query$SearchAssetsFacet(
      searchAssetsFacet: (l$searchAssetsFacet as List<dynamic>)
          .map((e) => Query$SearchAssetsFacet$searchAssetsFacet.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchAssetsFacet$searchAssetsFacet> searchAssetsFacet;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchAssetsFacet = searchAssetsFacet;
    _resultData['searchAssetsFacet'] =
        l$searchAssetsFacet.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchAssetsFacet = searchAssetsFacet;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchAssetsFacet.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchAssetsFacet) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchAssetsFacet = searchAssetsFacet;
    final lOther$searchAssetsFacet = other.searchAssetsFacet;
    if (l$searchAssetsFacet.length != lOther$searchAssetsFacet.length) {
      return false;
    }
    for (int i = 0; i < l$searchAssetsFacet.length; i++) {
      final l$searchAssetsFacet$entry = l$searchAssetsFacet[i];
      final lOther$searchAssetsFacet$entry = lOther$searchAssetsFacet[i];
      if (l$searchAssetsFacet$entry != lOther$searchAssetsFacet$entry) {
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

extension UtilityExtension$Query$SearchAssetsFacet on Query$SearchAssetsFacet {
  CopyWith$Query$SearchAssetsFacet<Query$SearchAssetsFacet> get copyWith =>
      CopyWith$Query$SearchAssetsFacet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAssetsFacet<TRes> {
  factory CopyWith$Query$SearchAssetsFacet(
    Query$SearchAssetsFacet instance,
    TRes Function(Query$SearchAssetsFacet) then,
  ) = _CopyWithImpl$Query$SearchAssetsFacet;

  factory CopyWith$Query$SearchAssetsFacet.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAssetsFacet;

  TRes call({
    List<Query$SearchAssetsFacet$searchAssetsFacet>? searchAssetsFacet,
    String? $__typename,
  });
  TRes searchAssetsFacet(
      Iterable<Query$SearchAssetsFacet$searchAssetsFacet> Function(
              Iterable<
                  CopyWith$Query$SearchAssetsFacet$searchAssetsFacet<
                      Query$SearchAssetsFacet$searchAssetsFacet>>)
          _fn);
}

class _CopyWithImpl$Query$SearchAssetsFacet<TRes>
    implements CopyWith$Query$SearchAssetsFacet<TRes> {
  _CopyWithImpl$Query$SearchAssetsFacet(
    this._instance,
    this._then,
  );

  final Query$SearchAssetsFacet _instance;

  final TRes Function(Query$SearchAssetsFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchAssetsFacet = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchAssetsFacet(
        searchAssetsFacet:
            searchAssetsFacet == _undefined || searchAssetsFacet == null
                ? _instance.searchAssetsFacet
                : (searchAssetsFacet
                    as List<Query$SearchAssetsFacet$searchAssetsFacet>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes searchAssetsFacet(
          Iterable<Query$SearchAssetsFacet$searchAssetsFacet> Function(
                  Iterable<
                      CopyWith$Query$SearchAssetsFacet$searchAssetsFacet<
                          Query$SearchAssetsFacet$searchAssetsFacet>>)
              _fn) =>
      call(
          searchAssetsFacet: _fn(_instance.searchAssetsFacet
              .map((e) => CopyWith$Query$SearchAssetsFacet$searchAssetsFacet(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$SearchAssetsFacet<TRes>
    implements CopyWith$Query$SearchAssetsFacet<TRes> {
  _CopyWithStubImpl$Query$SearchAssetsFacet(this._res);

  TRes _res;

  call({
    List<Query$SearchAssetsFacet$searchAssetsFacet>? searchAssetsFacet,
    String? $__typename,
  }) =>
      _res;

  searchAssetsFacet(_fn) => _res;
}

const documentNodeQuerySearchAssetsFacet = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchAssetsFacet'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SearchAssetInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'searchAssetsFacet'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'values'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'range'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'count'),
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
]);

class Query$SearchAssetsFacet$searchAssetsFacet {
  Query$SearchAssetsFacet$searchAssetsFacet({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndFacetResult',
  });

  factory Query$SearchAssetsFacet$searchAssetsFacet.fromJson(
      Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchAssetsFacet$searchAssetsFacet(
      key: (l$key as String),
      value: Query$SearchAssetsFacet$searchAssetsFacet$value.fromJson(
          (l$value as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$SearchAssetsFacet$searchAssetsFacet$value value;

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
    return Object.hashAll([
      l$key,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchAssetsFacet$searchAssetsFacet) ||
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

extension UtilityExtension$Query$SearchAssetsFacet$searchAssetsFacet
    on Query$SearchAssetsFacet$searchAssetsFacet {
  CopyWith$Query$SearchAssetsFacet$searchAssetsFacet<
          Query$SearchAssetsFacet$searchAssetsFacet>
      get copyWith => CopyWith$Query$SearchAssetsFacet$searchAssetsFacet(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchAssetsFacet$searchAssetsFacet<TRes> {
  factory CopyWith$Query$SearchAssetsFacet$searchAssetsFacet(
    Query$SearchAssetsFacet$searchAssetsFacet instance,
    TRes Function(Query$SearchAssetsFacet$searchAssetsFacet) then,
  ) = _CopyWithImpl$Query$SearchAssetsFacet$searchAssetsFacet;

  factory CopyWith$Query$SearchAssetsFacet$searchAssetsFacet.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAssetsFacet$searchAssetsFacet;

  TRes call({
    String? key,
    Query$SearchAssetsFacet$searchAssetsFacet$value? value,
    String? $__typename,
  });
  CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value<TRes> get value;
}

class _CopyWithImpl$Query$SearchAssetsFacet$searchAssetsFacet<TRes>
    implements CopyWith$Query$SearchAssetsFacet$searchAssetsFacet<TRes> {
  _CopyWithImpl$Query$SearchAssetsFacet$searchAssetsFacet(
    this._instance,
    this._then,
  );

  final Query$SearchAssetsFacet$searchAssetsFacet _instance;

  final TRes Function(Query$SearchAssetsFacet$searchAssetsFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchAssetsFacet$searchAssetsFacet(
        key: key == _undefined || key == null ? _instance.key : (key as String),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as Query$SearchAssetsFacet$searchAssetsFacet$value),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value<TRes> get value {
    final local$value = _instance.value;
    return CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value(
        local$value, (e) => call(value: e));
  }
}

class _CopyWithStubImpl$Query$SearchAssetsFacet$searchAssetsFacet<TRes>
    implements CopyWith$Query$SearchAssetsFacet$searchAssetsFacet<TRes> {
  _CopyWithStubImpl$Query$SearchAssetsFacet$searchAssetsFacet(this._res);

  TRes _res;

  call({
    String? key,
    Query$SearchAssetsFacet$searchAssetsFacet$value? value,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value<TRes> get value =>
      CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value.stub(_res);
}

class Query$SearchAssetsFacet$searchAssetsFacet$value {
  Query$SearchAssetsFacet$searchAssetsFacet$value({
    this.name,
    this.values,
    this.$__typename = 'FacetResult',
  });

  factory Query$SearchAssetsFacet$searchAssetsFacet$value.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$SearchAssetsFacet$searchAssetsFacet$value(
      name: (l$name as String?),
      values: (l$values as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SearchAssetsFacet$searchAssetsFacet$value$values.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final List<Query$SearchAssetsFacet$searchAssetsFacet$value$values?>? values;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$values = values;
    _resultData['values'] = l$values?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$values = values;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$values == null ? null : Object.hashAll(l$values.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchAssetsFacet$searchAssetsFacet$value) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$values = values;
    final lOther$values = other.values;
    if (l$values != null && lOther$values != null) {
      if (l$values.length != lOther$values.length) {
        return false;
      }
      for (int i = 0; i < l$values.length; i++) {
        final l$values$entry = l$values[i];
        final lOther$values$entry = lOther$values[i];
        if (l$values$entry != lOther$values$entry) {
          return false;
        }
      }
    } else if (l$values != lOther$values) {
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

extension UtilityExtension$Query$SearchAssetsFacet$searchAssetsFacet$value
    on Query$SearchAssetsFacet$searchAssetsFacet$value {
  CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value<
          Query$SearchAssetsFacet$searchAssetsFacet$value>
      get copyWith => CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value<TRes> {
  factory CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value(
    Query$SearchAssetsFacet$searchAssetsFacet$value instance,
    TRes Function(Query$SearchAssetsFacet$searchAssetsFacet$value) then,
  ) = _CopyWithImpl$Query$SearchAssetsFacet$searchAssetsFacet$value;

  factory CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchAssetsFacet$searchAssetsFacet$value;

  TRes call({
    String? name,
    List<Query$SearchAssetsFacet$searchAssetsFacet$value$values?>? values,
    String? $__typename,
  });
  TRes values(
      Iterable<Query$SearchAssetsFacet$searchAssetsFacet$value$values?>? Function(
              Iterable<
                  CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value$values<
                      Query$SearchAssetsFacet$searchAssetsFacet$value$values>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchAssetsFacet$searchAssetsFacet$value<TRes>
    implements CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value<TRes> {
  _CopyWithImpl$Query$SearchAssetsFacet$searchAssetsFacet$value(
    this._instance,
    this._then,
  );

  final Query$SearchAssetsFacet$searchAssetsFacet$value _instance;

  final TRes Function(Query$SearchAssetsFacet$searchAssetsFacet$value) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchAssetsFacet$searchAssetsFacet$value(
        name: name == _undefined ? _instance.name : (name as String?),
        values: values == _undefined
            ? _instance.values
            : (values as List<
                Query$SearchAssetsFacet$searchAssetsFacet$value$values?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes values(
          Iterable<Query$SearchAssetsFacet$searchAssetsFacet$value$values?>? Function(
                  Iterable<
                      CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value$values<
                          Query$SearchAssetsFacet$searchAssetsFacet$value$values>?>?)
              _fn) =>
      call(
          values: _fn(_instance.values?.map((e) => e == null
              ? null
              : CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value$values(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchAssetsFacet$searchAssetsFacet$value<TRes>
    implements CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value<TRes> {
  _CopyWithStubImpl$Query$SearchAssetsFacet$searchAssetsFacet$value(this._res);

  TRes _res;

  call({
    String? name,
    List<Query$SearchAssetsFacet$searchAssetsFacet$value$values?>? values,
    String? $__typename,
  }) =>
      _res;

  values(_fn) => _res;
}

class Query$SearchAssetsFacet$searchAssetsFacet$value$values {
  Query$SearchAssetsFacet$searchAssetsFacet$value$values({
    this.range,
    required this.count,
    this.$__typename = 'FacetValue',
  });

  factory Query$SearchAssetsFacet$searchAssetsFacet$value$values.fromJson(
      Map<String, dynamic> json) {
    final l$range = json['range'];
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$SearchAssetsFacet$searchAssetsFacet$value$values(
      range: (l$range as String?),
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String? range;

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$range = range;
    _resultData['range'] = l$range;
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$range = range;
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$range,
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchAssetsFacet$searchAssetsFacet$value$values) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$range = range;
    final lOther$range = other.range;
    if (l$range != lOther$range) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Query$SearchAssetsFacet$searchAssetsFacet$value$values
    on Query$SearchAssetsFacet$searchAssetsFacet$value$values {
  CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value$values<
          Query$SearchAssetsFacet$searchAssetsFacet$value$values>
      get copyWith =>
          CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value$values(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value$values<
    TRes> {
  factory CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value$values(
    Query$SearchAssetsFacet$searchAssetsFacet$value$values instance,
    TRes Function(Query$SearchAssetsFacet$searchAssetsFacet$value$values) then,
  ) = _CopyWithImpl$Query$SearchAssetsFacet$searchAssetsFacet$value$values;

  factory CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value$values.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchAssetsFacet$searchAssetsFacet$value$values;

  TRes call({
    String? range,
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAssetsFacet$searchAssetsFacet$value$values<TRes>
    implements
        CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value$values<TRes> {
  _CopyWithImpl$Query$SearchAssetsFacet$searchAssetsFacet$value$values(
    this._instance,
    this._then,
  );

  final Query$SearchAssetsFacet$searchAssetsFacet$value$values _instance;

  final TRes Function(Query$SearchAssetsFacet$searchAssetsFacet$value$values)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? range = _undefined,
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchAssetsFacet$searchAssetsFacet$value$values(
        range: range == _undefined ? _instance.range : (range as String?),
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchAssetsFacet$searchAssetsFacet$value$values<
        TRes>
    implements
        CopyWith$Query$SearchAssetsFacet$searchAssetsFacet$value$values<TRes> {
  _CopyWithStubImpl$Query$SearchAssetsFacet$searchAssetsFacet$value$values(
      this._res);

  TRes _res;

  call({
    String? range,
    int? count,
    String? $__typename,
  }) =>
      _res;
}
