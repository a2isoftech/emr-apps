import '../../../fragments/inventory/elv/vehicle_fields.graphql.dart';
import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchELVInventory {
  factory Variables$Query$SearchELVInventory({
    required Input$SearchELVInventoryInput input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$ELVInventory_SearchResultSortInput>? order,
  }) => Variables$Query$SearchELVInventory._({
    r'input': input,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
    if (order != null) r'order': order,
  });

  Variables$Query$SearchELVInventory._(this._$data);

  factory Variables$Query$SearchELVInventory.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchELVInventoryInput.fromJson(
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
            (e) => Input$ELVInventory_SearchResultSortInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    return Variables$Query$SearchELVInventory._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchELVInventoryInput get input =>
      (_$data['input'] as Input$SearchELVInventoryInput);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  List<Input$ELVInventory_SearchResultSortInput>? get order =>
      (_$data['order'] as List<Input$ELVInventory_SearchResultSortInput>?);

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

  CopyWith$Variables$Query$SearchELVInventory<
    Variables$Query$SearchELVInventory
  >
  get copyWith => CopyWith$Variables$Query$SearchELVInventory(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchELVInventory ||
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

abstract class CopyWith$Variables$Query$SearchELVInventory<TRes> {
  factory CopyWith$Variables$Query$SearchELVInventory(
    Variables$Query$SearchELVInventory instance,
    TRes Function(Variables$Query$SearchELVInventory) then,
  ) = _CopyWithImpl$Variables$Query$SearchELVInventory;

  factory CopyWith$Variables$Query$SearchELVInventory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchELVInventory;

  TRes call({
    Input$SearchELVInventoryInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$ELVInventory_SearchResultSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$SearchELVInventory<TRes>
    implements CopyWith$Variables$Query$SearchELVInventory<TRes> {
  _CopyWithImpl$Variables$Query$SearchELVInventory(this._instance, this._then);

  final Variables$Query$SearchELVInventory _instance;

  final TRes Function(Variables$Query$SearchELVInventory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$SearchELVInventory._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchELVInventoryInput),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
      if (order != _undefined)
        'order': (order as List<Input$ELVInventory_SearchResultSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchELVInventory<TRes>
    implements CopyWith$Variables$Query$SearchELVInventory<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchELVInventory(this._res);

  TRes _res;

  call({
    Input$SearchELVInventoryInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$ELVInventory_SearchResultSortInput>? order,
  }) => _res;
}

class Query$SearchELVInventory {
  Query$SearchELVInventory({
    this.searchELVInventory,
    this.$__typename = 'Query',
  });

  factory Query$SearchELVInventory.fromJson(Map<String, dynamic> json) {
    final l$searchELVInventory = json['searchELVInventory'];
    final l$$__typename = json['__typename'];
    return Query$SearchELVInventory(
      searchELVInventory: l$searchELVInventory == null
          ? null
          : Query$SearchELVInventory$searchELVInventory.fromJson(
              (l$searchELVInventory as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchELVInventory$searchELVInventory? searchELVInventory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchELVInventory = searchELVInventory;
    _resultData['searchELVInventory'] = l$searchELVInventory?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchELVInventory = searchELVInventory;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchELVInventory, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchELVInventory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchELVInventory = searchELVInventory;
    final lOther$searchELVInventory = other.searchELVInventory;
    if (l$searchELVInventory != lOther$searchELVInventory) {
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

extension UtilityExtension$Query$SearchELVInventory
    on Query$SearchELVInventory {
  CopyWith$Query$SearchELVInventory<Query$SearchELVInventory> get copyWith =>
      CopyWith$Query$SearchELVInventory(this, (i) => i);
}

abstract class CopyWith$Query$SearchELVInventory<TRes> {
  factory CopyWith$Query$SearchELVInventory(
    Query$SearchELVInventory instance,
    TRes Function(Query$SearchELVInventory) then,
  ) = _CopyWithImpl$Query$SearchELVInventory;

  factory CopyWith$Query$SearchELVInventory.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchELVInventory;

  TRes call({
    Query$SearchELVInventory$searchELVInventory? searchELVInventory,
    String? $__typename,
  });
  CopyWith$Query$SearchELVInventory$searchELVInventory<TRes>
  get searchELVInventory;
}

class _CopyWithImpl$Query$SearchELVInventory<TRes>
    implements CopyWith$Query$SearchELVInventory<TRes> {
  _CopyWithImpl$Query$SearchELVInventory(this._instance, this._then);

  final Query$SearchELVInventory _instance;

  final TRes Function(Query$SearchELVInventory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchELVInventory = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchELVInventory(
      searchELVInventory: searchELVInventory == _undefined
          ? _instance.searchELVInventory
          : (searchELVInventory
                as Query$SearchELVInventory$searchELVInventory?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchELVInventory$searchELVInventory<TRes>
  get searchELVInventory {
    final local$searchELVInventory = _instance.searchELVInventory;
    return local$searchELVInventory == null
        ? CopyWith$Query$SearchELVInventory$searchELVInventory.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchELVInventory$searchELVInventory(
            local$searchELVInventory,
            (e) => call(searchELVInventory: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchELVInventory<TRes>
    implements CopyWith$Query$SearchELVInventory<TRes> {
  _CopyWithStubImpl$Query$SearchELVInventory(this._res);

  TRes _res;

  call({
    Query$SearchELVInventory$searchELVInventory? searchELVInventory,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchELVInventory$searchELVInventory<TRes>
  get searchELVInventory =>
      CopyWith$Query$SearchELVInventory$searchELVInventory.stub(_res);
}

const documentNodeQuerySearchELVInventory = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchELVInventory'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchELVInventoryInput'),
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
              name: NameNode(value: 'ELVInventory_SearchResultSortInput'),
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
            name: NameNode(value: 'searchELVInventory'),
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
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      InlineFragmentNode(
                        typeCondition: TypeConditionNode(
                          on: NamedTypeNode(
                            name: NameNode(value: 'Vehicle'),
                            isNonNull: false,
                          ),
                        ),
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'VehicleFields'),
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
                      InlineFragmentNode(
                        typeCondition: TypeConditionNode(
                          on: NamedTypeNode(
                            name: NameNode(value: 'VehiclePart'),
                            isNonNull: false,
                          ),
                        ),
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'type'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'manufacturer'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'description'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'partStatus'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'stockValue'),
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
                                  FieldNode(
                                    name: NameNode(value: 'uom'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'value'),
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
                              name: NameNode(value: 'location'),
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
                                    name: NameNode(value: 'yard'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'yardCode'),
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
                              name: NameNode(value: 'vehicleIdentifier'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'vehicle'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'vin'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'vrn'),
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
    fragmentDefinitionVehicleFields,
  ],
);

class Query$SearchELVInventory$searchELVInventory {
  Query$SearchELVInventory$searchELVInventory({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchELVInventoryConnection',
  });

  factory Query$SearchELVInventory$searchELVInventory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchELVInventory$searchELVInventory(
      totalCount: (l$totalCount as int),
      pageInfo: Query$SearchELVInventory$searchELVInventory$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$SearchELVInventory$searchELVInventory$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SearchELVInventory$searchELVInventory$pageInfo pageInfo;

  final List<Query$SearchELVInventory$searchELVInventory$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
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
    if (other is! Query$SearchELVInventory$searchELVInventory ||
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

extension UtilityExtension$Query$SearchELVInventory$searchELVInventory
    on Query$SearchELVInventory$searchELVInventory {
  CopyWith$Query$SearchELVInventory$searchELVInventory<
    Query$SearchELVInventory$searchELVInventory
  >
  get copyWith =>
      CopyWith$Query$SearchELVInventory$searchELVInventory(this, (i) => i);
}

abstract class CopyWith$Query$SearchELVInventory$searchELVInventory<TRes> {
  factory CopyWith$Query$SearchELVInventory$searchELVInventory(
    Query$SearchELVInventory$searchELVInventory instance,
    TRes Function(Query$SearchELVInventory$searchELVInventory) then,
  ) = _CopyWithImpl$Query$SearchELVInventory$searchELVInventory;

  factory CopyWith$Query$SearchELVInventory$searchELVInventory.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory;

  TRes call({
    int? totalCount,
    Query$SearchELVInventory$searchELVInventory$pageInfo? pageInfo,
    List<Query$SearchELVInventory$searchELVInventory$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchELVInventory$searchELVInventory$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$SearchELVInventory$searchELVInventory$nodes?>? Function(
      Iterable<
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes<
          Query$SearchELVInventory$searchELVInventory$nodes
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchELVInventory$searchELVInventory<TRes>
    implements CopyWith$Query$SearchELVInventory$searchELVInventory<TRes> {
  _CopyWithImpl$Query$SearchELVInventory$searchELVInventory(
    this._instance,
    this._then,
  );

  final Query$SearchELVInventory$searchELVInventory _instance;

  final TRes Function(Query$SearchELVInventory$searchELVInventory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchELVInventory$searchELVInventory(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$SearchELVInventory$searchELVInventory$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<Query$SearchELVInventory$searchELVInventory$nodes?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchELVInventory$searchELVInventory$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchELVInventory$searchELVInventory$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$SearchELVInventory$searchELVInventory$nodes?>? Function(
      Iterable<
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes<
          Query$SearchELVInventory$searchELVInventory$nodes
        >?
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SearchELVInventory$searchELVInventory$nodes(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory<TRes>
    implements CopyWith$Query$SearchELVInventory$searchELVInventory<TRes> {
  _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$SearchELVInventory$searchELVInventory$pageInfo? pageInfo,
    List<Query$SearchELVInventory$searchELVInventory$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchELVInventory$searchELVInventory$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$SearchELVInventory$searchELVInventory$pageInfo {
  Query$SearchELVInventory$searchELVInventory$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchELVInventory$searchELVInventory$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchELVInventory$searchELVInventory$pageInfo(
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
    if (other is! Query$SearchELVInventory$searchELVInventory$pageInfo ||
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

extension UtilityExtension$Query$SearchELVInventory$searchELVInventory$pageInfo
    on Query$SearchELVInventory$searchELVInventory$pageInfo {
  CopyWith$Query$SearchELVInventory$searchELVInventory$pageInfo<
    Query$SearchELVInventory$searchELVInventory$pageInfo
  >
  get copyWith => CopyWith$Query$SearchELVInventory$searchELVInventory$pageInfo(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$SearchELVInventory$searchELVInventory$pageInfo<
  TRes
> {
  factory CopyWith$Query$SearchELVInventory$searchELVInventory$pageInfo(
    Query$SearchELVInventory$searchELVInventory$pageInfo instance,
    TRes Function(Query$SearchELVInventory$searchELVInventory$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$pageInfo;

  factory CopyWith$Query$SearchELVInventory$searchELVInventory$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$pageInfo<TRes>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchELVInventory$searchELVInventory$pageInfo _instance;

  final TRes Function(Query$SearchELVInventory$searchELVInventory$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchELVInventory$searchELVInventory$pageInfo(
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

class _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$pageInfo(
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

class Query$SearchELVInventory$searchELVInventory$nodes {
  Query$SearchELVInventory$searchELVInventory$nodes({
    required this.$__typename,
  });

  factory Query$SearchELVInventory$searchELVInventory$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "Vehicle":
        return Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle.fromJson(
          json,
        );

      case "VehiclePart":
        return Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Query$SearchELVInventory$searchELVInventory$nodes(
          $__typename: (l$$__typename as String),
        );
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
    if (other is! Query$SearchELVInventory$searchELVInventory$nodes ||
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

extension UtilityExtension$Query$SearchELVInventory$searchELVInventory$nodes
    on Query$SearchELVInventory$searchELVInventory$nodes {
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes<
    Query$SearchELVInventory$searchELVInventory$nodes
  >
  get copyWith => CopyWith$Query$SearchELVInventory$searchELVInventory$nodes(
    this,
    (i) => i,
  );

  _T when<_T>({
    required _T Function(
      Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle,
    )
    vehicle,
    required _T Function(
      Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart,
    )
    vehiclePart,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Vehicle":
        return vehicle(
          this as Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle,
        );

      case "VehiclePart":
        return vehiclePart(
          this
              as Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle)?
    vehicle,
    _T Function(Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart)?
    vehiclePart,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Vehicle":
        if (vehicle != null) {
          return vehicle(
            this as Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle,
          );
        } else {
          return orElse();
        }

      case "VehiclePart":
        if (vehiclePart != null) {
          return vehiclePart(
            this
                as Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$SearchELVInventory$searchELVInventory$nodes<
  TRes
> {
  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes(
    Query$SearchELVInventory$searchELVInventory$nodes instance,
    TRes Function(Query$SearchELVInventory$searchELVInventory$nodes) then,
  ) = _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes;

  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes<TRes>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes<TRes> {
  _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchELVInventory$searchELVInventory$nodes _instance;

  final TRes Function(Query$SearchELVInventory$searchELVInventory$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Query$SearchELVInventory$searchELVInventory$nodes(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes<TRes>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle
    implements
        Fragment$VehicleFields,
        Query$SearchELVInventory$searchELVInventory$nodes {
  Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle({
    this.vin,
    this.vrn,
    required this.vehicleStatus,
    this.stockValue,
    this.year,
    this.manufacturer,
    this.model,
    this.trim,
    this.fuelType,
    required this.id,
    this.location,
    required this.weight,
    this.product,
    required this.active,
    required this.vehicleParts,
    this.$__typename = 'Vehicle',
  });

  factory Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$vin = json['vin'];
    final l$vrn = json['vrn'];
    final l$vehicleStatus = json['vehicleStatus'];
    final l$stockValue = json['stockValue'];
    final l$year = json['year'];
    final l$manufacturer = json['manufacturer'];
    final l$model = json['model'];
    final l$trim = json['trim'];
    final l$fuelType = json['fuelType'];
    final l$id = json['id'];
    final l$location = json['location'];
    final l$weight = json['weight'];
    final l$product = json['product'];
    final l$active = json['active'];
    final l$vehicleParts = json['vehicleParts'];
    final l$$__typename = json['__typename'];
    return Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle(
      vin: (l$vin as String?),
      vrn: (l$vrn as String?),
      vehicleStatus: fromJson$Enum$VehicleStatus((l$vehicleStatus as String)),
      stockValue: (l$stockValue as num?)?.toDouble(),
      year: (l$year as int?),
      manufacturer: (l$manufacturer as String?),
      model: (l$model as String?),
      trim: (l$trim as String?),
      fuelType: (l$fuelType as String?),
      id: (l$id as String),
      location: l$location == null
          ? null
          : Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location.fromJson(
              (l$location as Map<String, dynamic>),
            ),
      weight:
          Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight.fromJson(
            (l$weight as Map<String, dynamic>),
          ),
      product: l$product == null
          ? null
          : Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product.fromJson(
              (l$product as Map<String, dynamic>),
            ),
      active: (l$active as bool),
      vehicleParts: (l$vehicleParts as List<dynamic>)
          .map(
            (e) =>
                Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? vin;

  final String? vrn;

  final Enum$VehicleStatus vehicleStatus;

  final double? stockValue;

  final int? year;

  final String? manufacturer;

  final String? model;

  final String? trim;

  final String? fuelType;

  final String id;

  final Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location?
  location;

  final Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight
  weight;

  final Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product?
  product;

  final bool active;

  final List<
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts
  >
  vehicleParts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vin = vin;
    _resultData['vin'] = l$vin;
    final l$vrn = vrn;
    _resultData['vrn'] = l$vrn;
    final l$vehicleStatus = vehicleStatus;
    _resultData['vehicleStatus'] = toJson$Enum$VehicleStatus(l$vehicleStatus);
    final l$stockValue = stockValue;
    _resultData['stockValue'] = l$stockValue;
    final l$year = year;
    _resultData['year'] = l$year;
    final l$manufacturer = manufacturer;
    _resultData['manufacturer'] = l$manufacturer;
    final l$model = model;
    _resultData['model'] = l$model;
    final l$trim = trim;
    _resultData['trim'] = l$trim;
    final l$fuelType = fuelType;
    _resultData['fuelType'] = l$fuelType;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$weight = weight;
    _resultData['weight'] = l$weight.toJson();
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$vehicleParts = vehicleParts;
    _resultData['vehicleParts'] = l$vehicleParts
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vin = vin;
    final l$vrn = vrn;
    final l$vehicleStatus = vehicleStatus;
    final l$stockValue = stockValue;
    final l$year = year;
    final l$manufacturer = manufacturer;
    final l$model = model;
    final l$trim = trim;
    final l$fuelType = fuelType;
    final l$id = id;
    final l$location = location;
    final l$weight = weight;
    final l$product = product;
    final l$active = active;
    final l$vehicleParts = vehicleParts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$vin,
      l$vrn,
      l$vehicleStatus,
      l$stockValue,
      l$year,
      l$manufacturer,
      l$model,
      l$trim,
      l$fuelType,
      l$id,
      l$location,
      l$weight,
      l$product,
      l$active,
      Object.hashAll(l$vehicleParts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$vin = vin;
    final lOther$vin = other.vin;
    if (l$vin != lOther$vin) {
      return false;
    }
    final l$vrn = vrn;
    final lOther$vrn = other.vrn;
    if (l$vrn != lOther$vrn) {
      return false;
    }
    final l$vehicleStatus = vehicleStatus;
    final lOther$vehicleStatus = other.vehicleStatus;
    if (l$vehicleStatus != lOther$vehicleStatus) {
      return false;
    }
    final l$stockValue = stockValue;
    final lOther$stockValue = other.stockValue;
    if (l$stockValue != lOther$stockValue) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    final l$manufacturer = manufacturer;
    final lOther$manufacturer = other.manufacturer;
    if (l$manufacturer != lOther$manufacturer) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (l$model != lOther$model) {
      return false;
    }
    final l$trim = trim;
    final lOther$trim = other.trim;
    if (l$trim != lOther$trim) {
      return false;
    }
    final l$fuelType = fuelType;
    final lOther$fuelType = other.fuelType;
    if (l$fuelType != lOther$fuelType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$vehicleParts = vehicleParts;
    final lOther$vehicleParts = other.vehicleParts;
    if (l$vehicleParts.length != lOther$vehicleParts.length) {
      return false;
    }
    for (int i = 0; i < l$vehicleParts.length; i++) {
      final l$vehicleParts$entry = l$vehicleParts[i];
      final lOther$vehicleParts$entry = lOther$vehicleParts[i];
      if (l$vehicleParts$entry != lOther$vehicleParts$entry) {
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

extension UtilityExtension$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle
    on Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle {
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle<
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle
  >
  get copyWith =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle<
  TRes
> {
  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle instance,
    TRes Function(Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle)
    then,
  ) = _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle;

  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle;

  TRes call({
    String? vin,
    String? vrn,
    Enum$VehicleStatus? vehicleStatus,
    double? stockValue,
    int? year,
    String? manufacturer,
    String? model,
    String? trim,
    String? fuelType,
    String? id,
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location?
    location,
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight? weight,
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product? product,
    bool? active,
    List<
      Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts
    >?
    vehicleParts,
    String? $__typename,
  });
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location<
    TRes
  >
  get location;
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight<
    TRes
  >
  get weight;
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product<
    TRes
  >
  get product;
  TRes vehicleParts(
    Iterable<
      Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts
    >
    Function(
      Iterable<
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts<
          Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle<
          TRes
        > {
  _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle(
    this._instance,
    this._then,
  );

  final Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle _instance;

  final TRes Function(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vin = _undefined,
    Object? vrn = _undefined,
    Object? vehicleStatus = _undefined,
    Object? stockValue = _undefined,
    Object? year = _undefined,
    Object? manufacturer = _undefined,
    Object? model = _undefined,
    Object? trim = _undefined,
    Object? fuelType = _undefined,
    Object? id = _undefined,
    Object? location = _undefined,
    Object? weight = _undefined,
    Object? product = _undefined,
    Object? active = _undefined,
    Object? vehicleParts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle(
      vin: vin == _undefined ? _instance.vin : (vin as String?),
      vrn: vrn == _undefined ? _instance.vrn : (vrn as String?),
      vehicleStatus: vehicleStatus == _undefined || vehicleStatus == null
          ? _instance.vehicleStatus
          : (vehicleStatus as Enum$VehicleStatus),
      stockValue: stockValue == _undefined
          ? _instance.stockValue
          : (stockValue as double?),
      year: year == _undefined ? _instance.year : (year as int?),
      manufacturer: manufacturer == _undefined
          ? _instance.manufacturer
          : (manufacturer as String?),
      model: model == _undefined ? _instance.model : (model as String?),
      trim: trim == _undefined ? _instance.trim : (trim as String?),
      fuelType: fuelType == _undefined
          ? _instance.fuelType
          : (fuelType as String?),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      location: location == _undefined
          ? _instance.location
          : (location
                as Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location?),
      weight: weight == _undefined || weight == null
          ? _instance.weight
          : (weight
                as Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight),
      product: product == _undefined
          ? _instance.product
          : (product
                as Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product?),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      vehicleParts: vehicleParts == _undefined || vehicleParts == null
          ? _instance.vehicleParts
          : (vehicleParts
                as List<
                  Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location<
    TRes
  >
  get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location(
            local$location,
            (e) => call(location: e),
          );
  }

  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight<
    TRes
  >
  get weight {
    final local$weight = _instance.weight;
    return CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight(
      local$weight,
      (e) => call(weight: e),
    );
  }

  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product<
    TRes
  >
  get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product(
            local$product,
            (e) => call(product: e),
          );
  }

  TRes vehicleParts(
    Iterable<
      Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts
    >
    Function(
      Iterable<
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts<
          Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts
        >
      >,
    )
    _fn,
  ) => call(
    vehicleParts: _fn(
      _instance.vehicleParts.map(
        (e) =>
            CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle(
    this._res,
  );

  TRes _res;

  call({
    String? vin,
    String? vrn,
    Enum$VehicleStatus? vehicleStatus,
    double? stockValue,
    int? year,
    String? manufacturer,
    String? model,
    String? trim,
    String? fuelType,
    String? id,
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location?
    location,
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight? weight,
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product? product,
    bool? active,
    List<
      Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts
    >?
    vehicleParts,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location<
    TRes
  >
  get location =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location.stub(
        _res,
      );

  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight<
    TRes
  >
  get weight =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight.stub(
        _res,
      );

  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product<
    TRes
  >
  get product =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product.stub(
        _res,
      );

  vehicleParts(_fn) => _res;
}

class Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location
    implements Fragment$VehicleFields$location {
  Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location({
    required this.code,
    required this.yardId,
    this.yard,
    this.$__typename = 'InventoryLocation',
  });

  factory Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$yardId = json['yardId'];
    final l$yard = json['yard'];
    final l$$__typename = json['__typename'];
    return Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location(
      code: (l$code as String),
      yardId: (l$yardId as String),
      yard: l$yard == null
          ? null
          : Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard.fromJson(
              (l$yard as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String yardId;

  final Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard?
  yard;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$yard = yard;
    _resultData['yard'] = l$yard?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$yardId = yardId;
    final l$yard = yard;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$yardId, l$yard, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
      return false;
    }
    final l$yard = yard;
    final lOther$yard = other.yard;
    if (l$yard != lOther$yard) {
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

extension UtilityExtension$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location
    on Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location {
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location<
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location
  >
  get copyWith =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location<
  TRes
> {
  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location
    instance,
    TRes Function(
      Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location,
    )
    then,
  ) = _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location;

  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location;

  TRes call({
    String? code,
    String? yardId,
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard?
    yard,
    String? $__typename,
  });
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard<
    TRes
  >
  get yard;
}

class _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location<
          TRes
        > {
  _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location(
    this._instance,
    this._then,
  );

  final Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location
  _instance;

  final TRes Function(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? yardId = _undefined,
    Object? yard = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      yard: yard == _undefined
          ? _instance.yard
          : (yard
                as Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard<
    TRes
  >
  get yard {
    final local$yard = _instance.yard;
    return local$yard == null
        ? CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard(
            local$yard,
            (e) => call(yard: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    String? yardId,
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard?
    yard,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard<
    TRes
  >
  get yard =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard.stub(
        _res,
      );
}

class Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard
    implements Fragment$VehicleFields$location$yard {
  Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard({
    required this.yardCode,
    this.$__typename = 'Yard',
  });

  factory Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$yardCode = json['yardCode'];
    final l$$__typename = json['__typename'];
    return Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard(
      yardCode: (l$yardCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String yardCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$yardCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
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

extension UtilityExtension$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard
    on Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard {
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard<
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard
  >
  get copyWith =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard<
  TRes
> {
  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard
    instance,
    TRes Function(
      Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard,
    )
    then,
  ) = _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard;

  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard;

  TRes call({String? yardCode, String? $__typename});
}

class _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard<
          TRes
        > {
  _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard(
    this._instance,
    this._then,
  );

  final Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard
  _instance;

  final TRes Function(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard(
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$location$yard(
    this._res,
  );

  TRes _res;

  call({String? yardCode, String? $__typename}) => _res;
}

class Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight
    implements Fragment$VehicleFields$weight {
  Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight({
    required this.uom,
    required this.value,
    required this.id,
    required this.mtValue,
    this.$__typename = 'UomValue',
  });

  factory Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$mtValue = json['mtValue'];
    final l$$__typename = json['__typename'];
    return Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      mtValue: (l$mtValue as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final int id;

  final double mtValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$mtValue = mtValue;
    _resultData['mtValue'] = l$mtValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$id = id;
    final l$mtValue = mtValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$id, l$mtValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$mtValue = mtValue;
    final lOther$mtValue = other.mtValue;
    if (l$mtValue != lOther$mtValue) {
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

extension UtilityExtension$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight
    on Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight {
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight<
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight
  >
  get copyWith =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight<
  TRes
> {
  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight instance,
    TRes Function(
      Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight,
    )
    then,
  ) = _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight;

  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight;

  TRes call({
    Enum$Uom? uom,
    double? value,
    int? id,
    double? mtValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight<
          TRes
        > {
  _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight(
    this._instance,
    this._then,
  );

  final Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight
  _instance;

  final TRes Function(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? mtValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      id: id == _undefined || id == null ? _instance.id : (id as int),
      mtValue: mtValue == _undefined || mtValue == null
          ? _instance.mtValue
          : (mtValue as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$weight(
    this._res,
  );

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    int? id,
    double? mtValue,
    String? $__typename,
  }) => _res;
}

class Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product
    implements Fragment$VehicleFields$product {
  Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product({
    required this.code,
    this.$__typename = 'Product',
  });

  factory Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product(
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product
    on Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product {
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product<
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product
  >
  get copyWith =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product<
  TRes
> {
  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product instance,
    TRes Function(
      Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product,
    )
    then,
  ) = _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product;

  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product;

  TRes call({String? code, String? $__typename});
}

class _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product<
          TRes
        > {
  _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product(
    this._instance,
    this._then,
  );

  final Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product
  _instance;

  final TRes Function(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product(
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$product(
    this._res,
  );

  TRes _res;

  call({String? code, String? $__typename}) => _res;
}

class Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts
    implements Fragment$VehicleFields$vehicleParts {
  Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts({
    required this.type,
    this.description,
    required this.partStatus,
    required this.weight,
    required this.active,
    this.$__typename = 'VehiclePart',
  });

  factory Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$type = json['type'];
    final l$description = json['description'];
    final l$partStatus = json['partStatus'];
    final l$weight = json['weight'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts(
      type: fromJson$Enum$PartType((l$type as String)),
      description: (l$description as String?),
      partStatus: fromJson$Enum$PartStatus((l$partStatus as String)),
      weight:
          Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight.fromJson(
            (l$weight as Map<String, dynamic>),
          ),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$PartType type;

  final String? description;

  final Enum$PartStatus partStatus;

  final Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight
  weight;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = toJson$Enum$PartType(l$type);
    final l$description = description;
    _resultData['description'] = l$description;
    final l$partStatus = partStatus;
    _resultData['partStatus'] = toJson$Enum$PartStatus(l$partStatus);
    final l$weight = weight;
    _resultData['weight'] = l$weight.toJson();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$description = description;
    final l$partStatus = partStatus;
    final l$weight = weight;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$description,
      l$partStatus,
      l$weight,
      l$active,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$partStatus = partStatus;
    final lOther$partStatus = other.partStatus;
    if (l$partStatus != lOther$partStatus) {
      return false;
    }
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
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

extension UtilityExtension$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts
    on Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts {
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts<
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts
  >
  get copyWith =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts<
  TRes
> {
  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts
    instance,
    TRes Function(
      Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts,
    )
    then,
  ) = _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts;

  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts;

  TRes call({
    Enum$PartType? type,
    String? description,
    Enum$PartStatus? partStatus,
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight?
    weight,
    bool? active,
    String? $__typename,
  });
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight<
    TRes
  >
  get weight;
}

class _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts<
          TRes
        > {
  _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts(
    this._instance,
    this._then,
  );

  final Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts
  _instance;

  final TRes Function(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? description = _undefined,
    Object? partStatus = _undefined,
    Object? weight = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts(
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$PartType),
      description: description == _undefined
          ? _instance.description
          : (description as String?),
      partStatus: partStatus == _undefined || partStatus == null
          ? _instance.partStatus
          : (partStatus as Enum$PartStatus),
      weight: weight == _undefined || weight == null
          ? _instance.weight
          : (weight
                as Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight<
    TRes
  >
  get weight {
    final local$weight = _instance.weight;
    return CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight(
      local$weight,
      (e) => call(weight: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts(
    this._res,
  );

  TRes _res;

  call({
    Enum$PartType? type,
    String? description,
    Enum$PartStatus? partStatus,
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight?
    weight,
    bool? active,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight<
    TRes
  >
  get weight =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight.stub(
        _res,
      );
}

class Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight
    implements Fragment$VehicleFields$vehicleParts$weight {
  Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight({
    required this.uom,
    required this.value,
    required this.id,
    required this.mtValue,
    this.$__typename = 'UomValue',
  });

  factory Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$mtValue = json['mtValue'];
    final l$$__typename = json['__typename'];
    return Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      mtValue: (l$mtValue as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final int id;

  final double mtValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$mtValue = mtValue;
    _resultData['mtValue'] = l$mtValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$id = id;
    final l$mtValue = mtValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$id, l$mtValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$mtValue = mtValue;
    final lOther$mtValue = other.mtValue;
    if (l$mtValue != lOther$mtValue) {
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

extension UtilityExtension$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight
    on Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight {
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight<
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight
  >
  get copyWith =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight<
  TRes
> {
  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight
    instance,
    TRes Function(
      Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight,
    )
    then,
  ) = _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight;

  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight;

  TRes call({
    Enum$Uom? uom,
    double? value,
    int? id,
    double? mtValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight<
          TRes
        > {
  _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight(
    this._instance,
    this._then,
  );

  final Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight
  _instance;

  final TRes Function(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? mtValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      id: id == _undefined || id == null ? _instance.id : (id as int),
      mtValue: mtValue == _undefined || mtValue == null
          ? _instance.mtValue
          : (mtValue as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$Vehicle$vehicleParts$weight(
    this._res,
  );

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    int? id,
    double? mtValue,
    String? $__typename,
  }) => _res;
}

class Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart
    implements Query$SearchELVInventory$searchELVInventory$nodes {
  Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart({
    required this.type,
    this.manufacturer,
    this.description,
    required this.partStatus,
    this.stockValue,
    required this.weight,
    this.location,
    required this.vehicleIdentifier,
    this.vehicle,
    this.$__typename = 'VehiclePart',
  });

  factory Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$type = json['type'];
    final l$manufacturer = json['manufacturer'];
    final l$description = json['description'];
    final l$partStatus = json['partStatus'];
    final l$stockValue = json['stockValue'];
    final l$weight = json['weight'];
    final l$location = json['location'];
    final l$vehicleIdentifier = json['vehicleIdentifier'];
    final l$vehicle = json['vehicle'];
    final l$$__typename = json['__typename'];
    return Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart(
      type: fromJson$Enum$PartType((l$type as String)),
      manufacturer: (l$manufacturer as String?),
      description: (l$description as String?),
      partStatus: fromJson$Enum$PartStatus((l$partStatus as String)),
      stockValue: (l$stockValue as num?)?.toDouble(),
      weight:
          Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight.fromJson(
            (l$weight as Map<String, dynamic>),
          ),
      location: l$location == null
          ? null
          : Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location.fromJson(
              (l$location as Map<String, dynamic>),
            ),
      vehicleIdentifier: (l$vehicleIdentifier as String),
      vehicle: l$vehicle == null
          ? null
          : Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle.fromJson(
              (l$vehicle as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$PartType type;

  final String? manufacturer;

  final String? description;

  final Enum$PartStatus partStatus;

  final double? stockValue;

  final Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight
  weight;

  final Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location?
  location;

  final String vehicleIdentifier;

  final Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle?
  vehicle;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = toJson$Enum$PartType(l$type);
    final l$manufacturer = manufacturer;
    _resultData['manufacturer'] = l$manufacturer;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$partStatus = partStatus;
    _resultData['partStatus'] = toJson$Enum$PartStatus(l$partStatus);
    final l$stockValue = stockValue;
    _resultData['stockValue'] = l$stockValue;
    final l$weight = weight;
    _resultData['weight'] = l$weight.toJson();
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$vehicleIdentifier = vehicleIdentifier;
    _resultData['vehicleIdentifier'] = l$vehicleIdentifier;
    final l$vehicle = vehicle;
    _resultData['vehicle'] = l$vehicle?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$manufacturer = manufacturer;
    final l$description = description;
    final l$partStatus = partStatus;
    final l$stockValue = stockValue;
    final l$weight = weight;
    final l$location = location;
    final l$vehicleIdentifier = vehicleIdentifier;
    final l$vehicle = vehicle;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$manufacturer,
      l$description,
      l$partStatus,
      l$stockValue,
      l$weight,
      l$location,
      l$vehicleIdentifier,
      l$vehicle,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$manufacturer = manufacturer;
    final lOther$manufacturer = other.manufacturer;
    if (l$manufacturer != lOther$manufacturer) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$partStatus = partStatus;
    final lOther$partStatus = other.partStatus;
    if (l$partStatus != lOther$partStatus) {
      return false;
    }
    final l$stockValue = stockValue;
    final lOther$stockValue = other.stockValue;
    if (l$stockValue != lOther$stockValue) {
      return false;
    }
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$vehicleIdentifier = vehicleIdentifier;
    final lOther$vehicleIdentifier = other.vehicleIdentifier;
    if (l$vehicleIdentifier != lOther$vehicleIdentifier) {
      return false;
    }
    final l$vehicle = vehicle;
    final lOther$vehicle = other.vehicle;
    if (l$vehicle != lOther$vehicle) {
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

extension UtilityExtension$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart
    on Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart {
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart<
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart
  >
  get copyWith =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart<
  TRes
> {
  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart(
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart instance,
    TRes Function(
      Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart,
    )
    then,
  ) = _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart;

  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart;

  TRes call({
    Enum$PartType? type,
    String? manufacturer,
    String? description,
    Enum$PartStatus? partStatus,
    double? stockValue,
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight?
    weight,
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location?
    location,
    String? vehicleIdentifier,
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle?
    vehicle,
    String? $__typename,
  });
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight<
    TRes
  >
  get weight;
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location<
    TRes
  >
  get location;
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle<
    TRes
  >
  get vehicle;
}

class _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart<
          TRes
        > {
  _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart(
    this._instance,
    this._then,
  );

  final Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart
  _instance;

  final TRes Function(
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? manufacturer = _undefined,
    Object? description = _undefined,
    Object? partStatus = _undefined,
    Object? stockValue = _undefined,
    Object? weight = _undefined,
    Object? location = _undefined,
    Object? vehicleIdentifier = _undefined,
    Object? vehicle = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart(
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$PartType),
      manufacturer: manufacturer == _undefined
          ? _instance.manufacturer
          : (manufacturer as String?),
      description: description == _undefined
          ? _instance.description
          : (description as String?),
      partStatus: partStatus == _undefined || partStatus == null
          ? _instance.partStatus
          : (partStatus as Enum$PartStatus),
      stockValue: stockValue == _undefined
          ? _instance.stockValue
          : (stockValue as double?),
      weight: weight == _undefined || weight == null
          ? _instance.weight
          : (weight
                as Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight),
      location: location == _undefined
          ? _instance.location
          : (location
                as Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location?),
      vehicleIdentifier:
          vehicleIdentifier == _undefined || vehicleIdentifier == null
          ? _instance.vehicleIdentifier
          : (vehicleIdentifier as String),
      vehicle: vehicle == _undefined
          ? _instance.vehicle
          : (vehicle
                as Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight<
    TRes
  >
  get weight {
    final local$weight = _instance.weight;
    return CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight(
      local$weight,
      (e) => call(weight: e),
    );
  }

  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location<
    TRes
  >
  get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location(
            local$location,
            (e) => call(location: e),
          );
  }

  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle<
    TRes
  >
  get vehicle {
    final local$vehicle = _instance.vehicle;
    return local$vehicle == null
        ? CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle(
            local$vehicle,
            (e) => call(vehicle: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart(
    this._res,
  );

  TRes _res;

  call({
    Enum$PartType? type,
    String? manufacturer,
    String? description,
    Enum$PartStatus? partStatus,
    double? stockValue,
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight?
    weight,
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location?
    location,
    String? vehicleIdentifier,
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle?
    vehicle,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight<
    TRes
  >
  get weight =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight.stub(
        _res,
      );

  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location<
    TRes
  >
  get location =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location.stub(
        _res,
      );

  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle<
    TRes
  >
  get vehicle =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle.stub(
        _res,
      );
}

class Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight {
  Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight
    on Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight {
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight<
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight
  >
  get copyWith =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight<
  TRes
> {
  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight(
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight
    instance,
    TRes Function(
      Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight,
    )
    then,
  ) = _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight;

  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight;

  TRes call({Enum$Uom? uom, double? value, String? $__typename});
}

class _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight<
          TRes
        > {
  _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight(
    this._instance,
    this._then,
  );

  final Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight
  _instance;

  final TRes Function(
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$weight(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, String? $__typename}) => _res;
}

class Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location {
  Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location({
    required this.code,
    this.yard,
    this.$__typename = 'InventoryLocation',
  });

  factory Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$yard = json['yard'];
    final l$$__typename = json['__typename'];
    return Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location(
      code: (l$code as String),
      yard: l$yard == null
          ? null
          : Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard.fromJson(
              (l$yard as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard?
  yard;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$yard = yard;
    _resultData['yard'] = l$yard?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$yard = yard;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$yard, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$yard = yard;
    final lOther$yard = other.yard;
    if (l$yard != lOther$yard) {
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

extension UtilityExtension$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location
    on Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location {
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location<
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location
  >
  get copyWith =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location<
  TRes
> {
  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location(
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location
    instance,
    TRes Function(
      Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location,
    )
    then,
  ) = _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location;

  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location;

  TRes call({
    String? code,
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard?
    yard,
    String? $__typename,
  });
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard<
    TRes
  >
  get yard;
}

class _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location<
          TRes
        > {
  _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location(
    this._instance,
    this._then,
  );

  final Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location
  _instance;

  final TRes Function(
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? yard = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      yard: yard == _undefined
          ? _instance.yard
          : (yard
                as Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard<
    TRes
  >
  get yard {
    final local$yard = _instance.yard;
    return local$yard == null
        ? CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard(
            local$yard,
            (e) => call(yard: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard?
    yard,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard<
    TRes
  >
  get yard =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard.stub(
        _res,
      );
}

class Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard {
  Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard({
    required this.yardCode,
    this.$__typename = 'Yard',
  });

  factory Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$yardCode = json['yardCode'];
    final l$$__typename = json['__typename'];
    return Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard(
      yardCode: (l$yardCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String yardCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$yardCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
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

extension UtilityExtension$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard
    on Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard {
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard<
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard
  >
  get copyWith =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard<
  TRes
> {
  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard(
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard
    instance,
    TRes Function(
      Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard,
    )
    then,
  ) = _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard;

  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard;

  TRes call({String? yardCode, String? $__typename});
}

class _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard<
          TRes
        > {
  _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard(
    this._instance,
    this._then,
  );

  final Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard
  _instance;

  final TRes Function(
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard(
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$location$yard(
    this._res,
  );

  TRes _res;

  call({String? yardCode, String? $__typename}) => _res;
}

class Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle {
  Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle({
    this.vin,
    this.vrn,
    this.$__typename = 'Vehicle',
  });

  factory Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$vin = json['vin'];
    final l$vrn = json['vrn'];
    final l$$__typename = json['__typename'];
    return Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle(
      vin: (l$vin as String?),
      vrn: (l$vrn as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? vin;

  final String? vrn;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vin = vin;
    _resultData['vin'] = l$vin;
    final l$vrn = vrn;
    _resultData['vrn'] = l$vrn;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vin = vin;
    final l$vrn = vrn;
    final l$$__typename = $__typename;
    return Object.hashAll([l$vin, l$vrn, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$vin = vin;
    final lOther$vin = other.vin;
    if (l$vin != lOther$vin) {
      return false;
    }
    final l$vrn = vrn;
    final lOther$vrn = other.vrn;
    if (l$vrn != lOther$vrn) {
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

extension UtilityExtension$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle
    on Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle {
  CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle<
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle
  >
  get copyWith =>
      CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle<
  TRes
> {
  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle(
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle
    instance,
    TRes Function(
      Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle,
    )
    then,
  ) = _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle;

  factory CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle;

  TRes call({String? vin, String? vrn, String? $__typename});
}

class _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle<
          TRes
        > {
  _CopyWithImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle(
    this._instance,
    this._then,
  );

  final Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle
  _instance;

  final TRes Function(
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vin = _undefined,
    Object? vrn = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle(
      vin: vin == _undefined ? _instance.vin : (vin as String?),
      vrn: vrn == _undefined ? _instance.vrn : (vrn as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle<
  TRes
>
    implements
        CopyWith$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchELVInventory$searchELVInventory$nodes$$VehiclePart$vehicle(
    this._res,
  );

  TRes _res;

  call({String? vin, String? vrn, String? $__typename}) => _res;
}
