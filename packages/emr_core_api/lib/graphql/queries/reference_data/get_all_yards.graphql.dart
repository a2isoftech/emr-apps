import '../../fragments/company_fragment.graphql.dart';
import '../../fragments/territory_fragment.graphql.dart';
import '../../fragments/yard_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetAllYards {
  factory Variables$Query$GetAllYards({
    required Input$SearchYardInput input,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$YardSortInput>? order,
  }) => Variables$Query$GetAllYards._({
    r'input': input,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (order != null) r'order': order,
  });

  Variables$Query$GetAllYards._(this._$data);

  factory Variables$Query$GetAllYards.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchYardInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
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
            (e) => Input$YardSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    return Variables$Query$GetAllYards._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchYardInput get input => (_$data['input'] as Input$SearchYardInput);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  List<Input$YardSortInput>? get order =>
      (_$data['order'] as List<Input$YardSortInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
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

  CopyWith$Variables$Query$GetAllYards<Variables$Query$GetAllYards>
  get copyWith => CopyWith$Variables$Query$GetAllYards(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAllYards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
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
    final l$input = input;
    final l$before = before;
    final l$after = after;
    final l$first = first;
    final l$last = last;
    final l$order = order;
    return Object.hashAll([
      l$input,
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

abstract class CopyWith$Variables$Query$GetAllYards<TRes> {
  factory CopyWith$Variables$Query$GetAllYards(
    Variables$Query$GetAllYards instance,
    TRes Function(Variables$Query$GetAllYards) then,
  ) = _CopyWithImpl$Variables$Query$GetAllYards;

  factory CopyWith$Variables$Query$GetAllYards.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllYards;

  TRes call({
    Input$SearchYardInput? input,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$YardSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$GetAllYards<TRes>
    implements CopyWith$Variables$Query$GetAllYards<TRes> {
  _CopyWithImpl$Variables$Query$GetAllYards(this._instance, this._then);

  final Variables$Query$GetAllYards _instance;

  final TRes Function(Variables$Query$GetAllYards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$GetAllYards._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchYardInput),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (order != _undefined) 'order': (order as List<Input$YardSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAllYards<TRes>
    implements CopyWith$Variables$Query$GetAllYards<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllYards(this._res);

  TRes _res;

  call({
    Input$SearchYardInput? input,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$YardSortInput>? order,
  }) => _res;
}

class Query$GetAllYards {
  Query$GetAllYards({this.yards, this.$__typename = 'Query'});

  factory Query$GetAllYards.fromJson(Map<String, dynamic> json) {
    final l$yards = json['yards'];
    final l$$__typename = json['__typename'];
    return Query$GetAllYards(
      yards: l$yards == null
          ? null
          : Query$GetAllYards$yards.fromJson((l$yards as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAllYards$yards? yards;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yards = yards;
    _resultData['yards'] = l$yards?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yards = yards;
    final l$$__typename = $__typename;
    return Object.hashAll([l$yards, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllYards || runtimeType != other.runtimeType) {
      return false;
    }
    final l$yards = yards;
    final lOther$yards = other.yards;
    if (l$yards != lOther$yards) {
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

extension UtilityExtension$Query$GetAllYards on Query$GetAllYards {
  CopyWith$Query$GetAllYards<Query$GetAllYards> get copyWith =>
      CopyWith$Query$GetAllYards(this, (i) => i);
}

abstract class CopyWith$Query$GetAllYards<TRes> {
  factory CopyWith$Query$GetAllYards(
    Query$GetAllYards instance,
    TRes Function(Query$GetAllYards) then,
  ) = _CopyWithImpl$Query$GetAllYards;

  factory CopyWith$Query$GetAllYards.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllYards;

  TRes call({Query$GetAllYards$yards? yards, String? $__typename});
  CopyWith$Query$GetAllYards$yards<TRes> get yards;
}

class _CopyWithImpl$Query$GetAllYards<TRes>
    implements CopyWith$Query$GetAllYards<TRes> {
  _CopyWithImpl$Query$GetAllYards(this._instance, this._then);

  final Query$GetAllYards _instance;

  final TRes Function(Query$GetAllYards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? yards = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetAllYards(
          yards: yards == _undefined
              ? _instance.yards
              : (yards as Query$GetAllYards$yards?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetAllYards$yards<TRes> get yards {
    final local$yards = _instance.yards;
    return local$yards == null
        ? CopyWith$Query$GetAllYards$yards.stub(_then(_instance))
        : CopyWith$Query$GetAllYards$yards(local$yards, (e) => call(yards: e));
  }
}

class _CopyWithStubImpl$Query$GetAllYards<TRes>
    implements CopyWith$Query$GetAllYards<TRes> {
  _CopyWithStubImpl$Query$GetAllYards(this._res);

  TRes _res;

  call({Query$GetAllYards$yards? yards, String? $__typename}) => _res;

  CopyWith$Query$GetAllYards$yards<TRes> get yards =>
      CopyWith$Query$GetAllYards$yards.stub(_res);
}

const documentNodeQueryGetAllYards = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAllYards'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchYardInput'),
            isNonNull: true,
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
              name: NameNode(value: 'YardSortInput'),
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
            name: NameNode(value: 'yards'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
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
                            FragmentSpreadNode(
                              name: NameNode(value: 'YardFragment'),
                              directives: [],
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
    fragmentDefinitionYardFragment,
    fragmentDefinitionCompanyFragment,
    fragmentDefinitionTerritoryFragment,
  ],
);

class Query$GetAllYards$yards {
  Query$GetAllYards$yards({
    required this.totalCount,
    required this.pageInfo,
    this.edges,
    this.$__typename = 'YardsConnection',
  });

  factory Query$GetAllYards$yards.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$GetAllYards$yards(
      totalCount: (l$totalCount as int),
      pageInfo: Query$GetAllYards$yards$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      edges: (l$edges as List<dynamic>?)
          ?.map(
            (e) => Query$GetAllYards$yards$edges.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$GetAllYards$yards$pageInfo pageInfo;

  final List<Query$GetAllYards$yards$edges>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$pageInfo = pageInfo;
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$pageInfo,
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllYards$yards || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllYards$yards on Query$GetAllYards$yards {
  CopyWith$Query$GetAllYards$yards<Query$GetAllYards$yards> get copyWith =>
      CopyWith$Query$GetAllYards$yards(this, (i) => i);
}

abstract class CopyWith$Query$GetAllYards$yards<TRes> {
  factory CopyWith$Query$GetAllYards$yards(
    Query$GetAllYards$yards instance,
    TRes Function(Query$GetAllYards$yards) then,
  ) = _CopyWithImpl$Query$GetAllYards$yards;

  factory CopyWith$Query$GetAllYards$yards.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllYards$yards;

  TRes call({
    int? totalCount,
    Query$GetAllYards$yards$pageInfo? pageInfo,
    List<Query$GetAllYards$yards$edges>? edges,
    String? $__typename,
  });
  CopyWith$Query$GetAllYards$yards$pageInfo<TRes> get pageInfo;
  TRes edges(
    Iterable<Query$GetAllYards$yards$edges>? Function(
      Iterable<
        CopyWith$Query$GetAllYards$yards$edges<Query$GetAllYards$yards$edges>
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAllYards$yards<TRes>
    implements CopyWith$Query$GetAllYards$yards<TRes> {
  _CopyWithImpl$Query$GetAllYards$yards(this._instance, this._then);

  final Query$GetAllYards$yards _instance;

  final TRes Function(Query$GetAllYards$yards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllYards$yards(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$GetAllYards$yards$pageInfo),
      edges: edges == _undefined
          ? _instance.edges
          : (edges as List<Query$GetAllYards$yards$edges>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAllYards$yards$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetAllYards$yards$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes edges(
    Iterable<Query$GetAllYards$yards$edges>? Function(
      Iterable<
        CopyWith$Query$GetAllYards$yards$edges<Query$GetAllYards$yards$edges>
      >?,
    )
    _fn,
  ) => call(
    edges: _fn(
      _instance.edges?.map(
        (e) => CopyWith$Query$GetAllYards$yards$edges(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetAllYards$yards<TRes>
    implements CopyWith$Query$GetAllYards$yards<TRes> {
  _CopyWithStubImpl$Query$GetAllYards$yards(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$GetAllYards$yards$pageInfo? pageInfo,
    List<Query$GetAllYards$yards$edges>? edges,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAllYards$yards$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetAllYards$yards$pageInfo.stub(_res);

  edges(_fn) => _res;
}

class Query$GetAllYards$yards$pageInfo {
  Query$GetAllYards$yards$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetAllYards$yards$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetAllYards$yards$pageInfo(
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
    if (other is! Query$GetAllYards$yards$pageInfo ||
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

extension UtilityExtension$Query$GetAllYards$yards$pageInfo
    on Query$GetAllYards$yards$pageInfo {
  CopyWith$Query$GetAllYards$yards$pageInfo<Query$GetAllYards$yards$pageInfo>
  get copyWith => CopyWith$Query$GetAllYards$yards$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$GetAllYards$yards$pageInfo<TRes> {
  factory CopyWith$Query$GetAllYards$yards$pageInfo(
    Query$GetAllYards$yards$pageInfo instance,
    TRes Function(Query$GetAllYards$yards$pageInfo) then,
  ) = _CopyWithImpl$Query$GetAllYards$yards$pageInfo;

  factory CopyWith$Query$GetAllYards$yards$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllYards$yards$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllYards$yards$pageInfo<TRes>
    implements CopyWith$Query$GetAllYards$yards$pageInfo<TRes> {
  _CopyWithImpl$Query$GetAllYards$yards$pageInfo(this._instance, this._then);

  final Query$GetAllYards$yards$pageInfo _instance;

  final TRes Function(Query$GetAllYards$yards$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllYards$yards$pageInfo(
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

class _CopyWithStubImpl$Query$GetAllYards$yards$pageInfo<TRes>
    implements CopyWith$Query$GetAllYards$yards$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetAllYards$yards$pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  }) => _res;
}

class Query$GetAllYards$yards$edges {
  Query$GetAllYards$yards$edges({
    required this.node,
    this.$__typename = 'YardsEdge',
  });

  factory Query$GetAllYards$yards$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$GetAllYards$yards$edges(
      node: Fragment$YardFragment.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$YardFragment node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllYards$yards$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$GetAllYards$yards$edges
    on Query$GetAllYards$yards$edges {
  CopyWith$Query$GetAllYards$yards$edges<Query$GetAllYards$yards$edges>
  get copyWith => CopyWith$Query$GetAllYards$yards$edges(this, (i) => i);
}

abstract class CopyWith$Query$GetAllYards$yards$edges<TRes> {
  factory CopyWith$Query$GetAllYards$yards$edges(
    Query$GetAllYards$yards$edges instance,
    TRes Function(Query$GetAllYards$yards$edges) then,
  ) = _CopyWithImpl$Query$GetAllYards$yards$edges;

  factory CopyWith$Query$GetAllYards$yards$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllYards$yards$edges;

  TRes call({Fragment$YardFragment? node, String? $__typename});
  CopyWith$Fragment$YardFragment<TRes> get node;
}

class _CopyWithImpl$Query$GetAllYards$yards$edges<TRes>
    implements CopyWith$Query$GetAllYards$yards$edges<TRes> {
  _CopyWithImpl$Query$GetAllYards$yards$edges(this._instance, this._then);

  final Query$GetAllYards$yards$edges _instance;

  final TRes Function(Query$GetAllYards$yards$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? node = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetAllYards$yards$edges(
          node: node == _undefined || node == null
              ? _instance.node
              : (node as Fragment$YardFragment),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Fragment$YardFragment<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$YardFragment(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$GetAllYards$yards$edges<TRes>
    implements CopyWith$Query$GetAllYards$yards$edges<TRes> {
  _CopyWithStubImpl$Query$GetAllYards$yards$edges(this._res);

  TRes _res;

  call({Fragment$YardFragment? node, String? $__typename}) => _res;

  CopyWith$Fragment$YardFragment<TRes> get node =>
      CopyWith$Fragment$YardFragment.stub(_res);
}
