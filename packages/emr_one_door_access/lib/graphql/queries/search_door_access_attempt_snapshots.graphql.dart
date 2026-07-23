import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchDoorAccessAttemptSnapshots {
  factory Variables$Query$SearchDoorAccessAttemptSnapshots({
    String? after,
    String? before,
    int? first,
    int? last,
    required Input$SearchDoorAccessAttemptsInput input,
  }) => Variables$Query$SearchDoorAccessAttemptSnapshots._({
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    r'input': input,
  });

  Variables$Query$SearchDoorAccessAttemptSnapshots._(this._$data);

  factory Variables$Query$SearchDoorAccessAttemptSnapshots.fromJson(
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
    final l$input = data['input'];
    result$data['input'] = Input$SearchDoorAccessAttemptsInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$SearchDoorAccessAttemptSnapshots._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  Input$SearchDoorAccessAttemptsInput get input =>
      (_$data['input'] as Input$SearchDoorAccessAttemptsInput);

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

  CopyWith$Variables$Query$SearchDoorAccessAttemptSnapshots<
    Variables$Query$SearchDoorAccessAttemptSnapshots
  >
  get copyWith =>
      CopyWith$Variables$Query$SearchDoorAccessAttemptSnapshots(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchDoorAccessAttemptSnapshots ||
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

abstract class CopyWith$Variables$Query$SearchDoorAccessAttemptSnapshots<TRes> {
  factory CopyWith$Variables$Query$SearchDoorAccessAttemptSnapshots(
    Variables$Query$SearchDoorAccessAttemptSnapshots instance,
    TRes Function(Variables$Query$SearchDoorAccessAttemptSnapshots) then,
  ) = _CopyWithImpl$Variables$Query$SearchDoorAccessAttemptSnapshots;

  factory CopyWith$Variables$Query$SearchDoorAccessAttemptSnapshots.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$SearchDoorAccessAttemptSnapshots;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchDoorAccessAttemptsInput? input,
  });
}

class _CopyWithImpl$Variables$Query$SearchDoorAccessAttemptSnapshots<TRes>
    implements CopyWith$Variables$Query$SearchDoorAccessAttemptSnapshots<TRes> {
  _CopyWithImpl$Variables$Query$SearchDoorAccessAttemptSnapshots(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchDoorAccessAttemptSnapshots _instance;

  final TRes Function(Variables$Query$SearchDoorAccessAttemptSnapshots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? input = _undefined,
  }) => _then(
    Variables$Query$SearchDoorAccessAttemptSnapshots._({
      ..._instance._$data,
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (input != _undefined && input != null)
        'input': (input as Input$SearchDoorAccessAttemptsInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchDoorAccessAttemptSnapshots<TRes>
    implements CopyWith$Variables$Query$SearchDoorAccessAttemptSnapshots<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchDoorAccessAttemptSnapshots(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchDoorAccessAttemptsInput? input,
  }) => _res;
}

class Query$SearchDoorAccessAttemptSnapshots {
  Query$SearchDoorAccessAttemptSnapshots({
    this.searchDoorAccessAttemptSnapshots,
    this.$__typename = 'Query',
  });

  factory Query$SearchDoorAccessAttemptSnapshots.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$searchDoorAccessAttemptSnapshots =
        json['searchDoorAccessAttemptSnapshots'];
    final l$$__typename = json['__typename'];
    return Query$SearchDoorAccessAttemptSnapshots(
      searchDoorAccessAttemptSnapshots:
          l$searchDoorAccessAttemptSnapshots == null
          ? null
          : Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots.fromJson(
              (l$searchDoorAccessAttemptSnapshots as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots?
  searchDoorAccessAttemptSnapshots;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchDoorAccessAttemptSnapshots = searchDoorAccessAttemptSnapshots;
    _resultData['searchDoorAccessAttemptSnapshots'] =
        l$searchDoorAccessAttemptSnapshots?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchDoorAccessAttemptSnapshots = searchDoorAccessAttemptSnapshots;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchDoorAccessAttemptSnapshots, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchDoorAccessAttemptSnapshots ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchDoorAccessAttemptSnapshots = searchDoorAccessAttemptSnapshots;
    final lOther$searchDoorAccessAttemptSnapshots =
        other.searchDoorAccessAttemptSnapshots;
    if (l$searchDoorAccessAttemptSnapshots !=
        lOther$searchDoorAccessAttemptSnapshots) {
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

extension UtilityExtension$Query$SearchDoorAccessAttemptSnapshots
    on Query$SearchDoorAccessAttemptSnapshots {
  CopyWith$Query$SearchDoorAccessAttemptSnapshots<
    Query$SearchDoorAccessAttemptSnapshots
  >
  get copyWith =>
      CopyWith$Query$SearchDoorAccessAttemptSnapshots(this, (i) => i);
}

abstract class CopyWith$Query$SearchDoorAccessAttemptSnapshots<TRes> {
  factory CopyWith$Query$SearchDoorAccessAttemptSnapshots(
    Query$SearchDoorAccessAttemptSnapshots instance,
    TRes Function(Query$SearchDoorAccessAttemptSnapshots) then,
  ) = _CopyWithImpl$Query$SearchDoorAccessAttemptSnapshots;

  factory CopyWith$Query$SearchDoorAccessAttemptSnapshots.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchDoorAccessAttemptSnapshots;

  TRes call({
    Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots?
    searchDoorAccessAttemptSnapshots,
    String? $__typename,
  });
  CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots<
    TRes
  >
  get searchDoorAccessAttemptSnapshots;
}

class _CopyWithImpl$Query$SearchDoorAccessAttemptSnapshots<TRes>
    implements CopyWith$Query$SearchDoorAccessAttemptSnapshots<TRes> {
  _CopyWithImpl$Query$SearchDoorAccessAttemptSnapshots(
    this._instance,
    this._then,
  );

  final Query$SearchDoorAccessAttemptSnapshots _instance;

  final TRes Function(Query$SearchDoorAccessAttemptSnapshots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchDoorAccessAttemptSnapshots = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchDoorAccessAttemptSnapshots(
      searchDoorAccessAttemptSnapshots:
          searchDoorAccessAttemptSnapshots == _undefined
          ? _instance.searchDoorAccessAttemptSnapshots
          : (searchDoorAccessAttemptSnapshots
                as Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots<
    TRes
  >
  get searchDoorAccessAttemptSnapshots {
    final local$searchDoorAccessAttemptSnapshots =
        _instance.searchDoorAccessAttemptSnapshots;
    return local$searchDoorAccessAttemptSnapshots == null
        ? CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots(
            local$searchDoorAccessAttemptSnapshots,
            (e) => call(searchDoorAccessAttemptSnapshots: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchDoorAccessAttemptSnapshots<TRes>
    implements CopyWith$Query$SearchDoorAccessAttemptSnapshots<TRes> {
  _CopyWithStubImpl$Query$SearchDoorAccessAttemptSnapshots(this._res);

  TRes _res;

  call({
    Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots?
    searchDoorAccessAttemptSnapshots,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots<
    TRes
  >
  get searchDoorAccessAttemptSnapshots =>
      CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots.stub(
        _res,
      );
}

const documentNodeQuerySearchDoorAccessAttemptSnapshots = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchDoorAccessAttemptSnapshots'),
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
            name: NameNode(value: 'SearchDoorAccessAttemptsInput'),
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
            name: NameNode(value: 'searchDoorAccessAttemptSnapshots'),
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
                        name: NameNode(value: 'rowId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'snapshotReason'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'snapshotUrl'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'accessControllerId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'userId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'cardNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'utcTime'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'topic0'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'topic1'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'topic2'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'accessPointName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'accessPointRestricted'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'accessPointId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'email'),
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
                        name: NameNode(value: 'accessResponse'),
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

class Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots {
  Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchDoorAccessAttemptSnapshotsConnection',
  });

  factory Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo
  pageInfo;

  final List<
    Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes
  >?
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
    if (other
            is! Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots ||
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

extension UtilityExtension$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots
    on Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots {
  CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots<
    Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots
  >
  get copyWith =>
      CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots<
  TRes
> {
  factory CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots(
    Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots
    instance,
    TRes Function(
      Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots,
    )
    then,
  ) = _CopyWithImpl$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots;

  factory CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots;

  TRes call({
    int? totalCount,
    Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo?
    pageInfo,
    List<
      Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes
    >?
    nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo<
    TRes
  >
  get pageInfo;
  TRes nodes(
    Iterable<
      Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes
    >?
    Function(
      Iterable<
        CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes<
          Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots<
  TRes
>
    implements
        CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots<
          TRes
        > {
  _CopyWithImpl$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots(
    this._instance,
    this._then,
  );

  final Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots
  _instance;

  final TRes Function(
    Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo<
    TRes
  >
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<
      Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes
    >?
    Function(
      Iterable<
        CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes<
          Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) =>
            CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots<
  TRes
>
    implements
        CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo?
    pageInfo,
    List<
      Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes
    >?
    nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo<
    TRes
  >
  get pageInfo =>
      CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo {
  Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo(
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
            is! Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo ||
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

extension UtilityExtension$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo
    on
        Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo {
  CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo<
    Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo<
  TRes
> {
  factory CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo(
    Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo
    instance,
    TRes Function(
      Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo;

  factory CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo
  _instance;

  final TRes Function(
    Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo,
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
    Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo(
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

class _CopyWithStubImpl$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$pageInfo(
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

class Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes {
  Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes({
    required this.rowId,
    this.snapshotReason,
    this.snapshotUrl,
    required this.accessControllerId,
    this.userId,
    this.cardNumber,
    required this.utcTime,
    this.topic0,
    this.topic1,
    this.topic2,
    this.accessPointName,
    this.accessPointRestricted,
    this.accessPointId,
    this.email,
    this.name,
    this.accessResponse,
    this.siteId,
    this.siteName,
    this.$__typename = 'DoorAccessAttemptEventsIndexResult',
  });

  factory Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$rowId = json['rowId'];
    final l$snapshotReason = json['snapshotReason'];
    final l$snapshotUrl = json['snapshotUrl'];
    final l$accessControllerId = json['accessControllerId'];
    final l$userId = json['userId'];
    final l$cardNumber = json['cardNumber'];
    final l$utcTime = json['utcTime'];
    final l$topic0 = json['topic0'];
    final l$topic1 = json['topic1'];
    final l$topic2 = json['topic2'];
    final l$accessPointName = json['accessPointName'];
    final l$accessPointRestricted = json['accessPointRestricted'];
    final l$accessPointId = json['accessPointId'];
    final l$email = json['email'];
    final l$name = json['name'];
    final l$accessResponse = json['accessResponse'];
    final l$siteId = json['siteId'];
    final l$siteName = json['siteName'];
    final l$$__typename = json['__typename'];
    return Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes(
      rowId: (l$rowId as int),
      snapshotReason: l$snapshotReason == null
          ? null
          : fromJson$Enum$SnapshotReasonEnum((l$snapshotReason as String)),
      snapshotUrl: (l$snapshotUrl as String?),
      accessControllerId: (l$accessControllerId as String),
      userId: (l$userId as String?),
      cardNumber: (l$cardNumber as String?),
      utcTime: DateTime.parse((l$utcTime as String)),
      topic0: (l$topic0 as String?),
      topic1: (l$topic1 as String?),
      topic2: (l$topic2 as String?),
      accessPointName: (l$accessPointName as String?),
      accessPointRestricted: (l$accessPointRestricted as bool?),
      accessPointId: (l$accessPointId as String?),
      email: (l$email as String?),
      name: (l$name as String?),
      accessResponse: (l$accessResponse as String?),
      siteId: (l$siteId as String?),
      siteName: (l$siteName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int rowId;

  final Enum$SnapshotReasonEnum? snapshotReason;

  final String? snapshotUrl;

  final String accessControllerId;

  final String? userId;

  final String? cardNumber;

  final DateTime utcTime;

  final String? topic0;

  final String? topic1;

  final String? topic2;

  final String? accessPointName;

  final bool? accessPointRestricted;

  final String? accessPointId;

  final String? email;

  final String? name;

  final String? accessResponse;

  final String? siteId;

  final String? siteName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rowId = rowId;
    _resultData['rowId'] = l$rowId;
    final l$snapshotReason = snapshotReason;
    _resultData['snapshotReason'] = l$snapshotReason == null
        ? null
        : toJson$Enum$SnapshotReasonEnum(l$snapshotReason);
    final l$snapshotUrl = snapshotUrl;
    _resultData['snapshotUrl'] = l$snapshotUrl;
    final l$accessControllerId = accessControllerId;
    _resultData['accessControllerId'] = l$accessControllerId;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$cardNumber = cardNumber;
    _resultData['cardNumber'] = l$cardNumber;
    final l$utcTime = utcTime;
    _resultData['utcTime'] = l$utcTime.toIso8601String();
    final l$topic0 = topic0;
    _resultData['topic0'] = l$topic0;
    final l$topic1 = topic1;
    _resultData['topic1'] = l$topic1;
    final l$topic2 = topic2;
    _resultData['topic2'] = l$topic2;
    final l$accessPointName = accessPointName;
    _resultData['accessPointName'] = l$accessPointName;
    final l$accessPointRestricted = accessPointRestricted;
    _resultData['accessPointRestricted'] = l$accessPointRestricted;
    final l$accessPointId = accessPointId;
    _resultData['accessPointId'] = l$accessPointId;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$accessResponse = accessResponse;
    _resultData['accessResponse'] = l$accessResponse;
    final l$siteId = siteId;
    _resultData['siteId'] = l$siteId;
    final l$siteName = siteName;
    _resultData['siteName'] = l$siteName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rowId = rowId;
    final l$snapshotReason = snapshotReason;
    final l$snapshotUrl = snapshotUrl;
    final l$accessControllerId = accessControllerId;
    final l$userId = userId;
    final l$cardNumber = cardNumber;
    final l$utcTime = utcTime;
    final l$topic0 = topic0;
    final l$topic1 = topic1;
    final l$topic2 = topic2;
    final l$accessPointName = accessPointName;
    final l$accessPointRestricted = accessPointRestricted;
    final l$accessPointId = accessPointId;
    final l$email = email;
    final l$name = name;
    final l$accessResponse = accessResponse;
    final l$siteId = siteId;
    final l$siteName = siteName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rowId,
      l$snapshotReason,
      l$snapshotUrl,
      l$accessControllerId,
      l$userId,
      l$cardNumber,
      l$utcTime,
      l$topic0,
      l$topic1,
      l$topic2,
      l$accessPointName,
      l$accessPointRestricted,
      l$accessPointId,
      l$email,
      l$name,
      l$accessResponse,
      l$siteId,
      l$siteName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$rowId = rowId;
    final lOther$rowId = other.rowId;
    if (l$rowId != lOther$rowId) {
      return false;
    }
    final l$snapshotReason = snapshotReason;
    final lOther$snapshotReason = other.snapshotReason;
    if (l$snapshotReason != lOther$snapshotReason) {
      return false;
    }
    final l$snapshotUrl = snapshotUrl;
    final lOther$snapshotUrl = other.snapshotUrl;
    if (l$snapshotUrl != lOther$snapshotUrl) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$cardNumber = cardNumber;
    final lOther$cardNumber = other.cardNumber;
    if (l$cardNumber != lOther$cardNumber) {
      return false;
    }
    final l$utcTime = utcTime;
    final lOther$utcTime = other.utcTime;
    if (l$utcTime != lOther$utcTime) {
      return false;
    }
    final l$topic0 = topic0;
    final lOther$topic0 = other.topic0;
    if (l$topic0 != lOther$topic0) {
      return false;
    }
    final l$topic1 = topic1;
    final lOther$topic1 = other.topic1;
    if (l$topic1 != lOther$topic1) {
      return false;
    }
    final l$topic2 = topic2;
    final lOther$topic2 = other.topic2;
    if (l$topic2 != lOther$topic2) {
      return false;
    }
    final l$accessPointName = accessPointName;
    final lOther$accessPointName = other.accessPointName;
    if (l$accessPointName != lOther$accessPointName) {
      return false;
    }
    final l$accessPointRestricted = accessPointRestricted;
    final lOther$accessPointRestricted = other.accessPointRestricted;
    if (l$accessPointRestricted != lOther$accessPointRestricted) {
      return false;
    }
    final l$accessPointId = accessPointId;
    final lOther$accessPointId = other.accessPointId;
    if (l$accessPointId != lOther$accessPointId) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$accessResponse = accessResponse;
    final lOther$accessResponse = other.accessResponse;
    if (l$accessResponse != lOther$accessResponse) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes
    on Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes {
  CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes<
    Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes
  >
  get copyWith =>
      CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes<
  TRes
> {
  factory CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes(
    Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes
    instance,
    TRes Function(
      Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes;

  factory CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes;

  TRes call({
    int? rowId,
    Enum$SnapshotReasonEnum? snapshotReason,
    String? snapshotUrl,
    String? accessControllerId,
    String? userId,
    String? cardNumber,
    DateTime? utcTime,
    String? topic0,
    String? topic1,
    String? topic2,
    String? accessPointName,
    bool? accessPointRestricted,
    String? accessPointId,
    String? email,
    String? name,
    String? accessResponse,
    String? siteId,
    String? siteName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes<
  TRes
>
    implements
        CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes
  _instance;

  final TRes Function(
    Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rowId = _undefined,
    Object? snapshotReason = _undefined,
    Object? snapshotUrl = _undefined,
    Object? accessControllerId = _undefined,
    Object? userId = _undefined,
    Object? cardNumber = _undefined,
    Object? utcTime = _undefined,
    Object? topic0 = _undefined,
    Object? topic1 = _undefined,
    Object? topic2 = _undefined,
    Object? accessPointName = _undefined,
    Object? accessPointRestricted = _undefined,
    Object? accessPointId = _undefined,
    Object? email = _undefined,
    Object? name = _undefined,
    Object? accessResponse = _undefined,
    Object? siteId = _undefined,
    Object? siteName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes(
      rowId: rowId == _undefined || rowId == null
          ? _instance.rowId
          : (rowId as int),
      snapshotReason: snapshotReason == _undefined
          ? _instance.snapshotReason
          : (snapshotReason as Enum$SnapshotReasonEnum?),
      snapshotUrl: snapshotUrl == _undefined
          ? _instance.snapshotUrl
          : (snapshotUrl as String?),
      accessControllerId:
          accessControllerId == _undefined || accessControllerId == null
          ? _instance.accessControllerId
          : (accessControllerId as String),
      userId: userId == _undefined ? _instance.userId : (userId as String?),
      cardNumber: cardNumber == _undefined
          ? _instance.cardNumber
          : (cardNumber as String?),
      utcTime: utcTime == _undefined || utcTime == null
          ? _instance.utcTime
          : (utcTime as DateTime),
      topic0: topic0 == _undefined ? _instance.topic0 : (topic0 as String?),
      topic1: topic1 == _undefined ? _instance.topic1 : (topic1 as String?),
      topic2: topic2 == _undefined ? _instance.topic2 : (topic2 as String?),
      accessPointName: accessPointName == _undefined
          ? _instance.accessPointName
          : (accessPointName as String?),
      accessPointRestricted: accessPointRestricted == _undefined
          ? _instance.accessPointRestricted
          : (accessPointRestricted as bool?),
      accessPointId: accessPointId == _undefined
          ? _instance.accessPointId
          : (accessPointId as String?),
      email: email == _undefined ? _instance.email : (email as String?),
      name: name == _undefined ? _instance.name : (name as String?),
      accessResponse: accessResponse == _undefined
          ? _instance.accessResponse
          : (accessResponse as String?),
      siteId: siteId == _undefined ? _instance.siteId : (siteId as String?),
      siteName: siteName == _undefined
          ? _instance.siteName
          : (siteName as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes<
  TRes
>
    implements
        CopyWith$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchDoorAccessAttemptSnapshots$searchDoorAccessAttemptSnapshots$nodes(
    this._res,
  );

  TRes _res;

  call({
    int? rowId,
    Enum$SnapshotReasonEnum? snapshotReason,
    String? snapshotUrl,
    String? accessControllerId,
    String? userId,
    String? cardNumber,
    DateTime? utcTime,
    String? topic0,
    String? topic1,
    String? topic2,
    String? accessPointName,
    bool? accessPointRestricted,
    String? accessPointId,
    String? email,
    String? name,
    String? accessResponse,
    String? siteId,
    String? siteName,
    String? $__typename,
  }) => _res;
}
