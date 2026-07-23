import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchElvBatchQuotes {
  factory Variables$Query$SearchElvBatchQuotes({
    required Input$ElvBatchQuotesSearchInput input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$ElvBatchQuotesSearchResultSortInput>? order,
  }) => Variables$Query$SearchElvBatchQuotes._({
    r'input': input,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
    if (order != null) r'order': order,
  });

  Variables$Query$SearchElvBatchQuotes._(this._$data);

  factory Variables$Query$SearchElvBatchQuotes.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$ElvBatchQuotesSearchInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
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
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) => Input$ElvBatchQuotesSearchResultSortInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    return Variables$Query$SearchElvBatchQuotes._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ElvBatchQuotesSearchInput get input =>
      (_$data['input'] as Input$ElvBatchQuotesSearchInput);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  List<Input$ElvBatchQuotesSearchResultSortInput>? get order =>
      (_$data['order'] as List<Input$ElvBatchQuotesSearchResultSortInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
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
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$SearchElvBatchQuotes<
    Variables$Query$SearchElvBatchQuotes
  >
  get copyWith => CopyWith$Variables$Query$SearchElvBatchQuotes(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchElvBatchQuotes ||
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
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != null && lOther$order != null) {
      if (l$order.length != lOther$order.length) {
        return false;
      }
      for (int i = 0; i < l$order.length; i++) {
        final l$order$entry = l$order[i];
        final lOther$order$entry = lOther$order[i];
        if (l$order$entry != lOther$order$entry) {
          return false;
        }
      }
    } else if (l$order != lOther$order) {
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
    final l$order = order;
    return Object.hashAll([
      l$input,
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('order')
          ? l$order == null
                ? null
                : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchElvBatchQuotes<TRes> {
  factory CopyWith$Variables$Query$SearchElvBatchQuotes(
    Variables$Query$SearchElvBatchQuotes instance,
    TRes Function(Variables$Query$SearchElvBatchQuotes) then,
  ) = _CopyWithImpl$Variables$Query$SearchElvBatchQuotes;

  factory CopyWith$Variables$Query$SearchElvBatchQuotes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchElvBatchQuotes;

  TRes call({
    Input$ElvBatchQuotesSearchInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$ElvBatchQuotesSearchResultSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$SearchElvBatchQuotes<TRes>
    implements CopyWith$Variables$Query$SearchElvBatchQuotes<TRes> {
  _CopyWithImpl$Variables$Query$SearchElvBatchQuotes(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchElvBatchQuotes _instance;

  final TRes Function(Variables$Query$SearchElvBatchQuotes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$SearchElvBatchQuotes._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$ElvBatchQuotesSearchInput),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
      if (order != _undefined)
        'order': (order as List<Input$ElvBatchQuotesSearchResultSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchElvBatchQuotes<TRes>
    implements CopyWith$Variables$Query$SearchElvBatchQuotes<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchElvBatchQuotes(this._res);

  TRes _res;

  call({
    Input$ElvBatchQuotesSearchInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$ElvBatchQuotesSearchResultSortInput>? order,
  }) => _res;
}

class Query$SearchElvBatchQuotes {
  Query$SearchElvBatchQuotes({
    this.searchElvBatchQuotes,
    this.$__typename = 'Query',
  });

  factory Query$SearchElvBatchQuotes.fromJson(Map<String, dynamic> json) {
    final l$searchElvBatchQuotes = json['searchElvBatchQuotes'];
    final l$$__typename = json['__typename'];
    return Query$SearchElvBatchQuotes(
      searchElvBatchQuotes: l$searchElvBatchQuotes == null
          ? null
          : Query$SearchElvBatchQuotes$searchElvBatchQuotes.fromJson(
              (l$searchElvBatchQuotes as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchElvBatchQuotes$searchElvBatchQuotes? searchElvBatchQuotes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchElvBatchQuotes = searchElvBatchQuotes;
    _resultData['searchElvBatchQuotes'] = l$searchElvBatchQuotes?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchElvBatchQuotes = searchElvBatchQuotes;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchElvBatchQuotes, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchElvBatchQuotes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchElvBatchQuotes = searchElvBatchQuotes;
    final lOther$searchElvBatchQuotes = other.searchElvBatchQuotes;
    if (l$searchElvBatchQuotes != lOther$searchElvBatchQuotes) {
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

extension UtilityExtension$Query$SearchElvBatchQuotes
    on Query$SearchElvBatchQuotes {
  CopyWith$Query$SearchElvBatchQuotes<Query$SearchElvBatchQuotes>
  get copyWith => CopyWith$Query$SearchElvBatchQuotes(this, (i) => i);
}

abstract class CopyWith$Query$SearchElvBatchQuotes<TRes> {
  factory CopyWith$Query$SearchElvBatchQuotes(
    Query$SearchElvBatchQuotes instance,
    TRes Function(Query$SearchElvBatchQuotes) then,
  ) = _CopyWithImpl$Query$SearchElvBatchQuotes;

  factory CopyWith$Query$SearchElvBatchQuotes.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchElvBatchQuotes;

  TRes call({
    Query$SearchElvBatchQuotes$searchElvBatchQuotes? searchElvBatchQuotes,
    String? $__typename,
  });
  CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes<TRes>
  get searchElvBatchQuotes;
}

class _CopyWithImpl$Query$SearchElvBatchQuotes<TRes>
    implements CopyWith$Query$SearchElvBatchQuotes<TRes> {
  _CopyWithImpl$Query$SearchElvBatchQuotes(this._instance, this._then);

  final Query$SearchElvBatchQuotes _instance;

  final TRes Function(Query$SearchElvBatchQuotes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchElvBatchQuotes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchElvBatchQuotes(
      searchElvBatchQuotes: searchElvBatchQuotes == _undefined
          ? _instance.searchElvBatchQuotes
          : (searchElvBatchQuotes
                as Query$SearchElvBatchQuotes$searchElvBatchQuotes?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes<TRes>
  get searchElvBatchQuotes {
    final local$searchElvBatchQuotes = _instance.searchElvBatchQuotes;
    return local$searchElvBatchQuotes == null
        ? CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes(
            local$searchElvBatchQuotes,
            (e) => call(searchElvBatchQuotes: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchElvBatchQuotes<TRes>
    implements CopyWith$Query$SearchElvBatchQuotes<TRes> {
  _CopyWithStubImpl$Query$SearchElvBatchQuotes(this._res);

  TRes _res;

  call({
    Query$SearchElvBatchQuotes$searchElvBatchQuotes? searchElvBatchQuotes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes<TRes>
  get searchElvBatchQuotes =>
      CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes.stub(_res);
}

const documentNodeQuerySearchElvBatchQuotes = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchElvBatchQuotes'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'ElvBatchQuotesSearchInput'),
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
          variable: VariableNode(name: NameNode(value: 'order')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'ElvBatchQuotesSearchResultSortInput'),
              isNonNull: true,
            ),
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
            name: NameNode(value: 'searchElvBatchQuotes'),
            alias: null,
            arguments: [
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
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
              ArgumentNode(
                name: NameNode(value: 'order'),
                value: VariableNode(name: NameNode(value: 'order')),
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
                        name: NameNode(value: 'batchQuoteBundleId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'accountCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'accountName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'quoteValue'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'postCode'),
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
                        name: NameNode(value: 'yardName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'vehiclesQuoted'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'vinList'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'vrnList'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'status'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'quoteSource'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'leadSource'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'acquisitionType'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'collectionStatus'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'collectionOperatorAccountCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'collectionOperatorAccountName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'collectionDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'createdDate'),
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

class Query$SearchElvBatchQuotes$searchElvBatchQuotes {
  Query$SearchElvBatchQuotes$searchElvBatchQuotes({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchElvBatchQuotesConnection',
  });

  factory Query$SearchElvBatchQuotes$searchElvBatchQuotes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchElvBatchQuotes$searchElvBatchQuotes(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo pageInfo;

  final List<Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes>? nodes;

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
    if (other is! Query$SearchElvBatchQuotes$searchElvBatchQuotes ||
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

extension UtilityExtension$Query$SearchElvBatchQuotes$searchElvBatchQuotes
    on Query$SearchElvBatchQuotes$searchElvBatchQuotes {
  CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes<
    Query$SearchElvBatchQuotes$searchElvBatchQuotes
  >
  get copyWith =>
      CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes(this, (i) => i);
}

abstract class CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes<TRes> {
  factory CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes(
    Query$SearchElvBatchQuotes$searchElvBatchQuotes instance,
    TRes Function(Query$SearchElvBatchQuotes$searchElvBatchQuotes) then,
  ) = _CopyWithImpl$Query$SearchElvBatchQuotes$searchElvBatchQuotes;

  factory CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchElvBatchQuotes$searchElvBatchQuotes;

  TRes call({
    int? totalCount,
    Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo? pageInfo,
    List<Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes<
          Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchElvBatchQuotes$searchElvBatchQuotes<TRes>
    implements CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes<TRes> {
  _CopyWithImpl$Query$SearchElvBatchQuotes$searchElvBatchQuotes(
    this._instance,
    this._then,
  );

  final Query$SearchElvBatchQuotes$searchElvBatchQuotes _instance;

  final TRes Function(Query$SearchElvBatchQuotes$searchElvBatchQuotes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchElvBatchQuotes$searchElvBatchQuotes(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes<
          Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchElvBatchQuotes$searchElvBatchQuotes<TRes>
    implements CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes<TRes> {
  _CopyWithStubImpl$Query$SearchElvBatchQuotes$searchElvBatchQuotes(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo? pageInfo,
    List<Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo {
  Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo(
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
    if (other is! Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo ||
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

extension UtilityExtension$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo
    on Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo {
  CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo<
    Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo<
  TRes
> {
  factory CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo(
    Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo instance,
    TRes Function(Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo)
    then,
  ) = _CopyWithImpl$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo;

  factory CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo _instance;

  final TRes Function(Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo(
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

class _CopyWithStubImpl$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchElvBatchQuotes$searchElvBatchQuotes$pageInfo(
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

class Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes {
  Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes({
    required this.id,
    required this.batchQuoteBundleId,
    this.accountCode,
    this.accountName,
    required this.quoteValue,
    this.postCode,
    required this.yardCode,
    required this.yardName,
    required this.vehiclesQuoted,
    this.vinList,
    this.vrnList,
    required this.status,
    required this.quoteSource,
    required this.leadSource,
    required this.acquisitionType,
    required this.collectionStatus,
    this.collectionOperatorAccountCode,
    this.collectionOperatorAccountName,
    this.collectionDate,
    required this.createdDate,
    this.$__typename = 'ElvBatchQuotesSearchResult',
  });

  factory Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$batchQuoteBundleId = json['batchQuoteBundleId'];
    final l$accountCode = json['accountCode'];
    final l$accountName = json['accountName'];
    final l$quoteValue = json['quoteValue'];
    final l$postCode = json['postCode'];
    final l$yardCode = json['yardCode'];
    final l$yardName = json['yardName'];
    final l$vehiclesQuoted = json['vehiclesQuoted'];
    final l$vinList = json['vinList'];
    final l$vrnList = json['vrnList'];
    final l$status = json['status'];
    final l$quoteSource = json['quoteSource'];
    final l$leadSource = json['leadSource'];
    final l$acquisitionType = json['acquisitionType'];
    final l$collectionStatus = json['collectionStatus'];
    final l$collectionOperatorAccountCode =
        json['collectionOperatorAccountCode'];
    final l$collectionOperatorAccountName =
        json['collectionOperatorAccountName'];
    final l$collectionDate = json['collectionDate'];
    final l$createdDate = json['createdDate'];
    final l$$__typename = json['__typename'];
    return Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes(
      id: (l$id as String),
      batchQuoteBundleId: (l$batchQuoteBundleId as String),
      accountCode: (l$accountCode as String?),
      accountName: (l$accountName as String?),
      quoteValue: (l$quoteValue as num).toDouble(),
      postCode: (l$postCode as String?),
      yardCode: (l$yardCode as String),
      yardName: (l$yardName as String),
      vehiclesQuoted: (l$vehiclesQuoted as int),
      vinList: (l$vinList as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      vrnList: (l$vrnList as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      status: fromJson$Enum$QuoteStatus((l$status as String)),
      quoteSource: fromJson$Enum$QuoteSource((l$quoteSource as String)),
      leadSource: fromJson$Enum$LeadSource((l$leadSource as String)),
      acquisitionType: fromJson$Enum$AcquisitionType(
        (l$acquisitionType as String),
      ),
      collectionStatus: fromJson$Enum$CollectionStatus(
        (l$collectionStatus as String),
      ),
      collectionOperatorAccountCode:
          (l$collectionOperatorAccountCode as String?),
      collectionOperatorAccountName:
          (l$collectionOperatorAccountName as String?),
      collectionDate: l$collectionDate == null
          ? null
          : DateTime.parse((l$collectionDate as String)),
      createdDate: DateTime.parse((l$createdDate as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String batchQuoteBundleId;

  final String? accountCode;

  final String? accountName;

  final double quoteValue;

  final String? postCode;

  final String yardCode;

  final String yardName;

  final int vehiclesQuoted;

  final List<String>? vinList;

  final List<String>? vrnList;

  final Enum$QuoteStatus status;

  final Enum$QuoteSource quoteSource;

  final Enum$LeadSource leadSource;

  final Enum$AcquisitionType acquisitionType;

  final Enum$CollectionStatus collectionStatus;

  final String? collectionOperatorAccountCode;

  final String? collectionOperatorAccountName;

  final DateTime? collectionDate;

  final DateTime createdDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$batchQuoteBundleId = batchQuoteBundleId;
    _resultData['batchQuoteBundleId'] = l$batchQuoteBundleId;
    final l$accountCode = accountCode;
    _resultData['accountCode'] = l$accountCode;
    final l$accountName = accountName;
    _resultData['accountName'] = l$accountName;
    final l$quoteValue = quoteValue;
    _resultData['quoteValue'] = l$quoteValue;
    final l$postCode = postCode;
    _resultData['postCode'] = l$postCode;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$yardName = yardName;
    _resultData['yardName'] = l$yardName;
    final l$vehiclesQuoted = vehiclesQuoted;
    _resultData['vehiclesQuoted'] = l$vehiclesQuoted;
    final l$vinList = vinList;
    _resultData['vinList'] = l$vinList?.map((e) => e).toList();
    final l$vrnList = vrnList;
    _resultData['vrnList'] = l$vrnList?.map((e) => e).toList();
    final l$status = status;
    _resultData['status'] = toJson$Enum$QuoteStatus(l$status);
    final l$quoteSource = quoteSource;
    _resultData['quoteSource'] = toJson$Enum$QuoteSource(l$quoteSource);
    final l$leadSource = leadSource;
    _resultData['leadSource'] = toJson$Enum$LeadSource(l$leadSource);
    final l$acquisitionType = acquisitionType;
    _resultData['acquisitionType'] = toJson$Enum$AcquisitionType(
      l$acquisitionType,
    );
    final l$collectionStatus = collectionStatus;
    _resultData['collectionStatus'] = toJson$Enum$CollectionStatus(
      l$collectionStatus,
    );
    final l$collectionOperatorAccountCode = collectionOperatorAccountCode;
    _resultData['collectionOperatorAccountCode'] =
        l$collectionOperatorAccountCode;
    final l$collectionOperatorAccountName = collectionOperatorAccountName;
    _resultData['collectionOperatorAccountName'] =
        l$collectionOperatorAccountName;
    final l$collectionDate = collectionDate;
    _resultData['collectionDate'] = l$collectionDate?.toIso8601String();
    final l$createdDate = createdDate;
    _resultData['createdDate'] = l$createdDate.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$batchQuoteBundleId = batchQuoteBundleId;
    final l$accountCode = accountCode;
    final l$accountName = accountName;
    final l$quoteValue = quoteValue;
    final l$postCode = postCode;
    final l$yardCode = yardCode;
    final l$yardName = yardName;
    final l$vehiclesQuoted = vehiclesQuoted;
    final l$vinList = vinList;
    final l$vrnList = vrnList;
    final l$status = status;
    final l$quoteSource = quoteSource;
    final l$leadSource = leadSource;
    final l$acquisitionType = acquisitionType;
    final l$collectionStatus = collectionStatus;
    final l$collectionOperatorAccountCode = collectionOperatorAccountCode;
    final l$collectionOperatorAccountName = collectionOperatorAccountName;
    final l$collectionDate = collectionDate;
    final l$createdDate = createdDate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$batchQuoteBundleId,
      l$accountCode,
      l$accountName,
      l$quoteValue,
      l$postCode,
      l$yardCode,
      l$yardName,
      l$vehiclesQuoted,
      l$vinList == null ? null : Object.hashAll(l$vinList.map((v) => v)),
      l$vrnList == null ? null : Object.hashAll(l$vrnList.map((v) => v)),
      l$status,
      l$quoteSource,
      l$leadSource,
      l$acquisitionType,
      l$collectionStatus,
      l$collectionOperatorAccountCode,
      l$collectionOperatorAccountName,
      l$collectionDate,
      l$createdDate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$batchQuoteBundleId = batchQuoteBundleId;
    final lOther$batchQuoteBundleId = other.batchQuoteBundleId;
    if (l$batchQuoteBundleId != lOther$batchQuoteBundleId) {
      return false;
    }
    final l$accountCode = accountCode;
    final lOther$accountCode = other.accountCode;
    if (l$accountCode != lOther$accountCode) {
      return false;
    }
    final l$accountName = accountName;
    final lOther$accountName = other.accountName;
    if (l$accountName != lOther$accountName) {
      return false;
    }
    final l$quoteValue = quoteValue;
    final lOther$quoteValue = other.quoteValue;
    if (l$quoteValue != lOther$quoteValue) {
      return false;
    }
    final l$postCode = postCode;
    final lOther$postCode = other.postCode;
    if (l$postCode != lOther$postCode) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$yardName = yardName;
    final lOther$yardName = other.yardName;
    if (l$yardName != lOther$yardName) {
      return false;
    }
    final l$vehiclesQuoted = vehiclesQuoted;
    final lOther$vehiclesQuoted = other.vehiclesQuoted;
    if (l$vehiclesQuoted != lOther$vehiclesQuoted) {
      return false;
    }
    final l$vinList = vinList;
    final lOther$vinList = other.vinList;
    if (l$vinList != null && lOther$vinList != null) {
      if (l$vinList.length != lOther$vinList.length) {
        return false;
      }
      for (int i = 0; i < l$vinList.length; i++) {
        final l$vinList$entry = l$vinList[i];
        final lOther$vinList$entry = lOther$vinList[i];
        if (l$vinList$entry != lOther$vinList$entry) {
          return false;
        }
      }
    } else if (l$vinList != lOther$vinList) {
      return false;
    }
    final l$vrnList = vrnList;
    final lOther$vrnList = other.vrnList;
    if (l$vrnList != null && lOther$vrnList != null) {
      if (l$vrnList.length != lOther$vrnList.length) {
        return false;
      }
      for (int i = 0; i < l$vrnList.length; i++) {
        final l$vrnList$entry = l$vrnList[i];
        final lOther$vrnList$entry = lOther$vrnList[i];
        if (l$vrnList$entry != lOther$vrnList$entry) {
          return false;
        }
      }
    } else if (l$vrnList != lOther$vrnList) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$quoteSource = quoteSource;
    final lOther$quoteSource = other.quoteSource;
    if (l$quoteSource != lOther$quoteSource) {
      return false;
    }
    final l$leadSource = leadSource;
    final lOther$leadSource = other.leadSource;
    if (l$leadSource != lOther$leadSource) {
      return false;
    }
    final l$acquisitionType = acquisitionType;
    final lOther$acquisitionType = other.acquisitionType;
    if (l$acquisitionType != lOther$acquisitionType) {
      return false;
    }
    final l$collectionStatus = collectionStatus;
    final lOther$collectionStatus = other.collectionStatus;
    if (l$collectionStatus != lOther$collectionStatus) {
      return false;
    }
    final l$collectionOperatorAccountCode = collectionOperatorAccountCode;
    final lOther$collectionOperatorAccountCode =
        other.collectionOperatorAccountCode;
    if (l$collectionOperatorAccountCode !=
        lOther$collectionOperatorAccountCode) {
      return false;
    }
    final l$collectionOperatorAccountName = collectionOperatorAccountName;
    final lOther$collectionOperatorAccountName =
        other.collectionOperatorAccountName;
    if (l$collectionOperatorAccountName !=
        lOther$collectionOperatorAccountName) {
      return false;
    }
    final l$collectionDate = collectionDate;
    final lOther$collectionDate = other.collectionDate;
    if (l$collectionDate != lOther$collectionDate) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
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

extension UtilityExtension$Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes
    on Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes {
  CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes<
    Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes
  >
  get copyWith =>
      CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes<
  TRes
> {
  factory CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes(
    Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes instance,
    TRes Function(Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes) then,
  ) = _CopyWithImpl$Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes;

  factory CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes;

  TRes call({
    String? id,
    String? batchQuoteBundleId,
    String? accountCode,
    String? accountName,
    double? quoteValue,
    String? postCode,
    String? yardCode,
    String? yardName,
    int? vehiclesQuoted,
    List<String>? vinList,
    List<String>? vrnList,
    Enum$QuoteStatus? status,
    Enum$QuoteSource? quoteSource,
    Enum$LeadSource? leadSource,
    Enum$AcquisitionType? acquisitionType,
    Enum$CollectionStatus? collectionStatus,
    String? collectionOperatorAccountCode,
    String? collectionOperatorAccountName,
    DateTime? collectionDate,
    DateTime? createdDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes<TRes>
    implements
        CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes<TRes> {
  _CopyWithImpl$Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes _instance;

  final TRes Function(Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? batchQuoteBundleId = _undefined,
    Object? accountCode = _undefined,
    Object? accountName = _undefined,
    Object? quoteValue = _undefined,
    Object? postCode = _undefined,
    Object? yardCode = _undefined,
    Object? yardName = _undefined,
    Object? vehiclesQuoted = _undefined,
    Object? vinList = _undefined,
    Object? vrnList = _undefined,
    Object? status = _undefined,
    Object? quoteSource = _undefined,
    Object? leadSource = _undefined,
    Object? acquisitionType = _undefined,
    Object? collectionStatus = _undefined,
    Object? collectionOperatorAccountCode = _undefined,
    Object? collectionOperatorAccountName = _undefined,
    Object? collectionDate = _undefined,
    Object? createdDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      batchQuoteBundleId:
          batchQuoteBundleId == _undefined || batchQuoteBundleId == null
          ? _instance.batchQuoteBundleId
          : (batchQuoteBundleId as String),
      accountCode: accountCode == _undefined
          ? _instance.accountCode
          : (accountCode as String?),
      accountName: accountName == _undefined
          ? _instance.accountName
          : (accountName as String?),
      quoteValue: quoteValue == _undefined || quoteValue == null
          ? _instance.quoteValue
          : (quoteValue as double),
      postCode: postCode == _undefined
          ? _instance.postCode
          : (postCode as String?),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      yardName: yardName == _undefined || yardName == null
          ? _instance.yardName
          : (yardName as String),
      vehiclesQuoted: vehiclesQuoted == _undefined || vehiclesQuoted == null
          ? _instance.vehiclesQuoted
          : (vehiclesQuoted as int),
      vinList: vinList == _undefined
          ? _instance.vinList
          : (vinList as List<String>?),
      vrnList: vrnList == _undefined
          ? _instance.vrnList
          : (vrnList as List<String>?),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$QuoteStatus),
      quoteSource: quoteSource == _undefined || quoteSource == null
          ? _instance.quoteSource
          : (quoteSource as Enum$QuoteSource),
      leadSource: leadSource == _undefined || leadSource == null
          ? _instance.leadSource
          : (leadSource as Enum$LeadSource),
      acquisitionType: acquisitionType == _undefined || acquisitionType == null
          ? _instance.acquisitionType
          : (acquisitionType as Enum$AcquisitionType),
      collectionStatus:
          collectionStatus == _undefined || collectionStatus == null
          ? _instance.collectionStatus
          : (collectionStatus as Enum$CollectionStatus),
      collectionOperatorAccountCode: collectionOperatorAccountCode == _undefined
          ? _instance.collectionOperatorAccountCode
          : (collectionOperatorAccountCode as String?),
      collectionOperatorAccountName: collectionOperatorAccountName == _undefined
          ? _instance.collectionOperatorAccountName
          : (collectionOperatorAccountName as String?),
      collectionDate: collectionDate == _undefined
          ? _instance.collectionDate
          : (collectionDate as DateTime?),
      createdDate: createdDate == _undefined || createdDate == null
          ? _instance.createdDate
          : (createdDate as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes<
  TRes
>
    implements
        CopyWith$Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? batchQuoteBundleId,
    String? accountCode,
    String? accountName,
    double? quoteValue,
    String? postCode,
    String? yardCode,
    String? yardName,
    int? vehiclesQuoted,
    List<String>? vinList,
    List<String>? vrnList,
    Enum$QuoteStatus? status,
    Enum$QuoteSource? quoteSource,
    Enum$LeadSource? leadSource,
    Enum$AcquisitionType? acquisitionType,
    Enum$CollectionStatus? collectionStatus,
    String? collectionOperatorAccountCode,
    String? collectionOperatorAccountName,
    DateTime? collectionDate,
    DateTime? createdDate,
    String? $__typename,
  }) => _res;
}
