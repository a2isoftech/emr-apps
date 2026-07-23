import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchLoadOuts {
  factory Variables$Query$SearchLoadOuts({
    required Input$SearchLoadOutsInput input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$LoadOutSortInput>? order,
  }) => Variables$Query$SearchLoadOuts._({
    r'input': input,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
    if (order != null) r'order': order,
  });

  Variables$Query$SearchLoadOuts._(this._$data);

  factory Variables$Query$SearchLoadOuts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchLoadOutsInput.fromJson(
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
            (e) => Input$LoadOutSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    return Variables$Query$SearchLoadOuts._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchLoadOutsInput get input =>
      (_$data['input'] as Input$SearchLoadOutsInput);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  List<Input$LoadOutSortInput>? get order =>
      (_$data['order'] as List<Input$LoadOutSortInput>?);

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

  CopyWith$Variables$Query$SearchLoadOuts<Variables$Query$SearchLoadOuts>
  get copyWith => CopyWith$Variables$Query$SearchLoadOuts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchLoadOuts ||
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

abstract class CopyWith$Variables$Query$SearchLoadOuts<TRes> {
  factory CopyWith$Variables$Query$SearchLoadOuts(
    Variables$Query$SearchLoadOuts instance,
    TRes Function(Variables$Query$SearchLoadOuts) then,
  ) = _CopyWithImpl$Variables$Query$SearchLoadOuts;

  factory CopyWith$Variables$Query$SearchLoadOuts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchLoadOuts;

  TRes call({
    Input$SearchLoadOutsInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$LoadOutSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$SearchLoadOuts<TRes>
    implements CopyWith$Variables$Query$SearchLoadOuts<TRes> {
  _CopyWithImpl$Variables$Query$SearchLoadOuts(this._instance, this._then);

  final Variables$Query$SearchLoadOuts _instance;

  final TRes Function(Variables$Query$SearchLoadOuts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$SearchLoadOuts._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchLoadOutsInput),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
      if (order != _undefined)
        'order': (order as List<Input$LoadOutSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchLoadOuts<TRes>
    implements CopyWith$Variables$Query$SearchLoadOuts<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchLoadOuts(this._res);

  TRes _res;

  call({
    Input$SearchLoadOutsInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$LoadOutSortInput>? order,
  }) => _res;
}

class Query$SearchLoadOuts {
  Query$SearchLoadOuts({this.loadOuts, this.$__typename = 'Query'});

  factory Query$SearchLoadOuts.fromJson(Map<String, dynamic> json) {
    final l$loadOuts = json['loadOuts'];
    final l$$__typename = json['__typename'];
    return Query$SearchLoadOuts(
      loadOuts: l$loadOuts == null
          ? null
          : Query$SearchLoadOuts$loadOuts.fromJson(
              (l$loadOuts as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchLoadOuts$loadOuts? loadOuts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$loadOuts = loadOuts;
    _resultData['loadOuts'] = l$loadOuts?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$loadOuts = loadOuts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$loadOuts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchLoadOuts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$loadOuts = loadOuts;
    final lOther$loadOuts = other.loadOuts;
    if (l$loadOuts != lOther$loadOuts) {
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

extension UtilityExtension$Query$SearchLoadOuts on Query$SearchLoadOuts {
  CopyWith$Query$SearchLoadOuts<Query$SearchLoadOuts> get copyWith =>
      CopyWith$Query$SearchLoadOuts(this, (i) => i);
}

abstract class CopyWith$Query$SearchLoadOuts<TRes> {
  factory CopyWith$Query$SearchLoadOuts(
    Query$SearchLoadOuts instance,
    TRes Function(Query$SearchLoadOuts) then,
  ) = _CopyWithImpl$Query$SearchLoadOuts;

  factory CopyWith$Query$SearchLoadOuts.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchLoadOuts;

  TRes call({Query$SearchLoadOuts$loadOuts? loadOuts, String? $__typename});
  CopyWith$Query$SearchLoadOuts$loadOuts<TRes> get loadOuts;
}

class _CopyWithImpl$Query$SearchLoadOuts<TRes>
    implements CopyWith$Query$SearchLoadOuts<TRes> {
  _CopyWithImpl$Query$SearchLoadOuts(this._instance, this._then);

  final Query$SearchLoadOuts _instance;

  final TRes Function(Query$SearchLoadOuts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? loadOuts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchLoadOuts(
      loadOuts: loadOuts == _undefined
          ? _instance.loadOuts
          : (loadOuts as Query$SearchLoadOuts$loadOuts?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchLoadOuts$loadOuts<TRes> get loadOuts {
    final local$loadOuts = _instance.loadOuts;
    return local$loadOuts == null
        ? CopyWith$Query$SearchLoadOuts$loadOuts.stub(_then(_instance))
        : CopyWith$Query$SearchLoadOuts$loadOuts(
            local$loadOuts,
            (e) => call(loadOuts: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchLoadOuts<TRes>
    implements CopyWith$Query$SearchLoadOuts<TRes> {
  _CopyWithStubImpl$Query$SearchLoadOuts(this._res);

  TRes _res;

  call({Query$SearchLoadOuts$loadOuts? loadOuts, String? $__typename}) => _res;

  CopyWith$Query$SearchLoadOuts$loadOuts<TRes> get loadOuts =>
      CopyWith$Query$SearchLoadOuts$loadOuts.stub(_res);
}

const documentNodeQuerySearchLoadOuts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchLoadOuts'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchLoadOutsInput'),
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
              name: NameNode(value: 'LoadOutSortInput'),
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
            name: NameNode(value: 'loadOuts'),
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
                        name: NameNode(value: 'containerId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'created'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'at'),
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
                        name: NameNode(value: 'completed'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'ticketId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'containerImages'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'heap'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'empty'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value: 'halfLoadedWithContainerNumber',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'fullyLoaded'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'fullyLoadedOneDoorShut'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value: 'fullyLoadedOneDoorShutRadiation',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value: 'fullyLoadedBothDoorsShutSeals',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'leftSideQualityCheck'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'rightSideQualityCheck'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'additionalImages'),
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
                        name: NameNode(value: 'containerSealDetails'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'imagePath'),
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

class Query$SearchLoadOuts$loadOuts {
  Query$SearchLoadOuts$loadOuts({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'LoadOutsConnection',
  });

  factory Query$SearchLoadOuts$loadOuts.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchLoadOuts$loadOuts(
      totalCount: (l$totalCount as int),
      pageInfo: Query$SearchLoadOuts$loadOuts$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$SearchLoadOuts$loadOuts$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SearchLoadOuts$loadOuts$pageInfo pageInfo;

  final List<Query$SearchLoadOuts$loadOuts$nodes>? nodes;

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
    if (other is! Query$SearchLoadOuts$loadOuts ||
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

extension UtilityExtension$Query$SearchLoadOuts$loadOuts
    on Query$SearchLoadOuts$loadOuts {
  CopyWith$Query$SearchLoadOuts$loadOuts<Query$SearchLoadOuts$loadOuts>
  get copyWith => CopyWith$Query$SearchLoadOuts$loadOuts(this, (i) => i);
}

abstract class CopyWith$Query$SearchLoadOuts$loadOuts<TRes> {
  factory CopyWith$Query$SearchLoadOuts$loadOuts(
    Query$SearchLoadOuts$loadOuts instance,
    TRes Function(Query$SearchLoadOuts$loadOuts) then,
  ) = _CopyWithImpl$Query$SearchLoadOuts$loadOuts;

  factory CopyWith$Query$SearchLoadOuts$loadOuts.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchLoadOuts$loadOuts;

  TRes call({
    int? totalCount,
    Query$SearchLoadOuts$loadOuts$pageInfo? pageInfo,
    List<Query$SearchLoadOuts$loadOuts$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchLoadOuts$loadOuts$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$SearchLoadOuts$loadOuts$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchLoadOuts$loadOuts$nodes<
          Query$SearchLoadOuts$loadOuts$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchLoadOuts$loadOuts<TRes>
    implements CopyWith$Query$SearchLoadOuts$loadOuts<TRes> {
  _CopyWithImpl$Query$SearchLoadOuts$loadOuts(this._instance, this._then);

  final Query$SearchLoadOuts$loadOuts _instance;

  final TRes Function(Query$SearchLoadOuts$loadOuts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchLoadOuts$loadOuts(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$SearchLoadOuts$loadOuts$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$SearchLoadOuts$loadOuts$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchLoadOuts$loadOuts$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchLoadOuts$loadOuts$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$SearchLoadOuts$loadOuts$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchLoadOuts$loadOuts$nodes<
          Query$SearchLoadOuts$loadOuts$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$SearchLoadOuts$loadOuts$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchLoadOuts$loadOuts<TRes>
    implements CopyWith$Query$SearchLoadOuts$loadOuts<TRes> {
  _CopyWithStubImpl$Query$SearchLoadOuts$loadOuts(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$SearchLoadOuts$loadOuts$pageInfo? pageInfo,
    List<Query$SearchLoadOuts$loadOuts$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchLoadOuts$loadOuts$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$SearchLoadOuts$loadOuts$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$SearchLoadOuts$loadOuts$pageInfo {
  Query$SearchLoadOuts$loadOuts$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchLoadOuts$loadOuts$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchLoadOuts$loadOuts$pageInfo(
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
    if (other is! Query$SearchLoadOuts$loadOuts$pageInfo ||
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

extension UtilityExtension$Query$SearchLoadOuts$loadOuts$pageInfo
    on Query$SearchLoadOuts$loadOuts$pageInfo {
  CopyWith$Query$SearchLoadOuts$loadOuts$pageInfo<
    Query$SearchLoadOuts$loadOuts$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SearchLoadOuts$loadOuts$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$SearchLoadOuts$loadOuts$pageInfo<TRes> {
  factory CopyWith$Query$SearchLoadOuts$loadOuts$pageInfo(
    Query$SearchLoadOuts$loadOuts$pageInfo instance,
    TRes Function(Query$SearchLoadOuts$loadOuts$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchLoadOuts$loadOuts$pageInfo;

  factory CopyWith$Query$SearchLoadOuts$loadOuts$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchLoadOuts$loadOuts$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchLoadOuts$loadOuts$pageInfo<TRes>
    implements CopyWith$Query$SearchLoadOuts$loadOuts$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchLoadOuts$loadOuts$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchLoadOuts$loadOuts$pageInfo _instance;

  final TRes Function(Query$SearchLoadOuts$loadOuts$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchLoadOuts$loadOuts$pageInfo(
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

class _CopyWithStubImpl$Query$SearchLoadOuts$loadOuts$pageInfo<TRes>
    implements CopyWith$Query$SearchLoadOuts$loadOuts$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchLoadOuts$loadOuts$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}

class Query$SearchLoadOuts$loadOuts$nodes {
  Query$SearchLoadOuts$loadOuts$nodes({
    required this.id,
    this.containerId,
    required this.created,
    required this.completed,
    this.ticketId,
    required this.containerImages,
    required this.containerSealDetails,
    this.$__typename = 'LoadOut',
  });

  factory Query$SearchLoadOuts$loadOuts$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$containerId = json['containerId'];
    final l$created = json['created'];
    final l$completed = json['completed'];
    final l$ticketId = json['ticketId'];
    final l$containerImages = json['containerImages'];
    final l$containerSealDetails = json['containerSealDetails'];
    final l$$__typename = json['__typename'];
    return Query$SearchLoadOuts$loadOuts$nodes(
      id: (l$id as String),
      containerId: (l$containerId as String?),
      created: Query$SearchLoadOuts$loadOuts$nodes$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      completed: (l$completed as bool),
      ticketId: (l$ticketId as String?),
      containerImages:
          Query$SearchLoadOuts$loadOuts$nodes$containerImages.fromJson(
            (l$containerImages as Map<String, dynamic>),
          ),
      containerSealDetails: (l$containerSealDetails as List<dynamic>)
          .map(
            (e) =>
                Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? containerId;

  final Query$SearchLoadOuts$loadOuts$nodes$created created;

  final bool completed;

  final String? ticketId;

  final Query$SearchLoadOuts$loadOuts$nodes$containerImages containerImages;

  final List<Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails>
  containerSealDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$containerId = containerId;
    _resultData['containerId'] = l$containerId;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$completed = completed;
    _resultData['completed'] = l$completed;
    final l$ticketId = ticketId;
    _resultData['ticketId'] = l$ticketId;
    final l$containerImages = containerImages;
    _resultData['containerImages'] = l$containerImages.toJson();
    final l$containerSealDetails = containerSealDetails;
    _resultData['containerSealDetails'] = l$containerSealDetails
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$containerId = containerId;
    final l$created = created;
    final l$completed = completed;
    final l$ticketId = ticketId;
    final l$containerImages = containerImages;
    final l$containerSealDetails = containerSealDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$containerId,
      l$created,
      l$completed,
      l$ticketId,
      l$containerImages,
      Object.hashAll(l$containerSealDetails.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchLoadOuts$loadOuts$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$containerId = containerId;
    final lOther$containerId = other.containerId;
    if (l$containerId != lOther$containerId) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$completed = completed;
    final lOther$completed = other.completed;
    if (l$completed != lOther$completed) {
      return false;
    }
    final l$ticketId = ticketId;
    final lOther$ticketId = other.ticketId;
    if (l$ticketId != lOther$ticketId) {
      return false;
    }
    final l$containerImages = containerImages;
    final lOther$containerImages = other.containerImages;
    if (l$containerImages != lOther$containerImages) {
      return false;
    }
    final l$containerSealDetails = containerSealDetails;
    final lOther$containerSealDetails = other.containerSealDetails;
    if (l$containerSealDetails.length != lOther$containerSealDetails.length) {
      return false;
    }
    for (int i = 0; i < l$containerSealDetails.length; i++) {
      final l$containerSealDetails$entry = l$containerSealDetails[i];
      final lOther$containerSealDetails$entry = lOther$containerSealDetails[i];
      if (l$containerSealDetails$entry != lOther$containerSealDetails$entry) {
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

extension UtilityExtension$Query$SearchLoadOuts$loadOuts$nodes
    on Query$SearchLoadOuts$loadOuts$nodes {
  CopyWith$Query$SearchLoadOuts$loadOuts$nodes<
    Query$SearchLoadOuts$loadOuts$nodes
  >
  get copyWith => CopyWith$Query$SearchLoadOuts$loadOuts$nodes(this, (i) => i);
}

abstract class CopyWith$Query$SearchLoadOuts$loadOuts$nodes<TRes> {
  factory CopyWith$Query$SearchLoadOuts$loadOuts$nodes(
    Query$SearchLoadOuts$loadOuts$nodes instance,
    TRes Function(Query$SearchLoadOuts$loadOuts$nodes) then,
  ) = _CopyWithImpl$Query$SearchLoadOuts$loadOuts$nodes;

  factory CopyWith$Query$SearchLoadOuts$loadOuts$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchLoadOuts$loadOuts$nodes;

  TRes call({
    String? id,
    String? containerId,
    Query$SearchLoadOuts$loadOuts$nodes$created? created,
    bool? completed,
    String? ticketId,
    Query$SearchLoadOuts$loadOuts$nodes$containerImages? containerImages,
    List<Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails>?
    containerSealDetails,
    String? $__typename,
  });
  CopyWith$Query$SearchLoadOuts$loadOuts$nodes$created<TRes> get created;
  CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerImages<TRes>
  get containerImages;
  TRes containerSealDetails(
    Iterable<Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails> Function(
      Iterable<
        CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails<
          Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchLoadOuts$loadOuts$nodes<TRes>
    implements CopyWith$Query$SearchLoadOuts$loadOuts$nodes<TRes> {
  _CopyWithImpl$Query$SearchLoadOuts$loadOuts$nodes(this._instance, this._then);

  final Query$SearchLoadOuts$loadOuts$nodes _instance;

  final TRes Function(Query$SearchLoadOuts$loadOuts$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? containerId = _undefined,
    Object? created = _undefined,
    Object? completed = _undefined,
    Object? ticketId = _undefined,
    Object? containerImages = _undefined,
    Object? containerSealDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchLoadOuts$loadOuts$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      containerId: containerId == _undefined
          ? _instance.containerId
          : (containerId as String?),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Query$SearchLoadOuts$loadOuts$nodes$created),
      completed: completed == _undefined || completed == null
          ? _instance.completed
          : (completed as bool),
      ticketId: ticketId == _undefined
          ? _instance.ticketId
          : (ticketId as String?),
      containerImages: containerImages == _undefined || containerImages == null
          ? _instance.containerImages
          : (containerImages
                as Query$SearchLoadOuts$loadOuts$nodes$containerImages),
      containerSealDetails:
          containerSealDetails == _undefined || containerSealDetails == null
          ? _instance.containerSealDetails
          : (containerSealDetails
                as List<
                  Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchLoadOuts$loadOuts$nodes$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Query$SearchLoadOuts$loadOuts$nodes$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerImages<TRes>
  get containerImages {
    final local$containerImages = _instance.containerImages;
    return CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerImages(
      local$containerImages,
      (e) => call(containerImages: e),
    );
  }

  TRes containerSealDetails(
    Iterable<Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails> Function(
      Iterable<
        CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails<
          Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails
        >
      >,
    )
    _fn,
  ) => call(
    containerSealDetails: _fn(
      _instance.containerSealDetails.map(
        (e) =>
            CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchLoadOuts$loadOuts$nodes<TRes>
    implements CopyWith$Query$SearchLoadOuts$loadOuts$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchLoadOuts$loadOuts$nodes(this._res);

  TRes _res;

  call({
    String? id,
    String? containerId,
    Query$SearchLoadOuts$loadOuts$nodes$created? created,
    bool? completed,
    String? ticketId,
    Query$SearchLoadOuts$loadOuts$nodes$containerImages? containerImages,
    List<Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails>?
    containerSealDetails,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchLoadOuts$loadOuts$nodes$created<TRes> get created =>
      CopyWith$Query$SearchLoadOuts$loadOuts$nodes$created.stub(_res);

  CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerImages<TRes>
  get containerImages =>
      CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerImages.stub(_res);

  containerSealDetails(_fn) => _res;
}

class Query$SearchLoadOuts$loadOuts$nodes$created {
  Query$SearchLoadOuts$loadOuts$nodes$created({
    required this.at,
    this.$__typename = 'Created',
  });

  factory Query$SearchLoadOuts$loadOuts$nodes$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Query$SearchLoadOuts$loadOuts$nodes$created(
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchLoadOuts$loadOuts$nodes$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
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

extension UtilityExtension$Query$SearchLoadOuts$loadOuts$nodes$created
    on Query$SearchLoadOuts$loadOuts$nodes$created {
  CopyWith$Query$SearchLoadOuts$loadOuts$nodes$created<
    Query$SearchLoadOuts$loadOuts$nodes$created
  >
  get copyWith =>
      CopyWith$Query$SearchLoadOuts$loadOuts$nodes$created(this, (i) => i);
}

abstract class CopyWith$Query$SearchLoadOuts$loadOuts$nodes$created<TRes> {
  factory CopyWith$Query$SearchLoadOuts$loadOuts$nodes$created(
    Query$SearchLoadOuts$loadOuts$nodes$created instance,
    TRes Function(Query$SearchLoadOuts$loadOuts$nodes$created) then,
  ) = _CopyWithImpl$Query$SearchLoadOuts$loadOuts$nodes$created;

  factory CopyWith$Query$SearchLoadOuts$loadOuts$nodes$created.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchLoadOuts$loadOuts$nodes$created;

  TRes call({DateTime? at, String? $__typename});
}

class _CopyWithImpl$Query$SearchLoadOuts$loadOuts$nodes$created<TRes>
    implements CopyWith$Query$SearchLoadOuts$loadOuts$nodes$created<TRes> {
  _CopyWithImpl$Query$SearchLoadOuts$loadOuts$nodes$created(
    this._instance,
    this._then,
  );

  final Query$SearchLoadOuts$loadOuts$nodes$created _instance;

  final TRes Function(Query$SearchLoadOuts$loadOuts$nodes$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? at = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$SearchLoadOuts$loadOuts$nodes$created(
          at: at == _undefined || at == null ? _instance.at : (at as DateTime),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$SearchLoadOuts$loadOuts$nodes$created<TRes>
    implements CopyWith$Query$SearchLoadOuts$loadOuts$nodes$created<TRes> {
  _CopyWithStubImpl$Query$SearchLoadOuts$loadOuts$nodes$created(this._res);

  TRes _res;

  call({DateTime? at, String? $__typename}) => _res;
}

class Query$SearchLoadOuts$loadOuts$nodes$containerImages {
  Query$SearchLoadOuts$loadOuts$nodes$containerImages({
    this.heap,
    this.empty,
    this.halfLoadedWithContainerNumber,
    this.fullyLoaded,
    this.fullyLoadedOneDoorShut,
    this.fullyLoadedOneDoorShutRadiation,
    this.fullyLoadedBothDoorsShutSeals,
    this.leftSideQualityCheck,
    this.rightSideQualityCheck,
    required this.additionalImages,
    this.$__typename = 'ContainerImages',
  });

  factory Query$SearchLoadOuts$loadOuts$nodes$containerImages.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$heap = json['heap'];
    final l$empty = json['empty'];
    final l$halfLoadedWithContainerNumber =
        json['halfLoadedWithContainerNumber'];
    final l$fullyLoaded = json['fullyLoaded'];
    final l$fullyLoadedOneDoorShut = json['fullyLoadedOneDoorShut'];
    final l$fullyLoadedOneDoorShutRadiation =
        json['fullyLoadedOneDoorShutRadiation'];
    final l$fullyLoadedBothDoorsShutSeals =
        json['fullyLoadedBothDoorsShutSeals'];
    final l$leftSideQualityCheck = json['leftSideQualityCheck'];
    final l$rightSideQualityCheck = json['rightSideQualityCheck'];
    final l$additionalImages = json['additionalImages'];
    final l$$__typename = json['__typename'];
    return Query$SearchLoadOuts$loadOuts$nodes$containerImages(
      heap: (l$heap as String?),
      empty: (l$empty as String?),
      halfLoadedWithContainerNumber:
          (l$halfLoadedWithContainerNumber as String?),
      fullyLoaded: (l$fullyLoaded as String?),
      fullyLoadedOneDoorShut: (l$fullyLoadedOneDoorShut as String?),
      fullyLoadedOneDoorShutRadiation:
          (l$fullyLoadedOneDoorShutRadiation as String?),
      fullyLoadedBothDoorsShutSeals:
          (l$fullyLoadedBothDoorsShutSeals as String?),
      leftSideQualityCheck: (l$leftSideQualityCheck as String?),
      rightSideQualityCheck: (l$rightSideQualityCheck as String?),
      additionalImages: (l$additionalImages as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? heap;

  final String? empty;

  final String? halfLoadedWithContainerNumber;

  final String? fullyLoaded;

  final String? fullyLoadedOneDoorShut;

  final String? fullyLoadedOneDoorShutRadiation;

  final String? fullyLoadedBothDoorsShutSeals;

  final String? leftSideQualityCheck;

  final String? rightSideQualityCheck;

  final List<String> additionalImages;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$heap = heap;
    _resultData['heap'] = l$heap;
    final l$empty = empty;
    _resultData['empty'] = l$empty;
    final l$halfLoadedWithContainerNumber = halfLoadedWithContainerNumber;
    _resultData['halfLoadedWithContainerNumber'] =
        l$halfLoadedWithContainerNumber;
    final l$fullyLoaded = fullyLoaded;
    _resultData['fullyLoaded'] = l$fullyLoaded;
    final l$fullyLoadedOneDoorShut = fullyLoadedOneDoorShut;
    _resultData['fullyLoadedOneDoorShut'] = l$fullyLoadedOneDoorShut;
    final l$fullyLoadedOneDoorShutRadiation = fullyLoadedOneDoorShutRadiation;
    _resultData['fullyLoadedOneDoorShutRadiation'] =
        l$fullyLoadedOneDoorShutRadiation;
    final l$fullyLoadedBothDoorsShutSeals = fullyLoadedBothDoorsShutSeals;
    _resultData['fullyLoadedBothDoorsShutSeals'] =
        l$fullyLoadedBothDoorsShutSeals;
    final l$leftSideQualityCheck = leftSideQualityCheck;
    _resultData['leftSideQualityCheck'] = l$leftSideQualityCheck;
    final l$rightSideQualityCheck = rightSideQualityCheck;
    _resultData['rightSideQualityCheck'] = l$rightSideQualityCheck;
    final l$additionalImages = additionalImages;
    _resultData['additionalImages'] = l$additionalImages.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$heap = heap;
    final l$empty = empty;
    final l$halfLoadedWithContainerNumber = halfLoadedWithContainerNumber;
    final l$fullyLoaded = fullyLoaded;
    final l$fullyLoadedOneDoorShut = fullyLoadedOneDoorShut;
    final l$fullyLoadedOneDoorShutRadiation = fullyLoadedOneDoorShutRadiation;
    final l$fullyLoadedBothDoorsShutSeals = fullyLoadedBothDoorsShutSeals;
    final l$leftSideQualityCheck = leftSideQualityCheck;
    final l$rightSideQualityCheck = rightSideQualityCheck;
    final l$additionalImages = additionalImages;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$heap,
      l$empty,
      l$halfLoadedWithContainerNumber,
      l$fullyLoaded,
      l$fullyLoadedOneDoorShut,
      l$fullyLoadedOneDoorShutRadiation,
      l$fullyLoadedBothDoorsShutSeals,
      l$leftSideQualityCheck,
      l$rightSideQualityCheck,
      Object.hashAll(l$additionalImages.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchLoadOuts$loadOuts$nodes$containerImages ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$heap = heap;
    final lOther$heap = other.heap;
    if (l$heap != lOther$heap) {
      return false;
    }
    final l$empty = empty;
    final lOther$empty = other.empty;
    if (l$empty != lOther$empty) {
      return false;
    }
    final l$halfLoadedWithContainerNumber = halfLoadedWithContainerNumber;
    final lOther$halfLoadedWithContainerNumber =
        other.halfLoadedWithContainerNumber;
    if (l$halfLoadedWithContainerNumber !=
        lOther$halfLoadedWithContainerNumber) {
      return false;
    }
    final l$fullyLoaded = fullyLoaded;
    final lOther$fullyLoaded = other.fullyLoaded;
    if (l$fullyLoaded != lOther$fullyLoaded) {
      return false;
    }
    final l$fullyLoadedOneDoorShut = fullyLoadedOneDoorShut;
    final lOther$fullyLoadedOneDoorShut = other.fullyLoadedOneDoorShut;
    if (l$fullyLoadedOneDoorShut != lOther$fullyLoadedOneDoorShut) {
      return false;
    }
    final l$fullyLoadedOneDoorShutRadiation = fullyLoadedOneDoorShutRadiation;
    final lOther$fullyLoadedOneDoorShutRadiation =
        other.fullyLoadedOneDoorShutRadiation;
    if (l$fullyLoadedOneDoorShutRadiation !=
        lOther$fullyLoadedOneDoorShutRadiation) {
      return false;
    }
    final l$fullyLoadedBothDoorsShutSeals = fullyLoadedBothDoorsShutSeals;
    final lOther$fullyLoadedBothDoorsShutSeals =
        other.fullyLoadedBothDoorsShutSeals;
    if (l$fullyLoadedBothDoorsShutSeals !=
        lOther$fullyLoadedBothDoorsShutSeals) {
      return false;
    }
    final l$leftSideQualityCheck = leftSideQualityCheck;
    final lOther$leftSideQualityCheck = other.leftSideQualityCheck;
    if (l$leftSideQualityCheck != lOther$leftSideQualityCheck) {
      return false;
    }
    final l$rightSideQualityCheck = rightSideQualityCheck;
    final lOther$rightSideQualityCheck = other.rightSideQualityCheck;
    if (l$rightSideQualityCheck != lOther$rightSideQualityCheck) {
      return false;
    }
    final l$additionalImages = additionalImages;
    final lOther$additionalImages = other.additionalImages;
    if (l$additionalImages.length != lOther$additionalImages.length) {
      return false;
    }
    for (int i = 0; i < l$additionalImages.length; i++) {
      final l$additionalImages$entry = l$additionalImages[i];
      final lOther$additionalImages$entry = lOther$additionalImages[i];
      if (l$additionalImages$entry != lOther$additionalImages$entry) {
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

extension UtilityExtension$Query$SearchLoadOuts$loadOuts$nodes$containerImages
    on Query$SearchLoadOuts$loadOuts$nodes$containerImages {
  CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerImages<
    Query$SearchLoadOuts$loadOuts$nodes$containerImages
  >
  get copyWith => CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerImages(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerImages<
  TRes
> {
  factory CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerImages(
    Query$SearchLoadOuts$loadOuts$nodes$containerImages instance,
    TRes Function(Query$SearchLoadOuts$loadOuts$nodes$containerImages) then,
  ) = _CopyWithImpl$Query$SearchLoadOuts$loadOuts$nodes$containerImages;

  factory CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerImages.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchLoadOuts$loadOuts$nodes$containerImages;

  TRes call({
    String? heap,
    String? empty,
    String? halfLoadedWithContainerNumber,
    String? fullyLoaded,
    String? fullyLoadedOneDoorShut,
    String? fullyLoadedOneDoorShutRadiation,
    String? fullyLoadedBothDoorsShutSeals,
    String? leftSideQualityCheck,
    String? rightSideQualityCheck,
    List<String>? additionalImages,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchLoadOuts$loadOuts$nodes$containerImages<TRes>
    implements
        CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerImages<TRes> {
  _CopyWithImpl$Query$SearchLoadOuts$loadOuts$nodes$containerImages(
    this._instance,
    this._then,
  );

  final Query$SearchLoadOuts$loadOuts$nodes$containerImages _instance;

  final TRes Function(Query$SearchLoadOuts$loadOuts$nodes$containerImages)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? heap = _undefined,
    Object? empty = _undefined,
    Object? halfLoadedWithContainerNumber = _undefined,
    Object? fullyLoaded = _undefined,
    Object? fullyLoadedOneDoorShut = _undefined,
    Object? fullyLoadedOneDoorShutRadiation = _undefined,
    Object? fullyLoadedBothDoorsShutSeals = _undefined,
    Object? leftSideQualityCheck = _undefined,
    Object? rightSideQualityCheck = _undefined,
    Object? additionalImages = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchLoadOuts$loadOuts$nodes$containerImages(
      heap: heap == _undefined ? _instance.heap : (heap as String?),
      empty: empty == _undefined ? _instance.empty : (empty as String?),
      halfLoadedWithContainerNumber: halfLoadedWithContainerNumber == _undefined
          ? _instance.halfLoadedWithContainerNumber
          : (halfLoadedWithContainerNumber as String?),
      fullyLoaded: fullyLoaded == _undefined
          ? _instance.fullyLoaded
          : (fullyLoaded as String?),
      fullyLoadedOneDoorShut: fullyLoadedOneDoorShut == _undefined
          ? _instance.fullyLoadedOneDoorShut
          : (fullyLoadedOneDoorShut as String?),
      fullyLoadedOneDoorShutRadiation:
          fullyLoadedOneDoorShutRadiation == _undefined
          ? _instance.fullyLoadedOneDoorShutRadiation
          : (fullyLoadedOneDoorShutRadiation as String?),
      fullyLoadedBothDoorsShutSeals: fullyLoadedBothDoorsShutSeals == _undefined
          ? _instance.fullyLoadedBothDoorsShutSeals
          : (fullyLoadedBothDoorsShutSeals as String?),
      leftSideQualityCheck: leftSideQualityCheck == _undefined
          ? _instance.leftSideQualityCheck
          : (leftSideQualityCheck as String?),
      rightSideQualityCheck: rightSideQualityCheck == _undefined
          ? _instance.rightSideQualityCheck
          : (rightSideQualityCheck as String?),
      additionalImages:
          additionalImages == _undefined || additionalImages == null
          ? _instance.additionalImages
          : (additionalImages as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchLoadOuts$loadOuts$nodes$containerImages<
  TRes
>
    implements
        CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerImages<TRes> {
  _CopyWithStubImpl$Query$SearchLoadOuts$loadOuts$nodes$containerImages(
    this._res,
  );

  TRes _res;

  call({
    String? heap,
    String? empty,
    String? halfLoadedWithContainerNumber,
    String? fullyLoaded,
    String? fullyLoadedOneDoorShut,
    String? fullyLoadedOneDoorShutRadiation,
    String? fullyLoadedBothDoorsShutSeals,
    String? leftSideQualityCheck,
    String? rightSideQualityCheck,
    List<String>? additionalImages,
    String? $__typename,
  }) => _res;
}

class Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails {
  Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails({
    this.imagePath,
    this.$__typename = 'ContainerSealDetail',
  });

  factory Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$imagePath = json['imagePath'];
    final l$$__typename = json['__typename'];
    return Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails(
      imagePath: (l$imagePath as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? imagePath;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$imagePath = imagePath;
    _resultData['imagePath'] = l$imagePath;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$imagePath = imagePath;
    final l$$__typename = $__typename;
    return Object.hashAll([l$imagePath, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$imagePath = imagePath;
    final lOther$imagePath = other.imagePath;
    if (l$imagePath != lOther$imagePath) {
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

extension UtilityExtension$Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails
    on Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails {
  CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails<
    Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails
  >
  get copyWith =>
      CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails<
  TRes
> {
  factory CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails(
    Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails instance,
    TRes Function(Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails)
    then,
  ) = _CopyWithImpl$Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails;

  factory CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails;

  TRes call({String? imagePath, String? $__typename});
}

class _CopyWithImpl$Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails<
  TRes
>
    implements
        CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails<
          TRes
        > {
  _CopyWithImpl$Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails(
    this._instance,
    this._then,
  );

  final Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails _instance;

  final TRes Function(Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? imagePath = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails(
      imagePath: imagePath == _undefined
          ? _instance.imagePath
          : (imagePath as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails<
  TRes
>
    implements
        CopyWith$Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchLoadOuts$loadOuts$nodes$containerSealDetails(
    this._res,
  );

  TRes _res;

  call({String? imagePath, String? $__typename}) => _res;
}
