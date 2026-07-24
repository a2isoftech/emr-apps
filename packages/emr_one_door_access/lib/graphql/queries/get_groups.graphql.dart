import 'package:gql/ast.dart';

class Variables$Query$GetGroups {
  factory Variables$Query$GetGroups({
    String? after,
    String? before,
    int? first,
    int? last,
    List<String>? groupIds,
  }) => Variables$Query$GetGroups._({
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (groupIds != null) r'groupIds': groupIds,
  });

  Variables$Query$GetGroups._(this._$data);

  factory Variables$Query$GetGroups.fromJson(Map<String, dynamic> data) {
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
    if (data.containsKey('groupIds')) {
      final l$groupIds = data['groupIds'];
      result$data['groupIds'] = (l$groupIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Variables$Query$GetGroups._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  List<String>? get groupIds => (_$data['groupIds'] as List<String>?);

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
    if (_$data.containsKey('groupIds')) {
      final l$groupIds = groupIds;
      result$data['groupIds'] = l$groupIds?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetGroups<Variables$Query$GetGroups> get copyWith =>
      CopyWith$Variables$Query$GetGroups(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetGroups ||
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
    final l$groupIds = groupIds;
    final lOther$groupIds = other.groupIds;
    if (_$data.containsKey('groupIds') !=
        other._$data.containsKey('groupIds')) {
      return false;
    }
    if (l$groupIds != null && lOther$groupIds != null) {
      if (l$groupIds.length != lOther$groupIds.length) {
        return false;
      }
      for (int i = 0; i < l$groupIds.length; i++) {
        final l$groupIds$entry = l$groupIds[i];
        final lOther$groupIds$entry = lOther$groupIds[i];
        if (l$groupIds$entry != lOther$groupIds$entry) {
          return false;
        }
      }
    } else if (l$groupIds != lOther$groupIds) {
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
    final l$groupIds = groupIds;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('groupIds')
          ? l$groupIds == null
                ? null
                : Object.hashAll(l$groupIds.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetGroups<TRes> {
  factory CopyWith$Variables$Query$GetGroups(
    Variables$Query$GetGroups instance,
    TRes Function(Variables$Query$GetGroups) then,
  ) = _CopyWithImpl$Variables$Query$GetGroups;

  factory CopyWith$Variables$Query$GetGroups.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetGroups;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    List<String>? groupIds,
  });
}

class _CopyWithImpl$Variables$Query$GetGroups<TRes>
    implements CopyWith$Variables$Query$GetGroups<TRes> {
  _CopyWithImpl$Variables$Query$GetGroups(this._instance, this._then);

  final Variables$Query$GetGroups _instance;

  final TRes Function(Variables$Query$GetGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? groupIds = _undefined,
  }) => _then(
    Variables$Query$GetGroups._({
      ..._instance._$data,
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (groupIds != _undefined) 'groupIds': (groupIds as List<String>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetGroups<TRes>
    implements CopyWith$Variables$Query$GetGroups<TRes> {
  _CopyWithStubImpl$Variables$Query$GetGroups(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    List<String>? groupIds,
  }) => _res;
}

class Query$GetGroups {
  Query$GetGroups({this.groups, this.$__typename = 'Query'});

  factory Query$GetGroups.fromJson(Map<String, dynamic> json) {
    final l$groups = json['groups'];
    final l$$__typename = json['__typename'];
    return Query$GetGroups(
      groups: l$groups == null
          ? null
          : Query$GetGroups$groups.fromJson((l$groups as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetGroups$groups? groups;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groups = groups;
    _resultData['groups'] = l$groups?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groups = groups;
    final l$$__typename = $__typename;
    return Object.hashAll([l$groups, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetGroups || runtimeType != other.runtimeType) {
      return false;
    }
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (l$groups != lOther$groups) {
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

extension UtilityExtension$Query$GetGroups on Query$GetGroups {
  CopyWith$Query$GetGroups<Query$GetGroups> get copyWith =>
      CopyWith$Query$GetGroups(this, (i) => i);
}

abstract class CopyWith$Query$GetGroups<TRes> {
  factory CopyWith$Query$GetGroups(
    Query$GetGroups instance,
    TRes Function(Query$GetGroups) then,
  ) = _CopyWithImpl$Query$GetGroups;

  factory CopyWith$Query$GetGroups.stub(TRes res) =
      _CopyWithStubImpl$Query$GetGroups;

  TRes call({Query$GetGroups$groups? groups, String? $__typename});
  CopyWith$Query$GetGroups$groups<TRes> get groups;
}

class _CopyWithImpl$Query$GetGroups<TRes>
    implements CopyWith$Query$GetGroups<TRes> {
  _CopyWithImpl$Query$GetGroups(this._instance, this._then);

  final Query$GetGroups _instance;

  final TRes Function(Query$GetGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? groups = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetGroups(
          groups: groups == _undefined
              ? _instance.groups
              : (groups as Query$GetGroups$groups?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetGroups$groups<TRes> get groups {
    final local$groups = _instance.groups;
    return local$groups == null
        ? CopyWith$Query$GetGroups$groups.stub(_then(_instance))
        : CopyWith$Query$GetGroups$groups(local$groups, (e) => call(groups: e));
  }
}

class _CopyWithStubImpl$Query$GetGroups<TRes>
    implements CopyWith$Query$GetGroups<TRes> {
  _CopyWithStubImpl$Query$GetGroups(this._res);

  TRes _res;

  call({Query$GetGroups$groups? groups, String? $__typename}) => _res;

  CopyWith$Query$GetGroups$groups<TRes> get groups =>
      CopyWith$Query$GetGroups$groups.stub(_res);
}

const documentNodeQueryGetGroups = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetGroups'),
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
          variable: VariableNode(name: NameNode(value: 'groupIds')),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'groups'),
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
                name: NameNode(value: 'groupIds'),
                value: VariableNode(name: NameNode(value: 'groupIds')),
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
                        name: NameNode(value: 'azureId'),
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
                        name: NameNode(value: 'users'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'accessPoints'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
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
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'externalId'),
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
                                    name: NameNode(value: 'description'),
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
                        name: NameNode(value: 'lastUpdatedFromAzureAdOn'),
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
                        name: NameNode(value: 'createdOn'),
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

class Query$GetGroups$groups {
  Query$GetGroups$groups({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'GroupsConnection',
  });

  factory Query$GetGroups$groups.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetGroups$groups(
      totalCount: (l$totalCount as int),
      pageInfo: Query$GetGroups$groups$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$GetGroups$groups$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$GetGroups$groups$pageInfo pageInfo;

  final List<Query$GetGroups$groups$nodes>? nodes;

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
    if (other is! Query$GetGroups$groups || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetGroups$groups on Query$GetGroups$groups {
  CopyWith$Query$GetGroups$groups<Query$GetGroups$groups> get copyWith =>
      CopyWith$Query$GetGroups$groups(this, (i) => i);
}

abstract class CopyWith$Query$GetGroups$groups<TRes> {
  factory CopyWith$Query$GetGroups$groups(
    Query$GetGroups$groups instance,
    TRes Function(Query$GetGroups$groups) then,
  ) = _CopyWithImpl$Query$GetGroups$groups;

  factory CopyWith$Query$GetGroups$groups.stub(TRes res) =
      _CopyWithStubImpl$Query$GetGroups$groups;

  TRes call({
    int? totalCount,
    Query$GetGroups$groups$pageInfo? pageInfo,
    List<Query$GetGroups$groups$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetGroups$groups$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$GetGroups$groups$nodes>? Function(
      Iterable<
        CopyWith$Query$GetGroups$groups$nodes<Query$GetGroups$groups$nodes>
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetGroups$groups<TRes>
    implements CopyWith$Query$GetGroups$groups<TRes> {
  _CopyWithImpl$Query$GetGroups$groups(this._instance, this._then);

  final Query$GetGroups$groups _instance;

  final TRes Function(Query$GetGroups$groups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetGroups$groups(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$GetGroups$groups$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$GetGroups$groups$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetGroups$groups$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetGroups$groups$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$GetGroups$groups$nodes>? Function(
      Iterable<
        CopyWith$Query$GetGroups$groups$nodes<Query$GetGroups$groups$nodes>
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$GetGroups$groups$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetGroups$groups<TRes>
    implements CopyWith$Query$GetGroups$groups<TRes> {
  _CopyWithStubImpl$Query$GetGroups$groups(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$GetGroups$groups$pageInfo? pageInfo,
    List<Query$GetGroups$groups$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetGroups$groups$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetGroups$groups$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$GetGroups$groups$pageInfo {
  Query$GetGroups$groups$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetGroups$groups$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetGroups$groups$pageInfo(
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
    if (other is! Query$GetGroups$groups$pageInfo ||
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

extension UtilityExtension$Query$GetGroups$groups$pageInfo
    on Query$GetGroups$groups$pageInfo {
  CopyWith$Query$GetGroups$groups$pageInfo<Query$GetGroups$groups$pageInfo>
  get copyWith => CopyWith$Query$GetGroups$groups$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$GetGroups$groups$pageInfo<TRes> {
  factory CopyWith$Query$GetGroups$groups$pageInfo(
    Query$GetGroups$groups$pageInfo instance,
    TRes Function(Query$GetGroups$groups$pageInfo) then,
  ) = _CopyWithImpl$Query$GetGroups$groups$pageInfo;

  factory CopyWith$Query$GetGroups$groups$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetGroups$groups$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetGroups$groups$pageInfo<TRes>
    implements CopyWith$Query$GetGroups$groups$pageInfo<TRes> {
  _CopyWithImpl$Query$GetGroups$groups$pageInfo(this._instance, this._then);

  final Query$GetGroups$groups$pageInfo _instance;

  final TRes Function(Query$GetGroups$groups$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetGroups$groups$pageInfo(
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

class _CopyWithStubImpl$Query$GetGroups$groups$pageInfo<TRes>
    implements CopyWith$Query$GetGroups$groups$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetGroups$groups$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}

class Query$GetGroups$groups$nodes {
  Query$GetGroups$groups$nodes({
    this.azureId,
    required this.name,
    required this.users,
    required this.accessPoints,
    this.lastUpdatedFromAzureAdOn,
    required this.id,
    required this.createdOn,
    this.$__typename = 'Group',
  });

  factory Query$GetGroups$groups$nodes.fromJson(Map<String, dynamic> json) {
    final l$azureId = json['azureId'];
    final l$name = json['name'];
    final l$users = json['users'];
    final l$accessPoints = json['accessPoints'];
    final l$lastUpdatedFromAzureAdOn = json['lastUpdatedFromAzureAdOn'];
    final l$id = json['id'];
    final l$createdOn = json['createdOn'];
    final l$$__typename = json['__typename'];
    return Query$GetGroups$groups$nodes(
      azureId: (l$azureId as String?),
      name: (l$name as String),
      users: (l$users as List<dynamic>).map((e) => (e as String)).toList(),
      accessPoints: (l$accessPoints as List<dynamic>)
          .map(
            (e) => Query$GetGroups$groups$nodes$accessPoints.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      lastUpdatedFromAzureAdOn: l$lastUpdatedFromAzureAdOn == null
          ? null
          : DateTime.parse((l$lastUpdatedFromAzureAdOn as String)),
      id: (l$id as String),
      createdOn: DateTime.parse((l$createdOn as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? azureId;

  final String name;

  final List<String> users;

  final List<Query$GetGroups$groups$nodes$accessPoints> accessPoints;

  final DateTime? lastUpdatedFromAzureAdOn;

  final String id;

  final DateTime createdOn;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$azureId = azureId;
    _resultData['azureId'] = l$azureId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$users = users;
    _resultData['users'] = l$users.map((e) => e).toList();
    final l$accessPoints = accessPoints;
    _resultData['accessPoints'] = l$accessPoints
        .map((e) => e.toJson())
        .toList();
    final l$lastUpdatedFromAzureAdOn = lastUpdatedFromAzureAdOn;
    _resultData['lastUpdatedFromAzureAdOn'] = l$lastUpdatedFromAzureAdOn
        ?.toIso8601String();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$createdOn = createdOn;
    _resultData['createdOn'] = l$createdOn.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$azureId = azureId;
    final l$name = name;
    final l$users = users;
    final l$accessPoints = accessPoints;
    final l$lastUpdatedFromAzureAdOn = lastUpdatedFromAzureAdOn;
    final l$id = id;
    final l$createdOn = createdOn;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$azureId,
      l$name,
      Object.hashAll(l$users.map((v) => v)),
      Object.hashAll(l$accessPoints.map((v) => v)),
      l$lastUpdatedFromAzureAdOn,
      l$id,
      l$createdOn,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetGroups$groups$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$azureId = azureId;
    final lOther$azureId = other.azureId;
    if (l$azureId != lOther$azureId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$users = users;
    final lOther$users = other.users;
    if (l$users.length != lOther$users.length) {
      return false;
    }
    for (int i = 0; i < l$users.length; i++) {
      final l$users$entry = l$users[i];
      final lOther$users$entry = lOther$users[i];
      if (l$users$entry != lOther$users$entry) {
        return false;
      }
    }
    final l$accessPoints = accessPoints;
    final lOther$accessPoints = other.accessPoints;
    if (l$accessPoints.length != lOther$accessPoints.length) {
      return false;
    }
    for (int i = 0; i < l$accessPoints.length; i++) {
      final l$accessPoints$entry = l$accessPoints[i];
      final lOther$accessPoints$entry = lOther$accessPoints[i];
      if (l$accessPoints$entry != lOther$accessPoints$entry) {
        return false;
      }
    }
    final l$lastUpdatedFromAzureAdOn = lastUpdatedFromAzureAdOn;
    final lOther$lastUpdatedFromAzureAdOn = other.lastUpdatedFromAzureAdOn;
    if (l$lastUpdatedFromAzureAdOn != lOther$lastUpdatedFromAzureAdOn) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (l$createdOn != lOther$createdOn) {
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

extension UtilityExtension$Query$GetGroups$groups$nodes
    on Query$GetGroups$groups$nodes {
  CopyWith$Query$GetGroups$groups$nodes<Query$GetGroups$groups$nodes>
  get copyWith => CopyWith$Query$GetGroups$groups$nodes(this, (i) => i);
}

abstract class CopyWith$Query$GetGroups$groups$nodes<TRes> {
  factory CopyWith$Query$GetGroups$groups$nodes(
    Query$GetGroups$groups$nodes instance,
    TRes Function(Query$GetGroups$groups$nodes) then,
  ) = _CopyWithImpl$Query$GetGroups$groups$nodes;

  factory CopyWith$Query$GetGroups$groups$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetGroups$groups$nodes;

  TRes call({
    String? azureId,
    String? name,
    List<String>? users,
    List<Query$GetGroups$groups$nodes$accessPoints>? accessPoints,
    DateTime? lastUpdatedFromAzureAdOn,
    String? id,
    DateTime? createdOn,
    String? $__typename,
  });
  TRes accessPoints(
    Iterable<Query$GetGroups$groups$nodes$accessPoints> Function(
      Iterable<
        CopyWith$Query$GetGroups$groups$nodes$accessPoints<
          Query$GetGroups$groups$nodes$accessPoints
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetGroups$groups$nodes<TRes>
    implements CopyWith$Query$GetGroups$groups$nodes<TRes> {
  _CopyWithImpl$Query$GetGroups$groups$nodes(this._instance, this._then);

  final Query$GetGroups$groups$nodes _instance;

  final TRes Function(Query$GetGroups$groups$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? azureId = _undefined,
    Object? name = _undefined,
    Object? users = _undefined,
    Object? accessPoints = _undefined,
    Object? lastUpdatedFromAzureAdOn = _undefined,
    Object? id = _undefined,
    Object? createdOn = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetGroups$groups$nodes(
      azureId: azureId == _undefined ? _instance.azureId : (azureId as String?),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      users: users == _undefined || users == null
          ? _instance.users
          : (users as List<String>),
      accessPoints: accessPoints == _undefined || accessPoints == null
          ? _instance.accessPoints
          : (accessPoints as List<Query$GetGroups$groups$nodes$accessPoints>),
      lastUpdatedFromAzureAdOn: lastUpdatedFromAzureAdOn == _undefined
          ? _instance.lastUpdatedFromAzureAdOn
          : (lastUpdatedFromAzureAdOn as DateTime?),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      createdOn: createdOn == _undefined || createdOn == null
          ? _instance.createdOn
          : (createdOn as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes accessPoints(
    Iterable<Query$GetGroups$groups$nodes$accessPoints> Function(
      Iterable<
        CopyWith$Query$GetGroups$groups$nodes$accessPoints<
          Query$GetGroups$groups$nodes$accessPoints
        >
      >,
    )
    _fn,
  ) => call(
    accessPoints: _fn(
      _instance.accessPoints.map(
        (e) => CopyWith$Query$GetGroups$groups$nodes$accessPoints(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetGroups$groups$nodes<TRes>
    implements CopyWith$Query$GetGroups$groups$nodes<TRes> {
  _CopyWithStubImpl$Query$GetGroups$groups$nodes(this._res);

  TRes _res;

  call({
    String? azureId,
    String? name,
    List<String>? users,
    List<Query$GetGroups$groups$nodes$accessPoints>? accessPoints,
    DateTime? lastUpdatedFromAzureAdOn,
    String? id,
    DateTime? createdOn,
    String? $__typename,
  }) => _res;

  accessPoints(_fn) => _res;
}

class Query$GetGroups$groups$nodes$accessPoints {
  Query$GetGroups$groups$nodes$accessPoints({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndAccessProfile',
  });

  factory Query$GetGroups$groups$nodes$accessPoints.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetGroups$groups$nodes$accessPoints(
      key: (l$key as String),
      value: Query$GetGroups$groups$nodes$accessPoints$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$GetGroups$groups$nodes$accessPoints$value value;

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
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetGroups$groups$nodes$accessPoints ||
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

extension UtilityExtension$Query$GetGroups$groups$nodes$accessPoints
    on Query$GetGroups$groups$nodes$accessPoints {
  CopyWith$Query$GetGroups$groups$nodes$accessPoints<
    Query$GetGroups$groups$nodes$accessPoints
  >
  get copyWith =>
      CopyWith$Query$GetGroups$groups$nodes$accessPoints(this, (i) => i);
}

abstract class CopyWith$Query$GetGroups$groups$nodes$accessPoints<TRes> {
  factory CopyWith$Query$GetGroups$groups$nodes$accessPoints(
    Query$GetGroups$groups$nodes$accessPoints instance,
    TRes Function(Query$GetGroups$groups$nodes$accessPoints) then,
  ) = _CopyWithImpl$Query$GetGroups$groups$nodes$accessPoints;

  factory CopyWith$Query$GetGroups$groups$nodes$accessPoints.stub(TRes res) =
      _CopyWithStubImpl$Query$GetGroups$groups$nodes$accessPoints;

  TRes call({
    String? key,
    Query$GetGroups$groups$nodes$accessPoints$value? value,
    String? $__typename,
  });
  CopyWith$Query$GetGroups$groups$nodes$accessPoints$value<TRes> get value;
}

class _CopyWithImpl$Query$GetGroups$groups$nodes$accessPoints<TRes>
    implements CopyWith$Query$GetGroups$groups$nodes$accessPoints<TRes> {
  _CopyWithImpl$Query$GetGroups$groups$nodes$accessPoints(
    this._instance,
    this._then,
  );

  final Query$GetGroups$groups$nodes$accessPoints _instance;

  final TRes Function(Query$GetGroups$groups$nodes$accessPoints) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetGroups$groups$nodes$accessPoints(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Query$GetGroups$groups$nodes$accessPoints$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetGroups$groups$nodes$accessPoints$value<TRes> get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetGroups$groups$nodes$accessPoints$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetGroups$groups$nodes$accessPoints<TRes>
    implements CopyWith$Query$GetGroups$groups$nodes$accessPoints<TRes> {
  _CopyWithStubImpl$Query$GetGroups$groups$nodes$accessPoints(this._res);

  TRes _res;

  call({
    String? key,
    Query$GetGroups$groups$nodes$accessPoints$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetGroups$groups$nodes$accessPoints$value<TRes> get value =>
      CopyWith$Query$GetGroups$groups$nodes$accessPoints$value.stub(_res);
}

class Query$GetGroups$groups$nodes$accessPoints$value {
  Query$GetGroups$groups$nodes$accessPoints$value({
    required this.externalId,
    required this.name,
    required this.description,
    this.$__typename = 'AccessProfile',
  });

  factory Query$GetGroups$groups$nodes$accessPoints$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$externalId = json['externalId'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetGroups$groups$nodes$accessPoints$value(
      externalId: (l$externalId as String),
      name: (l$name as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String externalId;

  final String name;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$externalId = externalId;
    final l$name = name;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$externalId, l$name, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetGroups$groups$nodes$accessPoints$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtension$Query$GetGroups$groups$nodes$accessPoints$value
    on Query$GetGroups$groups$nodes$accessPoints$value {
  CopyWith$Query$GetGroups$groups$nodes$accessPoints$value<
    Query$GetGroups$groups$nodes$accessPoints$value
  >
  get copyWith =>
      CopyWith$Query$GetGroups$groups$nodes$accessPoints$value(this, (i) => i);
}

abstract class CopyWith$Query$GetGroups$groups$nodes$accessPoints$value<TRes> {
  factory CopyWith$Query$GetGroups$groups$nodes$accessPoints$value(
    Query$GetGroups$groups$nodes$accessPoints$value instance,
    TRes Function(Query$GetGroups$groups$nodes$accessPoints$value) then,
  ) = _CopyWithImpl$Query$GetGroups$groups$nodes$accessPoints$value;

  factory CopyWith$Query$GetGroups$groups$nodes$accessPoints$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetGroups$groups$nodes$accessPoints$value;

  TRes call({
    String? externalId,
    String? name,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetGroups$groups$nodes$accessPoints$value<TRes>
    implements CopyWith$Query$GetGroups$groups$nodes$accessPoints$value<TRes> {
  _CopyWithImpl$Query$GetGroups$groups$nodes$accessPoints$value(
    this._instance,
    this._then,
  );

  final Query$GetGroups$groups$nodes$accessPoints$value _instance;

  final TRes Function(Query$GetGroups$groups$nodes$accessPoints$value) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? externalId = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetGroups$groups$nodes$accessPoints$value(
      externalId: externalId == _undefined || externalId == null
          ? _instance.externalId
          : (externalId as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetGroups$groups$nodes$accessPoints$value<TRes>
    implements CopyWith$Query$GetGroups$groups$nodes$accessPoints$value<TRes> {
  _CopyWithStubImpl$Query$GetGroups$groups$nodes$accessPoints$value(this._res);

  TRes _res;

  call({
    String? externalId,
    String? name,
    String? description,
    String? $__typename,
  }) => _res;
}
