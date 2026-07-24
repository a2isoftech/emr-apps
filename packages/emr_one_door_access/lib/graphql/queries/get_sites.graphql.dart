import 'package:gql/ast.dart';

class Variables$Query$GetSites {
  factory Variables$Query$GetSites({
    String? after,
    String? before,
    int? first,
    int? last,
  }) => Variables$Query$GetSites._({
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
  });

  Variables$Query$GetSites._(this._$data);

  factory Variables$Query$GetSites.fromJson(Map<String, dynamic> data) {
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
    return Variables$Query$GetSites._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

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
    return result$data;
  }

  CopyWith$Variables$Query$GetSites<Variables$Query$GetSites> get copyWith =>
      CopyWith$Variables$Query$GetSites(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetSites ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$after = after;
    final l$before = before;
    final l$first = first;
    final l$last = last;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetSites<TRes> {
  factory CopyWith$Variables$Query$GetSites(
    Variables$Query$GetSites instance,
    TRes Function(Variables$Query$GetSites) then,
  ) = _CopyWithImpl$Variables$Query$GetSites;

  factory CopyWith$Variables$Query$GetSites.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSites;

  TRes call({String? after, String? before, int? first, int? last});
}

class _CopyWithImpl$Variables$Query$GetSites<TRes>
    implements CopyWith$Variables$Query$GetSites<TRes> {
  _CopyWithImpl$Variables$Query$GetSites(this._instance, this._then);

  final Variables$Query$GetSites _instance;

  final TRes Function(Variables$Query$GetSites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
  }) => _then(
    Variables$Query$GetSites._({
      ..._instance._$data,
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetSites<TRes>
    implements CopyWith$Variables$Query$GetSites<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSites(this._res);

  TRes _res;

  call({String? after, String? before, int? first, int? last}) => _res;
}

class Query$GetSites {
  Query$GetSites({this.sites, this.$__typename = 'Query'});

  factory Query$GetSites.fromJson(Map<String, dynamic> json) {
    final l$sites = json['sites'];
    final l$$__typename = json['__typename'];
    return Query$GetSites(
      sites: l$sites == null
          ? null
          : Query$GetSites$sites.fromJson((l$sites as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSites$sites? sites;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sites = sites;
    _resultData['sites'] = l$sites?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sites = sites;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sites, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetSites || runtimeType != other.runtimeType) {
      return false;
    }
    final l$sites = sites;
    final lOther$sites = other.sites;
    if (l$sites != lOther$sites) {
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

extension UtilityExtension$Query$GetSites on Query$GetSites {
  CopyWith$Query$GetSites<Query$GetSites> get copyWith =>
      CopyWith$Query$GetSites(this, (i) => i);
}

abstract class CopyWith$Query$GetSites<TRes> {
  factory CopyWith$Query$GetSites(
    Query$GetSites instance,
    TRes Function(Query$GetSites) then,
  ) = _CopyWithImpl$Query$GetSites;

  factory CopyWith$Query$GetSites.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSites;

  TRes call({Query$GetSites$sites? sites, String? $__typename});
  CopyWith$Query$GetSites$sites<TRes> get sites;
}

class _CopyWithImpl$Query$GetSites<TRes>
    implements CopyWith$Query$GetSites<TRes> {
  _CopyWithImpl$Query$GetSites(this._instance, this._then);

  final Query$GetSites _instance;

  final TRes Function(Query$GetSites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sites = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetSites(
          sites: sites == _undefined
              ? _instance.sites
              : (sites as Query$GetSites$sites?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetSites$sites<TRes> get sites {
    final local$sites = _instance.sites;
    return local$sites == null
        ? CopyWith$Query$GetSites$sites.stub(_then(_instance))
        : CopyWith$Query$GetSites$sites(local$sites, (e) => call(sites: e));
  }
}

class _CopyWithStubImpl$Query$GetSites<TRes>
    implements CopyWith$Query$GetSites<TRes> {
  _CopyWithStubImpl$Query$GetSites(this._res);

  TRes _res;

  call({Query$GetSites$sites? sites, String? $__typename}) => _res;

  CopyWith$Query$GetSites$sites<TRes> get sites =>
      CopyWith$Query$GetSites$sites.stub(_res);
}

const documentNodeQueryGetSites = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetSites'),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'sites'),
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
                        name: NameNode(value: 'yardCode'),
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
                        name: NameNode(value: 'createdOn'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'createdBy'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'modifiedOn'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'modifiedBy'),
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
                        name: NameNode(value: 'id'),
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

class Query$GetSites$sites {
  Query$GetSites$sites({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SitesConnection',
  });

  factory Query$GetSites$sites.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetSites$sites(
      totalCount: (l$totalCount as int),
      pageInfo: Query$GetSites$sites$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$GetSites$sites$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$GetSites$sites$pageInfo pageInfo;

  final List<Query$GetSites$sites$nodes>? nodes;

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
    if (other is! Query$GetSites$sites || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetSites$sites on Query$GetSites$sites {
  CopyWith$Query$GetSites$sites<Query$GetSites$sites> get copyWith =>
      CopyWith$Query$GetSites$sites(this, (i) => i);
}

abstract class CopyWith$Query$GetSites$sites<TRes> {
  factory CopyWith$Query$GetSites$sites(
    Query$GetSites$sites instance,
    TRes Function(Query$GetSites$sites) then,
  ) = _CopyWithImpl$Query$GetSites$sites;

  factory CopyWith$Query$GetSites$sites.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSites$sites;

  TRes call({
    int? totalCount,
    Query$GetSites$sites$pageInfo? pageInfo,
    List<Query$GetSites$sites$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetSites$sites$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$GetSites$sites$nodes>? Function(
      Iterable<
        CopyWith$Query$GetSites$sites$nodes<Query$GetSites$sites$nodes>
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetSites$sites<TRes>
    implements CopyWith$Query$GetSites$sites<TRes> {
  _CopyWithImpl$Query$GetSites$sites(this._instance, this._then);

  final Query$GetSites$sites _instance;

  final TRes Function(Query$GetSites$sites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSites$sites(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$GetSites$sites$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$GetSites$sites$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSites$sites$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetSites$sites$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$GetSites$sites$nodes>? Function(
      Iterable<
        CopyWith$Query$GetSites$sites$nodes<Query$GetSites$sites$nodes>
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$GetSites$sites$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetSites$sites<TRes>
    implements CopyWith$Query$GetSites$sites<TRes> {
  _CopyWithStubImpl$Query$GetSites$sites(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$GetSites$sites$pageInfo? pageInfo,
    List<Query$GetSites$sites$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetSites$sites$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetSites$sites$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$GetSites$sites$pageInfo {
  Query$GetSites$sites$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetSites$sites$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetSites$sites$pageInfo(
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
    if (other is! Query$GetSites$sites$pageInfo ||
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

extension UtilityExtension$Query$GetSites$sites$pageInfo
    on Query$GetSites$sites$pageInfo {
  CopyWith$Query$GetSites$sites$pageInfo<Query$GetSites$sites$pageInfo>
  get copyWith => CopyWith$Query$GetSites$sites$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$GetSites$sites$pageInfo<TRes> {
  factory CopyWith$Query$GetSites$sites$pageInfo(
    Query$GetSites$sites$pageInfo instance,
    TRes Function(Query$GetSites$sites$pageInfo) then,
  ) = _CopyWithImpl$Query$GetSites$sites$pageInfo;

  factory CopyWith$Query$GetSites$sites$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSites$sites$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSites$sites$pageInfo<TRes>
    implements CopyWith$Query$GetSites$sites$pageInfo<TRes> {
  _CopyWithImpl$Query$GetSites$sites$pageInfo(this._instance, this._then);

  final Query$GetSites$sites$pageInfo _instance;

  final TRes Function(Query$GetSites$sites$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSites$sites$pageInfo(
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

class _CopyWithStubImpl$Query$GetSites$sites$pageInfo<TRes>
    implements CopyWith$Query$GetSites$sites$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetSites$sites$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}

class Query$GetSites$sites$nodes {
  Query$GetSites$sites$nodes({
    required this.yardCode,
    required this.name,
    required this.createdOn,
    required this.createdBy,
    this.modifiedOn,
    this.modifiedBy,
    required this.active,
    required this.id,
    this.$__typename = 'Site',
  });

  factory Query$GetSites$sites$nodes.fromJson(Map<String, dynamic> json) {
    final l$yardCode = json['yardCode'];
    final l$name = json['name'];
    final l$createdOn = json['createdOn'];
    final l$createdBy = json['createdBy'];
    final l$modifiedOn = json['modifiedOn'];
    final l$modifiedBy = json['modifiedBy'];
    final l$active = json['active'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetSites$sites$nodes(
      yardCode: (l$yardCode as String),
      name: (l$name as String),
      createdOn: DateTime.parse((l$createdOn as String)),
      createdBy: (l$createdBy as String),
      modifiedOn: l$modifiedOn == null
          ? null
          : DateTime.parse((l$modifiedOn as String)),
      modifiedBy: (l$modifiedBy as String?),
      active: (l$active as bool),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String yardCode;

  final String name;

  final DateTime createdOn;

  final String createdBy;

  final DateTime? modifiedOn;

  final String? modifiedBy;

  final bool active;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$createdOn = createdOn;
    _resultData['createdOn'] = l$createdOn.toIso8601String();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$modifiedOn = modifiedOn;
    _resultData['modifiedOn'] = l$modifiedOn?.toIso8601String();
    final l$modifiedBy = modifiedBy;
    _resultData['modifiedBy'] = l$modifiedBy;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$name = name;
    final l$createdOn = createdOn;
    final l$createdBy = createdBy;
    final l$modifiedOn = modifiedOn;
    final l$modifiedBy = modifiedBy;
    final l$active = active;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yardCode,
      l$name,
      l$createdOn,
      l$createdBy,
      l$modifiedOn,
      l$modifiedBy,
      l$active,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetSites$sites$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$modifiedOn = modifiedOn;
    final lOther$modifiedOn = other.modifiedOn;
    if (l$modifiedOn != lOther$modifiedOn) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetSites$sites$nodes
    on Query$GetSites$sites$nodes {
  CopyWith$Query$GetSites$sites$nodes<Query$GetSites$sites$nodes>
  get copyWith => CopyWith$Query$GetSites$sites$nodes(this, (i) => i);
}

abstract class CopyWith$Query$GetSites$sites$nodes<TRes> {
  factory CopyWith$Query$GetSites$sites$nodes(
    Query$GetSites$sites$nodes instance,
    TRes Function(Query$GetSites$sites$nodes) then,
  ) = _CopyWithImpl$Query$GetSites$sites$nodes;

  factory CopyWith$Query$GetSites$sites$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSites$sites$nodes;

  TRes call({
    String? yardCode,
    String? name,
    DateTime? createdOn,
    String? createdBy,
    DateTime? modifiedOn,
    String? modifiedBy,
    bool? active,
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSites$sites$nodes<TRes>
    implements CopyWith$Query$GetSites$sites$nodes<TRes> {
  _CopyWithImpl$Query$GetSites$sites$nodes(this._instance, this._then);

  final Query$GetSites$sites$nodes _instance;

  final TRes Function(Query$GetSites$sites$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? name = _undefined,
    Object? createdOn = _undefined,
    Object? createdBy = _undefined,
    Object? modifiedOn = _undefined,
    Object? modifiedBy = _undefined,
    Object? active = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSites$sites$nodes(
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      createdOn: createdOn == _undefined || createdOn == null
          ? _instance.createdOn
          : (createdOn as DateTime),
      createdBy: createdBy == _undefined || createdBy == null
          ? _instance.createdBy
          : (createdBy as String),
      modifiedOn: modifiedOn == _undefined
          ? _instance.modifiedOn
          : (modifiedOn as DateTime?),
      modifiedBy: modifiedBy == _undefined
          ? _instance.modifiedBy
          : (modifiedBy as String?),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetSites$sites$nodes<TRes>
    implements CopyWith$Query$GetSites$sites$nodes<TRes> {
  _CopyWithStubImpl$Query$GetSites$sites$nodes(this._res);

  TRes _res;

  call({
    String? yardCode,
    String? name,
    DateTime? createdOn,
    String? createdBy,
    DateTime? modifiedOn,
    String? modifiedBy,
    bool? active,
    String? id,
    String? $__typename,
  }) => _res;
}
