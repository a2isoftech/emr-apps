import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$TagTemplates {
  factory Variables$Query$TagTemplates({
    required Input$GetTagTemplatesInput input,
    String? after,
    String? before,
    int? first,
    int? last,
    List<Input$TagTemplateSortInput>? order,
  }) => Variables$Query$TagTemplates._({
    r'input': input,
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (order != null) r'order': order,
  });

  Variables$Query$TagTemplates._(this._$data);

  factory Variables$Query$TagTemplates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$GetTagTemplatesInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
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
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) => Input$TagTemplateSortInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    return Variables$Query$TagTemplates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetTagTemplatesInput get input =>
      (_$data['input'] as Input$GetTagTemplatesInput);

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  List<Input$TagTemplateSortInput>? get order =>
      (_$data['order'] as List<Input$TagTemplateSortInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
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
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$TagTemplates<Variables$Query$TagTemplates>
  get copyWith => CopyWith$Variables$Query$TagTemplates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$TagTemplates ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
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
    final l$after = after;
    final l$before = before;
    final l$first = first;
    final l$last = last;
    final l$order = order;
    return Object.hashAll([
      l$input,
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('order')
          ? l$order == null
                ? null
                : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$TagTemplates<TRes> {
  factory CopyWith$Variables$Query$TagTemplates(
    Variables$Query$TagTemplates instance,
    TRes Function(Variables$Query$TagTemplates) then,
  ) = _CopyWithImpl$Variables$Query$TagTemplates;

  factory CopyWith$Variables$Query$TagTemplates.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TagTemplates;

  TRes call({
    Input$GetTagTemplatesInput? input,
    String? after,
    String? before,
    int? first,
    int? last,
    List<Input$TagTemplateSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$TagTemplates<TRes>
    implements CopyWith$Variables$Query$TagTemplates<TRes> {
  _CopyWithImpl$Variables$Query$TagTemplates(this._instance, this._then);

  final Variables$Query$TagTemplates _instance;

  final TRes Function(Variables$Query$TagTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$TagTemplates._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$GetTagTemplatesInput),
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (order != _undefined)
        'order': (order as List<Input$TagTemplateSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$TagTemplates<TRes>
    implements CopyWith$Variables$Query$TagTemplates<TRes> {
  _CopyWithStubImpl$Variables$Query$TagTemplates(this._res);

  TRes _res;

  call({
    Input$GetTagTemplatesInput? input,
    String? after,
    String? before,
    int? first,
    int? last,
    List<Input$TagTemplateSortInput>? order,
  }) => _res;
}

class Query$TagTemplates {
  Query$TagTemplates({this.tagTemplates, this.$__typename = 'Query'});

  factory Query$TagTemplates.fromJson(Map<String, dynamic> json) {
    final l$tagTemplates = json['tagTemplates'];
    final l$$__typename = json['__typename'];
    return Query$TagTemplates(
      tagTemplates: l$tagTemplates == null
          ? null
          : Query$TagTemplates$tagTemplates.fromJson(
              (l$tagTemplates as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TagTemplates$tagTemplates? tagTemplates;

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
    return Object.hashAll([l$tagTemplates, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TagTemplates || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$TagTemplates on Query$TagTemplates {
  CopyWith$Query$TagTemplates<Query$TagTemplates> get copyWith =>
      CopyWith$Query$TagTemplates(this, (i) => i);
}

abstract class CopyWith$Query$TagTemplates<TRes> {
  factory CopyWith$Query$TagTemplates(
    Query$TagTemplates instance,
    TRes Function(Query$TagTemplates) then,
  ) = _CopyWithImpl$Query$TagTemplates;

  factory CopyWith$Query$TagTemplates.stub(TRes res) =
      _CopyWithStubImpl$Query$TagTemplates;

  TRes call({
    Query$TagTemplates$tagTemplates? tagTemplates,
    String? $__typename,
  });
  CopyWith$Query$TagTemplates$tagTemplates<TRes> get tagTemplates;
}

class _CopyWithImpl$Query$TagTemplates<TRes>
    implements CopyWith$Query$TagTemplates<TRes> {
  _CopyWithImpl$Query$TagTemplates(this._instance, this._then);

  final Query$TagTemplates _instance;

  final TRes Function(Query$TagTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tagTemplates = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TagTemplates(
      tagTemplates: tagTemplates == _undefined
          ? _instance.tagTemplates
          : (tagTemplates as Query$TagTemplates$tagTemplates?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TagTemplates$tagTemplates<TRes> get tagTemplates {
    final local$tagTemplates = _instance.tagTemplates;
    return local$tagTemplates == null
        ? CopyWith$Query$TagTemplates$tagTemplates.stub(_then(_instance))
        : CopyWith$Query$TagTemplates$tagTemplates(
            local$tagTemplates,
            (e) => call(tagTemplates: e),
          );
  }
}

class _CopyWithStubImpl$Query$TagTemplates<TRes>
    implements CopyWith$Query$TagTemplates<TRes> {
  _CopyWithStubImpl$Query$TagTemplates(this._res);

  TRes _res;

  call({Query$TagTemplates$tagTemplates? tagTemplates, String? $__typename}) =>
      _res;

  CopyWith$Query$TagTemplates$tagTemplates<TRes> get tagTemplates =>
      CopyWith$Query$TagTemplates$tagTemplates.stub(_res);
}

const documentNodeQueryTagTemplates = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TagTemplates'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'GetTagTemplatesInput'),
            isNonNull: true,
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
          variable: VariableNode(name: NameNode(value: 'order')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'TagTemplateSortInput'),
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
            name: NameNode(value: 'tagTemplates'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
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
                name: NameNode(value: 'order'),
                value: VariableNode(name: NameNode(value: 'order')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
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

class Query$TagTemplates$tagTemplates {
  Query$TagTemplates$tagTemplates({
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'TagTemplatesConnection',
  });

  factory Query$TagTemplates$tagTemplates.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TagTemplates$tagTemplates(
      pageInfo: Query$TagTemplates$tagTemplates$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$TagTemplates$tagTemplates$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TagTemplates$tagTemplates$pageInfo pageInfo;

  final List<Query$TagTemplates$tagTemplates$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
    if (other is! Query$TagTemplates$tagTemplates ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$TagTemplates$tagTemplates
    on Query$TagTemplates$tagTemplates {
  CopyWith$Query$TagTemplates$tagTemplates<Query$TagTemplates$tagTemplates>
  get copyWith => CopyWith$Query$TagTemplates$tagTemplates(this, (i) => i);
}

abstract class CopyWith$Query$TagTemplates$tagTemplates<TRes> {
  factory CopyWith$Query$TagTemplates$tagTemplates(
    Query$TagTemplates$tagTemplates instance,
    TRes Function(Query$TagTemplates$tagTemplates) then,
  ) = _CopyWithImpl$Query$TagTemplates$tagTemplates;

  factory CopyWith$Query$TagTemplates$tagTemplates.stub(TRes res) =
      _CopyWithStubImpl$Query$TagTemplates$tagTemplates;

  TRes call({
    Query$TagTemplates$tagTemplates$pageInfo? pageInfo,
    List<Query$TagTemplates$tagTemplates$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$TagTemplates$tagTemplates$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$TagTemplates$tagTemplates$nodes>? Function(
      Iterable<
        CopyWith$Query$TagTemplates$tagTemplates$nodes<
          Query$TagTemplates$tagTemplates$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TagTemplates$tagTemplates<TRes>
    implements CopyWith$Query$TagTemplates$tagTemplates<TRes> {
  _CopyWithImpl$Query$TagTemplates$tagTemplates(this._instance, this._then);

  final Query$TagTemplates$tagTemplates _instance;

  final TRes Function(Query$TagTemplates$tagTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TagTemplates$tagTemplates(
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$TagTemplates$tagTemplates$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$TagTemplates$tagTemplates$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TagTemplates$tagTemplates$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$TagTemplates$tagTemplates$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$TagTemplates$tagTemplates$nodes>? Function(
      Iterable<
        CopyWith$Query$TagTemplates$tagTemplates$nodes<
          Query$TagTemplates$tagTemplates$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$TagTemplates$tagTemplates$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$TagTemplates$tagTemplates<TRes>
    implements CopyWith$Query$TagTemplates$tagTemplates<TRes> {
  _CopyWithStubImpl$Query$TagTemplates$tagTemplates(this._res);

  TRes _res;

  call({
    Query$TagTemplates$tagTemplates$pageInfo? pageInfo,
    List<Query$TagTemplates$tagTemplates$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TagTemplates$tagTemplates$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$TagTemplates$tagTemplates$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$TagTemplates$tagTemplates$pageInfo {
  Query$TagTemplates$tagTemplates$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$TagTemplates$tagTemplates$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$TagTemplates$tagTemplates$pageInfo(
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
    if (other is! Query$TagTemplates$tagTemplates$pageInfo ||
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

extension UtilityExtension$Query$TagTemplates$tagTemplates$pageInfo
    on Query$TagTemplates$tagTemplates$pageInfo {
  CopyWith$Query$TagTemplates$tagTemplates$pageInfo<
    Query$TagTemplates$tagTemplates$pageInfo
  >
  get copyWith =>
      CopyWith$Query$TagTemplates$tagTemplates$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$TagTemplates$tagTemplates$pageInfo<TRes> {
  factory CopyWith$Query$TagTemplates$tagTemplates$pageInfo(
    Query$TagTemplates$tagTemplates$pageInfo instance,
    TRes Function(Query$TagTemplates$tagTemplates$pageInfo) then,
  ) = _CopyWithImpl$Query$TagTemplates$tagTemplates$pageInfo;

  factory CopyWith$Query$TagTemplates$tagTemplates$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$TagTemplates$tagTemplates$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$TagTemplates$tagTemplates$pageInfo<TRes>
    implements CopyWith$Query$TagTemplates$tagTemplates$pageInfo<TRes> {
  _CopyWithImpl$Query$TagTemplates$tagTemplates$pageInfo(
    this._instance,
    this._then,
  );

  final Query$TagTemplates$tagTemplates$pageInfo _instance;

  final TRes Function(Query$TagTemplates$tagTemplates$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TagTemplates$tagTemplates$pageInfo(
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

class _CopyWithStubImpl$Query$TagTemplates$tagTemplates$pageInfo<TRes>
    implements CopyWith$Query$TagTemplates$tagTemplates$pageInfo<TRes> {
  _CopyWithStubImpl$Query$TagTemplates$tagTemplates$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}

class Query$TagTemplates$tagTemplates$nodes {
  Query$TagTemplates$tagTemplates$nodes({
    required this.id,
    required this.category,
    required this.reason,
    this.$__typename = 'TagTemplate',
  });

  factory Query$TagTemplates$tagTemplates$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$category = json['category'];
    final l$reason = json['reason'];
    final l$$__typename = json['__typename'];
    return Query$TagTemplates$tagTemplates$nodes(
      id: (l$id as String),
      category: (l$category as String),
      reason: (l$reason as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String category;

  final String reason;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$id = id;
    final l$category = category;
    final l$reason = reason;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$category, l$reason, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TagTemplates$tagTemplates$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$TagTemplates$tagTemplates$nodes
    on Query$TagTemplates$tagTemplates$nodes {
  CopyWith$Query$TagTemplates$tagTemplates$nodes<
    Query$TagTemplates$tagTemplates$nodes
  >
  get copyWith =>
      CopyWith$Query$TagTemplates$tagTemplates$nodes(this, (i) => i);
}

abstract class CopyWith$Query$TagTemplates$tagTemplates$nodes<TRes> {
  factory CopyWith$Query$TagTemplates$tagTemplates$nodes(
    Query$TagTemplates$tagTemplates$nodes instance,
    TRes Function(Query$TagTemplates$tagTemplates$nodes) then,
  ) = _CopyWithImpl$Query$TagTemplates$tagTemplates$nodes;

  factory CopyWith$Query$TagTemplates$tagTemplates$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$TagTemplates$tagTemplates$nodes;

  TRes call({
    String? id,
    String? category,
    String? reason,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$TagTemplates$tagTemplates$nodes<TRes>
    implements CopyWith$Query$TagTemplates$tagTemplates$nodes<TRes> {
  _CopyWithImpl$Query$TagTemplates$tagTemplates$nodes(
    this._instance,
    this._then,
  );

  final Query$TagTemplates$tagTemplates$nodes _instance;

  final TRes Function(Query$TagTemplates$tagTemplates$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? category = _undefined,
    Object? reason = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TagTemplates$tagTemplates$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      category: category == _undefined || category == null
          ? _instance.category
          : (category as String),
      reason: reason == _undefined || reason == null
          ? _instance.reason
          : (reason as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TagTemplates$tagTemplates$nodes<TRes>
    implements CopyWith$Query$TagTemplates$tagTemplates$nodes<TRes> {
  _CopyWithStubImpl$Query$TagTemplates$tagTemplates$nodes(this._res);

  TRes _res;

  call({String? id, String? category, String? reason, String? $__typename}) =>
      _res;
}
