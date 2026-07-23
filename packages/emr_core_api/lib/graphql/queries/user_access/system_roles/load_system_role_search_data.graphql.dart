import '../../../fragments/system_roles_fragment.graphql.dart';
import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$LoadSystemRoleSearchData {
  factory Variables$Query$LoadSystemRoleSearchData({
    String? name,
    bool? active,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$SystemRoleSortInput>? order,
  }) => Variables$Query$LoadSystemRoleSearchData._({
    if (name != null) r'name': name,
    if (active != null) r'active': active,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (order != null) r'order': order,
  });

  Variables$Query$LoadSystemRoleSearchData._(this._$data);

  factory Variables$Query$LoadSystemRoleSearchData.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = (l$active as bool?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
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
            (e) =>
                Input$SystemRoleSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    return Variables$Query$LoadSystemRoleSearchData._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  bool? get active => (_$data['active'] as bool?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  List<Input$SystemRoleSortInput>? get order =>
      (_$data['order'] as List<Input$SystemRoleSortInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
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

  CopyWith$Variables$Query$LoadSystemRoleSearchData<
    Variables$Query$LoadSystemRoleSearchData
  >
  get copyWith =>
      CopyWith$Variables$Query$LoadSystemRoleSearchData(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$LoadSystemRoleSearchData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
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
    final l$name = name;
    final l$active = active;
    final l$before = before;
    final l$after = after;
    final l$first = first;
    final l$last = last;
    final l$order = order;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
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

abstract class CopyWith$Variables$Query$LoadSystemRoleSearchData<TRes> {
  factory CopyWith$Variables$Query$LoadSystemRoleSearchData(
    Variables$Query$LoadSystemRoleSearchData instance,
    TRes Function(Variables$Query$LoadSystemRoleSearchData) then,
  ) = _CopyWithImpl$Variables$Query$LoadSystemRoleSearchData;

  factory CopyWith$Variables$Query$LoadSystemRoleSearchData.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$LoadSystemRoleSearchData;

  TRes call({
    String? name,
    bool? active,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$SystemRoleSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$LoadSystemRoleSearchData<TRes>
    implements CopyWith$Variables$Query$LoadSystemRoleSearchData<TRes> {
  _CopyWithImpl$Variables$Query$LoadSystemRoleSearchData(
    this._instance,
    this._then,
  );

  final Variables$Query$LoadSystemRoleSearchData _instance;

  final TRes Function(Variables$Query$LoadSystemRoleSearchData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? active = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$LoadSystemRoleSearchData._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
      if (active != _undefined) 'active': (active as bool?),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (order != _undefined)
        'order': (order as List<Input$SystemRoleSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$LoadSystemRoleSearchData<TRes>
    implements CopyWith$Variables$Query$LoadSystemRoleSearchData<TRes> {
  _CopyWithStubImpl$Variables$Query$LoadSystemRoleSearchData(this._res);

  TRes _res;

  call({
    String? name,
    bool? active,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$SystemRoleSortInput>? order,
  }) => _res;
}

class Query$LoadSystemRoleSearchData {
  Query$LoadSystemRoleSearchData({
    this.systemRoles,
    this.$__typename = 'Query',
  });

  factory Query$LoadSystemRoleSearchData.fromJson(Map<String, dynamic> json) {
    final l$systemRoles = json['systemRoles'];
    final l$$__typename = json['__typename'];
    return Query$LoadSystemRoleSearchData(
      systemRoles: l$systemRoles == null
          ? null
          : Query$LoadSystemRoleSearchData$systemRoles.fromJson(
              (l$systemRoles as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$LoadSystemRoleSearchData$systemRoles? systemRoles;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$systemRoles = systemRoles;
    _resultData['systemRoles'] = l$systemRoles?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$systemRoles = systemRoles;
    final l$$__typename = $__typename;
    return Object.hashAll([l$systemRoles, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LoadSystemRoleSearchData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$systemRoles = systemRoles;
    final lOther$systemRoles = other.systemRoles;
    if (l$systemRoles != lOther$systemRoles) {
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

extension UtilityExtension$Query$LoadSystemRoleSearchData
    on Query$LoadSystemRoleSearchData {
  CopyWith$Query$LoadSystemRoleSearchData<Query$LoadSystemRoleSearchData>
  get copyWith => CopyWith$Query$LoadSystemRoleSearchData(this, (i) => i);
}

abstract class CopyWith$Query$LoadSystemRoleSearchData<TRes> {
  factory CopyWith$Query$LoadSystemRoleSearchData(
    Query$LoadSystemRoleSearchData instance,
    TRes Function(Query$LoadSystemRoleSearchData) then,
  ) = _CopyWithImpl$Query$LoadSystemRoleSearchData;

  factory CopyWith$Query$LoadSystemRoleSearchData.stub(TRes res) =
      _CopyWithStubImpl$Query$LoadSystemRoleSearchData;

  TRes call({
    Query$LoadSystemRoleSearchData$systemRoles? systemRoles,
    String? $__typename,
  });
  CopyWith$Query$LoadSystemRoleSearchData$systemRoles<TRes> get systemRoles;
}

class _CopyWithImpl$Query$LoadSystemRoleSearchData<TRes>
    implements CopyWith$Query$LoadSystemRoleSearchData<TRes> {
  _CopyWithImpl$Query$LoadSystemRoleSearchData(this._instance, this._then);

  final Query$LoadSystemRoleSearchData _instance;

  final TRes Function(Query$LoadSystemRoleSearchData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? systemRoles = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadSystemRoleSearchData(
      systemRoles: systemRoles == _undefined
          ? _instance.systemRoles
          : (systemRoles as Query$LoadSystemRoleSearchData$systemRoles?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LoadSystemRoleSearchData$systemRoles<TRes> get systemRoles {
    final local$systemRoles = _instance.systemRoles;
    return local$systemRoles == null
        ? CopyWith$Query$LoadSystemRoleSearchData$systemRoles.stub(
            _then(_instance),
          )
        : CopyWith$Query$LoadSystemRoleSearchData$systemRoles(
            local$systemRoles,
            (e) => call(systemRoles: e),
          );
  }
}

class _CopyWithStubImpl$Query$LoadSystemRoleSearchData<TRes>
    implements CopyWith$Query$LoadSystemRoleSearchData<TRes> {
  _CopyWithStubImpl$Query$LoadSystemRoleSearchData(this._res);

  TRes _res;

  call({
    Query$LoadSystemRoleSearchData$systemRoles? systemRoles,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LoadSystemRoleSearchData$systemRoles<TRes> get systemRoles =>
      CopyWith$Query$LoadSystemRoleSearchData$systemRoles.stub(_res);
}

const documentNodeQueryLoadSystemRoleSearchData = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'LoadSystemRoleSearchData'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'name')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'active')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
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
              name: NameNode(value: 'SystemRoleSortInput'),
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
            name: NameNode(value: 'systemRoles'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: VariableNode(name: NameNode(value: 'name')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'active'),
                      value: VariableNode(name: NameNode(value: 'active')),
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
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'SystemRolesFragment'),
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
    fragmentDefinitionSystemRolesFragment,
  ],
);

class Query$LoadSystemRoleSearchData$systemRoles {
  Query$LoadSystemRoleSearchData$systemRoles({
    required this.totalCount,
    this.nodes,
    required this.pageInfo,
    this.$__typename = 'SystemRolesConnection',
  });

  factory Query$LoadSystemRoleSearchData$systemRoles.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$LoadSystemRoleSearchData$systemRoles(
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Fragment$SystemRolesFragment.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      pageInfo: Query$LoadSystemRoleSearchData$systemRoles$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Fragment$SystemRolesFragment>? nodes;

  final Query$LoadSystemRoleSearchData$systemRoles$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$nodes = nodes;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LoadSystemRoleSearchData$systemRoles ||
        runtimeType != other.runtimeType) {
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
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$LoadSystemRoleSearchData$systemRoles
    on Query$LoadSystemRoleSearchData$systemRoles {
  CopyWith$Query$LoadSystemRoleSearchData$systemRoles<
    Query$LoadSystemRoleSearchData$systemRoles
  >
  get copyWith =>
      CopyWith$Query$LoadSystemRoleSearchData$systemRoles(this, (i) => i);
}

abstract class CopyWith$Query$LoadSystemRoleSearchData$systemRoles<TRes> {
  factory CopyWith$Query$LoadSystemRoleSearchData$systemRoles(
    Query$LoadSystemRoleSearchData$systemRoles instance,
    TRes Function(Query$LoadSystemRoleSearchData$systemRoles) then,
  ) = _CopyWithImpl$Query$LoadSystemRoleSearchData$systemRoles;

  factory CopyWith$Query$LoadSystemRoleSearchData$systemRoles.stub(TRes res) =
      _CopyWithStubImpl$Query$LoadSystemRoleSearchData$systemRoles;

  TRes call({
    int? totalCount,
    List<Fragment$SystemRolesFragment>? nodes,
    Query$LoadSystemRoleSearchData$systemRoles$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Fragment$SystemRolesFragment>? Function(
      Iterable<
        CopyWith$Fragment$SystemRolesFragment<Fragment$SystemRolesFragment>
      >?,
    )
    _fn,
  );
  CopyWith$Query$LoadSystemRoleSearchData$systemRoles$pageInfo<TRes>
  get pageInfo;
}

class _CopyWithImpl$Query$LoadSystemRoleSearchData$systemRoles<TRes>
    implements CopyWith$Query$LoadSystemRoleSearchData$systemRoles<TRes> {
  _CopyWithImpl$Query$LoadSystemRoleSearchData$systemRoles(
    this._instance,
    this._then,
  );

  final Query$LoadSystemRoleSearchData$systemRoles _instance;

  final TRes Function(Query$LoadSystemRoleSearchData$systemRoles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadSystemRoleSearchData$systemRoles(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Fragment$SystemRolesFragment>?),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$LoadSystemRoleSearchData$systemRoles$pageInfo),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Fragment$SystemRolesFragment>? Function(
      Iterable<
        CopyWith$Fragment$SystemRolesFragment<Fragment$SystemRolesFragment>
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Fragment$SystemRolesFragment(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Query$LoadSystemRoleSearchData$systemRoles$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$LoadSystemRoleSearchData$systemRoles$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }
}

class _CopyWithStubImpl$Query$LoadSystemRoleSearchData$systemRoles<TRes>
    implements CopyWith$Query$LoadSystemRoleSearchData$systemRoles<TRes> {
  _CopyWithStubImpl$Query$LoadSystemRoleSearchData$systemRoles(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Fragment$SystemRolesFragment>? nodes,
    Query$LoadSystemRoleSearchData$systemRoles$pageInfo? pageInfo,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;

  CopyWith$Query$LoadSystemRoleSearchData$systemRoles$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$LoadSystemRoleSearchData$systemRoles$pageInfo.stub(_res);
}

class Query$LoadSystemRoleSearchData$systemRoles$pageInfo {
  Query$LoadSystemRoleSearchData$systemRoles$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$LoadSystemRoleSearchData$systemRoles$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$$__typename = json['__typename'];
    return Query$LoadSystemRoleSearchData$systemRoles$pageInfo(
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
    if (other is! Query$LoadSystemRoleSearchData$systemRoles$pageInfo ||
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

extension UtilityExtension$Query$LoadSystemRoleSearchData$systemRoles$pageInfo
    on Query$LoadSystemRoleSearchData$systemRoles$pageInfo {
  CopyWith$Query$LoadSystemRoleSearchData$systemRoles$pageInfo<
    Query$LoadSystemRoleSearchData$systemRoles$pageInfo
  >
  get copyWith => CopyWith$Query$LoadSystemRoleSearchData$systemRoles$pageInfo(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$LoadSystemRoleSearchData$systemRoles$pageInfo<
  TRes
> {
  factory CopyWith$Query$LoadSystemRoleSearchData$systemRoles$pageInfo(
    Query$LoadSystemRoleSearchData$systemRoles$pageInfo instance,
    TRes Function(Query$LoadSystemRoleSearchData$systemRoles$pageInfo) then,
  ) = _CopyWithImpl$Query$LoadSystemRoleSearchData$systemRoles$pageInfo;

  factory CopyWith$Query$LoadSystemRoleSearchData$systemRoles$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LoadSystemRoleSearchData$systemRoles$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LoadSystemRoleSearchData$systemRoles$pageInfo<TRes>
    implements
        CopyWith$Query$LoadSystemRoleSearchData$systemRoles$pageInfo<TRes> {
  _CopyWithImpl$Query$LoadSystemRoleSearchData$systemRoles$pageInfo(
    this._instance,
    this._then,
  );

  final Query$LoadSystemRoleSearchData$systemRoles$pageInfo _instance;

  final TRes Function(Query$LoadSystemRoleSearchData$systemRoles$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadSystemRoleSearchData$systemRoles$pageInfo(
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

class _CopyWithStubImpl$Query$LoadSystemRoleSearchData$systemRoles$pageInfo<
  TRes
>
    implements
        CopyWith$Query$LoadSystemRoleSearchData$systemRoles$pageInfo<TRes> {
  _CopyWithStubImpl$Query$LoadSystemRoleSearchData$systemRoles$pageInfo(
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
