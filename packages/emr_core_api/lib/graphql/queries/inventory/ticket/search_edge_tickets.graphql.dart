import '../../../schema.graphql.dart';
import 'package:emr_core_api/models/local_date.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchEdgeTickets {
  factory Variables$Query$SearchEdgeTickets({
    required Input$SearchTicketsInput input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$SearchTicketsSortInput>? order,
  }) => Variables$Query$SearchEdgeTickets._({
    r'input': input,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
    if (order != null) r'order': order,
  });

  Variables$Query$SearchEdgeTickets._(this._$data);

  factory Variables$Query$SearchEdgeTickets.fromJson(
    Map<String, dynamic> data,
  ) {
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
    return Variables$Query$SearchEdgeTickets._(result$data);
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

  CopyWith$Variables$Query$SearchEdgeTickets<Variables$Query$SearchEdgeTickets>
  get copyWith => CopyWith$Variables$Query$SearchEdgeTickets(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchEdgeTickets ||
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

abstract class CopyWith$Variables$Query$SearchEdgeTickets<TRes> {
  factory CopyWith$Variables$Query$SearchEdgeTickets(
    Variables$Query$SearchEdgeTickets instance,
    TRes Function(Variables$Query$SearchEdgeTickets) then,
  ) = _CopyWithImpl$Variables$Query$SearchEdgeTickets;

  factory CopyWith$Variables$Query$SearchEdgeTickets.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchEdgeTickets;

  TRes call({
    Input$SearchTicketsInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$SearchTicketsSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$SearchEdgeTickets<TRes>
    implements CopyWith$Variables$Query$SearchEdgeTickets<TRes> {
  _CopyWithImpl$Variables$Query$SearchEdgeTickets(this._instance, this._then);

  final Variables$Query$SearchEdgeTickets _instance;

  final TRes Function(Variables$Query$SearchEdgeTickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$SearchEdgeTickets._({
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

class _CopyWithStubImpl$Variables$Query$SearchEdgeTickets<TRes>
    implements CopyWith$Variables$Query$SearchEdgeTickets<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchEdgeTickets(this._res);

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

class Query$SearchEdgeTickets {
  Query$SearchEdgeTickets({this.searchTickets, this.$__typename = 'Query'});

  factory Query$SearchEdgeTickets.fromJson(Map<String, dynamic> json) {
    final l$searchTickets = json['searchTickets'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets(
      searchTickets: l$searchTickets == null
          ? null
          : Query$SearchEdgeTickets$searchTickets.fromJson(
              (l$searchTickets as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchEdgeTickets$searchTickets? searchTickets;

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
    if (other is! Query$SearchEdgeTickets || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$SearchEdgeTickets on Query$SearchEdgeTickets {
  CopyWith$Query$SearchEdgeTickets<Query$SearchEdgeTickets> get copyWith =>
      CopyWith$Query$SearchEdgeTickets(this, (i) => i);
}

abstract class CopyWith$Query$SearchEdgeTickets<TRes> {
  factory CopyWith$Query$SearchEdgeTickets(
    Query$SearchEdgeTickets instance,
    TRes Function(Query$SearchEdgeTickets) then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets;

  factory CopyWith$Query$SearchEdgeTickets.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchEdgeTickets;

  TRes call({
    Query$SearchEdgeTickets$searchTickets? searchTickets,
    String? $__typename,
  });
  CopyWith$Query$SearchEdgeTickets$searchTickets<TRes> get searchTickets;
}

class _CopyWithImpl$Query$SearchEdgeTickets<TRes>
    implements CopyWith$Query$SearchEdgeTickets<TRes> {
  _CopyWithImpl$Query$SearchEdgeTickets(this._instance, this._then);

  final Query$SearchEdgeTickets _instance;

  final TRes Function(Query$SearchEdgeTickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchTickets = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchEdgeTickets(
      searchTickets: searchTickets == _undefined
          ? _instance.searchTickets
          : (searchTickets as Query$SearchEdgeTickets$searchTickets?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchEdgeTickets$searchTickets<TRes> get searchTickets {
    final local$searchTickets = _instance.searchTickets;
    return local$searchTickets == null
        ? CopyWith$Query$SearchEdgeTickets$searchTickets.stub(_then(_instance))
        : CopyWith$Query$SearchEdgeTickets$searchTickets(
            local$searchTickets,
            (e) => call(searchTickets: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchEdgeTickets<TRes>
    implements CopyWith$Query$SearchEdgeTickets<TRes> {
  _CopyWithStubImpl$Query$SearchEdgeTickets(this._res);

  TRes _res;

  call({
    Query$SearchEdgeTickets$searchTickets? searchTickets,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchEdgeTickets$searchTickets<TRes> get searchTickets =>
      CopyWith$Query$SearchEdgeTickets$searchTickets.stub(_res);
}

const documentNodeQuerySearchEdgeTickets = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchEdgeTickets'),
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
                        name: NameNode(value: 'account'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
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
                        name: NameNode(value: 'ticketCategory'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'date'),
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
                        name: NameNode(value: 'contractId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'contract'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(
                                value: 'contractOrderBookTypeName',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'customerReference'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'internalReference'),
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
                              name: NameNode(value: 'locationId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
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
                              name: NameNode(value: 'deductions'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
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
                        name: NameNode(value: 'lockedBy'),
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

class Query$SearchEdgeTickets$searchTickets {
  Query$SearchEdgeTickets$searchTickets({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchTicketsConnection',
  });

  factory Query$SearchEdgeTickets$searchTickets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets$searchTickets(
      totalCount: (l$totalCount as int),
      pageInfo: Query$SearchEdgeTickets$searchTickets$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$SearchEdgeTickets$searchTickets$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SearchEdgeTickets$searchTickets$pageInfo pageInfo;

  final List<Query$SearchEdgeTickets$searchTickets$nodes>? nodes;

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
    if (other is! Query$SearchEdgeTickets$searchTickets ||
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

extension UtilityExtension$Query$SearchEdgeTickets$searchTickets
    on Query$SearchEdgeTickets$searchTickets {
  CopyWith$Query$SearchEdgeTickets$searchTickets<
    Query$SearchEdgeTickets$searchTickets
  >
  get copyWith =>
      CopyWith$Query$SearchEdgeTickets$searchTickets(this, (i) => i);
}

abstract class CopyWith$Query$SearchEdgeTickets$searchTickets<TRes> {
  factory CopyWith$Query$SearchEdgeTickets$searchTickets(
    Query$SearchEdgeTickets$searchTickets instance,
    TRes Function(Query$SearchEdgeTickets$searchTickets) then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets$searchTickets;

  factory CopyWith$Query$SearchEdgeTickets$searchTickets.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets;

  TRes call({
    int? totalCount,
    Query$SearchEdgeTickets$searchTickets$pageInfo? pageInfo,
    List<Query$SearchEdgeTickets$searchTickets$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchEdgeTickets$searchTickets$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$SearchEdgeTickets$searchTickets$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes<
          Query$SearchEdgeTickets$searchTickets$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchEdgeTickets$searchTickets<TRes>
    implements CopyWith$Query$SearchEdgeTickets$searchTickets<TRes> {
  _CopyWithImpl$Query$SearchEdgeTickets$searchTickets(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTickets$searchTickets _instance;

  final TRes Function(Query$SearchEdgeTickets$searchTickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchEdgeTickets$searchTickets(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$SearchEdgeTickets$searchTickets$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$SearchEdgeTickets$searchTickets$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchEdgeTickets$searchTickets$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchEdgeTickets$searchTickets$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$SearchEdgeTickets$searchTickets$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes<
          Query$SearchEdgeTickets$searchTickets$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) =>
            CopyWith$Query$SearchEdgeTickets$searchTickets$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets<TRes>
    implements CopyWith$Query$SearchEdgeTickets$searchTickets<TRes> {
  _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$SearchEdgeTickets$searchTickets$pageInfo? pageInfo,
    List<Query$SearchEdgeTickets$searchTickets$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchEdgeTickets$searchTickets$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$SearchEdgeTickets$searchTickets$pageInfo {
  Query$SearchEdgeTickets$searchTickets$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchEdgeTickets$searchTickets$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets$searchTickets$pageInfo(
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
    if (other is! Query$SearchEdgeTickets$searchTickets$pageInfo ||
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

extension UtilityExtension$Query$SearchEdgeTickets$searchTickets$pageInfo
    on Query$SearchEdgeTickets$searchTickets$pageInfo {
  CopyWith$Query$SearchEdgeTickets$searchTickets$pageInfo<
    Query$SearchEdgeTickets$searchTickets$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$SearchEdgeTickets$searchTickets$pageInfo<TRes> {
  factory CopyWith$Query$SearchEdgeTickets$searchTickets$pageInfo(
    Query$SearchEdgeTickets$searchTickets$pageInfo instance,
    TRes Function(Query$SearchEdgeTickets$searchTickets$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$pageInfo;

  factory CopyWith$Query$SearchEdgeTickets$searchTickets$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$pageInfo<TRes>
    implements CopyWith$Query$SearchEdgeTickets$searchTickets$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTickets$searchTickets$pageInfo _instance;

  final TRes Function(Query$SearchEdgeTickets$searchTickets$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchEdgeTickets$searchTickets$pageInfo(
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

class _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$pageInfo<TRes>
    implements CopyWith$Query$SearchEdgeTickets$searchTickets$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}

class Query$SearchEdgeTickets$searchTickets$nodes {
  Query$SearchEdgeTickets$searchTickets$nodes({
    required this.id,
    required this.yardCode,
    required this.ticketNumber,
    required this.ticketType,
    required this.account,
    required this.ticketCategory,
    required this.date,
    required this.price,
    this.contractId,
    this.contract,
    required this.lines,
    required this.mediaAssets,
    required this.inspectionMedia,
    required this.transportDetails,
    this.lockedBy,
    this.$__typename = 'Ticket',
  });

  factory Query$SearchEdgeTickets$searchTickets$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$yardCode = json['yardCode'];
    final l$ticketNumber = json['ticketNumber'];
    final l$ticketType = json['ticketType'];
    final l$account = json['account'];
    final l$ticketCategory = json['ticketCategory'];
    final l$date = json['date'];
    final l$price = json['price'];
    final l$contractId = json['contractId'];
    final l$contract = json['contract'];
    final l$lines = json['lines'];
    final l$mediaAssets = json['mediaAssets'];
    final l$inspectionMedia = json['inspectionMedia'];
    final l$transportDetails = json['transportDetails'];
    final l$lockedBy = json['lockedBy'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets$searchTickets$nodes(
      id: (l$id as String),
      yardCode: (l$yardCode as String),
      ticketNumber: (l$ticketNumber as int),
      ticketType: fromJson$Enum$TicketType((l$ticketType as String)),
      account: Query$SearchEdgeTickets$searchTickets$nodes$account.fromJson(
        (l$account as Map<String, dynamic>),
      ),
      ticketCategory: fromJson$Enum$TicketCategory(
        (l$ticketCategory as String),
      ),
      date: LocalDate.fromJson(l$date),
      price: (l$price as num).toDouble(),
      contractId: (l$contractId as String?),
      contract: l$contract == null
          ? null
          : Query$SearchEdgeTickets$searchTickets$nodes$contract.fromJson(
              (l$contract as Map<String, dynamic>),
            ),
      lines: (l$lines as List<dynamic>)
          .map(
            (e) => Query$SearchEdgeTickets$searchTickets$nodes$lines.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      inspectionMedia: (l$inspectionMedia as List<dynamic>)
          .map(
            (e) =>
                Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      transportDetails:
          Query$SearchEdgeTickets$searchTickets$nodes$transportDetails.fromJson(
            (l$transportDetails as Map<String, dynamic>),
          ),
      lockedBy: (l$lockedBy as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String yardCode;

  final int ticketNumber;

  final Enum$TicketType ticketType;

  final Query$SearchEdgeTickets$searchTickets$nodes$account account;

  final Enum$TicketCategory ticketCategory;

  final DateTime date;

  final double price;

  final String? contractId;

  final Query$SearchEdgeTickets$searchTickets$nodes$contract? contract;

  final List<Query$SearchEdgeTickets$searchTickets$nodes$lines> lines;

  final List<Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets>
  mediaAssets;

  final List<Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia>
  inspectionMedia;

  final Query$SearchEdgeTickets$searchTickets$nodes$transportDetails
  transportDetails;

  final String? lockedBy;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$ticketNumber = ticketNumber;
    _resultData['ticketNumber'] = l$ticketNumber;
    final l$ticketType = ticketType;
    _resultData['ticketType'] = toJson$Enum$TicketType(l$ticketType);
    final l$account = account;
    _resultData['account'] = l$account.toJson();
    final l$ticketCategory = ticketCategory;
    _resultData['ticketCategory'] = toJson$Enum$TicketCategory(
      l$ticketCategory,
    );
    final l$date = date;
    _resultData['date'] = LocalDate.toJson(l$date);
    final l$price = price;
    _resultData['price'] = l$price;
    final l$contractId = contractId;
    _resultData['contractId'] = l$contractId;
    final l$contract = contract;
    _resultData['contract'] = l$contract?.toJson();
    final l$lines = lines;
    _resultData['lines'] = l$lines.map((e) => e.toJson()).toList();
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$inspectionMedia = inspectionMedia;
    _resultData['inspectionMedia'] = l$inspectionMedia
        .map((e) => e.toJson())
        .toList();
    final l$transportDetails = transportDetails;
    _resultData['transportDetails'] = l$transportDetails.toJson();
    final l$lockedBy = lockedBy;
    _resultData['lockedBy'] = l$lockedBy;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$yardCode = yardCode;
    final l$ticketNumber = ticketNumber;
    final l$ticketType = ticketType;
    final l$account = account;
    final l$ticketCategory = ticketCategory;
    final l$date = date;
    final l$price = price;
    final l$contractId = contractId;
    final l$contract = contract;
    final l$lines = lines;
    final l$mediaAssets = mediaAssets;
    final l$inspectionMedia = inspectionMedia;
    final l$transportDetails = transportDetails;
    final l$lockedBy = lockedBy;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$yardCode,
      l$ticketNumber,
      l$ticketType,
      l$account,
      l$ticketCategory,
      l$date,
      l$price,
      l$contractId,
      l$contract,
      Object.hashAll(l$lines.map((v) => v)),
      Object.hashAll(l$mediaAssets.map((v) => v)),
      Object.hashAll(l$inspectionMedia.map((v) => v)),
      l$transportDetails,
      l$lockedBy,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchEdgeTickets$searchTickets$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
      return false;
    }
    final l$ticketCategory = ticketCategory;
    final lOther$ticketCategory = other.ticketCategory;
    if (l$ticketCategory != lOther$ticketCategory) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$contractId = contractId;
    final lOther$contractId = other.contractId;
    if (l$contractId != lOther$contractId) {
      return false;
    }
    final l$contract = contract;
    final lOther$contract = other.contract;
    if (l$contract != lOther$contract) {
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
    final l$transportDetails = transportDetails;
    final lOther$transportDetails = other.transportDetails;
    if (l$transportDetails != lOther$transportDetails) {
      return false;
    }
    final l$lockedBy = lockedBy;
    final lOther$lockedBy = other.lockedBy;
    if (l$lockedBy != lOther$lockedBy) {
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

extension UtilityExtension$Query$SearchEdgeTickets$searchTickets$nodes
    on Query$SearchEdgeTickets$searchTickets$nodes {
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes<
    Query$SearchEdgeTickets$searchTickets$nodes
  >
  get copyWith =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes(this, (i) => i);
}

abstract class CopyWith$Query$SearchEdgeTickets$searchTickets$nodes<TRes> {
  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes(
    Query$SearchEdgeTickets$searchTickets$nodes instance,
    TRes Function(Query$SearchEdgeTickets$searchTickets$nodes) then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes;

  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes;

  TRes call({
    String? id,
    String? yardCode,
    int? ticketNumber,
    Enum$TicketType? ticketType,
    Query$SearchEdgeTickets$searchTickets$nodes$account? account,
    Enum$TicketCategory? ticketCategory,
    DateTime? date,
    double? price,
    String? contractId,
    Query$SearchEdgeTickets$searchTickets$nodes$contract? contract,
    List<Query$SearchEdgeTickets$searchTickets$nodes$lines>? lines,
    List<Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets>? mediaAssets,
    List<Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia>?
    inspectionMedia,
    Query$SearchEdgeTickets$searchTickets$nodes$transportDetails?
    transportDetails,
    String? lockedBy,
    String? $__typename,
  });
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$account<TRes>
  get account;
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$contract<TRes>
  get contract;
  TRes lines(
    Iterable<Query$SearchEdgeTickets$searchTickets$nodes$lines> Function(
      Iterable<
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines<
          Query$SearchEdgeTickets$searchTickets$nodes$lines
        >
      >,
    )
    _fn,
  );
  TRes mediaAssets(
    Iterable<Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets> Function(
      Iterable<
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets<
          Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets
        >
      >,
    )
    _fn,
  );
  TRes inspectionMedia(
    Iterable<Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia>
    Function(
      Iterable<
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia<
          Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails<TRes>
  get transportDetails;
}

class _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes<TRes>
    implements CopyWith$Query$SearchEdgeTickets$searchTickets$nodes<TRes> {
  _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTickets$searchTickets$nodes _instance;

  final TRes Function(Query$SearchEdgeTickets$searchTickets$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? yardCode = _undefined,
    Object? ticketNumber = _undefined,
    Object? ticketType = _undefined,
    Object? account = _undefined,
    Object? ticketCategory = _undefined,
    Object? date = _undefined,
    Object? price = _undefined,
    Object? contractId = _undefined,
    Object? contract = _undefined,
    Object? lines = _undefined,
    Object? mediaAssets = _undefined,
    Object? inspectionMedia = _undefined,
    Object? transportDetails = _undefined,
    Object? lockedBy = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchEdgeTickets$searchTickets$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      ticketNumber: ticketNumber == _undefined || ticketNumber == null
          ? _instance.ticketNumber
          : (ticketNumber as int),
      ticketType: ticketType == _undefined || ticketType == null
          ? _instance.ticketType
          : (ticketType as Enum$TicketType),
      account: account == _undefined || account == null
          ? _instance.account
          : (account as Query$SearchEdgeTickets$searchTickets$nodes$account),
      ticketCategory: ticketCategory == _undefined || ticketCategory == null
          ? _instance.ticketCategory
          : (ticketCategory as Enum$TicketCategory),
      date: date == _undefined || date == null
          ? _instance.date
          : (date as DateTime),
      price: price == _undefined || price == null
          ? _instance.price
          : (price as double),
      contractId: contractId == _undefined
          ? _instance.contractId
          : (contractId as String?),
      contract: contract == _undefined
          ? _instance.contract
          : (contract as Query$SearchEdgeTickets$searchTickets$nodes$contract?),
      lines: lines == _undefined || lines == null
          ? _instance.lines
          : (lines as List<Query$SearchEdgeTickets$searchTickets$nodes$lines>),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets
                as List<
                  Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets
                >),
      inspectionMedia: inspectionMedia == _undefined || inspectionMedia == null
          ? _instance.inspectionMedia
          : (inspectionMedia
                as List<
                  Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia
                >),
      transportDetails:
          transportDetails == _undefined || transportDetails == null
          ? _instance.transportDetails
          : (transportDetails
                as Query$SearchEdgeTickets$searchTickets$nodes$transportDetails),
      lockedBy: lockedBy == _undefined
          ? _instance.lockedBy
          : (lockedBy as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$account<TRes>
  get account {
    final local$account = _instance.account;
    return CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$account(
      local$account,
      (e) => call(account: e),
    );
  }

  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$contract<TRes>
  get contract {
    final local$contract = _instance.contract;
    return local$contract == null
        ? CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$contract.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$contract(
            local$contract,
            (e) => call(contract: e),
          );
  }

  TRes lines(
    Iterable<Query$SearchEdgeTickets$searchTickets$nodes$lines> Function(
      Iterable<
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines<
          Query$SearchEdgeTickets$searchTickets$nodes$lines
        >
      >,
    )
    _fn,
  ) => call(
    lines: _fn(
      _instance.lines.map(
        (e) => CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  TRes mediaAssets(
    Iterable<Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets> Function(
      Iterable<
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets<
          Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) => CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  TRes inspectionMedia(
    Iterable<Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia>
    Function(
      Iterable<
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia<
          Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia
        >
      >,
    )
    _fn,
  ) => call(
    inspectionMedia: _fn(
      _instance.inspectionMedia.map(
        (e) =>
            CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails<TRes>
  get transportDetails {
    final local$transportDetails = _instance.transportDetails;
    return CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails(
      local$transportDetails,
      (e) => call(transportDetails: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes<TRes>
    implements CopyWith$Query$SearchEdgeTickets$searchTickets$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes(this._res);

  TRes _res;

  call({
    String? id,
    String? yardCode,
    int? ticketNumber,
    Enum$TicketType? ticketType,
    Query$SearchEdgeTickets$searchTickets$nodes$account? account,
    Enum$TicketCategory? ticketCategory,
    DateTime? date,
    double? price,
    String? contractId,
    Query$SearchEdgeTickets$searchTickets$nodes$contract? contract,
    List<Query$SearchEdgeTickets$searchTickets$nodes$lines>? lines,
    List<Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets>? mediaAssets,
    List<Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia>?
    inspectionMedia,
    Query$SearchEdgeTickets$searchTickets$nodes$transportDetails?
    transportDetails,
    String? lockedBy,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$account<TRes>
  get account =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$account.stub(_res);

  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$contract<TRes>
  get contract =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$contract.stub(_res);

  lines(_fn) => _res;

  mediaAssets(_fn) => _res;

  inspectionMedia(_fn) => _res;

  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails<TRes>
  get transportDetails =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails.stub(
        _res,
      );
}

class Query$SearchEdgeTickets$searchTickets$nodes$account {
  Query$SearchEdgeTickets$searchTickets$nodes$account({
    required this.accountNumber,
    required this.name,
    this.$__typename = 'TicketAccount',
  });

  factory Query$SearchEdgeTickets$searchTickets$nodes$account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountNumber = json['accountNumber'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets$searchTickets$nodes$account(
      accountNumber: (l$accountNumber as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String accountNumber;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$accountNumber = accountNumber;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$accountNumber, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchEdgeTickets$searchTickets$nodes$account ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$SearchEdgeTickets$searchTickets$nodes$account
    on Query$SearchEdgeTickets$searchTickets$nodes$account {
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$account<
    Query$SearchEdgeTickets$searchTickets$nodes$account
  >
  get copyWith => CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$account(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$account<
  TRes
> {
  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$account(
    Query$SearchEdgeTickets$searchTickets$nodes$account instance,
    TRes Function(Query$SearchEdgeTickets$searchTickets$nodes$account) then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$account;

  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$account;

  TRes call({String? accountNumber, String? name, String? $__typename});
}

class _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$account<TRes>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$account<TRes> {
  _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$account(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTickets$searchTickets$nodes$account _instance;

  final TRes Function(Query$SearchEdgeTickets$searchTickets$nodes$account)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchEdgeTickets$searchTickets$nodes$account(
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
}

class _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$account<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$account<TRes> {
  _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$account(
    this._res,
  );

  TRes _res;

  call({String? accountNumber, String? name, String? $__typename}) => _res;
}

class Query$SearchEdgeTickets$searchTickets$nodes$contract {
  Query$SearchEdgeTickets$searchTickets$nodes$contract({
    required this.contractOrderBookTypeName,
    required this.customerReference,
    required this.internalReference,
    this.$__typename = 'Contract',
  });

  factory Query$SearchEdgeTickets$searchTickets$nodes$contract.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$contractOrderBookTypeName = json['contractOrderBookTypeName'];
    final l$customerReference = json['customerReference'];
    final l$internalReference = json['internalReference'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets$searchTickets$nodes$contract(
      contractOrderBookTypeName: (l$contractOrderBookTypeName as String),
      customerReference: (l$customerReference as String),
      internalReference: (l$internalReference as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String contractOrderBookTypeName;

  final String customerReference;

  final String internalReference;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contractOrderBookTypeName = contractOrderBookTypeName;
    _resultData['contractOrderBookTypeName'] = l$contractOrderBookTypeName;
    final l$customerReference = customerReference;
    _resultData['customerReference'] = l$customerReference;
    final l$internalReference = internalReference;
    _resultData['internalReference'] = l$internalReference;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contractOrderBookTypeName = contractOrderBookTypeName;
    final l$customerReference = customerReference;
    final l$internalReference = internalReference;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contractOrderBookTypeName,
      l$customerReference,
      l$internalReference,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchEdgeTickets$searchTickets$nodes$contract ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contractOrderBookTypeName = contractOrderBookTypeName;
    final lOther$contractOrderBookTypeName = other.contractOrderBookTypeName;
    if (l$contractOrderBookTypeName != lOther$contractOrderBookTypeName) {
      return false;
    }
    final l$customerReference = customerReference;
    final lOther$customerReference = other.customerReference;
    if (l$customerReference != lOther$customerReference) {
      return false;
    }
    final l$internalReference = internalReference;
    final lOther$internalReference = other.internalReference;
    if (l$internalReference != lOther$internalReference) {
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

extension UtilityExtension$Query$SearchEdgeTickets$searchTickets$nodes$contract
    on Query$SearchEdgeTickets$searchTickets$nodes$contract {
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$contract<
    Query$SearchEdgeTickets$searchTickets$nodes$contract
  >
  get copyWith => CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$contract(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$contract<
  TRes
> {
  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$contract(
    Query$SearchEdgeTickets$searchTickets$nodes$contract instance,
    TRes Function(Query$SearchEdgeTickets$searchTickets$nodes$contract) then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$contract;

  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$contract.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$contract;

  TRes call({
    String? contractOrderBookTypeName,
    String? customerReference,
    String? internalReference,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$contract<TRes>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$contract<TRes> {
  _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$contract(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTickets$searchTickets$nodes$contract _instance;

  final TRes Function(Query$SearchEdgeTickets$searchTickets$nodes$contract)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contractOrderBookTypeName = _undefined,
    Object? customerReference = _undefined,
    Object? internalReference = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchEdgeTickets$searchTickets$nodes$contract(
      contractOrderBookTypeName:
          contractOrderBookTypeName == _undefined ||
              contractOrderBookTypeName == null
          ? _instance.contractOrderBookTypeName
          : (contractOrderBookTypeName as String),
      customerReference:
          customerReference == _undefined || customerReference == null
          ? _instance.customerReference
          : (customerReference as String),
      internalReference:
          internalReference == _undefined || internalReference == null
          ? _instance.internalReference
          : (internalReference as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$contract<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$contract<TRes> {
  _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$contract(
    this._res,
  );

  TRes _res;

  call({
    String? contractOrderBookTypeName,
    String? customerReference,
    String? internalReference,
    String? $__typename,
  }) => _res;
}

class Query$SearchEdgeTickets$searchTickets$nodes$lines {
  Query$SearchEdgeTickets$searchTickets$nodes$lines({
    required this.grossWeight,
    this.product,
    required this.lineNumber,
    required this.locationId,
    this.location,
    required this.rate,
    this.weightSerial,
    required this.mediaAssets,
    this.inspectionDetails,
    required this.deductions,
    this.$__typename = 'TicketLine',
  });

  factory Query$SearchEdgeTickets$searchTickets$nodes$lines.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$grossWeight = json['grossWeight'];
    final l$product = json['product'];
    final l$lineNumber = json['lineNumber'];
    final l$locationId = json['locationId'];
    final l$location = json['location'];
    final l$rate = json['rate'];
    final l$weightSerial = json['weightSerial'];
    final l$mediaAssets = json['mediaAssets'];
    final l$inspectionDetails = json['inspectionDetails'];
    final l$deductions = json['deductions'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets$searchTickets$nodes$lines(
      grossWeight:
          Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight.fromJson(
            (l$grossWeight as Map<String, dynamic>),
          ),
      product: l$product == null
          ? null
          : Query$SearchEdgeTickets$searchTickets$nodes$lines$product.fromJson(
              (l$product as Map<String, dynamic>),
            ),
      lineNumber: (l$lineNumber as int),
      locationId: (l$locationId as String),
      location: l$location == null
          ? null
          : Query$SearchEdgeTickets$searchTickets$nodes$lines$location.fromJson(
              (l$location as Map<String, dynamic>),
            ),
      rate: Query$SearchEdgeTickets$searchTickets$nodes$lines$rate.fromJson(
        (l$rate as Map<String, dynamic>),
      ),
      weightSerial: (l$weightSerial as String?),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      inspectionDetails: l$inspectionDetails == null
          ? null
          : Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails.fromJson(
              (l$inspectionDetails as Map<String, dynamic>),
            ),
      deductions: (l$deductions as List<dynamic>)
          .map(
            (e) =>
                Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight
  grossWeight;

  final Query$SearchEdgeTickets$searchTickets$nodes$lines$product? product;

  final int lineNumber;

  final String locationId;

  final Query$SearchEdgeTickets$searchTickets$nodes$lines$location? location;

  final Query$SearchEdgeTickets$searchTickets$nodes$lines$rate rate;

  final String? weightSerial;

  final List<Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets>
  mediaAssets;

  final Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails?
  inspectionDetails;

  final List<Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions>
  deductions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$grossWeight = grossWeight;
    _resultData['grossWeight'] = l$grossWeight.toJson();
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$lineNumber = lineNumber;
    _resultData['lineNumber'] = l$lineNumber;
    final l$locationId = locationId;
    _resultData['locationId'] = l$locationId;
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$rate = rate;
    _resultData['rate'] = l$rate.toJson();
    final l$weightSerial = weightSerial;
    _resultData['weightSerial'] = l$weightSerial;
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$inspectionDetails = inspectionDetails;
    _resultData['inspectionDetails'] = l$inspectionDetails?.toJson();
    final l$deductions = deductions;
    _resultData['deductions'] = l$deductions.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$grossWeight = grossWeight;
    final l$product = product;
    final l$lineNumber = lineNumber;
    final l$locationId = locationId;
    final l$location = location;
    final l$rate = rate;
    final l$weightSerial = weightSerial;
    final l$mediaAssets = mediaAssets;
    final l$inspectionDetails = inspectionDetails;
    final l$deductions = deductions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$grossWeight,
      l$product,
      l$lineNumber,
      l$locationId,
      l$location,
      l$rate,
      l$weightSerial,
      Object.hashAll(l$mediaAssets.map((v) => v)),
      l$inspectionDetails,
      Object.hashAll(l$deductions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchEdgeTickets$searchTickets$nodes$lines ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$grossWeight = grossWeight;
    final lOther$grossWeight = other.grossWeight;
    if (l$grossWeight != lOther$grossWeight) {
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
    final l$locationId = locationId;
    final lOther$locationId = other.locationId;
    if (l$locationId != lOther$locationId) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
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
    final l$inspectionDetails = inspectionDetails;
    final lOther$inspectionDetails = other.inspectionDetails;
    if (l$inspectionDetails != lOther$inspectionDetails) {
      return false;
    }
    final l$deductions = deductions;
    final lOther$deductions = other.deductions;
    if (l$deductions.length != lOther$deductions.length) {
      return false;
    }
    for (int i = 0; i < l$deductions.length; i++) {
      final l$deductions$entry = l$deductions[i];
      final lOther$deductions$entry = lOther$deductions[i];
      if (l$deductions$entry != lOther$deductions$entry) {
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

extension UtilityExtension$Query$SearchEdgeTickets$searchTickets$nodes$lines
    on Query$SearchEdgeTickets$searchTickets$nodes$lines {
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines<
    Query$SearchEdgeTickets$searchTickets$nodes$lines
  >
  get copyWith => CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines<
  TRes
> {
  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines(
    Query$SearchEdgeTickets$searchTickets$nodes$lines instance,
    TRes Function(Query$SearchEdgeTickets$searchTickets$nodes$lines) then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines;

  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines;

  TRes call({
    Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight? grossWeight,
    Query$SearchEdgeTickets$searchTickets$nodes$lines$product? product,
    int? lineNumber,
    String? locationId,
    Query$SearchEdgeTickets$searchTickets$nodes$lines$location? location,
    Query$SearchEdgeTickets$searchTickets$nodes$lines$rate? rate,
    String? weightSerial,
    List<Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets>?
    mediaAssets,
    Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails?
    inspectionDetails,
    List<Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions>?
    deductions,
    String? $__typename,
  });
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight<TRes>
  get grossWeight;
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$product<TRes>
  get product;
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$location<TRes>
  get location;
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate<TRes>
  get rate;
  TRes mediaAssets(
    Iterable<Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets>
    Function(
      Iterable<
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets<
          Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails<
    TRes
  >
  get inspectionDetails;
  TRes deductions(
    Iterable<Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions>
    Function(
      Iterable<
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions<
          Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines<TRes>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines<TRes> {
  _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTickets$searchTickets$nodes$lines _instance;

  final TRes Function(Query$SearchEdgeTickets$searchTickets$nodes$lines) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? grossWeight = _undefined,
    Object? product = _undefined,
    Object? lineNumber = _undefined,
    Object? locationId = _undefined,
    Object? location = _undefined,
    Object? rate = _undefined,
    Object? weightSerial = _undefined,
    Object? mediaAssets = _undefined,
    Object? inspectionDetails = _undefined,
    Object? deductions = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchEdgeTickets$searchTickets$nodes$lines(
      grossWeight: grossWeight == _undefined || grossWeight == null
          ? _instance.grossWeight
          : (grossWeight
                as Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight),
      product: product == _undefined
          ? _instance.product
          : (product
                as Query$SearchEdgeTickets$searchTickets$nodes$lines$product?),
      lineNumber: lineNumber == _undefined || lineNumber == null
          ? _instance.lineNumber
          : (lineNumber as int),
      locationId: locationId == _undefined || locationId == null
          ? _instance.locationId
          : (locationId as String),
      location: location == _undefined
          ? _instance.location
          : (location
                as Query$SearchEdgeTickets$searchTickets$nodes$lines$location?),
      rate: rate == _undefined || rate == null
          ? _instance.rate
          : (rate as Query$SearchEdgeTickets$searchTickets$nodes$lines$rate),
      weightSerial: weightSerial == _undefined
          ? _instance.weightSerial
          : (weightSerial as String?),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets
                as List<
                  Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets
                >),
      inspectionDetails: inspectionDetails == _undefined
          ? _instance.inspectionDetails
          : (inspectionDetails
                as Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails?),
      deductions: deductions == _undefined || deductions == null
          ? _instance.deductions
          : (deductions
                as List<
                  Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight<TRes>
  get grossWeight {
    final local$grossWeight = _instance.grossWeight;
    return CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight(
      local$grossWeight,
      (e) => call(grossWeight: e),
    );
  }

  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$product<TRes>
  get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$product.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$product(
            local$product,
            (e) => call(product: e),
          );
  }

  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$location<TRes>
  get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$location.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$location(
            local$location,
            (e) => call(location: e),
          );
  }

  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate<TRes>
  get rate {
    final local$rate = _instance.rate;
    return CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate(
      local$rate,
      (e) => call(rate: e),
    );
  }

  TRes mediaAssets(
    Iterable<Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets>
    Function(
      Iterable<
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets<
          Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) =>
            CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails<
    TRes
  >
  get inspectionDetails {
    final local$inspectionDetails = _instance.inspectionDetails;
    return local$inspectionDetails == null
        ? CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails(
            local$inspectionDetails,
            (e) => call(inspectionDetails: e),
          );
  }

  TRes deductions(
    Iterable<Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions>
    Function(
      Iterable<
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions<
          Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions
        >
      >,
    )
    _fn,
  ) => call(
    deductions: _fn(
      _instance.deductions.map(
        (e) =>
            CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines<TRes>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines<TRes> {
  _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines(
    this._res,
  );

  TRes _res;

  call({
    Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight? grossWeight,
    Query$SearchEdgeTickets$searchTickets$nodes$lines$product? product,
    int? lineNumber,
    String? locationId,
    Query$SearchEdgeTickets$searchTickets$nodes$lines$location? location,
    Query$SearchEdgeTickets$searchTickets$nodes$lines$rate? rate,
    String? weightSerial,
    List<Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets>?
    mediaAssets,
    Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails?
    inspectionDetails,
    List<Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions>?
    deductions,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight<TRes>
  get grossWeight =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight.stub(
        _res,
      );

  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$product<TRes>
  get product =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$product.stub(
        _res,
      );

  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$location<TRes>
  get location =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$location.stub(
        _res,
      );

  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate<TRes>
  get rate =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate.stub(
        _res,
      );

  mediaAssets(_fn) => _res;

  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails<
    TRes
  >
  get inspectionDetails =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails.stub(
        _res,
      );

  deductions(_fn) => _res;
}

class Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight {
  Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'UomValue',
  });

  factory Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight(
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
            is! Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight ||
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

extension UtilityExtension$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight
    on Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight {
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight<
    Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight
  >
  get copyWith =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight<
  TRes
> {
  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight instance,
    TRes Function(Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight)
    then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight;

  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight;

  TRes call({Enum$Uom? uom, double? value, int? id, String? $__typename});
}

class _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight<
          TRes
        > {
  _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight _instance;

  final TRes Function(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight(
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

class _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$grossWeight(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, int? id, String? $__typename}) => _res;
}

class Query$SearchEdgeTickets$searchTickets$nodes$lines$product {
  Query$SearchEdgeTickets$searchTickets$nodes$lines$product({
    required this.code,
    this.$__typename = 'Product',
  });

  factory Query$SearchEdgeTickets$searchTickets$nodes$lines$product.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets$searchTickets$nodes$lines$product(
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
    if (other is! Query$SearchEdgeTickets$searchTickets$nodes$lines$product ||
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

extension UtilityExtension$Query$SearchEdgeTickets$searchTickets$nodes$lines$product
    on Query$SearchEdgeTickets$searchTickets$nodes$lines$product {
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$product<
    Query$SearchEdgeTickets$searchTickets$nodes$lines$product
  >
  get copyWith =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$product(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$product<
  TRes
> {
  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$product(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$product instance,
    TRes Function(Query$SearchEdgeTickets$searchTickets$nodes$lines$product)
    then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$product;

  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$product.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$product;

  TRes call({String? code, String? $__typename});
}

class _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$product<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$product<
          TRes
        > {
  _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$product(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTickets$searchTickets$nodes$lines$product _instance;

  final TRes Function(Query$SearchEdgeTickets$searchTickets$nodes$lines$product)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$SearchEdgeTickets$searchTickets$nodes$lines$product(
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$product<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$product<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$product(
    this._res,
  );

  TRes _res;

  call({String? code, String? $__typename}) => _res;
}

class Query$SearchEdgeTickets$searchTickets$nodes$lines$location {
  Query$SearchEdgeTickets$searchTickets$nodes$lines$location({
    required this.code,
    this.$__typename = 'InventoryLocation',
  });

  factory Query$SearchEdgeTickets$searchTickets$nodes$lines$location.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets$searchTickets$nodes$lines$location(
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
    if (other is! Query$SearchEdgeTickets$searchTickets$nodes$lines$location ||
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

extension UtilityExtension$Query$SearchEdgeTickets$searchTickets$nodes$lines$location
    on Query$SearchEdgeTickets$searchTickets$nodes$lines$location {
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$location<
    Query$SearchEdgeTickets$searchTickets$nodes$lines$location
  >
  get copyWith =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$location(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$location<
  TRes
> {
  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$location(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$location instance,
    TRes Function(Query$SearchEdgeTickets$searchTickets$nodes$lines$location)
    then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$location;

  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$location.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$location;

  TRes call({String? code, String? $__typename});
}

class _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$location<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$location<
          TRes
        > {
  _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$location(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTickets$searchTickets$nodes$lines$location _instance;

  final TRes Function(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$location,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$SearchEdgeTickets$searchTickets$nodes$lines$location(
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$location<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$location<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$location(
    this._res,
  );

  TRes _res;

  call({String? code, String? $__typename}) => _res;
}

class Query$SearchEdgeTickets$searchTickets$nodes$lines$rate {
  Query$SearchEdgeTickets$searchTickets$nodes$lines$rate({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'UomValue',
  });

  factory Query$SearchEdgeTickets$searchTickets$nodes$lines$rate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets$searchTickets$nodes$lines$rate(
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
    if (other is! Query$SearchEdgeTickets$searchTickets$nodes$lines$rate ||
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

extension UtilityExtension$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate
    on Query$SearchEdgeTickets$searchTickets$nodes$lines$rate {
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate<
    Query$SearchEdgeTickets$searchTickets$nodes$lines$rate
  >
  get copyWith =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate<
  TRes
> {
  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$rate instance,
    TRes Function(Query$SearchEdgeTickets$searchTickets$nodes$lines$rate) then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate;

  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate;

  TRes call({Enum$Uom? uom, double? value, int? id, String? $__typename});
}

class _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate<TRes>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate<TRes> {
  _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTickets$searchTickets$nodes$lines$rate _instance;

  final TRes Function(Query$SearchEdgeTickets$searchTickets$nodes$lines$rate)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$rate(
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

class _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate<TRes> {
  _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$rate(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, int? id, String? $__typename}) => _res;
}

class Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets {
  Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets(
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
            is! Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets ||
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

extension UtilityExtension$Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets
    on Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets {
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets<
    Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets
  >
  get copyWith =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets<
  TRes
> {
  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets instance,
    TRes Function(Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets)
    then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets;

  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets<
          TRes
        > {
  _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets _instance;

  final TRes Function(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? url = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets(
          url: url == _undefined || url == null
              ? _instance.url
              : (url as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$mediaAssets(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails {
  Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails({
    required this.inspectionMedia,
    this.$__typename = 'InspectionDetails',
  });

  factory Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$inspectionMedia = json['inspectionMedia'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails(
      inspectionMedia: (l$inspectionMedia as List<dynamic>)
          .map(
            (e) =>
                Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
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
            is! Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails ||
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

extension UtilityExtension$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails
    on Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails {
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails<
    Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails
  >
  get copyWith =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails<
  TRes
> {
  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails
    instance,
    TRes Function(
      Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails,
    )
    then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails;

  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails;

  TRes call({
    List<
      Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
    >?
    inspectionMedia,
    String? $__typename,
  });
  TRes inspectionMedia(
    Iterable<
      Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
    >
    Function(
      Iterable<
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia<
          Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails<
          TRes
        > {
  _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails
  _instance;

  final TRes Function(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? inspectionMedia = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails(
      inspectionMedia: inspectionMedia == _undefined || inspectionMedia == null
          ? _instance.inspectionMedia
          : (inspectionMedia
                as List<
                  Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes inspectionMedia(
    Iterable<
      Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
    >
    Function(
      Iterable<
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia<
          Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
        >
      >,
    )
    _fn,
  ) => call(
    inspectionMedia: _fn(
      _instance.inspectionMedia.map(
        (e) =>
            CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
    >?
    inspectionMedia,
    String? $__typename,
  }) => _res;

  inspectionMedia(_fn) => _res;
}

class Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia {
  Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia({
    required this.url,
    this.$__typename = 'InspectionMedia',
  });

  factory Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia(
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
            is! Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia ||
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

extension UtilityExtension$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
    on
        Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia {
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia<
    Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
  >
  get copyWith =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia<
  TRes
> {
  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
    instance,
    TRes Function(
      Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia,
    )
    then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia;

  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia<
          TRes
        > {
  _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia
  _instance;

  final TRes Function(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$inspectionDetails$inspectionMedia(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions {
  Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions({
    required this.mediaAssets,
    this.$__typename = 'LineDeduction',
  });

  factory Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mediaAssets = json['mediaAssets'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions(
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets
  >
  mediaAssets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mediaAssets = mediaAssets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$mediaAssets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions ||
        runtimeType != other.runtimeType) {
      return false;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions
    on Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions {
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions<
    Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions
  >
  get copyWith =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions<
  TRes
> {
  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions instance,
    TRes Function(Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions)
    then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions;

  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions;

  TRes call({
    List<
      Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets
    >?
    mediaAssets,
    String? $__typename,
  });
  TRes mediaAssets(
    Iterable<
      Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets
    >
    Function(
      Iterable<
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets<
          Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions<
          TRes
        > {
  _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions _instance;

  final TRes Function(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaAssets = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions(
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets
                as List<
                  Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes mediaAssets(
    Iterable<
      Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets
    >
    Function(
      Iterable<
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets<
          Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) =>
            CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets
    >?
    mediaAssets,
    String? $__typename,
  }) => _res;

  mediaAssets(_fn) => _res;
}

class Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets {
  Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets(
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
            is! Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets ||
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

extension UtilityExtension$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets
    on Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets {
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets<
    Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets
  >
  get copyWith =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets<
  TRes
> {
  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets
    instance,
    TRes Function(
      Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets,
    )
    then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets;

  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets<
          TRes
        > {
  _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets
  _instance;

  final TRes Function(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$lines$deductions$mediaAssets(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets {
  Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets(
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
    if (other is! Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets ||
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

extension UtilityExtension$Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets
    on Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets {
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets<
    Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets
  >
  get copyWith =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets<
  TRes
> {
  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets(
    Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets instance,
    TRes Function(Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets) then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets;

  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets<TRes> {
  _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets _instance;

  final TRes Function(Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? url = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets(
          url: url == _undefined || url == null
              ? _instance.url
              : (url as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets<TRes> {
  _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$mediaAssets(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia {
  Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia({
    required this.url,
    this.$__typename = 'InspectionMedia',
  });

  factory Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia(
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
    if (other is! Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia ||
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

extension UtilityExtension$Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia
    on Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia {
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia<
    Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia
  >
  get copyWith =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia<
  TRes
> {
  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia(
    Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia instance,
    TRes Function(Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia)
    then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia;

  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia<
          TRes
        > {
  _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia _instance;

  final TRes Function(
    Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? url = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia(
          url: url == _undefined || url == null
              ? _instance.url
              : (url as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$inspectionMedia(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$SearchEdgeTickets$searchTickets$nodes$transportDetails {
  Query$SearchEdgeTickets$searchTickets$nodes$transportDetails({
    this.vehicleReg,
    this.$__typename = 'TransportDetails',
  });

  factory Query$SearchEdgeTickets$searchTickets$nodes$transportDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$vehicleReg = json['vehicleReg'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTickets$searchTickets$nodes$transportDetails(
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
    if (other
            is! Query$SearchEdgeTickets$searchTickets$nodes$transportDetails ||
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

extension UtilityExtension$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails
    on Query$SearchEdgeTickets$searchTickets$nodes$transportDetails {
  CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails<
    Query$SearchEdgeTickets$searchTickets$nodes$transportDetails
  >
  get copyWith =>
      CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails<
  TRes
> {
  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails(
    Query$SearchEdgeTickets$searchTickets$nodes$transportDetails instance,
    TRes Function(Query$SearchEdgeTickets$searchTickets$nodes$transportDetails)
    then,
  ) = _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails;

  factory CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails;

  TRes call({String? vehicleReg, String? $__typename});
}

class _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails<
          TRes
        > {
  _CopyWithImpl$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTickets$searchTickets$nodes$transportDetails _instance;

  final TRes Function(
    Query$SearchEdgeTickets$searchTickets$nodes$transportDetails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vehicleReg = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchEdgeTickets$searchTickets$nodes$transportDetails(
      vehicleReg: vehicleReg == _undefined
          ? _instance.vehicleReg
          : (vehicleReg as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchEdgeTickets$searchTickets$nodes$transportDetails(
    this._res,
  );

  TRes _res;

  call({String? vehicleReg, String? $__typename}) => _res;
}
