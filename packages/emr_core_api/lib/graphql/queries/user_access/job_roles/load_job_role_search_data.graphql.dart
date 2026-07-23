import '../../../fragments/job_roles_fragment.graphql.dart';
import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$LoadJobRoleSearchData {
  factory Variables$Query$LoadJobRoleSearchData({
    String? name,
    bool? active,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$JobRoleSortInput>? order,
  }) => Variables$Query$LoadJobRoleSearchData._({
    if (name != null) r'name': name,
    if (active != null) r'active': active,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (order != null) r'order': order,
  });

  Variables$Query$LoadJobRoleSearchData._(this._$data);

  factory Variables$Query$LoadJobRoleSearchData.fromJson(
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
            (e) => Input$JobRoleSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    return Variables$Query$LoadJobRoleSearchData._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  bool? get active => (_$data['active'] as bool?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  List<Input$JobRoleSortInput>? get order =>
      (_$data['order'] as List<Input$JobRoleSortInput>?);

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

  CopyWith$Variables$Query$LoadJobRoleSearchData<
    Variables$Query$LoadJobRoleSearchData
  >
  get copyWith =>
      CopyWith$Variables$Query$LoadJobRoleSearchData(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$LoadJobRoleSearchData ||
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

abstract class CopyWith$Variables$Query$LoadJobRoleSearchData<TRes> {
  factory CopyWith$Variables$Query$LoadJobRoleSearchData(
    Variables$Query$LoadJobRoleSearchData instance,
    TRes Function(Variables$Query$LoadJobRoleSearchData) then,
  ) = _CopyWithImpl$Variables$Query$LoadJobRoleSearchData;

  factory CopyWith$Variables$Query$LoadJobRoleSearchData.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$LoadJobRoleSearchData;

  TRes call({
    String? name,
    bool? active,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$JobRoleSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$LoadJobRoleSearchData<TRes>
    implements CopyWith$Variables$Query$LoadJobRoleSearchData<TRes> {
  _CopyWithImpl$Variables$Query$LoadJobRoleSearchData(
    this._instance,
    this._then,
  );

  final Variables$Query$LoadJobRoleSearchData _instance;

  final TRes Function(Variables$Query$LoadJobRoleSearchData) _then;

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
    Variables$Query$LoadJobRoleSearchData._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
      if (active != _undefined) 'active': (active as bool?),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (order != _undefined)
        'order': (order as List<Input$JobRoleSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$LoadJobRoleSearchData<TRes>
    implements CopyWith$Variables$Query$LoadJobRoleSearchData<TRes> {
  _CopyWithStubImpl$Variables$Query$LoadJobRoleSearchData(this._res);

  TRes _res;

  call({
    String? name,
    bool? active,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$JobRoleSortInput>? order,
  }) => _res;
}

class Query$LoadJobRoleSearchData {
  Query$LoadJobRoleSearchData({this.jobRoles, this.$__typename = 'Query'});

  factory Query$LoadJobRoleSearchData.fromJson(Map<String, dynamic> json) {
    final l$jobRoles = json['jobRoles'];
    final l$$__typename = json['__typename'];
    return Query$LoadJobRoleSearchData(
      jobRoles: l$jobRoles == null
          ? null
          : Query$LoadJobRoleSearchData$jobRoles.fromJson(
              (l$jobRoles as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$LoadJobRoleSearchData$jobRoles? jobRoles;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$jobRoles = jobRoles;
    _resultData['jobRoles'] = l$jobRoles?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$jobRoles = jobRoles;
    final l$$__typename = $__typename;
    return Object.hashAll([l$jobRoles, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LoadJobRoleSearchData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$jobRoles = jobRoles;
    final lOther$jobRoles = other.jobRoles;
    if (l$jobRoles != lOther$jobRoles) {
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

extension UtilityExtension$Query$LoadJobRoleSearchData
    on Query$LoadJobRoleSearchData {
  CopyWith$Query$LoadJobRoleSearchData<Query$LoadJobRoleSearchData>
  get copyWith => CopyWith$Query$LoadJobRoleSearchData(this, (i) => i);
}

abstract class CopyWith$Query$LoadJobRoleSearchData<TRes> {
  factory CopyWith$Query$LoadJobRoleSearchData(
    Query$LoadJobRoleSearchData instance,
    TRes Function(Query$LoadJobRoleSearchData) then,
  ) = _CopyWithImpl$Query$LoadJobRoleSearchData;

  factory CopyWith$Query$LoadJobRoleSearchData.stub(TRes res) =
      _CopyWithStubImpl$Query$LoadJobRoleSearchData;

  TRes call({
    Query$LoadJobRoleSearchData$jobRoles? jobRoles,
    String? $__typename,
  });
  CopyWith$Query$LoadJobRoleSearchData$jobRoles<TRes> get jobRoles;
}

class _CopyWithImpl$Query$LoadJobRoleSearchData<TRes>
    implements CopyWith$Query$LoadJobRoleSearchData<TRes> {
  _CopyWithImpl$Query$LoadJobRoleSearchData(this._instance, this._then);

  final Query$LoadJobRoleSearchData _instance;

  final TRes Function(Query$LoadJobRoleSearchData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? jobRoles = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadJobRoleSearchData(
      jobRoles: jobRoles == _undefined
          ? _instance.jobRoles
          : (jobRoles as Query$LoadJobRoleSearchData$jobRoles?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LoadJobRoleSearchData$jobRoles<TRes> get jobRoles {
    final local$jobRoles = _instance.jobRoles;
    return local$jobRoles == null
        ? CopyWith$Query$LoadJobRoleSearchData$jobRoles.stub(_then(_instance))
        : CopyWith$Query$LoadJobRoleSearchData$jobRoles(
            local$jobRoles,
            (e) => call(jobRoles: e),
          );
  }
}

class _CopyWithStubImpl$Query$LoadJobRoleSearchData<TRes>
    implements CopyWith$Query$LoadJobRoleSearchData<TRes> {
  _CopyWithStubImpl$Query$LoadJobRoleSearchData(this._res);

  TRes _res;

  call({Query$LoadJobRoleSearchData$jobRoles? jobRoles, String? $__typename}) =>
      _res;

  CopyWith$Query$LoadJobRoleSearchData$jobRoles<TRes> get jobRoles =>
      CopyWith$Query$LoadJobRoleSearchData$jobRoles.stub(_res);
}

const documentNodeQueryLoadJobRoleSearchData = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'LoadJobRoleSearchData'),
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
              name: NameNode(value: 'JobRoleSortInput'),
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
            name: NameNode(value: 'jobRoles'),
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
                        name: NameNode(value: 'JobRolesFragment'),
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
    fragmentDefinitionJobRolesFragment,
  ],
);

class Query$LoadJobRoleSearchData$jobRoles {
  Query$LoadJobRoleSearchData$jobRoles({
    required this.totalCount,
    this.nodes,
    required this.pageInfo,
    this.$__typename = 'JobRolesConnection',
  });

  factory Query$LoadJobRoleSearchData$jobRoles.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$LoadJobRoleSearchData$jobRoles(
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Fragment$JobRolesFragment.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      pageInfo: Query$LoadJobRoleSearchData$jobRoles$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Fragment$JobRolesFragment>? nodes;

  final Query$LoadJobRoleSearchData$jobRoles$pageInfo pageInfo;

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
    if (other is! Query$LoadJobRoleSearchData$jobRoles ||
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

extension UtilityExtension$Query$LoadJobRoleSearchData$jobRoles
    on Query$LoadJobRoleSearchData$jobRoles {
  CopyWith$Query$LoadJobRoleSearchData$jobRoles<
    Query$LoadJobRoleSearchData$jobRoles
  >
  get copyWith => CopyWith$Query$LoadJobRoleSearchData$jobRoles(this, (i) => i);
}

abstract class CopyWith$Query$LoadJobRoleSearchData$jobRoles<TRes> {
  factory CopyWith$Query$LoadJobRoleSearchData$jobRoles(
    Query$LoadJobRoleSearchData$jobRoles instance,
    TRes Function(Query$LoadJobRoleSearchData$jobRoles) then,
  ) = _CopyWithImpl$Query$LoadJobRoleSearchData$jobRoles;

  factory CopyWith$Query$LoadJobRoleSearchData$jobRoles.stub(TRes res) =
      _CopyWithStubImpl$Query$LoadJobRoleSearchData$jobRoles;

  TRes call({
    int? totalCount,
    List<Fragment$JobRolesFragment>? nodes,
    Query$LoadJobRoleSearchData$jobRoles$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Fragment$JobRolesFragment>? Function(
      Iterable<CopyWith$Fragment$JobRolesFragment<Fragment$JobRolesFragment>>?,
    )
    _fn,
  );
  CopyWith$Query$LoadJobRoleSearchData$jobRoles$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$LoadJobRoleSearchData$jobRoles<TRes>
    implements CopyWith$Query$LoadJobRoleSearchData$jobRoles<TRes> {
  _CopyWithImpl$Query$LoadJobRoleSearchData$jobRoles(
    this._instance,
    this._then,
  );

  final Query$LoadJobRoleSearchData$jobRoles _instance;

  final TRes Function(Query$LoadJobRoleSearchData$jobRoles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadJobRoleSearchData$jobRoles(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Fragment$JobRolesFragment>?),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$LoadJobRoleSearchData$jobRoles$pageInfo),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Fragment$JobRolesFragment>? Function(
      Iterable<CopyWith$Fragment$JobRolesFragment<Fragment$JobRolesFragment>>?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Fragment$JobRolesFragment(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Query$LoadJobRoleSearchData$jobRoles$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$LoadJobRoleSearchData$jobRoles$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }
}

class _CopyWithStubImpl$Query$LoadJobRoleSearchData$jobRoles<TRes>
    implements CopyWith$Query$LoadJobRoleSearchData$jobRoles<TRes> {
  _CopyWithStubImpl$Query$LoadJobRoleSearchData$jobRoles(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Fragment$JobRolesFragment>? nodes,
    Query$LoadJobRoleSearchData$jobRoles$pageInfo? pageInfo,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;

  CopyWith$Query$LoadJobRoleSearchData$jobRoles$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$LoadJobRoleSearchData$jobRoles$pageInfo.stub(_res);
}

class Query$LoadJobRoleSearchData$jobRoles$pageInfo {
  Query$LoadJobRoleSearchData$jobRoles$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$LoadJobRoleSearchData$jobRoles$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$$__typename = json['__typename'];
    return Query$LoadJobRoleSearchData$jobRoles$pageInfo(
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
    if (other is! Query$LoadJobRoleSearchData$jobRoles$pageInfo ||
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

extension UtilityExtension$Query$LoadJobRoleSearchData$jobRoles$pageInfo
    on Query$LoadJobRoleSearchData$jobRoles$pageInfo {
  CopyWith$Query$LoadJobRoleSearchData$jobRoles$pageInfo<
    Query$LoadJobRoleSearchData$jobRoles$pageInfo
  >
  get copyWith =>
      CopyWith$Query$LoadJobRoleSearchData$jobRoles$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$LoadJobRoleSearchData$jobRoles$pageInfo<TRes> {
  factory CopyWith$Query$LoadJobRoleSearchData$jobRoles$pageInfo(
    Query$LoadJobRoleSearchData$jobRoles$pageInfo instance,
    TRes Function(Query$LoadJobRoleSearchData$jobRoles$pageInfo) then,
  ) = _CopyWithImpl$Query$LoadJobRoleSearchData$jobRoles$pageInfo;

  factory CopyWith$Query$LoadJobRoleSearchData$jobRoles$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LoadJobRoleSearchData$jobRoles$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LoadJobRoleSearchData$jobRoles$pageInfo<TRes>
    implements CopyWith$Query$LoadJobRoleSearchData$jobRoles$pageInfo<TRes> {
  _CopyWithImpl$Query$LoadJobRoleSearchData$jobRoles$pageInfo(
    this._instance,
    this._then,
  );

  final Query$LoadJobRoleSearchData$jobRoles$pageInfo _instance;

  final TRes Function(Query$LoadJobRoleSearchData$jobRoles$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadJobRoleSearchData$jobRoles$pageInfo(
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

class _CopyWithStubImpl$Query$LoadJobRoleSearchData$jobRoles$pageInfo<TRes>
    implements CopyWith$Query$LoadJobRoleSearchData$jobRoles$pageInfo<TRes> {
  _CopyWithStubImpl$Query$LoadJobRoleSearchData$jobRoles$pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  }) => _res;
}
