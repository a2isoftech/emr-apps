import '../../fragments/direct_query_fragment.graphql.dart';
import '../../fragments/parameter_definition_fields.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$workspaceLibrarySearch {
  factory Variables$Query$workspaceLibrarySearch(
          {required Input$SearchWorkspaceLibraryInput input}) =>
      Variables$Query$workspaceLibrarySearch._({
        r'input': input,
      });

  Variables$Query$workspaceLibrarySearch._(this._$data);

  factory Variables$Query$workspaceLibrarySearch.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchWorkspaceLibraryInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Query$workspaceLibrarySearch._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchWorkspaceLibraryInput get input =>
      (_$data['input'] as Input$SearchWorkspaceLibraryInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$workspaceLibrarySearch<
          Variables$Query$workspaceLibrarySearch>
      get copyWith => CopyWith$Variables$Query$workspaceLibrarySearch(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$workspaceLibrarySearch ||
        runtimeType != other.runtimeType) {
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
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Query$workspaceLibrarySearch<TRes> {
  factory CopyWith$Variables$Query$workspaceLibrarySearch(
    Variables$Query$workspaceLibrarySearch instance,
    TRes Function(Variables$Query$workspaceLibrarySearch) then,
  ) = _CopyWithImpl$Variables$Query$workspaceLibrarySearch;

  factory CopyWith$Variables$Query$workspaceLibrarySearch.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$workspaceLibrarySearch;

  TRes call({Input$SearchWorkspaceLibraryInput? input});
}

class _CopyWithImpl$Variables$Query$workspaceLibrarySearch<TRes>
    implements CopyWith$Variables$Query$workspaceLibrarySearch<TRes> {
  _CopyWithImpl$Variables$Query$workspaceLibrarySearch(
    this._instance,
    this._then,
  );

  final Variables$Query$workspaceLibrarySearch _instance;

  final TRes Function(Variables$Query$workspaceLibrarySearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$workspaceLibrarySearch._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$SearchWorkspaceLibraryInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$workspaceLibrarySearch<TRes>
    implements CopyWith$Variables$Query$workspaceLibrarySearch<TRes> {
  _CopyWithStubImpl$Variables$Query$workspaceLibrarySearch(this._res);

  TRes _res;

  call({Input$SearchWorkspaceLibraryInput? input}) => _res;
}

class Query$workspaceLibrarySearch {
  Query$workspaceLibrarySearch({
    this.workspaceLibrarySearch,
    this.$__typename = 'Query',
  });

  factory Query$workspaceLibrarySearch.fromJson(Map<String, dynamic> json) {
    final l$workspaceLibrarySearch = json['workspaceLibrarySearch'];
    final l$$__typename = json['__typename'];
    return Query$workspaceLibrarySearch(
      workspaceLibrarySearch: l$workspaceLibrarySearch == null
          ? null
          : Query$workspaceLibrarySearch$workspaceLibrarySearch.fromJson(
              (l$workspaceLibrarySearch as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$workspaceLibrarySearch$workspaceLibrarySearch?
      workspaceLibrarySearch;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$workspaceLibrarySearch = workspaceLibrarySearch;
    _resultData['workspaceLibrarySearch'] = l$workspaceLibrarySearch?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$workspaceLibrarySearch = workspaceLibrarySearch;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$workspaceLibrarySearch,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$workspaceLibrarySearch ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$workspaceLibrarySearch = workspaceLibrarySearch;
    final lOther$workspaceLibrarySearch = other.workspaceLibrarySearch;
    if (l$workspaceLibrarySearch != lOther$workspaceLibrarySearch) {
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

extension UtilityExtension$Query$workspaceLibrarySearch
    on Query$workspaceLibrarySearch {
  CopyWith$Query$workspaceLibrarySearch<Query$workspaceLibrarySearch>
      get copyWith => CopyWith$Query$workspaceLibrarySearch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$workspaceLibrarySearch<TRes> {
  factory CopyWith$Query$workspaceLibrarySearch(
    Query$workspaceLibrarySearch instance,
    TRes Function(Query$workspaceLibrarySearch) then,
  ) = _CopyWithImpl$Query$workspaceLibrarySearch;

  factory CopyWith$Query$workspaceLibrarySearch.stub(TRes res) =
      _CopyWithStubImpl$Query$workspaceLibrarySearch;

  TRes call({
    Query$workspaceLibrarySearch$workspaceLibrarySearch? workspaceLibrarySearch,
    String? $__typename,
  });
  CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch<TRes>
      get workspaceLibrarySearch;
}

class _CopyWithImpl$Query$workspaceLibrarySearch<TRes>
    implements CopyWith$Query$workspaceLibrarySearch<TRes> {
  _CopyWithImpl$Query$workspaceLibrarySearch(
    this._instance,
    this._then,
  );

  final Query$workspaceLibrarySearch _instance;

  final TRes Function(Query$workspaceLibrarySearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? workspaceLibrarySearch = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$workspaceLibrarySearch(
        workspaceLibrarySearch: workspaceLibrarySearch == _undefined
            ? _instance.workspaceLibrarySearch
            : (workspaceLibrarySearch
                as Query$workspaceLibrarySearch$workspaceLibrarySearch?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch<TRes>
      get workspaceLibrarySearch {
    final local$workspaceLibrarySearch = _instance.workspaceLibrarySearch;
    return local$workspaceLibrarySearch == null
        ? CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch.stub(
            _then(_instance))
        : CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch(
            local$workspaceLibrarySearch,
            (e) => call(workspaceLibrarySearch: e));
  }
}

class _CopyWithStubImpl$Query$workspaceLibrarySearch<TRes>
    implements CopyWith$Query$workspaceLibrarySearch<TRes> {
  _CopyWithStubImpl$Query$workspaceLibrarySearch(this._res);

  TRes _res;

  call({
    Query$workspaceLibrarySearch$workspaceLibrarySearch? workspaceLibrarySearch,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch<TRes>
      get workspaceLibrarySearch =>
          CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch.stub(
              _res);
}

const documentNodeQueryworkspaceLibrarySearch = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'workspaceLibrarySearch'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SearchWorkspaceLibraryInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'workspaceLibrarySearch'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: IntValueNode(value: '50'),
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'DirectQuery'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'DirectQueryFields'),
                    directives: [],
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
  fragmentDefinitionDirectQueryFields,
  fragmentDefinitionDirectQueryParameterFields,
]);

class Query$workspaceLibrarySearch$workspaceLibrarySearch {
  Query$workspaceLibrarySearch$workspaceLibrarySearch({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'WorkspaceLibrarySearchConnection',
  });

  factory Query$workspaceLibrarySearch$workspaceLibrarySearch.fromJson(
      Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$workspaceLibrarySearch$workspaceLibrarySearch(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo pageInfo;

  final List<Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes>? nodes;

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
    if (other is! Query$workspaceLibrarySearch$workspaceLibrarySearch ||
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

extension UtilityExtension$Query$workspaceLibrarySearch$workspaceLibrarySearch
    on Query$workspaceLibrarySearch$workspaceLibrarySearch {
  CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch<
          Query$workspaceLibrarySearch$workspaceLibrarySearch>
      get copyWith =>
          CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch<
    TRes> {
  factory CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch(
    Query$workspaceLibrarySearch$workspaceLibrarySearch instance,
    TRes Function(Query$workspaceLibrarySearch$workspaceLibrarySearch) then,
  ) = _CopyWithImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch;

  factory CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch.stub(
          TRes res) =
      _CopyWithStubImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch;

  TRes call({
    int? totalCount,
    Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo? pageInfo,
    List<Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo<TRes>
      get pageInfo;
  TRes nodes(
      Iterable<Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes>? Function(
              Iterable<
                  CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes<
                      Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes>>?)
          _fn);
}

class _CopyWithImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch<TRes>
    implements
        CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch<TRes> {
  _CopyWithImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch(
    this._instance,
    this._then,
  );

  final Query$workspaceLibrarySearch$workspaceLibrarySearch _instance;

  final TRes Function(Query$workspaceLibrarySearch$workspaceLibrarySearch)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$workspaceLibrarySearch$workspaceLibrarySearch(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<
                Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes>? Function(
                  Iterable<
                      CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes<
                          Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) =>
              CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch<
        TRes>
    implements
        CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch<TRes> {
  _CopyWithStubImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch(
      this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo? pageInfo,
    List<Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo
              .stub(_res);

  nodes(_fn) => _res;
}

class Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo {
  Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$$__typename = json['__typename'];
    return Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo(
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
            is! Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo ||
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

extension UtilityExtension$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo
    on Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo {
  CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo<
          Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo>
      get copyWith =>
          CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo<
    TRes> {
  factory CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo(
    Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo instance,
    TRes Function(Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo)
        then,
  ) = _CopyWithImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo;

  factory CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo<
        TRes>
    implements
        CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo<
            TRes> {
  _CopyWithImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo(
    this._instance,
    this._then,
  );

  final Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo _instance;

  final TRes Function(
      Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo(
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo<
        TRes>
    implements
        CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch$pageInfo(
      this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  }) =>
      _res;
}

class Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes {
  Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes(
      {required this.$__typename});

  factory Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "DirectQuery":
        return Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes
    on Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes {
  CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes<
          Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes>
      get copyWith =>
          CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery)
        directQuery,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "DirectQuery":
        return directQuery(this
            as Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery)?
        directQuery,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "DirectQuery":
        if (directQuery != null) {
          return directQuery(this
              as Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes<
    TRes> {
  factory CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes(
    Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes instance,
    TRes Function(Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes)
        then,
  ) = _CopyWithImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes;

  factory CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes<
        TRes>
    implements
        CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes<
            TRes> {
  _CopyWithImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes(
    this._instance,
    this._then,
  );

  final Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes _instance;

  final TRes Function(Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes<
        TRes>
    implements
        CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes<
            TRes> {
  _CopyWithStubImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery
    implements
        Fragment$DirectQueryFields,
        Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes {
  Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery({
    required this.id,
    required this.title,
    required this.permissions,
    required this.rql,
    required this.kind,
    required this.parameters,
    this.$__typename = 'DirectQuery',
  });

  factory Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$permissions = json['permissions'];
    final l$rql = json['rql'];
    final l$kind = json['kind'];
    final l$parameters = json['parameters'];
    final l$$__typename = json['__typename'];
    return Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery(
      id: (l$id as String),
      title: (l$title as String),
      permissions:
          (l$permissions as List<dynamic>).map((e) => (e as String)).toList(),
      rql: (l$rql as String),
      kind: fromJson$Enum$DirectQueryKind((l$kind as String)),
      parameters: (l$parameters as List<dynamic>)
          .map((e) => Fragment$DirectQueryParameterFields.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final List<String> permissions;

  final String rql;

  final Enum$DirectQueryKind kind;

  final List<Fragment$DirectQueryParameterFields> parameters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e).toList();
    final l$rql = rql;
    _resultData['rql'] = l$rql;
    final l$kind = kind;
    _resultData['kind'] = toJson$Enum$DirectQueryKind(l$kind);
    final l$parameters = parameters;
    _resultData['parameters'] = l$parameters.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$permissions = permissions;
    final l$rql = rql;
    final l$kind = kind;
    final l$parameters = parameters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      Object.hashAll(l$permissions.map((v) => v)),
      l$rql,
      l$kind,
      Object.hashAll(l$parameters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (l$permissions.length != lOther$permissions.length) {
      return false;
    }
    for (int i = 0; i < l$permissions.length; i++) {
      final l$permissions$entry = l$permissions[i];
      final lOther$permissions$entry = lOther$permissions[i];
      if (l$permissions$entry != lOther$permissions$entry) {
        return false;
      }
    }
    final l$rql = rql;
    final lOther$rql = other.rql;
    if (l$rql != lOther$rql) {
      return false;
    }
    final l$kind = kind;
    final lOther$kind = other.kind;
    if (l$kind != lOther$kind) {
      return false;
    }
    final l$parameters = parameters;
    final lOther$parameters = other.parameters;
    if (l$parameters.length != lOther$parameters.length) {
      return false;
    }
    for (int i = 0; i < l$parameters.length; i++) {
      final l$parameters$entry = l$parameters[i];
      final lOther$parameters$entry = lOther$parameters[i];
      if (l$parameters$entry != lOther$parameters$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery
    on Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery {
  CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery<
          Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery>
      get copyWith =>
          CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery<
    TRes> {
  factory CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery(
    Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery
        instance,
    TRes Function(
            Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery)
        then,
  ) = _CopyWithImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery;

  factory CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery.stub(
          TRes res) =
      _CopyWithStubImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery;

  TRes call({
    String? id,
    String? title,
    List<String>? permissions,
    String? rql,
    Enum$DirectQueryKind? kind,
    List<Fragment$DirectQueryParameterFields>? parameters,
    String? $__typename,
  });
  TRes parameters(
      Iterable<Fragment$DirectQueryParameterFields> Function(
              Iterable<
                  CopyWith$Fragment$DirectQueryParameterFields<
                      Fragment$DirectQueryParameterFields>>)
          _fn);
}

class _CopyWithImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery<
        TRes>
    implements
        CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery<
            TRes> {
  _CopyWithImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery(
    this._instance,
    this._then,
  );

  final Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery
      _instance;

  final TRes Function(
          Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? permissions = _undefined,
    Object? rql = _undefined,
    Object? kind = _undefined,
    Object? parameters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        permissions: permissions == _undefined || permissions == null
            ? _instance.permissions
            : (permissions as List<String>),
        rql: rql == _undefined || rql == null ? _instance.rql : (rql as String),
        kind: kind == _undefined || kind == null
            ? _instance.kind
            : (kind as Enum$DirectQueryKind),
        parameters: parameters == _undefined || parameters == null
            ? _instance.parameters
            : (parameters as List<Fragment$DirectQueryParameterFields>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes parameters(
          Iterable<Fragment$DirectQueryParameterFields> Function(
                  Iterable<
                      CopyWith$Fragment$DirectQueryParameterFields<
                          Fragment$DirectQueryParameterFields>>)
              _fn) =>
      call(
          parameters: _fn(_instance.parameters
              .map((e) => CopyWith$Fragment$DirectQueryParameterFields(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery<
        TRes>
    implements
        CopyWith$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery<
            TRes> {
  _CopyWithStubImpl$Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery(
      this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    List<String>? permissions,
    String? rql,
    Enum$DirectQueryKind? kind,
    List<Fragment$DirectQueryParameterFields>? parameters,
    String? $__typename,
  }) =>
      _res;

  parameters(_fn) => _res;
}
