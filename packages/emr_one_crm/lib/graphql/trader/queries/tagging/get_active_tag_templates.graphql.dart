import 'package:gql/ast.dart';

class Variables$Query$GetTagNames {
  factory Variables$Query$GetTagNames({
    required String input,
    int? first,
    int? last,
    String? before,
    String? after,
    required String query,
  }) =>
      Variables$Query$GetTagNames._({
        r'input': input,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        r'query': query,
      });

  Variables$Query$GetTagNames._(this._$data);

  factory Variables$Query$GetTagNames.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = (l$input as String);
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    final l$query = data['query'];
    result$data['query'] = (l$query as String);
    return Variables$Query$GetTagNames._(result$data);
  }

  Map<String, dynamic> _$data;

  String get input => (_$data['input'] as String);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  String get query => (_$data['query'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input;
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    final l$query = query;
    result$data['query'] = l$query;
    return result$data;
  }

  CopyWith$Variables$Query$GetTagNames<Variables$Query$GetTagNames>
      get copyWith => CopyWith$Variables$Query$GetTagNames(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetTagNames ||
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
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    final l$first = first;
    final l$last = last;
    final l$before = before;
    final l$after = after;
    final l$query = query;
    return Object.hashAll([
      l$input,
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
      l$query,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetTagNames<TRes> {
  factory CopyWith$Variables$Query$GetTagNames(
    Variables$Query$GetTagNames instance,
    TRes Function(Variables$Query$GetTagNames) then,
  ) = _CopyWithImpl$Variables$Query$GetTagNames;

  factory CopyWith$Variables$Query$GetTagNames.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTagNames;

  TRes call({
    String? input,
    int? first,
    int? last,
    String? before,
    String? after,
    String? query,
  });
}

class _CopyWithImpl$Variables$Query$GetTagNames<TRes>
    implements CopyWith$Variables$Query$GetTagNames<TRes> {
  _CopyWithImpl$Variables$Query$GetTagNames(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTagNames _instance;

  final TRes Function(Variables$Query$GetTagNames) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? query = _undefined,
  }) =>
      _then(Variables$Query$GetTagNames._({
        ..._instance._$data,
        if (input != _undefined && input != null) 'input': (input as String),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as String?),
        if (after != _undefined) 'after': (after as String?),
        if (query != _undefined && query != null) 'query': (query as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTagNames<TRes>
    implements CopyWith$Variables$Query$GetTagNames<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTagNames(this._res);

  TRes _res;

  call({
    String? input,
    int? first,
    int? last,
    String? before,
    String? after,
    String? query,
  }) =>
      _res;
}

class Query$GetTagNames {
  Query$GetTagNames({
    this.tagTemplates,
    this.$__typename = 'Query',
  });

  factory Query$GetTagNames.fromJson(Map<String, dynamic> json) {
    final l$tagTemplates = json['tagTemplates'];
    final l$$__typename = json['__typename'];
    return Query$GetTagNames(
      tagTemplates: l$tagTemplates == null
          ? null
          : Query$GetTagNames$tagTemplates.fromJson(
              (l$tagTemplates as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTagNames$tagTemplates? tagTemplates;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tagTemplates = tagTemplates;
    _resultData['tagTemplates'] = l$tagTemplates?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tagTemplates = tagTemplates;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$tagTemplates,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTagNames || runtimeType != other.runtimeType) {
      return false;
    }
    final l$tagTemplates = tagTemplates;
    final lOther$tagTemplates = other.tagTemplates;
    if (l$tagTemplates != lOther$tagTemplates) {
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

extension UtilityExtension$Query$GetTagNames on Query$GetTagNames {
  CopyWith$Query$GetTagNames<Query$GetTagNames> get copyWith =>
      CopyWith$Query$GetTagNames(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTagNames<TRes> {
  factory CopyWith$Query$GetTagNames(
    Query$GetTagNames instance,
    TRes Function(Query$GetTagNames) then,
  ) = _CopyWithImpl$Query$GetTagNames;

  factory CopyWith$Query$GetTagNames.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTagNames;

  TRes call({
    Query$GetTagNames$tagTemplates? tagTemplates,
    String? $__typename,
  });
  CopyWith$Query$GetTagNames$tagTemplates<TRes> get tagTemplates;
}

class _CopyWithImpl$Query$GetTagNames<TRes>
    implements CopyWith$Query$GetTagNames<TRes> {
  _CopyWithImpl$Query$GetTagNames(
    this._instance,
    this._then,
  );

  final Query$GetTagNames _instance;

  final TRes Function(Query$GetTagNames) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tagTemplates = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTagNames(
        tagTemplates: tagTemplates == _undefined
            ? _instance.tagTemplates
            : (tagTemplates as Query$GetTagNames$tagTemplates?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTagNames$tagTemplates<TRes> get tagTemplates {
    final local$tagTemplates = _instance.tagTemplates;
    return local$tagTemplates == null
        ? CopyWith$Query$GetTagNames$tagTemplates.stub(_then(_instance))
        : CopyWith$Query$GetTagNames$tagTemplates(
            local$tagTemplates, (e) => call(tagTemplates: e));
  }
}

class _CopyWithStubImpl$Query$GetTagNames<TRes>
    implements CopyWith$Query$GetTagNames<TRes> {
  _CopyWithStubImpl$Query$GetTagNames(this._res);

  TRes _res;

  call({
    Query$GetTagNames$tagTemplates? tagTemplates,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTagNames$tagTemplates<TRes> get tagTemplates =>
      CopyWith$Query$GetTagNames$tagTemplates.stub(_res);
}

const documentNodeQueryGetTagNames = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTagNames'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
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
        variable: VariableNode(name: NameNode(value: 'query')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'tagTemplates'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'territoryCode'),
            value: VariableNode(name: NameNode(value: 'input')),
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
            name: NameNode(value: 'before'),
            value: VariableNode(name: NameNode(value: 'before')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
          ArgumentNode(
            name: NameNode(value: 'searchText'),
            value: VariableNode(name: NameNode(value: 'query')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: 'endCursor'),
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'totalCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: 'templateId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'territory'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'category'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'reason'),
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

class Query$GetTagNames$tagTemplates {
  Query$GetTagNames$tagTemplates({
    required this.pageInfo,
    required this.totalCount,
    this.nodes,
    this.$__typename = 'TagTemplatesConnection',
  });

  factory Query$GetTagNames$tagTemplates.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetTagNames$tagTemplates(
      pageInfo: Query$GetTagNames$tagTemplates$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => Query$GetTagNames$tagTemplates$nodes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTagNames$tagTemplates$pageInfo pageInfo;

  final int totalCount;

  final List<Query$GetTagNames$tagTemplates$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$totalCount = totalCount;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$totalCount,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTagNames$tagTemplates ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
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

extension UtilityExtension$Query$GetTagNames$tagTemplates
    on Query$GetTagNames$tagTemplates {
  CopyWith$Query$GetTagNames$tagTemplates<Query$GetTagNames$tagTemplates>
      get copyWith => CopyWith$Query$GetTagNames$tagTemplates(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTagNames$tagTemplates<TRes> {
  factory CopyWith$Query$GetTagNames$tagTemplates(
    Query$GetTagNames$tagTemplates instance,
    TRes Function(Query$GetTagNames$tagTemplates) then,
  ) = _CopyWithImpl$Query$GetTagNames$tagTemplates;

  factory CopyWith$Query$GetTagNames$tagTemplates.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTagNames$tagTemplates;

  TRes call({
    Query$GetTagNames$tagTemplates$pageInfo? pageInfo,
    int? totalCount,
    List<Query$GetTagNames$tagTemplates$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetTagNames$tagTemplates$pageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$GetTagNames$tagTemplates$nodes>? Function(
              Iterable<
                  CopyWith$Query$GetTagNames$tagTemplates$nodes<
                      Query$GetTagNames$tagTemplates$nodes>>?)
          _fn);
}

class _CopyWithImpl$Query$GetTagNames$tagTemplates<TRes>
    implements CopyWith$Query$GetTagNames$tagTemplates<TRes> {
  _CopyWithImpl$Query$GetTagNames$tagTemplates(
    this._instance,
    this._then,
  );

  final Query$GetTagNames$tagTemplates _instance;

  final TRes Function(Query$GetTagNames$tagTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTagNames$tagTemplates(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$GetTagNames$tagTemplates$pageInfo),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$GetTagNames$tagTemplates$nodes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTagNames$tagTemplates$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetTagNames$tagTemplates$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$GetTagNames$tagTemplates$nodes>? Function(
                  Iterable<
                      CopyWith$Query$GetTagNames$tagTemplates$nodes<
                          Query$GetTagNames$tagTemplates$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes
              ?.map((e) => CopyWith$Query$GetTagNames$tagTemplates$nodes(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$GetTagNames$tagTemplates<TRes>
    implements CopyWith$Query$GetTagNames$tagTemplates<TRes> {
  _CopyWithStubImpl$Query$GetTagNames$tagTemplates(this._res);

  TRes _res;

  call({
    Query$GetTagNames$tagTemplates$pageInfo? pageInfo,
    int? totalCount,
    List<Query$GetTagNames$tagTemplates$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTagNames$tagTemplates$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetTagNames$tagTemplates$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$GetTagNames$tagTemplates$pageInfo {
  Query$GetTagNames$tagTemplates$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    required this.hasPreviousPage,
    this.startCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetTagNames$tagTemplates$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetTagNames$tagTemplates$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      endCursor: (l$endCursor as String?),
      hasPreviousPage: (l$hasPreviousPage as bool),
      startCursor: (l$startCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final String? endCursor;

  final bool hasPreviousPage;

  final String? startCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
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
    final l$hasNextPage = hasNextPage;
    final l$endCursor = endCursor;
    final l$hasPreviousPage = hasPreviousPage;
    final l$startCursor = startCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$endCursor,
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
    if (other is! Query$GetTagNames$tagTemplates$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
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

extension UtilityExtension$Query$GetTagNames$tagTemplates$pageInfo
    on Query$GetTagNames$tagTemplates$pageInfo {
  CopyWith$Query$GetTagNames$tagTemplates$pageInfo<
          Query$GetTagNames$tagTemplates$pageInfo>
      get copyWith => CopyWith$Query$GetTagNames$tagTemplates$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTagNames$tagTemplates$pageInfo<TRes> {
  factory CopyWith$Query$GetTagNames$tagTemplates$pageInfo(
    Query$GetTagNames$tagTemplates$pageInfo instance,
    TRes Function(Query$GetTagNames$tagTemplates$pageInfo) then,
  ) = _CopyWithImpl$Query$GetTagNames$tagTemplates$pageInfo;

  factory CopyWith$Query$GetTagNames$tagTemplates$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTagNames$tagTemplates$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? endCursor,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTagNames$tagTemplates$pageInfo<TRes>
    implements CopyWith$Query$GetTagNames$tagTemplates$pageInfo<TRes> {
  _CopyWithImpl$Query$GetTagNames$tagTemplates$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetTagNames$tagTemplates$pageInfo _instance;

  final TRes Function(Query$GetTagNames$tagTemplates$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTagNames$tagTemplates$pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
                ? _instance.hasPreviousPage
                : (hasPreviousPage as bool),
        startCursor: startCursor == _undefined
            ? _instance.startCursor
            : (startCursor as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTagNames$tagTemplates$pageInfo<TRes>
    implements CopyWith$Query$GetTagNames$tagTemplates$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetTagNames$tagTemplates$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? endCursor,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetTagNames$tagTemplates$nodes {
  Query$GetTagNames$tagTemplates$nodes({
    required this.active,
    required this.id,
    required this.templateId,
    required this.territory,
    required this.category,
    required this.reason,
    this.$__typename = 'TagTemplate',
  });

  factory Query$GetTagNames$tagTemplates$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$active = json['active'];
    final l$id = json['id'];
    final l$templateId = json['templateId'];
    final l$territory = json['territory'];
    final l$category = json['category'];
    final l$reason = json['reason'];
    final l$$__typename = json['__typename'];
    return Query$GetTagNames$tagTemplates$nodes(
      active: (l$active as bool),
      id: (l$id as String),
      templateId: (l$templateId as int),
      territory: (l$territory as String),
      category: (l$category as String),
      reason: (l$reason as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool active;

  final String id;

  final int templateId;

  final String territory;

  final String category;

  final String reason;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$active = active;
    _resultData['active'] = l$active;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$templateId = templateId;
    _resultData['templateId'] = l$templateId;
    final l$territory = territory;
    _resultData['territory'] = l$territory;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$active = active;
    final l$id = id;
    final l$templateId = templateId;
    final l$territory = territory;
    final l$category = category;
    final l$reason = reason;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$active,
      l$id,
      l$templateId,
      l$territory,
      l$category,
      l$reason,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTagNames$tagTemplates$nodes ||
        runtimeType != other.runtimeType) {
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
    final l$templateId = templateId;
    final lOther$templateId = other.templateId;
    if (l$templateId != lOther$templateId) {
      return false;
    }
    final l$territory = territory;
    final lOther$territory = other.territory;
    if (l$territory != lOther$territory) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
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

extension UtilityExtension$Query$GetTagNames$tagTemplates$nodes
    on Query$GetTagNames$tagTemplates$nodes {
  CopyWith$Query$GetTagNames$tagTemplates$nodes<
          Query$GetTagNames$tagTemplates$nodes>
      get copyWith => CopyWith$Query$GetTagNames$tagTemplates$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTagNames$tagTemplates$nodes<TRes> {
  factory CopyWith$Query$GetTagNames$tagTemplates$nodes(
    Query$GetTagNames$tagTemplates$nodes instance,
    TRes Function(Query$GetTagNames$tagTemplates$nodes) then,
  ) = _CopyWithImpl$Query$GetTagNames$tagTemplates$nodes;

  factory CopyWith$Query$GetTagNames$tagTemplates$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTagNames$tagTemplates$nodes;

  TRes call({
    bool? active,
    String? id,
    int? templateId,
    String? territory,
    String? category,
    String? reason,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTagNames$tagTemplates$nodes<TRes>
    implements CopyWith$Query$GetTagNames$tagTemplates$nodes<TRes> {
  _CopyWithImpl$Query$GetTagNames$tagTemplates$nodes(
    this._instance,
    this._then,
  );

  final Query$GetTagNames$tagTemplates$nodes _instance;

  final TRes Function(Query$GetTagNames$tagTemplates$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? active = _undefined,
    Object? id = _undefined,
    Object? templateId = _undefined,
    Object? territory = _undefined,
    Object? category = _undefined,
    Object? reason = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTagNames$tagTemplates$nodes(
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        templateId: templateId == _undefined || templateId == null
            ? _instance.templateId
            : (templateId as int),
        territory: territory == _undefined || territory == null
            ? _instance.territory
            : (territory as String),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as String),
        reason: reason == _undefined || reason == null
            ? _instance.reason
            : (reason as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTagNames$tagTemplates$nodes<TRes>
    implements CopyWith$Query$GetTagNames$tagTemplates$nodes<TRes> {
  _CopyWithStubImpl$Query$GetTagNames$tagTemplates$nodes(this._res);

  TRes _res;

  call({
    bool? active,
    String? id,
    int? templateId,
    String? territory,
    String? category,
    String? reason,
    String? $__typename,
  }) =>
      _res;
}
