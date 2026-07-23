import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$searchWeighbridgeGroups {
  factory Variables$Query$searchWeighbridgeGroups({
    required Input$SearchWeighbridgeGroupsInput input,
    int? first,
    String? after,
    int? last,
    String? before,
  }) => Variables$Query$searchWeighbridgeGroups._({
    r'input': input,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
  });

  Variables$Query$searchWeighbridgeGroups._(this._$data);

  factory Variables$Query$searchWeighbridgeGroups.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchWeighbridgeGroupsInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
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
    return Variables$Query$searchWeighbridgeGroups._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchWeighbridgeGroupsInput get input =>
      (_$data['input'] as Input$SearchWeighbridgeGroupsInput);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
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

  CopyWith$Variables$Query$searchWeighbridgeGroups<
    Variables$Query$searchWeighbridgeGroups
  >
  get copyWith =>
      CopyWith$Variables$Query$searchWeighbridgeGroups(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$searchWeighbridgeGroups ||
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
    final l$input = input;
    final l$first = first;
    final l$after = after;
    final l$last = last;
    final l$before = before;
    return Object.hashAll([
      l$input,
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$searchWeighbridgeGroups<TRes> {
  factory CopyWith$Variables$Query$searchWeighbridgeGroups(
    Variables$Query$searchWeighbridgeGroups instance,
    TRes Function(Variables$Query$searchWeighbridgeGroups) then,
  ) = _CopyWithImpl$Variables$Query$searchWeighbridgeGroups;

  factory CopyWith$Variables$Query$searchWeighbridgeGroups.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$searchWeighbridgeGroups;

  TRes call({
    Input$SearchWeighbridgeGroupsInput? input,
    int? first,
    String? after,
    int? last,
    String? before,
  });
}

class _CopyWithImpl$Variables$Query$searchWeighbridgeGroups<TRes>
    implements CopyWith$Variables$Query$searchWeighbridgeGroups<TRes> {
  _CopyWithImpl$Variables$Query$searchWeighbridgeGroups(
    this._instance,
    this._then,
  );

  final Variables$Query$searchWeighbridgeGroups _instance;

  final TRes Function(Variables$Query$searchWeighbridgeGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
  }) => _then(
    Variables$Query$searchWeighbridgeGroups._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchWeighbridgeGroupsInput),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
      if (last != _undefined) 'last': (last as int?),
      if (before != _undefined) 'before': (before as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$searchWeighbridgeGroups<TRes>
    implements CopyWith$Variables$Query$searchWeighbridgeGroups<TRes> {
  _CopyWithStubImpl$Variables$Query$searchWeighbridgeGroups(this._res);

  TRes _res;

  call({
    Input$SearchWeighbridgeGroupsInput? input,
    int? first,
    String? after,
    int? last,
    String? before,
  }) => _res;
}

class Query$searchWeighbridgeGroups {
  Query$searchWeighbridgeGroups({
    this.searchWeighbridgeGroups,
    this.$__typename = 'Query',
  });

  factory Query$searchWeighbridgeGroups.fromJson(Map<String, dynamic> json) {
    final l$searchWeighbridgeGroups = json['searchWeighbridgeGroups'];
    final l$$__typename = json['__typename'];
    return Query$searchWeighbridgeGroups(
      searchWeighbridgeGroups: l$searchWeighbridgeGroups == null
          ? null
          : Query$searchWeighbridgeGroups$searchWeighbridgeGroups.fromJson(
              (l$searchWeighbridgeGroups as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$searchWeighbridgeGroups$searchWeighbridgeGroups?
  searchWeighbridgeGroups;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchWeighbridgeGroups = searchWeighbridgeGroups;
    _resultData['searchWeighbridgeGroups'] = l$searchWeighbridgeGroups
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchWeighbridgeGroups = searchWeighbridgeGroups;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchWeighbridgeGroups, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$searchWeighbridgeGroups ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchWeighbridgeGroups = searchWeighbridgeGroups;
    final lOther$searchWeighbridgeGroups = other.searchWeighbridgeGroups;
    if (l$searchWeighbridgeGroups != lOther$searchWeighbridgeGroups) {
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

extension UtilityExtension$Query$searchWeighbridgeGroups
    on Query$searchWeighbridgeGroups {
  CopyWith$Query$searchWeighbridgeGroups<Query$searchWeighbridgeGroups>
  get copyWith => CopyWith$Query$searchWeighbridgeGroups(this, (i) => i);
}

abstract class CopyWith$Query$searchWeighbridgeGroups<TRes> {
  factory CopyWith$Query$searchWeighbridgeGroups(
    Query$searchWeighbridgeGroups instance,
    TRes Function(Query$searchWeighbridgeGroups) then,
  ) = _CopyWithImpl$Query$searchWeighbridgeGroups;

  factory CopyWith$Query$searchWeighbridgeGroups.stub(TRes res) =
      _CopyWithStubImpl$Query$searchWeighbridgeGroups;

  TRes call({
    Query$searchWeighbridgeGroups$searchWeighbridgeGroups?
    searchWeighbridgeGroups,
    String? $__typename,
  });
  CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups<TRes>
  get searchWeighbridgeGroups;
}

class _CopyWithImpl$Query$searchWeighbridgeGroups<TRes>
    implements CopyWith$Query$searchWeighbridgeGroups<TRes> {
  _CopyWithImpl$Query$searchWeighbridgeGroups(this._instance, this._then);

  final Query$searchWeighbridgeGroups _instance;

  final TRes Function(Query$searchWeighbridgeGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchWeighbridgeGroups = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchWeighbridgeGroups(
      searchWeighbridgeGroups: searchWeighbridgeGroups == _undefined
          ? _instance.searchWeighbridgeGroups
          : (searchWeighbridgeGroups
                as Query$searchWeighbridgeGroups$searchWeighbridgeGroups?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups<TRes>
  get searchWeighbridgeGroups {
    final local$searchWeighbridgeGroups = _instance.searchWeighbridgeGroups;
    return local$searchWeighbridgeGroups == null
        ? CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups.stub(
            _then(_instance),
          )
        : CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups(
            local$searchWeighbridgeGroups,
            (e) => call(searchWeighbridgeGroups: e),
          );
  }
}

class _CopyWithStubImpl$Query$searchWeighbridgeGroups<TRes>
    implements CopyWith$Query$searchWeighbridgeGroups<TRes> {
  _CopyWithStubImpl$Query$searchWeighbridgeGroups(this._res);

  TRes _res;

  call({
    Query$searchWeighbridgeGroups$searchWeighbridgeGroups?
    searchWeighbridgeGroups,
    String? $__typename,
  }) => _res;

  CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups<TRes>
  get searchWeighbridgeGroups =>
      CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups.stub(_res);
}

const documentNodeQuerysearchWeighbridgeGroups = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'searchWeighbridgeGroups'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchWeighbridgeGroupsInput'),
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
            name: NameNode(value: 'searchWeighbridgeGroups'),
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
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'group'),
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

class Query$searchWeighbridgeGroups$searchWeighbridgeGroups {
  Query$searchWeighbridgeGroups$searchWeighbridgeGroups({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchWeighbridgeGroupsConnection',
  });

  factory Query$searchWeighbridgeGroups$searchWeighbridgeGroups.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$searchWeighbridgeGroups$searchWeighbridgeGroups(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo pageInfo;

  final List<Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes>?
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
    if (other is! Query$searchWeighbridgeGroups$searchWeighbridgeGroups ||
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

extension UtilityExtension$Query$searchWeighbridgeGroups$searchWeighbridgeGroups
    on Query$searchWeighbridgeGroups$searchWeighbridgeGroups {
  CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups<
    Query$searchWeighbridgeGroups$searchWeighbridgeGroups
  >
  get copyWith =>
      CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups<
  TRes
> {
  factory CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups(
    Query$searchWeighbridgeGroups$searchWeighbridgeGroups instance,
    TRes Function(Query$searchWeighbridgeGroups$searchWeighbridgeGroups) then,
  ) = _CopyWithImpl$Query$searchWeighbridgeGroups$searchWeighbridgeGroups;

  factory CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchWeighbridgeGroups$searchWeighbridgeGroups;

  TRes call({
    int? totalCount,
    Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo? pageInfo,
    List<Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes>?
    Function(
      Iterable<
        CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes<
          Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$searchWeighbridgeGroups$searchWeighbridgeGroups<TRes>
    implements
        CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups<TRes> {
  _CopyWithImpl$Query$searchWeighbridgeGroups$searchWeighbridgeGroups(
    this._instance,
    this._then,
  );

  final Query$searchWeighbridgeGroups$searchWeighbridgeGroups _instance;

  final TRes Function(Query$searchWeighbridgeGroups$searchWeighbridgeGroups)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchWeighbridgeGroups$searchWeighbridgeGroups(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<
                  Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes>?
    Function(
      Iterable<
        CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes<
          Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) =>
            CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$searchWeighbridgeGroups$searchWeighbridgeGroups<
  TRes
>
    implements
        CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups<TRes> {
  _CopyWithStubImpl$Query$searchWeighbridgeGroups$searchWeighbridgeGroups(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo? pageInfo,
    List<Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo {
  Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$$__typename = json['__typename'];
    return Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo(
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
    if (other
            is! Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo ||
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

extension UtilityExtension$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo
    on Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo {
  CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo<
    Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo
  >
  get copyWith =>
      CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo<
  TRes
> {
  factory CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo(
    Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo instance,
    TRes Function(
      Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo;

  factory CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo<
  TRes
>
    implements
        CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo(
    this._instance,
    this._then,
  );

  final Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo
  _instance;

  final TRes Function(
    Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo(
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

class _CopyWithStubImpl$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo<
  TRes
>
    implements
        CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$pageInfo(
    this._res,
  );

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  }) => _res;
}

class Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes {
  Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes({
    required this.group,
    required this.yardCode,
    this.$__typename = 'WeighbridgeGroup',
  });

  factory Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$group = json['group'];
    final l$yardCode = json['yardCode'];
    final l$$__typename = json['__typename'];
    return Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes(
      group: (l$group as List<dynamic>).map((e) => (e as String)).toList(),
      yardCode: (l$yardCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> group;

  final String yardCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$group = group;
    _resultData['group'] = l$group.map((e) => e).toList();
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$group = group;
    final l$yardCode = yardCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$group.map((v) => v)),
      l$yardCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (l$group.length != lOther$group.length) {
      return false;
    }
    for (int i = 0; i < l$group.length; i++) {
      final l$group$entry = l$group[i];
      final lOther$group$entry = lOther$group[i];
      if (l$group$entry != lOther$group$entry) {
        return false;
      }
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
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

extension UtilityExtension$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes
    on Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes {
  CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes<
    Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes
  >
  get copyWith =>
      CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes<
  TRes
> {
  factory CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes(
    Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes instance,
    TRes Function(Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes)
    then,
  ) = _CopyWithImpl$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes;

  factory CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes;

  TRes call({List<String>? group, String? yardCode, String? $__typename});
}

class _CopyWithImpl$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes<
  TRes
>
    implements
        CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes<
          TRes
        > {
  _CopyWithImpl$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes(
    this._instance,
    this._then,
  );

  final Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes _instance;

  final TRes Function(
    Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? group = _undefined,
    Object? yardCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes(
      group: group == _undefined || group == null
          ? _instance.group
          : (group as List<String>),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes<
  TRes
>
    implements
        CopyWith$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$searchWeighbridgeGroups$searchWeighbridgeGroups$nodes(
    this._res,
  );

  TRes _res;

  call({List<String>? group, String? yardCode, String? $__typename}) => _res;
}
