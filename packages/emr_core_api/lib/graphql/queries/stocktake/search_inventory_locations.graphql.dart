import '../../fragments/uomvalue_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchInventoryLocations {
  factory Variables$Query$SearchInventoryLocations({
    required Input$SearchInventoryLocationsInput input,
    int? first,
    int? last,
    String? before,
    String? after,
  }) => Variables$Query$SearchInventoryLocations._({
    r'input': input,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
  });

  Variables$Query$SearchInventoryLocations._(this._$data);

  factory Variables$Query$SearchInventoryLocations.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchInventoryLocationsInput.fromJson(
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
    return Variables$Query$SearchInventoryLocations._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchInventoryLocationsInput get input =>
      (_$data['input'] as Input$SearchInventoryLocationsInput);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

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
    return result$data;
  }

  CopyWith$Variables$Query$SearchInventoryLocations<
    Variables$Query$SearchInventoryLocations
  >
  get copyWith =>
      CopyWith$Variables$Query$SearchInventoryLocations(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchInventoryLocations ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    final l$first = first;
    final l$last = last;
    final l$before = before;
    final l$after = after;
    return Object.hashAll([
      l$input,
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchInventoryLocations<TRes> {
  factory CopyWith$Variables$Query$SearchInventoryLocations(
    Variables$Query$SearchInventoryLocations instance,
    TRes Function(Variables$Query$SearchInventoryLocations) then,
  ) = _CopyWithImpl$Variables$Query$SearchInventoryLocations;

  factory CopyWith$Variables$Query$SearchInventoryLocations.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchInventoryLocations;

  TRes call({
    Input$SearchInventoryLocationsInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
  });
}

class _CopyWithImpl$Variables$Query$SearchInventoryLocations<TRes>
    implements CopyWith$Variables$Query$SearchInventoryLocations<TRes> {
  _CopyWithImpl$Variables$Query$SearchInventoryLocations(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchInventoryLocations _instance;

  final TRes Function(Variables$Query$SearchInventoryLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
  }) => _then(
    Variables$Query$SearchInventoryLocations._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchInventoryLocationsInput),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchInventoryLocations<TRes>
    implements CopyWith$Variables$Query$SearchInventoryLocations<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchInventoryLocations(this._res);

  TRes _res;

  call({
    Input$SearchInventoryLocationsInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
  }) => _res;
}

class Query$SearchInventoryLocations {
  Query$SearchInventoryLocations({
    this.searchInventoryLocations,
    this.$__typename = 'Query',
  });

  factory Query$SearchInventoryLocations.fromJson(Map<String, dynamic> json) {
    final l$searchInventoryLocations = json['searchInventoryLocations'];
    final l$$__typename = json['__typename'];
    return Query$SearchInventoryLocations(
      searchInventoryLocations: l$searchInventoryLocations == null
          ? null
          : Query$SearchInventoryLocations$searchInventoryLocations.fromJson(
              (l$searchInventoryLocations as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchInventoryLocations$searchInventoryLocations?
  searchInventoryLocations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchInventoryLocations = searchInventoryLocations;
    _resultData['searchInventoryLocations'] = l$searchInventoryLocations
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchInventoryLocations = searchInventoryLocations;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchInventoryLocations, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchInventoryLocations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchInventoryLocations = searchInventoryLocations;
    final lOther$searchInventoryLocations = other.searchInventoryLocations;
    if (l$searchInventoryLocations != lOther$searchInventoryLocations) {
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

extension UtilityExtension$Query$SearchInventoryLocations
    on Query$SearchInventoryLocations {
  CopyWith$Query$SearchInventoryLocations<Query$SearchInventoryLocations>
  get copyWith => CopyWith$Query$SearchInventoryLocations(this, (i) => i);
}

abstract class CopyWith$Query$SearchInventoryLocations<TRes> {
  factory CopyWith$Query$SearchInventoryLocations(
    Query$SearchInventoryLocations instance,
    TRes Function(Query$SearchInventoryLocations) then,
  ) = _CopyWithImpl$Query$SearchInventoryLocations;

  factory CopyWith$Query$SearchInventoryLocations.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchInventoryLocations;

  TRes call({
    Query$SearchInventoryLocations$searchInventoryLocations?
    searchInventoryLocations,
    String? $__typename,
  });
  CopyWith$Query$SearchInventoryLocations$searchInventoryLocations<TRes>
  get searchInventoryLocations;
}

class _CopyWithImpl$Query$SearchInventoryLocations<TRes>
    implements CopyWith$Query$SearchInventoryLocations<TRes> {
  _CopyWithImpl$Query$SearchInventoryLocations(this._instance, this._then);

  final Query$SearchInventoryLocations _instance;

  final TRes Function(Query$SearchInventoryLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchInventoryLocations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchInventoryLocations(
      searchInventoryLocations: searchInventoryLocations == _undefined
          ? _instance.searchInventoryLocations
          : (searchInventoryLocations
                as Query$SearchInventoryLocations$searchInventoryLocations?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchInventoryLocations$searchInventoryLocations<TRes>
  get searchInventoryLocations {
    final local$searchInventoryLocations = _instance.searchInventoryLocations;
    return local$searchInventoryLocations == null
        ? CopyWith$Query$SearchInventoryLocations$searchInventoryLocations.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchInventoryLocations$searchInventoryLocations(
            local$searchInventoryLocations,
            (e) => call(searchInventoryLocations: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchInventoryLocations<TRes>
    implements CopyWith$Query$SearchInventoryLocations<TRes> {
  _CopyWithStubImpl$Query$SearchInventoryLocations(this._res);

  TRes _res;

  call({
    Query$SearchInventoryLocations$searchInventoryLocations?
    searchInventoryLocations,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchInventoryLocations$searchInventoryLocations<TRes>
  get searchInventoryLocations =>
      CopyWith$Query$SearchInventoryLocations$searchInventoryLocations.stub(
        _res,
      );
}

const documentNodeQuerySearchInventoryLocations = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchInventoryLocations'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchInventoryLocationsInput'),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'searchInventoryLocations'),
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
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'before'),
                value: VariableNode(name: NameNode(value: 'before')),
              ),
              ArgumentNode(
                name: NameNode(value: 'last'),
                value: VariableNode(name: NameNode(value: 'last')),
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
                        name: NameNode(value: 'description'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'yardId'),
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
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'active'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'parentId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'barcode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'weight'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'UomValueFragment'),
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
                        name: NameNode(value: 'rate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'UomValueFragment'),
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
                        name: NameNode(value: 'product'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'classification'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'family'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'line'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'class'),
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
                              name: NameNode(value: 'description'),
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
                        name: NameNode(value: 'inventoryLocationType'),
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
    fragmentDefinitionUomValueFragment,
  ],
);

class Query$SearchInventoryLocations$searchInventoryLocations {
  Query$SearchInventoryLocations$searchInventoryLocations({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchInventoryLocationsConnection',
  });

  factory Query$SearchInventoryLocations$searchInventoryLocations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchInventoryLocations$searchInventoryLocations(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$SearchInventoryLocations$searchInventoryLocations$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Query$SearchInventoryLocations$searchInventoryLocations$nodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SearchInventoryLocations$searchInventoryLocations$pageInfo
  pageInfo;

  final List<Query$SearchInventoryLocations$searchInventoryLocations$nodes>?
  nodes;

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
    if (other is! Query$SearchInventoryLocations$searchInventoryLocations ||
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

extension UtilityExtension$Query$SearchInventoryLocations$searchInventoryLocations
    on Query$SearchInventoryLocations$searchInventoryLocations {
  CopyWith$Query$SearchInventoryLocations$searchInventoryLocations<
    Query$SearchInventoryLocations$searchInventoryLocations
  >
  get copyWith =>
      CopyWith$Query$SearchInventoryLocations$searchInventoryLocations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchInventoryLocations$searchInventoryLocations<
  TRes
> {
  factory CopyWith$Query$SearchInventoryLocations$searchInventoryLocations(
    Query$SearchInventoryLocations$searchInventoryLocations instance,
    TRes Function(Query$SearchInventoryLocations$searchInventoryLocations) then,
  ) = _CopyWithImpl$Query$SearchInventoryLocations$searchInventoryLocations;

  factory CopyWith$Query$SearchInventoryLocations$searchInventoryLocations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchInventoryLocations$searchInventoryLocations;

  TRes call({
    int? totalCount,
    Query$SearchInventoryLocations$searchInventoryLocations$pageInfo? pageInfo,
    List<Query$SearchInventoryLocations$searchInventoryLocations$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo<
    TRes
  >
  get pageInfo;
  TRes nodes(
    Iterable<Query$SearchInventoryLocations$searchInventoryLocations$nodes>?
    Function(
      Iterable<
        CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes<
          Query$SearchInventoryLocations$searchInventoryLocations$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchInventoryLocations$searchInventoryLocations<
  TRes
>
    implements
        CopyWith$Query$SearchInventoryLocations$searchInventoryLocations<TRes> {
  _CopyWithImpl$Query$SearchInventoryLocations$searchInventoryLocations(
    this._instance,
    this._then,
  );

  final Query$SearchInventoryLocations$searchInventoryLocations _instance;

  final TRes Function(Query$SearchInventoryLocations$searchInventoryLocations)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchInventoryLocations$searchInventoryLocations(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$SearchInventoryLocations$searchInventoryLocations$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SearchInventoryLocations$searchInventoryLocations$nodes
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo<
    TRes
  >
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$SearchInventoryLocations$searchInventoryLocations$nodes>?
    Function(
      Iterable<
        CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes<
          Query$SearchInventoryLocations$searchInventoryLocations$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) =>
            CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchInventoryLocations$searchInventoryLocations<
  TRes
>
    implements
        CopyWith$Query$SearchInventoryLocations$searchInventoryLocations<TRes> {
  _CopyWithStubImpl$Query$SearchInventoryLocations$searchInventoryLocations(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$SearchInventoryLocations$searchInventoryLocations$pageInfo? pageInfo,
    List<Query$SearchInventoryLocations$searchInventoryLocations$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo<
    TRes
  >
  get pageInfo =>
      CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$SearchInventoryLocations$searchInventoryLocations$pageInfo {
  Query$SearchInventoryLocations$searchInventoryLocations$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchInventoryLocations$searchInventoryLocations$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchInventoryLocations$searchInventoryLocations$pageInfo(
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
            is! Query$SearchInventoryLocations$searchInventoryLocations$pageInfo ||
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

extension UtilityExtension$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo
    on Query$SearchInventoryLocations$searchInventoryLocations$pageInfo {
  CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo<
    Query$SearchInventoryLocations$searchInventoryLocations$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo<
  TRes
> {
  factory CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo(
    Query$SearchInventoryLocations$searchInventoryLocations$pageInfo instance,
    TRes Function(
      Query$SearchInventoryLocations$searchInventoryLocations$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo;

  factory CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchInventoryLocations$searchInventoryLocations$pageInfo
  _instance;

  final TRes Function(
    Query$SearchInventoryLocations$searchInventoryLocations$pageInfo,
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
    Query$SearchInventoryLocations$searchInventoryLocations$pageInfo(
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

class _CopyWithStubImpl$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchInventoryLocations$searchInventoryLocations$pageInfo(
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

class Query$SearchInventoryLocations$searchInventoryLocations$nodes {
  Query$SearchInventoryLocations$searchInventoryLocations$nodes({
    required this.description,
    required this.yardId,
    required this.id,
    required this.code,
    required this.active,
    this.parentId,
    required this.barcode,
    required this.weight,
    required this.rate,
    this.product,
    required this.inventoryLocationType,
    this.$__typename = 'InventoryLocation',
  });

  factory Query$SearchInventoryLocations$searchInventoryLocations$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$description = json['description'];
    final l$yardId = json['yardId'];
    final l$id = json['id'];
    final l$code = json['code'];
    final l$active = json['active'];
    final l$parentId = json['parentId'];
    final l$barcode = json['barcode'];
    final l$weight = json['weight'];
    final l$rate = json['rate'];
    final l$product = json['product'];
    final l$inventoryLocationType = json['inventoryLocationType'];
    final l$$__typename = json['__typename'];
    return Query$SearchInventoryLocations$searchInventoryLocations$nodes(
      description: (l$description as String),
      yardId: (l$yardId as String),
      id: (l$id as String),
      code: (l$code as String),
      active: (l$active as bool),
      parentId: (l$parentId as String?),
      barcode: (l$barcode as String),
      weight: Fragment$UomValueFragment.fromJson(
        (l$weight as Map<String, dynamic>),
      ),
      rate: Fragment$UomValueFragment.fromJson(
        (l$rate as Map<String, dynamic>),
      ),
      product: l$product == null
          ? null
          : Query$SearchInventoryLocations$searchInventoryLocations$nodes$product.fromJson(
              (l$product as Map<String, dynamic>),
            ),
      inventoryLocationType: fromJson$Enum$InventoryLocationType(
        (l$inventoryLocationType as String),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String description;

  final String yardId;

  final String id;

  final String code;

  final bool active;

  final String? parentId;

  final String barcode;

  final Fragment$UomValueFragment weight;

  final Fragment$UomValueFragment rate;

  final Query$SearchInventoryLocations$searchInventoryLocations$nodes$product?
  product;

  final Enum$InventoryLocationType inventoryLocationType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$description = description;
    _resultData['description'] = l$description;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$parentId = parentId;
    _resultData['parentId'] = l$parentId;
    final l$barcode = barcode;
    _resultData['barcode'] = l$barcode;
    final l$weight = weight;
    _resultData['weight'] = l$weight.toJson();
    final l$rate = rate;
    _resultData['rate'] = l$rate.toJson();
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$inventoryLocationType = inventoryLocationType;
    _resultData['inventoryLocationType'] = toJson$Enum$InventoryLocationType(
      l$inventoryLocationType,
    );
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$yardId = yardId;
    final l$id = id;
    final l$code = code;
    final l$active = active;
    final l$parentId = parentId;
    final l$barcode = barcode;
    final l$weight = weight;
    final l$rate = rate;
    final l$product = product;
    final l$inventoryLocationType = inventoryLocationType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$description,
      l$yardId,
      l$id,
      l$code,
      l$active,
      l$parentId,
      l$barcode,
      l$weight,
      l$rate,
      l$product,
      l$inventoryLocationType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchInventoryLocations$searchInventoryLocations$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$parentId = parentId;
    final lOther$parentId = other.parentId;
    if (l$parentId != lOther$parentId) {
      return false;
    }
    final l$barcode = barcode;
    final lOther$barcode = other.barcode;
    if (l$barcode != lOther$barcode) {
      return false;
    }
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    final l$inventoryLocationType = inventoryLocationType;
    final lOther$inventoryLocationType = other.inventoryLocationType;
    if (l$inventoryLocationType != lOther$inventoryLocationType) {
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

extension UtilityExtension$Query$SearchInventoryLocations$searchInventoryLocations$nodes
    on Query$SearchInventoryLocations$searchInventoryLocations$nodes {
  CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes<
    Query$SearchInventoryLocations$searchInventoryLocations$nodes
  >
  get copyWith =>
      CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes<
  TRes
> {
  factory CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes(
    Query$SearchInventoryLocations$searchInventoryLocations$nodes instance,
    TRes Function(Query$SearchInventoryLocations$searchInventoryLocations$nodes)
    then,
  ) = _CopyWithImpl$Query$SearchInventoryLocations$searchInventoryLocations$nodes;

  factory CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchInventoryLocations$searchInventoryLocations$nodes;

  TRes call({
    String? description,
    String? yardId,
    String? id,
    String? code,
    bool? active,
    String? parentId,
    String? barcode,
    Fragment$UomValueFragment? weight,
    Fragment$UomValueFragment? rate,
    Query$SearchInventoryLocations$searchInventoryLocations$nodes$product?
    product,
    Enum$InventoryLocationType? inventoryLocationType,
    String? $__typename,
  });
  CopyWith$Fragment$UomValueFragment<TRes> get weight;
  CopyWith$Fragment$UomValueFragment<TRes> get rate;
  CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product<
    TRes
  >
  get product;
}

class _CopyWithImpl$Query$SearchInventoryLocations$searchInventoryLocations$nodes<
  TRes
>
    implements
        CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SearchInventoryLocations$searchInventoryLocations$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchInventoryLocations$searchInventoryLocations$nodes _instance;

  final TRes Function(
    Query$SearchInventoryLocations$searchInventoryLocations$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? yardId = _undefined,
    Object? id = _undefined,
    Object? code = _undefined,
    Object? active = _undefined,
    Object? parentId = _undefined,
    Object? barcode = _undefined,
    Object? weight = _undefined,
    Object? rate = _undefined,
    Object? product = _undefined,
    Object? inventoryLocationType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchInventoryLocations$searchInventoryLocations$nodes(
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      parentId: parentId == _undefined
          ? _instance.parentId
          : (parentId as String?),
      barcode: barcode == _undefined || barcode == null
          ? _instance.barcode
          : (barcode as String),
      weight: weight == _undefined || weight == null
          ? _instance.weight
          : (weight as Fragment$UomValueFragment),
      rate: rate == _undefined || rate == null
          ? _instance.rate
          : (rate as Fragment$UomValueFragment),
      product: product == _undefined
          ? _instance.product
          : (product
                as Query$SearchInventoryLocations$searchInventoryLocations$nodes$product?),
      inventoryLocationType:
          inventoryLocationType == _undefined || inventoryLocationType == null
          ? _instance.inventoryLocationType
          : (inventoryLocationType as Enum$InventoryLocationType),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$UomValueFragment<TRes> get weight {
    final local$weight = _instance.weight;
    return CopyWith$Fragment$UomValueFragment(
      local$weight,
      (e) => call(weight: e),
    );
  }

  CopyWith$Fragment$UomValueFragment<TRes> get rate {
    final local$rate = _instance.rate;
    return CopyWith$Fragment$UomValueFragment(local$rate, (e) => call(rate: e));
  }

  CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product<
    TRes
  >
  get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product(
            local$product,
            (e) => call(product: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchInventoryLocations$searchInventoryLocations$nodes<
  TRes
>
    implements
        CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchInventoryLocations$searchInventoryLocations$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? description,
    String? yardId,
    String? id,
    String? code,
    bool? active,
    String? parentId,
    String? barcode,
    Fragment$UomValueFragment? weight,
    Fragment$UomValueFragment? rate,
    Query$SearchInventoryLocations$searchInventoryLocations$nodes$product?
    product,
    Enum$InventoryLocationType? inventoryLocationType,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$UomValueFragment<TRes> get weight =>
      CopyWith$Fragment$UomValueFragment.stub(_res);

  CopyWith$Fragment$UomValueFragment<TRes> get rate =>
      CopyWith$Fragment$UomValueFragment.stub(_res);

  CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product<
    TRes
  >
  get product =>
      CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product.stub(
        _res,
      );
}

class Query$SearchInventoryLocations$searchInventoryLocations$nodes$product {
  Query$SearchInventoryLocations$searchInventoryLocations$nodes$product({
    required this.code,
    required this.classification,
    required this.description,
    this.$__typename = 'Product',
  });

  factory Query$SearchInventoryLocations$searchInventoryLocations$nodes$product.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$classification = json['classification'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$SearchInventoryLocations$searchInventoryLocations$nodes$product(
      code: (l$code as String),
      classification:
          Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification.fromJson(
            (l$classification as Map<String, dynamic>),
          ),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification
  classification;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$classification = classification;
    _resultData['classification'] = l$classification.toJson();
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$classification = classification;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$classification,
      l$description,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchInventoryLocations$searchInventoryLocations$nodes$product ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$classification = classification;
    final lOther$classification = other.classification;
    if (l$classification != lOther$classification) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtension$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product
    on Query$SearchInventoryLocations$searchInventoryLocations$nodes$product {
  CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product<
    Query$SearchInventoryLocations$searchInventoryLocations$nodes$product
  >
  get copyWith =>
      CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product<
  TRes
> {
  factory CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product(
    Query$SearchInventoryLocations$searchInventoryLocations$nodes$product
    instance,
    TRes Function(
      Query$SearchInventoryLocations$searchInventoryLocations$nodes$product,
    )
    then,
  ) = _CopyWithImpl$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product;

  factory CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product;

  TRes call({
    String? code,
    Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification?
    classification,
    String? description,
    String? $__typename,
  });
  CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification<
    TRes
  >
  get classification;
}

class _CopyWithImpl$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product<
  TRes
>
    implements
        CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product<
          TRes
        > {
  _CopyWithImpl$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product(
    this._instance,
    this._then,
  );

  final Query$SearchInventoryLocations$searchInventoryLocations$nodes$product
  _instance;

  final TRes Function(
    Query$SearchInventoryLocations$searchInventoryLocations$nodes$product,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? classification = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchInventoryLocations$searchInventoryLocations$nodes$product(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      classification: classification == _undefined || classification == null
          ? _instance.classification
          : (classification
                as Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification<
    TRes
  >
  get classification {
    final local$classification = _instance.classification;
    return CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification(
      local$classification,
      (e) => call(classification: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product<
  TRes
>
    implements
        CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification?
    classification,
    String? description,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification<
    TRes
  >
  get classification =>
      CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification.stub(
        _res,
      );
}

class Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification {
  Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification({
    required this.family,
    required this.line,
    required this.$class,
    this.$__typename = 'ProductClassification',
  });

  factory Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$family = json['family'];
    final l$line = json['line'];
    final l$$class = json['class'];
    final l$$__typename = json['__typename'];
    return Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification(
      family: (l$family as String),
      line: (l$line as String),
      $class: (l$$class as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String family;

  final String line;

  final String $class;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$family = family;
    _resultData['family'] = l$family;
    final l$line = line;
    _resultData['line'] = l$line;
    final l$$class = $class;
    _resultData['class'] = l$$class;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$family = family;
    final l$line = line;
    final l$$class = $class;
    final l$$__typename = $__typename;
    return Object.hashAll([l$family, l$line, l$$class, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
      return false;
    }
    final l$line = line;
    final lOther$line = other.line;
    if (l$line != lOther$line) {
      return false;
    }
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (l$$class != lOther$$class) {
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

extension UtilityExtension$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification
    on
        Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification {
  CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification<
    Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification
  >
  get copyWith =>
      CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification<
  TRes
> {
  factory CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification(
    Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification
    instance,
    TRes Function(
      Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification,
    )
    then,
  ) = _CopyWithImpl$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification;

  factory CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification;

  TRes call({
    String? family,
    String? line,
    String? $class,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification<
  TRes
>
    implements
        CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification<
          TRes
        > {
  _CopyWithImpl$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification(
    this._instance,
    this._then,
  );

  final Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification
  _instance;

  final TRes Function(
    Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? family = _undefined,
    Object? line = _undefined,
    Object? $class = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification(
      family: family == _undefined || family == null
          ? _instance.family
          : (family as String),
      line: line == _undefined || line == null
          ? _instance.line
          : (line as String),
      $class: $class == _undefined || $class == null
          ? _instance.$class
          : ($class as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification<
  TRes
>
    implements
        CopyWith$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchInventoryLocations$searchInventoryLocations$nodes$product$classification(
    this._res,
  );

  TRes _res;

  call({String? family, String? line, String? $class, String? $__typename}) =>
      _res;
}
