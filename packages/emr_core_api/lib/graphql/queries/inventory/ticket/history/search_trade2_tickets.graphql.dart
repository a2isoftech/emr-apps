import '../../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchTrade2Tickets {
  factory Variables$Query$SearchTrade2Tickets({
    required Input$SearchTrade2TicketsInput input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$Trade2TicketSortInput>? order,
  }) => Variables$Query$SearchTrade2Tickets._({
    r'input': input,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
    if (order != null) r'order': order,
  });

  Variables$Query$SearchTrade2Tickets._(this._$data);

  factory Variables$Query$SearchTrade2Tickets.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchTrade2TicketsInput.fromJson(
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
            (e) => Input$Trade2TicketSortInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    return Variables$Query$SearchTrade2Tickets._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchTrade2TicketsInput get input =>
      (_$data['input'] as Input$SearchTrade2TicketsInput);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  List<Input$Trade2TicketSortInput>? get order =>
      (_$data['order'] as List<Input$Trade2TicketSortInput>?);

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

  CopyWith$Variables$Query$SearchTrade2Tickets<
    Variables$Query$SearchTrade2Tickets
  >
  get copyWith => CopyWith$Variables$Query$SearchTrade2Tickets(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchTrade2Tickets ||
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

abstract class CopyWith$Variables$Query$SearchTrade2Tickets<TRes> {
  factory CopyWith$Variables$Query$SearchTrade2Tickets(
    Variables$Query$SearchTrade2Tickets instance,
    TRes Function(Variables$Query$SearchTrade2Tickets) then,
  ) = _CopyWithImpl$Variables$Query$SearchTrade2Tickets;

  factory CopyWith$Variables$Query$SearchTrade2Tickets.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchTrade2Tickets;

  TRes call({
    Input$SearchTrade2TicketsInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$Trade2TicketSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$SearchTrade2Tickets<TRes>
    implements CopyWith$Variables$Query$SearchTrade2Tickets<TRes> {
  _CopyWithImpl$Variables$Query$SearchTrade2Tickets(this._instance, this._then);

  final Variables$Query$SearchTrade2Tickets _instance;

  final TRes Function(Variables$Query$SearchTrade2Tickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$SearchTrade2Tickets._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchTrade2TicketsInput),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
      if (order != _undefined)
        'order': (order as List<Input$Trade2TicketSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchTrade2Tickets<TRes>
    implements CopyWith$Variables$Query$SearchTrade2Tickets<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchTrade2Tickets(this._res);

  TRes _res;

  call({
    Input$SearchTrade2TicketsInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$Trade2TicketSortInput>? order,
  }) => _res;
}

class Query$SearchTrade2Tickets {
  Query$SearchTrade2Tickets({
    this.searchTrade2Tickets,
    this.$__typename = 'Query',
  });

  factory Query$SearchTrade2Tickets.fromJson(Map<String, dynamic> json) {
    final l$searchTrade2Tickets = json['searchTrade2Tickets'];
    final l$$__typename = json['__typename'];
    return Query$SearchTrade2Tickets(
      searchTrade2Tickets: l$searchTrade2Tickets == null
          ? null
          : Query$SearchTrade2Tickets$searchTrade2Tickets.fromJson(
              (l$searchTrade2Tickets as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchTrade2Tickets$searchTrade2Tickets? searchTrade2Tickets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchTrade2Tickets = searchTrade2Tickets;
    _resultData['searchTrade2Tickets'] = l$searchTrade2Tickets?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchTrade2Tickets = searchTrade2Tickets;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchTrade2Tickets, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchTrade2Tickets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchTrade2Tickets = searchTrade2Tickets;
    final lOther$searchTrade2Tickets = other.searchTrade2Tickets;
    if (l$searchTrade2Tickets != lOther$searchTrade2Tickets) {
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

extension UtilityExtension$Query$SearchTrade2Tickets
    on Query$SearchTrade2Tickets {
  CopyWith$Query$SearchTrade2Tickets<Query$SearchTrade2Tickets> get copyWith =>
      CopyWith$Query$SearchTrade2Tickets(this, (i) => i);
}

abstract class CopyWith$Query$SearchTrade2Tickets<TRes> {
  factory CopyWith$Query$SearchTrade2Tickets(
    Query$SearchTrade2Tickets instance,
    TRes Function(Query$SearchTrade2Tickets) then,
  ) = _CopyWithImpl$Query$SearchTrade2Tickets;

  factory CopyWith$Query$SearchTrade2Tickets.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchTrade2Tickets;

  TRes call({
    Query$SearchTrade2Tickets$searchTrade2Tickets? searchTrade2Tickets,
    String? $__typename,
  });
  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets<TRes>
  get searchTrade2Tickets;
}

class _CopyWithImpl$Query$SearchTrade2Tickets<TRes>
    implements CopyWith$Query$SearchTrade2Tickets<TRes> {
  _CopyWithImpl$Query$SearchTrade2Tickets(this._instance, this._then);

  final Query$SearchTrade2Tickets _instance;

  final TRes Function(Query$SearchTrade2Tickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchTrade2Tickets = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTrade2Tickets(
      searchTrade2Tickets: searchTrade2Tickets == _undefined
          ? _instance.searchTrade2Tickets
          : (searchTrade2Tickets
                as Query$SearchTrade2Tickets$searchTrade2Tickets?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets<TRes>
  get searchTrade2Tickets {
    final local$searchTrade2Tickets = _instance.searchTrade2Tickets;
    return local$searchTrade2Tickets == null
        ? CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets(
            local$searchTrade2Tickets,
            (e) => call(searchTrade2Tickets: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchTrade2Tickets<TRes>
    implements CopyWith$Query$SearchTrade2Tickets<TRes> {
  _CopyWithStubImpl$Query$SearchTrade2Tickets(this._res);

  TRes _res;

  call({
    Query$SearchTrade2Tickets$searchTrade2Tickets? searchTrade2Tickets,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets<TRes>
  get searchTrade2Tickets =>
      CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets.stub(_res);
}

const documentNodeQuerySearchTrade2Tickets = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchTrade2Tickets'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchTrade2TicketsInput'),
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
              name: NameNode(value: 'Trade2TicketSortInput'),
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
            name: NameNode(value: 'searchTrade2Tickets'),
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
                        name: NameNode(value: 'key'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'depotNo'),
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
                        name: NameNode(value: 'ticketNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'ticketType'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'partyAccountNo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'partyName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'ticketCategory'),
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
                        name: NameNode(value: 'createdDateEpoch'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'price'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'lines'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'grossWeight'),
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
                                    name: NameNode(value: 'id'),
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
                              name: NameNode(value: 'gradeCode'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'lineNumber'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'heapId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'heapCode'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'rate'),
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
                                    name: NameNode(value: 'id'),
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
                              name: NameNode(value: 'weightSerial'),
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
                        name: NameNode(value: 'mediaAssets'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'url'),
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
                        name: NameNode(value: 'vehicleNo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'trade2Key'),
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

class Query$SearchTrade2Tickets$searchTrade2Tickets {
  Query$SearchTrade2Tickets$searchTrade2Tickets({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchTrade2TicketsConnection',
  });

  factory Query$SearchTrade2Tickets$searchTrade2Tickets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchTrade2Tickets$searchTrade2Tickets(
      totalCount: (l$totalCount as int),
      pageInfo: Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$SearchTrade2Tickets$searchTrade2Tickets$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo pageInfo;

  final List<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes>? nodes;

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
    if (other is! Query$SearchTrade2Tickets$searchTrade2Tickets ||
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

extension UtilityExtension$Query$SearchTrade2Tickets$searchTrade2Tickets
    on Query$SearchTrade2Tickets$searchTrade2Tickets {
  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets<
    Query$SearchTrade2Tickets$searchTrade2Tickets
  >
  get copyWith =>
      CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets(this, (i) => i);
}

abstract class CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets<TRes> {
  factory CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets(
    Query$SearchTrade2Tickets$searchTrade2Tickets instance,
    TRes Function(Query$SearchTrade2Tickets$searchTrade2Tickets) then,
  ) = _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets;

  factory CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets;

  TRes call({
    int? totalCount,
    Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo? pageInfo,
    List<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes<
          Query$SearchTrade2Tickets$searchTrade2Tickets$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets<TRes>
    implements CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets<TRes> {
  _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets(
    this._instance,
    this._then,
  );

  final Query$SearchTrade2Tickets$searchTrade2Tickets _instance;

  final TRes Function(Query$SearchTrade2Tickets$searchTrade2Tickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTrade2Tickets$searchTrade2Tickets(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes<
          Query$SearchTrade2Tickets$searchTrade2Tickets$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets<TRes>
    implements CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets<TRes> {
  _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo? pageInfo,
    List<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo {
  Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo(
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
    if (other is! Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo ||
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

extension UtilityExtension$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo
    on Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo {
  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo<
    Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo<
  TRes
> {
  factory CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo(
    Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo instance,
    TRes Function(Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo;

  factory CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo<TRes>
    implements
        CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo _instance;

  final TRes Function(Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo(
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

class _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$pageInfo(
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

class Query$SearchTrade2Tickets$searchTrade2Tickets$nodes {
  Query$SearchTrade2Tickets$searchTrade2Tickets$nodes({
    this.id,
    required this.key,
    required this.depotNo,
    required this.yardCode,
    required this.ticketNumber,
    required this.ticketType,
    this.partyAccountNo,
    this.partyName,
    required this.ticketCategory,
    required this.createdDate,
    required this.createdDateEpoch,
    required this.price,
    required this.lines,
    required this.mediaAssets,
    this.vehicleNo,
    this.trade2Key,
    this.$__typename = 'Trade2Ticket',
  });

  factory Query$SearchTrade2Tickets$searchTrade2Tickets$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$key = json['key'];
    final l$depotNo = json['depotNo'];
    final l$yardCode = json['yardCode'];
    final l$ticketNumber = json['ticketNumber'];
    final l$ticketType = json['ticketType'];
    final l$partyAccountNo = json['partyAccountNo'];
    final l$partyName = json['partyName'];
    final l$ticketCategory = json['ticketCategory'];
    final l$createdDate = json['createdDate'];
    final l$createdDateEpoch = json['createdDateEpoch'];
    final l$price = json['price'];
    final l$lines = json['lines'];
    final l$mediaAssets = json['mediaAssets'];
    final l$vehicleNo = json['vehicleNo'];
    final l$trade2Key = json['trade2Key'];
    final l$$__typename = json['__typename'];
    return Query$SearchTrade2Tickets$searchTrade2Tickets$nodes(
      id: (l$id as String?),
      key: (l$key as String),
      depotNo: (l$depotNo as String),
      yardCode: (l$yardCode as String),
      ticketNumber: (l$ticketNumber as int),
      ticketType: fromJson$Enum$Trade2TicketType((l$ticketType as String)),
      partyAccountNo: (l$partyAccountNo as String?),
      partyName: (l$partyName as String?),
      ticketCategory: fromJson$Enum$Trade2TicketCategory(
        (l$ticketCategory as String),
      ),
      createdDate: DateTime.parse((l$createdDate as String)),
      createdDateEpoch: (l$createdDateEpoch as int),
      price: (l$price as num).toDouble(),
      lines: (l$lines as List<dynamic>)
          .map(
            (e) =>
                Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      vehicleNo: (l$vehicleNo as String?),
      trade2Key: (l$trade2Key as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String key;

  final String depotNo;

  final String yardCode;

  final int ticketNumber;

  final Enum$Trade2TicketType ticketType;

  final String? partyAccountNo;

  final String? partyName;

  final Enum$Trade2TicketCategory ticketCategory;

  final DateTime createdDate;

  final int createdDateEpoch;

  final double price;

  final List<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines> lines;

  final List<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets>
  mediaAssets;

  final String? vehicleNo;

  final int? trade2Key;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$key = key;
    _resultData['key'] = l$key;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$ticketNumber = ticketNumber;
    _resultData['ticketNumber'] = l$ticketNumber;
    final l$ticketType = ticketType;
    _resultData['ticketType'] = toJson$Enum$Trade2TicketType(l$ticketType);
    final l$partyAccountNo = partyAccountNo;
    _resultData['partyAccountNo'] = l$partyAccountNo;
    final l$partyName = partyName;
    _resultData['partyName'] = l$partyName;
    final l$ticketCategory = ticketCategory;
    _resultData['ticketCategory'] = toJson$Enum$Trade2TicketCategory(
      l$ticketCategory,
    );
    final l$createdDate = createdDate;
    _resultData['createdDate'] = l$createdDate.toIso8601String();
    final l$createdDateEpoch = createdDateEpoch;
    _resultData['createdDateEpoch'] = l$createdDateEpoch;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$lines = lines;
    _resultData['lines'] = l$lines.map((e) => e.toJson()).toList();
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$vehicleNo = vehicleNo;
    _resultData['vehicleNo'] = l$vehicleNo;
    final l$trade2Key = trade2Key;
    _resultData['trade2Key'] = l$trade2Key;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$key = key;
    final l$depotNo = depotNo;
    final l$yardCode = yardCode;
    final l$ticketNumber = ticketNumber;
    final l$ticketType = ticketType;
    final l$partyAccountNo = partyAccountNo;
    final l$partyName = partyName;
    final l$ticketCategory = ticketCategory;
    final l$createdDate = createdDate;
    final l$createdDateEpoch = createdDateEpoch;
    final l$price = price;
    final l$lines = lines;
    final l$mediaAssets = mediaAssets;
    final l$vehicleNo = vehicleNo;
    final l$trade2Key = trade2Key;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$key,
      l$depotNo,
      l$yardCode,
      l$ticketNumber,
      l$ticketType,
      l$partyAccountNo,
      l$partyName,
      l$ticketCategory,
      l$createdDate,
      l$createdDateEpoch,
      l$price,
      Object.hashAll(l$lines.map((v) => v)),
      Object.hashAll(l$mediaAssets.map((v) => v)),
      l$vehicleNo,
      l$trade2Key,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchTrade2Tickets$searchTrade2Tickets$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (l$ticketNumber != lOther$ticketNumber) {
      return false;
    }
    final l$ticketType = ticketType;
    final lOther$ticketType = other.ticketType;
    if (l$ticketType != lOther$ticketType) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$partyName = partyName;
    final lOther$partyName = other.partyName;
    if (l$partyName != lOther$partyName) {
      return false;
    }
    final l$ticketCategory = ticketCategory;
    final lOther$ticketCategory = other.ticketCategory;
    if (l$ticketCategory != lOther$ticketCategory) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
      return false;
    }
    final l$createdDateEpoch = createdDateEpoch;
    final lOther$createdDateEpoch = other.createdDateEpoch;
    if (l$createdDateEpoch != lOther$createdDateEpoch) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$lines = lines;
    final lOther$lines = other.lines;
    if (l$lines.length != lOther$lines.length) {
      return false;
    }
    for (int i = 0; i < l$lines.length; i++) {
      final l$lines$entry = l$lines[i];
      final lOther$lines$entry = lOther$lines[i];
      if (l$lines$entry != lOther$lines$entry) {
        return false;
      }
    }
    final l$mediaAssets = mediaAssets;
    final lOther$mediaAssets = other.mediaAssets;
    if (l$mediaAssets.length != lOther$mediaAssets.length) {
      return false;
    }
    for (int i = 0; i < l$mediaAssets.length; i++) {
      final l$mediaAssets$entry = l$mediaAssets[i];
      final lOther$mediaAssets$entry = lOther$mediaAssets[i];
      if (l$mediaAssets$entry != lOther$mediaAssets$entry) {
        return false;
      }
    }
    final l$vehicleNo = vehicleNo;
    final lOther$vehicleNo = other.vehicleNo;
    if (l$vehicleNo != lOther$vehicleNo) {
      return false;
    }
    final l$trade2Key = trade2Key;
    final lOther$trade2Key = other.trade2Key;
    if (l$trade2Key != lOther$trade2Key) {
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

extension UtilityExtension$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes
    on Query$SearchTrade2Tickets$searchTrade2Tickets$nodes {
  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes<
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes
  >
  get copyWith => CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes<
  TRes
> {
  factory CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes(
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes instance,
    TRes Function(Query$SearchTrade2Tickets$searchTrade2Tickets$nodes) then,
  ) = _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes;

  factory CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes;

  TRes call({
    String? id,
    String? key,
    String? depotNo,
    String? yardCode,
    int? ticketNumber,
    Enum$Trade2TicketType? ticketType,
    String? partyAccountNo,
    String? partyName,
    Enum$Trade2TicketCategory? ticketCategory,
    DateTime? createdDate,
    int? createdDateEpoch,
    double? price,
    List<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines>? lines,
    List<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets>?
    mediaAssets,
    String? vehicleNo,
    int? trade2Key,
    String? $__typename,
  });
  TRes lines(
    Iterable<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines>
    Function(
      Iterable<
        CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines<
          Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines
        >
      >,
    )
    _fn,
  );
  TRes mediaAssets(
    Iterable<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets>
    Function(
      Iterable<
        CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets<
          Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes<TRes>
    implements
        CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes<TRes> {
  _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchTrade2Tickets$searchTrade2Tickets$nodes _instance;

  final TRes Function(Query$SearchTrade2Tickets$searchTrade2Tickets$nodes)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? key = _undefined,
    Object? depotNo = _undefined,
    Object? yardCode = _undefined,
    Object? ticketNumber = _undefined,
    Object? ticketType = _undefined,
    Object? partyAccountNo = _undefined,
    Object? partyName = _undefined,
    Object? ticketCategory = _undefined,
    Object? createdDate = _undefined,
    Object? createdDateEpoch = _undefined,
    Object? price = _undefined,
    Object? lines = _undefined,
    Object? mediaAssets = _undefined,
    Object? vehicleNo = _undefined,
    Object? trade2Key = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes(
      id: id == _undefined ? _instance.id : (id as String?),
      key: key == _undefined || key == null ? _instance.key : (key as String),
      depotNo: depotNo == _undefined || depotNo == null
          ? _instance.depotNo
          : (depotNo as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      ticketNumber: ticketNumber == _undefined || ticketNumber == null
          ? _instance.ticketNumber
          : (ticketNumber as int),
      ticketType: ticketType == _undefined || ticketType == null
          ? _instance.ticketType
          : (ticketType as Enum$Trade2TicketType),
      partyAccountNo: partyAccountNo == _undefined
          ? _instance.partyAccountNo
          : (partyAccountNo as String?),
      partyName: partyName == _undefined
          ? _instance.partyName
          : (partyName as String?),
      ticketCategory: ticketCategory == _undefined || ticketCategory == null
          ? _instance.ticketCategory
          : (ticketCategory as Enum$Trade2TicketCategory),
      createdDate: createdDate == _undefined || createdDate == null
          ? _instance.createdDate
          : (createdDate as DateTime),
      createdDateEpoch:
          createdDateEpoch == _undefined || createdDateEpoch == null
          ? _instance.createdDateEpoch
          : (createdDateEpoch as int),
      price: price == _undefined || price == null
          ? _instance.price
          : (price as double),
      lines: lines == _undefined || lines == null
          ? _instance.lines
          : (lines
                as List<
                  Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines
                >),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets
                as List<
                  Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets
                >),
      vehicleNo: vehicleNo == _undefined
          ? _instance.vehicleNo
          : (vehicleNo as String?),
      trade2Key: trade2Key == _undefined
          ? _instance.trade2Key
          : (trade2Key as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes lines(
    Iterable<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines>
    Function(
      Iterable<
        CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines<
          Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines
        >
      >,
    )
    _fn,
  ) => call(
    lines: _fn(
      _instance.lines.map(
        (e) =>
            CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes mediaAssets(
    Iterable<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets>
    Function(
      Iterable<
        CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets<
          Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) =>
            CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes<
  TRes
>
    implements
        CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? key,
    String? depotNo,
    String? yardCode,
    int? ticketNumber,
    Enum$Trade2TicketType? ticketType,
    String? partyAccountNo,
    String? partyName,
    Enum$Trade2TicketCategory? ticketCategory,
    DateTime? createdDate,
    int? createdDateEpoch,
    double? price,
    List<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines>? lines,
    List<Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets>?
    mediaAssets,
    String? vehicleNo,
    int? trade2Key,
    String? $__typename,
  }) => _res;

  lines(_fn) => _res;

  mediaAssets(_fn) => _res;
}

class Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines {
  Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines({
    required this.grossWeight,
    required this.gradeCode,
    required this.lineNumber,
    required this.heapId,
    required this.heapCode,
    required this.rate,
    this.weightSerial,
    this.$__typename = 'Trade2TicketLine',
  });

  factory Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$grossWeight = json['grossWeight'];
    final l$gradeCode = json['gradeCode'];
    final l$lineNumber = json['lineNumber'];
    final l$heapId = json['heapId'];
    final l$heapCode = json['heapCode'];
    final l$rate = json['rate'];
    final l$weightSerial = json['weightSerial'];
    final l$$__typename = json['__typename'];
    return Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines(
      grossWeight:
          Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight.fromJson(
            (l$grossWeight as Map<String, dynamic>),
          ),
      gradeCode: (l$gradeCode as String),
      lineNumber: (l$lineNumber as int),
      heapId: (l$heapId as String),
      heapCode: (l$heapCode as String),
      rate:
          Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate.fromJson(
            (l$rate as Map<String, dynamic>),
          ),
      weightSerial: (l$weightSerial as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight
  grossWeight;

  final String gradeCode;

  final int lineNumber;

  final String heapId;

  final String heapCode;

  final Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate rate;

  final String? weightSerial;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$grossWeight = grossWeight;
    _resultData['grossWeight'] = l$grossWeight.toJson();
    final l$gradeCode = gradeCode;
    _resultData['gradeCode'] = l$gradeCode;
    final l$lineNumber = lineNumber;
    _resultData['lineNumber'] = l$lineNumber;
    final l$heapId = heapId;
    _resultData['heapId'] = l$heapId;
    final l$heapCode = heapCode;
    _resultData['heapCode'] = l$heapCode;
    final l$rate = rate;
    _resultData['rate'] = l$rate.toJson();
    final l$weightSerial = weightSerial;
    _resultData['weightSerial'] = l$weightSerial;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$grossWeight = grossWeight;
    final l$gradeCode = gradeCode;
    final l$lineNumber = lineNumber;
    final l$heapId = heapId;
    final l$heapCode = heapCode;
    final l$rate = rate;
    final l$weightSerial = weightSerial;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$grossWeight,
      l$gradeCode,
      l$lineNumber,
      l$heapId,
      l$heapCode,
      l$rate,
      l$weightSerial,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$grossWeight = grossWeight;
    final lOther$grossWeight = other.grossWeight;
    if (l$grossWeight != lOther$grossWeight) {
      return false;
    }
    final l$gradeCode = gradeCode;
    final lOther$gradeCode = other.gradeCode;
    if (l$gradeCode != lOther$gradeCode) {
      return false;
    }
    final l$lineNumber = lineNumber;
    final lOther$lineNumber = other.lineNumber;
    if (l$lineNumber != lOther$lineNumber) {
      return false;
    }
    final l$heapId = heapId;
    final lOther$heapId = other.heapId;
    if (l$heapId != lOther$heapId) {
      return false;
    }
    final l$heapCode = heapCode;
    final lOther$heapCode = other.heapCode;
    if (l$heapCode != lOther$heapCode) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$weightSerial = weightSerial;
    final lOther$weightSerial = other.weightSerial;
    if (l$weightSerial != lOther$weightSerial) {
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

extension UtilityExtension$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines
    on Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines {
  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines<
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines
  >
  get copyWith =>
      CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines<
  TRes
> {
  factory CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines(
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines instance,
    TRes Function(Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines)
    then,
  ) = _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines;

  factory CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines;

  TRes call({
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight?
    grossWeight,
    String? gradeCode,
    int? lineNumber,
    String? heapId,
    String? heapCode,
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate? rate,
    String? weightSerial,
    String? $__typename,
  });
  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight<
    TRes
  >
  get grossWeight;
  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate<TRes>
  get rate;
}

class _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines<
  TRes
>
    implements
        CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines<
          TRes
        > {
  _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines(
    this._instance,
    this._then,
  );

  final Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines _instance;

  final TRes Function(Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? grossWeight = _undefined,
    Object? gradeCode = _undefined,
    Object? lineNumber = _undefined,
    Object? heapId = _undefined,
    Object? heapCode = _undefined,
    Object? rate = _undefined,
    Object? weightSerial = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines(
      grossWeight: grossWeight == _undefined || grossWeight == null
          ? _instance.grossWeight
          : (grossWeight
                as Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight),
      gradeCode: gradeCode == _undefined || gradeCode == null
          ? _instance.gradeCode
          : (gradeCode as String),
      lineNumber: lineNumber == _undefined || lineNumber == null
          ? _instance.lineNumber
          : (lineNumber as int),
      heapId: heapId == _undefined || heapId == null
          ? _instance.heapId
          : (heapId as String),
      heapCode: heapCode == _undefined || heapCode == null
          ? _instance.heapCode
          : (heapCode as String),
      rate: rate == _undefined || rate == null
          ? _instance.rate
          : (rate
                as Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate),
      weightSerial: weightSerial == _undefined
          ? _instance.weightSerial
          : (weightSerial as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight<
    TRes
  >
  get grossWeight {
    final local$grossWeight = _instance.grossWeight;
    return CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight(
      local$grossWeight,
      (e) => call(grossWeight: e),
    );
  }

  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate<TRes>
  get rate {
    final local$rate = _instance.rate;
    return CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate(
      local$rate,
      (e) => call(rate: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines<
  TRes
>
    implements
        CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines(
    this._res,
  );

  TRes _res;

  call({
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight?
    grossWeight,
    String? gradeCode,
    int? lineNumber,
    String? heapId,
    String? heapCode,
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate? rate,
    String? weightSerial,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight<
    TRes
  >
  get grossWeight =>
      CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight.stub(
        _res,
      );

  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate<TRes>
  get rate =>
      CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate.stub(
        _res,
      );
}

class Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight {
  Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'Trade2UomValue',
  });

  factory Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight
    on Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight {
  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight<
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight
  >
  get copyWith =>
      CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight<
  TRes
> {
  factory CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight(
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight
    instance,
    TRes Function(
      Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight,
    )
    then,
  ) = _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight;

  factory CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight;

  TRes call({Enum$Uom? uom, double? value, int? id, String? $__typename});
}

class _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight<
  TRes
>
    implements
        CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight<
          TRes
        > {
  _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight(
    this._instance,
    this._then,
  );

  final Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight
  _instance;

  final TRes Function(
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      id: id == _undefined || id == null ? _instance.id : (id as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight<
  TRes
>
    implements
        CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$grossWeight(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, int? id, String? $__typename}) => _res;
}

class Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate {
  Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'Trade2UomValue',
  });

  factory Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate
    on Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate {
  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate<
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate
  >
  get copyWith =>
      CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate<
  TRes
> {
  factory CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate(
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate instance,
    TRes Function(
      Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate,
    )
    then,
  ) = _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate;

  factory CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate;

  TRes call({Enum$Uom? uom, double? value, int? id, String? $__typename});
}

class _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate<
  TRes
>
    implements
        CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate<
          TRes
        > {
  _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate(
    this._instance,
    this._then,
  );

  final Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate
  _instance;

  final TRes Function(
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      id: id == _undefined || id == null ? _instance.id : (id as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate<
  TRes
>
    implements
        CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$lines$rate(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, int? id, String? $__typename}) => _res;
}

class Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets {
  Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets({
    required this.url,
    this.$__typename = 'Trade2MediaAsset',
  });

  factory Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets
    on Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets {
  CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets<
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets
  >
  get copyWith =>
      CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets<
  TRes
> {
  factory CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets(
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets instance,
    TRes Function(
      Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets,
    )
    then,
  ) = _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets;

  factory CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets<
          TRes
        > {
  _CopyWithImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets(
    this._instance,
    this._then,
  );

  final Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets
  _instance;

  final TRes Function(
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? url = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets(
          url: url == _undefined || url == null
              ? _instance.url
              : (url as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchTrade2Tickets$searchTrade2Tickets$nodes$mediaAssets(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}
