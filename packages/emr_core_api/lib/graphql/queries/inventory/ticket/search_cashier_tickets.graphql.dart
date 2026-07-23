import '../../../fragments/inventory/ticket/account_details_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/media_asset_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/non_stock_ticket_line_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/payment_validation_result_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/ticket_account.graphql.dart';
import '../../../fragments/inventory/ticket/ticket_deduction_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/ticket_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/ticket_line_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/uom_value.graphql.dart';
import '../../../fragments/payment/advance_fields.graphql.dart';
import '../../../fragments/payment/payment_posting_task_fields.graphql.dart';
import '../../../fragments/payments/encashment_values.graphql.dart';
import '../../../fragments/payments/payment_deduction.graphql.dart';
import '../../../fragments/payments/payment_deduction_items.graphql.dart';
import '../../../fragments/payments/payment_record_items.graphql.dart';
import '../../../fragments/ticket/sync_weighbridge_ticket_tasks.graphql.dart';
import '../../../schema.graphql.dart';
import 'package:emr_core_api/models/local_date.dart';
import 'package:gql/ast.dart';

class Variables$Query$searchCashierTickets {
  factory Variables$Query$searchCashierTickets({
    String? after,
    String? before,
    int? first,
    int? last,
    required Input$SearchCashierTicketsInput input,
    List<Input$SearchTicketsSortInput>? order,
    bool? includeAllWbSyncTasks,
  }) => Variables$Query$searchCashierTickets._({
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    r'input': input,
    if (order != null) r'order': order,
    if (includeAllWbSyncTasks != null)
      r'includeAllWbSyncTasks': includeAllWbSyncTasks,
  });

  Variables$Query$searchCashierTickets._(this._$data);

  factory Variables$Query$searchCashierTickets.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
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
    final l$input = data['input'];
    result$data['input'] = Input$SearchCashierTicketsInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
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
    if (data.containsKey('includeAllWbSyncTasks')) {
      final l$includeAllWbSyncTasks = data['includeAllWbSyncTasks'];
      result$data['includeAllWbSyncTasks'] = (l$includeAllWbSyncTasks as bool?);
    }
    return Variables$Query$searchCashierTickets._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  Input$SearchCashierTicketsInput get input =>
      (_$data['input'] as Input$SearchCashierTicketsInput);

  List<Input$SearchTicketsSortInput>? get order =>
      (_$data['order'] as List<Input$SearchTicketsSortInput>?);

  bool? get includeAllWbSyncTasks => (_$data['includeAllWbSyncTasks'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    final l$input = input;
    result$data['input'] = l$input.toJson();
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('includeAllWbSyncTasks')) {
      final l$includeAllWbSyncTasks = includeAllWbSyncTasks;
      result$data['includeAllWbSyncTasks'] = l$includeAllWbSyncTasks;
    }
    return result$data;
  }

  CopyWith$Variables$Query$searchCashierTickets<
    Variables$Query$searchCashierTickets
  >
  get copyWith => CopyWith$Variables$Query$searchCashierTickets(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$searchCashierTickets ||
        runtimeType != other.runtimeType) {
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
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
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
    final l$includeAllWbSyncTasks = includeAllWbSyncTasks;
    final lOther$includeAllWbSyncTasks = other.includeAllWbSyncTasks;
    if (_$data.containsKey('includeAllWbSyncTasks') !=
        other._$data.containsKey('includeAllWbSyncTasks')) {
      return false;
    }
    if (l$includeAllWbSyncTasks != lOther$includeAllWbSyncTasks) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$after = after;
    final l$before = before;
    final l$first = first;
    final l$last = last;
    final l$input = input;
    final l$order = order;
    final l$includeAllWbSyncTasks = includeAllWbSyncTasks;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      l$input,
      _$data.containsKey('order')
          ? l$order == null
                ? null
                : Object.hashAll(l$order.map((v) => v))
          : const {},
      _$data.containsKey('includeAllWbSyncTasks')
          ? l$includeAllWbSyncTasks
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$searchCashierTickets<TRes> {
  factory CopyWith$Variables$Query$searchCashierTickets(
    Variables$Query$searchCashierTickets instance,
    TRes Function(Variables$Query$searchCashierTickets) then,
  ) = _CopyWithImpl$Variables$Query$searchCashierTickets;

  factory CopyWith$Variables$Query$searchCashierTickets.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$searchCashierTickets;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchCashierTicketsInput? input,
    List<Input$SearchTicketsSortInput>? order,
    bool? includeAllWbSyncTasks,
  });
}

class _CopyWithImpl$Variables$Query$searchCashierTickets<TRes>
    implements CopyWith$Variables$Query$searchCashierTickets<TRes> {
  _CopyWithImpl$Variables$Query$searchCashierTickets(
    this._instance,
    this._then,
  );

  final Variables$Query$searchCashierTickets _instance;

  final TRes Function(Variables$Query$searchCashierTickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? input = _undefined,
    Object? order = _undefined,
    Object? includeAllWbSyncTasks = _undefined,
  }) => _then(
    Variables$Query$searchCashierTickets._({
      ..._instance._$data,
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (input != _undefined && input != null)
        'input': (input as Input$SearchCashierTicketsInput),
      if (order != _undefined)
        'order': (order as List<Input$SearchTicketsSortInput>?),
      if (includeAllWbSyncTasks != _undefined)
        'includeAllWbSyncTasks': (includeAllWbSyncTasks as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$searchCashierTickets<TRes>
    implements CopyWith$Variables$Query$searchCashierTickets<TRes> {
  _CopyWithStubImpl$Variables$Query$searchCashierTickets(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$SearchCashierTicketsInput? input,
    List<Input$SearchTicketsSortInput>? order,
    bool? includeAllWbSyncTasks,
  }) => _res;
}

class Query$searchCashierTickets {
  Query$searchCashierTickets({
    this.searchCashierTickets,
    this.$__typename = 'Query',
  });

  factory Query$searchCashierTickets.fromJson(Map<String, dynamic> json) {
    final l$searchCashierTickets = json['searchCashierTickets'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets(
      searchCashierTickets: l$searchCashierTickets == null
          ? null
          : Query$searchCashierTickets$searchCashierTickets.fromJson(
              (l$searchCashierTickets as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$searchCashierTickets$searchCashierTickets? searchCashierTickets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchCashierTickets = searchCashierTickets;
    _resultData['searchCashierTickets'] = l$searchCashierTickets?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchCashierTickets = searchCashierTickets;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchCashierTickets, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$searchCashierTickets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchCashierTickets = searchCashierTickets;
    final lOther$searchCashierTickets = other.searchCashierTickets;
    if (l$searchCashierTickets != lOther$searchCashierTickets) {
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

extension UtilityExtension$Query$searchCashierTickets
    on Query$searchCashierTickets {
  CopyWith$Query$searchCashierTickets<Query$searchCashierTickets>
  get copyWith => CopyWith$Query$searchCashierTickets(this, (i) => i);
}

abstract class CopyWith$Query$searchCashierTickets<TRes> {
  factory CopyWith$Query$searchCashierTickets(
    Query$searchCashierTickets instance,
    TRes Function(Query$searchCashierTickets) then,
  ) = _CopyWithImpl$Query$searchCashierTickets;

  factory CopyWith$Query$searchCashierTickets.stub(TRes res) =
      _CopyWithStubImpl$Query$searchCashierTickets;

  TRes call({
    Query$searchCashierTickets$searchCashierTickets? searchCashierTickets,
    String? $__typename,
  });
  CopyWith$Query$searchCashierTickets$searchCashierTickets<TRes>
  get searchCashierTickets;
}

class _CopyWithImpl$Query$searchCashierTickets<TRes>
    implements CopyWith$Query$searchCashierTickets<TRes> {
  _CopyWithImpl$Query$searchCashierTickets(this._instance, this._then);

  final Query$searchCashierTickets _instance;

  final TRes Function(Query$searchCashierTickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchCashierTickets = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets(
      searchCashierTickets: searchCashierTickets == _undefined
          ? _instance.searchCashierTickets
          : (searchCashierTickets
                as Query$searchCashierTickets$searchCashierTickets?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$searchCashierTickets$searchCashierTickets<TRes>
  get searchCashierTickets {
    final local$searchCashierTickets = _instance.searchCashierTickets;
    return local$searchCashierTickets == null
        ? CopyWith$Query$searchCashierTickets$searchCashierTickets.stub(
            _then(_instance),
          )
        : CopyWith$Query$searchCashierTickets$searchCashierTickets(
            local$searchCashierTickets,
            (e) => call(searchCashierTickets: e),
          );
  }
}

class _CopyWithStubImpl$Query$searchCashierTickets<TRes>
    implements CopyWith$Query$searchCashierTickets<TRes> {
  _CopyWithStubImpl$Query$searchCashierTickets(this._res);

  TRes _res;

  call({
    Query$searchCashierTickets$searchCashierTickets? searchCashierTickets,
    String? $__typename,
  }) => _res;

  CopyWith$Query$searchCashierTickets$searchCashierTickets<TRes>
  get searchCashierTickets =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets.stub(_res);
}

const documentNodeQuerysearchCashierTickets = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'searchCashierTickets'),
      variableDefinitions: [
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
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchCashierTicketsInput'),
            isNonNull: true,
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
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'includeAllWbSyncTasks'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'searchCashierTickets'),
            alias: null,
            arguments: [
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
                      FragmentSpreadNode(
                        name: NameNode(value: 'TicketFields'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: 'paymentValidationResult'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'PaymentRuleResultFields'),
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
                        name: NameNode(value: 'paymentRecord'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'paymentMethod'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'cashDeductions'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'needAuthorization'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'authorizationDetails'),
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
                                    name: NameNode(value: 'referenceId'),
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
                              name: NameNode(value: 'paymentRecordItems'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FragmentSpreadNode(
                                    name: NameNode(
                                      value: 'PaymentRecordItemFields',
                                    ),
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
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'tags'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'extendedProperties'),
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
                              name: NameNode(value: 'created'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'userInfoId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'at'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'userName'),
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
                              name: NameNode(value: 'yardCode'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'modified'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'userInfoId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'at'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'userName'),
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
                              name: NameNode(value: 'ticketIds'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'tickets'),
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
                                    name: NameNode(value: 'price'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'provPrice'),
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
                                    name: NameNode(value: 'currency'),
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
                                        FragmentSpreadNode(
                                          name: NameNode(
                                            value: 'TicketAccountFields',
                                          ),
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
                              name: NameNode(value: 'totalAmount'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'cashDeductions'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'roundingAdjustment'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'haulageCharge'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'advanceOffset'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'totalFee'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'roundingAdjustmentOnFee'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value: 'payableAfterCostAndDeduction',
                              ),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'payableAmount'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'paymentMethodDetails'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'status'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'paymentPostingTask'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FragmentSpreadNode(
                                    name: NameNode(
                                      value: 'PaymentPostingTaskFields',
                                    ),
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
                        name: NameNode(value: 'syncWeighbridgeTicketTask'),
                        alias: null,
                        arguments: [],
                        directives: [
                          DirectiveNode(
                            name: NameNode(value: 'skip'),
                            arguments: [
                              ArgumentNode(
                                name: NameNode(value: 'if'),
                                value: VariableNode(
                                  name: NameNode(
                                    value: 'includeAllWbSyncTasks',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(
                                value: 'SyncWeighbridgeTicketTaskFields',
                              ),
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
                        name: NameNode(value: 'syncWeighbridgeTicketTasks'),
                        alias: null,
                        arguments: [],
                        directives: [
                          DirectiveNode(
                            name: NameNode(value: 'include'),
                            arguments: [
                              ArgumentNode(
                                name: NameNode(value: 'if'),
                                value: VariableNode(
                                  name: NameNode(
                                    value: 'includeAllWbSyncTasks',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(
                                value: 'SyncWeighbridgeTicketTaskFields',
                              ),
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
    fragmentDefinitionTicketFields,
    fragmentDefinitionTicketAccountFields,
    fragmentDefinitionAccountDetails,
    fragmentDefinitionUomValueFields,
    fragmentDefinitionTicketLineFields,
    fragmentDefinitionDeductionFields,
    fragmentDefinitionMediaAssetFields,
    fragmentDefinitionNonStockTicketLineFields,
    fragmentDefinitionPaymentDeductionFields,
    fragmentDefinitionEncashmentValueFields,
    fragmentDefinitionPaymentDeductionItemFields,
    fragmentDefinitionAdvanceFields,
    fragmentDefinitionPaymentRuleResultFields,
    fragmentDefinitionPaymentRecordItemFields,
    fragmentDefinitionPaymentPostingTaskFields,
    fragmentDefinitionSyncWeighbridgeTicketTaskFields,
  ],
);

class Query$searchCashierTickets$searchCashierTickets {
  Query$searchCashierTickets$searchCashierTickets({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchCashierTicketsConnection',
  });

  factory Query$searchCashierTickets$searchCashierTickets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$searchCashierTickets$searchCashierTickets$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Query$searchCashierTickets$searchCashierTickets$nodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$searchCashierTickets$searchCashierTickets$pageInfo pageInfo;

  final List<Query$searchCashierTickets$searchCashierTickets$nodes>? nodes;

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
    if (other is! Query$searchCashierTickets$searchCashierTickets ||
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets
    on Query$searchCashierTickets$searchCashierTickets {
  CopyWith$Query$searchCashierTickets$searchCashierTickets<
    Query$searchCashierTickets$searchCashierTickets
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets(this, (i) => i);
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets<TRes> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets(
    Query$searchCashierTickets$searchCashierTickets instance,
    TRes Function(Query$searchCashierTickets$searchCashierTickets) then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets;

  TRes call({
    int? totalCount,
    Query$searchCashierTickets$searchCashierTickets$pageInfo? pageInfo,
    List<Query$searchCashierTickets$searchCashierTickets$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$searchCashierTickets$searchCashierTickets$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$searchCashierTickets$searchCashierTickets$nodes>? Function(
      Iterable<
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes<
          Query$searchCashierTickets$searchCashierTickets$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets<TRes>
    implements CopyWith$Query$searchCashierTickets$searchCashierTickets<TRes> {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets _instance;

  final TRes Function(Query$searchCashierTickets$searchCashierTickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$searchCashierTickets$searchCashierTickets$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<
                  Query$searchCashierTickets$searchCashierTickets$nodes
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$searchCashierTickets$searchCashierTickets$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$searchCashierTickets$searchCashierTickets$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$searchCashierTickets$searchCashierTickets$nodes>? Function(
      Iterable<
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes<
          Query$searchCashierTickets$searchCashierTickets$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets<TRes>
    implements CopyWith$Query$searchCashierTickets$searchCashierTickets<TRes> {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$searchCashierTickets$searchCashierTickets$pageInfo? pageInfo,
    List<Query$searchCashierTickets$searchCashierTickets$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$searchCashierTickets$searchCashierTickets$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$searchCashierTickets$searchCashierTickets$pageInfo {
  Query$searchCashierTickets$searchCashierTickets$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$searchCashierTickets$searchCashierTickets$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$pageInfo(
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
    if (other is! Query$searchCashierTickets$searchCashierTickets$pageInfo ||
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$pageInfo
    on Query$searchCashierTickets$searchCashierTickets$pageInfo {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$pageInfo<
    Query$searchCashierTickets$searchCashierTickets$pageInfo
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$pageInfo<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$pageInfo(
    Query$searchCashierTickets$searchCashierTickets$pageInfo instance,
    TRes Function(Query$searchCashierTickets$searchCashierTickets$pageInfo)
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$pageInfo;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$pageInfo<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$pageInfo(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$pageInfo _instance;

  final TRes Function(Query$searchCashierTickets$searchCashierTickets$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$pageInfo(
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

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$pageInfo<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$pageInfo(
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

class Query$searchCashierTickets$searchCashierTickets$nodes
    implements Fragment$TicketFields {
  Query$searchCashierTickets$searchCashierTickets$nodes({
    required this.id,
    required this.yardId,
    required this.yardCode,
    required this.ticketNumber,
    required this.ticketType,
    required this.date,
    required this.serviceType,
    required this.ticketCategory,
    required this.ticketStatus,
    this.contractId,
    required this.defaultPaymentMethod,
    required this.account,
    this.contract,
    required this.transportDetails,
    required this.deductions,
    this.haulageCharge,
    required this.haulagePrice,
    this.haulier,
    required this.lines,
    required this.nonStockTicketLines,
    required this.tags,
    this.extendedProperties,
    required this.active,
    required this.price,
    required this.provPrice,
    this.outwardTicketNo,
    this.currency,
    required this.mediaAssets,
    required this.inspectionMedia,
    required this.created,
    this.acceptedConsignmentNote,
    this.rejectedConsignmentNote,
    this.paymentDeduction,
    this.remittanceDetails,
    required this.isPayableAtEdge,
    required this.isPaymentAuthorizationRequired,
    required this.metadata,
    this.$__typename = 'Ticket',
    this.paymentValidationResult,
    this.paymentRecord,
    this.syncWeighbridgeTicketTask,
    this.syncWeighbridgeTicketTasks,
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$yardId = json['yardId'];
    final l$yardCode = json['yardCode'];
    final l$ticketNumber = json['ticketNumber'];
    final l$ticketType = json['ticketType'];
    final l$date = json['date'];
    final l$serviceType = json['serviceType'];
    final l$ticketCategory = json['ticketCategory'];
    final l$ticketStatus = json['ticketStatus'];
    final l$contractId = json['contractId'];
    final l$defaultPaymentMethod = json['defaultPaymentMethod'];
    final l$account = json['account'];
    final l$contract = json['contract'];
    final l$transportDetails = json['transportDetails'];
    final l$deductions = json['deductions'];
    final l$haulageCharge = json['haulageCharge'];
    final l$haulagePrice = json['haulagePrice'];
    final l$haulier = json['haulier'];
    final l$lines = json['lines'];
    final l$nonStockTicketLines = json['nonStockTicketLines'];
    final l$tags = json['tags'];
    final l$extendedProperties = json['extendedProperties'];
    final l$active = json['active'];
    final l$price = json['price'];
    final l$provPrice = json['provPrice'];
    final l$outwardTicketNo = json['outwardTicketNo'];
    final l$currency = json['currency'];
    final l$mediaAssets = json['mediaAssets'];
    final l$inspectionMedia = json['inspectionMedia'];
    final l$created = json['created'];
    final l$acceptedConsignmentNote = json['acceptedConsignmentNote'];
    final l$rejectedConsignmentNote = json['rejectedConsignmentNote'];
    final l$paymentDeduction = json['paymentDeduction'];
    final l$remittanceDetails = json['remittanceDetails'];
    final l$isPayableAtEdge = json['isPayableAtEdge'];
    final l$isPaymentAuthorizationRequired =
        json['isPaymentAuthorizationRequired'];
    final l$metadata = json['metadata'];
    final l$$__typename = json['__typename'];
    final l$paymentValidationResult = json['paymentValidationResult'];
    final l$paymentRecord = json['paymentRecord'];
    final l$syncWeighbridgeTicketTask = json['syncWeighbridgeTicketTask'];
    final l$syncWeighbridgeTicketTasks = json['syncWeighbridgeTicketTasks'];
    return Query$searchCashierTickets$searchCashierTickets$nodes(
      id: (l$id as String),
      yardId: (l$yardId as String),
      yardCode: (l$yardCode as String),
      ticketNumber: (l$ticketNumber as int),
      ticketType: fromJson$Enum$TicketType((l$ticketType as String)),
      date: LocalDate.fromJson(l$date),
      serviceType: fromJson$Enum$TicketServiceType((l$serviceType as String)),
      ticketCategory: fromJson$Enum$TicketCategory(
        (l$ticketCategory as String),
      ),
      ticketStatus: fromJson$Enum$TicketStatus((l$ticketStatus as String)),
      contractId: (l$contractId as String?),
      defaultPaymentMethod: fromJson$Enum$PaymentMethod(
        (l$defaultPaymentMethod as String),
      ),
      account:
          Query$searchCashierTickets$searchCashierTickets$nodes$account.fromJson(
            (l$account as Map<String, dynamic>),
          ),
      contract: l$contract == null
          ? null
          : Query$searchCashierTickets$searchCashierTickets$nodes$contract.fromJson(
              (l$contract as Map<String, dynamic>),
            ),
      transportDetails:
          Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails.fromJson(
            (l$transportDetails as Map<String, dynamic>),
          ),
      deductions: (l$deductions as List<dynamic>)
          .map(
            (e) =>
                Query$searchCashierTickets$searchCashierTickets$nodes$deductions.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      haulageCharge: l$haulageCharge == null
          ? null
          : Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge.fromJson(
              (l$haulageCharge as Map<String, dynamic>),
            ),
      haulagePrice: (l$haulagePrice as num).toDouble(),
      haulier: l$haulier == null
          ? null
          : Fragment$TicketAccountFields.fromJson(
              (l$haulier as Map<String, dynamic>),
            ),
      lines: (l$lines as List<dynamic>)
          .map(
            (e) =>
                Fragment$TicketLineFields.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      nonStockTicketLines: (l$nonStockTicketLines as List<dynamic>)
          .map(
            (e) => Fragment$NonStockTicketLineFields.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      tags: (l$tags as List<dynamic>).map((e) => (e as String)).toList(),
      extendedProperties: (l$extendedProperties as Map<String, dynamic>?),
      active: (l$active as bool),
      price: (l$price as num).toDouble(),
      provPrice: (l$provPrice as num).toDouble(),
      outwardTicketNo: (l$outwardTicketNo as String?),
      currency: (l$currency as String?),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Fragment$MediaAssetFields.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      inspectionMedia: (l$inspectionMedia as List<dynamic>)
          .map(
            (e) =>
                Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      created:
          Query$searchCashierTickets$searchCashierTickets$nodes$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      acceptedConsignmentNote: l$acceptedConsignmentNote == null
          ? null
          : Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote.fromJson(
              (l$acceptedConsignmentNote as Map<String, dynamic>),
            ),
      rejectedConsignmentNote: l$rejectedConsignmentNote == null
          ? null
          : Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote.fromJson(
              (l$rejectedConsignmentNote as Map<String, dynamic>),
            ),
      paymentDeduction: l$paymentDeduction == null
          ? null
          : Fragment$PaymentDeductionFields.fromJson(
              (l$paymentDeduction as Map<String, dynamic>),
            ),
      remittanceDetails: l$remittanceDetails == null
          ? null
          : Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails.fromJson(
              (l$remittanceDetails as Map<String, dynamic>),
            ),
      isPayableAtEdge: (l$isPayableAtEdge as bool),
      isPaymentAuthorizationRequired:
          (l$isPaymentAuthorizationRequired as bool),
      metadata: (l$metadata as Map<String, dynamic>),
      $__typename: (l$$__typename as String),
      paymentValidationResult: l$paymentValidationResult == null
          ? null
          : Fragment$PaymentRuleResultFields.fromJson(
              (l$paymentValidationResult as Map<String, dynamic>),
            ),
      paymentRecord: l$paymentRecord == null
          ? null
          : Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord.fromJson(
              (l$paymentRecord as Map<String, dynamic>),
            ),
      syncWeighbridgeTicketTask: l$syncWeighbridgeTicketTask == null
          ? null
          : Fragment$SyncWeighbridgeTicketTaskFields.fromJson(
              (l$syncWeighbridgeTicketTask as Map<String, dynamic>),
            ),
      syncWeighbridgeTicketTasks:
          (l$syncWeighbridgeTicketTasks as List<dynamic>?)
              ?.map(
                (e) => e == null
                    ? null
                    : Fragment$SyncWeighbridgeTicketTaskFields.fromJson(
                        (e as Map<String, dynamic>),
                      ),
              )
              .toList(),
    );
  }

  final String id;

  final String yardId;

  final String yardCode;

  final int ticketNumber;

  final Enum$TicketType ticketType;

  final DateTime date;

  final Enum$TicketServiceType serviceType;

  final Enum$TicketCategory ticketCategory;

  final Enum$TicketStatus ticketStatus;

  final String? contractId;

  final Enum$PaymentMethod defaultPaymentMethod;

  final Query$searchCashierTickets$searchCashierTickets$nodes$account account;

  final Query$searchCashierTickets$searchCashierTickets$nodes$contract?
  contract;

  final Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails
  transportDetails;

  final List<Query$searchCashierTickets$searchCashierTickets$nodes$deductions>
  deductions;

  final Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge?
  haulageCharge;

  final double haulagePrice;

  final Fragment$TicketAccountFields? haulier;

  final List<Fragment$TicketLineFields> lines;

  final List<Fragment$NonStockTicketLineFields> nonStockTicketLines;

  final List<String> tags;

  final Map<String, dynamic>? extendedProperties;

  final bool active;

  final double price;

  final double provPrice;

  final String? outwardTicketNo;

  final String? currency;

  final List<Fragment$MediaAssetFields> mediaAssets;

  final List<
    Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia
  >
  inspectionMedia;

  final Query$searchCashierTickets$searchCashierTickets$nodes$created created;

  final Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote?
  acceptedConsignmentNote;

  final Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote?
  rejectedConsignmentNote;

  final Fragment$PaymentDeductionFields? paymentDeduction;

  final Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails?
  remittanceDetails;

  final bool isPayableAtEdge;

  final bool isPaymentAuthorizationRequired;

  final Map<String, dynamic> metadata;

  final String $__typename;

  final Fragment$PaymentRuleResultFields? paymentValidationResult;

  final Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord?
  paymentRecord;

  final Fragment$SyncWeighbridgeTicketTaskFields? syncWeighbridgeTicketTask;

  final List<Fragment$SyncWeighbridgeTicketTaskFields?>?
  syncWeighbridgeTicketTasks;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$ticketNumber = ticketNumber;
    _resultData['ticketNumber'] = l$ticketNumber;
    final l$ticketType = ticketType;
    _resultData['ticketType'] = toJson$Enum$TicketType(l$ticketType);
    final l$date = date;
    _resultData['date'] = LocalDate.toJson(l$date);
    final l$serviceType = serviceType;
    _resultData['serviceType'] = toJson$Enum$TicketServiceType(l$serviceType);
    final l$ticketCategory = ticketCategory;
    _resultData['ticketCategory'] = toJson$Enum$TicketCategory(
      l$ticketCategory,
    );
    final l$ticketStatus = ticketStatus;
    _resultData['ticketStatus'] = toJson$Enum$TicketStatus(l$ticketStatus);
    final l$contractId = contractId;
    _resultData['contractId'] = l$contractId;
    final l$defaultPaymentMethod = defaultPaymentMethod;
    _resultData['defaultPaymentMethod'] = toJson$Enum$PaymentMethod(
      l$defaultPaymentMethod,
    );
    final l$account = account;
    _resultData['account'] = l$account.toJson();
    final l$contract = contract;
    _resultData['contract'] = l$contract?.toJson();
    final l$transportDetails = transportDetails;
    _resultData['transportDetails'] = l$transportDetails.toJson();
    final l$deductions = deductions;
    _resultData['deductions'] = l$deductions.map((e) => e.toJson()).toList();
    final l$haulageCharge = haulageCharge;
    _resultData['haulageCharge'] = l$haulageCharge?.toJson();
    final l$haulagePrice = haulagePrice;
    _resultData['haulagePrice'] = l$haulagePrice;
    final l$haulier = haulier;
    _resultData['haulier'] = l$haulier?.toJson();
    final l$lines = lines;
    _resultData['lines'] = l$lines.map((e) => e.toJson()).toList();
    final l$nonStockTicketLines = nonStockTicketLines;
    _resultData['nonStockTicketLines'] = l$nonStockTicketLines
        .map((e) => e.toJson())
        .toList();
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e).toList();
    final l$extendedProperties = extendedProperties;
    _resultData['extendedProperties'] = l$extendedProperties;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$provPrice = provPrice;
    _resultData['provPrice'] = l$provPrice;
    final l$outwardTicketNo = outwardTicketNo;
    _resultData['outwardTicketNo'] = l$outwardTicketNo;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$inspectionMedia = inspectionMedia;
    _resultData['inspectionMedia'] = l$inspectionMedia
        .map((e) => e.toJson())
        .toList();
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$acceptedConsignmentNote = acceptedConsignmentNote;
    _resultData['acceptedConsignmentNote'] = l$acceptedConsignmentNote
        ?.toJson();
    final l$rejectedConsignmentNote = rejectedConsignmentNote;
    _resultData['rejectedConsignmentNote'] = l$rejectedConsignmentNote
        ?.toJson();
    final l$paymentDeduction = paymentDeduction;
    _resultData['paymentDeduction'] = l$paymentDeduction?.toJson();
    final l$remittanceDetails = remittanceDetails;
    _resultData['remittanceDetails'] = l$remittanceDetails?.toJson();
    final l$isPayableAtEdge = isPayableAtEdge;
    _resultData['isPayableAtEdge'] = l$isPayableAtEdge;
    final l$isPaymentAuthorizationRequired = isPaymentAuthorizationRequired;
    _resultData['isPaymentAuthorizationRequired'] =
        l$isPaymentAuthorizationRequired;
    final l$metadata = metadata;
    _resultData['metadata'] = l$metadata;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$paymentValidationResult = paymentValidationResult;
    _resultData['paymentValidationResult'] = l$paymentValidationResult
        ?.toJson();
    final l$paymentRecord = paymentRecord;
    _resultData['paymentRecord'] = l$paymentRecord?.toJson();
    final l$syncWeighbridgeTicketTask = syncWeighbridgeTicketTask;
    _resultData['syncWeighbridgeTicketTask'] = l$syncWeighbridgeTicketTask
        ?.toJson();
    final l$syncWeighbridgeTicketTasks = syncWeighbridgeTicketTasks;
    _resultData['syncWeighbridgeTicketTasks'] = l$syncWeighbridgeTicketTasks
        ?.map((e) => e?.toJson())
        .toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$yardId = yardId;
    final l$yardCode = yardCode;
    final l$ticketNumber = ticketNumber;
    final l$ticketType = ticketType;
    final l$date = date;
    final l$serviceType = serviceType;
    final l$ticketCategory = ticketCategory;
    final l$ticketStatus = ticketStatus;
    final l$contractId = contractId;
    final l$defaultPaymentMethod = defaultPaymentMethod;
    final l$account = account;
    final l$contract = contract;
    final l$transportDetails = transportDetails;
    final l$deductions = deductions;
    final l$haulageCharge = haulageCharge;
    final l$haulagePrice = haulagePrice;
    final l$haulier = haulier;
    final l$lines = lines;
    final l$nonStockTicketLines = nonStockTicketLines;
    final l$tags = tags;
    final l$extendedProperties = extendedProperties;
    final l$active = active;
    final l$price = price;
    final l$provPrice = provPrice;
    final l$outwardTicketNo = outwardTicketNo;
    final l$currency = currency;
    final l$mediaAssets = mediaAssets;
    final l$inspectionMedia = inspectionMedia;
    final l$created = created;
    final l$acceptedConsignmentNote = acceptedConsignmentNote;
    final l$rejectedConsignmentNote = rejectedConsignmentNote;
    final l$paymentDeduction = paymentDeduction;
    final l$remittanceDetails = remittanceDetails;
    final l$isPayableAtEdge = isPayableAtEdge;
    final l$isPaymentAuthorizationRequired = isPaymentAuthorizationRequired;
    final l$metadata = metadata;
    final l$$__typename = $__typename;
    final l$paymentValidationResult = paymentValidationResult;
    final l$paymentRecord = paymentRecord;
    final l$syncWeighbridgeTicketTask = syncWeighbridgeTicketTask;
    final l$syncWeighbridgeTicketTasks = syncWeighbridgeTicketTasks;
    return Object.hashAll([
      l$id,
      l$yardId,
      l$yardCode,
      l$ticketNumber,
      l$ticketType,
      l$date,
      l$serviceType,
      l$ticketCategory,
      l$ticketStatus,
      l$contractId,
      l$defaultPaymentMethod,
      l$account,
      l$contract,
      l$transportDetails,
      Object.hashAll(l$deductions.map((v) => v)),
      l$haulageCharge,
      l$haulagePrice,
      l$haulier,
      Object.hashAll(l$lines.map((v) => v)),
      Object.hashAll(l$nonStockTicketLines.map((v) => v)),
      Object.hashAll(l$tags.map((v) => v)),
      l$extendedProperties,
      l$active,
      l$price,
      l$provPrice,
      l$outwardTicketNo,
      l$currency,
      Object.hashAll(l$mediaAssets.map((v) => v)),
      Object.hashAll(l$inspectionMedia.map((v) => v)),
      l$created,
      l$acceptedConsignmentNote,
      l$rejectedConsignmentNote,
      l$paymentDeduction,
      l$remittanceDetails,
      l$isPayableAtEdge,
      l$isPaymentAuthorizationRequired,
      l$metadata,
      l$$__typename,
      l$paymentValidationResult,
      l$paymentRecord,
      l$syncWeighbridgeTicketTask,
      l$syncWeighbridgeTicketTasks == null
          ? null
          : Object.hashAll(l$syncWeighbridgeTicketTasks.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$searchCashierTickets$searchCashierTickets$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
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
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$serviceType = serviceType;
    final lOther$serviceType = other.serviceType;
    if (l$serviceType != lOther$serviceType) {
      return false;
    }
    final l$ticketCategory = ticketCategory;
    final lOther$ticketCategory = other.ticketCategory;
    if (l$ticketCategory != lOther$ticketCategory) {
      return false;
    }
    final l$ticketStatus = ticketStatus;
    final lOther$ticketStatus = other.ticketStatus;
    if (l$ticketStatus != lOther$ticketStatus) {
      return false;
    }
    final l$contractId = contractId;
    final lOther$contractId = other.contractId;
    if (l$contractId != lOther$contractId) {
      return false;
    }
    final l$defaultPaymentMethod = defaultPaymentMethod;
    final lOther$defaultPaymentMethod = other.defaultPaymentMethod;
    if (l$defaultPaymentMethod != lOther$defaultPaymentMethod) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
      return false;
    }
    final l$contract = contract;
    final lOther$contract = other.contract;
    if (l$contract != lOther$contract) {
      return false;
    }
    final l$transportDetails = transportDetails;
    final lOther$transportDetails = other.transportDetails;
    if (l$transportDetails != lOther$transportDetails) {
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
    final l$haulageCharge = haulageCharge;
    final lOther$haulageCharge = other.haulageCharge;
    if (l$haulageCharge != lOther$haulageCharge) {
      return false;
    }
    final l$haulagePrice = haulagePrice;
    final lOther$haulagePrice = other.haulagePrice;
    if (l$haulagePrice != lOther$haulagePrice) {
      return false;
    }
    final l$haulier = haulier;
    final lOther$haulier = other.haulier;
    if (l$haulier != lOther$haulier) {
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
    final l$nonStockTicketLines = nonStockTicketLines;
    final lOther$nonStockTicketLines = other.nonStockTicketLines;
    if (l$nonStockTicketLines.length != lOther$nonStockTicketLines.length) {
      return false;
    }
    for (int i = 0; i < l$nonStockTicketLines.length; i++) {
      final l$nonStockTicketLines$entry = l$nonStockTicketLines[i];
      final lOther$nonStockTicketLines$entry = lOther$nonStockTicketLines[i];
      if (l$nonStockTicketLines$entry != lOther$nonStockTicketLines$entry) {
        return false;
      }
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags.length != lOther$tags.length) {
      return false;
    }
    for (int i = 0; i < l$tags.length; i++) {
      final l$tags$entry = l$tags[i];
      final lOther$tags$entry = lOther$tags[i];
      if (l$tags$entry != lOther$tags$entry) {
        return false;
      }
    }
    final l$extendedProperties = extendedProperties;
    final lOther$extendedProperties = other.extendedProperties;
    if (l$extendedProperties != lOther$extendedProperties) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$provPrice = provPrice;
    final lOther$provPrice = other.provPrice;
    if (l$provPrice != lOther$provPrice) {
      return false;
    }
    final l$outwardTicketNo = outwardTicketNo;
    final lOther$outwardTicketNo = other.outwardTicketNo;
    if (l$outwardTicketNo != lOther$outwardTicketNo) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
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
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$acceptedConsignmentNote = acceptedConsignmentNote;
    final lOther$acceptedConsignmentNote = other.acceptedConsignmentNote;
    if (l$acceptedConsignmentNote != lOther$acceptedConsignmentNote) {
      return false;
    }
    final l$rejectedConsignmentNote = rejectedConsignmentNote;
    final lOther$rejectedConsignmentNote = other.rejectedConsignmentNote;
    if (l$rejectedConsignmentNote != lOther$rejectedConsignmentNote) {
      return false;
    }
    final l$paymentDeduction = paymentDeduction;
    final lOther$paymentDeduction = other.paymentDeduction;
    if (l$paymentDeduction != lOther$paymentDeduction) {
      return false;
    }
    final l$remittanceDetails = remittanceDetails;
    final lOther$remittanceDetails = other.remittanceDetails;
    if (l$remittanceDetails != lOther$remittanceDetails) {
      return false;
    }
    final l$isPayableAtEdge = isPayableAtEdge;
    final lOther$isPayableAtEdge = other.isPayableAtEdge;
    if (l$isPayableAtEdge != lOther$isPayableAtEdge) {
      return false;
    }
    final l$isPaymentAuthorizationRequired = isPaymentAuthorizationRequired;
    final lOther$isPaymentAuthorizationRequired =
        other.isPaymentAuthorizationRequired;
    if (l$isPaymentAuthorizationRequired !=
        lOther$isPaymentAuthorizationRequired) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$paymentValidationResult = paymentValidationResult;
    final lOther$paymentValidationResult = other.paymentValidationResult;
    if (l$paymentValidationResult != lOther$paymentValidationResult) {
      return false;
    }
    final l$paymentRecord = paymentRecord;
    final lOther$paymentRecord = other.paymentRecord;
    if (l$paymentRecord != lOther$paymentRecord) {
      return false;
    }
    final l$syncWeighbridgeTicketTask = syncWeighbridgeTicketTask;
    final lOther$syncWeighbridgeTicketTask = other.syncWeighbridgeTicketTask;
    if (l$syncWeighbridgeTicketTask != lOther$syncWeighbridgeTicketTask) {
      return false;
    }
    final l$syncWeighbridgeTicketTasks = syncWeighbridgeTicketTasks;
    final lOther$syncWeighbridgeTicketTasks = other.syncWeighbridgeTicketTasks;
    if (l$syncWeighbridgeTicketTasks != null &&
        lOther$syncWeighbridgeTicketTasks != null) {
      if (l$syncWeighbridgeTicketTasks.length !=
          lOther$syncWeighbridgeTicketTasks.length) {
        return false;
      }
      for (int i = 0; i < l$syncWeighbridgeTicketTasks.length; i++) {
        final l$syncWeighbridgeTicketTasks$entry =
            l$syncWeighbridgeTicketTasks[i];
        final lOther$syncWeighbridgeTicketTasks$entry =
            lOther$syncWeighbridgeTicketTasks[i];
        if (l$syncWeighbridgeTicketTasks$entry !=
            lOther$syncWeighbridgeTicketTasks$entry) {
          return false;
        }
      }
    } else if (l$syncWeighbridgeTicketTasks !=
        lOther$syncWeighbridgeTicketTasks) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes
    on Query$searchCashierTickets$searchCashierTickets$nodes {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes<
    Query$searchCashierTickets$searchCashierTickets$nodes
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes(
    Query$searchCashierTickets$searchCashierTickets$nodes instance,
    TRes Function(Query$searchCashierTickets$searchCashierTickets$nodes) then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes;

  TRes call({
    String? id,
    String? yardId,
    String? yardCode,
    int? ticketNumber,
    Enum$TicketType? ticketType,
    DateTime? date,
    Enum$TicketServiceType? serviceType,
    Enum$TicketCategory? ticketCategory,
    Enum$TicketStatus? ticketStatus,
    String? contractId,
    Enum$PaymentMethod? defaultPaymentMethod,
    Query$searchCashierTickets$searchCashierTickets$nodes$account? account,
    Query$searchCashierTickets$searchCashierTickets$nodes$contract? contract,
    Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails?
    transportDetails,
    List<Query$searchCashierTickets$searchCashierTickets$nodes$deductions>?
    deductions,
    Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge?
    haulageCharge,
    double? haulagePrice,
    Fragment$TicketAccountFields? haulier,
    List<Fragment$TicketLineFields>? lines,
    List<Fragment$NonStockTicketLineFields>? nonStockTicketLines,
    List<String>? tags,
    Map<String, dynamic>? extendedProperties,
    bool? active,
    double? price,
    double? provPrice,
    String? outwardTicketNo,
    String? currency,
    List<Fragment$MediaAssetFields>? mediaAssets,
    List<Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia>?
    inspectionMedia,
    Query$searchCashierTickets$searchCashierTickets$nodes$created? created,
    Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote?
    acceptedConsignmentNote,
    Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote?
    rejectedConsignmentNote,
    Fragment$PaymentDeductionFields? paymentDeduction,
    Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails?
    remittanceDetails,
    bool? isPayableAtEdge,
    bool? isPaymentAuthorizationRequired,
    Map<String, dynamic>? metadata,
    String? $__typename,
    Fragment$PaymentRuleResultFields? paymentValidationResult,
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord?
    paymentRecord,
    Fragment$SyncWeighbridgeTicketTaskFields? syncWeighbridgeTicketTask,
    List<Fragment$SyncWeighbridgeTicketTaskFields?>? syncWeighbridgeTicketTasks,
  });
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account<TRes>
  get account;
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$contract<TRes>
  get contract;
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails<
    TRes
  >
  get transportDetails;
  TRes deductions(
    Iterable<Query$searchCashierTickets$searchCashierTickets$nodes$deductions>
    Function(
      Iterable<
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$deductions<
          Query$searchCashierTickets$searchCashierTickets$nodes$deductions
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge<
    TRes
  >
  get haulageCharge;
  CopyWith$Fragment$TicketAccountFields<TRes> get haulier;
  TRes lines(
    Iterable<Fragment$TicketLineFields> Function(
      Iterable<CopyWith$Fragment$TicketLineFields<Fragment$TicketLineFields>>,
    )
    _fn,
  );
  TRes nonStockTicketLines(
    Iterable<Fragment$NonStockTicketLineFields> Function(
      Iterable<
        CopyWith$Fragment$NonStockTicketLineFields<
          Fragment$NonStockTicketLineFields
        >
      >,
    )
    _fn,
  );
  TRes mediaAssets(
    Iterable<Fragment$MediaAssetFields> Function(
      Iterable<CopyWith$Fragment$MediaAssetFields<Fragment$MediaAssetFields>>,
    )
    _fn,
  );
  TRes inspectionMedia(
    Iterable<
      Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia
    >
    Function(
      Iterable<
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia<
          Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$created<TRes>
  get created;
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote<
    TRes
  >
  get acceptedConsignmentNote;
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote<
    TRes
  >
  get rejectedConsignmentNote;
  CopyWith$Fragment$PaymentDeductionFields<TRes> get paymentDeduction;
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails<
    TRes
  >
  get remittanceDetails;
  CopyWith$Fragment$PaymentRuleResultFields<TRes> get paymentValidationResult;
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord<
    TRes
  >
  get paymentRecord;
  CopyWith$Fragment$SyncWeighbridgeTicketTaskFields<TRes>
  get syncWeighbridgeTicketTask;
  TRes syncWeighbridgeTicketTasks(
    Iterable<Fragment$SyncWeighbridgeTicketTaskFields?>? Function(
      Iterable<
        CopyWith$Fragment$SyncWeighbridgeTicketTaskFields<
          Fragment$SyncWeighbridgeTicketTaskFields
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes<TRes>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes<TRes> {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes _instance;

  final TRes Function(Query$searchCashierTickets$searchCashierTickets$nodes)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? yardId = _undefined,
    Object? yardCode = _undefined,
    Object? ticketNumber = _undefined,
    Object? ticketType = _undefined,
    Object? date = _undefined,
    Object? serviceType = _undefined,
    Object? ticketCategory = _undefined,
    Object? ticketStatus = _undefined,
    Object? contractId = _undefined,
    Object? defaultPaymentMethod = _undefined,
    Object? account = _undefined,
    Object? contract = _undefined,
    Object? transportDetails = _undefined,
    Object? deductions = _undefined,
    Object? haulageCharge = _undefined,
    Object? haulagePrice = _undefined,
    Object? haulier = _undefined,
    Object? lines = _undefined,
    Object? nonStockTicketLines = _undefined,
    Object? tags = _undefined,
    Object? extendedProperties = _undefined,
    Object? active = _undefined,
    Object? price = _undefined,
    Object? provPrice = _undefined,
    Object? outwardTicketNo = _undefined,
    Object? currency = _undefined,
    Object? mediaAssets = _undefined,
    Object? inspectionMedia = _undefined,
    Object? created = _undefined,
    Object? acceptedConsignmentNote = _undefined,
    Object? rejectedConsignmentNote = _undefined,
    Object? paymentDeduction = _undefined,
    Object? remittanceDetails = _undefined,
    Object? isPayableAtEdge = _undefined,
    Object? isPaymentAuthorizationRequired = _undefined,
    Object? metadata = _undefined,
    Object? $__typename = _undefined,
    Object? paymentValidationResult = _undefined,
    Object? paymentRecord = _undefined,
    Object? syncWeighbridgeTicketTask = _undefined,
    Object? syncWeighbridgeTicketTasks = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      ticketNumber: ticketNumber == _undefined || ticketNumber == null
          ? _instance.ticketNumber
          : (ticketNumber as int),
      ticketType: ticketType == _undefined || ticketType == null
          ? _instance.ticketType
          : (ticketType as Enum$TicketType),
      date: date == _undefined || date == null
          ? _instance.date
          : (date as DateTime),
      serviceType: serviceType == _undefined || serviceType == null
          ? _instance.serviceType
          : (serviceType as Enum$TicketServiceType),
      ticketCategory: ticketCategory == _undefined || ticketCategory == null
          ? _instance.ticketCategory
          : (ticketCategory as Enum$TicketCategory),
      ticketStatus: ticketStatus == _undefined || ticketStatus == null
          ? _instance.ticketStatus
          : (ticketStatus as Enum$TicketStatus),
      contractId: contractId == _undefined
          ? _instance.contractId
          : (contractId as String?),
      defaultPaymentMethod:
          defaultPaymentMethod == _undefined || defaultPaymentMethod == null
          ? _instance.defaultPaymentMethod
          : (defaultPaymentMethod as Enum$PaymentMethod),
      account: account == _undefined || account == null
          ? _instance.account
          : (account
                as Query$searchCashierTickets$searchCashierTickets$nodes$account),
      contract: contract == _undefined
          ? _instance.contract
          : (contract
                as Query$searchCashierTickets$searchCashierTickets$nodes$contract?),
      transportDetails:
          transportDetails == _undefined || transportDetails == null
          ? _instance.transportDetails
          : (transportDetails
                as Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails),
      deductions: deductions == _undefined || deductions == null
          ? _instance.deductions
          : (deductions
                as List<
                  Query$searchCashierTickets$searchCashierTickets$nodes$deductions
                >),
      haulageCharge: haulageCharge == _undefined
          ? _instance.haulageCharge
          : (haulageCharge
                as Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge?),
      haulagePrice: haulagePrice == _undefined || haulagePrice == null
          ? _instance.haulagePrice
          : (haulagePrice as double),
      haulier: haulier == _undefined
          ? _instance.haulier
          : (haulier as Fragment$TicketAccountFields?),
      lines: lines == _undefined || lines == null
          ? _instance.lines
          : (lines as List<Fragment$TicketLineFields>),
      nonStockTicketLines:
          nonStockTicketLines == _undefined || nonStockTicketLines == null
          ? _instance.nonStockTicketLines
          : (nonStockTicketLines as List<Fragment$NonStockTicketLineFields>),
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags as List<String>),
      extendedProperties: extendedProperties == _undefined
          ? _instance.extendedProperties
          : (extendedProperties as Map<String, dynamic>?),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      price: price == _undefined || price == null
          ? _instance.price
          : (price as double),
      provPrice: provPrice == _undefined || provPrice == null
          ? _instance.provPrice
          : (provPrice as double),
      outwardTicketNo: outwardTicketNo == _undefined
          ? _instance.outwardTicketNo
          : (outwardTicketNo as String?),
      currency: currency == _undefined
          ? _instance.currency
          : (currency as String?),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets as List<Fragment$MediaAssetFields>),
      inspectionMedia: inspectionMedia == _undefined || inspectionMedia == null
          ? _instance.inspectionMedia
          : (inspectionMedia
                as List<
                  Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia
                >),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$searchCashierTickets$searchCashierTickets$nodes$created),
      acceptedConsignmentNote: acceptedConsignmentNote == _undefined
          ? _instance.acceptedConsignmentNote
          : (acceptedConsignmentNote
                as Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote?),
      rejectedConsignmentNote: rejectedConsignmentNote == _undefined
          ? _instance.rejectedConsignmentNote
          : (rejectedConsignmentNote
                as Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote?),
      paymentDeduction: paymentDeduction == _undefined
          ? _instance.paymentDeduction
          : (paymentDeduction as Fragment$PaymentDeductionFields?),
      remittanceDetails: remittanceDetails == _undefined
          ? _instance.remittanceDetails
          : (remittanceDetails
                as Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails?),
      isPayableAtEdge: isPayableAtEdge == _undefined || isPayableAtEdge == null
          ? _instance.isPayableAtEdge
          : (isPayableAtEdge as bool),
      isPaymentAuthorizationRequired:
          isPaymentAuthorizationRequired == _undefined ||
              isPaymentAuthorizationRequired == null
          ? _instance.isPaymentAuthorizationRequired
          : (isPaymentAuthorizationRequired as bool),
      metadata: metadata == _undefined || metadata == null
          ? _instance.metadata
          : (metadata as Map<String, dynamic>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      paymentValidationResult: paymentValidationResult == _undefined
          ? _instance.paymentValidationResult
          : (paymentValidationResult as Fragment$PaymentRuleResultFields?),
      paymentRecord: paymentRecord == _undefined
          ? _instance.paymentRecord
          : (paymentRecord
                as Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord?),
      syncWeighbridgeTicketTask: syncWeighbridgeTicketTask == _undefined
          ? _instance.syncWeighbridgeTicketTask
          : (syncWeighbridgeTicketTask
                as Fragment$SyncWeighbridgeTicketTaskFields?),
      syncWeighbridgeTicketTasks: syncWeighbridgeTicketTasks == _undefined
          ? _instance.syncWeighbridgeTicketTasks
          : (syncWeighbridgeTicketTasks
                as List<Fragment$SyncWeighbridgeTicketTaskFields?>?),
    ),
  );

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account<TRes>
  get account {
    final local$account = _instance.account;
    return CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account(
      local$account,
      (e) => call(account: e),
    );
  }

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$contract<TRes>
  get contract {
    final local$contract = _instance.contract;
    return local$contract == null
        ? CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$contract.stub(
            _then(_instance),
          )
        : CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$contract(
            local$contract,
            (e) => call(contract: e),
          );
  }

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails<
    TRes
  >
  get transportDetails {
    final local$transportDetails = _instance.transportDetails;
    return CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails(
      local$transportDetails,
      (e) => call(transportDetails: e),
    );
  }

  TRes deductions(
    Iterable<Query$searchCashierTickets$searchCashierTickets$nodes$deductions>
    Function(
      Iterable<
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$deductions<
          Query$searchCashierTickets$searchCashierTickets$nodes$deductions
        >
      >,
    )
    _fn,
  ) => call(
    deductions: _fn(
      _instance.deductions.map(
        (e) =>
            CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$deductions(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge<
    TRes
  >
  get haulageCharge {
    final local$haulageCharge = _instance.haulageCharge;
    return local$haulageCharge == null
        ? CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge.stub(
            _then(_instance),
          )
        : CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge(
            local$haulageCharge,
            (e) => call(haulageCharge: e),
          );
  }

  CopyWith$Fragment$TicketAccountFields<TRes> get haulier {
    final local$haulier = _instance.haulier;
    return local$haulier == null
        ? CopyWith$Fragment$TicketAccountFields.stub(_then(_instance))
        : CopyWith$Fragment$TicketAccountFields(
            local$haulier,
            (e) => call(haulier: e),
          );
  }

  TRes lines(
    Iterable<Fragment$TicketLineFields> Function(
      Iterable<CopyWith$Fragment$TicketLineFields<Fragment$TicketLineFields>>,
    )
    _fn,
  ) => call(
    lines: _fn(
      _instance.lines.map(
        (e) => CopyWith$Fragment$TicketLineFields(e, (i) => i),
      ),
    ).toList(),
  );

  TRes nonStockTicketLines(
    Iterable<Fragment$NonStockTicketLineFields> Function(
      Iterable<
        CopyWith$Fragment$NonStockTicketLineFields<
          Fragment$NonStockTicketLineFields
        >
      >,
    )
    _fn,
  ) => call(
    nonStockTicketLines: _fn(
      _instance.nonStockTicketLines.map(
        (e) => CopyWith$Fragment$NonStockTicketLineFields(e, (i) => i),
      ),
    ).toList(),
  );

  TRes mediaAssets(
    Iterable<Fragment$MediaAssetFields> Function(
      Iterable<CopyWith$Fragment$MediaAssetFields<Fragment$MediaAssetFields>>,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) => CopyWith$Fragment$MediaAssetFields(e, (i) => i),
      ),
    ).toList(),
  );

  TRes inspectionMedia(
    Iterable<
      Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia
    >
    Function(
      Iterable<
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia<
          Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia
        >
      >,
    )
    _fn,
  ) => call(
    inspectionMedia: _fn(
      _instance.inspectionMedia.map(
        (e) =>
            CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$created<TRes>
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote<
    TRes
  >
  get acceptedConsignmentNote {
    final local$acceptedConsignmentNote = _instance.acceptedConsignmentNote;
    return local$acceptedConsignmentNote == null
        ? CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote.stub(
            _then(_instance),
          )
        : CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote(
            local$acceptedConsignmentNote,
            (e) => call(acceptedConsignmentNote: e),
          );
  }

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote<
    TRes
  >
  get rejectedConsignmentNote {
    final local$rejectedConsignmentNote = _instance.rejectedConsignmentNote;
    return local$rejectedConsignmentNote == null
        ? CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote.stub(
            _then(_instance),
          )
        : CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote(
            local$rejectedConsignmentNote,
            (e) => call(rejectedConsignmentNote: e),
          );
  }

  CopyWith$Fragment$PaymentDeductionFields<TRes> get paymentDeduction {
    final local$paymentDeduction = _instance.paymentDeduction;
    return local$paymentDeduction == null
        ? CopyWith$Fragment$PaymentDeductionFields.stub(_then(_instance))
        : CopyWith$Fragment$PaymentDeductionFields(
            local$paymentDeduction,
            (e) => call(paymentDeduction: e),
          );
  }

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails<
    TRes
  >
  get remittanceDetails {
    final local$remittanceDetails = _instance.remittanceDetails;
    return local$remittanceDetails == null
        ? CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails.stub(
            _then(_instance),
          )
        : CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails(
            local$remittanceDetails,
            (e) => call(remittanceDetails: e),
          );
  }

  CopyWith$Fragment$PaymentRuleResultFields<TRes> get paymentValidationResult {
    final local$paymentValidationResult = _instance.paymentValidationResult;
    return local$paymentValidationResult == null
        ? CopyWith$Fragment$PaymentRuleResultFields.stub(_then(_instance))
        : CopyWith$Fragment$PaymentRuleResultFields(
            local$paymentValidationResult,
            (e) => call(paymentValidationResult: e),
          );
  }

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord<
    TRes
  >
  get paymentRecord {
    final local$paymentRecord = _instance.paymentRecord;
    return local$paymentRecord == null
        ? CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord.stub(
            _then(_instance),
          )
        : CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord(
            local$paymentRecord,
            (e) => call(paymentRecord: e),
          );
  }

  CopyWith$Fragment$SyncWeighbridgeTicketTaskFields<TRes>
  get syncWeighbridgeTicketTask {
    final local$syncWeighbridgeTicketTask = _instance.syncWeighbridgeTicketTask;
    return local$syncWeighbridgeTicketTask == null
        ? CopyWith$Fragment$SyncWeighbridgeTicketTaskFields.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$SyncWeighbridgeTicketTaskFields(
            local$syncWeighbridgeTicketTask,
            (e) => call(syncWeighbridgeTicketTask: e),
          );
  }

  TRes syncWeighbridgeTicketTasks(
    Iterable<Fragment$SyncWeighbridgeTicketTaskFields?>? Function(
      Iterable<
        CopyWith$Fragment$SyncWeighbridgeTicketTaskFields<
          Fragment$SyncWeighbridgeTicketTaskFields
        >?
      >?,
    )
    _fn,
  ) => call(
    syncWeighbridgeTicketTasks: _fn(
      _instance.syncWeighbridgeTicketTasks?.map(
        (e) => e == null
            ? null
            : CopyWith$Fragment$SyncWeighbridgeTicketTaskFields(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes<TRes> {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? yardId,
    String? yardCode,
    int? ticketNumber,
    Enum$TicketType? ticketType,
    DateTime? date,
    Enum$TicketServiceType? serviceType,
    Enum$TicketCategory? ticketCategory,
    Enum$TicketStatus? ticketStatus,
    String? contractId,
    Enum$PaymentMethod? defaultPaymentMethod,
    Query$searchCashierTickets$searchCashierTickets$nodes$account? account,
    Query$searchCashierTickets$searchCashierTickets$nodes$contract? contract,
    Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails?
    transportDetails,
    List<Query$searchCashierTickets$searchCashierTickets$nodes$deductions>?
    deductions,
    Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge?
    haulageCharge,
    double? haulagePrice,
    Fragment$TicketAccountFields? haulier,
    List<Fragment$TicketLineFields>? lines,
    List<Fragment$NonStockTicketLineFields>? nonStockTicketLines,
    List<String>? tags,
    Map<String, dynamic>? extendedProperties,
    bool? active,
    double? price,
    double? provPrice,
    String? outwardTicketNo,
    String? currency,
    List<Fragment$MediaAssetFields>? mediaAssets,
    List<Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia>?
    inspectionMedia,
    Query$searchCashierTickets$searchCashierTickets$nodes$created? created,
    Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote?
    acceptedConsignmentNote,
    Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote?
    rejectedConsignmentNote,
    Fragment$PaymentDeductionFields? paymentDeduction,
    Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails?
    remittanceDetails,
    bool? isPayableAtEdge,
    bool? isPaymentAuthorizationRequired,
    Map<String, dynamic>? metadata,
    String? $__typename,
    Fragment$PaymentRuleResultFields? paymentValidationResult,
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord?
    paymentRecord,
    Fragment$SyncWeighbridgeTicketTaskFields? syncWeighbridgeTicketTask,
    List<Fragment$SyncWeighbridgeTicketTaskFields?>? syncWeighbridgeTicketTasks,
  }) => _res;

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account<TRes>
  get account =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account.stub(
        _res,
      );

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$contract<TRes>
  get contract =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$contract.stub(
        _res,
      );

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails<
    TRes
  >
  get transportDetails =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails.stub(
        _res,
      );

  deductions(_fn) => _res;

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge<
    TRes
  >
  get haulageCharge =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge.stub(
        _res,
      );

  CopyWith$Fragment$TicketAccountFields<TRes> get haulier =>
      CopyWith$Fragment$TicketAccountFields.stub(_res);

  lines(_fn) => _res;

  nonStockTicketLines(_fn) => _res;

  mediaAssets(_fn) => _res;

  inspectionMedia(_fn) => _res;

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$created<TRes>
  get created =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$created.stub(
        _res,
      );

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote<
    TRes
  >
  get acceptedConsignmentNote =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote.stub(
        _res,
      );

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote<
    TRes
  >
  get rejectedConsignmentNote =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote.stub(
        _res,
      );

  CopyWith$Fragment$PaymentDeductionFields<TRes> get paymentDeduction =>
      CopyWith$Fragment$PaymentDeductionFields.stub(_res);

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails<
    TRes
  >
  get remittanceDetails =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails.stub(
        _res,
      );

  CopyWith$Fragment$PaymentRuleResultFields<TRes> get paymentValidationResult =>
      CopyWith$Fragment$PaymentRuleResultFields.stub(_res);

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord<
    TRes
  >
  get paymentRecord =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord.stub(
        _res,
      );

  CopyWith$Fragment$SyncWeighbridgeTicketTaskFields<TRes>
  get syncWeighbridgeTicketTask =>
      CopyWith$Fragment$SyncWeighbridgeTicketTaskFields.stub(_res);

  syncWeighbridgeTicketTasks(_fn) => _res;
}

class Query$searchCashierTickets$searchCashierTickets$nodes$account
    implements Fragment$TicketFields$account, Fragment$TicketAccountFields {
  Query$searchCashierTickets$searchCashierTickets$nodes$account({
    this.details,
    required this.accountId,
    required this.accountNumber,
    required this.name,
    this.locationId,
    this.locationName,
    required this.address,
    this.sicCode,
    this.$__typename = 'TicketAccount',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$details = json['details'];
    final l$accountId = json['accountId'];
    final l$accountNumber = json['accountNumber'];
    final l$name = json['name'];
    final l$locationId = json['locationId'];
    final l$locationName = json['locationName'];
    final l$address = json['address'];
    final l$sicCode = json['sicCode'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$account(
      details: l$details == null
          ? null
          : Fragment$AccountDetails.fromJson(
              (l$details as Map<String, dynamic>),
            ),
      accountId: (l$accountId as String),
      accountNumber: (l$accountNumber as String),
      name: (l$name as String),
      locationId: (l$locationId as String?),
      locationName: (l$locationName as String?),
      address:
          Query$searchCashierTickets$searchCashierTickets$nodes$account$address.fromJson(
            (l$address as Map<String, dynamic>),
          ),
      sicCode: (l$sicCode as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$AccountDetails? details;

  final String accountId;

  final String accountNumber;

  final String name;

  final String? locationId;

  final String? locationName;

  final Query$searchCashierTickets$searchCashierTickets$nodes$account$address
  address;

  final int? sicCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$details = details;
    _resultData['details'] = l$details?.toJson();
    final l$accountId = accountId;
    _resultData['accountId'] = l$accountId;
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$locationId = locationId;
    _resultData['locationId'] = l$locationId;
    final l$locationName = locationName;
    _resultData['locationName'] = l$locationName;
    final l$address = address;
    _resultData['address'] = l$address.toJson();
    final l$sicCode = sicCode;
    _resultData['sicCode'] = l$sicCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$details = details;
    final l$accountId = accountId;
    final l$accountNumber = accountNumber;
    final l$name = name;
    final l$locationId = locationId;
    final l$locationName = locationName;
    final l$address = address;
    final l$sicCode = sicCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$details,
      l$accountId,
      l$accountNumber,
      l$name,
      l$locationId,
      l$locationName,
      l$address,
      l$sicCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$account ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (l$accountId != lOther$accountId) {
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
    final l$locationId = locationId;
    final lOther$locationId = other.locationId;
    if (l$locationId != lOther$locationId) {
      return false;
    }
    final l$locationName = locationName;
    final lOther$locationName = other.locationName;
    if (l$locationName != lOther$locationName) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$sicCode = sicCode;
    final lOther$sicCode = other.sicCode;
    if (l$sicCode != lOther$sicCode) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$account
    on Query$searchCashierTickets$searchCashierTickets$nodes$account {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account<
    Query$searchCashierTickets$searchCashierTickets$nodes$account
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account(
    Query$searchCashierTickets$searchCashierTickets$nodes$account instance,
    TRes Function(Query$searchCashierTickets$searchCashierTickets$nodes$account)
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$account;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$account;

  TRes call({
    Fragment$AccountDetails? details,
    String? accountId,
    String? accountNumber,
    String? name,
    String? locationId,
    String? locationName,
    Query$searchCashierTickets$searchCashierTickets$nodes$account$address?
    address,
    int? sicCode,
    String? $__typename,
  });
  CopyWith$Fragment$AccountDetails<TRes> get details;
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address<
    TRes
  >
  get address;
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$account<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$account(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$account _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? details = _undefined,
    Object? accountId = _undefined,
    Object? accountNumber = _undefined,
    Object? name = _undefined,
    Object? locationId = _undefined,
    Object? locationName = _undefined,
    Object? address = _undefined,
    Object? sicCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$account(
      details: details == _undefined
          ? _instance.details
          : (details as Fragment$AccountDetails?),
      accountId: accountId == _undefined || accountId == null
          ? _instance.accountId
          : (accountId as String),
      accountNumber: accountNumber == _undefined || accountNumber == null
          ? _instance.accountNumber
          : (accountNumber as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      locationId: locationId == _undefined
          ? _instance.locationId
          : (locationId as String?),
      locationName: locationName == _undefined
          ? _instance.locationName
          : (locationName as String?),
      address: address == _undefined || address == null
          ? _instance.address
          : (address
                as Query$searchCashierTickets$searchCashierTickets$nodes$account$address),
      sicCode: sicCode == _undefined ? _instance.sicCode : (sicCode as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$AccountDetails<TRes> get details {
    final local$details = _instance.details;
    return local$details == null
        ? CopyWith$Fragment$AccountDetails.stub(_then(_instance))
        : CopyWith$Fragment$AccountDetails(
            local$details,
            (e) => call(details: e),
          );
  }

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address<
    TRes
  >
  get address {
    final local$address = _instance.address;
    return CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address(
      local$address,
      (e) => call(address: e),
    );
  }
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$account<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$account(
    this._res,
  );

  TRes _res;

  call({
    Fragment$AccountDetails? details,
    String? accountId,
    String? accountNumber,
    String? name,
    String? locationId,
    String? locationName,
    Query$searchCashierTickets$searchCashierTickets$nodes$account$address?
    address,
    int? sicCode,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$AccountDetails<TRes> get details =>
      CopyWith$Fragment$AccountDetails.stub(_res);

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address<
    TRes
  >
  get address =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address.stub(
        _res,
      );
}

class Query$searchCashierTickets$searchCashierTickets$nodes$account$address
    implements
        Fragment$TicketFields$account$address,
        Fragment$TicketAccountFields$address {
  Query$searchCashierTickets$searchCashierTickets$nodes$account$address({
    required this.address1,
    required this.address2,
    required this.address3,
    required this.address4,
    required this.address5,
    required this.address6,
    required this.postCode,
    required this.what3Words,
    required this.countryCode,
    this.geoLocation,
    this.$__typename = 'Address',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$account$address.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$address3 = json['address3'];
    final l$address4 = json['address4'];
    final l$address5 = json['address5'];
    final l$address6 = json['address6'];
    final l$postCode = json['postCode'];
    final l$what3Words = json['what3Words'];
    final l$countryCode = json['countryCode'];
    final l$geoLocation = json['geoLocation'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$account$address(
      address1: (l$address1 as String),
      address2: (l$address2 as String),
      address3: (l$address3 as String),
      address4: (l$address4 as String),
      address5: (l$address5 as String),
      address6: (l$address6 as String),
      postCode: (l$postCode as String),
      what3Words: (l$what3Words as String),
      countryCode: (l$countryCode as String),
      geoLocation: l$geoLocation == null
          ? null
          : Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation.fromJson(
              (l$geoLocation as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String address1;

  final String address2;

  final String address3;

  final String address4;

  final String address5;

  final String address6;

  final String postCode;

  final String what3Words;

  final String countryCode;

  final Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation?
  geoLocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address1 = address1;
    _resultData['address1'] = l$address1;
    final l$address2 = address2;
    _resultData['address2'] = l$address2;
    final l$address3 = address3;
    _resultData['address3'] = l$address3;
    final l$address4 = address4;
    _resultData['address4'] = l$address4;
    final l$address5 = address5;
    _resultData['address5'] = l$address5;
    final l$address6 = address6;
    _resultData['address6'] = l$address6;
    final l$postCode = postCode;
    _resultData['postCode'] = l$postCode;
    final l$what3Words = what3Words;
    _resultData['what3Words'] = l$what3Words;
    final l$countryCode = countryCode;
    _resultData['countryCode'] = l$countryCode;
    final l$geoLocation = geoLocation;
    _resultData['geoLocation'] = l$geoLocation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address1 = address1;
    final l$address2 = address2;
    final l$address3 = address3;
    final l$address4 = address4;
    final l$address5 = address5;
    final l$address6 = address6;
    final l$postCode = postCode;
    final l$what3Words = what3Words;
    final l$countryCode = countryCode;
    final l$geoLocation = geoLocation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address1,
      l$address2,
      l$address3,
      l$address4,
      l$address5,
      l$address6,
      l$postCode,
      l$what3Words,
      l$countryCode,
      l$geoLocation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$account$address ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address1 = address1;
    final lOther$address1 = other.address1;
    if (l$address1 != lOther$address1) {
      return false;
    }
    final l$address2 = address2;
    final lOther$address2 = other.address2;
    if (l$address2 != lOther$address2) {
      return false;
    }
    final l$address3 = address3;
    final lOther$address3 = other.address3;
    if (l$address3 != lOther$address3) {
      return false;
    }
    final l$address4 = address4;
    final lOther$address4 = other.address4;
    if (l$address4 != lOther$address4) {
      return false;
    }
    final l$address5 = address5;
    final lOther$address5 = other.address5;
    if (l$address5 != lOther$address5) {
      return false;
    }
    final l$address6 = address6;
    final lOther$address6 = other.address6;
    if (l$address6 != lOther$address6) {
      return false;
    }
    final l$postCode = postCode;
    final lOther$postCode = other.postCode;
    if (l$postCode != lOther$postCode) {
      return false;
    }
    final l$what3Words = what3Words;
    final lOther$what3Words = other.what3Words;
    if (l$what3Words != lOther$what3Words) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    final l$geoLocation = geoLocation;
    final lOther$geoLocation = other.geoLocation;
    if (l$geoLocation != lOther$geoLocation) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$account$address
    on Query$searchCashierTickets$searchCashierTickets$nodes$account$address {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address<
    Query$searchCashierTickets$searchCashierTickets$nodes$account$address
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address(
    Query$searchCashierTickets$searchCashierTickets$nodes$account$address
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$account$address,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$account$address;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$account$address;

  TRes call({
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? what3Words,
    String? countryCode,
    Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation?
    geoLocation,
    String? $__typename,
  });
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation<
    TRes
  >
  get geoLocation;
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$account$address<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$account$address(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$account$address
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$account$address,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? address3 = _undefined,
    Object? address4 = _undefined,
    Object? address5 = _undefined,
    Object? address6 = _undefined,
    Object? postCode = _undefined,
    Object? what3Words = _undefined,
    Object? countryCode = _undefined,
    Object? geoLocation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$account$address(
      address1: address1 == _undefined || address1 == null
          ? _instance.address1
          : (address1 as String),
      address2: address2 == _undefined || address2 == null
          ? _instance.address2
          : (address2 as String),
      address3: address3 == _undefined || address3 == null
          ? _instance.address3
          : (address3 as String),
      address4: address4 == _undefined || address4 == null
          ? _instance.address4
          : (address4 as String),
      address5: address5 == _undefined || address5 == null
          ? _instance.address5
          : (address5 as String),
      address6: address6 == _undefined || address6 == null
          ? _instance.address6
          : (address6 as String),
      postCode: postCode == _undefined || postCode == null
          ? _instance.postCode
          : (postCode as String),
      what3Words: what3Words == _undefined || what3Words == null
          ? _instance.what3Words
          : (what3Words as String),
      countryCode: countryCode == _undefined || countryCode == null
          ? _instance.countryCode
          : (countryCode as String),
      geoLocation: geoLocation == _undefined
          ? _instance.geoLocation
          : (geoLocation
                as Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation<
    TRes
  >
  get geoLocation {
    final local$geoLocation = _instance.geoLocation;
    return local$geoLocation == null
        ? CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation.stub(
            _then(_instance),
          )
        : CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation(
            local$geoLocation,
            (e) => call(geoLocation: e),
          );
  }
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$account$address<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$account$address(
    this._res,
  );

  TRes _res;

  call({
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? what3Words,
    String? countryCode,
    Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation?
    geoLocation,
    String? $__typename,
  }) => _res;

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation<
    TRes
  >
  get geoLocation =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation.stub(
        _res,
      );
}

class Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation
    implements
        Fragment$TicketFields$account$address$geoLocation,
        Fragment$TicketAccountFields$address$geoLocation {
  Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation({
    required this.longitude,
    required this.latitude,
    this.$__typename = 'LatLong',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$longitude = json['longitude'];
    final l$latitude = json['latitude'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation(
      longitude: (l$longitude as num).toDouble(),
      latitude: (l$latitude as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double longitude;

  final double latitude;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$longitude = longitude;
    _resultData['longitude'] = l$longitude;
    final l$latitude = latitude;
    _resultData['latitude'] = l$latitude;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$longitude = longitude;
    final l$latitude = latitude;
    final l$$__typename = $__typename;
    return Object.hashAll([l$longitude, l$latitude, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation
    on
        Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation<
    Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation(
    Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation;

  TRes call({double? longitude, double? latitude, String? $__typename});
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? longitude = _undefined,
    Object? latitude = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation(
      longitude: longitude == _undefined || longitude == null
          ? _instance.longitude
          : (longitude as double),
      latitude: latitude == _undefined || latitude == null
          ? _instance.latitude
          : (latitude as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$account$address$geoLocation(
    this._res,
  );

  TRes _res;

  call({double? longitude, double? latitude, String? $__typename}) => _res;
}

class Query$searchCashierTickets$searchCashierTickets$nodes$contract
    implements Fragment$TicketFields$contract {
  Query$searchCashierTickets$searchCashierTickets$nodes$contract({
    required this.id,
    required this.accountId,
    required this.internalReference,
    required this.customerReference,
    required this.contractOrderBookTypeName,
    this.$__typename = 'Contract',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$contract.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$accountId = json['accountId'];
    final l$internalReference = json['internalReference'];
    final l$customerReference = json['customerReference'];
    final l$contractOrderBookTypeName = json['contractOrderBookTypeName'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$contract(
      id: (l$id as String),
      accountId: (l$accountId as String),
      internalReference: (l$internalReference as String),
      customerReference: (l$customerReference as String),
      contractOrderBookTypeName: (l$contractOrderBookTypeName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String accountId;

  final String internalReference;

  final String customerReference;

  final String contractOrderBookTypeName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$accountId = accountId;
    _resultData['accountId'] = l$accountId;
    final l$internalReference = internalReference;
    _resultData['internalReference'] = l$internalReference;
    final l$customerReference = customerReference;
    _resultData['customerReference'] = l$customerReference;
    final l$contractOrderBookTypeName = contractOrderBookTypeName;
    _resultData['contractOrderBookTypeName'] = l$contractOrderBookTypeName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$accountId = accountId;
    final l$internalReference = internalReference;
    final l$customerReference = customerReference;
    final l$contractOrderBookTypeName = contractOrderBookTypeName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$accountId,
      l$internalReference,
      l$customerReference,
      l$contractOrderBookTypeName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$contract ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$internalReference = internalReference;
    final lOther$internalReference = other.internalReference;
    if (l$internalReference != lOther$internalReference) {
      return false;
    }
    final l$customerReference = customerReference;
    final lOther$customerReference = other.customerReference;
    if (l$customerReference != lOther$customerReference) {
      return false;
    }
    final l$contractOrderBookTypeName = contractOrderBookTypeName;
    final lOther$contractOrderBookTypeName = other.contractOrderBookTypeName;
    if (l$contractOrderBookTypeName != lOther$contractOrderBookTypeName) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$contract
    on Query$searchCashierTickets$searchCashierTickets$nodes$contract {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$contract<
    Query$searchCashierTickets$searchCashierTickets$nodes$contract
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$contract(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$contract<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$contract(
    Query$searchCashierTickets$searchCashierTickets$nodes$contract instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$contract,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$contract;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$contract.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$contract;

  TRes call({
    String? id,
    String? accountId,
    String? internalReference,
    String? customerReference,
    String? contractOrderBookTypeName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$contract<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$contract<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$contract(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$contract
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$contract,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? accountId = _undefined,
    Object? internalReference = _undefined,
    Object? customerReference = _undefined,
    Object? contractOrderBookTypeName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$contract(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      accountId: accountId == _undefined || accountId == null
          ? _instance.accountId
          : (accountId as String),
      internalReference:
          internalReference == _undefined || internalReference == null
          ? _instance.internalReference
          : (internalReference as String),
      customerReference:
          customerReference == _undefined || customerReference == null
          ? _instance.customerReference
          : (customerReference as String),
      contractOrderBookTypeName:
          contractOrderBookTypeName == _undefined ||
              contractOrderBookTypeName == null
          ? _instance.contractOrderBookTypeName
          : (contractOrderBookTypeName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$contract<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$contract<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$contract(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? accountId,
    String? internalReference,
    String? customerReference,
    String? contractOrderBookTypeName,
    String? $__typename,
  }) => _res;
}

class Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails
    implements Fragment$TicketFields$transportDetails {
  Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails({
    required this.transportType,
    this.jobNumber,
    this.vehicleReg,
    this.deliveryNote,
    this.$__typename = 'TransportDetails',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transportType = json['transportType'];
    final l$jobNumber = json['jobNumber'];
    final l$vehicleReg = json['vehicleReg'];
    final l$deliveryNote = json['deliveryNote'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails(
      transportType: fromJson$Enum$TransportType((l$transportType as String)),
      jobNumber: (l$jobNumber as int?),
      vehicleReg: (l$vehicleReg as String?),
      deliveryNote: (l$deliveryNote as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$TransportType transportType;

  final int? jobNumber;

  final String? vehicleReg;

  final String? deliveryNote;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transportType = transportType;
    _resultData['transportType'] = toJson$Enum$TransportType(l$transportType);
    final l$jobNumber = jobNumber;
    _resultData['jobNumber'] = l$jobNumber;
    final l$vehicleReg = vehicleReg;
    _resultData['vehicleReg'] = l$vehicleReg;
    final l$deliveryNote = deliveryNote;
    _resultData['deliveryNote'] = l$deliveryNote;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transportType = transportType;
    final l$jobNumber = jobNumber;
    final l$vehicleReg = vehicleReg;
    final l$deliveryNote = deliveryNote;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transportType,
      l$jobNumber,
      l$vehicleReg,
      l$deliveryNote,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transportType = transportType;
    final lOther$transportType = other.transportType;
    if (l$transportType != lOther$transportType) {
      return false;
    }
    final l$jobNumber = jobNumber;
    final lOther$jobNumber = other.jobNumber;
    if (l$jobNumber != lOther$jobNumber) {
      return false;
    }
    final l$vehicleReg = vehicleReg;
    final lOther$vehicleReg = other.vehicleReg;
    if (l$vehicleReg != lOther$vehicleReg) {
      return false;
    }
    final l$deliveryNote = deliveryNote;
    final lOther$deliveryNote = other.deliveryNote;
    if (l$deliveryNote != lOther$deliveryNote) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails
    on Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails<
    Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails(
    Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails;

  TRes call({
    Enum$TransportType? transportType,
    int? jobNumber,
    String? vehicleReg,
    String? deliveryNote,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transportType = _undefined,
    Object? jobNumber = _undefined,
    Object? vehicleReg = _undefined,
    Object? deliveryNote = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails(
      transportType: transportType == _undefined || transportType == null
          ? _instance.transportType
          : (transportType as Enum$TransportType),
      jobNumber: jobNumber == _undefined
          ? _instance.jobNumber
          : (jobNumber as int?),
      vehicleReg: vehicleReg == _undefined
          ? _instance.vehicleReg
          : (vehicleReg as String?),
      deliveryNote: deliveryNote == _undefined
          ? _instance.deliveryNote
          : (deliveryNote as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$transportDetails(
    this._res,
  );

  TRes _res;

  call({
    Enum$TransportType? transportType,
    int? jobNumber,
    String? vehicleReg,
    String? deliveryNote,
    String? $__typename,
  }) => _res;
}

class Query$searchCashierTickets$searchCashierTickets$nodes$deductions
    implements Fragment$TicketFields$deductions {
  Query$searchCashierTickets$searchCashierTickets$nodes$deductions({
    required this.typeId,
    this.value,
    this.$__typename = 'Deduction',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$deductions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$typeId = json['typeId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$deductions(
      typeId: (l$typeId as String),
      value: (l$value as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String typeId;

  final double? value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$typeId = typeId;
    _resultData['typeId'] = l$typeId;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$typeId = typeId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$typeId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$deductions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$typeId = typeId;
    final lOther$typeId = other.typeId;
    if (l$typeId != lOther$typeId) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$deductions
    on Query$searchCashierTickets$searchCashierTickets$nodes$deductions {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$deductions<
    Query$searchCashierTickets$searchCashierTickets$nodes$deductions
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$deductions(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$deductions<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$deductions(
    Query$searchCashierTickets$searchCashierTickets$nodes$deductions instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$deductions,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$deductions;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$deductions.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$deductions;

  TRes call({String? typeId, double? value, String? $__typename});
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$deductions<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$deductions<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$deductions(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$deductions
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$deductions,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? typeId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$deductions(
      typeId: typeId == _undefined || typeId == null
          ? _instance.typeId
          : (typeId as String),
      value: value == _undefined ? _instance.value : (value as double?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$deductions<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$deductions<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$deductions(
    this._res,
  );

  TRes _res;

  call({String? typeId, double? value, String? $__typename}) => _res;
}

class Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge
    implements Fragment$TicketFields$haulageCharge {
  Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge({
    required this.provRate,
    this.confRate,
    required this.provValue,
    this.confValue,
    this.charge,
    this.$__typename = 'HaulageCharge',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$provRate = json['provRate'];
    final l$confRate = json['confRate'];
    final l$provValue = json['provValue'];
    final l$confValue = json['confValue'];
    final l$charge = json['charge'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge(
      provRate: Fragment$UomValueFields.fromJson(
        (l$provRate as Map<String, dynamic>),
      ),
      confRate: l$confRate == null
          ? null
          : Fragment$UomValueFields.fromJson(
              (l$confRate as Map<String, dynamic>),
            ),
      provValue: (l$provValue as num).toDouble(),
      confValue: (l$confValue as num?)?.toDouble(),
      charge: l$charge == null
          ? null
          : Fragment$UomValueFields.fromJson(
              (l$charge as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$UomValueFields provRate;

  final Fragment$UomValueFields? confRate;

  final double provValue;

  final double? confValue;

  final Fragment$UomValueFields? charge;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$provRate = provRate;
    _resultData['provRate'] = l$provRate.toJson();
    final l$confRate = confRate;
    _resultData['confRate'] = l$confRate?.toJson();
    final l$provValue = provValue;
    _resultData['provValue'] = l$provValue;
    final l$confValue = confValue;
    _resultData['confValue'] = l$confValue;
    final l$charge = charge;
    _resultData['charge'] = l$charge?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$provRate = provRate;
    final l$confRate = confRate;
    final l$provValue = provValue;
    final l$confValue = confValue;
    final l$charge = charge;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$provRate,
      l$confRate,
      l$provValue,
      l$confValue,
      l$charge,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$provRate = provRate;
    final lOther$provRate = other.provRate;
    if (l$provRate != lOther$provRate) {
      return false;
    }
    final l$confRate = confRate;
    final lOther$confRate = other.confRate;
    if (l$confRate != lOther$confRate) {
      return false;
    }
    final l$provValue = provValue;
    final lOther$provValue = other.provValue;
    if (l$provValue != lOther$provValue) {
      return false;
    }
    final l$confValue = confValue;
    final lOther$confValue = other.confValue;
    if (l$confValue != lOther$confValue) {
      return false;
    }
    final l$charge = charge;
    final lOther$charge = other.charge;
    if (l$charge != lOther$charge) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge
    on Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge<
    Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge(
    Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge;

  TRes call({
    Fragment$UomValueFields? provRate,
    Fragment$UomValueFields? confRate,
    double? provValue,
    double? confValue,
    Fragment$UomValueFields? charge,
    String? $__typename,
  });
  CopyWith$Fragment$UomValueFields<TRes> get provRate;
  CopyWith$Fragment$UomValueFields<TRes> get confRate;
  CopyWith$Fragment$UomValueFields<TRes> get charge;
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? provRate = _undefined,
    Object? confRate = _undefined,
    Object? provValue = _undefined,
    Object? confValue = _undefined,
    Object? charge = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge(
      provRate: provRate == _undefined || provRate == null
          ? _instance.provRate
          : (provRate as Fragment$UomValueFields),
      confRate: confRate == _undefined
          ? _instance.confRate
          : (confRate as Fragment$UomValueFields?),
      provValue: provValue == _undefined || provValue == null
          ? _instance.provValue
          : (provValue as double),
      confValue: confValue == _undefined
          ? _instance.confValue
          : (confValue as double?),
      charge: charge == _undefined
          ? _instance.charge
          : (charge as Fragment$UomValueFields?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$UomValueFields<TRes> get provRate {
    final local$provRate = _instance.provRate;
    return CopyWith$Fragment$UomValueFields(
      local$provRate,
      (e) => call(provRate: e),
    );
  }

  CopyWith$Fragment$UomValueFields<TRes> get confRate {
    final local$confRate = _instance.confRate;
    return local$confRate == null
        ? CopyWith$Fragment$UomValueFields.stub(_then(_instance))
        : CopyWith$Fragment$UomValueFields(
            local$confRate,
            (e) => call(confRate: e),
          );
  }

  CopyWith$Fragment$UomValueFields<TRes> get charge {
    final local$charge = _instance.charge;
    return local$charge == null
        ? CopyWith$Fragment$UomValueFields.stub(_then(_instance))
        : CopyWith$Fragment$UomValueFields(
            local$charge,
            (e) => call(charge: e),
          );
  }
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$haulageCharge(
    this._res,
  );

  TRes _res;

  call({
    Fragment$UomValueFields? provRate,
    Fragment$UomValueFields? confRate,
    double? provValue,
    double? confValue,
    Fragment$UomValueFields? charge,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$UomValueFields<TRes> get provRate =>
      CopyWith$Fragment$UomValueFields.stub(_res);

  CopyWith$Fragment$UomValueFields<TRes> get confRate =>
      CopyWith$Fragment$UomValueFields.stub(_res);

  CopyWith$Fragment$UomValueFields<TRes> get charge =>
      CopyWith$Fragment$UomValueFields.stub(_res);
}

class Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia
    implements Fragment$TicketFields$inspectionMedia {
  Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia({
    required this.url,
    this.sasUrl,
    this.sasThumbnailUrl,
    this.$__typename = 'InspectionMedia',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$sasUrl = json['sasUrl'];
    final l$sasThumbnailUrl = json['sasThumbnailUrl'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia(
      url: (l$url as String),
      sasUrl: (l$sasUrl as String?),
      sasThumbnailUrl: (l$sasThumbnailUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String? sasUrl;

  final String? sasThumbnailUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$sasThumbnailUrl = sasThumbnailUrl;
    _resultData['sasThumbnailUrl'] = l$sasThumbnailUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$sasUrl = sasUrl;
    final l$sasThumbnailUrl = sasThumbnailUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$sasUrl, l$sasThumbnailUrl, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$sasUrl = sasUrl;
    final lOther$sasUrl = other.sasUrl;
    if (l$sasUrl != lOther$sasUrl) {
      return false;
    }
    final l$sasThumbnailUrl = sasThumbnailUrl;
    final lOther$sasThumbnailUrl = other.sasThumbnailUrl;
    if (l$sasThumbnailUrl != lOther$sasThumbnailUrl) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia
    on Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia<
    Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia(
    Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia;

  TRes call({
    String? url,
    String? sasUrl,
    String? sasThumbnailUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? sasUrl = _undefined,
    Object? sasThumbnailUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      sasThumbnailUrl: sasThumbnailUrl == _undefined
          ? _instance.sasThumbnailUrl
          : (sasThumbnailUrl as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$inspectionMedia(
    this._res,
  );

  TRes _res;

  call({
    String? url,
    String? sasUrl,
    String? sasThumbnailUrl,
    String? $__typename,
  }) => _res;
}

class Query$searchCashierTickets$searchCashierTickets$nodes$created
    implements Fragment$TicketFields$created {
  Query$searchCashierTickets$searchCashierTickets$nodes$created({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Created',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$created(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$created
    on Query$searchCashierTickets$searchCashierTickets$nodes$created {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$created<
    Query$searchCashierTickets$searchCashierTickets$nodes$created
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$created<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$created(
    Query$searchCashierTickets$searchCashierTickets$nodes$created instance,
    TRes Function(Query$searchCashierTickets$searchCashierTickets$nodes$created)
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$created;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$created;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$created<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$created<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$created(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$created _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$created<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$created<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote
    implements Fragment$TicketFields$acceptedConsignmentNote {
  Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote({
    required this.code,
    this.mediaUrl,
    required this.created,
    required this.modified,
    this.$__typename = 'ConsignmentNote',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$mediaUrl = json['mediaUrl'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote(
      code: (l$code as String),
      mediaUrl: (l$mediaUrl as String?),
      created:
          Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      modified:
          Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified.fromJson(
            (l$modified as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String? mediaUrl;

  final Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created
  created;

  final Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified
  modified;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$mediaUrl = mediaUrl;
    _resultData['mediaUrl'] = l$mediaUrl;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$mediaUrl = mediaUrl;
    final l$created = created;
    final l$modified = modified;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$mediaUrl,
      l$created,
      l$modified,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$mediaUrl = mediaUrl;
    final lOther$mediaUrl = other.mediaUrl;
    if (l$mediaUrl != lOther$mediaUrl) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote
    on Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote<
    Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote(
    Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote;

  TRes call({
    String? code,
    String? mediaUrl,
    Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created?
    created,
    Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified?
    modified,
    String? $__typename,
  });
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created<
    TRes
  >
  get created;
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified<
    TRes
  >
  get modified;
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? mediaUrl = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      mediaUrl: mediaUrl == _undefined
          ? _instance.mediaUrl
          : (mediaUrl as String?),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified
                as Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified<
    TRes
  >
  get modified {
    final local$modified = _instance.modified;
    return CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    String? mediaUrl,
    Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created?
    created,
    Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified?
    modified,
    String? $__typename,
  }) => _res;

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created<
    TRes
  >
  get created =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created.stub(
        _res,
      );

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified<
    TRes
  >
  get modified =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified.stub(
        _res,
      );
}

class Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created
    implements Fragment$TicketFields$acceptedConsignmentNote$created {
  Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Created',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created
    on
        Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created<
    Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created(
    Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified
    implements Fragment$TicketFields$acceptedConsignmentNote$modified {
  Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Modified',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified
    on
        Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified<
    Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified(
    Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$acceptedConsignmentNote$modified(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote
    implements Fragment$TicketFields$rejectedConsignmentNote {
  Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote({
    required this.code,
    this.mediaUrl,
    required this.created,
    required this.modified,
    this.$__typename = 'ConsignmentNote',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$mediaUrl = json['mediaUrl'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote(
      code: (l$code as String),
      mediaUrl: (l$mediaUrl as String?),
      created:
          Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      modified:
          Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified.fromJson(
            (l$modified as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String? mediaUrl;

  final Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created
  created;

  final Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified
  modified;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$mediaUrl = mediaUrl;
    _resultData['mediaUrl'] = l$mediaUrl;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$mediaUrl = mediaUrl;
    final l$created = created;
    final l$modified = modified;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$mediaUrl,
      l$created,
      l$modified,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$mediaUrl = mediaUrl;
    final lOther$mediaUrl = other.mediaUrl;
    if (l$mediaUrl != lOther$mediaUrl) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote
    on Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote<
    Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote(
    Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote;

  TRes call({
    String? code,
    String? mediaUrl,
    Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created?
    created,
    Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified?
    modified,
    String? $__typename,
  });
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created<
    TRes
  >
  get created;
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified<
    TRes
  >
  get modified;
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? mediaUrl = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      mediaUrl: mediaUrl == _undefined
          ? _instance.mediaUrl
          : (mediaUrl as String?),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified
                as Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified<
    TRes
  >
  get modified {
    final local$modified = _instance.modified;
    return CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    String? mediaUrl,
    Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created?
    created,
    Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified?
    modified,
    String? $__typename,
  }) => _res;

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created<
    TRes
  >
  get created =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created.stub(
        _res,
      );

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified<
    TRes
  >
  get modified =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified.stub(
        _res,
      );
}

class Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created
    implements Fragment$TicketFields$rejectedConsignmentNote$created {
  Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Created',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created
    on
        Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created<
    Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created(
    Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified
    implements Fragment$TicketFields$rejectedConsignmentNote$modified {
  Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Modified',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified
    on
        Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified<
    Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified(
    Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$rejectedConsignmentNote$modified(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails
    implements Fragment$TicketFields$remittanceDetails {
  Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails({
    required this.mediaUrl,
    required this.created,
    required this.modified,
    this.$__typename = 'TicketRemittance',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mediaUrl = json['mediaUrl'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails(
      mediaUrl: (l$mediaUrl as String),
      created:
          Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      modified:
          Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified.fromJson(
            (l$modified as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mediaUrl;

  final Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created
  created;

  final Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified
  modified;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mediaUrl = mediaUrl;
    _resultData['mediaUrl'] = l$mediaUrl;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mediaUrl = mediaUrl;
    final l$created = created;
    final l$modified = modified;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mediaUrl, l$created, l$modified, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaUrl = mediaUrl;
    final lOther$mediaUrl = other.mediaUrl;
    if (l$mediaUrl != lOther$mediaUrl) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails
    on Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails<
    Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails(
    Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails;

  TRes call({
    String? mediaUrl,
    Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created?
    created,
    Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified?
    modified,
    String? $__typename,
  });
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created<
    TRes
  >
  get created;
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified<
    TRes
  >
  get modified;
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaUrl = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails(
      mediaUrl: mediaUrl == _undefined || mediaUrl == null
          ? _instance.mediaUrl
          : (mediaUrl as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified
                as Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified<
    TRes
  >
  get modified {
    final local$modified = _instance.modified;
    return CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails(
    this._res,
  );

  TRes _res;

  call({
    String? mediaUrl,
    Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created?
    created,
    Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified?
    modified,
    String? $__typename,
  }) => _res;

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created<
    TRes
  >
  get created =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created.stub(
        _res,
      );

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified<
    TRes
  >
  get modified =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified.stub(
        _res,
      );
}

class Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created
    implements Fragment$TicketFields$remittanceDetails$created {
  Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Created',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created
    on
        Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created<
    Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created(
    Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified
    implements Fragment$TicketFields$remittanceDetails$modified {
  Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Modified',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified
    on
        Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified<
    Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified(
    Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$remittanceDetails$modified(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord {
  Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord({
    required this.paymentMethod,
    required this.cashDeductions,
    required this.needAuthorization,
    this.authorizationDetails,
    required this.paymentRecordItems,
    required this.id,
    required this.tags,
    this.extendedProperties,
    required this.active,
    required this.created,
    required this.yardCode,
    required this.modified,
    required this.ticketIds,
    required this.tickets,
    required this.totalAmount,
    required this.roundingAdjustment,
    required this.haulageCharge,
    required this.advanceOffset,
    required this.totalFee,
    required this.roundingAdjustmentOnFee,
    required this.payableAfterCostAndDeduction,
    required this.payableAmount,
    this.paymentMethodDetails,
    required this.status,
    this.paymentPostingTask,
    this.$__typename = 'PaymentRecord',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$paymentMethod = json['paymentMethod'];
    final l$cashDeductions = json['cashDeductions'];
    final l$needAuthorization = json['needAuthorization'];
    final l$authorizationDetails = json['authorizationDetails'];
    final l$paymentRecordItems = json['paymentRecordItems'];
    final l$id = json['id'];
    final l$tags = json['tags'];
    final l$extendedProperties = json['extendedProperties'];
    final l$active = json['active'];
    final l$created = json['created'];
    final l$yardCode = json['yardCode'];
    final l$modified = json['modified'];
    final l$ticketIds = json['ticketIds'];
    final l$tickets = json['tickets'];
    final l$totalAmount = json['totalAmount'];
    final l$roundingAdjustment = json['roundingAdjustment'];
    final l$haulageCharge = json['haulageCharge'];
    final l$advanceOffset = json['advanceOffset'];
    final l$totalFee = json['totalFee'];
    final l$roundingAdjustmentOnFee = json['roundingAdjustmentOnFee'];
    final l$payableAfterCostAndDeduction = json['payableAfterCostAndDeduction'];
    final l$payableAmount = json['payableAmount'];
    final l$paymentMethodDetails = json['paymentMethodDetails'];
    final l$status = json['status'];
    final l$paymentPostingTask = json['paymentPostingTask'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord(
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      cashDeductions: (l$cashDeductions as num).toDouble(),
      needAuthorization: (l$needAuthorization as bool),
      authorizationDetails: l$authorizationDetails == null
          ? null
          : Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails.fromJson(
              (l$authorizationDetails as Map<String, dynamic>),
            ),
      paymentRecordItems: (l$paymentRecordItems as List<dynamic>)
          .map(
            (e) => Fragment$PaymentRecordItemFields.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      id: (l$id as String),
      tags: (l$tags as List<dynamic>).map((e) => (e as String)).toList(),
      extendedProperties: (l$extendedProperties as Map<String, dynamic>?),
      active: (l$active as bool),
      created:
          Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      yardCode: (l$yardCode as String),
      modified:
          Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified.fromJson(
            (l$modified as Map<String, dynamic>),
          ),
      ticketIds: (l$ticketIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      tickets: (l$tickets as List<dynamic>)
          .map(
            (e) =>
                Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      totalAmount: (l$totalAmount as num).toDouble(),
      roundingAdjustment: (l$roundingAdjustment as num).toDouble(),
      haulageCharge: (l$haulageCharge as num).toDouble(),
      advanceOffset: (l$advanceOffset as num).toDouble(),
      totalFee: (l$totalFee as num).toDouble(),
      roundingAdjustmentOnFee: (l$roundingAdjustmentOnFee as num).toDouble(),
      payableAfterCostAndDeduction: (l$payableAfterCostAndDeduction as num)
          .toDouble(),
      payableAmount: (l$payableAmount as num).toDouble(),
      paymentMethodDetails: (l$paymentMethodDetails as Map<String, dynamic>?),
      status: fromJson$Enum$PaymentStatus((l$status as String)),
      paymentPostingTask: l$paymentPostingTask == null
          ? null
          : Fragment$PaymentPostingTaskFields.fromJson(
              (l$paymentPostingTask as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$PaymentMethod paymentMethod;

  final double cashDeductions;

  final bool needAuthorization;

  final Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails?
  authorizationDetails;

  final List<Fragment$PaymentRecordItemFields> paymentRecordItems;

  final String id;

  final List<String> tags;

  final Map<String, dynamic>? extendedProperties;

  final bool active;

  final Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created
  created;

  final String yardCode;

  final Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified
  modified;

  final List<String> ticketIds;

  final List<
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets
  >
  tickets;

  final double totalAmount;

  final double roundingAdjustment;

  final double haulageCharge;

  final double advanceOffset;

  final double totalFee;

  final double roundingAdjustmentOnFee;

  final double payableAfterCostAndDeduction;

  final double payableAmount;

  final Map<String, dynamic>? paymentMethodDetails;

  final Enum$PaymentStatus status;

  final Fragment$PaymentPostingTaskFields? paymentPostingTask;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$cashDeductions = cashDeductions;
    _resultData['cashDeductions'] = l$cashDeductions;
    final l$needAuthorization = needAuthorization;
    _resultData['needAuthorization'] = l$needAuthorization;
    final l$authorizationDetails = authorizationDetails;
    _resultData['authorizationDetails'] = l$authorizationDetails?.toJson();
    final l$paymentRecordItems = paymentRecordItems;
    _resultData['paymentRecordItems'] = l$paymentRecordItems
        .map((e) => e.toJson())
        .toList();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e).toList();
    final l$extendedProperties = extendedProperties;
    _resultData['extendedProperties'] = l$extendedProperties;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$ticketIds = ticketIds;
    _resultData['ticketIds'] = l$ticketIds.map((e) => e).toList();
    final l$tickets = tickets;
    _resultData['tickets'] = l$tickets.map((e) => e.toJson()).toList();
    final l$totalAmount = totalAmount;
    _resultData['totalAmount'] = l$totalAmount;
    final l$roundingAdjustment = roundingAdjustment;
    _resultData['roundingAdjustment'] = l$roundingAdjustment;
    final l$haulageCharge = haulageCharge;
    _resultData['haulageCharge'] = l$haulageCharge;
    final l$advanceOffset = advanceOffset;
    _resultData['advanceOffset'] = l$advanceOffset;
    final l$totalFee = totalFee;
    _resultData['totalFee'] = l$totalFee;
    final l$roundingAdjustmentOnFee = roundingAdjustmentOnFee;
    _resultData['roundingAdjustmentOnFee'] = l$roundingAdjustmentOnFee;
    final l$payableAfterCostAndDeduction = payableAfterCostAndDeduction;
    _resultData['payableAfterCostAndDeduction'] =
        l$payableAfterCostAndDeduction;
    final l$payableAmount = payableAmount;
    _resultData['payableAmount'] = l$payableAmount;
    final l$paymentMethodDetails = paymentMethodDetails;
    _resultData['paymentMethodDetails'] = l$paymentMethodDetails;
    final l$status = status;
    _resultData['status'] = toJson$Enum$PaymentStatus(l$status);
    final l$paymentPostingTask = paymentPostingTask;
    _resultData['paymentPostingTask'] = l$paymentPostingTask?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentMethod = paymentMethod;
    final l$cashDeductions = cashDeductions;
    final l$needAuthorization = needAuthorization;
    final l$authorizationDetails = authorizationDetails;
    final l$paymentRecordItems = paymentRecordItems;
    final l$id = id;
    final l$tags = tags;
    final l$extendedProperties = extendedProperties;
    final l$active = active;
    final l$created = created;
    final l$yardCode = yardCode;
    final l$modified = modified;
    final l$ticketIds = ticketIds;
    final l$tickets = tickets;
    final l$totalAmount = totalAmount;
    final l$roundingAdjustment = roundingAdjustment;
    final l$haulageCharge = haulageCharge;
    final l$advanceOffset = advanceOffset;
    final l$totalFee = totalFee;
    final l$roundingAdjustmentOnFee = roundingAdjustmentOnFee;
    final l$payableAfterCostAndDeduction = payableAfterCostAndDeduction;
    final l$payableAmount = payableAmount;
    final l$paymentMethodDetails = paymentMethodDetails;
    final l$status = status;
    final l$paymentPostingTask = paymentPostingTask;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$paymentMethod,
      l$cashDeductions,
      l$needAuthorization,
      l$authorizationDetails,
      Object.hashAll(l$paymentRecordItems.map((v) => v)),
      l$id,
      Object.hashAll(l$tags.map((v) => v)),
      l$extendedProperties,
      l$active,
      l$created,
      l$yardCode,
      l$modified,
      Object.hashAll(l$ticketIds.map((v) => v)),
      Object.hashAll(l$tickets.map((v) => v)),
      l$totalAmount,
      l$roundingAdjustment,
      l$haulageCharge,
      l$advanceOffset,
      l$totalFee,
      l$roundingAdjustmentOnFee,
      l$payableAfterCostAndDeduction,
      l$payableAmount,
      l$paymentMethodDetails,
      l$status,
      l$paymentPostingTask,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$cashDeductions = cashDeductions;
    final lOther$cashDeductions = other.cashDeductions;
    if (l$cashDeductions != lOther$cashDeductions) {
      return false;
    }
    final l$needAuthorization = needAuthorization;
    final lOther$needAuthorization = other.needAuthorization;
    if (l$needAuthorization != lOther$needAuthorization) {
      return false;
    }
    final l$authorizationDetails = authorizationDetails;
    final lOther$authorizationDetails = other.authorizationDetails;
    if (l$authorizationDetails != lOther$authorizationDetails) {
      return false;
    }
    final l$paymentRecordItems = paymentRecordItems;
    final lOther$paymentRecordItems = other.paymentRecordItems;
    if (l$paymentRecordItems.length != lOther$paymentRecordItems.length) {
      return false;
    }
    for (int i = 0; i < l$paymentRecordItems.length; i++) {
      final l$paymentRecordItems$entry = l$paymentRecordItems[i];
      final lOther$paymentRecordItems$entry = lOther$paymentRecordItems[i];
      if (l$paymentRecordItems$entry != lOther$paymentRecordItems$entry) {
        return false;
      }
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags.length != lOther$tags.length) {
      return false;
    }
    for (int i = 0; i < l$tags.length; i++) {
      final l$tags$entry = l$tags[i];
      final lOther$tags$entry = lOther$tags[i];
      if (l$tags$entry != lOther$tags$entry) {
        return false;
      }
    }
    final l$extendedProperties = extendedProperties;
    final lOther$extendedProperties = other.extendedProperties;
    if (l$extendedProperties != lOther$extendedProperties) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
      return false;
    }
    final l$ticketIds = ticketIds;
    final lOther$ticketIds = other.ticketIds;
    if (l$ticketIds.length != lOther$ticketIds.length) {
      return false;
    }
    for (int i = 0; i < l$ticketIds.length; i++) {
      final l$ticketIds$entry = l$ticketIds[i];
      final lOther$ticketIds$entry = lOther$ticketIds[i];
      if (l$ticketIds$entry != lOther$ticketIds$entry) {
        return false;
      }
    }
    final l$tickets = tickets;
    final lOther$tickets = other.tickets;
    if (l$tickets.length != lOther$tickets.length) {
      return false;
    }
    for (int i = 0; i < l$tickets.length; i++) {
      final l$tickets$entry = l$tickets[i];
      final lOther$tickets$entry = lOther$tickets[i];
      if (l$tickets$entry != lOther$tickets$entry) {
        return false;
      }
    }
    final l$totalAmount = totalAmount;
    final lOther$totalAmount = other.totalAmount;
    if (l$totalAmount != lOther$totalAmount) {
      return false;
    }
    final l$roundingAdjustment = roundingAdjustment;
    final lOther$roundingAdjustment = other.roundingAdjustment;
    if (l$roundingAdjustment != lOther$roundingAdjustment) {
      return false;
    }
    final l$haulageCharge = haulageCharge;
    final lOther$haulageCharge = other.haulageCharge;
    if (l$haulageCharge != lOther$haulageCharge) {
      return false;
    }
    final l$advanceOffset = advanceOffset;
    final lOther$advanceOffset = other.advanceOffset;
    if (l$advanceOffset != lOther$advanceOffset) {
      return false;
    }
    final l$totalFee = totalFee;
    final lOther$totalFee = other.totalFee;
    if (l$totalFee != lOther$totalFee) {
      return false;
    }
    final l$roundingAdjustmentOnFee = roundingAdjustmentOnFee;
    final lOther$roundingAdjustmentOnFee = other.roundingAdjustmentOnFee;
    if (l$roundingAdjustmentOnFee != lOther$roundingAdjustmentOnFee) {
      return false;
    }
    final l$payableAfterCostAndDeduction = payableAfterCostAndDeduction;
    final lOther$payableAfterCostAndDeduction =
        other.payableAfterCostAndDeduction;
    if (l$payableAfterCostAndDeduction != lOther$payableAfterCostAndDeduction) {
      return false;
    }
    final l$payableAmount = payableAmount;
    final lOther$payableAmount = other.payableAmount;
    if (l$payableAmount != lOther$payableAmount) {
      return false;
    }
    final l$paymentMethodDetails = paymentMethodDetails;
    final lOther$paymentMethodDetails = other.paymentMethodDetails;
    if (l$paymentMethodDetails != lOther$paymentMethodDetails) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$paymentPostingTask = paymentPostingTask;
    final lOther$paymentPostingTask = other.paymentPostingTask;
    if (l$paymentPostingTask != lOther$paymentPostingTask) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord
    on Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord<
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord(
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord;

  TRes call({
    Enum$PaymentMethod? paymentMethod,
    double? cashDeductions,
    bool? needAuthorization,
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails?
    authorizationDetails,
    List<Fragment$PaymentRecordItemFields>? paymentRecordItems,
    String? id,
    List<String>? tags,
    Map<String, dynamic>? extendedProperties,
    bool? active,
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created?
    created,
    String? yardCode,
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified?
    modified,
    List<String>? ticketIds,
    List<
      Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets
    >?
    tickets,
    double? totalAmount,
    double? roundingAdjustment,
    double? haulageCharge,
    double? advanceOffset,
    double? totalFee,
    double? roundingAdjustmentOnFee,
    double? payableAfterCostAndDeduction,
    double? payableAmount,
    Map<String, dynamic>? paymentMethodDetails,
    Enum$PaymentStatus? status,
    Fragment$PaymentPostingTaskFields? paymentPostingTask,
    String? $__typename,
  });
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails<
    TRes
  >
  get authorizationDetails;
  TRes paymentRecordItems(
    Iterable<Fragment$PaymentRecordItemFields> Function(
      Iterable<
        CopyWith$Fragment$PaymentRecordItemFields<
          Fragment$PaymentRecordItemFields
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created<
    TRes
  >
  get created;
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified<
    TRes
  >
  get modified;
  TRes tickets(
    Iterable<
      Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets
    >
    Function(
      Iterable<
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets<
          Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets
        >
      >,
    )
    _fn,
  );
  CopyWith$Fragment$PaymentPostingTaskFields<TRes> get paymentPostingTask;
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentMethod = _undefined,
    Object? cashDeductions = _undefined,
    Object? needAuthorization = _undefined,
    Object? authorizationDetails = _undefined,
    Object? paymentRecordItems = _undefined,
    Object? id = _undefined,
    Object? tags = _undefined,
    Object? extendedProperties = _undefined,
    Object? active = _undefined,
    Object? created = _undefined,
    Object? yardCode = _undefined,
    Object? modified = _undefined,
    Object? ticketIds = _undefined,
    Object? tickets = _undefined,
    Object? totalAmount = _undefined,
    Object? roundingAdjustment = _undefined,
    Object? haulageCharge = _undefined,
    Object? advanceOffset = _undefined,
    Object? totalFee = _undefined,
    Object? roundingAdjustmentOnFee = _undefined,
    Object? payableAfterCostAndDeduction = _undefined,
    Object? payableAmount = _undefined,
    Object? paymentMethodDetails = _undefined,
    Object? status = _undefined,
    Object? paymentPostingTask = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord(
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      cashDeductions: cashDeductions == _undefined || cashDeductions == null
          ? _instance.cashDeductions
          : (cashDeductions as double),
      needAuthorization:
          needAuthorization == _undefined || needAuthorization == null
          ? _instance.needAuthorization
          : (needAuthorization as bool),
      authorizationDetails: authorizationDetails == _undefined
          ? _instance.authorizationDetails
          : (authorizationDetails
                as Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails?),
      paymentRecordItems:
          paymentRecordItems == _undefined || paymentRecordItems == null
          ? _instance.paymentRecordItems
          : (paymentRecordItems as List<Fragment$PaymentRecordItemFields>),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags as List<String>),
      extendedProperties: extendedProperties == _undefined
          ? _instance.extendedProperties
          : (extendedProperties as Map<String, dynamic>?),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified
                as Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified),
      ticketIds: ticketIds == _undefined || ticketIds == null
          ? _instance.ticketIds
          : (ticketIds as List<String>),
      tickets: tickets == _undefined || tickets == null
          ? _instance.tickets
          : (tickets
                as List<
                  Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets
                >),
      totalAmount: totalAmount == _undefined || totalAmount == null
          ? _instance.totalAmount
          : (totalAmount as double),
      roundingAdjustment:
          roundingAdjustment == _undefined || roundingAdjustment == null
          ? _instance.roundingAdjustment
          : (roundingAdjustment as double),
      haulageCharge: haulageCharge == _undefined || haulageCharge == null
          ? _instance.haulageCharge
          : (haulageCharge as double),
      advanceOffset: advanceOffset == _undefined || advanceOffset == null
          ? _instance.advanceOffset
          : (advanceOffset as double),
      totalFee: totalFee == _undefined || totalFee == null
          ? _instance.totalFee
          : (totalFee as double),
      roundingAdjustmentOnFee:
          roundingAdjustmentOnFee == _undefined ||
              roundingAdjustmentOnFee == null
          ? _instance.roundingAdjustmentOnFee
          : (roundingAdjustmentOnFee as double),
      payableAfterCostAndDeduction:
          payableAfterCostAndDeduction == _undefined ||
              payableAfterCostAndDeduction == null
          ? _instance.payableAfterCostAndDeduction
          : (payableAfterCostAndDeduction as double),
      payableAmount: payableAmount == _undefined || payableAmount == null
          ? _instance.payableAmount
          : (payableAmount as double),
      paymentMethodDetails: paymentMethodDetails == _undefined
          ? _instance.paymentMethodDetails
          : (paymentMethodDetails as Map<String, dynamic>?),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$PaymentStatus),
      paymentPostingTask: paymentPostingTask == _undefined
          ? _instance.paymentPostingTask
          : (paymentPostingTask as Fragment$PaymentPostingTaskFields?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails<
    TRes
  >
  get authorizationDetails {
    final local$authorizationDetails = _instance.authorizationDetails;
    return local$authorizationDetails == null
        ? CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails.stub(
            _then(_instance),
          )
        : CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails(
            local$authorizationDetails,
            (e) => call(authorizationDetails: e),
          );
  }

  TRes paymentRecordItems(
    Iterable<Fragment$PaymentRecordItemFields> Function(
      Iterable<
        CopyWith$Fragment$PaymentRecordItemFields<
          Fragment$PaymentRecordItemFields
        >
      >,
    )
    _fn,
  ) => call(
    paymentRecordItems: _fn(
      _instance.paymentRecordItems.map(
        (e) => CopyWith$Fragment$PaymentRecordItemFields(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified<
    TRes
  >
  get modified {
    final local$modified = _instance.modified;
    return CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }

  TRes tickets(
    Iterable<
      Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets
    >
    Function(
      Iterable<
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets<
          Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets
        >
      >,
    )
    _fn,
  ) => call(
    tickets: _fn(
      _instance.tickets.map(
        (e) =>
            CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  CopyWith$Fragment$PaymentPostingTaskFields<TRes> get paymentPostingTask {
    final local$paymentPostingTask = _instance.paymentPostingTask;
    return local$paymentPostingTask == null
        ? CopyWith$Fragment$PaymentPostingTaskFields.stub(_then(_instance))
        : CopyWith$Fragment$PaymentPostingTaskFields(
            local$paymentPostingTask,
            (e) => call(paymentPostingTask: e),
          );
  }
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord(
    this._res,
  );

  TRes _res;

  call({
    Enum$PaymentMethod? paymentMethod,
    double? cashDeductions,
    bool? needAuthorization,
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails?
    authorizationDetails,
    List<Fragment$PaymentRecordItemFields>? paymentRecordItems,
    String? id,
    List<String>? tags,
    Map<String, dynamic>? extendedProperties,
    bool? active,
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created?
    created,
    String? yardCode,
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified?
    modified,
    List<String>? ticketIds,
    List<
      Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets
    >?
    tickets,
    double? totalAmount,
    double? roundingAdjustment,
    double? haulageCharge,
    double? advanceOffset,
    double? totalFee,
    double? roundingAdjustmentOnFee,
    double? payableAfterCostAndDeduction,
    double? payableAmount,
    Map<String, dynamic>? paymentMethodDetails,
    Enum$PaymentStatus? status,
    Fragment$PaymentPostingTaskFields? paymentPostingTask,
    String? $__typename,
  }) => _res;

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails<
    TRes
  >
  get authorizationDetails =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails.stub(
        _res,
      );

  paymentRecordItems(_fn) => _res;

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created<
    TRes
  >
  get created =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created.stub(
        _res,
      );

  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified<
    TRes
  >
  get modified =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified.stub(
        _res,
      );

  tickets(_fn) => _res;

  CopyWith$Fragment$PaymentPostingTaskFields<TRes> get paymentPostingTask =>
      CopyWith$Fragment$PaymentPostingTaskFields.stub(_res);
}

class Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails {
  Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails({
    required this.type,
    required this.referenceId,
    this.$__typename = 'AuthorizationDetails',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$type = json['type'];
    final l$referenceId = json['referenceId'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails(
      type: fromJson$Enum$AuthorizationType((l$type as String)),
      referenceId: (l$referenceId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$AuthorizationType type;

  final String referenceId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = toJson$Enum$AuthorizationType(l$type);
    final l$referenceId = referenceId;
    _resultData['referenceId'] = l$referenceId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$referenceId = referenceId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$type, l$referenceId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$referenceId = referenceId;
    final lOther$referenceId = other.referenceId;
    if (l$referenceId != lOther$referenceId) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails
    on
        Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails<
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails(
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails;

  TRes call({
    Enum$AuthorizationType? type,
    String? referenceId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? referenceId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails(
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$AuthorizationType),
      referenceId: referenceId == _undefined || referenceId == null
          ? _instance.referenceId
          : (referenceId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$authorizationDetails(
    this._res,
  );

  TRes _res;

  call({
    Enum$AuthorizationType? type,
    String? referenceId,
    String? $__typename,
  }) => _res;
}

class Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created {
  Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created({
    required this.userInfoId,
    required this.at,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userInfoId = json['userInfoId'];
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created(
      userInfoId: (l$userInfoId as String),
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String userInfoId;

  final DateTime at;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfoId = userInfoId;
    final l$at = at;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userInfoId, l$at, l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created
    on Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created<
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created(
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created;

  TRes call({
    String? userInfoId,
    DateTime? at,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created(
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$created(
    this._res,
  );

  TRes _res;

  call({
    String? userInfoId,
    DateTime? at,
    String? userName,
    String? $__typename,
  }) => _res;
}

class Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified {
  Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified({
    required this.userInfoId,
    required this.at,
    required this.userName,
    this.$__typename = 'Modified',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userInfoId = json['userInfoId'];
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified(
      userInfoId: (l$userInfoId as String),
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String userInfoId;

  final DateTime at;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfoId = userInfoId;
    final l$at = at;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userInfoId, l$at, l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified
    on Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified<
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified(
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified;

  TRes call({
    String? userInfoId,
    DateTime? at,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified(
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$modified(
    this._res,
  );

  TRes _res;

  call({
    String? userInfoId,
    DateTime? at,
    String? userName,
    String? $__typename,
  }) => _res;
}

class Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets {
  Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets({
    required this.id,
    required this.price,
    required this.provPrice,
    required this.yardCode,
    required this.ticketNumber,
    this.currency,
    required this.account,
    this.$__typename = 'Ticket',
  });

  factory Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$price = json['price'];
    final l$provPrice = json['provPrice'];
    final l$yardCode = json['yardCode'];
    final l$ticketNumber = json['ticketNumber'];
    final l$currency = json['currency'];
    final l$account = json['account'];
    final l$$__typename = json['__typename'];
    return Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets(
      id: (l$id as String),
      price: (l$price as num).toDouble(),
      provPrice: (l$provPrice as num).toDouble(),
      yardCode: (l$yardCode as String),
      ticketNumber: (l$ticketNumber as int),
      currency: (l$currency as String?),
      account: Fragment$TicketAccountFields.fromJson(
        (l$account as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final double price;

  final double provPrice;

  final String yardCode;

  final int ticketNumber;

  final String? currency;

  final Fragment$TicketAccountFields account;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$provPrice = provPrice;
    _resultData['provPrice'] = l$provPrice;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$ticketNumber = ticketNumber;
    _resultData['ticketNumber'] = l$ticketNumber;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$account = account;
    _resultData['account'] = l$account.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$price = price;
    final l$provPrice = provPrice;
    final l$yardCode = yardCode;
    final l$ticketNumber = ticketNumber;
    final l$currency = currency;
    final l$account = account;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$price,
      l$provPrice,
      l$yardCode,
      l$ticketNumber,
      l$currency,
      l$account,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$provPrice = provPrice;
    final lOther$provPrice = other.provPrice;
    if (l$provPrice != lOther$provPrice) {
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
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
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

extension UtilityExtension$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets
    on Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets {
  CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets<
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets
  >
  get copyWith =>
      CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets<
  TRes
> {
  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets(
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets
    instance,
    TRes Function(
      Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets,
    )
    then,
  ) = _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets;

  factory CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets;

  TRes call({
    String? id,
    double? price,
    double? provPrice,
    String? yardCode,
    int? ticketNumber,
    String? currency,
    Fragment$TicketAccountFields? account,
    String? $__typename,
  });
  CopyWith$Fragment$TicketAccountFields<TRes> get account;
}

class _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets<
          TRes
        > {
  _CopyWithImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets(
    this._instance,
    this._then,
  );

  final Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets
  _instance;

  final TRes Function(
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? price = _undefined,
    Object? provPrice = _undefined,
    Object? yardCode = _undefined,
    Object? ticketNumber = _undefined,
    Object? currency = _undefined,
    Object? account = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      price: price == _undefined || price == null
          ? _instance.price
          : (price as double),
      provPrice: provPrice == _undefined || provPrice == null
          ? _instance.provPrice
          : (provPrice as double),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      ticketNumber: ticketNumber == _undefined || ticketNumber == null
          ? _instance.ticketNumber
          : (ticketNumber as int),
      currency: currency == _undefined
          ? _instance.currency
          : (currency as String?),
      account: account == _undefined || account == null
          ? _instance.account
          : (account as Fragment$TicketAccountFields),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$TicketAccountFields<TRes> get account {
    final local$account = _instance.account;
    return CopyWith$Fragment$TicketAccountFields(
      local$account,
      (e) => call(account: e),
    );
  }
}

class _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets<
  TRes
>
    implements
        CopyWith$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets<
          TRes
        > {
  _CopyWithStubImpl$Query$searchCashierTickets$searchCashierTickets$nodes$paymentRecord$tickets(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    double? price,
    double? provPrice,
    String? yardCode,
    int? ticketNumber,
    String? currency,
    Fragment$TicketAccountFields? account,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$TicketAccountFields<TRes> get account =>
      CopyWith$Fragment$TicketAccountFields.stub(_res);
}
