import 'package:gql/ast.dart';

class Variables$Query$GetAccessControllers {
  factory Variables$Query$GetAccessControllers({
    String? after,
    String? before,
    int? first,
    int? last,
    String? siteId,
  }) => Variables$Query$GetAccessControllers._({
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (siteId != null) r'siteId': siteId,
  });

  Variables$Query$GetAccessControllers._(this._$data);

  factory Variables$Query$GetAccessControllers.fromJson(
    Map<String, dynamic> data,
  ) {
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
    if (data.containsKey('siteId')) {
      final l$siteId = data['siteId'];
      result$data['siteId'] = (l$siteId as String?);
    }
    return Variables$Query$GetAccessControllers._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get siteId => (_$data['siteId'] as String?);

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
    if (_$data.containsKey('siteId')) {
      final l$siteId = siteId;
      result$data['siteId'] = l$siteId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetAccessControllers<
    Variables$Query$GetAccessControllers
  >
  get copyWith => CopyWith$Variables$Query$GetAccessControllers(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAccessControllers ||
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
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (_$data.containsKey('siteId') != other._$data.containsKey('siteId')) {
      return false;
    }
    if (l$siteId != lOther$siteId) {
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
    final l$siteId = siteId;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('siteId') ? l$siteId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetAccessControllers<TRes> {
  factory CopyWith$Variables$Query$GetAccessControllers(
    Variables$Query$GetAccessControllers instance,
    TRes Function(Variables$Query$GetAccessControllers) then,
  ) = _CopyWithImpl$Variables$Query$GetAccessControllers;

  factory CopyWith$Variables$Query$GetAccessControllers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAccessControllers;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    String? siteId,
  });
}

class _CopyWithImpl$Variables$Query$GetAccessControllers<TRes>
    implements CopyWith$Variables$Query$GetAccessControllers<TRes> {
  _CopyWithImpl$Variables$Query$GetAccessControllers(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAccessControllers _instance;

  final TRes Function(Variables$Query$GetAccessControllers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? siteId = _undefined,
  }) => _then(
    Variables$Query$GetAccessControllers._({
      ..._instance._$data,
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (siteId != _undefined) 'siteId': (siteId as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAccessControllers<TRes>
    implements CopyWith$Variables$Query$GetAccessControllers<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAccessControllers(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    String? siteId,
  }) => _res;
}

class Query$GetAccessControllers {
  Query$GetAccessControllers({
    this.accessControllers,
    this.$__typename = 'Query',
  });

  factory Query$GetAccessControllers.fromJson(Map<String, dynamic> json) {
    final l$accessControllers = json['accessControllers'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessControllers(
      accessControllers: l$accessControllers == null
          ? null
          : Query$GetAccessControllers$accessControllers.fromJson(
              (l$accessControllers as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccessControllers$accessControllers? accessControllers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accessControllers = accessControllers;
    _resultData['accessControllers'] = l$accessControllers?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accessControllers = accessControllers;
    final l$$__typename = $__typename;
    return Object.hashAll([l$accessControllers, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccessControllers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessControllers = accessControllers;
    final lOther$accessControllers = other.accessControllers;
    if (l$accessControllers != lOther$accessControllers) {
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

extension UtilityExtension$Query$GetAccessControllers
    on Query$GetAccessControllers {
  CopyWith$Query$GetAccessControllers<Query$GetAccessControllers>
  get copyWith => CopyWith$Query$GetAccessControllers(this, (i) => i);
}

abstract class CopyWith$Query$GetAccessControllers<TRes> {
  factory CopyWith$Query$GetAccessControllers(
    Query$GetAccessControllers instance,
    TRes Function(Query$GetAccessControllers) then,
  ) = _CopyWithImpl$Query$GetAccessControllers;

  factory CopyWith$Query$GetAccessControllers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccessControllers;

  TRes call({
    Query$GetAccessControllers$accessControllers? accessControllers,
    String? $__typename,
  });
  CopyWith$Query$GetAccessControllers$accessControllers<TRes>
  get accessControllers;
}

class _CopyWithImpl$Query$GetAccessControllers<TRes>
    implements CopyWith$Query$GetAccessControllers<TRes> {
  _CopyWithImpl$Query$GetAccessControllers(this._instance, this._then);

  final Query$GetAccessControllers _instance;

  final TRes Function(Query$GetAccessControllers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessControllers = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessControllers(
      accessControllers: accessControllers == _undefined
          ? _instance.accessControllers
          : (accessControllers
                as Query$GetAccessControllers$accessControllers?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccessControllers$accessControllers<TRes>
  get accessControllers {
    final local$accessControllers = _instance.accessControllers;
    return local$accessControllers == null
        ? CopyWith$Query$GetAccessControllers$accessControllers.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccessControllers$accessControllers(
            local$accessControllers,
            (e) => call(accessControllers: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetAccessControllers<TRes>
    implements CopyWith$Query$GetAccessControllers<TRes> {
  _CopyWithStubImpl$Query$GetAccessControllers(this._res);

  TRes _res;

  call({
    Query$GetAccessControllers$accessControllers? accessControllers,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccessControllers$accessControllers<TRes>
  get accessControllers =>
      CopyWith$Query$GetAccessControllers$accessControllers.stub(_res);
}

const documentNodeQueryGetAccessControllers = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAccessControllers'),
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
          variable: VariableNode(name: NameNode(value: 'siteId')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
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
            name: NameNode(value: 'accessControllers'),
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
                name: NameNode(value: 'siteId'),
                value: VariableNode(name: NameNode(value: 'siteId')),
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
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'site'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'location'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'latitude'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'longitude'),
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
                        name: NameNode(value: 'uri'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'username'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'schedules'),
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
                        name: NameNode(value: 'accessPoints'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'name'),
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
                              name: NameNode(value: 'externalId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'entity'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'restricted'),
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
                        name: NameNode(value: 'active'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'externalId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'externalName'),
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

class Query$GetAccessControllers$accessControllers {
  Query$GetAccessControllers$accessControllers({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'AccessControllersConnection',
  });

  factory Query$GetAccessControllers$accessControllers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessControllers$accessControllers(
      totalCount: (l$totalCount as int),
      pageInfo: Query$GetAccessControllers$accessControllers$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$GetAccessControllers$accessControllers$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$GetAccessControllers$accessControllers$pageInfo pageInfo;

  final List<Query$GetAccessControllers$accessControllers$nodes>? nodes;

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
    if (other is! Query$GetAccessControllers$accessControllers ||
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

extension UtilityExtension$Query$GetAccessControllers$accessControllers
    on Query$GetAccessControllers$accessControllers {
  CopyWith$Query$GetAccessControllers$accessControllers<
    Query$GetAccessControllers$accessControllers
  >
  get copyWith =>
      CopyWith$Query$GetAccessControllers$accessControllers(this, (i) => i);
}

abstract class CopyWith$Query$GetAccessControllers$accessControllers<TRes> {
  factory CopyWith$Query$GetAccessControllers$accessControllers(
    Query$GetAccessControllers$accessControllers instance,
    TRes Function(Query$GetAccessControllers$accessControllers) then,
  ) = _CopyWithImpl$Query$GetAccessControllers$accessControllers;

  factory CopyWith$Query$GetAccessControllers$accessControllers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccessControllers$accessControllers;

  TRes call({
    int? totalCount,
    Query$GetAccessControllers$accessControllers$pageInfo? pageInfo,
    List<Query$GetAccessControllers$accessControllers$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetAccessControllers$accessControllers$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$GetAccessControllers$accessControllers$nodes>? Function(
      Iterable<
        CopyWith$Query$GetAccessControllers$accessControllers$nodes<
          Query$GetAccessControllers$accessControllers$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAccessControllers$accessControllers<TRes>
    implements CopyWith$Query$GetAccessControllers$accessControllers<TRes> {
  _CopyWithImpl$Query$GetAccessControllers$accessControllers(
    this._instance,
    this._then,
  );

  final Query$GetAccessControllers$accessControllers _instance;

  final TRes Function(Query$GetAccessControllers$accessControllers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessControllers$accessControllers(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$GetAccessControllers$accessControllers$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<Query$GetAccessControllers$accessControllers$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccessControllers$accessControllers$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetAccessControllers$accessControllers$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$GetAccessControllers$accessControllers$nodes>? Function(
      Iterable<
        CopyWith$Query$GetAccessControllers$accessControllers$nodes<
          Query$GetAccessControllers$accessControllers$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$GetAccessControllers$accessControllers$nodes(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetAccessControllers$accessControllers<TRes>
    implements CopyWith$Query$GetAccessControllers$accessControllers<TRes> {
  _CopyWithStubImpl$Query$GetAccessControllers$accessControllers(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$GetAccessControllers$accessControllers$pageInfo? pageInfo,
    List<Query$GetAccessControllers$accessControllers$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccessControllers$accessControllers$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$GetAccessControllers$accessControllers$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$GetAccessControllers$accessControllers$pageInfo {
  Query$GetAccessControllers$accessControllers$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetAccessControllers$accessControllers$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessControllers$accessControllers$pageInfo(
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
    if (other is! Query$GetAccessControllers$accessControllers$pageInfo ||
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

extension UtilityExtension$Query$GetAccessControllers$accessControllers$pageInfo
    on Query$GetAccessControllers$accessControllers$pageInfo {
  CopyWith$Query$GetAccessControllers$accessControllers$pageInfo<
    Query$GetAccessControllers$accessControllers$pageInfo
  >
  get copyWith =>
      CopyWith$Query$GetAccessControllers$accessControllers$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccessControllers$accessControllers$pageInfo<
  TRes
> {
  factory CopyWith$Query$GetAccessControllers$accessControllers$pageInfo(
    Query$GetAccessControllers$accessControllers$pageInfo instance,
    TRes Function(Query$GetAccessControllers$accessControllers$pageInfo) then,
  ) = _CopyWithImpl$Query$GetAccessControllers$accessControllers$pageInfo;

  factory CopyWith$Query$GetAccessControllers$accessControllers$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccessControllers$accessControllers$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccessControllers$accessControllers$pageInfo<TRes>
    implements
        CopyWith$Query$GetAccessControllers$accessControllers$pageInfo<TRes> {
  _CopyWithImpl$Query$GetAccessControllers$accessControllers$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetAccessControllers$accessControllers$pageInfo _instance;

  final TRes Function(Query$GetAccessControllers$accessControllers$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessControllers$accessControllers$pageInfo(
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

class _CopyWithStubImpl$Query$GetAccessControllers$accessControllers$pageInfo<
  TRes
>
    implements
        CopyWith$Query$GetAccessControllers$accessControllers$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetAccessControllers$accessControllers$pageInfo(
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

class Query$GetAccessControllers$accessControllers$nodes {
  Query$GetAccessControllers$accessControllers$nodes({
    required this.id,
    required this.name,
    required this.site,
    required this.location,
    required this.uri,
    required this.username,
    this.schedules,
    this.accessPoints,
    required this.active,
    required this.externalId,
    required this.externalName,
    this.$__typename = 'AccessController',
  });

  factory Query$GetAccessControllers$accessControllers$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$site = json['site'];
    final l$location = json['location'];
    final l$uri = json['uri'];
    final l$username = json['username'];
    final l$schedules = json['schedules'];
    final l$accessPoints = json['accessPoints'];
    final l$active = json['active'];
    final l$externalId = json['externalId'];
    final l$externalName = json['externalName'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessControllers$accessControllers$nodes(
      id: (l$id as String),
      name: (l$name as String),
      site: (l$site as String),
      location:
          Query$GetAccessControllers$accessControllers$nodes$location.fromJson(
            (l$location as Map<String, dynamic>),
          ),
      uri: (l$uri as String),
      username: (l$username as String),
      schedules: (l$schedules as List<dynamic>?)
          ?.map(
            (e) =>
                Query$GetAccessControllers$accessControllers$nodes$schedules.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      accessPoints: (l$accessPoints as List<dynamic>?)
          ?.map(
            (e) =>
                Query$GetAccessControllers$accessControllers$nodes$accessPoints.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      active: (l$active as bool),
      externalId: (l$externalId as String),
      externalName: (l$externalName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String site;

  final Query$GetAccessControllers$accessControllers$nodes$location location;

  final String uri;

  final String username;

  final List<Query$GetAccessControllers$accessControllers$nodes$schedules>?
  schedules;

  final List<Query$GetAccessControllers$accessControllers$nodes$accessPoints>?
  accessPoints;

  final bool active;

  final String externalId;

  final String externalName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$site = site;
    _resultData['site'] = l$site;
    final l$location = location;
    _resultData['location'] = l$location.toJson();
    final l$uri = uri;
    _resultData['uri'] = l$uri;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$schedules = schedules;
    _resultData['schedules'] = l$schedules?.map((e) => e.toJson()).toList();
    final l$accessPoints = accessPoints;
    _resultData['accessPoints'] = l$accessPoints
        ?.map((e) => e.toJson())
        .toList();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
    final l$externalName = externalName;
    _resultData['externalName'] = l$externalName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$site = site;
    final l$location = location;
    final l$uri = uri;
    final l$username = username;
    final l$schedules = schedules;
    final l$accessPoints = accessPoints;
    final l$active = active;
    final l$externalId = externalId;
    final l$externalName = externalName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$site,
      l$location,
      l$uri,
      l$username,
      l$schedules == null ? null : Object.hashAll(l$schedules.map((v) => v)),
      l$accessPoints == null
          ? null
          : Object.hashAll(l$accessPoints.map((v) => v)),
      l$active,
      l$externalId,
      l$externalName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccessControllers$accessControllers$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (l$site != lOther$site) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$uri = uri;
    final lOther$uri = other.uri;
    if (l$uri != lOther$uri) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$schedules = schedules;
    final lOther$schedules = other.schedules;
    if (l$schedules != null && lOther$schedules != null) {
      if (l$schedules.length != lOther$schedules.length) {
        return false;
      }
      for (int i = 0; i < l$schedules.length; i++) {
        final l$schedules$entry = l$schedules[i];
        final lOther$schedules$entry = lOther$schedules[i];
        if (l$schedules$entry != lOther$schedules$entry) {
          return false;
        }
      }
    } else if (l$schedules != lOther$schedules) {
      return false;
    }
    final l$accessPoints = accessPoints;
    final lOther$accessPoints = other.accessPoints;
    if (l$accessPoints != null && lOther$accessPoints != null) {
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
    } else if (l$accessPoints != lOther$accessPoints) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$externalName = externalName;
    final lOther$externalName = other.externalName;
    if (l$externalName != lOther$externalName) {
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

extension UtilityExtension$Query$GetAccessControllers$accessControllers$nodes
    on Query$GetAccessControllers$accessControllers$nodes {
  CopyWith$Query$GetAccessControllers$accessControllers$nodes<
    Query$GetAccessControllers$accessControllers$nodes
  >
  get copyWith => CopyWith$Query$GetAccessControllers$accessControllers$nodes(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetAccessControllers$accessControllers$nodes<
  TRes
> {
  factory CopyWith$Query$GetAccessControllers$accessControllers$nodes(
    Query$GetAccessControllers$accessControllers$nodes instance,
    TRes Function(Query$GetAccessControllers$accessControllers$nodes) then,
  ) = _CopyWithImpl$Query$GetAccessControllers$accessControllers$nodes;

  factory CopyWith$Query$GetAccessControllers$accessControllers$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccessControllers$accessControllers$nodes;

  TRes call({
    String? id,
    String? name,
    String? site,
    Query$GetAccessControllers$accessControllers$nodes$location? location,
    String? uri,
    String? username,
    List<Query$GetAccessControllers$accessControllers$nodes$schedules>?
    schedules,
    List<Query$GetAccessControllers$accessControllers$nodes$accessPoints>?
    accessPoints,
    bool? active,
    String? externalId,
    String? externalName,
    String? $__typename,
  });
  CopyWith$Query$GetAccessControllers$accessControllers$nodes$location<TRes>
  get location;
  TRes schedules(
    Iterable<Query$GetAccessControllers$accessControllers$nodes$schedules>?
    Function(
      Iterable<
        CopyWith$Query$GetAccessControllers$accessControllers$nodes$schedules<
          Query$GetAccessControllers$accessControllers$nodes$schedules
        >
      >?,
    )
    _fn,
  );
  TRes accessPoints(
    Iterable<Query$GetAccessControllers$accessControllers$nodes$accessPoints>?
    Function(
      Iterable<
        CopyWith$Query$GetAccessControllers$accessControllers$nodes$accessPoints<
          Query$GetAccessControllers$accessControllers$nodes$accessPoints
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAccessControllers$accessControllers$nodes<TRes>
    implements
        CopyWith$Query$GetAccessControllers$accessControllers$nodes<TRes> {
  _CopyWithImpl$Query$GetAccessControllers$accessControllers$nodes(
    this._instance,
    this._then,
  );

  final Query$GetAccessControllers$accessControllers$nodes _instance;

  final TRes Function(Query$GetAccessControllers$accessControllers$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? site = _undefined,
    Object? location = _undefined,
    Object? uri = _undefined,
    Object? username = _undefined,
    Object? schedules = _undefined,
    Object? accessPoints = _undefined,
    Object? active = _undefined,
    Object? externalId = _undefined,
    Object? externalName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessControllers$accessControllers$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      site: site == _undefined || site == null
          ? _instance.site
          : (site as String),
      location: location == _undefined || location == null
          ? _instance.location
          : (location
                as Query$GetAccessControllers$accessControllers$nodes$location),
      uri: uri == _undefined || uri == null ? _instance.uri : (uri as String),
      username: username == _undefined || username == null
          ? _instance.username
          : (username as String),
      schedules: schedules == _undefined
          ? _instance.schedules
          : (schedules
                as List<
                  Query$GetAccessControllers$accessControllers$nodes$schedules
                >?),
      accessPoints: accessPoints == _undefined
          ? _instance.accessPoints
          : (accessPoints
                as List<
                  Query$GetAccessControllers$accessControllers$nodes$accessPoints
                >?),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      externalId: externalId == _undefined || externalId == null
          ? _instance.externalId
          : (externalId as String),
      externalName: externalName == _undefined || externalName == null
          ? _instance.externalName
          : (externalName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccessControllers$accessControllers$nodes$location<TRes>
  get location {
    final local$location = _instance.location;
    return CopyWith$Query$GetAccessControllers$accessControllers$nodes$location(
      local$location,
      (e) => call(location: e),
    );
  }

  TRes schedules(
    Iterable<Query$GetAccessControllers$accessControllers$nodes$schedules>?
    Function(
      Iterable<
        CopyWith$Query$GetAccessControllers$accessControllers$nodes$schedules<
          Query$GetAccessControllers$accessControllers$nodes$schedules
        >
      >?,
    )
    _fn,
  ) => call(
    schedules: _fn(
      _instance.schedules?.map(
        (e) =>
            CopyWith$Query$GetAccessControllers$accessControllers$nodes$schedules(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );

  TRes accessPoints(
    Iterable<Query$GetAccessControllers$accessControllers$nodes$accessPoints>?
    Function(
      Iterable<
        CopyWith$Query$GetAccessControllers$accessControllers$nodes$accessPoints<
          Query$GetAccessControllers$accessControllers$nodes$accessPoints
        >
      >?,
    )
    _fn,
  ) => call(
    accessPoints: _fn(
      _instance.accessPoints?.map(
        (e) =>
            CopyWith$Query$GetAccessControllers$accessControllers$nodes$accessPoints(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetAccessControllers$accessControllers$nodes<TRes>
    implements
        CopyWith$Query$GetAccessControllers$accessControllers$nodes<TRes> {
  _CopyWithStubImpl$Query$GetAccessControllers$accessControllers$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? name,
    String? site,
    Query$GetAccessControllers$accessControllers$nodes$location? location,
    String? uri,
    String? username,
    List<Query$GetAccessControllers$accessControllers$nodes$schedules>?
    schedules,
    List<Query$GetAccessControllers$accessControllers$nodes$accessPoints>?
    accessPoints,
    bool? active,
    String? externalId,
    String? externalName,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccessControllers$accessControllers$nodes$location<TRes>
  get location =>
      CopyWith$Query$GetAccessControllers$accessControllers$nodes$location.stub(
        _res,
      );

  schedules(_fn) => _res;

  accessPoints(_fn) => _res;
}

class Query$GetAccessControllers$accessControllers$nodes$location {
  Query$GetAccessControllers$accessControllers$nodes$location({
    required this.latitude,
    required this.longitude,
    this.$__typename = 'LatLong',
  });

  factory Query$GetAccessControllers$accessControllers$nodes$location.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$latitude = json['latitude'];
    final l$longitude = json['longitude'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessControllers$accessControllers$nodes$location(
      latitude: (l$latitude as num).toDouble(),
      longitude: (l$longitude as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double latitude;

  final double longitude;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$latitude = latitude;
    _resultData['latitude'] = l$latitude;
    final l$longitude = longitude;
    _resultData['longitude'] = l$longitude;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$latitude = latitude;
    final l$longitude = longitude;
    final l$$__typename = $__typename;
    return Object.hashAll([l$latitude, l$longitude, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccessControllers$accessControllers$nodes$location ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
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

extension UtilityExtension$Query$GetAccessControllers$accessControllers$nodes$location
    on Query$GetAccessControllers$accessControllers$nodes$location {
  CopyWith$Query$GetAccessControllers$accessControllers$nodes$location<
    Query$GetAccessControllers$accessControllers$nodes$location
  >
  get copyWith =>
      CopyWith$Query$GetAccessControllers$accessControllers$nodes$location(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccessControllers$accessControllers$nodes$location<
  TRes
> {
  factory CopyWith$Query$GetAccessControllers$accessControllers$nodes$location(
    Query$GetAccessControllers$accessControllers$nodes$location instance,
    TRes Function(Query$GetAccessControllers$accessControllers$nodes$location)
    then,
  ) = _CopyWithImpl$Query$GetAccessControllers$accessControllers$nodes$location;

  factory CopyWith$Query$GetAccessControllers$accessControllers$nodes$location.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccessControllers$accessControllers$nodes$location;

  TRes call({double? latitude, double? longitude, String? $__typename});
}

class _CopyWithImpl$Query$GetAccessControllers$accessControllers$nodes$location<
  TRes
>
    implements
        CopyWith$Query$GetAccessControllers$accessControllers$nodes$location<
          TRes
        > {
  _CopyWithImpl$Query$GetAccessControllers$accessControllers$nodes$location(
    this._instance,
    this._then,
  );

  final Query$GetAccessControllers$accessControllers$nodes$location _instance;

  final TRes Function(
    Query$GetAccessControllers$accessControllers$nodes$location,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessControllers$accessControllers$nodes$location(
      latitude: latitude == _undefined || latitude == null
          ? _instance.latitude
          : (latitude as double),
      longitude: longitude == _undefined || longitude == null
          ? _instance.longitude
          : (longitude as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccessControllers$accessControllers$nodes$location<
  TRes
>
    implements
        CopyWith$Query$GetAccessControllers$accessControllers$nodes$location<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccessControllers$accessControllers$nodes$location(
    this._res,
  );

  TRes _res;

  call({double? latitude, double? longitude, String? $__typename}) => _res;
}

class Query$GetAccessControllers$accessControllers$nodes$schedules {
  Query$GetAccessControllers$accessControllers$nodes$schedules({
    required this.token,
    required this.name,
    required this.description,
    this.$__typename = 'Schedule',
  });

  factory Query$GetAccessControllers$accessControllers$nodes$schedules.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$token = json['token'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessControllers$accessControllers$nodes$schedules(
      token: (l$token as String),
      name: (l$name as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String token;

  final String name;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$token = token;
    _resultData['token'] = l$token;
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
    final l$token = token;
    final l$name = name;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$token, l$name, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccessControllers$accessControllers$nodes$schedules ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAccessControllers$accessControllers$nodes$schedules
    on Query$GetAccessControllers$accessControllers$nodes$schedules {
  CopyWith$Query$GetAccessControllers$accessControllers$nodes$schedules<
    Query$GetAccessControllers$accessControllers$nodes$schedules
  >
  get copyWith =>
      CopyWith$Query$GetAccessControllers$accessControllers$nodes$schedules(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccessControllers$accessControllers$nodes$schedules<
  TRes
> {
  factory CopyWith$Query$GetAccessControllers$accessControllers$nodes$schedules(
    Query$GetAccessControllers$accessControllers$nodes$schedules instance,
    TRes Function(Query$GetAccessControllers$accessControllers$nodes$schedules)
    then,
  ) = _CopyWithImpl$Query$GetAccessControllers$accessControllers$nodes$schedules;

  factory CopyWith$Query$GetAccessControllers$accessControllers$nodes$schedules.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccessControllers$accessControllers$nodes$schedules;

  TRes call({
    String? token,
    String? name,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccessControllers$accessControllers$nodes$schedules<
  TRes
>
    implements
        CopyWith$Query$GetAccessControllers$accessControllers$nodes$schedules<
          TRes
        > {
  _CopyWithImpl$Query$GetAccessControllers$accessControllers$nodes$schedules(
    this._instance,
    this._then,
  );

  final Query$GetAccessControllers$accessControllers$nodes$schedules _instance;

  final TRes Function(
    Query$GetAccessControllers$accessControllers$nodes$schedules,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessControllers$accessControllers$nodes$schedules(
      token: token == _undefined || token == null
          ? _instance.token
          : (token as String),
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

class _CopyWithStubImpl$Query$GetAccessControllers$accessControllers$nodes$schedules<
  TRes
>
    implements
        CopyWith$Query$GetAccessControllers$accessControllers$nodes$schedules<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccessControllers$accessControllers$nodes$schedules(
    this._res,
  );

  TRes _res;

  call({
    String? token,
    String? name,
    String? description,
    String? $__typename,
  }) => _res;
}

class Query$GetAccessControllers$accessControllers$nodes$accessPoints {
  Query$GetAccessControllers$accessControllers$nodes$accessPoints({
    required this.name,
    required this.id,
    required this.externalId,
    required this.entity,
    required this.restricted,
    this.$__typename = 'AccessPoint',
  });

  factory Query$GetAccessControllers$accessControllers$nodes$accessPoints.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$externalId = json['externalId'];
    final l$entity = json['entity'];
    final l$restricted = json['restricted'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessControllers$accessControllers$nodes$accessPoints(
      name: (l$name as String),
      id: (l$id as String),
      externalId: (l$externalId as String),
      entity: (l$entity as String),
      restricted: (l$restricted as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String id;

  final String externalId;

  final String entity;

  final bool restricted;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
    final l$entity = entity;
    _resultData['entity'] = l$entity;
    final l$restricted = restricted;
    _resultData['restricted'] = l$restricted;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$externalId = externalId;
    final l$entity = entity;
    final l$restricted = restricted;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$id,
      l$externalId,
      l$entity,
      l$restricted,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccessControllers$accessControllers$nodes$accessPoints ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$entity = entity;
    final lOther$entity = other.entity;
    if (l$entity != lOther$entity) {
      return false;
    }
    final l$restricted = restricted;
    final lOther$restricted = other.restricted;
    if (l$restricted != lOther$restricted) {
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

extension UtilityExtension$Query$GetAccessControllers$accessControllers$nodes$accessPoints
    on Query$GetAccessControllers$accessControllers$nodes$accessPoints {
  CopyWith$Query$GetAccessControllers$accessControllers$nodes$accessPoints<
    Query$GetAccessControllers$accessControllers$nodes$accessPoints
  >
  get copyWith =>
      CopyWith$Query$GetAccessControllers$accessControllers$nodes$accessPoints(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccessControllers$accessControllers$nodes$accessPoints<
  TRes
> {
  factory CopyWith$Query$GetAccessControllers$accessControllers$nodes$accessPoints(
    Query$GetAccessControllers$accessControllers$nodes$accessPoints instance,
    TRes Function(
      Query$GetAccessControllers$accessControllers$nodes$accessPoints,
    )
    then,
  ) = _CopyWithImpl$Query$GetAccessControllers$accessControllers$nodes$accessPoints;

  factory CopyWith$Query$GetAccessControllers$accessControllers$nodes$accessPoints.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccessControllers$accessControllers$nodes$accessPoints;

  TRes call({
    String? name,
    String? id,
    String? externalId,
    String? entity,
    bool? restricted,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccessControllers$accessControllers$nodes$accessPoints<
  TRes
>
    implements
        CopyWith$Query$GetAccessControllers$accessControllers$nodes$accessPoints<
          TRes
        > {
  _CopyWithImpl$Query$GetAccessControllers$accessControllers$nodes$accessPoints(
    this._instance,
    this._then,
  );

  final Query$GetAccessControllers$accessControllers$nodes$accessPoints
  _instance;

  final TRes Function(
    Query$GetAccessControllers$accessControllers$nodes$accessPoints,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? externalId = _undefined,
    Object? entity = _undefined,
    Object? restricted = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessControllers$accessControllers$nodes$accessPoints(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      externalId: externalId == _undefined || externalId == null
          ? _instance.externalId
          : (externalId as String),
      entity: entity == _undefined || entity == null
          ? _instance.entity
          : (entity as String),
      restricted: restricted == _undefined || restricted == null
          ? _instance.restricted
          : (restricted as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccessControllers$accessControllers$nodes$accessPoints<
  TRes
>
    implements
        CopyWith$Query$GetAccessControllers$accessControllers$nodes$accessPoints<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccessControllers$accessControllers$nodes$accessPoints(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    String? id,
    String? externalId,
    String? entity,
    bool? restricted,
    String? $__typename,
  }) => _res;
}
