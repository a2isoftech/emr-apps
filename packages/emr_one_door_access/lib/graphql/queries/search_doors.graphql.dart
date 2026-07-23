import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchDoors {
  factory Variables$Query$SearchDoors({
    String? after,
    String? before,
    int? first,
    int? last,
    required Input$SearchDoorInput input,
  }) => Variables$Query$SearchDoors._({
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    r'input': input,
  });

  Variables$Query$SearchDoors._(this._$data);

  factory Variables$Query$SearchDoors.fromJson(Map<String, dynamic> data) {
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
    result$data['input'] = Input$SearchDoorInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$SearchDoors._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  Input$SearchDoorInput get input => (_$data['input'] as Input$SearchDoorInput);

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
    return result$data;
  }

  CopyWith$Variables$Query$SearchDoors<Variables$Query$SearchDoors>
  get copyWith => CopyWith$Variables$Query$SearchDoors(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchDoors ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$after = after;
    final l$before = before;
    final l$first = first;
    final l$last = last;
    final l$input = input;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      l$input,
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchDoors<TRes> {
  factory CopyWith$Variables$Query$SearchDoors(
    Variables$Query$SearchDoors instance,
    TRes Function(Variables$Query$SearchDoors) then,
  ) = _CopyWithImpl$Variables$Query$SearchDoors;

  factory CopyWith$Variables$Query$SearchDoors.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchDoors;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchDoorInput? input,
  });
}

class _CopyWithImpl$Variables$Query$SearchDoors<TRes>
    implements CopyWith$Variables$Query$SearchDoors<TRes> {
  _CopyWithImpl$Variables$Query$SearchDoors(this._instance, this._then);

  final Variables$Query$SearchDoors _instance;

  final TRes Function(Variables$Query$SearchDoors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? input = _undefined,
  }) => _then(
    Variables$Query$SearchDoors._({
      ..._instance._$data,
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (input != _undefined && input != null)
        'input': (input as Input$SearchDoorInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchDoors<TRes>
    implements CopyWith$Variables$Query$SearchDoors<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchDoors(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchDoorInput? input,
  }) => _res;
}

class Query$SearchDoors {
  Query$SearchDoors({this.searchDoors, this.$__typename = 'Query'});

  factory Query$SearchDoors.fromJson(Map<String, dynamic> json) {
    final l$searchDoors = json['searchDoors'];
    final l$$__typename = json['__typename'];
    return Query$SearchDoors(
      searchDoors: l$searchDoors == null
          ? null
          : Query$SearchDoors$searchDoors.fromJson(
              (l$searchDoors as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchDoors$searchDoors? searchDoors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchDoors = searchDoors;
    _resultData['searchDoors'] = l$searchDoors?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchDoors = searchDoors;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchDoors, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchDoors || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchDoors = searchDoors;
    final lOther$searchDoors = other.searchDoors;
    if (l$searchDoors != lOther$searchDoors) {
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

extension UtilityExtension$Query$SearchDoors on Query$SearchDoors {
  CopyWith$Query$SearchDoors<Query$SearchDoors> get copyWith =>
      CopyWith$Query$SearchDoors(this, (i) => i);
}

abstract class CopyWith$Query$SearchDoors<TRes> {
  factory CopyWith$Query$SearchDoors(
    Query$SearchDoors instance,
    TRes Function(Query$SearchDoors) then,
  ) = _CopyWithImpl$Query$SearchDoors;

  factory CopyWith$Query$SearchDoors.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchDoors;

  TRes call({Query$SearchDoors$searchDoors? searchDoors, String? $__typename});
  CopyWith$Query$SearchDoors$searchDoors<TRes> get searchDoors;
}

class _CopyWithImpl$Query$SearchDoors<TRes>
    implements CopyWith$Query$SearchDoors<TRes> {
  _CopyWithImpl$Query$SearchDoors(this._instance, this._then);

  final Query$SearchDoors _instance;

  final TRes Function(Query$SearchDoors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchDoors = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchDoors(
      searchDoors: searchDoors == _undefined
          ? _instance.searchDoors
          : (searchDoors as Query$SearchDoors$searchDoors?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchDoors$searchDoors<TRes> get searchDoors {
    final local$searchDoors = _instance.searchDoors;
    return local$searchDoors == null
        ? CopyWith$Query$SearchDoors$searchDoors.stub(_then(_instance))
        : CopyWith$Query$SearchDoors$searchDoors(
            local$searchDoors,
            (e) => call(searchDoors: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchDoors<TRes>
    implements CopyWith$Query$SearchDoors<TRes> {
  _CopyWithStubImpl$Query$SearchDoors(this._res);

  TRes _res;

  call({Query$SearchDoors$searchDoors? searchDoors, String? $__typename}) =>
      _res;

  CopyWith$Query$SearchDoors$searchDoors<TRes> get searchDoors =>
      CopyWith$Query$SearchDoors$searchDoors.stub(_res);
}

const documentNodeQuerySearchDoors = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchDoors'),
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
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchDoorInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'searchDoors'),
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
                        name: NameNode(value: 'accessControllerId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'scheduleConfigName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'accessControllerName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'siteId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'siteName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'doorExternalId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'doorName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'priorityConfigId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'priorityConfigName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'defaultPriority'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'scheduleConfigId'),
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

class Query$SearchDoors$searchDoors {
  Query$SearchDoors$searchDoors({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchDoorsConnection',
  });

  factory Query$SearchDoors$searchDoors.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchDoors$searchDoors(
      totalCount: (l$totalCount as int),
      pageInfo: Query$SearchDoors$searchDoors$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$SearchDoors$searchDoors$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SearchDoors$searchDoors$pageInfo pageInfo;

  final List<Query$SearchDoors$searchDoors$nodes>? nodes;

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
    if (other is! Query$SearchDoors$searchDoors ||
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

extension UtilityExtension$Query$SearchDoors$searchDoors
    on Query$SearchDoors$searchDoors {
  CopyWith$Query$SearchDoors$searchDoors<Query$SearchDoors$searchDoors>
  get copyWith => CopyWith$Query$SearchDoors$searchDoors(this, (i) => i);
}

abstract class CopyWith$Query$SearchDoors$searchDoors<TRes> {
  factory CopyWith$Query$SearchDoors$searchDoors(
    Query$SearchDoors$searchDoors instance,
    TRes Function(Query$SearchDoors$searchDoors) then,
  ) = _CopyWithImpl$Query$SearchDoors$searchDoors;

  factory CopyWith$Query$SearchDoors$searchDoors.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchDoors$searchDoors;

  TRes call({
    int? totalCount,
    Query$SearchDoors$searchDoors$pageInfo? pageInfo,
    List<Query$SearchDoors$searchDoors$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchDoors$searchDoors$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$SearchDoors$searchDoors$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchDoors$searchDoors$nodes<
          Query$SearchDoors$searchDoors$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchDoors$searchDoors<TRes>
    implements CopyWith$Query$SearchDoors$searchDoors<TRes> {
  _CopyWithImpl$Query$SearchDoors$searchDoors(this._instance, this._then);

  final Query$SearchDoors$searchDoors _instance;

  final TRes Function(Query$SearchDoors$searchDoors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchDoors$searchDoors(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$SearchDoors$searchDoors$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$SearchDoors$searchDoors$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchDoors$searchDoors$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchDoors$searchDoors$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$SearchDoors$searchDoors$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchDoors$searchDoors$nodes<
          Query$SearchDoors$searchDoors$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$SearchDoors$searchDoors$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchDoors$searchDoors<TRes>
    implements CopyWith$Query$SearchDoors$searchDoors<TRes> {
  _CopyWithStubImpl$Query$SearchDoors$searchDoors(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$SearchDoors$searchDoors$pageInfo? pageInfo,
    List<Query$SearchDoors$searchDoors$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchDoors$searchDoors$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$SearchDoors$searchDoors$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$SearchDoors$searchDoors$pageInfo {
  Query$SearchDoors$searchDoors$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchDoors$searchDoors$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchDoors$searchDoors$pageInfo(
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
    if (other is! Query$SearchDoors$searchDoors$pageInfo ||
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

extension UtilityExtension$Query$SearchDoors$searchDoors$pageInfo
    on Query$SearchDoors$searchDoors$pageInfo {
  CopyWith$Query$SearchDoors$searchDoors$pageInfo<
    Query$SearchDoors$searchDoors$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SearchDoors$searchDoors$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$SearchDoors$searchDoors$pageInfo<TRes> {
  factory CopyWith$Query$SearchDoors$searchDoors$pageInfo(
    Query$SearchDoors$searchDoors$pageInfo instance,
    TRes Function(Query$SearchDoors$searchDoors$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchDoors$searchDoors$pageInfo;

  factory CopyWith$Query$SearchDoors$searchDoors$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchDoors$searchDoors$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchDoors$searchDoors$pageInfo<TRes>
    implements CopyWith$Query$SearchDoors$searchDoors$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchDoors$searchDoors$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchDoors$searchDoors$pageInfo _instance;

  final TRes Function(Query$SearchDoors$searchDoors$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchDoors$searchDoors$pageInfo(
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

class _CopyWithStubImpl$Query$SearchDoors$searchDoors$pageInfo<TRes>
    implements CopyWith$Query$SearchDoors$searchDoors$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchDoors$searchDoors$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}

class Query$SearchDoors$searchDoors$nodes {
  Query$SearchDoors$searchDoors$nodes({
    required this.accessControllerId,
    this.scheduleConfigName,
    required this.accessControllerName,
    this.siteId,
    this.siteName,
    required this.doorExternalId,
    required this.doorName,
    this.priorityConfigId,
    this.priorityConfigName,
    this.defaultPriority,
    this.scheduleConfigId,
    this.$__typename = 'DoorSearchIndexResult',
  });

  factory Query$SearchDoors$searchDoors$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accessControllerId = json['accessControllerId'];
    final l$scheduleConfigName = json['scheduleConfigName'];
    final l$accessControllerName = json['accessControllerName'];
    final l$siteId = json['siteId'];
    final l$siteName = json['siteName'];
    final l$doorExternalId = json['doorExternalId'];
    final l$doorName = json['doorName'];
    final l$priorityConfigId = json['priorityConfigId'];
    final l$priorityConfigName = json['priorityConfigName'];
    final l$defaultPriority = json['defaultPriority'];
    final l$scheduleConfigId = json['scheduleConfigId'];
    final l$$__typename = json['__typename'];
    return Query$SearchDoors$searchDoors$nodes(
      accessControllerId: (l$accessControllerId as String),
      scheduleConfigName: (l$scheduleConfigName as String?),
      accessControllerName: (l$accessControllerName as String),
      siteId: (l$siteId as String?),
      siteName: (l$siteName as String?),
      doorExternalId: (l$doorExternalId as String),
      doorName: (l$doorName as String),
      priorityConfigId: (l$priorityConfigId as String?),
      priorityConfigName: (l$priorityConfigName as String?),
      defaultPriority: (l$defaultPriority as String?),
      scheduleConfigId: (l$scheduleConfigId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String accessControllerId;

  final String? scheduleConfigName;

  final String accessControllerName;

  final String? siteId;

  final String? siteName;

  final String doorExternalId;

  final String doorName;

  final String? priorityConfigId;

  final String? priorityConfigName;

  final String? defaultPriority;

  final String? scheduleConfigId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accessControllerId = accessControllerId;
    _resultData['accessControllerId'] = l$accessControllerId;
    final l$scheduleConfigName = scheduleConfigName;
    _resultData['scheduleConfigName'] = l$scheduleConfigName;
    final l$accessControllerName = accessControllerName;
    _resultData['accessControllerName'] = l$accessControllerName;
    final l$siteId = siteId;
    _resultData['siteId'] = l$siteId;
    final l$siteName = siteName;
    _resultData['siteName'] = l$siteName;
    final l$doorExternalId = doorExternalId;
    _resultData['doorExternalId'] = l$doorExternalId;
    final l$doorName = doorName;
    _resultData['doorName'] = l$doorName;
    final l$priorityConfigId = priorityConfigId;
    _resultData['priorityConfigId'] = l$priorityConfigId;
    final l$priorityConfigName = priorityConfigName;
    _resultData['priorityConfigName'] = l$priorityConfigName;
    final l$defaultPriority = defaultPriority;
    _resultData['defaultPriority'] = l$defaultPriority;
    final l$scheduleConfigId = scheduleConfigId;
    _resultData['scheduleConfigId'] = l$scheduleConfigId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accessControllerId = accessControllerId;
    final l$scheduleConfigName = scheduleConfigName;
    final l$accessControllerName = accessControllerName;
    final l$siteId = siteId;
    final l$siteName = siteName;
    final l$doorExternalId = doorExternalId;
    final l$doorName = doorName;
    final l$priorityConfigId = priorityConfigId;
    final l$priorityConfigName = priorityConfigName;
    final l$defaultPriority = defaultPriority;
    final l$scheduleConfigId = scheduleConfigId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accessControllerId,
      l$scheduleConfigName,
      l$accessControllerName,
      l$siteId,
      l$siteName,
      l$doorExternalId,
      l$doorName,
      l$priorityConfigId,
      l$priorityConfigName,
      l$defaultPriority,
      l$scheduleConfigId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchDoors$searchDoors$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$scheduleConfigName = scheduleConfigName;
    final lOther$scheduleConfigName = other.scheduleConfigName;
    if (l$scheduleConfigName != lOther$scheduleConfigName) {
      return false;
    }
    final l$accessControllerName = accessControllerName;
    final lOther$accessControllerName = other.accessControllerName;
    if (l$accessControllerName != lOther$accessControllerName) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (l$siteId != lOther$siteId) {
      return false;
    }
    final l$siteName = siteName;
    final lOther$siteName = other.siteName;
    if (l$siteName != lOther$siteName) {
      return false;
    }
    final l$doorExternalId = doorExternalId;
    final lOther$doorExternalId = other.doorExternalId;
    if (l$doorExternalId != lOther$doorExternalId) {
      return false;
    }
    final l$doorName = doorName;
    final lOther$doorName = other.doorName;
    if (l$doorName != lOther$doorName) {
      return false;
    }
    final l$priorityConfigId = priorityConfigId;
    final lOther$priorityConfigId = other.priorityConfigId;
    if (l$priorityConfigId != lOther$priorityConfigId) {
      return false;
    }
    final l$priorityConfigName = priorityConfigName;
    final lOther$priorityConfigName = other.priorityConfigName;
    if (l$priorityConfigName != lOther$priorityConfigName) {
      return false;
    }
    final l$defaultPriority = defaultPriority;
    final lOther$defaultPriority = other.defaultPriority;
    if (l$defaultPriority != lOther$defaultPriority) {
      return false;
    }
    final l$scheduleConfigId = scheduleConfigId;
    final lOther$scheduleConfigId = other.scheduleConfigId;
    if (l$scheduleConfigId != lOther$scheduleConfigId) {
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

extension UtilityExtension$Query$SearchDoors$searchDoors$nodes
    on Query$SearchDoors$searchDoors$nodes {
  CopyWith$Query$SearchDoors$searchDoors$nodes<
    Query$SearchDoors$searchDoors$nodes
  >
  get copyWith => CopyWith$Query$SearchDoors$searchDoors$nodes(this, (i) => i);
}

abstract class CopyWith$Query$SearchDoors$searchDoors$nodes<TRes> {
  factory CopyWith$Query$SearchDoors$searchDoors$nodes(
    Query$SearchDoors$searchDoors$nodes instance,
    TRes Function(Query$SearchDoors$searchDoors$nodes) then,
  ) = _CopyWithImpl$Query$SearchDoors$searchDoors$nodes;

  factory CopyWith$Query$SearchDoors$searchDoors$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchDoors$searchDoors$nodes;

  TRes call({
    String? accessControllerId,
    String? scheduleConfigName,
    String? accessControllerName,
    String? siteId,
    String? siteName,
    String? doorExternalId,
    String? doorName,
    String? priorityConfigId,
    String? priorityConfigName,
    String? defaultPriority,
    String? scheduleConfigId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchDoors$searchDoors$nodes<TRes>
    implements CopyWith$Query$SearchDoors$searchDoors$nodes<TRes> {
  _CopyWithImpl$Query$SearchDoors$searchDoors$nodes(this._instance, this._then);

  final Query$SearchDoors$searchDoors$nodes _instance;

  final TRes Function(Query$SearchDoors$searchDoors$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessControllerId = _undefined,
    Object? scheduleConfigName = _undefined,
    Object? accessControllerName = _undefined,
    Object? siteId = _undefined,
    Object? siteName = _undefined,
    Object? doorExternalId = _undefined,
    Object? doorName = _undefined,
    Object? priorityConfigId = _undefined,
    Object? priorityConfigName = _undefined,
    Object? defaultPriority = _undefined,
    Object? scheduleConfigId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchDoors$searchDoors$nodes(
      accessControllerId:
          accessControllerId == _undefined || accessControllerId == null
          ? _instance.accessControllerId
          : (accessControllerId as String),
      scheduleConfigName: scheduleConfigName == _undefined
          ? _instance.scheduleConfigName
          : (scheduleConfigName as String?),
      accessControllerName:
          accessControllerName == _undefined || accessControllerName == null
          ? _instance.accessControllerName
          : (accessControllerName as String),
      siteId: siteId == _undefined ? _instance.siteId : (siteId as String?),
      siteName: siteName == _undefined
          ? _instance.siteName
          : (siteName as String?),
      doorExternalId: doorExternalId == _undefined || doorExternalId == null
          ? _instance.doorExternalId
          : (doorExternalId as String),
      doorName: doorName == _undefined || doorName == null
          ? _instance.doorName
          : (doorName as String),
      priorityConfigId: priorityConfigId == _undefined
          ? _instance.priorityConfigId
          : (priorityConfigId as String?),
      priorityConfigName: priorityConfigName == _undefined
          ? _instance.priorityConfigName
          : (priorityConfigName as String?),
      defaultPriority: defaultPriority == _undefined
          ? _instance.defaultPriority
          : (defaultPriority as String?),
      scheduleConfigId: scheduleConfigId == _undefined
          ? _instance.scheduleConfigId
          : (scheduleConfigId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchDoors$searchDoors$nodes<TRes>
    implements CopyWith$Query$SearchDoors$searchDoors$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchDoors$searchDoors$nodes(this._res);

  TRes _res;

  call({
    String? accessControllerId,
    String? scheduleConfigName,
    String? accessControllerName,
    String? siteId,
    String? siteName,
    String? doorExternalId,
    String? doorName,
    String? priorityConfigId,
    String? priorityConfigName,
    String? defaultPriority,
    String? scheduleConfigId,
    String? $__typename,
  }) => _res;
}
