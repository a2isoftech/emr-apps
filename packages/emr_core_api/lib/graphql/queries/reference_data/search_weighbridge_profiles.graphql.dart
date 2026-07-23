import 'package:gql/ast.dart';

class Variables$Query$SearchWeighbridgeProfiles {
  factory Variables$Query$SearchWeighbridgeProfiles({
    String? query,
    String? yardCode,
    int? first,
    String? after,
    int? last,
    String? before,
  }) => Variables$Query$SearchWeighbridgeProfiles._({
    if (query != null) r'query': query,
    if (yardCode != null) r'yardCode': yardCode,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
  });

  Variables$Query$SearchWeighbridgeProfiles._(this._$data);

  factory Variables$Query$SearchWeighbridgeProfiles.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = (l$yardCode as String?);
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    return Variables$Query$SearchWeighbridgeProfiles._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get query => (_$data['query'] as String?);

  String? get yardCode => (_$data['yardCode'] as String?);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] = l$yardCode;
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    return result$data;
  }

  CopyWith$Variables$Query$SearchWeighbridgeProfiles<
    Variables$Query$SearchWeighbridgeProfiles
  >
  get copyWith =>
      CopyWith$Variables$Query$SearchWeighbridgeProfiles(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchWeighbridgeProfiles ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (_$data.containsKey('query') != other._$data.containsKey('query')) {
      return false;
    }
    if (l$query != lOther$query) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (_$data.containsKey('yardCode') !=
        other._$data.containsKey('yardCode')) {
      return false;
    }
    if (l$yardCode != lOther$yardCode) {
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
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$yardCode = yardCode;
    final l$first = first;
    final l$after = after;
    final l$last = last;
    final l$before = before;
    return Object.hashAll([
      _$data.containsKey('query') ? l$query : const {},
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchWeighbridgeProfiles<TRes> {
  factory CopyWith$Variables$Query$SearchWeighbridgeProfiles(
    Variables$Query$SearchWeighbridgeProfiles instance,
    TRes Function(Variables$Query$SearchWeighbridgeProfiles) then,
  ) = _CopyWithImpl$Variables$Query$SearchWeighbridgeProfiles;

  factory CopyWith$Variables$Query$SearchWeighbridgeProfiles.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchWeighbridgeProfiles;

  TRes call({
    String? query,
    String? yardCode,
    int? first,
    String? after,
    int? last,
    String? before,
  });
}

class _CopyWithImpl$Variables$Query$SearchWeighbridgeProfiles<TRes>
    implements CopyWith$Variables$Query$SearchWeighbridgeProfiles<TRes> {
  _CopyWithImpl$Variables$Query$SearchWeighbridgeProfiles(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchWeighbridgeProfiles _instance;

  final TRes Function(Variables$Query$SearchWeighbridgeProfiles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? yardCode = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
  }) => _then(
    Variables$Query$SearchWeighbridgeProfiles._({
      ..._instance._$data,
      if (query != _undefined) 'query': (query as String?),
      if (yardCode != _undefined) 'yardCode': (yardCode as String?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
      if (last != _undefined) 'last': (last as int?),
      if (before != _undefined) 'before': (before as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchWeighbridgeProfiles<TRes>
    implements CopyWith$Variables$Query$SearchWeighbridgeProfiles<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchWeighbridgeProfiles(this._res);

  TRes _res;

  call({
    String? query,
    String? yardCode,
    int? first,
    String? after,
    int? last,
    String? before,
  }) => _res;
}

class Query$SearchWeighbridgeProfiles {
  Query$SearchWeighbridgeProfiles({
    this.searchWeighbridgeProfiles,
    this.$__typename = 'Query',
  });

  factory Query$SearchWeighbridgeProfiles.fromJson(Map<String, dynamic> json) {
    final l$searchWeighbridgeProfiles = json['searchWeighbridgeProfiles'];
    final l$$__typename = json['__typename'];
    return Query$SearchWeighbridgeProfiles(
      searchWeighbridgeProfiles: l$searchWeighbridgeProfiles == null
          ? null
          : Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles.fromJson(
              (l$searchWeighbridgeProfiles as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles?
  searchWeighbridgeProfiles;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchWeighbridgeProfiles = searchWeighbridgeProfiles;
    _resultData['searchWeighbridgeProfiles'] = l$searchWeighbridgeProfiles
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchWeighbridgeProfiles = searchWeighbridgeProfiles;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchWeighbridgeProfiles, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchWeighbridgeProfiles ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchWeighbridgeProfiles = searchWeighbridgeProfiles;
    final lOther$searchWeighbridgeProfiles = other.searchWeighbridgeProfiles;
    if (l$searchWeighbridgeProfiles != lOther$searchWeighbridgeProfiles) {
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

extension UtilityExtension$Query$SearchWeighbridgeProfiles
    on Query$SearchWeighbridgeProfiles {
  CopyWith$Query$SearchWeighbridgeProfiles<Query$SearchWeighbridgeProfiles>
  get copyWith => CopyWith$Query$SearchWeighbridgeProfiles(this, (i) => i);
}

abstract class CopyWith$Query$SearchWeighbridgeProfiles<TRes> {
  factory CopyWith$Query$SearchWeighbridgeProfiles(
    Query$SearchWeighbridgeProfiles instance,
    TRes Function(Query$SearchWeighbridgeProfiles) then,
  ) = _CopyWithImpl$Query$SearchWeighbridgeProfiles;

  factory CopyWith$Query$SearchWeighbridgeProfiles.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchWeighbridgeProfiles;

  TRes call({
    Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles?
    searchWeighbridgeProfiles,
    String? $__typename,
  });
  CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles<TRes>
  get searchWeighbridgeProfiles;
}

class _CopyWithImpl$Query$SearchWeighbridgeProfiles<TRes>
    implements CopyWith$Query$SearchWeighbridgeProfiles<TRes> {
  _CopyWithImpl$Query$SearchWeighbridgeProfiles(this._instance, this._then);

  final Query$SearchWeighbridgeProfiles _instance;

  final TRes Function(Query$SearchWeighbridgeProfiles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchWeighbridgeProfiles = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchWeighbridgeProfiles(
      searchWeighbridgeProfiles: searchWeighbridgeProfiles == _undefined
          ? _instance.searchWeighbridgeProfiles
          : (searchWeighbridgeProfiles
                as Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles<TRes>
  get searchWeighbridgeProfiles {
    final local$searchWeighbridgeProfiles = _instance.searchWeighbridgeProfiles;
    return local$searchWeighbridgeProfiles == null
        ? CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles(
            local$searchWeighbridgeProfiles,
            (e) => call(searchWeighbridgeProfiles: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchWeighbridgeProfiles<TRes>
    implements CopyWith$Query$SearchWeighbridgeProfiles<TRes> {
  _CopyWithStubImpl$Query$SearchWeighbridgeProfiles(this._res);

  TRes _res;

  call({
    Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles?
    searchWeighbridgeProfiles,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles<TRes>
  get searchWeighbridgeProfiles =>
      CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles.stub(
        _res,
      );
}

const documentNodeQuerySearchWeighbridgeProfiles = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchWeighbridgeProfiles'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'query')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'yardCode')),
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
          variable: VariableNode(name: NameNode(value: 'after')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'searchWeighbridgeProfiles'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'query'),
                      value: VariableNode(name: NameNode(value: 'query')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'yardCode'),
                      value: VariableNode(name: NameNode(value: 'yardCode')),
                    ),
                  ],
                ),
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
                        name: NameNode(value: 'yardCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'yardId'),
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

class Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles {
  Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchWeighbridgeProfilesConnection',
  });

  factory Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo
  pageInfo;

  final List<Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes>?
  nodes;

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
    if (other is! Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles ||
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

extension UtilityExtension$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles
    on Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles {
  CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles<
    Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles
  >
  get copyWith =>
      CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles<
  TRes
> {
  factory CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles(
    Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles instance,
    TRes Function(Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles)
    then,
  ) = _CopyWithImpl$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles;

  factory CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles;

  TRes call({
    int? totalCount,
    Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo?
    pageInfo,
    List<Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes>?
    nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo<
    TRes
  >
  get pageInfo;
  TRes nodes(
    Iterable<Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes>?
    Function(
      Iterable<
        CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes<
          Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles<
  TRes
>
    implements
        CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles<
          TRes
        > {
  _CopyWithImpl$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles(
    this._instance,
    this._then,
  );

  final Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles _instance;

  final TRes Function(Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo<
    TRes
  >
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes>?
    Function(
      Iterable<
        CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes<
          Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) =>
            CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles<
  TRes
>
    implements
        CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo?
    pageInfo,
    List<Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes>?
    nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo<
    TRes
  >
  get pageInfo =>
      CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo {
  Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo(
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
    if (other
            is! Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo ||
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

extension UtilityExtension$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo
    on Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo {
  CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo<
    Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo<
  TRes
> {
  factory CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo(
    Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo instance,
    TRes Function(
      Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo;

  factory CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo
  _instance;

  final TRes Function(
    Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo(
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

class _CopyWithStubImpl$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$pageInfo(
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

class Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes {
  Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes({
    this.id,
    required this.name,
    required this.yardCode,
    required this.yardId,
    this.$__typename = 'WeighbridgeProfile',
  });

  factory Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$yardId = json['yardId'];
    final l$$__typename = json['__typename'];
    return Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes(
      id: (l$id as String?),
      name: (l$name as String),
      yardCode: (l$yardCode as String),
      yardId: (l$yardId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String name;

  final String yardCode;

  final String yardId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$yardCode = yardCode;
    final l$yardId = yardId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$yardCode, l$yardId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes ||
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
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
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

extension UtilityExtension$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes
    on Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes {
  CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes<
    Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes
  >
  get copyWith =>
      CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes<
  TRes
> {
  factory CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes(
    Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes instance,
    TRes Function(
      Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes;

  factory CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes;

  TRes call({
    String? id,
    String? name,
    String? yardCode,
    String? yardId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes<
  TRes
>
    implements
        CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes
  _instance;

  final TRes Function(
    Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? yardId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes(
      id: id == _undefined ? _instance.id : (id as String?),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes<
  TRes
>
    implements
        CopyWith$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchWeighbridgeProfiles$searchWeighbridgeProfiles$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? name,
    String? yardCode,
    String? yardId,
    String? $__typename,
  }) => _res;
}
