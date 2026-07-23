import '../../fragments/devices_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetDevices {
  factory Variables$Query$GetDevices({
    required Input$GetDevicesInput input,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$DevicesSortInput>? order,
  }) => Variables$Query$GetDevices._({
    r'input': input,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (order != null) r'order': order,
  });

  Variables$Query$GetDevices._(this._$data);

  factory Variables$Query$GetDevices.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$GetDevicesInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
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
            (e) => Input$DevicesSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    return Variables$Query$GetDevices._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetDevicesInput get input => (_$data['input'] as Input$GetDevicesInput);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  List<Input$DevicesSortInput>? get order =>
      (_$data['order'] as List<Input$DevicesSortInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
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

  CopyWith$Variables$Query$GetDevices<Variables$Query$GetDevices>
  get copyWith => CopyWith$Variables$Query$GetDevices(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetDevices ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
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
    final l$input = input;
    final l$before = before;
    final l$after = after;
    final l$first = first;
    final l$last = last;
    final l$order = order;
    return Object.hashAll([
      l$input,
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

abstract class CopyWith$Variables$Query$GetDevices<TRes> {
  factory CopyWith$Variables$Query$GetDevices(
    Variables$Query$GetDevices instance,
    TRes Function(Variables$Query$GetDevices) then,
  ) = _CopyWithImpl$Variables$Query$GetDevices;

  factory CopyWith$Variables$Query$GetDevices.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetDevices;

  TRes call({
    Input$GetDevicesInput? input,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$DevicesSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$GetDevices<TRes>
    implements CopyWith$Variables$Query$GetDevices<TRes> {
  _CopyWithImpl$Variables$Query$GetDevices(this._instance, this._then);

  final Variables$Query$GetDevices _instance;

  final TRes Function(Variables$Query$GetDevices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$GetDevices._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$GetDevicesInput),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (order != _undefined)
        'order': (order as List<Input$DevicesSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetDevices<TRes>
    implements CopyWith$Variables$Query$GetDevices<TRes> {
  _CopyWithStubImpl$Variables$Query$GetDevices(this._res);

  TRes _res;

  call({
    Input$GetDevicesInput? input,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$DevicesSortInput>? order,
  }) => _res;
}

class Query$GetDevices {
  Query$GetDevices({this.devices, this.$__typename = 'Query'});

  factory Query$GetDevices.fromJson(Map<String, dynamic> json) {
    final l$devices = json['devices'];
    final l$$__typename = json['__typename'];
    return Query$GetDevices(
      devices: l$devices == null
          ? null
          : Query$GetDevices$devices.fromJson(
              (l$devices as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetDevices$devices? devices;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$devices = devices;
    _resultData['devices'] = l$devices?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$devices = devices;
    final l$$__typename = $__typename;
    return Object.hashAll([l$devices, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetDevices || runtimeType != other.runtimeType) {
      return false;
    }
    final l$devices = devices;
    final lOther$devices = other.devices;
    if (l$devices != lOther$devices) {
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

extension UtilityExtension$Query$GetDevices on Query$GetDevices {
  CopyWith$Query$GetDevices<Query$GetDevices> get copyWith =>
      CopyWith$Query$GetDevices(this, (i) => i);
}

abstract class CopyWith$Query$GetDevices<TRes> {
  factory CopyWith$Query$GetDevices(
    Query$GetDevices instance,
    TRes Function(Query$GetDevices) then,
  ) = _CopyWithImpl$Query$GetDevices;

  factory CopyWith$Query$GetDevices.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDevices;

  TRes call({Query$GetDevices$devices? devices, String? $__typename});
  CopyWith$Query$GetDevices$devices<TRes> get devices;
}

class _CopyWithImpl$Query$GetDevices<TRes>
    implements CopyWith$Query$GetDevices<TRes> {
  _CopyWithImpl$Query$GetDevices(this._instance, this._then);

  final Query$GetDevices _instance;

  final TRes Function(Query$GetDevices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? devices = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetDevices(
          devices: devices == _undefined
              ? _instance.devices
              : (devices as Query$GetDevices$devices?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetDevices$devices<TRes> get devices {
    final local$devices = _instance.devices;
    return local$devices == null
        ? CopyWith$Query$GetDevices$devices.stub(_then(_instance))
        : CopyWith$Query$GetDevices$devices(
            local$devices,
            (e) => call(devices: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetDevices<TRes>
    implements CopyWith$Query$GetDevices<TRes> {
  _CopyWithStubImpl$Query$GetDevices(this._res);

  TRes _res;

  call({Query$GetDevices$devices? devices, String? $__typename}) => _res;

  CopyWith$Query$GetDevices$devices<TRes> get devices =>
      CopyWith$Query$GetDevices$devices.stub(_res);
}

const documentNodeQueryGetDevices = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetDevices'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'GetDevicesInput'),
            isNonNull: true,
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
              name: NameNode(value: 'DevicesSortInput'),
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
            name: NameNode(value: 'devices'),
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
                  name: NameNode(value: 'edges'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'cursor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'node'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'DevicesFragment'),
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
    fragmentDefinitionDevicesFragment,
  ],
);

class Query$GetDevices$devices {
  Query$GetDevices$devices({
    required this.totalCount,
    this.edges,
    required this.pageInfo,
    this.$__typename = 'DevicesConnection',
  });

  factory Query$GetDevices$devices.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetDevices$devices(
      totalCount: (l$totalCount as int),
      edges: (l$edges as List<dynamic>?)
          ?.map(
            (e) => Query$GetDevices$devices$edges.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      pageInfo: Query$GetDevices$devices$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$GetDevices$devices$edges>? edges;

  final Query$GetDevices$devices$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$edges = edges;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetDevices$devices ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtension$Query$GetDevices$devices
    on Query$GetDevices$devices {
  CopyWith$Query$GetDevices$devices<Query$GetDevices$devices> get copyWith =>
      CopyWith$Query$GetDevices$devices(this, (i) => i);
}

abstract class CopyWith$Query$GetDevices$devices<TRes> {
  factory CopyWith$Query$GetDevices$devices(
    Query$GetDevices$devices instance,
    TRes Function(Query$GetDevices$devices) then,
  ) = _CopyWithImpl$Query$GetDevices$devices;

  factory CopyWith$Query$GetDevices$devices.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDevices$devices;

  TRes call({
    int? totalCount,
    List<Query$GetDevices$devices$edges>? edges,
    Query$GetDevices$devices$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
    Iterable<Query$GetDevices$devices$edges>? Function(
      Iterable<
        CopyWith$Query$GetDevices$devices$edges<Query$GetDevices$devices$edges>
      >?,
    )
    _fn,
  );
  CopyWith$Query$GetDevices$devices$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$GetDevices$devices<TRes>
    implements CopyWith$Query$GetDevices$devices<TRes> {
  _CopyWithImpl$Query$GetDevices$devices(this._instance, this._then);

  final Query$GetDevices$devices _instance;

  final TRes Function(Query$GetDevices$devices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetDevices$devices(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      edges: edges == _undefined
          ? _instance.edges
          : (edges as List<Query$GetDevices$devices$edges>?),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$GetDevices$devices$pageInfo),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes edges(
    Iterable<Query$GetDevices$devices$edges>? Function(
      Iterable<
        CopyWith$Query$GetDevices$devices$edges<Query$GetDevices$devices$edges>
      >?,
    )
    _fn,
  ) => call(
    edges: _fn(
      _instance.edges?.map(
        (e) => CopyWith$Query$GetDevices$devices$edges(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Query$GetDevices$devices$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetDevices$devices$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetDevices$devices<TRes>
    implements CopyWith$Query$GetDevices$devices<TRes> {
  _CopyWithStubImpl$Query$GetDevices$devices(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$GetDevices$devices$edges>? edges,
    Query$GetDevices$devices$pageInfo? pageInfo,
    String? $__typename,
  }) => _res;

  edges(_fn) => _res;

  CopyWith$Query$GetDevices$devices$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetDevices$devices$pageInfo.stub(_res);
}

class Query$GetDevices$devices$edges {
  Query$GetDevices$devices$edges({
    required this.cursor,
    required this.node,
    this.$__typename = 'DevicesEdge',
  });

  factory Query$GetDevices$devices$edges.fromJson(Map<String, dynamic> json) {
    final l$cursor = json['cursor'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$GetDevices$devices$edges(
      cursor: (l$cursor as String),
      node: Fragment$DevicesFragment.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String cursor;

  final Fragment$DevicesFragment node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cursor = cursor;
    _resultData['cursor'] = l$cursor;
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cursor = cursor;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([l$cursor, l$node, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetDevices$devices$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cursor = cursor;
    final lOther$cursor = other.cursor;
    if (l$cursor != lOther$cursor) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$GetDevices$devices$edges
    on Query$GetDevices$devices$edges {
  CopyWith$Query$GetDevices$devices$edges<Query$GetDevices$devices$edges>
  get copyWith => CopyWith$Query$GetDevices$devices$edges(this, (i) => i);
}

abstract class CopyWith$Query$GetDevices$devices$edges<TRes> {
  factory CopyWith$Query$GetDevices$devices$edges(
    Query$GetDevices$devices$edges instance,
    TRes Function(Query$GetDevices$devices$edges) then,
  ) = _CopyWithImpl$Query$GetDevices$devices$edges;

  factory CopyWith$Query$GetDevices$devices$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDevices$devices$edges;

  TRes call({
    String? cursor,
    Fragment$DevicesFragment? node,
    String? $__typename,
  });
  CopyWith$Fragment$DevicesFragment<TRes> get node;
}

class _CopyWithImpl$Query$GetDevices$devices$edges<TRes>
    implements CopyWith$Query$GetDevices$devices$edges<TRes> {
  _CopyWithImpl$Query$GetDevices$devices$edges(this._instance, this._then);

  final Query$GetDevices$devices$edges _instance;

  final TRes Function(Query$GetDevices$devices$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cursor = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetDevices$devices$edges(
      cursor: cursor == _undefined || cursor == null
          ? _instance.cursor
          : (cursor as String),
      node: node == _undefined || node == null
          ? _instance.node
          : (node as Fragment$DevicesFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$DevicesFragment<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$DevicesFragment(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$GetDevices$devices$edges<TRes>
    implements CopyWith$Query$GetDevices$devices$edges<TRes> {
  _CopyWithStubImpl$Query$GetDevices$devices$edges(this._res);

  TRes _res;

  call({String? cursor, Fragment$DevicesFragment? node, String? $__typename}) =>
      _res;

  CopyWith$Fragment$DevicesFragment<TRes> get node =>
      CopyWith$Fragment$DevicesFragment.stub(_res);
}

class Query$GetDevices$devices$pageInfo {
  Query$GetDevices$devices$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetDevices$devices$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetDevices$devices$pageInfo(
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
    if (other is! Query$GetDevices$devices$pageInfo ||
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

extension UtilityExtension$Query$GetDevices$devices$pageInfo
    on Query$GetDevices$devices$pageInfo {
  CopyWith$Query$GetDevices$devices$pageInfo<Query$GetDevices$devices$pageInfo>
  get copyWith => CopyWith$Query$GetDevices$devices$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$GetDevices$devices$pageInfo<TRes> {
  factory CopyWith$Query$GetDevices$devices$pageInfo(
    Query$GetDevices$devices$pageInfo instance,
    TRes Function(Query$GetDevices$devices$pageInfo) then,
  ) = _CopyWithImpl$Query$GetDevices$devices$pageInfo;

  factory CopyWith$Query$GetDevices$devices$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDevices$devices$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetDevices$devices$pageInfo<TRes>
    implements CopyWith$Query$GetDevices$devices$pageInfo<TRes> {
  _CopyWithImpl$Query$GetDevices$devices$pageInfo(this._instance, this._then);

  final Query$GetDevices$devices$pageInfo _instance;

  final TRes Function(Query$GetDevices$devices$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetDevices$devices$pageInfo(
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

class _CopyWithStubImpl$Query$GetDevices$devices$pageInfo<TRes>
    implements CopyWith$Query$GetDevices$devices$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetDevices$devices$pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? $__typename,
  }) => _res;
}
