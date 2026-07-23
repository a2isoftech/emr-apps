import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchInventory {
  factory Variables$Query$SearchInventory({
    required Input$SearchInventoryInput input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$InventorySearchResultSortInput>? order,
  }) => Variables$Query$SearchInventory._({
    r'input': input,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
    if (order != null) r'order': order,
  });

  Variables$Query$SearchInventory._(this._$data);

  factory Variables$Query$SearchInventory.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchInventoryInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
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
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) => Input$InventorySearchResultSortInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    return Variables$Query$SearchInventory._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchInventoryInput get input =>
      (_$data['input'] as Input$SearchInventoryInput);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  List<Input$InventorySearchResultSortInput>? get order =>
      (_$data['order'] as List<Input$InventorySearchResultSortInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
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
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$SearchInventory<Variables$Query$SearchInventory>
  get copyWith => CopyWith$Variables$Query$SearchInventory(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchInventory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
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
    final l$input = input;
    final l$first = first;
    final l$last = last;
    final l$before = before;
    final l$after = after;
    final l$order = order;
    return Object.hashAll([
      l$input,
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('order')
          ? l$order == null
                ? null
                : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchInventory<TRes> {
  factory CopyWith$Variables$Query$SearchInventory(
    Variables$Query$SearchInventory instance,
    TRes Function(Variables$Query$SearchInventory) then,
  ) = _CopyWithImpl$Variables$Query$SearchInventory;

  factory CopyWith$Variables$Query$SearchInventory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchInventory;

  TRes call({
    Input$SearchInventoryInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$InventorySearchResultSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$SearchInventory<TRes>
    implements CopyWith$Variables$Query$SearchInventory<TRes> {
  _CopyWithImpl$Variables$Query$SearchInventory(this._instance, this._then);

  final Variables$Query$SearchInventory _instance;

  final TRes Function(Variables$Query$SearchInventory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$SearchInventory._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchInventoryInput),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
      if (order != _undefined)
        'order': (order as List<Input$InventorySearchResultSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchInventory<TRes>
    implements CopyWith$Variables$Query$SearchInventory<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchInventory(this._res);

  TRes _res;

  call({
    Input$SearchInventoryInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$InventorySearchResultSortInput>? order,
  }) => _res;
}

class Query$SearchInventory {
  Query$SearchInventory({this.searchInventory, this.$__typename = 'Query'});

  factory Query$SearchInventory.fromJson(Map<String, dynamic> json) {
    final l$searchInventory = json['searchInventory'];
    final l$$__typename = json['__typename'];
    return Query$SearchInventory(
      searchInventory: l$searchInventory == null
          ? null
          : Query$SearchInventory$searchInventory.fromJson(
              (l$searchInventory as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchInventory$searchInventory? searchInventory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchInventory = searchInventory;
    _resultData['searchInventory'] = l$searchInventory?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchInventory = searchInventory;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchInventory, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchInventory || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchInventory = searchInventory;
    final lOther$searchInventory = other.searchInventory;
    if (l$searchInventory != lOther$searchInventory) {
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

extension UtilityExtension$Query$SearchInventory on Query$SearchInventory {
  CopyWith$Query$SearchInventory<Query$SearchInventory> get copyWith =>
      CopyWith$Query$SearchInventory(this, (i) => i);
}

abstract class CopyWith$Query$SearchInventory<TRes> {
  factory CopyWith$Query$SearchInventory(
    Query$SearchInventory instance,
    TRes Function(Query$SearchInventory) then,
  ) = _CopyWithImpl$Query$SearchInventory;

  factory CopyWith$Query$SearchInventory.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchInventory;

  TRes call({
    Query$SearchInventory$searchInventory? searchInventory,
    String? $__typename,
  });
  CopyWith$Query$SearchInventory$searchInventory<TRes> get searchInventory;
}

class _CopyWithImpl$Query$SearchInventory<TRes>
    implements CopyWith$Query$SearchInventory<TRes> {
  _CopyWithImpl$Query$SearchInventory(this._instance, this._then);

  final Query$SearchInventory _instance;

  final TRes Function(Query$SearchInventory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchInventory = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchInventory(
      searchInventory: searchInventory == _undefined
          ? _instance.searchInventory
          : (searchInventory as Query$SearchInventory$searchInventory?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchInventory$searchInventory<TRes> get searchInventory {
    final local$searchInventory = _instance.searchInventory;
    return local$searchInventory == null
        ? CopyWith$Query$SearchInventory$searchInventory.stub(_then(_instance))
        : CopyWith$Query$SearchInventory$searchInventory(
            local$searchInventory,
            (e) => call(searchInventory: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchInventory<TRes>
    implements CopyWith$Query$SearchInventory<TRes> {
  _CopyWithStubImpl$Query$SearchInventory(this._res);

  TRes _res;

  call({
    Query$SearchInventory$searchInventory? searchInventory,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchInventory$searchInventory<TRes> get searchInventory =>
      CopyWith$Query$SearchInventory$searchInventory.stub(_res);
}

const documentNodeQuerySearchInventory = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchInventory'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchInventoryInput'),
            isNonNull: true,
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
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'order')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'InventorySearchResultSortInput'),
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
            name: NameNode(value: 'searchInventory'),
            alias: null,
            arguments: [
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
                        name: NameNode(value: 'active'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'weight'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'uom'),
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
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'mtValue'),
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
                        name: NameNode(value: 'value'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'rate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'uom'),
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
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'mtValue'),
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
                        name: NameNode(value: 'yardId'),
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

class Query$SearchInventory$searchInventory {
  Query$SearchInventory$searchInventory({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchInventoryConnection',
  });

  factory Query$SearchInventory$searchInventory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchInventory$searchInventory(
      totalCount: (l$totalCount as int),
      pageInfo: Query$SearchInventory$searchInventory$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$SearchInventory$searchInventory$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SearchInventory$searchInventory$pageInfo pageInfo;

  final List<Query$SearchInventory$searchInventory$nodes>? nodes;

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
    if (other is! Query$SearchInventory$searchInventory ||
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

extension UtilityExtension$Query$SearchInventory$searchInventory
    on Query$SearchInventory$searchInventory {
  CopyWith$Query$SearchInventory$searchInventory<
    Query$SearchInventory$searchInventory
  >
  get copyWith =>
      CopyWith$Query$SearchInventory$searchInventory(this, (i) => i);
}

abstract class CopyWith$Query$SearchInventory$searchInventory<TRes> {
  factory CopyWith$Query$SearchInventory$searchInventory(
    Query$SearchInventory$searchInventory instance,
    TRes Function(Query$SearchInventory$searchInventory) then,
  ) = _CopyWithImpl$Query$SearchInventory$searchInventory;

  factory CopyWith$Query$SearchInventory$searchInventory.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchInventory$searchInventory;

  TRes call({
    int? totalCount,
    Query$SearchInventory$searchInventory$pageInfo? pageInfo,
    List<Query$SearchInventory$searchInventory$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchInventory$searchInventory$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$SearchInventory$searchInventory$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchInventory$searchInventory$nodes<
          Query$SearchInventory$searchInventory$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchInventory$searchInventory<TRes>
    implements CopyWith$Query$SearchInventory$searchInventory<TRes> {
  _CopyWithImpl$Query$SearchInventory$searchInventory(
    this._instance,
    this._then,
  );

  final Query$SearchInventory$searchInventory _instance;

  final TRes Function(Query$SearchInventory$searchInventory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchInventory$searchInventory(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$SearchInventory$searchInventory$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$SearchInventory$searchInventory$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchInventory$searchInventory$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchInventory$searchInventory$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$SearchInventory$searchInventory$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchInventory$searchInventory$nodes<
          Query$SearchInventory$searchInventory$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) =>
            CopyWith$Query$SearchInventory$searchInventory$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchInventory$searchInventory<TRes>
    implements CopyWith$Query$SearchInventory$searchInventory<TRes> {
  _CopyWithStubImpl$Query$SearchInventory$searchInventory(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$SearchInventory$searchInventory$pageInfo? pageInfo,
    List<Query$SearchInventory$searchInventory$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchInventory$searchInventory$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$SearchInventory$searchInventory$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$SearchInventory$searchInventory$pageInfo {
  Query$SearchInventory$searchInventory$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchInventory$searchInventory$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchInventory$searchInventory$pageInfo(
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
    if (other is! Query$SearchInventory$searchInventory$pageInfo ||
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

extension UtilityExtension$Query$SearchInventory$searchInventory$pageInfo
    on Query$SearchInventory$searchInventory$pageInfo {
  CopyWith$Query$SearchInventory$searchInventory$pageInfo<
    Query$SearchInventory$searchInventory$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SearchInventory$searchInventory$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$SearchInventory$searchInventory$pageInfo<TRes> {
  factory CopyWith$Query$SearchInventory$searchInventory$pageInfo(
    Query$SearchInventory$searchInventory$pageInfo instance,
    TRes Function(Query$SearchInventory$searchInventory$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchInventory$searchInventory$pageInfo;

  factory CopyWith$Query$SearchInventory$searchInventory$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchInventory$searchInventory$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchInventory$searchInventory$pageInfo<TRes>
    implements CopyWith$Query$SearchInventory$searchInventory$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchInventory$searchInventory$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchInventory$searchInventory$pageInfo _instance;

  final TRes Function(Query$SearchInventory$searchInventory$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchInventory$searchInventory$pageInfo(
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

class _CopyWithStubImpl$Query$SearchInventory$searchInventory$pageInfo<TRes>
    implements CopyWith$Query$SearchInventory$searchInventory$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchInventory$searchInventory$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}

class Query$SearchInventory$searchInventory$nodes {
  Query$SearchInventory$searchInventory$nodes({
    required this.id,
    required this.code,
    required this.description,
    required this.active,
    required this.weight,
    required this.value,
    required this.rate,
    required this.yardId,
    this.productCode,
    this.$__typename = 'Heap',
  });

  factory Query$SearchInventory$searchInventory$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$description = json['description'];
    final l$active = json['active'];
    final l$weight = json['weight'];
    final l$value = json['value'];
    final l$rate = json['rate'];
    final l$yardId = json['yardId'];
    final l$productCode = json['productCode'];
    final l$$__typename = json['__typename'];
    return Query$SearchInventory$searchInventory$nodes(
      id: (l$id as String),
      code: (l$code as String),
      description: (l$description as String),
      active: (l$active as bool),
      weight: Query$SearchInventory$searchInventory$nodes$weight.fromJson(
        (l$weight as Map<String, dynamic>),
      ),
      value: (l$value as num).toDouble(),
      rate: Query$SearchInventory$searchInventory$nodes$rate.fromJson(
        (l$rate as Map<String, dynamic>),
      ),
      yardId: (l$yardId as String),
      productCode: (l$productCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String description;

  final bool active;

  final Query$SearchInventory$searchInventory$nodes$weight weight;

  final double value;

  final Query$SearchInventory$searchInventory$nodes$rate rate;

  final String yardId;

  final String? productCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$weight = weight;
    _resultData['weight'] = l$weight.toJson();
    final l$value = value;
    _resultData['value'] = l$value;
    final l$rate = rate;
    _resultData['rate'] = l$rate.toJson();
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$productCode = productCode;
    _resultData['productCode'] = l$productCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$description = description;
    final l$active = active;
    final l$weight = weight;
    final l$value = value;
    final l$rate = rate;
    final l$yardId = yardId;
    final l$productCode = productCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$description,
      l$active,
      l$weight,
      l$value,
      l$rate,
      l$yardId,
      l$productCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchInventory$searchInventory$nodes ||
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
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
      return false;
    }
    final l$productCode = productCode;
    final lOther$productCode = other.productCode;
    if (l$productCode != lOther$productCode) {
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

extension UtilityExtension$Query$SearchInventory$searchInventory$nodes
    on Query$SearchInventory$searchInventory$nodes {
  CopyWith$Query$SearchInventory$searchInventory$nodes<
    Query$SearchInventory$searchInventory$nodes
  >
  get copyWith =>
      CopyWith$Query$SearchInventory$searchInventory$nodes(this, (i) => i);
}

abstract class CopyWith$Query$SearchInventory$searchInventory$nodes<TRes> {
  factory CopyWith$Query$SearchInventory$searchInventory$nodes(
    Query$SearchInventory$searchInventory$nodes instance,
    TRes Function(Query$SearchInventory$searchInventory$nodes) then,
  ) = _CopyWithImpl$Query$SearchInventory$searchInventory$nodes;

  factory CopyWith$Query$SearchInventory$searchInventory$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchInventory$searchInventory$nodes;

  TRes call({
    String? id,
    String? code,
    String? description,
    bool? active,
    Query$SearchInventory$searchInventory$nodes$weight? weight,
    double? value,
    Query$SearchInventory$searchInventory$nodes$rate? rate,
    String? yardId,
    String? productCode,
    String? $__typename,
  });
  CopyWith$Query$SearchInventory$searchInventory$nodes$weight<TRes> get weight;
  CopyWith$Query$SearchInventory$searchInventory$nodes$rate<TRes> get rate;
}

class _CopyWithImpl$Query$SearchInventory$searchInventory$nodes<TRes>
    implements CopyWith$Query$SearchInventory$searchInventory$nodes<TRes> {
  _CopyWithImpl$Query$SearchInventory$searchInventory$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchInventory$searchInventory$nodes _instance;

  final TRes Function(Query$SearchInventory$searchInventory$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? description = _undefined,
    Object? active = _undefined,
    Object? weight = _undefined,
    Object? value = _undefined,
    Object? rate = _undefined,
    Object? yardId = _undefined,
    Object? productCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchInventory$searchInventory$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      weight: weight == _undefined || weight == null
          ? _instance.weight
          : (weight as Query$SearchInventory$searchInventory$nodes$weight),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      rate: rate == _undefined || rate == null
          ? _instance.rate
          : (rate as Query$SearchInventory$searchInventory$nodes$rate),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      productCode: productCode == _undefined
          ? _instance.productCode
          : (productCode as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchInventory$searchInventory$nodes$weight<TRes> get weight {
    final local$weight = _instance.weight;
    return CopyWith$Query$SearchInventory$searchInventory$nodes$weight(
      local$weight,
      (e) => call(weight: e),
    );
  }

  CopyWith$Query$SearchInventory$searchInventory$nodes$rate<TRes> get rate {
    final local$rate = _instance.rate;
    return CopyWith$Query$SearchInventory$searchInventory$nodes$rate(
      local$rate,
      (e) => call(rate: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchInventory$searchInventory$nodes<TRes>
    implements CopyWith$Query$SearchInventory$searchInventory$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchInventory$searchInventory$nodes(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    String? description,
    bool? active,
    Query$SearchInventory$searchInventory$nodes$weight? weight,
    double? value,
    Query$SearchInventory$searchInventory$nodes$rate? rate,
    String? yardId,
    String? productCode,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchInventory$searchInventory$nodes$weight<TRes>
  get weight =>
      CopyWith$Query$SearchInventory$searchInventory$nodes$weight.stub(_res);

  CopyWith$Query$SearchInventory$searchInventory$nodes$rate<TRes> get rate =>
      CopyWith$Query$SearchInventory$searchInventory$nodes$rate.stub(_res);
}

class Query$SearchInventory$searchInventory$nodes$weight {
  Query$SearchInventory$searchInventory$nodes$weight({
    required this.uom,
    required this.value,
    required this.mtValue,
    this.$__typename = 'UomValue',
  });

  factory Query$SearchInventory$searchInventory$nodes$weight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$mtValue = json['mtValue'];
    final l$$__typename = json['__typename'];
    return Query$SearchInventory$searchInventory$nodes$weight(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      mtValue: (l$mtValue as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final double mtValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$mtValue = mtValue;
    _resultData['mtValue'] = l$mtValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$mtValue = mtValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$mtValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchInventory$searchInventory$nodes$weight ||
        runtimeType != other.runtimeType) {
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
    final l$mtValue = mtValue;
    final lOther$mtValue = other.mtValue;
    if (l$mtValue != lOther$mtValue) {
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

extension UtilityExtension$Query$SearchInventory$searchInventory$nodes$weight
    on Query$SearchInventory$searchInventory$nodes$weight {
  CopyWith$Query$SearchInventory$searchInventory$nodes$weight<
    Query$SearchInventory$searchInventory$nodes$weight
  >
  get copyWith => CopyWith$Query$SearchInventory$searchInventory$nodes$weight(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$SearchInventory$searchInventory$nodes$weight<
  TRes
> {
  factory CopyWith$Query$SearchInventory$searchInventory$nodes$weight(
    Query$SearchInventory$searchInventory$nodes$weight instance,
    TRes Function(Query$SearchInventory$searchInventory$nodes$weight) then,
  ) = _CopyWithImpl$Query$SearchInventory$searchInventory$nodes$weight;

  factory CopyWith$Query$SearchInventory$searchInventory$nodes$weight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchInventory$searchInventory$nodes$weight;

  TRes call({
    Enum$Uom? uom,
    double? value,
    double? mtValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchInventory$searchInventory$nodes$weight<TRes>
    implements
        CopyWith$Query$SearchInventory$searchInventory$nodes$weight<TRes> {
  _CopyWithImpl$Query$SearchInventory$searchInventory$nodes$weight(
    this._instance,
    this._then,
  );

  final Query$SearchInventory$searchInventory$nodes$weight _instance;

  final TRes Function(Query$SearchInventory$searchInventory$nodes$weight) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? mtValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchInventory$searchInventory$nodes$weight(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      mtValue: mtValue == _undefined || mtValue == null
          ? _instance.mtValue
          : (mtValue as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchInventory$searchInventory$nodes$weight<TRes>
    implements
        CopyWith$Query$SearchInventory$searchInventory$nodes$weight<TRes> {
  _CopyWithStubImpl$Query$SearchInventory$searchInventory$nodes$weight(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, double? mtValue, String? $__typename}) =>
      _res;
}

class Query$SearchInventory$searchInventory$nodes$rate {
  Query$SearchInventory$searchInventory$nodes$rate({
    required this.uom,
    required this.value,
    required this.mtValue,
    this.$__typename = 'UomValue',
  });

  factory Query$SearchInventory$searchInventory$nodes$rate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$mtValue = json['mtValue'];
    final l$$__typename = json['__typename'];
    return Query$SearchInventory$searchInventory$nodes$rate(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      mtValue: (l$mtValue as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final double mtValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$mtValue = mtValue;
    _resultData['mtValue'] = l$mtValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$mtValue = mtValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$mtValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchInventory$searchInventory$nodes$rate ||
        runtimeType != other.runtimeType) {
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
    final l$mtValue = mtValue;
    final lOther$mtValue = other.mtValue;
    if (l$mtValue != lOther$mtValue) {
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

extension UtilityExtension$Query$SearchInventory$searchInventory$nodes$rate
    on Query$SearchInventory$searchInventory$nodes$rate {
  CopyWith$Query$SearchInventory$searchInventory$nodes$rate<
    Query$SearchInventory$searchInventory$nodes$rate
  >
  get copyWith =>
      CopyWith$Query$SearchInventory$searchInventory$nodes$rate(this, (i) => i);
}

abstract class CopyWith$Query$SearchInventory$searchInventory$nodes$rate<TRes> {
  factory CopyWith$Query$SearchInventory$searchInventory$nodes$rate(
    Query$SearchInventory$searchInventory$nodes$rate instance,
    TRes Function(Query$SearchInventory$searchInventory$nodes$rate) then,
  ) = _CopyWithImpl$Query$SearchInventory$searchInventory$nodes$rate;

  factory CopyWith$Query$SearchInventory$searchInventory$nodes$rate.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchInventory$searchInventory$nodes$rate;

  TRes call({
    Enum$Uom? uom,
    double? value,
    double? mtValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchInventory$searchInventory$nodes$rate<TRes>
    implements CopyWith$Query$SearchInventory$searchInventory$nodes$rate<TRes> {
  _CopyWithImpl$Query$SearchInventory$searchInventory$nodes$rate(
    this._instance,
    this._then,
  );

  final Query$SearchInventory$searchInventory$nodes$rate _instance;

  final TRes Function(Query$SearchInventory$searchInventory$nodes$rate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? mtValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchInventory$searchInventory$nodes$rate(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      mtValue: mtValue == _undefined || mtValue == null
          ? _instance.mtValue
          : (mtValue as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchInventory$searchInventory$nodes$rate<TRes>
    implements CopyWith$Query$SearchInventory$searchInventory$nodes$rate<TRes> {
  _CopyWithStubImpl$Query$SearchInventory$searchInventory$nodes$rate(this._res);

  TRes _res;

  call({Enum$Uom? uom, double? value, double? mtValue, String? $__typename}) =>
      _res;
}
