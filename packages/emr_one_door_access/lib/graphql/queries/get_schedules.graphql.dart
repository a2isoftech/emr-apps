import 'package:gql/ast.dart';

class Variables$Query$GetSchedules {
  factory Variables$Query$GetSchedules({
    String? after,
    String? before,
    int? first,
    int? last,
    required String accessControllerId,
  }) => Variables$Query$GetSchedules._({
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    r'accessControllerId': accessControllerId,
  });

  Variables$Query$GetSchedules._(this._$data);

  factory Variables$Query$GetSchedules.fromJson(Map<String, dynamic> data) {
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
    final l$accessControllerId = data['accessControllerId'];
    result$data['accessControllerId'] = (l$accessControllerId as String);
    return Variables$Query$GetSchedules._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String get accessControllerId => (_$data['accessControllerId'] as String);

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
    final l$accessControllerId = accessControllerId;
    result$data['accessControllerId'] = l$accessControllerId;
    return result$data;
  }

  CopyWith$Variables$Query$GetSchedules<Variables$Query$GetSchedules>
  get copyWith => CopyWith$Variables$Query$GetSchedules(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetSchedules ||
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
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (l$accessControllerId != lOther$accessControllerId) {
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
    final l$accessControllerId = accessControllerId;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      l$accessControllerId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetSchedules<TRes> {
  factory CopyWith$Variables$Query$GetSchedules(
    Variables$Query$GetSchedules instance,
    TRes Function(Variables$Query$GetSchedules) then,
  ) = _CopyWithImpl$Variables$Query$GetSchedules;

  factory CopyWith$Variables$Query$GetSchedules.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSchedules;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    String? accessControllerId,
  });
}

class _CopyWithImpl$Variables$Query$GetSchedules<TRes>
    implements CopyWith$Variables$Query$GetSchedules<TRes> {
  _CopyWithImpl$Variables$Query$GetSchedules(this._instance, this._then);

  final Variables$Query$GetSchedules _instance;

  final TRes Function(Variables$Query$GetSchedules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? accessControllerId = _undefined,
  }) => _then(
    Variables$Query$GetSchedules._({
      ..._instance._$data,
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (accessControllerId != _undefined && accessControllerId != null)
        'accessControllerId': (accessControllerId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetSchedules<TRes>
    implements CopyWith$Variables$Query$GetSchedules<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSchedules(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    String? accessControllerId,
  }) => _res;
}

class Query$GetSchedules {
  Query$GetSchedules({this.schedules, this.$__typename = 'Query'});

  factory Query$GetSchedules.fromJson(Map<String, dynamic> json) {
    final l$schedules = json['schedules'];
    final l$$__typename = json['__typename'];
    return Query$GetSchedules(
      schedules: l$schedules == null
          ? null
          : Query$GetSchedules$schedules.fromJson(
              (l$schedules as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSchedules$schedules? schedules;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$schedules = schedules;
    _resultData['schedules'] = l$schedules?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$schedules = schedules;
    final l$$__typename = $__typename;
    return Object.hashAll([l$schedules, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetSchedules || runtimeType != other.runtimeType) {
      return false;
    }
    final l$schedules = schedules;
    final lOther$schedules = other.schedules;
    if (l$schedules != lOther$schedules) {
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

extension UtilityExtension$Query$GetSchedules on Query$GetSchedules {
  CopyWith$Query$GetSchedules<Query$GetSchedules> get copyWith =>
      CopyWith$Query$GetSchedules(this, (i) => i);
}

abstract class CopyWith$Query$GetSchedules<TRes> {
  factory CopyWith$Query$GetSchedules(
    Query$GetSchedules instance,
    TRes Function(Query$GetSchedules) then,
  ) = _CopyWithImpl$Query$GetSchedules;

  factory CopyWith$Query$GetSchedules.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSchedules;

  TRes call({Query$GetSchedules$schedules? schedules, String? $__typename});
  CopyWith$Query$GetSchedules$schedules<TRes> get schedules;
}

class _CopyWithImpl$Query$GetSchedules<TRes>
    implements CopyWith$Query$GetSchedules<TRes> {
  _CopyWithImpl$Query$GetSchedules(this._instance, this._then);

  final Query$GetSchedules _instance;

  final TRes Function(Query$GetSchedules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? schedules = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSchedules(
      schedules: schedules == _undefined
          ? _instance.schedules
          : (schedules as Query$GetSchedules$schedules?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSchedules$schedules<TRes> get schedules {
    final local$schedules = _instance.schedules;
    return local$schedules == null
        ? CopyWith$Query$GetSchedules$schedules.stub(_then(_instance))
        : CopyWith$Query$GetSchedules$schedules(
            local$schedules,
            (e) => call(schedules: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetSchedules<TRes>
    implements CopyWith$Query$GetSchedules<TRes> {
  _CopyWithStubImpl$Query$GetSchedules(this._res);

  TRes _res;

  call({Query$GetSchedules$schedules? schedules, String? $__typename}) => _res;

  CopyWith$Query$GetSchedules$schedules<TRes> get schedules =>
      CopyWith$Query$GetSchedules$schedules.stub(_res);
}

const documentNodeQueryGetSchedules = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetSchedules'),
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
          variable: VariableNode(name: NameNode(value: 'accessControllerId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'schedules'),
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
                name: NameNode(value: 'accessControllerId'),
                value: VariableNode(
                  name: NameNode(value: 'accessControllerId'),
                ),
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
                        name: NameNode(value: 'token'),
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
                        name: NameNode(value: 'scheduleDefinition'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'attribute'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'type'),
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
                              name: NameNode(value: 'value'),
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
                        name: NameNode(value: 'exceptionScheduleDefinition'),
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

class Query$GetSchedules$schedules {
  Query$GetSchedules$schedules({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SchedulesConnection',
  });

  factory Query$GetSchedules$schedules.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetSchedules$schedules(
      totalCount: (l$totalCount as int),
      pageInfo: Query$GetSchedules$schedules$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$GetSchedules$schedules$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$GetSchedules$schedules$pageInfo pageInfo;

  final List<Query$GetSchedules$schedules$nodes>? nodes;

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
    if (other is! Query$GetSchedules$schedules ||
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

extension UtilityExtension$Query$GetSchedules$schedules
    on Query$GetSchedules$schedules {
  CopyWith$Query$GetSchedules$schedules<Query$GetSchedules$schedules>
  get copyWith => CopyWith$Query$GetSchedules$schedules(this, (i) => i);
}

abstract class CopyWith$Query$GetSchedules$schedules<TRes> {
  factory CopyWith$Query$GetSchedules$schedules(
    Query$GetSchedules$schedules instance,
    TRes Function(Query$GetSchedules$schedules) then,
  ) = _CopyWithImpl$Query$GetSchedules$schedules;

  factory CopyWith$Query$GetSchedules$schedules.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSchedules$schedules;

  TRes call({
    int? totalCount,
    Query$GetSchedules$schedules$pageInfo? pageInfo,
    List<Query$GetSchedules$schedules$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetSchedules$schedules$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$GetSchedules$schedules$nodes>? Function(
      Iterable<
        CopyWith$Query$GetSchedules$schedules$nodes<
          Query$GetSchedules$schedules$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetSchedules$schedules<TRes>
    implements CopyWith$Query$GetSchedules$schedules<TRes> {
  _CopyWithImpl$Query$GetSchedules$schedules(this._instance, this._then);

  final Query$GetSchedules$schedules _instance;

  final TRes Function(Query$GetSchedules$schedules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSchedules$schedules(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$GetSchedules$schedules$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$GetSchedules$schedules$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSchedules$schedules$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetSchedules$schedules$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$GetSchedules$schedules$nodes>? Function(
      Iterable<
        CopyWith$Query$GetSchedules$schedules$nodes<
          Query$GetSchedules$schedules$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$GetSchedules$schedules$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetSchedules$schedules<TRes>
    implements CopyWith$Query$GetSchedules$schedules<TRes> {
  _CopyWithStubImpl$Query$GetSchedules$schedules(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$GetSchedules$schedules$pageInfo? pageInfo,
    List<Query$GetSchedules$schedules$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSchedules$schedules$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetSchedules$schedules$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$GetSchedules$schedules$pageInfo {
  Query$GetSchedules$schedules$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetSchedules$schedules$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetSchedules$schedules$pageInfo(
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
    if (other is! Query$GetSchedules$schedules$pageInfo ||
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

extension UtilityExtension$Query$GetSchedules$schedules$pageInfo
    on Query$GetSchedules$schedules$pageInfo {
  CopyWith$Query$GetSchedules$schedules$pageInfo<
    Query$GetSchedules$schedules$pageInfo
  >
  get copyWith =>
      CopyWith$Query$GetSchedules$schedules$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$GetSchedules$schedules$pageInfo<TRes> {
  factory CopyWith$Query$GetSchedules$schedules$pageInfo(
    Query$GetSchedules$schedules$pageInfo instance,
    TRes Function(Query$GetSchedules$schedules$pageInfo) then,
  ) = _CopyWithImpl$Query$GetSchedules$schedules$pageInfo;

  factory CopyWith$Query$GetSchedules$schedules$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSchedules$schedules$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSchedules$schedules$pageInfo<TRes>
    implements CopyWith$Query$GetSchedules$schedules$pageInfo<TRes> {
  _CopyWithImpl$Query$GetSchedules$schedules$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetSchedules$schedules$pageInfo _instance;

  final TRes Function(Query$GetSchedules$schedules$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSchedules$schedules$pageInfo(
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

class _CopyWithStubImpl$Query$GetSchedules$schedules$pageInfo<TRes>
    implements CopyWith$Query$GetSchedules$schedules$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetSchedules$schedules$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}

class Query$GetSchedules$schedules$nodes {
  Query$GetSchedules$schedules$nodes({
    required this.token,
    required this.name,
    required this.description,
    required this.scheduleDefinition,
    required this.attribute,
    required this.exceptionScheduleDefinition,
    this.$__typename = 'Schedule',
  });

  factory Query$GetSchedules$schedules$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$token = json['token'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$scheduleDefinition = json['scheduleDefinition'];
    final l$attribute = json['attribute'];
    final l$exceptionScheduleDefinition = json['exceptionScheduleDefinition'];
    final l$$__typename = json['__typename'];
    return Query$GetSchedules$schedules$nodes(
      token: (l$token as String),
      name: (l$name as String),
      description: (l$description as String),
      scheduleDefinition: (l$scheduleDefinition as String),
      attribute: (l$attribute as List<dynamic>)
          .map(
            (e) => Query$GetSchedules$schedules$nodes$attribute.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      exceptionScheduleDefinition: (l$exceptionScheduleDefinition as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String token;

  final String name;

  final String description;

  final String scheduleDefinition;

  final List<Query$GetSchedules$schedules$nodes$attribute> attribute;

  final String exceptionScheduleDefinition;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$token = token;
    _resultData['token'] = l$token;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$scheduleDefinition = scheduleDefinition;
    _resultData['scheduleDefinition'] = l$scheduleDefinition;
    final l$attribute = attribute;
    _resultData['attribute'] = l$attribute.map((e) => e.toJson()).toList();
    final l$exceptionScheduleDefinition = exceptionScheduleDefinition;
    _resultData['exceptionScheduleDefinition'] = l$exceptionScheduleDefinition;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$name = name;
    final l$description = description;
    final l$scheduleDefinition = scheduleDefinition;
    final l$attribute = attribute;
    final l$exceptionScheduleDefinition = exceptionScheduleDefinition;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$token,
      l$name,
      l$description,
      l$scheduleDefinition,
      Object.hashAll(l$attribute.map((v) => v)),
      l$exceptionScheduleDefinition,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetSchedules$schedules$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
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
    final l$scheduleDefinition = scheduleDefinition;
    final lOther$scheduleDefinition = other.scheduleDefinition;
    if (l$scheduleDefinition != lOther$scheduleDefinition) {
      return false;
    }
    final l$attribute = attribute;
    final lOther$attribute = other.attribute;
    if (l$attribute.length != lOther$attribute.length) {
      return false;
    }
    for (int i = 0; i < l$attribute.length; i++) {
      final l$attribute$entry = l$attribute[i];
      final lOther$attribute$entry = lOther$attribute[i];
      if (l$attribute$entry != lOther$attribute$entry) {
        return false;
      }
    }
    final l$exceptionScheduleDefinition = exceptionScheduleDefinition;
    final lOther$exceptionScheduleDefinition =
        other.exceptionScheduleDefinition;
    if (l$exceptionScheduleDefinition != lOther$exceptionScheduleDefinition) {
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

extension UtilityExtension$Query$GetSchedules$schedules$nodes
    on Query$GetSchedules$schedules$nodes {
  CopyWith$Query$GetSchedules$schedules$nodes<
    Query$GetSchedules$schedules$nodes
  >
  get copyWith => CopyWith$Query$GetSchedules$schedules$nodes(this, (i) => i);
}

abstract class CopyWith$Query$GetSchedules$schedules$nodes<TRes> {
  factory CopyWith$Query$GetSchedules$schedules$nodes(
    Query$GetSchedules$schedules$nodes instance,
    TRes Function(Query$GetSchedules$schedules$nodes) then,
  ) = _CopyWithImpl$Query$GetSchedules$schedules$nodes;

  factory CopyWith$Query$GetSchedules$schedules$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSchedules$schedules$nodes;

  TRes call({
    String? token,
    String? name,
    String? description,
    String? scheduleDefinition,
    List<Query$GetSchedules$schedules$nodes$attribute>? attribute,
    String? exceptionScheduleDefinition,
    String? $__typename,
  });
  TRes attribute(
    Iterable<Query$GetSchedules$schedules$nodes$attribute> Function(
      Iterable<
        CopyWith$Query$GetSchedules$schedules$nodes$attribute<
          Query$GetSchedules$schedules$nodes$attribute
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetSchedules$schedules$nodes<TRes>
    implements CopyWith$Query$GetSchedules$schedules$nodes<TRes> {
  _CopyWithImpl$Query$GetSchedules$schedules$nodes(this._instance, this._then);

  final Query$GetSchedules$schedules$nodes _instance;

  final TRes Function(Query$GetSchedules$schedules$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? scheduleDefinition = _undefined,
    Object? attribute = _undefined,
    Object? exceptionScheduleDefinition = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSchedules$schedules$nodes(
      token: token == _undefined || token == null
          ? _instance.token
          : (token as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      scheduleDefinition:
          scheduleDefinition == _undefined || scheduleDefinition == null
          ? _instance.scheduleDefinition
          : (scheduleDefinition as String),
      attribute: attribute == _undefined || attribute == null
          ? _instance.attribute
          : (attribute as List<Query$GetSchedules$schedules$nodes$attribute>),
      exceptionScheduleDefinition:
          exceptionScheduleDefinition == _undefined ||
              exceptionScheduleDefinition == null
          ? _instance.exceptionScheduleDefinition
          : (exceptionScheduleDefinition as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes attribute(
    Iterable<Query$GetSchedules$schedules$nodes$attribute> Function(
      Iterable<
        CopyWith$Query$GetSchedules$schedules$nodes$attribute<
          Query$GetSchedules$schedules$nodes$attribute
        >
      >,
    )
    _fn,
  ) => call(
    attribute: _fn(
      _instance.attribute.map(
        (e) =>
            CopyWith$Query$GetSchedules$schedules$nodes$attribute(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetSchedules$schedules$nodes<TRes>
    implements CopyWith$Query$GetSchedules$schedules$nodes<TRes> {
  _CopyWithStubImpl$Query$GetSchedules$schedules$nodes(this._res);

  TRes _res;

  call({
    String? token,
    String? name,
    String? description,
    String? scheduleDefinition,
    List<Query$GetSchedules$schedules$nodes$attribute>? attribute,
    String? exceptionScheduleDefinition,
    String? $__typename,
  }) => _res;

  attribute(_fn) => _res;
}

class Query$GetSchedules$schedules$nodes$attribute {
  Query$GetSchedules$schedules$nodes$attribute({
    required this.type,
    required this.name,
    required this.value,
    this.$__typename = 'AttributeItem',
  });

  factory Query$GetSchedules$schedules$nodes$attribute.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$type = json['type'];
    final l$name = json['name'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetSchedules$schedules$nodes$attribute(
      type: (l$type as String),
      name: (l$name as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final String name;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$name = name;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$type, l$name, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetSchedules$schedules$nodes$attribute ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetSchedules$schedules$nodes$attribute
    on Query$GetSchedules$schedules$nodes$attribute {
  CopyWith$Query$GetSchedules$schedules$nodes$attribute<
    Query$GetSchedules$schedules$nodes$attribute
  >
  get copyWith =>
      CopyWith$Query$GetSchedules$schedules$nodes$attribute(this, (i) => i);
}

abstract class CopyWith$Query$GetSchedules$schedules$nodes$attribute<TRes> {
  factory CopyWith$Query$GetSchedules$schedules$nodes$attribute(
    Query$GetSchedules$schedules$nodes$attribute instance,
    TRes Function(Query$GetSchedules$schedules$nodes$attribute) then,
  ) = _CopyWithImpl$Query$GetSchedules$schedules$nodes$attribute;

  factory CopyWith$Query$GetSchedules$schedules$nodes$attribute.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSchedules$schedules$nodes$attribute;

  TRes call({String? type, String? name, String? value, String? $__typename});
}

class _CopyWithImpl$Query$GetSchedules$schedules$nodes$attribute<TRes>
    implements CopyWith$Query$GetSchedules$schedules$nodes$attribute<TRes> {
  _CopyWithImpl$Query$GetSchedules$schedules$nodes$attribute(
    this._instance,
    this._then,
  );

  final Query$GetSchedules$schedules$nodes$attribute _instance;

  final TRes Function(Query$GetSchedules$schedules$nodes$attribute) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? name = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSchedules$schedules$nodes$attribute(
      type: type == _undefined || type == null
          ? _instance.type
          : (type as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetSchedules$schedules$nodes$attribute<TRes>
    implements CopyWith$Query$GetSchedules$schedules$nodes$attribute<TRes> {
  _CopyWithStubImpl$Query$GetSchedules$schedules$nodes$attribute(this._res);

  TRes _res;

  call({String? type, String? name, String? value, String? $__typename}) =>
      _res;
}
