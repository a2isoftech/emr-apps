import '../../fragments/weighbridge_configuration_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchWeighbridgeConfigurations {
  factory Variables$Query$SearchWeighbridgeConfigurations({
    String? query,
    String? yardId,
    int? first,
    String? after,
    int? last,
    String? before,
  }) => Variables$Query$SearchWeighbridgeConfigurations._({
    if (query != null) r'query': query,
    if (yardId != null) r'yardId': yardId,
    if (first != null) r'first': first,
    if (after != null) r'after': after,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
  });

  Variables$Query$SearchWeighbridgeConfigurations._(this._$data);

  factory Variables$Query$SearchWeighbridgeConfigurations.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    if (data.containsKey('yardId')) {
      final l$yardId = data['yardId'];
      result$data['yardId'] = (l$yardId as String?);
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
    return Variables$Query$SearchWeighbridgeConfigurations._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get query => (_$data['query'] as String?);

  String? get yardId => (_$data['yardId'] as String?);

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
    if (_$data.containsKey('yardId')) {
      final l$yardId = yardId;
      result$data['yardId'] = l$yardId;
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

  CopyWith$Variables$Query$SearchWeighbridgeConfigurations<
    Variables$Query$SearchWeighbridgeConfigurations
  >
  get copyWith =>
      CopyWith$Variables$Query$SearchWeighbridgeConfigurations(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchWeighbridgeConfigurations ||
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
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (_$data.containsKey('yardId') != other._$data.containsKey('yardId')) {
      return false;
    }
    if (l$yardId != lOther$yardId) {
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
    final l$yardId = yardId;
    final l$first = first;
    final l$after = after;
    final l$last = last;
    final l$before = before;
    return Object.hashAll([
      _$data.containsKey('query') ? l$query : const {},
      _$data.containsKey('yardId') ? l$yardId : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchWeighbridgeConfigurations<TRes> {
  factory CopyWith$Variables$Query$SearchWeighbridgeConfigurations(
    Variables$Query$SearchWeighbridgeConfigurations instance,
    TRes Function(Variables$Query$SearchWeighbridgeConfigurations) then,
  ) = _CopyWithImpl$Variables$Query$SearchWeighbridgeConfigurations;

  factory CopyWith$Variables$Query$SearchWeighbridgeConfigurations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$SearchWeighbridgeConfigurations;

  TRes call({
    String? query,
    String? yardId,
    int? first,
    String? after,
    int? last,
    String? before,
  });
}

class _CopyWithImpl$Variables$Query$SearchWeighbridgeConfigurations<TRes>
    implements CopyWith$Variables$Query$SearchWeighbridgeConfigurations<TRes> {
  _CopyWithImpl$Variables$Query$SearchWeighbridgeConfigurations(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchWeighbridgeConfigurations _instance;

  final TRes Function(Variables$Query$SearchWeighbridgeConfigurations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? yardId = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
  }) => _then(
    Variables$Query$SearchWeighbridgeConfigurations._({
      ..._instance._$data,
      if (query != _undefined) 'query': (query as String?),
      if (yardId != _undefined) 'yardId': (yardId as String?),
      if (first != _undefined) 'first': (first as int?),
      if (after != _undefined) 'after': (after as String?),
      if (last != _undefined) 'last': (last as int?),
      if (before != _undefined) 'before': (before as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchWeighbridgeConfigurations<TRes>
    implements CopyWith$Variables$Query$SearchWeighbridgeConfigurations<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchWeighbridgeConfigurations(this._res);

  TRes _res;

  call({
    String? query,
    String? yardId,
    int? first,
    String? after,
    int? last,
    String? before,
  }) => _res;
}

class Query$SearchWeighbridgeConfigurations {
  Query$SearchWeighbridgeConfigurations({
    this.searchWeighbridgeConfigurations,
    this.$__typename = 'Query',
  });

  factory Query$SearchWeighbridgeConfigurations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$searchWeighbridgeConfigurations =
        json['searchWeighbridgeConfigurations'];
    final l$$__typename = json['__typename'];
    return Query$SearchWeighbridgeConfigurations(
      searchWeighbridgeConfigurations: l$searchWeighbridgeConfigurations == null
          ? null
          : Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations.fromJson(
              (l$searchWeighbridgeConfigurations as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations?
  searchWeighbridgeConfigurations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchWeighbridgeConfigurations = searchWeighbridgeConfigurations;
    _resultData['searchWeighbridgeConfigurations'] =
        l$searchWeighbridgeConfigurations?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchWeighbridgeConfigurations = searchWeighbridgeConfigurations;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchWeighbridgeConfigurations, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchWeighbridgeConfigurations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchWeighbridgeConfigurations = searchWeighbridgeConfigurations;
    final lOther$searchWeighbridgeConfigurations =
        other.searchWeighbridgeConfigurations;
    if (l$searchWeighbridgeConfigurations !=
        lOther$searchWeighbridgeConfigurations) {
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

extension UtilityExtension$Query$SearchWeighbridgeConfigurations
    on Query$SearchWeighbridgeConfigurations {
  CopyWith$Query$SearchWeighbridgeConfigurations<
    Query$SearchWeighbridgeConfigurations
  >
  get copyWith =>
      CopyWith$Query$SearchWeighbridgeConfigurations(this, (i) => i);
}

abstract class CopyWith$Query$SearchWeighbridgeConfigurations<TRes> {
  factory CopyWith$Query$SearchWeighbridgeConfigurations(
    Query$SearchWeighbridgeConfigurations instance,
    TRes Function(Query$SearchWeighbridgeConfigurations) then,
  ) = _CopyWithImpl$Query$SearchWeighbridgeConfigurations;

  factory CopyWith$Query$SearchWeighbridgeConfigurations.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchWeighbridgeConfigurations;

  TRes call({
    Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations?
    searchWeighbridgeConfigurations,
    String? $__typename,
  });
  CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations<
    TRes
  >
  get searchWeighbridgeConfigurations;
}

class _CopyWithImpl$Query$SearchWeighbridgeConfigurations<TRes>
    implements CopyWith$Query$SearchWeighbridgeConfigurations<TRes> {
  _CopyWithImpl$Query$SearchWeighbridgeConfigurations(
    this._instance,
    this._then,
  );

  final Query$SearchWeighbridgeConfigurations _instance;

  final TRes Function(Query$SearchWeighbridgeConfigurations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchWeighbridgeConfigurations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchWeighbridgeConfigurations(
      searchWeighbridgeConfigurations:
          searchWeighbridgeConfigurations == _undefined
          ? _instance.searchWeighbridgeConfigurations
          : (searchWeighbridgeConfigurations
                as Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations<
    TRes
  >
  get searchWeighbridgeConfigurations {
    final local$searchWeighbridgeConfigurations =
        _instance.searchWeighbridgeConfigurations;
    return local$searchWeighbridgeConfigurations == null
        ? CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations(
            local$searchWeighbridgeConfigurations,
            (e) => call(searchWeighbridgeConfigurations: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchWeighbridgeConfigurations<TRes>
    implements CopyWith$Query$SearchWeighbridgeConfigurations<TRes> {
  _CopyWithStubImpl$Query$SearchWeighbridgeConfigurations(this._res);

  TRes _res;

  call({
    Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations?
    searchWeighbridgeConfigurations,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations<
    TRes
  >
  get searchWeighbridgeConfigurations =>
      CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations.stub(
        _res,
      );
}

const documentNodeQuerySearchWeighbridgeConfigurations = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchWeighbridgeConfigurations'),
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
          variable: VariableNode(name: NameNode(value: 'yardId')),
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
            name: NameNode(value: 'searchWeighbridgeConfigurations'),
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
                      name: NameNode(value: 'yardId'),
                      value: VariableNode(name: NameNode(value: 'yardId')),
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
                      FragmentSpreadNode(
                        name: NameNode(
                          value: 'WeighbridgeConfigurationFragment',
                        ),
                        directives: [],
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
    fragmentDefinitionWeighbridgeConfigurationFragment,
  ],
);

class Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations {
  Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchWeighbridgeConfigurationsConnection',
  });

  factory Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Fragment$WeighbridgeConfigurationFragment.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo
  pageInfo;

  final List<Fragment$WeighbridgeConfigurationFragment>? nodes;

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
            is! Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations ||
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

extension UtilityExtension$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations
    on Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations {
  CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations<
    Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations
  >
  get copyWith =>
      CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations<
  TRes
> {
  factory CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations(
    Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations
    instance,
    TRes Function(
      Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations,
    )
    then,
  ) = _CopyWithImpl$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations;

  factory CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations;

  TRes call({
    int? totalCount,
    Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo?
    pageInfo,
    List<Fragment$WeighbridgeConfigurationFragment>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo<
    TRes
  >
  get pageInfo;
  TRes nodes(
    Iterable<Fragment$WeighbridgeConfigurationFragment>? Function(
      Iterable<
        CopyWith$Fragment$WeighbridgeConfigurationFragment<
          Fragment$WeighbridgeConfigurationFragment
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations<
  TRes
>
    implements
        CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations<
          TRes
        > {
  _CopyWithImpl$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations(
    this._instance,
    this._then,
  );

  final Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations
  _instance;

  final TRes Function(
    Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Fragment$WeighbridgeConfigurationFragment>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo<
    TRes
  >
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Fragment$WeighbridgeConfigurationFragment>? Function(
      Iterable<
        CopyWith$Fragment$WeighbridgeConfigurationFragment<
          Fragment$WeighbridgeConfigurationFragment
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Fragment$WeighbridgeConfigurationFragment(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations<
  TRes
>
    implements
        CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo?
    pageInfo,
    List<Fragment$WeighbridgeConfigurationFragment>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo<
    TRes
  >
  get pageInfo =>
      CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo {
  Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo(
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
            is! Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo ||
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

extension UtilityExtension$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo
    on Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo {
  CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo<
    Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo<
  TRes
> {
  factory CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo(
    Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo
    instance,
    TRes Function(
      Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo;

  factory CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo
  _instance;

  final TRes Function(
    Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo,
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
    Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo(
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

class _CopyWithStubImpl$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchWeighbridgeConfigurations$searchWeighbridgeConfigurations$pageInfo(
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
