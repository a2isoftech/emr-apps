import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchTechematCats {
  factory Variables$Query$SearchTechematCats({
    int? first,
    int? last,
    String? before,
    String? after,
    required Input$SearchTechematCatsInput input,
    List<Input$ResultSortInput>? order,
  }) => Variables$Query$SearchTechematCats._({
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
    r'input': input,
    if (order != null) r'order': order,
  });

  Variables$Query$SearchTechematCats._(this._$data);

  factory Variables$Query$SearchTechematCats.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
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
    final l$input = data['input'];
    result$data['input'] = Input$SearchTechematCatsInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) => Input$ResultSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    return Variables$Query$SearchTechematCats._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  Input$SearchTechematCatsInput get input =>
      (_$data['input'] as Input$SearchTechematCatsInput);

  List<Input$ResultSortInput>? get order =>
      (_$data['order'] as List<Input$ResultSortInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    final l$input = input;
    result$data['input'] = l$input.toJson();
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$SearchTechematCats<
    Variables$Query$SearchTechematCats
  >
  get copyWith => CopyWith$Variables$Query$SearchTechematCats(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchTechematCats ||
        runtimeType != other.runtimeType) {
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
    final l$first = first;
    final l$last = last;
    final l$before = before;
    final l$after = after;
    final l$input = input;
    final l$order = order;
    return Object.hashAll([
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
      l$input,
      _$data.containsKey('order')
          ? l$order == null
                ? null
                : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchTechematCats<TRes> {
  factory CopyWith$Variables$Query$SearchTechematCats(
    Variables$Query$SearchTechematCats instance,
    TRes Function(Variables$Query$SearchTechematCats) then,
  ) = _CopyWithImpl$Variables$Query$SearchTechematCats;

  factory CopyWith$Variables$Query$SearchTechematCats.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchTechematCats;

  TRes call({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$SearchTechematCatsInput? input,
    List<Input$ResultSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$SearchTechematCats<TRes>
    implements CopyWith$Variables$Query$SearchTechematCats<TRes> {
  _CopyWithImpl$Variables$Query$SearchTechematCats(this._instance, this._then);

  final Variables$Query$SearchTechematCats _instance;

  final TRes Function(Variables$Query$SearchTechematCats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? input = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$SearchTechematCats._({
      ..._instance._$data,
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
      if (input != _undefined && input != null)
        'input': (input as Input$SearchTechematCatsInput),
      if (order != _undefined) 'order': (order as List<Input$ResultSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchTechematCats<TRes>
    implements CopyWith$Variables$Query$SearchTechematCats<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchTechematCats(this._res);

  TRes _res;

  call({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$SearchTechematCatsInput? input,
    List<Input$ResultSortInput>? order,
  }) => _res;
}

class Query$SearchTechematCats {
  Query$SearchTechematCats({
    this.searchTechematCats,
    this.$__typename = 'Query',
  });

  factory Query$SearchTechematCats.fromJson(Map<String, dynamic> json) {
    final l$searchTechematCats = json['searchTechematCats'];
    final l$$__typename = json['__typename'];
    return Query$SearchTechematCats(
      searchTechematCats: l$searchTechematCats == null
          ? null
          : Query$SearchTechematCats$searchTechematCats.fromJson(
              (l$searchTechematCats as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchTechematCats$searchTechematCats? searchTechematCats;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchTechematCats = searchTechematCats;
    _resultData['searchTechematCats'] = l$searchTechematCats?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchTechematCats = searchTechematCats;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchTechematCats, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchTechematCats ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchTechematCats = searchTechematCats;
    final lOther$searchTechematCats = other.searchTechematCats;
    if (l$searchTechematCats != lOther$searchTechematCats) {
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

extension UtilityExtension$Query$SearchTechematCats
    on Query$SearchTechematCats {
  CopyWith$Query$SearchTechematCats<Query$SearchTechematCats> get copyWith =>
      CopyWith$Query$SearchTechematCats(this, (i) => i);
}

abstract class CopyWith$Query$SearchTechematCats<TRes> {
  factory CopyWith$Query$SearchTechematCats(
    Query$SearchTechematCats instance,
    TRes Function(Query$SearchTechematCats) then,
  ) = _CopyWithImpl$Query$SearchTechematCats;

  factory CopyWith$Query$SearchTechematCats.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchTechematCats;

  TRes call({
    Query$SearchTechematCats$searchTechematCats? searchTechematCats,
    String? $__typename,
  });
  CopyWith$Query$SearchTechematCats$searchTechematCats<TRes>
  get searchTechematCats;
}

class _CopyWithImpl$Query$SearchTechematCats<TRes>
    implements CopyWith$Query$SearchTechematCats<TRes> {
  _CopyWithImpl$Query$SearchTechematCats(this._instance, this._then);

  final Query$SearchTechematCats _instance;

  final TRes Function(Query$SearchTechematCats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchTechematCats = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTechematCats(
      searchTechematCats: searchTechematCats == _undefined
          ? _instance.searchTechematCats
          : (searchTechematCats
                as Query$SearchTechematCats$searchTechematCats?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchTechematCats$searchTechematCats<TRes>
  get searchTechematCats {
    final local$searchTechematCats = _instance.searchTechematCats;
    return local$searchTechematCats == null
        ? CopyWith$Query$SearchTechematCats$searchTechematCats.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchTechematCats$searchTechematCats(
            local$searchTechematCats,
            (e) => call(searchTechematCats: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchTechematCats<TRes>
    implements CopyWith$Query$SearchTechematCats<TRes> {
  _CopyWithStubImpl$Query$SearchTechematCats(this._res);

  TRes _res;

  call({
    Query$SearchTechematCats$searchTechematCats? searchTechematCats,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchTechematCats$searchTechematCats<TRes>
  get searchTechematCats =>
      CopyWith$Query$SearchTechematCats$searchTechematCats.stub(_res);
}

const documentNodeQuerySearchTechematCats = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchTechematCats'),
      variableDefinitions: [
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
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchTechematCatsInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'order')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'ResultSortInput'),
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
            name: NameNode(value: 'searchTechematCats'),
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
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'fill'),
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
                        name: NameNode(value: 'unitCost'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'unitCostPaid'),
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
                        name: NameNode(value: 'serial'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'sealNo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'yardCode'),
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
                        name: NameNode(value: 'extendedProperties'),
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

class Query$SearchTechematCats$searchTechematCats {
  Query$SearchTechematCats$searchTechematCats({
    this.nodes,
    required this.totalCount,
    required this.pageInfo,
    this.$__typename = 'SearchTechematCatsConnection',
  });

  factory Query$SearchTechematCats$searchTechematCats.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$SearchTechematCats$searchTechematCats(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$SearchTechematCats$searchTechematCats$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      totalCount: (l$totalCount as int),
      pageInfo: Query$SearchTechematCats$searchTechematCats$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchTechematCats$searchTechematCats$nodes>? nodes;

  final int totalCount;

  final Query$SearchTechematCats$searchTechematCats$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$totalCount = totalCount;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$totalCount,
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchTechematCats$searchTechematCats ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchTechematCats$searchTechematCats
    on Query$SearchTechematCats$searchTechematCats {
  CopyWith$Query$SearchTechematCats$searchTechematCats<
    Query$SearchTechematCats$searchTechematCats
  >
  get copyWith =>
      CopyWith$Query$SearchTechematCats$searchTechematCats(this, (i) => i);
}

abstract class CopyWith$Query$SearchTechematCats$searchTechematCats<TRes> {
  factory CopyWith$Query$SearchTechematCats$searchTechematCats(
    Query$SearchTechematCats$searchTechematCats instance,
    TRes Function(Query$SearchTechematCats$searchTechematCats) then,
  ) = _CopyWithImpl$Query$SearchTechematCats$searchTechematCats;

  factory CopyWith$Query$SearchTechematCats$searchTechematCats.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchTechematCats$searchTechematCats;

  TRes call({
    List<Query$SearchTechematCats$searchTechematCats$nodes>? nodes,
    int? totalCount,
    Query$SearchTechematCats$searchTechematCats$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$SearchTechematCats$searchTechematCats$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchTechematCats$searchTechematCats$nodes<
          Query$SearchTechematCats$searchTechematCats$nodes
        >
      >?,
    )
    _fn,
  );
  CopyWith$Query$SearchTechematCats$searchTechematCats$pageInfo<TRes>
  get pageInfo;
}

class _CopyWithImpl$Query$SearchTechematCats$searchTechematCats<TRes>
    implements CopyWith$Query$SearchTechematCats$searchTechematCats<TRes> {
  _CopyWithImpl$Query$SearchTechematCats$searchTechematCats(
    this._instance,
    this._then,
  );

  final Query$SearchTechematCats$searchTechematCats _instance;

  final TRes Function(Query$SearchTechematCats$searchTechematCats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTechematCats$searchTechematCats(
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$SearchTechematCats$searchTechematCats$nodes>?),
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$SearchTechematCats$searchTechematCats$pageInfo),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Query$SearchTechematCats$searchTechematCats$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchTechematCats$searchTechematCats$nodes<
          Query$SearchTechematCats$searchTechematCats$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$SearchTechematCats$searchTechematCats$nodes(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );

  CopyWith$Query$SearchTechematCats$searchTechematCats$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchTechematCats$searchTechematCats$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchTechematCats$searchTechematCats<TRes>
    implements CopyWith$Query$SearchTechematCats$searchTechematCats<TRes> {
  _CopyWithStubImpl$Query$SearchTechematCats$searchTechematCats(this._res);

  TRes _res;

  call({
    List<Query$SearchTechematCats$searchTechematCats$nodes>? nodes,
    int? totalCount,
    Query$SearchTechematCats$searchTechematCats$pageInfo? pageInfo,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;

  CopyWith$Query$SearchTechematCats$searchTechematCats$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$SearchTechematCats$searchTechematCats$pageInfo.stub(_res);
}

class Query$SearchTechematCats$searchTechematCats$nodes {
  Query$SearchTechematCats$searchTechematCats$nodes({
    required this.fill,
    required this.active,
    required this.unitCost,
    required this.unitCostPaid,
    required this.make,
    required this.model,
    required this.serial,
    required this.sealNo,
    required this.yardCode,
    required this.id,
    this.extendedProperties,
    this.$__typename = 'TechemetCat',
  });

  factory Query$SearchTechematCats$searchTechematCats$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$fill = json['fill'];
    final l$active = json['active'];
    final l$unitCost = json['unitCost'];
    final l$unitCostPaid = json['unitCostPaid'];
    final l$make = json['make'];
    final l$model = json['model'];
    final l$serial = json['serial'];
    final l$sealNo = json['sealNo'];
    final l$yardCode = json['yardCode'];
    final l$id = json['id'];
    final l$extendedProperties = json['extendedProperties'];
    final l$$__typename = json['__typename'];
    return Query$SearchTechematCats$searchTechematCats$nodes(
      fill: (l$fill as num).toDouble(),
      active: (l$active as bool),
      unitCost: (l$unitCost as num).toDouble(),
      unitCostPaid: (l$unitCostPaid as num).toDouble(),
      make: (l$make as String),
      model: (l$model as String),
      serial: (l$serial as String),
      sealNo: (l$sealNo as String),
      yardCode: (l$yardCode as String),
      id: (l$id as String),
      extendedProperties: (l$extendedProperties as Map<String, dynamic>?),
      $__typename: (l$$__typename as String),
    );
  }

  final double fill;

  final bool active;

  final double unitCost;

  final double unitCostPaid;

  final String make;

  final String model;

  final String serial;

  final String sealNo;

  final String yardCode;

  final String id;

  final Map<String, dynamic>? extendedProperties;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fill = fill;
    _resultData['fill'] = l$fill;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$unitCost = unitCost;
    _resultData['unitCost'] = l$unitCost;
    final l$unitCostPaid = unitCostPaid;
    _resultData['unitCostPaid'] = l$unitCostPaid;
    final l$make = make;
    _resultData['make'] = l$make;
    final l$model = model;
    _resultData['model'] = l$model;
    final l$serial = serial;
    _resultData['serial'] = l$serial;
    final l$sealNo = sealNo;
    _resultData['sealNo'] = l$sealNo;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$extendedProperties = extendedProperties;
    _resultData['extendedProperties'] = l$extendedProperties;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fill = fill;
    final l$active = active;
    final l$unitCost = unitCost;
    final l$unitCostPaid = unitCostPaid;
    final l$make = make;
    final l$model = model;
    final l$serial = serial;
    final l$sealNo = sealNo;
    final l$yardCode = yardCode;
    final l$id = id;
    final l$extendedProperties = extendedProperties;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fill,
      l$active,
      l$unitCost,
      l$unitCostPaid,
      l$make,
      l$model,
      l$serial,
      l$sealNo,
      l$yardCode,
      l$id,
      l$extendedProperties,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchTechematCats$searchTechematCats$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fill = fill;
    final lOther$fill = other.fill;
    if (l$fill != lOther$fill) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$unitCost = unitCost;
    final lOther$unitCost = other.unitCost;
    if (l$unitCost != lOther$unitCost) {
      return false;
    }
    final l$unitCostPaid = unitCostPaid;
    final lOther$unitCostPaid = other.unitCostPaid;
    if (l$unitCostPaid != lOther$unitCostPaid) {
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
    final l$serial = serial;
    final lOther$serial = other.serial;
    if (l$serial != lOther$serial) {
      return false;
    }
    final l$sealNo = sealNo;
    final lOther$sealNo = other.sealNo;
    if (l$sealNo != lOther$sealNo) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$extendedProperties = extendedProperties;
    final lOther$extendedProperties = other.extendedProperties;
    if (l$extendedProperties != lOther$extendedProperties) {
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

extension UtilityExtension$Query$SearchTechematCats$searchTechematCats$nodes
    on Query$SearchTechematCats$searchTechematCats$nodes {
  CopyWith$Query$SearchTechematCats$searchTechematCats$nodes<
    Query$SearchTechematCats$searchTechematCats$nodes
  >
  get copyWith => CopyWith$Query$SearchTechematCats$searchTechematCats$nodes(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$SearchTechematCats$searchTechematCats$nodes<
  TRes
> {
  factory CopyWith$Query$SearchTechematCats$searchTechematCats$nodes(
    Query$SearchTechematCats$searchTechematCats$nodes instance,
    TRes Function(Query$SearchTechematCats$searchTechematCats$nodes) then,
  ) = _CopyWithImpl$Query$SearchTechematCats$searchTechematCats$nodes;

  factory CopyWith$Query$SearchTechematCats$searchTechematCats$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTechematCats$searchTechematCats$nodes;

  TRes call({
    double? fill,
    bool? active,
    double? unitCost,
    double? unitCostPaid,
    String? make,
    String? model,
    String? serial,
    String? sealNo,
    String? yardCode,
    String? id,
    Map<String, dynamic>? extendedProperties,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchTechematCats$searchTechematCats$nodes<TRes>
    implements
        CopyWith$Query$SearchTechematCats$searchTechematCats$nodes<TRes> {
  _CopyWithImpl$Query$SearchTechematCats$searchTechematCats$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchTechematCats$searchTechematCats$nodes _instance;

  final TRes Function(Query$SearchTechematCats$searchTechematCats$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fill = _undefined,
    Object? active = _undefined,
    Object? unitCost = _undefined,
    Object? unitCostPaid = _undefined,
    Object? make = _undefined,
    Object? model = _undefined,
    Object? serial = _undefined,
    Object? sealNo = _undefined,
    Object? yardCode = _undefined,
    Object? id = _undefined,
    Object? extendedProperties = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTechematCats$searchTechematCats$nodes(
      fill: fill == _undefined || fill == null
          ? _instance.fill
          : (fill as double),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      unitCost: unitCost == _undefined || unitCost == null
          ? _instance.unitCost
          : (unitCost as double),
      unitCostPaid: unitCostPaid == _undefined || unitCostPaid == null
          ? _instance.unitCostPaid
          : (unitCostPaid as double),
      make: make == _undefined || make == null
          ? _instance.make
          : (make as String),
      model: model == _undefined || model == null
          ? _instance.model
          : (model as String),
      serial: serial == _undefined || serial == null
          ? _instance.serial
          : (serial as String),
      sealNo: sealNo == _undefined || sealNo == null
          ? _instance.sealNo
          : (sealNo as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      extendedProperties: extendedProperties == _undefined
          ? _instance.extendedProperties
          : (extendedProperties as Map<String, dynamic>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchTechematCats$searchTechematCats$nodes<TRes>
    implements
        CopyWith$Query$SearchTechematCats$searchTechematCats$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchTechematCats$searchTechematCats$nodes(
    this._res,
  );

  TRes _res;

  call({
    double? fill,
    bool? active,
    double? unitCost,
    double? unitCostPaid,
    String? make,
    String? model,
    String? serial,
    String? sealNo,
    String? yardCode,
    String? id,
    Map<String, dynamic>? extendedProperties,
    String? $__typename,
  }) => _res;
}

class Query$SearchTechematCats$searchTechematCats$pageInfo {
  Query$SearchTechematCats$searchTechematCats$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchTechematCats$searchTechematCats$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchTechematCats$searchTechematCats$pageInfo(
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
    if (other is! Query$SearchTechematCats$searchTechematCats$pageInfo ||
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

extension UtilityExtension$Query$SearchTechematCats$searchTechematCats$pageInfo
    on Query$SearchTechematCats$searchTechematCats$pageInfo {
  CopyWith$Query$SearchTechematCats$searchTechematCats$pageInfo<
    Query$SearchTechematCats$searchTechematCats$pageInfo
  >
  get copyWith => CopyWith$Query$SearchTechematCats$searchTechematCats$pageInfo(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$SearchTechematCats$searchTechematCats$pageInfo<
  TRes
> {
  factory CopyWith$Query$SearchTechematCats$searchTechematCats$pageInfo(
    Query$SearchTechematCats$searchTechematCats$pageInfo instance,
    TRes Function(Query$SearchTechematCats$searchTechematCats$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchTechematCats$searchTechematCats$pageInfo;

  factory CopyWith$Query$SearchTechematCats$searchTechematCats$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTechematCats$searchTechematCats$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchTechematCats$searchTechematCats$pageInfo<TRes>
    implements
        CopyWith$Query$SearchTechematCats$searchTechematCats$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchTechematCats$searchTechematCats$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchTechematCats$searchTechematCats$pageInfo _instance;

  final TRes Function(Query$SearchTechematCats$searchTechematCats$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTechematCats$searchTechematCats$pageInfo(
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

class _CopyWithStubImpl$Query$SearchTechematCats$searchTechematCats$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SearchTechematCats$searchTechematCats$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchTechematCats$searchTechematCats$pageInfo(
    this._res,
  );

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}
