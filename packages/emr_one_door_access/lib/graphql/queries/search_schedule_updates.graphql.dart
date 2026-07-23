import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchScheduleUpdates {
  factory Variables$Query$SearchScheduleUpdates({
    String? after,
    String? before,
    int? first,
    int? last,
    required Input$SearchScheduleUpdateInput input,
  }) =>
      Variables$Query$SearchScheduleUpdates._({
        if (after != null) r'after': after,
        if (before != null) r'before': before,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        r'input': input,
      });

  Variables$Query$SearchScheduleUpdates._(this._$data);

  factory Variables$Query$SearchScheduleUpdates.fromJson(
      Map<String, dynamic> data) {
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
    result$data['input'] = Input$SearchScheduleUpdateInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Query$SearchScheduleUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  Input$SearchScheduleUpdateInput get input =>
      (_$data['input'] as Input$SearchScheduleUpdateInput);

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

  CopyWith$Variables$Query$SearchScheduleUpdates<
          Variables$Query$SearchScheduleUpdates>
      get copyWith => CopyWith$Variables$Query$SearchScheduleUpdates(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchScheduleUpdates ||
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

abstract class CopyWith$Variables$Query$SearchScheduleUpdates<TRes> {
  factory CopyWith$Variables$Query$SearchScheduleUpdates(
    Variables$Query$SearchScheduleUpdates instance,
    TRes Function(Variables$Query$SearchScheduleUpdates) then,
  ) = _CopyWithImpl$Variables$Query$SearchScheduleUpdates;

  factory CopyWith$Variables$Query$SearchScheduleUpdates.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchScheduleUpdates;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchScheduleUpdateInput? input,
  });
}

class _CopyWithImpl$Variables$Query$SearchScheduleUpdates<TRes>
    implements CopyWith$Variables$Query$SearchScheduleUpdates<TRes> {
  _CopyWithImpl$Variables$Query$SearchScheduleUpdates(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchScheduleUpdates _instance;

  final TRes Function(Variables$Query$SearchScheduleUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Query$SearchScheduleUpdates._({
        ..._instance._$data,
        if (after != _undefined) 'after': (after as String?),
        if (before != _undefined) 'before': (before as String?),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (input != _undefined && input != null)
          'input': (input as Input$SearchScheduleUpdateInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchScheduleUpdates<TRes>
    implements CopyWith$Variables$Query$SearchScheduleUpdates<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchScheduleUpdates(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchScheduleUpdateInput? input,
  }) =>
      _res;
}

class Query$SearchScheduleUpdates {
  Query$SearchScheduleUpdates({
    this.searchScheduleUpdates,
    this.$__typename = 'Query',
  });

  factory Query$SearchScheduleUpdates.fromJson(Map<String, dynamic> json) {
    final l$searchScheduleUpdates = json['searchScheduleUpdates'];
    final l$$__typename = json['__typename'];
    return Query$SearchScheduleUpdates(
      searchScheduleUpdates: l$searchScheduleUpdates == null
          ? null
          : Query$SearchScheduleUpdates$searchScheduleUpdates.fromJson(
              (l$searchScheduleUpdates as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchScheduleUpdates$searchScheduleUpdates?
      searchScheduleUpdates;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchScheduleUpdates = searchScheduleUpdates;
    _resultData['searchScheduleUpdates'] = l$searchScheduleUpdates?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchScheduleUpdates = searchScheduleUpdates;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$searchScheduleUpdates,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchScheduleUpdates ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchScheduleUpdates = searchScheduleUpdates;
    final lOther$searchScheduleUpdates = other.searchScheduleUpdates;
    if (l$searchScheduleUpdates != lOther$searchScheduleUpdates) {
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

extension UtilityExtension$Query$SearchScheduleUpdates
    on Query$SearchScheduleUpdates {
  CopyWith$Query$SearchScheduleUpdates<Query$SearchScheduleUpdates>
      get copyWith => CopyWith$Query$SearchScheduleUpdates(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchScheduleUpdates<TRes> {
  factory CopyWith$Query$SearchScheduleUpdates(
    Query$SearchScheduleUpdates instance,
    TRes Function(Query$SearchScheduleUpdates) then,
  ) = _CopyWithImpl$Query$SearchScheduleUpdates;

  factory CopyWith$Query$SearchScheduleUpdates.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchScheduleUpdates;

  TRes call({
    Query$SearchScheduleUpdates$searchScheduleUpdates? searchScheduleUpdates,
    String? $__typename,
  });
  CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates<TRes>
      get searchScheduleUpdates;
}

class _CopyWithImpl$Query$SearchScheduleUpdates<TRes>
    implements CopyWith$Query$SearchScheduleUpdates<TRes> {
  _CopyWithImpl$Query$SearchScheduleUpdates(
    this._instance,
    this._then,
  );

  final Query$SearchScheduleUpdates _instance;

  final TRes Function(Query$SearchScheduleUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchScheduleUpdates = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchScheduleUpdates(
        searchScheduleUpdates: searchScheduleUpdates == _undefined
            ? _instance.searchScheduleUpdates
            : (searchScheduleUpdates
                as Query$SearchScheduleUpdates$searchScheduleUpdates?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates<TRes>
      get searchScheduleUpdates {
    final local$searchScheduleUpdates = _instance.searchScheduleUpdates;
    return local$searchScheduleUpdates == null
        ? CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates.stub(
            _then(_instance))
        : CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates(
            local$searchScheduleUpdates, (e) => call(searchScheduleUpdates: e));
  }
}

class _CopyWithStubImpl$Query$SearchScheduleUpdates<TRes>
    implements CopyWith$Query$SearchScheduleUpdates<TRes> {
  _CopyWithStubImpl$Query$SearchScheduleUpdates(this._res);

  TRes _res;

  call({
    Query$SearchScheduleUpdates$searchScheduleUpdates? searchScheduleUpdates,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates<TRes>
      get searchScheduleUpdates =>
          CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates.stub(_res);
}

const documentNodeQuerySearchScheduleUpdates = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchScheduleUpdates'),
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
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'last')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SearchScheduleUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'searchScheduleUpdates'),
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
        selectionSet: SelectionSetNode(selections: [
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
            selectionSet: SelectionSetNode(selections: [
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'rowId'),
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
                name: NameNode(value: 'utcTime'),
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
                name: NameNode(value: 'accessControllerName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'scheduleToken'),
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$SearchScheduleUpdates$searchScheduleUpdates {
  Query$SearchScheduleUpdates$searchScheduleUpdates({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchScheduleUpdatesConnection',
  });

  factory Query$SearchScheduleUpdates$searchScheduleUpdates.fromJson(
      Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchScheduleUpdates$searchScheduleUpdates(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) =>
              Query$SearchScheduleUpdates$searchScheduleUpdates$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo pageInfo;

  final List<Query$SearchScheduleUpdates$searchScheduleUpdates$nodes>? nodes;

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
    if (other is! Query$SearchScheduleUpdates$searchScheduleUpdates ||
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

extension UtilityExtension$Query$SearchScheduleUpdates$searchScheduleUpdates
    on Query$SearchScheduleUpdates$searchScheduleUpdates {
  CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates<
          Query$SearchScheduleUpdates$searchScheduleUpdates>
      get copyWith =>
          CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates<
    TRes> {
  factory CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates(
    Query$SearchScheduleUpdates$searchScheduleUpdates instance,
    TRes Function(Query$SearchScheduleUpdates$searchScheduleUpdates) then,
  ) = _CopyWithImpl$Query$SearchScheduleUpdates$searchScheduleUpdates;

  factory CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchScheduleUpdates$searchScheduleUpdates;

  TRes call({
    int? totalCount,
    Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo? pageInfo,
    List<Query$SearchScheduleUpdates$searchScheduleUpdates$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo<TRes>
      get pageInfo;
  TRes nodes(
      Iterable<Query$SearchScheduleUpdates$searchScheduleUpdates$nodes>? Function(
              Iterable<
                  CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$nodes<
                      Query$SearchScheduleUpdates$searchScheduleUpdates$nodes>>?)
          _fn);
}

class _CopyWithImpl$Query$SearchScheduleUpdates$searchScheduleUpdates<TRes>
    implements
        CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates<TRes> {
  _CopyWithImpl$Query$SearchScheduleUpdates$searchScheduleUpdates(
    this._instance,
    this._then,
  );

  final Query$SearchScheduleUpdates$searchScheduleUpdates _instance;

  final TRes Function(Query$SearchScheduleUpdates$searchScheduleUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchScheduleUpdates$searchScheduleUpdates(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<
                Query$SearchScheduleUpdates$searchScheduleUpdates$nodes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$SearchScheduleUpdates$searchScheduleUpdates$nodes>? Function(
                  Iterable<
                      CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$nodes<
                          Query$SearchScheduleUpdates$searchScheduleUpdates$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) =>
              CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$nodes(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$SearchScheduleUpdates$searchScheduleUpdates<TRes>
    implements
        CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates<TRes> {
  _CopyWithStubImpl$Query$SearchScheduleUpdates$searchScheduleUpdates(
      this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo? pageInfo,
    List<Query$SearchScheduleUpdates$searchScheduleUpdates$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo
              .stub(_res);

  nodes(_fn) => _res;
}

class Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo {
  Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo(
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
    if (other is! Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo ||
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

extension UtilityExtension$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo
    on Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo {
  CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo<
          Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo>
      get copyWith =>
          CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo<
    TRes> {
  factory CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo(
    Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo instance,
    TRes Function(Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo)
        then,
  ) = _CopyWithImpl$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo;

  factory CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo<
        TRes>
    implements
        CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo<
            TRes> {
  _CopyWithImpl$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo _instance;

  final TRes Function(
      Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
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
      ));
}

class _CopyWithStubImpl$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo<
        TRes>
    implements
        CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$SearchScheduleUpdates$searchScheduleUpdates$pageInfo(
      this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}

class Query$SearchScheduleUpdates$searchScheduleUpdates$nodes {
  Query$SearchScheduleUpdates$searchScheduleUpdates$nodes({
    required this.rowId,
    required this.accessControllerId,
    required this.utcTime,
    this.topic2,
    this.siteId,
    this.siteName,
    this.accessControllerName,
    this.scheduleToken,
    this.$__typename = 'ScheduleUpdateEventsIndexResult',
  });

  factory Query$SearchScheduleUpdates$searchScheduleUpdates$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$rowId = json['rowId'];
    final l$accessControllerId = json['accessControllerId'];
    final l$utcTime = json['utcTime'];
    final l$topic2 = json['topic2'];
    final l$siteId = json['siteId'];
    final l$siteName = json['siteName'];
    final l$accessControllerName = json['accessControllerName'];
    final l$scheduleToken = json['scheduleToken'];
    final l$$__typename = json['__typename'];
    return Query$SearchScheduleUpdates$searchScheduleUpdates$nodes(
      rowId: (l$rowId as int),
      accessControllerId: (l$accessControllerId as String),
      utcTime: DateTime.parse((l$utcTime as String)),
      topic2: (l$topic2 as String?),
      siteId: (l$siteId as String?),
      siteName: (l$siteName as String?),
      accessControllerName: (l$accessControllerName as String?),
      scheduleToken: (l$scheduleToken as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int rowId;

  final String accessControllerId;

  final DateTime utcTime;

  final String? topic2;

  final String? siteId;

  final String? siteName;

  final String? accessControllerName;

  final String? scheduleToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rowId = rowId;
    _resultData['rowId'] = l$rowId;
    final l$accessControllerId = accessControllerId;
    _resultData['accessControllerId'] = l$accessControllerId;
    final l$utcTime = utcTime;
    _resultData['utcTime'] = l$utcTime.toIso8601String();
    final l$topic2 = topic2;
    _resultData['topic2'] = l$topic2;
    final l$siteId = siteId;
    _resultData['siteId'] = l$siteId;
    final l$siteName = siteName;
    _resultData['siteName'] = l$siteName;
    final l$accessControllerName = accessControllerName;
    _resultData['accessControllerName'] = l$accessControllerName;
    final l$scheduleToken = scheduleToken;
    _resultData['scheduleToken'] = l$scheduleToken;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rowId = rowId;
    final l$accessControllerId = accessControllerId;
    final l$utcTime = utcTime;
    final l$topic2 = topic2;
    final l$siteId = siteId;
    final l$siteName = siteName;
    final l$accessControllerName = accessControllerName;
    final l$scheduleToken = scheduleToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rowId,
      l$accessControllerId,
      l$utcTime,
      l$topic2,
      l$siteId,
      l$siteName,
      l$accessControllerName,
      l$scheduleToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchScheduleUpdates$searchScheduleUpdates$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$rowId = rowId;
    final lOther$rowId = other.rowId;
    if (l$rowId != lOther$rowId) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$utcTime = utcTime;
    final lOther$utcTime = other.utcTime;
    if (l$utcTime != lOther$utcTime) {
      return false;
    }
    final l$topic2 = topic2;
    final lOther$topic2 = other.topic2;
    if (l$topic2 != lOther$topic2) {
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
    final l$accessControllerName = accessControllerName;
    final lOther$accessControllerName = other.accessControllerName;
    if (l$accessControllerName != lOther$accessControllerName) {
      return false;
    }
    final l$scheduleToken = scheduleToken;
    final lOther$scheduleToken = other.scheduleToken;
    if (l$scheduleToken != lOther$scheduleToken) {
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

extension UtilityExtension$Query$SearchScheduleUpdates$searchScheduleUpdates$nodes
    on Query$SearchScheduleUpdates$searchScheduleUpdates$nodes {
  CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$nodes<
          Query$SearchScheduleUpdates$searchScheduleUpdates$nodes>
      get copyWith =>
          CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$nodes<
    TRes> {
  factory CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$nodes(
    Query$SearchScheduleUpdates$searchScheduleUpdates$nodes instance,
    TRes Function(Query$SearchScheduleUpdates$searchScheduleUpdates$nodes) then,
  ) = _CopyWithImpl$Query$SearchScheduleUpdates$searchScheduleUpdates$nodes;

  factory CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchScheduleUpdates$searchScheduleUpdates$nodes;

  TRes call({
    int? rowId,
    String? accessControllerId,
    DateTime? utcTime,
    String? topic2,
    String? siteId,
    String? siteName,
    String? accessControllerName,
    String? scheduleToken,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchScheduleUpdates$searchScheduleUpdates$nodes<
        TRes>
    implements
        CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$nodes<TRes> {
  _CopyWithImpl$Query$SearchScheduleUpdates$searchScheduleUpdates$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchScheduleUpdates$searchScheduleUpdates$nodes _instance;

  final TRes Function(Query$SearchScheduleUpdates$searchScheduleUpdates$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rowId = _undefined,
    Object? accessControllerId = _undefined,
    Object? utcTime = _undefined,
    Object? topic2 = _undefined,
    Object? siteId = _undefined,
    Object? siteName = _undefined,
    Object? accessControllerName = _undefined,
    Object? scheduleToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchScheduleUpdates$searchScheduleUpdates$nodes(
        rowId: rowId == _undefined || rowId == null
            ? _instance.rowId
            : (rowId as int),
        accessControllerId:
            accessControllerId == _undefined || accessControllerId == null
                ? _instance.accessControllerId
                : (accessControllerId as String),
        utcTime: utcTime == _undefined || utcTime == null
            ? _instance.utcTime
            : (utcTime as DateTime),
        topic2: topic2 == _undefined ? _instance.topic2 : (topic2 as String?),
        siteId: siteId == _undefined ? _instance.siteId : (siteId as String?),
        siteName:
            siteName == _undefined ? _instance.siteName : (siteName as String?),
        accessControllerName: accessControllerName == _undefined
            ? _instance.accessControllerName
            : (accessControllerName as String?),
        scheduleToken: scheduleToken == _undefined
            ? _instance.scheduleToken
            : (scheduleToken as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchScheduleUpdates$searchScheduleUpdates$nodes<
        TRes>
    implements
        CopyWith$Query$SearchScheduleUpdates$searchScheduleUpdates$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchScheduleUpdates$searchScheduleUpdates$nodes(
      this._res);

  TRes _res;

  call({
    int? rowId,
    String? accessControllerId,
    DateTime? utcTime,
    String? topic2,
    String? siteId,
    String? siteName,
    String? accessControllerName,
    String? scheduleToken,
    String? $__typename,
  }) =>
      _res;
}
