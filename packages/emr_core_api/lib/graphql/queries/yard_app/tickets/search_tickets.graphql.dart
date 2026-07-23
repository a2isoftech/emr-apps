import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchTickets {
  factory Variables$Query$SearchTickets({
    required Input$SearchTicketsInput input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$SearchTicketsSortInput>? order,
  }) => Variables$Query$SearchTickets._({
    r'input': input,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
    if (order != null) r'order': order,
  });

  Variables$Query$SearchTickets._(this._$data);

  factory Variables$Query$SearchTickets.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchTicketsInput.fromJson(
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
            (e) => Input$SearchTicketsSortInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    return Variables$Query$SearchTickets._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchTicketsInput get input =>
      (_$data['input'] as Input$SearchTicketsInput);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  List<Input$SearchTicketsSortInput>? get order =>
      (_$data['order'] as List<Input$SearchTicketsSortInput>?);

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

  CopyWith$Variables$Query$SearchTickets<Variables$Query$SearchTickets>
  get copyWith => CopyWith$Variables$Query$SearchTickets(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchTickets ||
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

abstract class CopyWith$Variables$Query$SearchTickets<TRes> {
  factory CopyWith$Variables$Query$SearchTickets(
    Variables$Query$SearchTickets instance,
    TRes Function(Variables$Query$SearchTickets) then,
  ) = _CopyWithImpl$Variables$Query$SearchTickets;

  factory CopyWith$Variables$Query$SearchTickets.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchTickets;

  TRes call({
    Input$SearchTicketsInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$SearchTicketsSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$SearchTickets<TRes>
    implements CopyWith$Variables$Query$SearchTickets<TRes> {
  _CopyWithImpl$Variables$Query$SearchTickets(this._instance, this._then);

  final Variables$Query$SearchTickets _instance;

  final TRes Function(Variables$Query$SearchTickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$SearchTickets._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchTicketsInput),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
      if (order != _undefined)
        'order': (order as List<Input$SearchTicketsSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchTickets<TRes>
    implements CopyWith$Variables$Query$SearchTickets<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchTickets(this._res);

  TRes _res;

  call({
    Input$SearchTicketsInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$SearchTicketsSortInput>? order,
  }) => _res;
}

class Query$SearchTickets {
  Query$SearchTickets({this.searchTickets, this.$__typename = 'Query'});

  factory Query$SearchTickets.fromJson(Map<String, dynamic> json) {
    final l$searchTickets = json['searchTickets'];
    final l$$__typename = json['__typename'];
    return Query$SearchTickets(
      searchTickets: l$searchTickets == null
          ? null
          : Query$SearchTickets$searchTickets.fromJson(
              (l$searchTickets as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchTickets$searchTickets? searchTickets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchTickets = searchTickets;
    _resultData['searchTickets'] = l$searchTickets?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchTickets = searchTickets;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchTickets, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchTickets || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchTickets = searchTickets;
    final lOther$searchTickets = other.searchTickets;
    if (l$searchTickets != lOther$searchTickets) {
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

extension UtilityExtension$Query$SearchTickets on Query$SearchTickets {
  CopyWith$Query$SearchTickets<Query$SearchTickets> get copyWith =>
      CopyWith$Query$SearchTickets(this, (i) => i);
}

abstract class CopyWith$Query$SearchTickets<TRes> {
  factory CopyWith$Query$SearchTickets(
    Query$SearchTickets instance,
    TRes Function(Query$SearchTickets) then,
  ) = _CopyWithImpl$Query$SearchTickets;

  factory CopyWith$Query$SearchTickets.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchTickets;

  TRes call({
    Query$SearchTickets$searchTickets? searchTickets,
    String? $__typename,
  });
  CopyWith$Query$SearchTickets$searchTickets<TRes> get searchTickets;
}

class _CopyWithImpl$Query$SearchTickets<TRes>
    implements CopyWith$Query$SearchTickets<TRes> {
  _CopyWithImpl$Query$SearchTickets(this._instance, this._then);

  final Query$SearchTickets _instance;

  final TRes Function(Query$SearchTickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchTickets = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTickets(
      searchTickets: searchTickets == _undefined
          ? _instance.searchTickets
          : (searchTickets as Query$SearchTickets$searchTickets?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchTickets$searchTickets<TRes> get searchTickets {
    final local$searchTickets = _instance.searchTickets;
    return local$searchTickets == null
        ? CopyWith$Query$SearchTickets$searchTickets.stub(_then(_instance))
        : CopyWith$Query$SearchTickets$searchTickets(
            local$searchTickets,
            (e) => call(searchTickets: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchTickets<TRes>
    implements CopyWith$Query$SearchTickets<TRes> {
  _CopyWithStubImpl$Query$SearchTickets(this._res);

  TRes _res;

  call({
    Query$SearchTickets$searchTickets? searchTickets,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchTickets$searchTickets<TRes> get searchTickets =>
      CopyWith$Query$SearchTickets$searchTickets.stub(_res);
}

const documentNodeQuerySearchTickets = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchTickets'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchTicketsInput'),
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
              name: NameNode(value: 'SearchTicketsSortInput'),
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
            name: NameNode(value: 'searchTickets'),
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
                        name: NameNode(value: 'containerNumber'),
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
                        name: NameNode(value: 'account'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'details'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'primaryManager'),
                                    alias: null,
                                    arguments: [],
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
                                          name: NameNode(value: 'name'),
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
                              name: NameNode(value: 'accountNumber'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'name'),
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
                        name: NameNode(value: 'comments'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'content'),
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
                        name: NameNode(value: 'lines'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'isActive'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
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
                              name: NameNode(value: 'lineNumber'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'grossWeight'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'value'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'uom'),
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
                              name: NameNode(value: 'inspectionDetails'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'inspectionMedia'),
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
                        name: NameNode(value: 'transportDetails'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'vehicleReg'),
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
                        name: NameNode(value: 'inspectionMedia'),
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
                        name: NameNode(value: 'ticketStatus'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'serviceType'),
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

class Query$SearchTickets$searchTickets {
  Query$SearchTickets$searchTickets({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchTicketsConnection',
  });

  factory Query$SearchTickets$searchTickets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchTickets$searchTickets(
      totalCount: (l$totalCount as int),
      pageInfo: Query$SearchTickets$searchTickets$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$SearchTickets$searchTickets$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SearchTickets$searchTickets$pageInfo pageInfo;

  final List<Query$SearchTickets$searchTickets$nodes>? nodes;

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
    if (other is! Query$SearchTickets$searchTickets ||
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

extension UtilityExtension$Query$SearchTickets$searchTickets
    on Query$SearchTickets$searchTickets {
  CopyWith$Query$SearchTickets$searchTickets<Query$SearchTickets$searchTickets>
  get copyWith => CopyWith$Query$SearchTickets$searchTickets(this, (i) => i);
}

abstract class CopyWith$Query$SearchTickets$searchTickets<TRes> {
  factory CopyWith$Query$SearchTickets$searchTickets(
    Query$SearchTickets$searchTickets instance,
    TRes Function(Query$SearchTickets$searchTickets) then,
  ) = _CopyWithImpl$Query$SearchTickets$searchTickets;

  factory CopyWith$Query$SearchTickets$searchTickets.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchTickets$searchTickets;

  TRes call({
    int? totalCount,
    Query$SearchTickets$searchTickets$pageInfo? pageInfo,
    List<Query$SearchTickets$searchTickets$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchTickets$searchTickets$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$SearchTickets$searchTickets$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchTickets$searchTickets$nodes<
          Query$SearchTickets$searchTickets$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchTickets$searchTickets<TRes>
    implements CopyWith$Query$SearchTickets$searchTickets<TRes> {
  _CopyWithImpl$Query$SearchTickets$searchTickets(this._instance, this._then);

  final Query$SearchTickets$searchTickets _instance;

  final TRes Function(Query$SearchTickets$searchTickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTickets$searchTickets(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$SearchTickets$searchTickets$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$SearchTickets$searchTickets$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchTickets$searchTickets$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchTickets$searchTickets$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$SearchTickets$searchTickets$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchTickets$searchTickets$nodes<
          Query$SearchTickets$searchTickets$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$SearchTickets$searchTickets$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchTickets$searchTickets<TRes>
    implements CopyWith$Query$SearchTickets$searchTickets<TRes> {
  _CopyWithStubImpl$Query$SearchTickets$searchTickets(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$SearchTickets$searchTickets$pageInfo? pageInfo,
    List<Query$SearchTickets$searchTickets$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchTickets$searchTickets$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$SearchTickets$searchTickets$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$SearchTickets$searchTickets$pageInfo {
  Query$SearchTickets$searchTickets$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchTickets$searchTickets$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchTickets$searchTickets$pageInfo(
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
    if (other is! Query$SearchTickets$searchTickets$pageInfo ||
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

extension UtilityExtension$Query$SearchTickets$searchTickets$pageInfo
    on Query$SearchTickets$searchTickets$pageInfo {
  CopyWith$Query$SearchTickets$searchTickets$pageInfo<
    Query$SearchTickets$searchTickets$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SearchTickets$searchTickets$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$SearchTickets$searchTickets$pageInfo<TRes> {
  factory CopyWith$Query$SearchTickets$searchTickets$pageInfo(
    Query$SearchTickets$searchTickets$pageInfo instance,
    TRes Function(Query$SearchTickets$searchTickets$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchTickets$searchTickets$pageInfo;

  factory CopyWith$Query$SearchTickets$searchTickets$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchTickets$searchTickets$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchTickets$searchTickets$pageInfo<TRes>
    implements CopyWith$Query$SearchTickets$searchTickets$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchTickets$searchTickets$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchTickets$searchTickets$pageInfo _instance;

  final TRes Function(Query$SearchTickets$searchTickets$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTickets$searchTickets$pageInfo(
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

class _CopyWithStubImpl$Query$SearchTickets$searchTickets$pageInfo<TRes>
    implements CopyWith$Query$SearchTickets$searchTickets$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchTickets$searchTickets$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}

class Query$SearchTickets$searchTickets$nodes {
  Query$SearchTickets$searchTickets$nodes({
    required this.id,
    required this.ticketNumber,
    required this.ticketType,
    this.containerNumber,
    required this.yardCode,
    required this.created,
    required this.account,
    required this.comments,
    required this.lines,
    required this.transportDetails,
    required this.inspectionMedia,
    required this.ticketStatus,
    required this.serviceType,
    this.$__typename = 'Ticket',
  });

  factory Query$SearchTickets$searchTickets$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$ticketNumber = json['ticketNumber'];
    final l$ticketType = json['ticketType'];
    final l$containerNumber = json['containerNumber'];
    final l$yardCode = json['yardCode'];
    final l$created = json['created'];
    final l$account = json['account'];
    final l$comments = json['comments'];
    final l$lines = json['lines'];
    final l$transportDetails = json['transportDetails'];
    final l$inspectionMedia = json['inspectionMedia'];
    final l$ticketStatus = json['ticketStatus'];
    final l$serviceType = json['serviceType'];
    final l$$__typename = json['__typename'];
    return Query$SearchTickets$searchTickets$nodes(
      id: (l$id as String),
      ticketNumber: (l$ticketNumber as int),
      ticketType: fromJson$Enum$TicketType((l$ticketType as String)),
      containerNumber: (l$containerNumber as String?),
      yardCode: (l$yardCode as String),
      created: Query$SearchTickets$searchTickets$nodes$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      account: Query$SearchTickets$searchTickets$nodes$account.fromJson(
        (l$account as Map<String, dynamic>),
      ),
      comments: (l$comments as List<dynamic>)
          .map(
            (e) => Query$SearchTickets$searchTickets$nodes$comments.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      lines: (l$lines as List<dynamic>)
          .map(
            (e) => Query$SearchTickets$searchTickets$nodes$lines.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      transportDetails:
          Query$SearchTickets$searchTickets$nodes$transportDetails.fromJson(
            (l$transportDetails as Map<String, dynamic>),
          ),
      inspectionMedia: (l$inspectionMedia as List<dynamic>)
          .map(
            (e) =>
                Query$SearchTickets$searchTickets$nodes$inspectionMedia.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      ticketStatus: fromJson$Enum$TicketStatus((l$ticketStatus as String)),
      serviceType: fromJson$Enum$TicketServiceType((l$serviceType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final int ticketNumber;

  final Enum$TicketType ticketType;

  final String? containerNumber;

  final String yardCode;

  final Query$SearchTickets$searchTickets$nodes$created created;

  final Query$SearchTickets$searchTickets$nodes$account account;

  final List<Query$SearchTickets$searchTickets$nodes$comments> comments;

  final List<Query$SearchTickets$searchTickets$nodes$lines> lines;

  final Query$SearchTickets$searchTickets$nodes$transportDetails
  transportDetails;

  final List<Query$SearchTickets$searchTickets$nodes$inspectionMedia>
  inspectionMedia;

  final Enum$TicketStatus ticketStatus;

  final Enum$TicketServiceType serviceType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$ticketNumber = ticketNumber;
    _resultData['ticketNumber'] = l$ticketNumber;
    final l$ticketType = ticketType;
    _resultData['ticketType'] = toJson$Enum$TicketType(l$ticketType);
    final l$containerNumber = containerNumber;
    _resultData['containerNumber'] = l$containerNumber;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$account = account;
    _resultData['account'] = l$account.toJson();
    final l$comments = comments;
    _resultData['comments'] = l$comments.map((e) => e.toJson()).toList();
    final l$lines = lines;
    _resultData['lines'] = l$lines.map((e) => e.toJson()).toList();
    final l$transportDetails = transportDetails;
    _resultData['transportDetails'] = l$transportDetails.toJson();
    final l$inspectionMedia = inspectionMedia;
    _resultData['inspectionMedia'] = l$inspectionMedia
        .map((e) => e.toJson())
        .toList();
    final l$ticketStatus = ticketStatus;
    _resultData['ticketStatus'] = toJson$Enum$TicketStatus(l$ticketStatus);
    final l$serviceType = serviceType;
    _resultData['serviceType'] = toJson$Enum$TicketServiceType(l$serviceType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$ticketNumber = ticketNumber;
    final l$ticketType = ticketType;
    final l$containerNumber = containerNumber;
    final l$yardCode = yardCode;
    final l$created = created;
    final l$account = account;
    final l$comments = comments;
    final l$lines = lines;
    final l$transportDetails = transportDetails;
    final l$inspectionMedia = inspectionMedia;
    final l$ticketStatus = ticketStatus;
    final l$serviceType = serviceType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$ticketNumber,
      l$ticketType,
      l$containerNumber,
      l$yardCode,
      l$created,
      l$account,
      Object.hashAll(l$comments.map((v) => v)),
      Object.hashAll(l$lines.map((v) => v)),
      l$transportDetails,
      Object.hashAll(l$inspectionMedia.map((v) => v)),
      l$ticketStatus,
      l$serviceType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchTickets$searchTickets$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$containerNumber = containerNumber;
    final lOther$containerNumber = other.containerNumber;
    if (l$containerNumber != lOther$containerNumber) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
      return false;
    }
    final l$comments = comments;
    final lOther$comments = other.comments;
    if (l$comments.length != lOther$comments.length) {
      return false;
    }
    for (int i = 0; i < l$comments.length; i++) {
      final l$comments$entry = l$comments[i];
      final lOther$comments$entry = lOther$comments[i];
      if (l$comments$entry != lOther$comments$entry) {
        return false;
      }
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
    final l$transportDetails = transportDetails;
    final lOther$transportDetails = other.transportDetails;
    if (l$transportDetails != lOther$transportDetails) {
      return false;
    }
    final l$inspectionMedia = inspectionMedia;
    final lOther$inspectionMedia = other.inspectionMedia;
    if (l$inspectionMedia.length != lOther$inspectionMedia.length) {
      return false;
    }
    for (int i = 0; i < l$inspectionMedia.length; i++) {
      final l$inspectionMedia$entry = l$inspectionMedia[i];
      final lOther$inspectionMedia$entry = lOther$inspectionMedia[i];
      if (l$inspectionMedia$entry != lOther$inspectionMedia$entry) {
        return false;
      }
    }
    final l$ticketStatus = ticketStatus;
    final lOther$ticketStatus = other.ticketStatus;
    if (l$ticketStatus != lOther$ticketStatus) {
      return false;
    }
    final l$serviceType = serviceType;
    final lOther$serviceType = other.serviceType;
    if (l$serviceType != lOther$serviceType) {
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

extension UtilityExtension$Query$SearchTickets$searchTickets$nodes
    on Query$SearchTickets$searchTickets$nodes {
  CopyWith$Query$SearchTickets$searchTickets$nodes<
    Query$SearchTickets$searchTickets$nodes
  >
  get copyWith =>
      CopyWith$Query$SearchTickets$searchTickets$nodes(this, (i) => i);
}

abstract class CopyWith$Query$SearchTickets$searchTickets$nodes<TRes> {
  factory CopyWith$Query$SearchTickets$searchTickets$nodes(
    Query$SearchTickets$searchTickets$nodes instance,
    TRes Function(Query$SearchTickets$searchTickets$nodes) then,
  ) = _CopyWithImpl$Query$SearchTickets$searchTickets$nodes;

  factory CopyWith$Query$SearchTickets$searchTickets$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes;

  TRes call({
    String? id,
    int? ticketNumber,
    Enum$TicketType? ticketType,
    String? containerNumber,
    String? yardCode,
    Query$SearchTickets$searchTickets$nodes$created? created,
    Query$SearchTickets$searchTickets$nodes$account? account,
    List<Query$SearchTickets$searchTickets$nodes$comments>? comments,
    List<Query$SearchTickets$searchTickets$nodes$lines>? lines,
    Query$SearchTickets$searchTickets$nodes$transportDetails? transportDetails,
    List<Query$SearchTickets$searchTickets$nodes$inspectionMedia>?
    inspectionMedia,
    Enum$TicketStatus? ticketStatus,
    Enum$TicketServiceType? serviceType,
    String? $__typename,
  });
  CopyWith$Query$SearchTickets$searchTickets$nodes$created<TRes> get created;
  CopyWith$Query$SearchTickets$searchTickets$nodes$account<TRes> get account;
  TRes comments(
    Iterable<Query$SearchTickets$searchTickets$nodes$comments> Function(
      Iterable<
        CopyWith$Query$SearchTickets$searchTickets$nodes$comments<
          Query$SearchTickets$searchTickets$nodes$comments
        >
      >,
    )
    _fn,
  );
  TRes lines(
    Iterable<Query$SearchTickets$searchTickets$nodes$lines> Function(
      Iterable<
        CopyWith$Query$SearchTickets$searchTickets$nodes$lines<
          Query$SearchTickets$searchTickets$nodes$lines
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$SearchTickets$searchTickets$nodes$transportDetails<TRes>
  get transportDetails;
  TRes inspectionMedia(
    Iterable<Query$SearchTickets$searchTickets$nodes$inspectionMedia> Function(
      Iterable<
        CopyWith$Query$SearchTickets$searchTickets$nodes$inspectionMedia<
          Query$SearchTickets$searchTickets$nodes$inspectionMedia
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchTickets$searchTickets$nodes<TRes>
    implements CopyWith$Query$SearchTickets$searchTickets$nodes<TRes> {
  _CopyWithImpl$Query$SearchTickets$searchTickets$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchTickets$searchTickets$nodes _instance;

  final TRes Function(Query$SearchTickets$searchTickets$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? ticketNumber = _undefined,
    Object? ticketType = _undefined,
    Object? containerNumber = _undefined,
    Object? yardCode = _undefined,
    Object? created = _undefined,
    Object? account = _undefined,
    Object? comments = _undefined,
    Object? lines = _undefined,
    Object? transportDetails = _undefined,
    Object? inspectionMedia = _undefined,
    Object? ticketStatus = _undefined,
    Object? serviceType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTickets$searchTickets$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      ticketNumber: ticketNumber == _undefined || ticketNumber == null
          ? _instance.ticketNumber
          : (ticketNumber as int),
      ticketType: ticketType == _undefined || ticketType == null
          ? _instance.ticketType
          : (ticketType as Enum$TicketType),
      containerNumber: containerNumber == _undefined
          ? _instance.containerNumber
          : (containerNumber as String?),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Query$SearchTickets$searchTickets$nodes$created),
      account: account == _undefined || account == null
          ? _instance.account
          : (account as Query$SearchTickets$searchTickets$nodes$account),
      comments: comments == _undefined || comments == null
          ? _instance.comments
          : (comments
                as List<Query$SearchTickets$searchTickets$nodes$comments>),
      lines: lines == _undefined || lines == null
          ? _instance.lines
          : (lines as List<Query$SearchTickets$searchTickets$nodes$lines>),
      transportDetails:
          transportDetails == _undefined || transportDetails == null
          ? _instance.transportDetails
          : (transportDetails
                as Query$SearchTickets$searchTickets$nodes$transportDetails),
      inspectionMedia: inspectionMedia == _undefined || inspectionMedia == null
          ? _instance.inspectionMedia
          : (inspectionMedia
                as List<
                  Query$SearchTickets$searchTickets$nodes$inspectionMedia
                >),
      ticketStatus: ticketStatus == _undefined || ticketStatus == null
          ? _instance.ticketStatus
          : (ticketStatus as Enum$TicketStatus),
      serviceType: serviceType == _undefined || serviceType == null
          ? _instance.serviceType
          : (serviceType as Enum$TicketServiceType),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchTickets$searchTickets$nodes$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Query$SearchTickets$searchTickets$nodes$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Query$SearchTickets$searchTickets$nodes$account<TRes> get account {
    final local$account = _instance.account;
    return CopyWith$Query$SearchTickets$searchTickets$nodes$account(
      local$account,
      (e) => call(account: e),
    );
  }

  TRes comments(
    Iterable<Query$SearchTickets$searchTickets$nodes$comments> Function(
      Iterable<
        CopyWith$Query$SearchTickets$searchTickets$nodes$comments<
          Query$SearchTickets$searchTickets$nodes$comments
        >
      >,
    )
    _fn,
  ) => call(
    comments: _fn(
      _instance.comments.map(
        (e) => CopyWith$Query$SearchTickets$searchTickets$nodes$comments(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  TRes lines(
    Iterable<Query$SearchTickets$searchTickets$nodes$lines> Function(
      Iterable<
        CopyWith$Query$SearchTickets$searchTickets$nodes$lines<
          Query$SearchTickets$searchTickets$nodes$lines
        >
      >,
    )
    _fn,
  ) => call(
    lines: _fn(
      _instance.lines.map(
        (e) =>
            CopyWith$Query$SearchTickets$searchTickets$nodes$lines(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Query$SearchTickets$searchTickets$nodes$transportDetails<TRes>
  get transportDetails {
    final local$transportDetails = _instance.transportDetails;
    return CopyWith$Query$SearchTickets$searchTickets$nodes$transportDetails(
      local$transportDetails,
      (e) => call(transportDetails: e),
    );
  }

  TRes inspectionMedia(
    Iterable<Query$SearchTickets$searchTickets$nodes$inspectionMedia> Function(
      Iterable<
        CopyWith$Query$SearchTickets$searchTickets$nodes$inspectionMedia<
          Query$SearchTickets$searchTickets$nodes$inspectionMedia
        >
      >,
    )
    _fn,
  ) => call(
    inspectionMedia: _fn(
      _instance.inspectionMedia.map(
        (e) => CopyWith$Query$SearchTickets$searchTickets$nodes$inspectionMedia(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes<TRes>
    implements CopyWith$Query$SearchTickets$searchTickets$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes(this._res);

  TRes _res;

  call({
    String? id,
    int? ticketNumber,
    Enum$TicketType? ticketType,
    String? containerNumber,
    String? yardCode,
    Query$SearchTickets$searchTickets$nodes$created? created,
    Query$SearchTickets$searchTickets$nodes$account? account,
    List<Query$SearchTickets$searchTickets$nodes$comments>? comments,
    List<Query$SearchTickets$searchTickets$nodes$lines>? lines,
    Query$SearchTickets$searchTickets$nodes$transportDetails? transportDetails,
    List<Query$SearchTickets$searchTickets$nodes$inspectionMedia>?
    inspectionMedia,
    Enum$TicketStatus? ticketStatus,
    Enum$TicketServiceType? serviceType,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchTickets$searchTickets$nodes$created<TRes> get created =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$created.stub(_res);

  CopyWith$Query$SearchTickets$searchTickets$nodes$account<TRes> get account =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$account.stub(_res);

  comments(_fn) => _res;

  lines(_fn) => _res;

  CopyWith$Query$SearchTickets$searchTickets$nodes$transportDetails<TRes>
  get transportDetails =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$transportDetails.stub(
        _res,
      );

  inspectionMedia(_fn) => _res;
}

class Query$SearchTickets$searchTickets$nodes$created {
  Query$SearchTickets$searchTickets$nodes$created({
    required this.at,
    this.$__typename = 'Created',
  });

  factory Query$SearchTickets$searchTickets$nodes$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Query$SearchTickets$searchTickets$nodes$created(
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
    if (other is! Query$SearchTickets$searchTickets$nodes$created ||
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

extension UtilityExtension$Query$SearchTickets$searchTickets$nodes$created
    on Query$SearchTickets$searchTickets$nodes$created {
  CopyWith$Query$SearchTickets$searchTickets$nodes$created<
    Query$SearchTickets$searchTickets$nodes$created
  >
  get copyWith =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$created(this, (i) => i);
}

abstract class CopyWith$Query$SearchTickets$searchTickets$nodes$created<TRes> {
  factory CopyWith$Query$SearchTickets$searchTickets$nodes$created(
    Query$SearchTickets$searchTickets$nodes$created instance,
    TRes Function(Query$SearchTickets$searchTickets$nodes$created) then,
  ) = _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$created;

  factory CopyWith$Query$SearchTickets$searchTickets$nodes$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$created;

  TRes call({DateTime? at, String? $__typename});
}

class _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$created<TRes>
    implements CopyWith$Query$SearchTickets$searchTickets$nodes$created<TRes> {
  _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$created(
    this._instance,
    this._then,
  );

  final Query$SearchTickets$searchTickets$nodes$created _instance;

  final TRes Function(Query$SearchTickets$searchTickets$nodes$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? at = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$SearchTickets$searchTickets$nodes$created(
          at: at == _undefined || at == null ? _instance.at : (at as DateTime),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$created<TRes>
    implements CopyWith$Query$SearchTickets$searchTickets$nodes$created<TRes> {
  _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$created(this._res);

  TRes _res;

  call({DateTime? at, String? $__typename}) => _res;
}

class Query$SearchTickets$searchTickets$nodes$account {
  Query$SearchTickets$searchTickets$nodes$account({
    this.details,
    required this.accountNumber,
    required this.name,
    this.$__typename = 'TicketAccount',
  });

  factory Query$SearchTickets$searchTickets$nodes$account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$details = json['details'];
    final l$accountNumber = json['accountNumber'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SearchTickets$searchTickets$nodes$account(
      details: l$details == null
          ? null
          : Query$SearchTickets$searchTickets$nodes$account$details.fromJson(
              (l$details as Map<String, dynamic>),
            ),
      accountNumber: (l$accountNumber as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchTickets$searchTickets$nodes$account$details? details;

  final String accountNumber;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$details = details;
    _resultData['details'] = l$details?.toJson();
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$details = details;
    final l$accountNumber = accountNumber;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$details, l$accountNumber, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchTickets$searchTickets$nodes$account ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$SearchTickets$searchTickets$nodes$account
    on Query$SearchTickets$searchTickets$nodes$account {
  CopyWith$Query$SearchTickets$searchTickets$nodes$account<
    Query$SearchTickets$searchTickets$nodes$account
  >
  get copyWith =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$account(this, (i) => i);
}

abstract class CopyWith$Query$SearchTickets$searchTickets$nodes$account<TRes> {
  factory CopyWith$Query$SearchTickets$searchTickets$nodes$account(
    Query$SearchTickets$searchTickets$nodes$account instance,
    TRes Function(Query$SearchTickets$searchTickets$nodes$account) then,
  ) = _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$account;

  factory CopyWith$Query$SearchTickets$searchTickets$nodes$account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$account;

  TRes call({
    Query$SearchTickets$searchTickets$nodes$account$details? details,
    String? accountNumber,
    String? name,
    String? $__typename,
  });
  CopyWith$Query$SearchTickets$searchTickets$nodes$account$details<TRes>
  get details;
}

class _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$account<TRes>
    implements CopyWith$Query$SearchTickets$searchTickets$nodes$account<TRes> {
  _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$account(
    this._instance,
    this._then,
  );

  final Query$SearchTickets$searchTickets$nodes$account _instance;

  final TRes Function(Query$SearchTickets$searchTickets$nodes$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? details = _undefined,
    Object? accountNumber = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTickets$searchTickets$nodes$account(
      details: details == _undefined
          ? _instance.details
          : (details
                as Query$SearchTickets$searchTickets$nodes$account$details?),
      accountNumber: accountNumber == _undefined || accountNumber == null
          ? _instance.accountNumber
          : (accountNumber as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchTickets$searchTickets$nodes$account$details<TRes>
  get details {
    final local$details = _instance.details;
    return local$details == null
        ? CopyWith$Query$SearchTickets$searchTickets$nodes$account$details.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchTickets$searchTickets$nodes$account$details(
            local$details,
            (e) => call(details: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$account<TRes>
    implements CopyWith$Query$SearchTickets$searchTickets$nodes$account<TRes> {
  _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$account(this._res);

  TRes _res;

  call({
    Query$SearchTickets$searchTickets$nodes$account$details? details,
    String? accountNumber,
    String? name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchTickets$searchTickets$nodes$account$details<TRes>
  get details =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$account$details.stub(
        _res,
      );
}

class Query$SearchTickets$searchTickets$nodes$account$details {
  Query$SearchTickets$searchTickets$nodes$account$details({
    required this.primaryManager,
    this.$__typename = 'Account',
  });

  factory Query$SearchTickets$searchTickets$nodes$account$details.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$primaryManager = json['primaryManager'];
    final l$$__typename = json['__typename'];
    return Query$SearchTickets$searchTickets$nodes$account$details(
      primaryManager:
          Query$SearchTickets$searchTickets$nodes$account$details$primaryManager.fromJson(
            (l$primaryManager as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchTickets$searchTickets$nodes$account$details$primaryManager
  primaryManager;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$primaryManager = primaryManager;
    _resultData['primaryManager'] = l$primaryManager.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$primaryManager = primaryManager;
    final l$$__typename = $__typename;
    return Object.hashAll([l$primaryManager, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchTickets$searchTickets$nodes$account$details ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$primaryManager = primaryManager;
    final lOther$primaryManager = other.primaryManager;
    if (l$primaryManager != lOther$primaryManager) {
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

extension UtilityExtension$Query$SearchTickets$searchTickets$nodes$account$details
    on Query$SearchTickets$searchTickets$nodes$account$details {
  CopyWith$Query$SearchTickets$searchTickets$nodes$account$details<
    Query$SearchTickets$searchTickets$nodes$account$details
  >
  get copyWith =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$account$details(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchTickets$searchTickets$nodes$account$details<
  TRes
> {
  factory CopyWith$Query$SearchTickets$searchTickets$nodes$account$details(
    Query$SearchTickets$searchTickets$nodes$account$details instance,
    TRes Function(Query$SearchTickets$searchTickets$nodes$account$details) then,
  ) = _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$account$details;

  factory CopyWith$Query$SearchTickets$searchTickets$nodes$account$details.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$account$details;

  TRes call({
    Query$SearchTickets$searchTickets$nodes$account$details$primaryManager?
    primaryManager,
    String? $__typename,
  });
  CopyWith$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager<
    TRes
  >
  get primaryManager;
}

class _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$account$details<
  TRes
>
    implements
        CopyWith$Query$SearchTickets$searchTickets$nodes$account$details<TRes> {
  _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$account$details(
    this._instance,
    this._then,
  );

  final Query$SearchTickets$searchTickets$nodes$account$details _instance;

  final TRes Function(Query$SearchTickets$searchTickets$nodes$account$details)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? primaryManager = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTickets$searchTickets$nodes$account$details(
      primaryManager: primaryManager == _undefined || primaryManager == null
          ? _instance.primaryManager
          : (primaryManager
                as Query$SearchTickets$searchTickets$nodes$account$details$primaryManager),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager<
    TRes
  >
  get primaryManager {
    final local$primaryManager = _instance.primaryManager;
    return CopyWith$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager(
      local$primaryManager,
      (e) => call(primaryManager: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$account$details<
  TRes
>
    implements
        CopyWith$Query$SearchTickets$searchTickets$nodes$account$details<TRes> {
  _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$account$details(
    this._res,
  );

  TRes _res;

  call({
    Query$SearchTickets$searchTickets$nodes$account$details$primaryManager?
    primaryManager,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager<
    TRes
  >
  get primaryManager =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager.stub(
        _res,
      );
}

class Query$SearchTickets$searchTickets$nodes$account$details$primaryManager {
  Query$SearchTickets$searchTickets$nodes$account$details$primaryManager({
    this.type,
    this.name,
    this.$__typename = 'ManagementDetail',
  });

  factory Query$SearchTickets$searchTickets$nodes$account$details$primaryManager.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$type = json['type'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SearchTickets$searchTickets$nodes$account$details$primaryManager(
      type: l$type == null
          ? null
          : fromJson$Enum$ManagementType((l$type as String)),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$ManagementType? type;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type == null
        ? null
        : toJson$Enum$ManagementType(l$type);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$type, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchTickets$searchTickets$nodes$account$details$primaryManager ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager
    on Query$SearchTickets$searchTickets$nodes$account$details$primaryManager {
  CopyWith$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager<
    Query$SearchTickets$searchTickets$nodes$account$details$primaryManager
  >
  get copyWith =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager<
  TRes
> {
  factory CopyWith$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager(
    Query$SearchTickets$searchTickets$nodes$account$details$primaryManager
    instance,
    TRes Function(
      Query$SearchTickets$searchTickets$nodes$account$details$primaryManager,
    )
    then,
  ) = _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager;

  factory CopyWith$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager;

  TRes call({Enum$ManagementType? type, String? name, String? $__typename});
}

class _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager<
  TRes
>
    implements
        CopyWith$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager<
          TRes
        > {
  _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager(
    this._instance,
    this._then,
  );

  final Query$SearchTickets$searchTickets$nodes$account$details$primaryManager
  _instance;

  final TRes Function(
    Query$SearchTickets$searchTickets$nodes$account$details$primaryManager,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTickets$searchTickets$nodes$account$details$primaryManager(
      type: type == _undefined
          ? _instance.type
          : (type as Enum$ManagementType?),
      name: name == _undefined ? _instance.name : (name as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager<
  TRes
>
    implements
        CopyWith$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$account$details$primaryManager(
    this._res,
  );

  TRes _res;

  call({Enum$ManagementType? type, String? name, String? $__typename}) => _res;
}

class Query$SearchTickets$searchTickets$nodes$comments {
  Query$SearchTickets$searchTickets$nodes$comments({
    required this.content,
    this.$__typename = 'Comment',
  });

  factory Query$SearchTickets$searchTickets$nodes$comments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$$__typename = json['__typename'];
    return Query$SearchTickets$searchTickets$nodes$comments(
      content: (l$content as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$$__typename = $__typename;
    return Object.hashAll([l$content, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchTickets$searchTickets$nodes$comments ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
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

extension UtilityExtension$Query$SearchTickets$searchTickets$nodes$comments
    on Query$SearchTickets$searchTickets$nodes$comments {
  CopyWith$Query$SearchTickets$searchTickets$nodes$comments<
    Query$SearchTickets$searchTickets$nodes$comments
  >
  get copyWith =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$comments(this, (i) => i);
}

abstract class CopyWith$Query$SearchTickets$searchTickets$nodes$comments<TRes> {
  factory CopyWith$Query$SearchTickets$searchTickets$nodes$comments(
    Query$SearchTickets$searchTickets$nodes$comments instance,
    TRes Function(Query$SearchTickets$searchTickets$nodes$comments) then,
  ) = _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$comments;

  factory CopyWith$Query$SearchTickets$searchTickets$nodes$comments.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$comments;

  TRes call({String? content, String? $__typename});
}

class _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$comments<TRes>
    implements CopyWith$Query$SearchTickets$searchTickets$nodes$comments<TRes> {
  _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$comments(
    this._instance,
    this._then,
  );

  final Query$SearchTickets$searchTickets$nodes$comments _instance;

  final TRes Function(Query$SearchTickets$searchTickets$nodes$comments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? content = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$SearchTickets$searchTickets$nodes$comments(
          content: content == _undefined || content == null
              ? _instance.content
              : (content as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$comments<TRes>
    implements CopyWith$Query$SearchTickets$searchTickets$nodes$comments<TRes> {
  _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$comments(this._res);

  TRes _res;

  call({String? content, String? $__typename}) => _res;
}

class Query$SearchTickets$searchTickets$nodes$lines {
  Query$SearchTickets$searchTickets$nodes$lines({
    required this.isActive,
    this.product,
    required this.lineNumber,
    required this.grossWeight,
    this.inspectionDetails,
    this.$__typename = 'TicketLine',
  });

  factory Query$SearchTickets$searchTickets$nodes$lines.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$isActive = json['isActive'];
    final l$product = json['product'];
    final l$lineNumber = json['lineNumber'];
    final l$grossWeight = json['grossWeight'];
    final l$inspectionDetails = json['inspectionDetails'];
    final l$$__typename = json['__typename'];
    return Query$SearchTickets$searchTickets$nodes$lines(
      isActive: (l$isActive as bool),
      product: l$product == null
          ? null
          : Query$SearchTickets$searchTickets$nodes$lines$product.fromJson(
              (l$product as Map<String, dynamic>),
            ),
      lineNumber: (l$lineNumber as int),
      grossWeight:
          Query$SearchTickets$searchTickets$nodes$lines$grossWeight.fromJson(
            (l$grossWeight as Map<String, dynamic>),
          ),
      inspectionDetails: l$inspectionDetails == null
          ? null
          : Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails.fromJson(
              (l$inspectionDetails as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isActive;

  final Query$SearchTickets$searchTickets$nodes$lines$product? product;

  final int lineNumber;

  final Query$SearchTickets$searchTickets$nodes$lines$grossWeight grossWeight;

  final Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails?
  inspectionDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$lineNumber = lineNumber;
    _resultData['lineNumber'] = l$lineNumber;
    final l$grossWeight = grossWeight;
    _resultData['grossWeight'] = l$grossWeight.toJson();
    final l$inspectionDetails = inspectionDetails;
    _resultData['inspectionDetails'] = l$inspectionDetails?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isActive = isActive;
    final l$product = product;
    final l$lineNumber = lineNumber;
    final l$grossWeight = grossWeight;
    final l$inspectionDetails = inspectionDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$isActive,
      l$product,
      l$lineNumber,
      l$grossWeight,
      l$inspectionDetails,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchTickets$searchTickets$nodes$lines ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    final l$lineNumber = lineNumber;
    final lOther$lineNumber = other.lineNumber;
    if (l$lineNumber != lOther$lineNumber) {
      return false;
    }
    final l$grossWeight = grossWeight;
    final lOther$grossWeight = other.grossWeight;
    if (l$grossWeight != lOther$grossWeight) {
      return false;
    }
    final l$inspectionDetails = inspectionDetails;
    final lOther$inspectionDetails = other.inspectionDetails;
    if (l$inspectionDetails != lOther$inspectionDetails) {
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

extension UtilityExtension$Query$SearchTickets$searchTickets$nodes$lines
    on Query$SearchTickets$searchTickets$nodes$lines {
  CopyWith$Query$SearchTickets$searchTickets$nodes$lines<
    Query$SearchTickets$searchTickets$nodes$lines
  >
  get copyWith =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$lines(this, (i) => i);
}

abstract class CopyWith$Query$SearchTickets$searchTickets$nodes$lines<TRes> {
  factory CopyWith$Query$SearchTickets$searchTickets$nodes$lines(
    Query$SearchTickets$searchTickets$nodes$lines instance,
    TRes Function(Query$SearchTickets$searchTickets$nodes$lines) then,
  ) = _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$lines;

  factory CopyWith$Query$SearchTickets$searchTickets$nodes$lines.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$lines;

  TRes call({
    bool? isActive,
    Query$SearchTickets$searchTickets$nodes$lines$product? product,
    int? lineNumber,
    Query$SearchTickets$searchTickets$nodes$lines$grossWeight? grossWeight,
    Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails?
    inspectionDetails,
    String? $__typename,
  });
  CopyWith$Query$SearchTickets$searchTickets$nodes$lines$product<TRes>
  get product;
  CopyWith$Query$SearchTickets$searchTickets$nodes$lines$grossWeight<TRes>
  get grossWeight;
  CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails<TRes>
  get inspectionDetails;
}

class _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$lines<TRes>
    implements CopyWith$Query$SearchTickets$searchTickets$nodes$lines<TRes> {
  _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$lines(
    this._instance,
    this._then,
  );

  final Query$SearchTickets$searchTickets$nodes$lines _instance;

  final TRes Function(Query$SearchTickets$searchTickets$nodes$lines) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isActive = _undefined,
    Object? product = _undefined,
    Object? lineNumber = _undefined,
    Object? grossWeight = _undefined,
    Object? inspectionDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTickets$searchTickets$nodes$lines(
      isActive: isActive == _undefined || isActive == null
          ? _instance.isActive
          : (isActive as bool),
      product: product == _undefined
          ? _instance.product
          : (product as Query$SearchTickets$searchTickets$nodes$lines$product?),
      lineNumber: lineNumber == _undefined || lineNumber == null
          ? _instance.lineNumber
          : (lineNumber as int),
      grossWeight: grossWeight == _undefined || grossWeight == null
          ? _instance.grossWeight
          : (grossWeight
                as Query$SearchTickets$searchTickets$nodes$lines$grossWeight),
      inspectionDetails: inspectionDetails == _undefined
          ? _instance.inspectionDetails
          : (inspectionDetails
                as Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchTickets$searchTickets$nodes$lines$product<TRes>
  get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Query$SearchTickets$searchTickets$nodes$lines$product.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchTickets$searchTickets$nodes$lines$product(
            local$product,
            (e) => call(product: e),
          );
  }

  CopyWith$Query$SearchTickets$searchTickets$nodes$lines$grossWeight<TRes>
  get grossWeight {
    final local$grossWeight = _instance.grossWeight;
    return CopyWith$Query$SearchTickets$searchTickets$nodes$lines$grossWeight(
      local$grossWeight,
      (e) => call(grossWeight: e),
    );
  }

  CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails<TRes>
  get inspectionDetails {
    final local$inspectionDetails = _instance.inspectionDetails;
    return local$inspectionDetails == null
        ? CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails(
            local$inspectionDetails,
            (e) => call(inspectionDetails: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$lines<TRes>
    implements CopyWith$Query$SearchTickets$searchTickets$nodes$lines<TRes> {
  _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$lines(this._res);

  TRes _res;

  call({
    bool? isActive,
    Query$SearchTickets$searchTickets$nodes$lines$product? product,
    int? lineNumber,
    Query$SearchTickets$searchTickets$nodes$lines$grossWeight? grossWeight,
    Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails?
    inspectionDetails,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchTickets$searchTickets$nodes$lines$product<TRes>
  get product =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$lines$product.stub(_res);

  CopyWith$Query$SearchTickets$searchTickets$nodes$lines$grossWeight<TRes>
  get grossWeight =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$lines$grossWeight.stub(
        _res,
      );

  CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails<TRes>
  get inspectionDetails =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails.stub(
        _res,
      );
}

class Query$SearchTickets$searchTickets$nodes$lines$product {
  Query$SearchTickets$searchTickets$nodes$lines$product({
    required this.code,
    required this.description,
    this.$__typename = 'Product',
  });

  factory Query$SearchTickets$searchTickets$nodes$lines$product.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$SearchTickets$searchTickets$nodes$lines$product(
      code: (l$code as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchTickets$searchTickets$nodes$lines$product ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$SearchTickets$searchTickets$nodes$lines$product
    on Query$SearchTickets$searchTickets$nodes$lines$product {
  CopyWith$Query$SearchTickets$searchTickets$nodes$lines$product<
    Query$SearchTickets$searchTickets$nodes$lines$product
  >
  get copyWith =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$lines$product(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchTickets$searchTickets$nodes$lines$product<
  TRes
> {
  factory CopyWith$Query$SearchTickets$searchTickets$nodes$lines$product(
    Query$SearchTickets$searchTickets$nodes$lines$product instance,
    TRes Function(Query$SearchTickets$searchTickets$nodes$lines$product) then,
  ) = _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$lines$product;

  factory CopyWith$Query$SearchTickets$searchTickets$nodes$lines$product.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$lines$product;

  TRes call({String? code, String? description, String? $__typename});
}

class _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$lines$product<TRes>
    implements
        CopyWith$Query$SearchTickets$searchTickets$nodes$lines$product<TRes> {
  _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$lines$product(
    this._instance,
    this._then,
  );

  final Query$SearchTickets$searchTickets$nodes$lines$product _instance;

  final TRes Function(Query$SearchTickets$searchTickets$nodes$lines$product)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTickets$searchTickets$nodes$lines$product(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$lines$product<
  TRes
>
    implements
        CopyWith$Query$SearchTickets$searchTickets$nodes$lines$product<TRes> {
  _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$lines$product(
    this._res,
  );

  TRes _res;

  call({String? code, String? description, String? $__typename}) => _res;
}

class Query$SearchTickets$searchTickets$nodes$lines$grossWeight {
  Query$SearchTickets$searchTickets$nodes$lines$grossWeight({
    required this.value,
    required this.uom,
    this.$__typename = 'UomValue',
  });

  factory Query$SearchTickets$searchTickets$nodes$lines$grossWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$uom = json['uom'];
    final l$$__typename = json['__typename'];
    return Query$SearchTickets$searchTickets$nodes$lines$grossWeight(
      value: (l$value as num).toDouble(),
      uom: fromJson$Enum$Uom((l$uom as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final double value;

  final Enum$Uom uom;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$uom = uom;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$uom, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchTickets$searchTickets$nodes$lines$grossWeight ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$SearchTickets$searchTickets$nodes$lines$grossWeight
    on Query$SearchTickets$searchTickets$nodes$lines$grossWeight {
  CopyWith$Query$SearchTickets$searchTickets$nodes$lines$grossWeight<
    Query$SearchTickets$searchTickets$nodes$lines$grossWeight
  >
  get copyWith =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$lines$grossWeight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchTickets$searchTickets$nodes$lines$grossWeight<
  TRes
> {
  factory CopyWith$Query$SearchTickets$searchTickets$nodes$lines$grossWeight(
    Query$SearchTickets$searchTickets$nodes$lines$grossWeight instance,
    TRes Function(Query$SearchTickets$searchTickets$nodes$lines$grossWeight)
    then,
  ) = _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$lines$grossWeight;

  factory CopyWith$Query$SearchTickets$searchTickets$nodes$lines$grossWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$lines$grossWeight;

  TRes call({double? value, Enum$Uom? uom, String? $__typename});
}

class _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$lines$grossWeight<
  TRes
>
    implements
        CopyWith$Query$SearchTickets$searchTickets$nodes$lines$grossWeight<
          TRes
        > {
  _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$lines$grossWeight(
    this._instance,
    this._then,
  );

  final Query$SearchTickets$searchTickets$nodes$lines$grossWeight _instance;

  final TRes Function(Query$SearchTickets$searchTickets$nodes$lines$grossWeight)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? uom = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTickets$searchTickets$nodes$lines$grossWeight(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$lines$grossWeight<
  TRes
>
    implements
        CopyWith$Query$SearchTickets$searchTickets$nodes$lines$grossWeight<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$lines$grossWeight(
    this._res,
  );

  TRes _res;

  call({double? value, Enum$Uom? uom, String? $__typename}) => _res;
}

class Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails {
  Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails({
    required this.inspectionMedia,
    this.$__typename = 'InspectionDetails',
  });

  factory Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$inspectionMedia = json['inspectionMedia'];
    final l$$__typename = json['__typename'];
    return Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails(
      inspectionMedia: (l$inspectionMedia as List<dynamic>)
          .map(
            (e) =>
                Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
  >
  inspectionMedia;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$inspectionMedia = inspectionMedia;
    _resultData['inspectionMedia'] = l$inspectionMedia
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$inspectionMedia = inspectionMedia;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$inspectionMedia.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$inspectionMedia = inspectionMedia;
    final lOther$inspectionMedia = other.inspectionMedia;
    if (l$inspectionMedia.length != lOther$inspectionMedia.length) {
      return false;
    }
    for (int i = 0; i < l$inspectionMedia.length; i++) {
      final l$inspectionMedia$entry = l$inspectionMedia[i];
      final lOther$inspectionMedia$entry = lOther$inspectionMedia[i];
      if (l$inspectionMedia$entry != lOther$inspectionMedia$entry) {
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

extension UtilityExtension$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails
    on Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails {
  CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails<
    Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails
  >
  get copyWith =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails<
  TRes
> {
  factory CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails(
    Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails instance,
    TRes Function(
      Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails,
    )
    then,
  ) = _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails;

  factory CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails;

  TRes call({
    List<
      Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
    >?
    inspectionMedia,
    String? $__typename,
  });
  TRes inspectionMedia(
    Iterable<
      Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
    >
    Function(
      Iterable<
        CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia<
          Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails<
  TRes
>
    implements
        CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails<
          TRes
        > {
  _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails(
    this._instance,
    this._then,
  );

  final Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails
  _instance;

  final TRes Function(
    Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? inspectionMedia = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails(
      inspectionMedia: inspectionMedia == _undefined || inspectionMedia == null
          ? _instance.inspectionMedia
          : (inspectionMedia
                as List<
                  Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes inspectionMedia(
    Iterable<
      Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
    >
    Function(
      Iterable<
        CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia<
          Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
        >
      >,
    )
    _fn,
  ) => call(
    inspectionMedia: _fn(
      _instance.inspectionMedia.map(
        (e) =>
            CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails<
  TRes
>
    implements
        CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
    >?
    inspectionMedia,
    String? $__typename,
  }) => _res;

  inspectionMedia(_fn) => _res;
}

class Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia {
  Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia({
    required this.url,
    this.$__typename = 'InspectionMedia',
  });

  factory Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia(
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
            is! Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia ||
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

extension UtilityExtension$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
    on
        Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia {
  CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia<
    Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
  >
  get copyWith =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia<
  TRes
> {
  factory CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia(
    Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
    instance,
    TRes Function(
      Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia,
    )
    then,
  ) = _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia;

  factory CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia<
          TRes
        > {
  _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia(
    this._instance,
    this._then,
  );

  final Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
  _instance;

  final TRes Function(
    Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$SearchTickets$searchTickets$nodes$transportDetails {
  Query$SearchTickets$searchTickets$nodes$transportDetails({
    this.vehicleReg,
    this.$__typename = 'TransportDetails',
  });

  factory Query$SearchTickets$searchTickets$nodes$transportDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$vehicleReg = json['vehicleReg'];
    final l$$__typename = json['__typename'];
    return Query$SearchTickets$searchTickets$nodes$transportDetails(
      vehicleReg: (l$vehicleReg as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? vehicleReg;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vehicleReg = vehicleReg;
    _resultData['vehicleReg'] = l$vehicleReg;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vehicleReg = vehicleReg;
    final l$$__typename = $__typename;
    return Object.hashAll([l$vehicleReg, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchTickets$searchTickets$nodes$transportDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$vehicleReg = vehicleReg;
    final lOther$vehicleReg = other.vehicleReg;
    if (l$vehicleReg != lOther$vehicleReg) {
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

extension UtilityExtension$Query$SearchTickets$searchTickets$nodes$transportDetails
    on Query$SearchTickets$searchTickets$nodes$transportDetails {
  CopyWith$Query$SearchTickets$searchTickets$nodes$transportDetails<
    Query$SearchTickets$searchTickets$nodes$transportDetails
  >
  get copyWith =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$transportDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchTickets$searchTickets$nodes$transportDetails<
  TRes
> {
  factory CopyWith$Query$SearchTickets$searchTickets$nodes$transportDetails(
    Query$SearchTickets$searchTickets$nodes$transportDetails instance,
    TRes Function(Query$SearchTickets$searchTickets$nodes$transportDetails)
    then,
  ) = _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$transportDetails;

  factory CopyWith$Query$SearchTickets$searchTickets$nodes$transportDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$transportDetails;

  TRes call({String? vehicleReg, String? $__typename});
}

class _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$transportDetails<
  TRes
>
    implements
        CopyWith$Query$SearchTickets$searchTickets$nodes$transportDetails<
          TRes
        > {
  _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$transportDetails(
    this._instance,
    this._then,
  );

  final Query$SearchTickets$searchTickets$nodes$transportDetails _instance;

  final TRes Function(Query$SearchTickets$searchTickets$nodes$transportDetails)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vehicleReg = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTickets$searchTickets$nodes$transportDetails(
      vehicleReg: vehicleReg == _undefined
          ? _instance.vehicleReg
          : (vehicleReg as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$transportDetails<
  TRes
>
    implements
        CopyWith$Query$SearchTickets$searchTickets$nodes$transportDetails<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$transportDetails(
    this._res,
  );

  TRes _res;

  call({String? vehicleReg, String? $__typename}) => _res;
}

class Query$SearchTickets$searchTickets$nodes$inspectionMedia {
  Query$SearchTickets$searchTickets$nodes$inspectionMedia({
    required this.url,
    this.$__typename = 'InspectionMedia',
  });

  factory Query$SearchTickets$searchTickets$nodes$inspectionMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$SearchTickets$searchTickets$nodes$inspectionMedia(
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
    if (other is! Query$SearchTickets$searchTickets$nodes$inspectionMedia ||
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

extension UtilityExtension$Query$SearchTickets$searchTickets$nodes$inspectionMedia
    on Query$SearchTickets$searchTickets$nodes$inspectionMedia {
  CopyWith$Query$SearchTickets$searchTickets$nodes$inspectionMedia<
    Query$SearchTickets$searchTickets$nodes$inspectionMedia
  >
  get copyWith =>
      CopyWith$Query$SearchTickets$searchTickets$nodes$inspectionMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchTickets$searchTickets$nodes$inspectionMedia<
  TRes
> {
  factory CopyWith$Query$SearchTickets$searchTickets$nodes$inspectionMedia(
    Query$SearchTickets$searchTickets$nodes$inspectionMedia instance,
    TRes Function(Query$SearchTickets$searchTickets$nodes$inspectionMedia) then,
  ) = _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$inspectionMedia;

  factory CopyWith$Query$SearchTickets$searchTickets$nodes$inspectionMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$inspectionMedia;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$SearchTickets$searchTickets$nodes$inspectionMedia<TRes> {
  _CopyWithImpl$Query$SearchTickets$searchTickets$nodes$inspectionMedia(
    this._instance,
    this._then,
  );

  final Query$SearchTickets$searchTickets$nodes$inspectionMedia _instance;

  final TRes Function(Query$SearchTickets$searchTickets$nodes$inspectionMedia)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? url = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$SearchTickets$searchTickets$nodes$inspectionMedia(
          url: url == _undefined || url == null
              ? _instance.url
              : (url as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$SearchTickets$searchTickets$nodes$inspectionMedia<TRes> {
  _CopyWithStubImpl$Query$SearchTickets$searchTickets$nodes$inspectionMedia(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}
