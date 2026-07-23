import '../../../fragments/inventory/ticket/payment_validation_result_fragment.graphql.dart';
import '../../../fragments/payment/advance_fields.graphql.dart';
import '../../../fragments/payments/payment_methods.graphql.dart';
import '../../../schema.graphql.dart';
import 'package:emr_core_api/models/local_date.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchAdvances {
  factory Variables$Query$SearchAdvances({
    String? after,
    String? before,
    int? first,
    int? last,
    List<Input$SearchAdvancesSortInput>? order,
    required Input$AdvancesSearchInput input,
  }) => Variables$Query$SearchAdvances._({
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (order != null) r'order': order,
    r'input': input,
  });

  Variables$Query$SearchAdvances._(this._$data);

  factory Variables$Query$SearchAdvances.fromJson(Map<String, dynamic> data) {
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
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) => Input$SearchAdvancesSortInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    final l$input = data['input'];
    result$data['input'] = Input$AdvancesSearchInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$SearchAdvances._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  List<Input$SearchAdvancesSortInput>? get order =>
      (_$data['order'] as List<Input$SearchAdvancesSortInput>?);

  Input$AdvancesSearchInput get input =>
      (_$data['input'] as Input$AdvancesSearchInput);

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
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$SearchAdvances<Variables$Query$SearchAdvances>
  get copyWith => CopyWith$Variables$Query$SearchAdvances(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchAdvances ||
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
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
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
    final l$order = order;
    final l$input = input;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('order')
          ? l$order == null
                ? null
                : Object.hashAll(l$order.map((v) => v))
          : const {},
      l$input,
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchAdvances<TRes> {
  factory CopyWith$Variables$Query$SearchAdvances(
    Variables$Query$SearchAdvances instance,
    TRes Function(Variables$Query$SearchAdvances) then,
  ) = _CopyWithImpl$Variables$Query$SearchAdvances;

  factory CopyWith$Variables$Query$SearchAdvances.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchAdvances;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    List<Input$SearchAdvancesSortInput>? order,
    Input$AdvancesSearchInput? input,
  });
}

class _CopyWithImpl$Variables$Query$SearchAdvances<TRes>
    implements CopyWith$Variables$Query$SearchAdvances<TRes> {
  _CopyWithImpl$Variables$Query$SearchAdvances(this._instance, this._then);

  final Variables$Query$SearchAdvances _instance;

  final TRes Function(Variables$Query$SearchAdvances) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? order = _undefined,
    Object? input = _undefined,
  }) => _then(
    Variables$Query$SearchAdvances._({
      ..._instance._$data,
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (order != _undefined)
        'order': (order as List<Input$SearchAdvancesSortInput>?),
      if (input != _undefined && input != null)
        'input': (input as Input$AdvancesSearchInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchAdvances<TRes>
    implements CopyWith$Variables$Query$SearchAdvances<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchAdvances(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    List<Input$SearchAdvancesSortInput>? order,
    Input$AdvancesSearchInput? input,
  }) => _res;
}

class Query$SearchAdvances {
  Query$SearchAdvances({this.searchAdvances, this.$__typename = 'Query'});

  factory Query$SearchAdvances.fromJson(Map<String, dynamic> json) {
    final l$searchAdvances = json['searchAdvances'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances(
      searchAdvances: l$searchAdvances == null
          ? null
          : Query$SearchAdvances$searchAdvances.fromJson(
              (l$searchAdvances as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchAdvances$searchAdvances? searchAdvances;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchAdvances = searchAdvances;
    _resultData['searchAdvances'] = l$searchAdvances?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchAdvances = searchAdvances;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchAdvances, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchAdvances || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchAdvances = searchAdvances;
    final lOther$searchAdvances = other.searchAdvances;
    if (l$searchAdvances != lOther$searchAdvances) {
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

extension UtilityExtension$Query$SearchAdvances on Query$SearchAdvances {
  CopyWith$Query$SearchAdvances<Query$SearchAdvances> get copyWith =>
      CopyWith$Query$SearchAdvances(this, (i) => i);
}

abstract class CopyWith$Query$SearchAdvances<TRes> {
  factory CopyWith$Query$SearchAdvances(
    Query$SearchAdvances instance,
    TRes Function(Query$SearchAdvances) then,
  ) = _CopyWithImpl$Query$SearchAdvances;

  factory CopyWith$Query$SearchAdvances.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAdvances;

  TRes call({
    Query$SearchAdvances$searchAdvances? searchAdvances,
    String? $__typename,
  });
  CopyWith$Query$SearchAdvances$searchAdvances<TRes> get searchAdvances;
}

class _CopyWithImpl$Query$SearchAdvances<TRes>
    implements CopyWith$Query$SearchAdvances<TRes> {
  _CopyWithImpl$Query$SearchAdvances(this._instance, this._then);

  final Query$SearchAdvances _instance;

  final TRes Function(Query$SearchAdvances) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchAdvances = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances(
      searchAdvances: searchAdvances == _undefined
          ? _instance.searchAdvances
          : (searchAdvances as Query$SearchAdvances$searchAdvances?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchAdvances$searchAdvances<TRes> get searchAdvances {
    final local$searchAdvances = _instance.searchAdvances;
    return local$searchAdvances == null
        ? CopyWith$Query$SearchAdvances$searchAdvances.stub(_then(_instance))
        : CopyWith$Query$SearchAdvances$searchAdvances(
            local$searchAdvances,
            (e) => call(searchAdvances: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchAdvances<TRes>
    implements CopyWith$Query$SearchAdvances<TRes> {
  _CopyWithStubImpl$Query$SearchAdvances(this._res);

  TRes _res;

  call({
    Query$SearchAdvances$searchAdvances? searchAdvances,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchAdvances$searchAdvances<TRes> get searchAdvances =>
      CopyWith$Query$SearchAdvances$searchAdvances.stub(_res);
}

const documentNodeQuerySearchAdvances = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchAdvances'),
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
          variable: VariableNode(name: NameNode(value: 'order')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'SearchAdvancesSortInput'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'AdvancesSearchInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'searchAdvances'),
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
                name: NameNode(value: 'order'),
                value: VariableNode(name: NameNode(value: 'order')),
              ),
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
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
                        name: NameNode(value: 'AdvanceFields'),
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
                        name: NameNode(value: 'account'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'accountSource'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'accountStatus'),
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
                              name: NameNode(value: 'allowPayment'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'amiceCompanyNumber'),
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
                              name: NameNode(value: 'country'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'currencyId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'customerVatGroupType'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'defaultYardCode'),
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
                              name: NameNode(value: 'financialCustomerGroupId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'financialSupplierGroupId'),
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
                              name: NameNode(value: 'industryGroup'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'lastTicketDate'),
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
                              name: NameNode(value: 'originatingCountry'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'parentAccount'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'portalEnabledContacts'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'preferredPaymentMethod'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'profession'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'prospectId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'reportingFrequency'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'sicCodeId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'supplierVatGroupType'),
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
                              name: NameNode(value: 'territoryId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'type'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'validCompanyIds'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'validTerritoryIds'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'vihbNumber'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'visitFrequency'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'accountContacts'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'key'),
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
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'addressKey'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'contactTypes'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'dateOfBirth'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value: 'extendedProperties',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'firstName'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'jobTitle'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'lastName'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'middleName'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'title'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'signature'),
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
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value: 'proofOfIdentification',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'media'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: 'url',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(value: 'type'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'subType',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'validFrom',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'validTo',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value: 'proofOfAddress',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'media'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: 'url',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(value: 'type'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'subType',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'validFrom',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'validTo',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value: 'contactPreferences',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'mobile'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: 'enabled',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: 'value',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(value: 'email'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: 'enabled',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: 'value',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
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
                              name: NameNode(value: 'celAgreement'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'agreementDate'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'expiryDate'),
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
                              name: NameNode(value: 'bankAccounts'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'bankName'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'accountHolderName'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'accountNumber'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'sortCode'),
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
                              name: NameNode(value: 'prepaymentCards'),
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
                                    name: NameNode(value: 'active'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'panDigits'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'issuerType'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'issueDate'),
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
                        name: NameNode(value: 'company'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'active'),
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
                              name: NameNode(value: 'fullName'),
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
                              name: NameNode(value: 'shortName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'territoryCode'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'territoryId'),
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
                        name: NameNode(value: 'handlingYard'),
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
                              name: NameNode(value: 'name'),
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
                              name: NameNode(value: 'shortName'),
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
                        name: NameNode(value: 'payableYard'),
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
                              name: NameNode(value: 'name'),
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
                              name: NameNode(value: 'shortName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FragmentSpreadNode(
                              name: NameNode(value: 'PaymentMethodFields'),
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
    fragmentDefinitionAdvanceFields,
    fragmentDefinitionPaymentRuleResultFields,
    fragmentDefinitionPaymentMethodFields,
  ],
);

class Query$SearchAdvances$searchAdvances {
  Query$SearchAdvances$searchAdvances({
    required this.pageInfo,
    required this.totalCount,
    this.nodes,
    this.$__typename = 'SearchAdvancesConnection',
  });

  factory Query$SearchAdvances$searchAdvances.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances(
      pageInfo: Query$SearchAdvances$searchAdvances$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$SearchAdvances$searchAdvances$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchAdvances$searchAdvances$pageInfo pageInfo;

  final int totalCount;

  final List<Query$SearchAdvances$searchAdvances$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$totalCount = totalCount;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$totalCount,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchAdvances$searchAdvances ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchAdvances$searchAdvances
    on Query$SearchAdvances$searchAdvances {
  CopyWith$Query$SearchAdvances$searchAdvances<
    Query$SearchAdvances$searchAdvances
  >
  get copyWith => CopyWith$Query$SearchAdvances$searchAdvances(this, (i) => i);
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances<TRes> {
  factory CopyWith$Query$SearchAdvances$searchAdvances(
    Query$SearchAdvances$searchAdvances instance,
    TRes Function(Query$SearchAdvances$searchAdvances) then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances;

  factory CopyWith$Query$SearchAdvances$searchAdvances.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAdvances$searchAdvances;

  TRes call({
    Query$SearchAdvances$searchAdvances$pageInfo? pageInfo,
    int? totalCount,
    List<Query$SearchAdvances$searchAdvances$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SearchAdvances$searchAdvances$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$SearchAdvances$searchAdvances$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchAdvances$searchAdvances$nodes<
          Query$SearchAdvances$searchAdvances$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances<TRes>
    implements CopyWith$Query$SearchAdvances$searchAdvances<TRes> {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances(this._instance, this._then);

  final Query$SearchAdvances$searchAdvances _instance;

  final TRes Function(Query$SearchAdvances$searchAdvances) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances(
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$SearchAdvances$searchAdvances$pageInfo),
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$SearchAdvances$searchAdvances$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchAdvances$searchAdvances$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SearchAdvances$searchAdvances$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$SearchAdvances$searchAdvances$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchAdvances$searchAdvances$nodes<
          Query$SearchAdvances$searchAdvances$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$SearchAdvances$searchAdvances$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances<TRes>
    implements CopyWith$Query$SearchAdvances$searchAdvances<TRes> {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances(this._res);

  TRes _res;

  call({
    Query$SearchAdvances$searchAdvances$pageInfo? pageInfo,
    int? totalCount,
    List<Query$SearchAdvances$searchAdvances$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchAdvances$searchAdvances$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$SearchAdvances$searchAdvances$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$SearchAdvances$searchAdvances$pageInfo {
  Query$SearchAdvances$searchAdvances$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchAdvances$searchAdvances$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$pageInfo(
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
    if (other is! Query$SearchAdvances$searchAdvances$pageInfo ||
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$pageInfo
    on Query$SearchAdvances$searchAdvances$pageInfo {
  CopyWith$Query$SearchAdvances$searchAdvances$pageInfo<
    Query$SearchAdvances$searchAdvances$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$pageInfo<TRes> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$pageInfo(
    Query$SearchAdvances$searchAdvances$pageInfo instance,
    TRes Function(Query$SearchAdvances$searchAdvances$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$pageInfo;

  factory CopyWith$Query$SearchAdvances$searchAdvances$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$pageInfo<TRes>
    implements CopyWith$Query$SearchAdvances$searchAdvances$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$pageInfo _instance;

  final TRes Function(Query$SearchAdvances$searchAdvances$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$pageInfo(
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

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$pageInfo<TRes>
    implements CopyWith$Query$SearchAdvances$searchAdvances$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes
    implements Fragment$AdvanceFields {
  Query$SearchAdvances$searchAdvances$nodes({
    required this.accountId,
    required this.active,
    required this.allowFlexiblePay,
    required this.arrangedByUserId,
    required this.companyId,
    required this.handlingYardId,
    required this.id,
    required this.offsetStatus,
    required this.paidInFullDueDate,
    required this.payableYardId,
    required this.paymentMethod,
    required this.reason,
    this.reference,
    required this.status,
    required this.tags,
    required this.paymentAmount,
    required this.paymentInfo,
    required this.term,
    this.$__typename = 'Advance',
    this.paymentValidationResult,
    this.account,
    this.company,
    this.handlingYard,
    this.payableYard,
  });

  factory Query$SearchAdvances$searchAdvances$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountId = json['accountId'];
    final l$active = json['active'];
    final l$allowFlexiblePay = json['allowFlexiblePay'];
    final l$arrangedByUserId = json['arrangedByUserId'];
    final l$companyId = json['companyId'];
    final l$handlingYardId = json['handlingYardId'];
    final l$id = json['id'];
    final l$offsetStatus = json['offsetStatus'];
    final l$paidInFullDueDate = json['paidInFullDueDate'];
    final l$payableYardId = json['payableYardId'];
    final l$paymentMethod = json['paymentMethod'];
    final l$reason = json['reason'];
    final l$reference = json['reference'];
    final l$status = json['status'];
    final l$tags = json['tags'];
    final l$paymentAmount = json['paymentAmount'];
    final l$paymentInfo = json['paymentInfo'];
    final l$term = json['term'];
    final l$$__typename = json['__typename'];
    final l$paymentValidationResult = json['paymentValidationResult'];
    final l$account = json['account'];
    final l$company = json['company'];
    final l$handlingYard = json['handlingYard'];
    final l$payableYard = json['payableYard'];
    return Query$SearchAdvances$searchAdvances$nodes(
      accountId: (l$accountId as String),
      active: (l$active as bool),
      allowFlexiblePay: (l$allowFlexiblePay as bool),
      arrangedByUserId: (l$arrangedByUserId as String),
      companyId: (l$companyId as String),
      handlingYardId: (l$handlingYardId as String),
      id: (l$id as String),
      offsetStatus: fromJson$Enum$OffsetStatus((l$offsetStatus as String)),
      paidInFullDueDate: DateTime.parse((l$paidInFullDueDate as String)),
      payableYardId: (l$payableYardId as String),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      reason: fromJson$Enum$AdvanceReason((l$reason as String)),
      reference: (l$reference as String?),
      status: fromJson$Enum$AdvanceStatus((l$status as String)),
      tags: (l$tags as List<dynamic>).map((e) => (e as String)).toList(),
      paymentAmount:
          Query$SearchAdvances$searchAdvances$nodes$paymentAmount.fromJson(
            (l$paymentAmount as Map<String, dynamic>),
          ),
      paymentInfo:
          Query$SearchAdvances$searchAdvances$nodes$paymentInfo.fromJson(
            (l$paymentInfo as Map<String, dynamic>),
          ),
      term: Query$SearchAdvances$searchAdvances$nodes$term.fromJson(
        (l$term as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
      paymentValidationResult: l$paymentValidationResult == null
          ? null
          : Fragment$PaymentRuleResultFields.fromJson(
              (l$paymentValidationResult as Map<String, dynamic>),
            ),
      account: l$account == null
          ? null
          : Query$SearchAdvances$searchAdvances$nodes$account.fromJson(
              (l$account as Map<String, dynamic>),
            ),
      company: l$company == null
          ? null
          : Query$SearchAdvances$searchAdvances$nodes$company.fromJson(
              (l$company as Map<String, dynamic>),
            ),
      handlingYard: l$handlingYard == null
          ? null
          : Query$SearchAdvances$searchAdvances$nodes$handlingYard.fromJson(
              (l$handlingYard as Map<String, dynamic>),
            ),
      payableYard: l$payableYard == null
          ? null
          : Query$SearchAdvances$searchAdvances$nodes$payableYard.fromJson(
              (l$payableYard as Map<String, dynamic>),
            ),
    );
  }

  final String accountId;

  final bool active;

  final bool allowFlexiblePay;

  final String arrangedByUserId;

  final String companyId;

  final String handlingYardId;

  final String id;

  final Enum$OffsetStatus offsetStatus;

  final DateTime paidInFullDueDate;

  final String payableYardId;

  final Enum$PaymentMethod paymentMethod;

  final Enum$AdvanceReason reason;

  final String? reference;

  final Enum$AdvanceStatus status;

  final List<String> tags;

  final Query$SearchAdvances$searchAdvances$nodes$paymentAmount paymentAmount;

  final Query$SearchAdvances$searchAdvances$nodes$paymentInfo paymentInfo;

  final Query$SearchAdvances$searchAdvances$nodes$term term;

  final String $__typename;

  final Fragment$PaymentRuleResultFields? paymentValidationResult;

  final Query$SearchAdvances$searchAdvances$nodes$account? account;

  final Query$SearchAdvances$searchAdvances$nodes$company? company;

  final Query$SearchAdvances$searchAdvances$nodes$handlingYard? handlingYard;

  final Query$SearchAdvances$searchAdvances$nodes$payableYard? payableYard;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountId = accountId;
    _resultData['accountId'] = l$accountId;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$allowFlexiblePay = allowFlexiblePay;
    _resultData['allowFlexiblePay'] = l$allowFlexiblePay;
    final l$arrangedByUserId = arrangedByUserId;
    _resultData['arrangedByUserId'] = l$arrangedByUserId;
    final l$companyId = companyId;
    _resultData['companyId'] = l$companyId;
    final l$handlingYardId = handlingYardId;
    _resultData['handlingYardId'] = l$handlingYardId;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$offsetStatus = offsetStatus;
    _resultData['offsetStatus'] = toJson$Enum$OffsetStatus(l$offsetStatus);
    final l$paidInFullDueDate = paidInFullDueDate;
    _resultData['paidInFullDueDate'] = l$paidInFullDueDate.toIso8601String();
    final l$payableYardId = payableYardId;
    _resultData['payableYardId'] = l$payableYardId;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$reason = reason;
    _resultData['reason'] = toJson$Enum$AdvanceReason(l$reason);
    final l$reference = reference;
    _resultData['reference'] = l$reference;
    final l$status = status;
    _resultData['status'] = toJson$Enum$AdvanceStatus(l$status);
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e).toList();
    final l$paymentAmount = paymentAmount;
    _resultData['paymentAmount'] = l$paymentAmount.toJson();
    final l$paymentInfo = paymentInfo;
    _resultData['paymentInfo'] = l$paymentInfo.toJson();
    final l$term = term;
    _resultData['term'] = l$term.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$paymentValidationResult = paymentValidationResult;
    _resultData['paymentValidationResult'] = l$paymentValidationResult
        ?.toJson();
    final l$account = account;
    _resultData['account'] = l$account?.toJson();
    final l$company = company;
    _resultData['company'] = l$company?.toJson();
    final l$handlingYard = handlingYard;
    _resultData['handlingYard'] = l$handlingYard?.toJson();
    final l$payableYard = payableYard;
    _resultData['payableYard'] = l$payableYard?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountId = accountId;
    final l$active = active;
    final l$allowFlexiblePay = allowFlexiblePay;
    final l$arrangedByUserId = arrangedByUserId;
    final l$companyId = companyId;
    final l$handlingYardId = handlingYardId;
    final l$id = id;
    final l$offsetStatus = offsetStatus;
    final l$paidInFullDueDate = paidInFullDueDate;
    final l$payableYardId = payableYardId;
    final l$paymentMethod = paymentMethod;
    final l$reason = reason;
    final l$reference = reference;
    final l$status = status;
    final l$tags = tags;
    final l$paymentAmount = paymentAmount;
    final l$paymentInfo = paymentInfo;
    final l$term = term;
    final l$$__typename = $__typename;
    final l$paymentValidationResult = paymentValidationResult;
    final l$account = account;
    final l$company = company;
    final l$handlingYard = handlingYard;
    final l$payableYard = payableYard;
    return Object.hashAll([
      l$accountId,
      l$active,
      l$allowFlexiblePay,
      l$arrangedByUserId,
      l$companyId,
      l$handlingYardId,
      l$id,
      l$offsetStatus,
      l$paidInFullDueDate,
      l$payableYardId,
      l$paymentMethod,
      l$reason,
      l$reference,
      l$status,
      Object.hashAll(l$tags.map((v) => v)),
      l$paymentAmount,
      l$paymentInfo,
      l$term,
      l$$__typename,
      l$paymentValidationResult,
      l$account,
      l$company,
      l$handlingYard,
      l$payableYard,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchAdvances$searchAdvances$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$allowFlexiblePay = allowFlexiblePay;
    final lOther$allowFlexiblePay = other.allowFlexiblePay;
    if (l$allowFlexiblePay != lOther$allowFlexiblePay) {
      return false;
    }
    final l$arrangedByUserId = arrangedByUserId;
    final lOther$arrangedByUserId = other.arrangedByUserId;
    if (l$arrangedByUserId != lOther$arrangedByUserId) {
      return false;
    }
    final l$companyId = companyId;
    final lOther$companyId = other.companyId;
    if (l$companyId != lOther$companyId) {
      return false;
    }
    final l$handlingYardId = handlingYardId;
    final lOther$handlingYardId = other.handlingYardId;
    if (l$handlingYardId != lOther$handlingYardId) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$offsetStatus = offsetStatus;
    final lOther$offsetStatus = other.offsetStatus;
    if (l$offsetStatus != lOther$offsetStatus) {
      return false;
    }
    final l$paidInFullDueDate = paidInFullDueDate;
    final lOther$paidInFullDueDate = other.paidInFullDueDate;
    if (l$paidInFullDueDate != lOther$paidInFullDueDate) {
      return false;
    }
    final l$payableYardId = payableYardId;
    final lOther$payableYardId = other.payableYardId;
    if (l$payableYardId != lOther$payableYardId) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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
    final l$paymentAmount = paymentAmount;
    final lOther$paymentAmount = other.paymentAmount;
    if (l$paymentAmount != lOther$paymentAmount) {
      return false;
    }
    final l$paymentInfo = paymentInfo;
    final lOther$paymentInfo = other.paymentInfo;
    if (l$paymentInfo != lOther$paymentInfo) {
      return false;
    }
    final l$term = term;
    final lOther$term = other.term;
    if (l$term != lOther$term) {
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
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
      return false;
    }
    final l$company = company;
    final lOther$company = other.company;
    if (l$company != lOther$company) {
      return false;
    }
    final l$handlingYard = handlingYard;
    final lOther$handlingYard = other.handlingYard;
    if (l$handlingYard != lOther$handlingYard) {
      return false;
    }
    final l$payableYard = payableYard;
    final lOther$payableYard = other.payableYard;
    if (l$payableYard != lOther$payableYard) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes
    on Query$SearchAdvances$searchAdvances$nodes {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes<
    Query$SearchAdvances$searchAdvances$nodes
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes(this, (i) => i);
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes<TRes> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes(
    Query$SearchAdvances$searchAdvances$nodes instance,
    TRes Function(Query$SearchAdvances$searchAdvances$nodes) then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes;

  TRes call({
    String? accountId,
    bool? active,
    bool? allowFlexiblePay,
    String? arrangedByUserId,
    String? companyId,
    String? handlingYardId,
    String? id,
    Enum$OffsetStatus? offsetStatus,
    DateTime? paidInFullDueDate,
    String? payableYardId,
    Enum$PaymentMethod? paymentMethod,
    Enum$AdvanceReason? reason,
    String? reference,
    Enum$AdvanceStatus? status,
    List<String>? tags,
    Query$SearchAdvances$searchAdvances$nodes$paymentAmount? paymentAmount,
    Query$SearchAdvances$searchAdvances$nodes$paymentInfo? paymentInfo,
    Query$SearchAdvances$searchAdvances$nodes$term? term,
    String? $__typename,
    Fragment$PaymentRuleResultFields? paymentValidationResult,
    Query$SearchAdvances$searchAdvances$nodes$account? account,
    Query$SearchAdvances$searchAdvances$nodes$company? company,
    Query$SearchAdvances$searchAdvances$nodes$handlingYard? handlingYard,
    Query$SearchAdvances$searchAdvances$nodes$payableYard? payableYard,
  });
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentAmount<TRes>
  get paymentAmount;
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo<TRes>
  get paymentInfo;
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$term<TRes> get term;
  CopyWith$Fragment$PaymentRuleResultFields<TRes> get paymentValidationResult;
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account<TRes> get account;
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$company<TRes> get company;
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$handlingYard<TRes>
  get handlingYard;
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard<TRes>
  get payableYard;
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes<TRes>
    implements CopyWith$Query$SearchAdvances$searchAdvances$nodes<TRes> {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes _instance;

  final TRes Function(Query$SearchAdvances$searchAdvances$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountId = _undefined,
    Object? active = _undefined,
    Object? allowFlexiblePay = _undefined,
    Object? arrangedByUserId = _undefined,
    Object? companyId = _undefined,
    Object? handlingYardId = _undefined,
    Object? id = _undefined,
    Object? offsetStatus = _undefined,
    Object? paidInFullDueDate = _undefined,
    Object? payableYardId = _undefined,
    Object? paymentMethod = _undefined,
    Object? reason = _undefined,
    Object? reference = _undefined,
    Object? status = _undefined,
    Object? tags = _undefined,
    Object? paymentAmount = _undefined,
    Object? paymentInfo = _undefined,
    Object? term = _undefined,
    Object? $__typename = _undefined,
    Object? paymentValidationResult = _undefined,
    Object? account = _undefined,
    Object? company = _undefined,
    Object? handlingYard = _undefined,
    Object? payableYard = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes(
      accountId: accountId == _undefined || accountId == null
          ? _instance.accountId
          : (accountId as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      allowFlexiblePay:
          allowFlexiblePay == _undefined || allowFlexiblePay == null
          ? _instance.allowFlexiblePay
          : (allowFlexiblePay as bool),
      arrangedByUserId:
          arrangedByUserId == _undefined || arrangedByUserId == null
          ? _instance.arrangedByUserId
          : (arrangedByUserId as String),
      companyId: companyId == _undefined || companyId == null
          ? _instance.companyId
          : (companyId as String),
      handlingYardId: handlingYardId == _undefined || handlingYardId == null
          ? _instance.handlingYardId
          : (handlingYardId as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      offsetStatus: offsetStatus == _undefined || offsetStatus == null
          ? _instance.offsetStatus
          : (offsetStatus as Enum$OffsetStatus),
      paidInFullDueDate:
          paidInFullDueDate == _undefined || paidInFullDueDate == null
          ? _instance.paidInFullDueDate
          : (paidInFullDueDate as DateTime),
      payableYardId: payableYardId == _undefined || payableYardId == null
          ? _instance.payableYardId
          : (payableYardId as String),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      reason: reason == _undefined || reason == null
          ? _instance.reason
          : (reason as Enum$AdvanceReason),
      reference: reference == _undefined
          ? _instance.reference
          : (reference as String?),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$AdvanceStatus),
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags as List<String>),
      paymentAmount: paymentAmount == _undefined || paymentAmount == null
          ? _instance.paymentAmount
          : (paymentAmount
                as Query$SearchAdvances$searchAdvances$nodes$paymentAmount),
      paymentInfo: paymentInfo == _undefined || paymentInfo == null
          ? _instance.paymentInfo
          : (paymentInfo
                as Query$SearchAdvances$searchAdvances$nodes$paymentInfo),
      term: term == _undefined || term == null
          ? _instance.term
          : (term as Query$SearchAdvances$searchAdvances$nodes$term),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      paymentValidationResult: paymentValidationResult == _undefined
          ? _instance.paymentValidationResult
          : (paymentValidationResult as Fragment$PaymentRuleResultFields?),
      account: account == _undefined
          ? _instance.account
          : (account as Query$SearchAdvances$searchAdvances$nodes$account?),
      company: company == _undefined
          ? _instance.company
          : (company as Query$SearchAdvances$searchAdvances$nodes$company?),
      handlingYard: handlingYard == _undefined
          ? _instance.handlingYard
          : (handlingYard
                as Query$SearchAdvances$searchAdvances$nodes$handlingYard?),
      payableYard: payableYard == _undefined
          ? _instance.payableYard
          : (payableYard
                as Query$SearchAdvances$searchAdvances$nodes$payableYard?),
    ),
  );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentAmount<TRes>
  get paymentAmount {
    final local$paymentAmount = _instance.paymentAmount;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentAmount(
      local$paymentAmount,
      (e) => call(paymentAmount: e),
    );
  }

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo<TRes>
  get paymentInfo {
    final local$paymentInfo = _instance.paymentInfo;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo(
      local$paymentInfo,
      (e) => call(paymentInfo: e),
    );
  }

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$term<TRes> get term {
    final local$term = _instance.term;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$term(
      local$term,
      (e) => call(term: e),
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

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account<TRes> get account {
    final local$account = _instance.account;
    return local$account == null
        ? CopyWith$Query$SearchAdvances$searchAdvances$nodes$account.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchAdvances$searchAdvances$nodes$account(
            local$account,
            (e) => call(account: e),
          );
  }

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$company<TRes> get company {
    final local$company = _instance.company;
    return local$company == null
        ? CopyWith$Query$SearchAdvances$searchAdvances$nodes$company.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchAdvances$searchAdvances$nodes$company(
            local$company,
            (e) => call(company: e),
          );
  }

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$handlingYard<TRes>
  get handlingYard {
    final local$handlingYard = _instance.handlingYard;
    return local$handlingYard == null
        ? CopyWith$Query$SearchAdvances$searchAdvances$nodes$handlingYard.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchAdvances$searchAdvances$nodes$handlingYard(
            local$handlingYard,
            (e) => call(handlingYard: e),
          );
  }

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard<TRes>
  get payableYard {
    final local$payableYard = _instance.payableYard;
    return local$payableYard == null
        ? CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard(
            local$payableYard,
            (e) => call(payableYard: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes<TRes>
    implements CopyWith$Query$SearchAdvances$searchAdvances$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes(this._res);

  TRes _res;

  call({
    String? accountId,
    bool? active,
    bool? allowFlexiblePay,
    String? arrangedByUserId,
    String? companyId,
    String? handlingYardId,
    String? id,
    Enum$OffsetStatus? offsetStatus,
    DateTime? paidInFullDueDate,
    String? payableYardId,
    Enum$PaymentMethod? paymentMethod,
    Enum$AdvanceReason? reason,
    String? reference,
    Enum$AdvanceStatus? status,
    List<String>? tags,
    Query$SearchAdvances$searchAdvances$nodes$paymentAmount? paymentAmount,
    Query$SearchAdvances$searchAdvances$nodes$paymentInfo? paymentInfo,
    Query$SearchAdvances$searchAdvances$nodes$term? term,
    String? $__typename,
    Fragment$PaymentRuleResultFields? paymentValidationResult,
    Query$SearchAdvances$searchAdvances$nodes$account? account,
    Query$SearchAdvances$searchAdvances$nodes$company? company,
    Query$SearchAdvances$searchAdvances$nodes$handlingYard? handlingYard,
    Query$SearchAdvances$searchAdvances$nodes$payableYard? payableYard,
  }) => _res;

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentAmount<TRes>
  get paymentAmount =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentAmount.stub(
        _res,
      );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo<TRes>
  get paymentInfo =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo.stub(_res);

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$term<TRes> get term =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$term.stub(_res);

  CopyWith$Fragment$PaymentRuleResultFields<TRes> get paymentValidationResult =>
      CopyWith$Fragment$PaymentRuleResultFields.stub(_res);

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account<TRes>
  get account =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account.stub(_res);

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$company<TRes>
  get company =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$company.stub(_res);

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$handlingYard<TRes>
  get handlingYard =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$handlingYard.stub(
        _res,
      );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard<TRes>
  get payableYard =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard.stub(_res);
}

class Query$SearchAdvances$searchAdvances$nodes$paymentAmount
    implements Fragment$AdvanceFields$paymentAmount {
  Query$SearchAdvances$searchAdvances$nodes$paymentAmount({
    required this.amount,
    required this.currencyCode,
    required this.exchangeRate,
    this.$__typename = 'PaymentAmount',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$paymentAmount.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$amount = json['amount'];
    final l$currencyCode = json['currencyCode'];
    final l$exchangeRate = json['exchangeRate'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$paymentAmount(
      amount: (l$amount as num).toDouble(),
      currencyCode: (l$currencyCode as String),
      exchangeRate: (l$exchangeRate as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double amount;

  final String currencyCode;

  final double exchangeRate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$currencyCode = currencyCode;
    _resultData['currencyCode'] = l$currencyCode;
    final l$exchangeRate = exchangeRate;
    _resultData['exchangeRate'] = l$exchangeRate;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$currencyCode = currencyCode;
    final l$exchangeRate = exchangeRate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$currencyCode,
      l$exchangeRate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchAdvances$searchAdvances$nodes$paymentAmount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) {
      return false;
    }
    final l$exchangeRate = exchangeRate;
    final lOther$exchangeRate = other.exchangeRate;
    if (l$exchangeRate != lOther$exchangeRate) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$paymentAmount
    on Query$SearchAdvances$searchAdvances$nodes$paymentAmount {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentAmount<
    Query$SearchAdvances$searchAdvances$nodes$paymentAmount
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentAmount(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentAmount<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentAmount(
    Query$SearchAdvances$searchAdvances$nodes$paymentAmount instance,
    TRes Function(Query$SearchAdvances$searchAdvances$nodes$paymentAmount) then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$paymentAmount;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentAmount.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$paymentAmount;

  TRes call({
    double? amount,
    String? currencyCode,
    double? exchangeRate,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$paymentAmount<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentAmount<TRes> {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$paymentAmount(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$paymentAmount _instance;

  final TRes Function(Query$SearchAdvances$searchAdvances$nodes$paymentAmount)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? currencyCode = _undefined,
    Object? exchangeRate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$paymentAmount(
      amount: amount == _undefined || amount == null
          ? _instance.amount
          : (amount as double),
      currencyCode: currencyCode == _undefined || currencyCode == null
          ? _instance.currencyCode
          : (currencyCode as String),
      exchangeRate: exchangeRate == _undefined || exchangeRate == null
          ? _instance.exchangeRate
          : (exchangeRate as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$paymentAmount<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentAmount<TRes> {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$paymentAmount(
    this._res,
  );

  TRes _res;

  call({
    double? amount,
    String? currencyCode,
    double? exchangeRate,
    String? $__typename,
  }) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$paymentInfo
    implements Fragment$AdvanceFields$paymentInfo {
  Query$SearchAdvances$searchAdvances$nodes$paymentInfo({
    required this.outstandingBalance,
    required this.transactionDetails,
    this.$__typename = 'AdvancePaymentInfo',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$paymentInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$outstandingBalance = json['outstandingBalance'];
    final l$transactionDetails = json['transactionDetails'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$paymentInfo(
      outstandingBalance: (l$outstandingBalance as num).toDouble(),
      transactionDetails: (l$transactionDetails as List<dynamic>)
          .map(
            (e) =>
                Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final double outstandingBalance;

  final List<
    Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails
  >
  transactionDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$outstandingBalance = outstandingBalance;
    _resultData['outstandingBalance'] = l$outstandingBalance;
    final l$transactionDetails = transactionDetails;
    _resultData['transactionDetails'] = l$transactionDetails
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$outstandingBalance = outstandingBalance;
    final l$transactionDetails = transactionDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$outstandingBalance,
      Object.hashAll(l$transactionDetails.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchAdvances$searchAdvances$nodes$paymentInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$outstandingBalance = outstandingBalance;
    final lOther$outstandingBalance = other.outstandingBalance;
    if (l$outstandingBalance != lOther$outstandingBalance) {
      return false;
    }
    final l$transactionDetails = transactionDetails;
    final lOther$transactionDetails = other.transactionDetails;
    if (l$transactionDetails.length != lOther$transactionDetails.length) {
      return false;
    }
    for (int i = 0; i < l$transactionDetails.length; i++) {
      final l$transactionDetails$entry = l$transactionDetails[i];
      final lOther$transactionDetails$entry = lOther$transactionDetails[i];
      if (l$transactionDetails$entry != lOther$transactionDetails$entry) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$paymentInfo
    on Query$SearchAdvances$searchAdvances$nodes$paymentInfo {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo<
    Query$SearchAdvances$searchAdvances$nodes$paymentInfo
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo(
    Query$SearchAdvances$searchAdvances$nodes$paymentInfo instance,
    TRes Function(Query$SearchAdvances$searchAdvances$nodes$paymentInfo) then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$paymentInfo;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$paymentInfo;

  TRes call({
    double? outstandingBalance,
    List<
      Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails
    >?
    transactionDetails,
    String? $__typename,
  });
  TRes transactionDetails(
    Iterable<
      Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails
    >
    Function(
      Iterable<
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails<
          Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$paymentInfo<TRes>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo<TRes> {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$paymentInfo(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$paymentInfo _instance;

  final TRes Function(Query$SearchAdvances$searchAdvances$nodes$paymentInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? outstandingBalance = _undefined,
    Object? transactionDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$paymentInfo(
      outstandingBalance:
          outstandingBalance == _undefined || outstandingBalance == null
          ? _instance.outstandingBalance
          : (outstandingBalance as double),
      transactionDetails:
          transactionDetails == _undefined || transactionDetails == null
          ? _instance.transactionDetails
          : (transactionDetails
                as List<
                  Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes transactionDetails(
    Iterable<
      Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails
    >
    Function(
      Iterable<
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails<
          Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails
        >
      >,
    )
    _fn,
  ) => call(
    transactionDetails: _fn(
      _instance.transactionDetails.map(
        (e) =>
            CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$paymentInfo<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo<TRes> {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$paymentInfo(
    this._res,
  );

  TRes _res;

  call({
    double? outstandingBalance,
    List<
      Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails
    >?
    transactionDetails,
    String? $__typename,
  }) => _res;

  transactionDetails(_fn) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails
    implements Fragment$AdvanceFields$paymentInfo$transactionDetails {
  Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails({
    required this.paymentRecordId,
    required this.transactionType,
    required this.amount,
    required this.at,
    this.$__typename = 'TransactionDetail',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$paymentRecordId = json['paymentRecordId'];
    final l$transactionType = json['transactionType'];
    final l$amount = json['amount'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails(
      paymentRecordId: (l$paymentRecordId as String),
      transactionType: fromJson$Enum$TransactionType(
        (l$transactionType as String),
      ),
      amount: (l$amount as num).toDouble(),
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String paymentRecordId;

  final Enum$TransactionType transactionType;

  final double amount;

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentRecordId = paymentRecordId;
    _resultData['paymentRecordId'] = l$paymentRecordId;
    final l$transactionType = transactionType;
    _resultData['transactionType'] = toJson$Enum$TransactionType(
      l$transactionType,
    );
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentRecordId = paymentRecordId;
    final l$transactionType = transactionType;
    final l$amount = amount;
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$paymentRecordId,
      l$transactionType,
      l$amount,
      l$at,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentRecordId = paymentRecordId;
    final lOther$paymentRecordId = other.paymentRecordId;
    if (l$paymentRecordId != lOther$paymentRecordId) {
      return false;
    }
    final l$transactionType = transactionType;
    final lOther$transactionType = other.transactionType;
    if (l$transactionType != lOther$transactionType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails
    on Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails<
    Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails(
    Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails;

  TRes call({
    String? paymentRecordId,
    Enum$TransactionType? transactionType,
    double? amount,
    DateTime? at,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentRecordId = _undefined,
    Object? transactionType = _undefined,
    Object? amount = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails(
      paymentRecordId: paymentRecordId == _undefined || paymentRecordId == null
          ? _instance.paymentRecordId
          : (paymentRecordId as String),
      transactionType: transactionType == _undefined || transactionType == null
          ? _instance.transactionType
          : (transactionType as Enum$TransactionType),
      amount: amount == _undefined || amount == null
          ? _instance.amount
          : (amount as double),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$paymentInfo$transactionDetails(
    this._res,
  );

  TRes _res;

  call({
    String? paymentRecordId,
    Enum$TransactionType? transactionType,
    double? amount,
    DateTime? at,
    String? $__typename,
  }) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$term
    implements Fragment$AdvanceFields$term {
  Query$SearchAdvances$searchAdvances$nodes$term({required this.$__typename});

  factory Query$SearchAdvances$searchAdvances$nodes$term.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "FixedTermDetails":
        return Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails.fromJson(
          json,
        );

      case "PartialPayTermDetails":
        return Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails.fromJson(
          json,
        );

      case "PercentageTermDetails":
        return Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Query$SearchAdvances$searchAdvances$nodes$term(
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
    if (other is! Query$SearchAdvances$searchAdvances$nodes$term ||
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$term
    on Query$SearchAdvances$searchAdvances$nodes$term {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$term<
    Query$SearchAdvances$searchAdvances$nodes$term
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$term(this, (i) => i);

  _T when<_T>({
    required _T Function(
      Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails,
    )
    fixedTermDetails,
    required _T Function(
      Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails,
    )
    partialPayTermDetails,
    required _T Function(
      Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails,
    )
    percentageTermDetails,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "FixedTermDetails":
        return fixedTermDetails(
          this
              as Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails,
        );

      case "PartialPayTermDetails":
        return partialPayTermDetails(
          this
              as Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails,
        );

      case "PercentageTermDetails":
        return percentageTermDetails(
          this
              as Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails,
    )?
    fixedTermDetails,
    _T Function(
      Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails,
    )?
    partialPayTermDetails,
    _T Function(
      Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails,
    )?
    percentageTermDetails,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "FixedTermDetails":
        if (fixedTermDetails != null) {
          return fixedTermDetails(
            this
                as Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails,
          );
        } else {
          return orElse();
        }

      case "PartialPayTermDetails":
        if (partialPayTermDetails != null) {
          return partialPayTermDetails(
            this
                as Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails,
          );
        } else {
          return orElse();
        }

      case "PercentageTermDetails":
        if (percentageTermDetails != null) {
          return percentageTermDetails(
            this
                as Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$term<TRes> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$term(
    Query$SearchAdvances$searchAdvances$nodes$term instance,
    TRes Function(Query$SearchAdvances$searchAdvances$nodes$term) then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$term;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$term.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$term;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$term<TRes>
    implements CopyWith$Query$SearchAdvances$searchAdvances$nodes$term<TRes> {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$term(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$term _instance;

  final TRes Function(Query$SearchAdvances$searchAdvances$nodes$term) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Query$SearchAdvances$searchAdvances$nodes$term(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$term<TRes>
    implements CopyWith$Query$SearchAdvances$searchAdvances$nodes$term<TRes> {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$term(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails
    implements
        Fragment$AdvanceFields$term$$FixedTermDetails,
        Query$SearchAdvances$searchAdvances$nodes$term {
  Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails({
    required this.amount,
    required this.termType,
    this.$__typename = 'FixedTermDetails',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$amount = json['amount'];
    final l$termType = json['termType'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails(
      amount: (l$amount as num).toDouble(),
      termType: fromJson$Enum$AdvanceTermType((l$termType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final double amount;

  final Enum$AdvanceTermType termType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$termType = termType;
    _resultData['termType'] = toJson$Enum$AdvanceTermType(l$termType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$termType = termType;
    final l$$__typename = $__typename;
    return Object.hashAll([l$amount, l$termType, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$termType = termType;
    final lOther$termType = other.termType;
    if (l$termType != lOther$termType) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails
    on Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails<
    Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails(
    Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails;

  TRes call({
    double? amount,
    Enum$AdvanceTermType? termType,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? termType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails(
      amount: amount == _undefined || amount == null
          ? _instance.amount
          : (amount as double),
      termType: termType == _undefined || termType == null
          ? _instance.termType
          : (termType as Enum$AdvanceTermType),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$term$$FixedTermDetails(
    this._res,
  );

  TRes _res;

  call({double? amount, Enum$AdvanceTermType? termType, String? $__typename}) =>
      _res;
}

class Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails
    implements
        Fragment$AdvanceFields$term$$PartialPayTermDetails,
        Query$SearchAdvances$searchAdvances$nodes$term {
  Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails({
    required this.termType,
    required this.ticketIds,
    this.$__typename = 'PartialPayTermDetails',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$termType = json['termType'];
    final l$ticketIds = json['ticketIds'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails(
      termType: fromJson$Enum$AdvanceTermType((l$termType as String)),
      ticketIds: (l$ticketIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$AdvanceTermType termType;

  final List<String> ticketIds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$termType = termType;
    _resultData['termType'] = toJson$Enum$AdvanceTermType(l$termType);
    final l$ticketIds = ticketIds;
    _resultData['ticketIds'] = l$ticketIds.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$termType = termType;
    final l$ticketIds = ticketIds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$termType,
      Object.hashAll(l$ticketIds.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$termType = termType;
    final lOther$termType = other.termType;
    if (l$termType != lOther$termType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails
    on Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails<
    Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails(
    Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails;

  TRes call({
    Enum$AdvanceTermType? termType,
    List<String>? ticketIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? termType = _undefined,
    Object? ticketIds = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails(
      termType: termType == _undefined || termType == null
          ? _instance.termType
          : (termType as Enum$AdvanceTermType),
      ticketIds: ticketIds == _undefined || ticketIds == null
          ? _instance.ticketIds
          : (ticketIds as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$term$$PartialPayTermDetails(
    this._res,
  );

  TRes _res;

  call({
    Enum$AdvanceTermType? termType,
    List<String>? ticketIds,
    String? $__typename,
  }) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails
    implements
        Fragment$AdvanceFields$term$$PercentageTermDetails,
        Query$SearchAdvances$searchAdvances$nodes$term {
  Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails({
    required this.amount,
    required this.percentage,
    required this.termType,
    this.$__typename = 'PercentageTermDetails',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$amount = json['amount'];
    final l$percentage = json['percentage'];
    final l$termType = json['termType'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails(
      amount: (l$amount as num).toDouble(),
      percentage: (l$percentage as num).toDouble(),
      termType: fromJson$Enum$AdvanceTermType((l$termType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final double amount;

  final double percentage;

  final Enum$AdvanceTermType termType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$percentage = percentage;
    _resultData['percentage'] = l$percentage;
    final l$termType = termType;
    _resultData['termType'] = toJson$Enum$AdvanceTermType(l$termType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$percentage = percentage;
    final l$termType = termType;
    final l$$__typename = $__typename;
    return Object.hashAll([l$amount, l$percentage, l$termType, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$percentage = percentage;
    final lOther$percentage = other.percentage;
    if (l$percentage != lOther$percentage) {
      return false;
    }
    final l$termType = termType;
    final lOther$termType = other.termType;
    if (l$termType != lOther$termType) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails
    on Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails<
    Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails(
    Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails;

  TRes call({
    double? amount,
    double? percentage,
    Enum$AdvanceTermType? termType,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? percentage = _undefined,
    Object? termType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails(
      amount: amount == _undefined || amount == null
          ? _instance.amount
          : (amount as double),
      percentage: percentage == _undefined || percentage == null
          ? _instance.percentage
          : (percentage as double),
      termType: termType == _undefined || termType == null
          ? _instance.termType
          : (termType as Enum$AdvanceTermType),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$term$$PercentageTermDetails(
    this._res,
  );

  TRes _res;

  call({
    double? amount,
    double? percentage,
    Enum$AdvanceTermType? termType,
    String? $__typename,
  }) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$account {
  Query$SearchAdvances$searchAdvances$nodes$account({
    required this.accountSource,
    required this.accountStatus,
    required this.active,
    required this.allowPayment,
    this.amiceCompanyNumber,
    required this.code,
    this.country,
    required this.currencyId,
    required this.customerVatGroupType,
    this.defaultYardCode,
    this.extendedProperties,
    this.financialCustomerGroupId,
    this.financialSupplierGroupId,
    required this.id,
    this.industryGroup,
    this.lastTicketDate,
    required this.name,
    required this.originatingCountry,
    this.parentAccount,
    required this.portalEnabledContacts,
    required this.preferredPaymentMethod,
    this.profession,
    required this.prospectId,
    this.reportingFrequency,
    this.sicCodeId,
    required this.supplierVatGroupType,
    required this.tags,
    required this.territoryId,
    required this.type,
    required this.validCompanyIds,
    required this.validTerritoryIds,
    this.vihbNumber,
    this.visitFrequency,
    this.accountContacts,
    this.celAgreement,
    required this.bankAccounts,
    required this.prepaymentCards,
    this.$__typename = 'Account',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountSource = json['accountSource'];
    final l$accountStatus = json['accountStatus'];
    final l$active = json['active'];
    final l$allowPayment = json['allowPayment'];
    final l$amiceCompanyNumber = json['amiceCompanyNumber'];
    final l$code = json['code'];
    final l$country = json['country'];
    final l$currencyId = json['currencyId'];
    final l$customerVatGroupType = json['customerVatGroupType'];
    final l$defaultYardCode = json['defaultYardCode'];
    final l$extendedProperties = json['extendedProperties'];
    final l$financialCustomerGroupId = json['financialCustomerGroupId'];
    final l$financialSupplierGroupId = json['financialSupplierGroupId'];
    final l$id = json['id'];
    final l$industryGroup = json['industryGroup'];
    final l$lastTicketDate = json['lastTicketDate'];
    final l$name = json['name'];
    final l$originatingCountry = json['originatingCountry'];
    final l$parentAccount = json['parentAccount'];
    final l$portalEnabledContacts = json['portalEnabledContacts'];
    final l$preferredPaymentMethod = json['preferredPaymentMethod'];
    final l$profession = json['profession'];
    final l$prospectId = json['prospectId'];
    final l$reportingFrequency = json['reportingFrequency'];
    final l$sicCodeId = json['sicCodeId'];
    final l$supplierVatGroupType = json['supplierVatGroupType'];
    final l$tags = json['tags'];
    final l$territoryId = json['territoryId'];
    final l$type = json['type'];
    final l$validCompanyIds = json['validCompanyIds'];
    final l$validTerritoryIds = json['validTerritoryIds'];
    final l$vihbNumber = json['vihbNumber'];
    final l$visitFrequency = json['visitFrequency'];
    final l$accountContacts = json['accountContacts'];
    final l$celAgreement = json['celAgreement'];
    final l$bankAccounts = json['bankAccounts'];
    final l$prepaymentCards = json['prepaymentCards'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$account(
      accountSource: fromJson$Enum$AccountSource((l$accountSource as String)),
      accountStatus: fromJson$Enum$AccountStatus((l$accountStatus as String)),
      active: (l$active as bool),
      allowPayment: (l$allowPayment as bool),
      amiceCompanyNumber: (l$amiceCompanyNumber as int?),
      code: (l$code as String),
      country: (l$country as String?),
      currencyId: (l$currencyId as String),
      customerVatGroupType: fromJson$Enum$VatGroupType(
        (l$customerVatGroupType as String),
      ),
      defaultYardCode: (l$defaultYardCode as String?),
      extendedProperties: (l$extendedProperties as Map<String, dynamic>?),
      financialCustomerGroupId: (l$financialCustomerGroupId as String?),
      financialSupplierGroupId: (l$financialSupplierGroupId as String?),
      id: (l$id as String),
      industryGroup: (l$industryGroup as String?),
      lastTicketDate: l$lastTicketDate == null
          ? null
          : LocalDate.fromJson(l$lastTicketDate),
      name: (l$name as String),
      originatingCountry: (l$originatingCountry as String),
      parentAccount: (l$parentAccount as String?),
      portalEnabledContacts: (l$portalEnabledContacts as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      preferredPaymentMethod: fromJson$Enum$PaymentMethod(
        (l$preferredPaymentMethod as String),
      ),
      profession: (l$profession as String?),
      prospectId: (l$prospectId as String),
      reportingFrequency: (l$reportingFrequency as String?),
      sicCodeId: (l$sicCodeId as String?),
      supplierVatGroupType: fromJson$Enum$VatGroupType(
        (l$supplierVatGroupType as String),
      ),
      tags: (l$tags as List<dynamic>).map((e) => (e as String)).toList(),
      territoryId: (l$territoryId as String),
      type: fromJson$Enum$AccountType((l$type as String)),
      validCompanyIds: (l$validCompanyIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      validTerritoryIds: (l$validTerritoryIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      vihbNumber: (l$vihbNumber as String?),
      visitFrequency: (l$visitFrequency as String?),
      accountContacts: (l$accountContacts as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$SearchAdvances$searchAdvances$nodes$account$accountContacts.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      celAgreement: l$celAgreement == null
          ? null
          : Query$SearchAdvances$searchAdvances$nodes$account$celAgreement.fromJson(
              (l$celAgreement as Map<String, dynamic>),
            ),
      bankAccounts: (l$bankAccounts as List<dynamic>)
          .map(
            (e) =>
                Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      prepaymentCards: (l$prepaymentCards as List<dynamic>)
          .map(
            (e) =>
                Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$AccountSource accountSource;

  final Enum$AccountStatus accountStatus;

  final bool active;

  final bool allowPayment;

  final int? amiceCompanyNumber;

  final String code;

  final String? country;

  final String currencyId;

  final Enum$VatGroupType customerVatGroupType;

  final String? defaultYardCode;

  final Map<String, dynamic>? extendedProperties;

  final String? financialCustomerGroupId;

  final String? financialSupplierGroupId;

  final String id;

  final String? industryGroup;

  final DateTime? lastTicketDate;

  final String name;

  final String originatingCountry;

  final String? parentAccount;

  final List<String> portalEnabledContacts;

  final Enum$PaymentMethod preferredPaymentMethod;

  final String? profession;

  final String prospectId;

  final String? reportingFrequency;

  final String? sicCodeId;

  final Enum$VatGroupType supplierVatGroupType;

  final List<String> tags;

  final String territoryId;

  final Enum$AccountType type;

  final List<String> validCompanyIds;

  final List<String> validTerritoryIds;

  final String? vihbNumber;

  final String? visitFrequency;

  final List<
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts?
  >?
  accountContacts;

  final Query$SearchAdvances$searchAdvances$nodes$account$celAgreement?
  celAgreement;

  final List<Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts>
  bankAccounts;

  final List<Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards>
  prepaymentCards;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountSource = accountSource;
    _resultData['accountSource'] = toJson$Enum$AccountSource(l$accountSource);
    final l$accountStatus = accountStatus;
    _resultData['accountStatus'] = toJson$Enum$AccountStatus(l$accountStatus);
    final l$active = active;
    _resultData['active'] = l$active;
    final l$allowPayment = allowPayment;
    _resultData['allowPayment'] = l$allowPayment;
    final l$amiceCompanyNumber = amiceCompanyNumber;
    _resultData['amiceCompanyNumber'] = l$amiceCompanyNumber;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$country = country;
    _resultData['country'] = l$country;
    final l$currencyId = currencyId;
    _resultData['currencyId'] = l$currencyId;
    final l$customerVatGroupType = customerVatGroupType;
    _resultData['customerVatGroupType'] = toJson$Enum$VatGroupType(
      l$customerVatGroupType,
    );
    final l$defaultYardCode = defaultYardCode;
    _resultData['defaultYardCode'] = l$defaultYardCode;
    final l$extendedProperties = extendedProperties;
    _resultData['extendedProperties'] = l$extendedProperties;
    final l$financialCustomerGroupId = financialCustomerGroupId;
    _resultData['financialCustomerGroupId'] = l$financialCustomerGroupId;
    final l$financialSupplierGroupId = financialSupplierGroupId;
    _resultData['financialSupplierGroupId'] = l$financialSupplierGroupId;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$industryGroup = industryGroup;
    _resultData['industryGroup'] = l$industryGroup;
    final l$lastTicketDate = lastTicketDate;
    _resultData['lastTicketDate'] = l$lastTicketDate == null
        ? null
        : LocalDate.toJson(l$lastTicketDate);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$originatingCountry = originatingCountry;
    _resultData['originatingCountry'] = l$originatingCountry;
    final l$parentAccount = parentAccount;
    _resultData['parentAccount'] = l$parentAccount;
    final l$portalEnabledContacts = portalEnabledContacts;
    _resultData['portalEnabledContacts'] = l$portalEnabledContacts
        .map((e) => e)
        .toList();
    final l$preferredPaymentMethod = preferredPaymentMethod;
    _resultData['preferredPaymentMethod'] = toJson$Enum$PaymentMethod(
      l$preferredPaymentMethod,
    );
    final l$profession = profession;
    _resultData['profession'] = l$profession;
    final l$prospectId = prospectId;
    _resultData['prospectId'] = l$prospectId;
    final l$reportingFrequency = reportingFrequency;
    _resultData['reportingFrequency'] = l$reportingFrequency;
    final l$sicCodeId = sicCodeId;
    _resultData['sicCodeId'] = l$sicCodeId;
    final l$supplierVatGroupType = supplierVatGroupType;
    _resultData['supplierVatGroupType'] = toJson$Enum$VatGroupType(
      l$supplierVatGroupType,
    );
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e).toList();
    final l$territoryId = territoryId;
    _resultData['territoryId'] = l$territoryId;
    final l$type = type;
    _resultData['type'] = toJson$Enum$AccountType(l$type);
    final l$validCompanyIds = validCompanyIds;
    _resultData['validCompanyIds'] = l$validCompanyIds.map((e) => e).toList();
    final l$validTerritoryIds = validTerritoryIds;
    _resultData['validTerritoryIds'] = l$validTerritoryIds
        .map((e) => e)
        .toList();
    final l$vihbNumber = vihbNumber;
    _resultData['vihbNumber'] = l$vihbNumber;
    final l$visitFrequency = visitFrequency;
    _resultData['visitFrequency'] = l$visitFrequency;
    final l$accountContacts = accountContacts;
    _resultData['accountContacts'] = l$accountContacts
        ?.map((e) => e?.toJson())
        .toList();
    final l$celAgreement = celAgreement;
    _resultData['celAgreement'] = l$celAgreement?.toJson();
    final l$bankAccounts = bankAccounts;
    _resultData['bankAccounts'] = l$bankAccounts
        .map((e) => e.toJson())
        .toList();
    final l$prepaymentCards = prepaymentCards;
    _resultData['prepaymentCards'] = l$prepaymentCards
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountSource = accountSource;
    final l$accountStatus = accountStatus;
    final l$active = active;
    final l$allowPayment = allowPayment;
    final l$amiceCompanyNumber = amiceCompanyNumber;
    final l$code = code;
    final l$country = country;
    final l$currencyId = currencyId;
    final l$customerVatGroupType = customerVatGroupType;
    final l$defaultYardCode = defaultYardCode;
    final l$extendedProperties = extendedProperties;
    final l$financialCustomerGroupId = financialCustomerGroupId;
    final l$financialSupplierGroupId = financialSupplierGroupId;
    final l$id = id;
    final l$industryGroup = industryGroup;
    final l$lastTicketDate = lastTicketDate;
    final l$name = name;
    final l$originatingCountry = originatingCountry;
    final l$parentAccount = parentAccount;
    final l$portalEnabledContacts = portalEnabledContacts;
    final l$preferredPaymentMethod = preferredPaymentMethod;
    final l$profession = profession;
    final l$prospectId = prospectId;
    final l$reportingFrequency = reportingFrequency;
    final l$sicCodeId = sicCodeId;
    final l$supplierVatGroupType = supplierVatGroupType;
    final l$tags = tags;
    final l$territoryId = territoryId;
    final l$type = type;
    final l$validCompanyIds = validCompanyIds;
    final l$validTerritoryIds = validTerritoryIds;
    final l$vihbNumber = vihbNumber;
    final l$visitFrequency = visitFrequency;
    final l$accountContacts = accountContacts;
    final l$celAgreement = celAgreement;
    final l$bankAccounts = bankAccounts;
    final l$prepaymentCards = prepaymentCards;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountSource,
      l$accountStatus,
      l$active,
      l$allowPayment,
      l$amiceCompanyNumber,
      l$code,
      l$country,
      l$currencyId,
      l$customerVatGroupType,
      l$defaultYardCode,
      l$extendedProperties,
      l$financialCustomerGroupId,
      l$financialSupplierGroupId,
      l$id,
      l$industryGroup,
      l$lastTicketDate,
      l$name,
      l$originatingCountry,
      l$parentAccount,
      Object.hashAll(l$portalEnabledContacts.map((v) => v)),
      l$preferredPaymentMethod,
      l$profession,
      l$prospectId,
      l$reportingFrequency,
      l$sicCodeId,
      l$supplierVatGroupType,
      Object.hashAll(l$tags.map((v) => v)),
      l$territoryId,
      l$type,
      Object.hashAll(l$validCompanyIds.map((v) => v)),
      Object.hashAll(l$validTerritoryIds.map((v) => v)),
      l$vihbNumber,
      l$visitFrequency,
      l$accountContacts == null
          ? null
          : Object.hashAll(l$accountContacts.map((v) => v)),
      l$celAgreement,
      Object.hashAll(l$bankAccounts.map((v) => v)),
      Object.hashAll(l$prepaymentCards.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchAdvances$searchAdvances$nodes$account ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountSource = accountSource;
    final lOther$accountSource = other.accountSource;
    if (l$accountSource != lOther$accountSource) {
      return false;
    }
    final l$accountStatus = accountStatus;
    final lOther$accountStatus = other.accountStatus;
    if (l$accountStatus != lOther$accountStatus) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$allowPayment = allowPayment;
    final lOther$allowPayment = other.allowPayment;
    if (l$allowPayment != lOther$allowPayment) {
      return false;
    }
    final l$amiceCompanyNumber = amiceCompanyNumber;
    final lOther$amiceCompanyNumber = other.amiceCompanyNumber;
    if (l$amiceCompanyNumber != lOther$amiceCompanyNumber) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$currencyId = currencyId;
    final lOther$currencyId = other.currencyId;
    if (l$currencyId != lOther$currencyId) {
      return false;
    }
    final l$customerVatGroupType = customerVatGroupType;
    final lOther$customerVatGroupType = other.customerVatGroupType;
    if (l$customerVatGroupType != lOther$customerVatGroupType) {
      return false;
    }
    final l$defaultYardCode = defaultYardCode;
    final lOther$defaultYardCode = other.defaultYardCode;
    if (l$defaultYardCode != lOther$defaultYardCode) {
      return false;
    }
    final l$extendedProperties = extendedProperties;
    final lOther$extendedProperties = other.extendedProperties;
    if (l$extendedProperties != lOther$extendedProperties) {
      return false;
    }
    final l$financialCustomerGroupId = financialCustomerGroupId;
    final lOther$financialCustomerGroupId = other.financialCustomerGroupId;
    if (l$financialCustomerGroupId != lOther$financialCustomerGroupId) {
      return false;
    }
    final l$financialSupplierGroupId = financialSupplierGroupId;
    final lOther$financialSupplierGroupId = other.financialSupplierGroupId;
    if (l$financialSupplierGroupId != lOther$financialSupplierGroupId) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$industryGroup = industryGroup;
    final lOther$industryGroup = other.industryGroup;
    if (l$industryGroup != lOther$industryGroup) {
      return false;
    }
    final l$lastTicketDate = lastTicketDate;
    final lOther$lastTicketDate = other.lastTicketDate;
    if (l$lastTicketDate != lOther$lastTicketDate) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$originatingCountry = originatingCountry;
    final lOther$originatingCountry = other.originatingCountry;
    if (l$originatingCountry != lOther$originatingCountry) {
      return false;
    }
    final l$parentAccount = parentAccount;
    final lOther$parentAccount = other.parentAccount;
    if (l$parentAccount != lOther$parentAccount) {
      return false;
    }
    final l$portalEnabledContacts = portalEnabledContacts;
    final lOther$portalEnabledContacts = other.portalEnabledContacts;
    if (l$portalEnabledContacts.length != lOther$portalEnabledContacts.length) {
      return false;
    }
    for (int i = 0; i < l$portalEnabledContacts.length; i++) {
      final l$portalEnabledContacts$entry = l$portalEnabledContacts[i];
      final lOther$portalEnabledContacts$entry =
          lOther$portalEnabledContacts[i];
      if (l$portalEnabledContacts$entry != lOther$portalEnabledContacts$entry) {
        return false;
      }
    }
    final l$preferredPaymentMethod = preferredPaymentMethod;
    final lOther$preferredPaymentMethod = other.preferredPaymentMethod;
    if (l$preferredPaymentMethod != lOther$preferredPaymentMethod) {
      return false;
    }
    final l$profession = profession;
    final lOther$profession = other.profession;
    if (l$profession != lOther$profession) {
      return false;
    }
    final l$prospectId = prospectId;
    final lOther$prospectId = other.prospectId;
    if (l$prospectId != lOther$prospectId) {
      return false;
    }
    final l$reportingFrequency = reportingFrequency;
    final lOther$reportingFrequency = other.reportingFrequency;
    if (l$reportingFrequency != lOther$reportingFrequency) {
      return false;
    }
    final l$sicCodeId = sicCodeId;
    final lOther$sicCodeId = other.sicCodeId;
    if (l$sicCodeId != lOther$sicCodeId) {
      return false;
    }
    final l$supplierVatGroupType = supplierVatGroupType;
    final lOther$supplierVatGroupType = other.supplierVatGroupType;
    if (l$supplierVatGroupType != lOther$supplierVatGroupType) {
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
    final l$territoryId = territoryId;
    final lOther$territoryId = other.territoryId;
    if (l$territoryId != lOther$territoryId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$validCompanyIds = validCompanyIds;
    final lOther$validCompanyIds = other.validCompanyIds;
    if (l$validCompanyIds.length != lOther$validCompanyIds.length) {
      return false;
    }
    for (int i = 0; i < l$validCompanyIds.length; i++) {
      final l$validCompanyIds$entry = l$validCompanyIds[i];
      final lOther$validCompanyIds$entry = lOther$validCompanyIds[i];
      if (l$validCompanyIds$entry != lOther$validCompanyIds$entry) {
        return false;
      }
    }
    final l$validTerritoryIds = validTerritoryIds;
    final lOther$validTerritoryIds = other.validTerritoryIds;
    if (l$validTerritoryIds.length != lOther$validTerritoryIds.length) {
      return false;
    }
    for (int i = 0; i < l$validTerritoryIds.length; i++) {
      final l$validTerritoryIds$entry = l$validTerritoryIds[i];
      final lOther$validTerritoryIds$entry = lOther$validTerritoryIds[i];
      if (l$validTerritoryIds$entry != lOther$validTerritoryIds$entry) {
        return false;
      }
    }
    final l$vihbNumber = vihbNumber;
    final lOther$vihbNumber = other.vihbNumber;
    if (l$vihbNumber != lOther$vihbNumber) {
      return false;
    }
    final l$visitFrequency = visitFrequency;
    final lOther$visitFrequency = other.visitFrequency;
    if (l$visitFrequency != lOther$visitFrequency) {
      return false;
    }
    final l$accountContacts = accountContacts;
    final lOther$accountContacts = other.accountContacts;
    if (l$accountContacts != null && lOther$accountContacts != null) {
      if (l$accountContacts.length != lOther$accountContacts.length) {
        return false;
      }
      for (int i = 0; i < l$accountContacts.length; i++) {
        final l$accountContacts$entry = l$accountContacts[i];
        final lOther$accountContacts$entry = lOther$accountContacts[i];
        if (l$accountContacts$entry != lOther$accountContacts$entry) {
          return false;
        }
      }
    } else if (l$accountContacts != lOther$accountContacts) {
      return false;
    }
    final l$celAgreement = celAgreement;
    final lOther$celAgreement = other.celAgreement;
    if (l$celAgreement != lOther$celAgreement) {
      return false;
    }
    final l$bankAccounts = bankAccounts;
    final lOther$bankAccounts = other.bankAccounts;
    if (l$bankAccounts.length != lOther$bankAccounts.length) {
      return false;
    }
    for (int i = 0; i < l$bankAccounts.length; i++) {
      final l$bankAccounts$entry = l$bankAccounts[i];
      final lOther$bankAccounts$entry = lOther$bankAccounts[i];
      if (l$bankAccounts$entry != lOther$bankAccounts$entry) {
        return false;
      }
    }
    final l$prepaymentCards = prepaymentCards;
    final lOther$prepaymentCards = other.prepaymentCards;
    if (l$prepaymentCards.length != lOther$prepaymentCards.length) {
      return false;
    }
    for (int i = 0; i < l$prepaymentCards.length; i++) {
      final l$prepaymentCards$entry = l$prepaymentCards[i];
      final lOther$prepaymentCards$entry = lOther$prepaymentCards[i];
      if (l$prepaymentCards$entry != lOther$prepaymentCards$entry) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$account
    on Query$SearchAdvances$searchAdvances$nodes$account {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account<
    Query$SearchAdvances$searchAdvances$nodes$account
  >
  get copyWith => CopyWith$Query$SearchAdvances$searchAdvances$nodes$account(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$account<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account(
    Query$SearchAdvances$searchAdvances$nodes$account instance,
    TRes Function(Query$SearchAdvances$searchAdvances$nodes$account) then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account;

  TRes call({
    Enum$AccountSource? accountSource,
    Enum$AccountStatus? accountStatus,
    bool? active,
    bool? allowPayment,
    int? amiceCompanyNumber,
    String? code,
    String? country,
    String? currencyId,
    Enum$VatGroupType? customerVatGroupType,
    String? defaultYardCode,
    Map<String, dynamic>? extendedProperties,
    String? financialCustomerGroupId,
    String? financialSupplierGroupId,
    String? id,
    String? industryGroup,
    DateTime? lastTicketDate,
    String? name,
    String? originatingCountry,
    String? parentAccount,
    List<String>? portalEnabledContacts,
    Enum$PaymentMethod? preferredPaymentMethod,
    String? profession,
    String? prospectId,
    String? reportingFrequency,
    String? sicCodeId,
    Enum$VatGroupType? supplierVatGroupType,
    List<String>? tags,
    String? territoryId,
    Enum$AccountType? type,
    List<String>? validCompanyIds,
    List<String>? validTerritoryIds,
    String? vihbNumber,
    String? visitFrequency,
    List<Query$SearchAdvances$searchAdvances$nodes$account$accountContacts?>?
    accountContacts,
    Query$SearchAdvances$searchAdvances$nodes$account$celAgreement?
    celAgreement,
    List<Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts>?
    bankAccounts,
    List<Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards>?
    prepaymentCards,
    String? $__typename,
  });
  TRes accountContacts(
    Iterable<
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts?
    >?
    Function(
      Iterable<
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts<
          Query$SearchAdvances$searchAdvances$nodes$account$accountContacts
        >?
      >?,
    )
    _fn,
  );
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement<TRes>
  get celAgreement;
  TRes bankAccounts(
    Iterable<Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts>
    Function(
      Iterable<
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts<
          Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts
        >
      >,
    )
    _fn,
  );
  TRes prepaymentCards(
    Iterable<Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards>
    Function(
      Iterable<
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards<
          Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account<TRes>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account<TRes> {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$account _instance;

  final TRes Function(Query$SearchAdvances$searchAdvances$nodes$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountSource = _undefined,
    Object? accountStatus = _undefined,
    Object? active = _undefined,
    Object? allowPayment = _undefined,
    Object? amiceCompanyNumber = _undefined,
    Object? code = _undefined,
    Object? country = _undefined,
    Object? currencyId = _undefined,
    Object? customerVatGroupType = _undefined,
    Object? defaultYardCode = _undefined,
    Object? extendedProperties = _undefined,
    Object? financialCustomerGroupId = _undefined,
    Object? financialSupplierGroupId = _undefined,
    Object? id = _undefined,
    Object? industryGroup = _undefined,
    Object? lastTicketDate = _undefined,
    Object? name = _undefined,
    Object? originatingCountry = _undefined,
    Object? parentAccount = _undefined,
    Object? portalEnabledContacts = _undefined,
    Object? preferredPaymentMethod = _undefined,
    Object? profession = _undefined,
    Object? prospectId = _undefined,
    Object? reportingFrequency = _undefined,
    Object? sicCodeId = _undefined,
    Object? supplierVatGroupType = _undefined,
    Object? tags = _undefined,
    Object? territoryId = _undefined,
    Object? type = _undefined,
    Object? validCompanyIds = _undefined,
    Object? validTerritoryIds = _undefined,
    Object? vihbNumber = _undefined,
    Object? visitFrequency = _undefined,
    Object? accountContacts = _undefined,
    Object? celAgreement = _undefined,
    Object? bankAccounts = _undefined,
    Object? prepaymentCards = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$account(
      accountSource: accountSource == _undefined || accountSource == null
          ? _instance.accountSource
          : (accountSource as Enum$AccountSource),
      accountStatus: accountStatus == _undefined || accountStatus == null
          ? _instance.accountStatus
          : (accountStatus as Enum$AccountStatus),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      allowPayment: allowPayment == _undefined || allowPayment == null
          ? _instance.allowPayment
          : (allowPayment as bool),
      amiceCompanyNumber: amiceCompanyNumber == _undefined
          ? _instance.amiceCompanyNumber
          : (amiceCompanyNumber as int?),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      country: country == _undefined ? _instance.country : (country as String?),
      currencyId: currencyId == _undefined || currencyId == null
          ? _instance.currencyId
          : (currencyId as String),
      customerVatGroupType:
          customerVatGroupType == _undefined || customerVatGroupType == null
          ? _instance.customerVatGroupType
          : (customerVatGroupType as Enum$VatGroupType),
      defaultYardCode: defaultYardCode == _undefined
          ? _instance.defaultYardCode
          : (defaultYardCode as String?),
      extendedProperties: extendedProperties == _undefined
          ? _instance.extendedProperties
          : (extendedProperties as Map<String, dynamic>?),
      financialCustomerGroupId: financialCustomerGroupId == _undefined
          ? _instance.financialCustomerGroupId
          : (financialCustomerGroupId as String?),
      financialSupplierGroupId: financialSupplierGroupId == _undefined
          ? _instance.financialSupplierGroupId
          : (financialSupplierGroupId as String?),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      industryGroup: industryGroup == _undefined
          ? _instance.industryGroup
          : (industryGroup as String?),
      lastTicketDate: lastTicketDate == _undefined
          ? _instance.lastTicketDate
          : (lastTicketDate as DateTime?),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      originatingCountry:
          originatingCountry == _undefined || originatingCountry == null
          ? _instance.originatingCountry
          : (originatingCountry as String),
      parentAccount: parentAccount == _undefined
          ? _instance.parentAccount
          : (parentAccount as String?),
      portalEnabledContacts:
          portalEnabledContacts == _undefined || portalEnabledContacts == null
          ? _instance.portalEnabledContacts
          : (portalEnabledContacts as List<String>),
      preferredPaymentMethod:
          preferredPaymentMethod == _undefined || preferredPaymentMethod == null
          ? _instance.preferredPaymentMethod
          : (preferredPaymentMethod as Enum$PaymentMethod),
      profession: profession == _undefined
          ? _instance.profession
          : (profession as String?),
      prospectId: prospectId == _undefined || prospectId == null
          ? _instance.prospectId
          : (prospectId as String),
      reportingFrequency: reportingFrequency == _undefined
          ? _instance.reportingFrequency
          : (reportingFrequency as String?),
      sicCodeId: sicCodeId == _undefined
          ? _instance.sicCodeId
          : (sicCodeId as String?),
      supplierVatGroupType:
          supplierVatGroupType == _undefined || supplierVatGroupType == null
          ? _instance.supplierVatGroupType
          : (supplierVatGroupType as Enum$VatGroupType),
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags as List<String>),
      territoryId: territoryId == _undefined || territoryId == null
          ? _instance.territoryId
          : (territoryId as String),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$AccountType),
      validCompanyIds: validCompanyIds == _undefined || validCompanyIds == null
          ? _instance.validCompanyIds
          : (validCompanyIds as List<String>),
      validTerritoryIds:
          validTerritoryIds == _undefined || validTerritoryIds == null
          ? _instance.validTerritoryIds
          : (validTerritoryIds as List<String>),
      vihbNumber: vihbNumber == _undefined
          ? _instance.vihbNumber
          : (vihbNumber as String?),
      visitFrequency: visitFrequency == _undefined
          ? _instance.visitFrequency
          : (visitFrequency as String?),
      accountContacts: accountContacts == _undefined
          ? _instance.accountContacts
          : (accountContacts
                as List<
                  Query$SearchAdvances$searchAdvances$nodes$account$accountContacts?
                >?),
      celAgreement: celAgreement == _undefined
          ? _instance.celAgreement
          : (celAgreement
                as Query$SearchAdvances$searchAdvances$nodes$account$celAgreement?),
      bankAccounts: bankAccounts == _undefined || bankAccounts == null
          ? _instance.bankAccounts
          : (bankAccounts
                as List<
                  Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts
                >),
      prepaymentCards: prepaymentCards == _undefined || prepaymentCards == null
          ? _instance.prepaymentCards
          : (prepaymentCards
                as List<
                  Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes accountContacts(
    Iterable<
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts?
    >?
    Function(
      Iterable<
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts<
          Query$SearchAdvances$searchAdvances$nodes$account$accountContacts
        >?
      >?,
    )
    _fn,
  ) => call(
    accountContacts: _fn(
      _instance.accountContacts?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement<TRes>
  get celAgreement {
    final local$celAgreement = _instance.celAgreement;
    return local$celAgreement == null
        ? CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement(
            local$celAgreement,
            (e) => call(celAgreement: e),
          );
  }

  TRes bankAccounts(
    Iterable<Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts>
    Function(
      Iterable<
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts<
          Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts
        >
      >,
    )
    _fn,
  ) => call(
    bankAccounts: _fn(
      _instance.bankAccounts.map(
        (e) =>
            CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes prepaymentCards(
    Iterable<Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards>
    Function(
      Iterable<
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards<
          Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards
        >
      >,
    )
    _fn,
  ) => call(
    prepaymentCards: _fn(
      _instance.prepaymentCards.map(
        (e) =>
            CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account<TRes>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account<TRes> {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account(
    this._res,
  );

  TRes _res;

  call({
    Enum$AccountSource? accountSource,
    Enum$AccountStatus? accountStatus,
    bool? active,
    bool? allowPayment,
    int? amiceCompanyNumber,
    String? code,
    String? country,
    String? currencyId,
    Enum$VatGroupType? customerVatGroupType,
    String? defaultYardCode,
    Map<String, dynamic>? extendedProperties,
    String? financialCustomerGroupId,
    String? financialSupplierGroupId,
    String? id,
    String? industryGroup,
    DateTime? lastTicketDate,
    String? name,
    String? originatingCountry,
    String? parentAccount,
    List<String>? portalEnabledContacts,
    Enum$PaymentMethod? preferredPaymentMethod,
    String? profession,
    String? prospectId,
    String? reportingFrequency,
    String? sicCodeId,
    Enum$VatGroupType? supplierVatGroupType,
    List<String>? tags,
    String? territoryId,
    Enum$AccountType? type,
    List<String>? validCompanyIds,
    List<String>? validTerritoryIds,
    String? vihbNumber,
    String? visitFrequency,
    List<Query$SearchAdvances$searchAdvances$nodes$account$accountContacts?>?
    accountContacts,
    Query$SearchAdvances$searchAdvances$nodes$account$celAgreement?
    celAgreement,
    List<Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts>?
    bankAccounts,
    List<Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards>?
    prepaymentCards,
    String? $__typename,
  }) => _res;

  accountContacts(_fn) => _res;

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement<TRes>
  get celAgreement =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement.stub(
        _res,
      );

  bankAccounts(_fn) => _res;

  prepaymentCards(_fn) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$account$accountContacts {
  Query$SearchAdvances$searchAdvances$nodes$account$accountContacts({
    required this.key,
    required this.value,
    this.$__typename = 'ContactWithKey',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$account$accountContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$account$accountContacts(
      key: (l$key as String),
      value:
          Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$account$accountContacts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts
    on Query$SearchAdvances$searchAdvances$nodes$account$accountContacts {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts<
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts;

  TRes call({
    String? key,
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$account$accountContacts
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value<
    TRes
  >
  get value =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value.stub(
        _res,
      );
}

class Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value {
  Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value({
    required this.addressKey,
    required this.contactTypes,
    this.dateOfBirth,
    this.extendedProperties,
    required this.firstName,
    this.jobTitle,
    required this.lastName,
    this.middleName,
    required this.title,
    this.signature,
    required this.proofOfIdentification,
    required this.proofOfAddress,
    required this.contactPreferences,
    this.$__typename = 'Contact',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$addressKey = json['addressKey'];
    final l$contactTypes = json['contactTypes'];
    final l$dateOfBirth = json['dateOfBirth'];
    final l$extendedProperties = json['extendedProperties'];
    final l$firstName = json['firstName'];
    final l$jobTitle = json['jobTitle'];
    final l$lastName = json['lastName'];
    final l$middleName = json['middleName'];
    final l$title = json['title'];
    final l$signature = json['signature'];
    final l$proofOfIdentification = json['proofOfIdentification'];
    final l$proofOfAddress = json['proofOfAddress'];
    final l$contactPreferences = json['contactPreferences'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value(
      addressKey: (l$addressKey as String),
      contactTypes: (l$contactTypes as List<dynamic>)
          .map((e) => fromJson$Enum$ContactType((e as String)))
          .toList(),
      dateOfBirth: l$dateOfBirth == null
          ? null
          : LocalDate.fromJson(l$dateOfBirth),
      extendedProperties: (l$extendedProperties as Map<String, dynamic>?),
      firstName: (l$firstName as String),
      jobTitle: (l$jobTitle as String?),
      lastName: (l$lastName as String),
      middleName: (l$middleName as String?),
      title: (l$title as String),
      signature: l$signature == null
          ? null
          : Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature.fromJson(
              (l$signature as Map<String, dynamic>),
            ),
      proofOfIdentification: (l$proofOfIdentification as List<dynamic>)
          .map(
            (e) =>
                Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      proofOfAddress: (l$proofOfAddress as List<dynamic>)
          .map(
            (e) =>
                Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      contactPreferences:
          Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences.fromJson(
            (l$contactPreferences as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String addressKey;

  final List<Enum$ContactType> contactTypes;

  final DateTime? dateOfBirth;

  final Map<String, dynamic>? extendedProperties;

  final String firstName;

  final String? jobTitle;

  final String lastName;

  final String? middleName;

  final String title;

  final Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature?
  signature;

  final List<
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification
  >
  proofOfIdentification;

  final List<
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress
  >
  proofOfAddress;

  final Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences
  contactPreferences;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addressKey = addressKey;
    _resultData['addressKey'] = l$addressKey;
    final l$contactTypes = contactTypes;
    _resultData['contactTypes'] = l$contactTypes
        .map((e) => toJson$Enum$ContactType(e))
        .toList();
    final l$dateOfBirth = dateOfBirth;
    _resultData['dateOfBirth'] = l$dateOfBirth == null
        ? null
        : LocalDate.toJson(l$dateOfBirth);
    final l$extendedProperties = extendedProperties;
    _resultData['extendedProperties'] = l$extendedProperties;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$jobTitle = jobTitle;
    _resultData['jobTitle'] = l$jobTitle;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$middleName = middleName;
    _resultData['middleName'] = l$middleName;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$signature = signature;
    _resultData['signature'] = l$signature?.toJson();
    final l$proofOfIdentification = proofOfIdentification;
    _resultData['proofOfIdentification'] = l$proofOfIdentification
        .map((e) => e.toJson())
        .toList();
    final l$proofOfAddress = proofOfAddress;
    _resultData['proofOfAddress'] = l$proofOfAddress
        .map((e) => e.toJson())
        .toList();
    final l$contactPreferences = contactPreferences;
    _resultData['contactPreferences'] = l$contactPreferences.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addressKey = addressKey;
    final l$contactTypes = contactTypes;
    final l$dateOfBirth = dateOfBirth;
    final l$extendedProperties = extendedProperties;
    final l$firstName = firstName;
    final l$jobTitle = jobTitle;
    final l$lastName = lastName;
    final l$middleName = middleName;
    final l$title = title;
    final l$signature = signature;
    final l$proofOfIdentification = proofOfIdentification;
    final l$proofOfAddress = proofOfAddress;
    final l$contactPreferences = contactPreferences;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$addressKey,
      Object.hashAll(l$contactTypes.map((v) => v)),
      l$dateOfBirth,
      l$extendedProperties,
      l$firstName,
      l$jobTitle,
      l$lastName,
      l$middleName,
      l$title,
      l$signature,
      Object.hashAll(l$proofOfIdentification.map((v) => v)),
      Object.hashAll(l$proofOfAddress.map((v) => v)),
      l$contactPreferences,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addressKey = addressKey;
    final lOther$addressKey = other.addressKey;
    if (l$addressKey != lOther$addressKey) {
      return false;
    }
    final l$contactTypes = contactTypes;
    final lOther$contactTypes = other.contactTypes;
    if (l$contactTypes.length != lOther$contactTypes.length) {
      return false;
    }
    for (int i = 0; i < l$contactTypes.length; i++) {
      final l$contactTypes$entry = l$contactTypes[i];
      final lOther$contactTypes$entry = lOther$contactTypes[i];
      if (l$contactTypes$entry != lOther$contactTypes$entry) {
        return false;
      }
    }
    final l$dateOfBirth = dateOfBirth;
    final lOther$dateOfBirth = other.dateOfBirth;
    if (l$dateOfBirth != lOther$dateOfBirth) {
      return false;
    }
    final l$extendedProperties = extendedProperties;
    final lOther$extendedProperties = other.extendedProperties;
    if (l$extendedProperties != lOther$extendedProperties) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$jobTitle = jobTitle;
    final lOther$jobTitle = other.jobTitle;
    if (l$jobTitle != lOther$jobTitle) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$middleName = middleName;
    final lOther$middleName = other.middleName;
    if (l$middleName != lOther$middleName) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$signature = signature;
    final lOther$signature = other.signature;
    if (l$signature != lOther$signature) {
      return false;
    }
    final l$proofOfIdentification = proofOfIdentification;
    final lOther$proofOfIdentification = other.proofOfIdentification;
    if (l$proofOfIdentification.length != lOther$proofOfIdentification.length) {
      return false;
    }
    for (int i = 0; i < l$proofOfIdentification.length; i++) {
      final l$proofOfIdentification$entry = l$proofOfIdentification[i];
      final lOther$proofOfIdentification$entry =
          lOther$proofOfIdentification[i];
      if (l$proofOfIdentification$entry != lOther$proofOfIdentification$entry) {
        return false;
      }
    }
    final l$proofOfAddress = proofOfAddress;
    final lOther$proofOfAddress = other.proofOfAddress;
    if (l$proofOfAddress.length != lOther$proofOfAddress.length) {
      return false;
    }
    for (int i = 0; i < l$proofOfAddress.length; i++) {
      final l$proofOfAddress$entry = l$proofOfAddress[i];
      final lOther$proofOfAddress$entry = lOther$proofOfAddress[i];
      if (l$proofOfAddress$entry != lOther$proofOfAddress$entry) {
        return false;
      }
    }
    final l$contactPreferences = contactPreferences;
    final lOther$contactPreferences = other.contactPreferences;
    if (l$contactPreferences != lOther$contactPreferences) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value
    on Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value<
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value;

  TRes call({
    String? addressKey,
    List<Enum$ContactType>? contactTypes,
    DateTime? dateOfBirth,
    Map<String, dynamic>? extendedProperties,
    String? firstName,
    String? jobTitle,
    String? lastName,
    String? middleName,
    String? title,
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature?
    signature,
    List<
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification
    >?
    proofOfIdentification,
    List<
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress
    >?
    proofOfAddress,
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences?
    contactPreferences,
    String? $__typename,
  });
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature<
    TRes
  >
  get signature;
  TRes proofOfIdentification(
    Iterable<
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification
    >
    Function(
      Iterable<
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification<
          Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification
        >
      >,
    )
    _fn,
  );
  TRes proofOfAddress(
    Iterable<
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress
    >
    Function(
      Iterable<
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress<
          Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences<
    TRes
  >
  get contactPreferences;
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addressKey = _undefined,
    Object? contactTypes = _undefined,
    Object? dateOfBirth = _undefined,
    Object? extendedProperties = _undefined,
    Object? firstName = _undefined,
    Object? jobTitle = _undefined,
    Object? lastName = _undefined,
    Object? middleName = _undefined,
    Object? title = _undefined,
    Object? signature = _undefined,
    Object? proofOfIdentification = _undefined,
    Object? proofOfAddress = _undefined,
    Object? contactPreferences = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value(
      addressKey: addressKey == _undefined || addressKey == null
          ? _instance.addressKey
          : (addressKey as String),
      contactTypes: contactTypes == _undefined || contactTypes == null
          ? _instance.contactTypes
          : (contactTypes as List<Enum$ContactType>),
      dateOfBirth: dateOfBirth == _undefined
          ? _instance.dateOfBirth
          : (dateOfBirth as DateTime?),
      extendedProperties: extendedProperties == _undefined
          ? _instance.extendedProperties
          : (extendedProperties as Map<String, dynamic>?),
      firstName: firstName == _undefined || firstName == null
          ? _instance.firstName
          : (firstName as String),
      jobTitle: jobTitle == _undefined
          ? _instance.jobTitle
          : (jobTitle as String?),
      lastName: lastName == _undefined || lastName == null
          ? _instance.lastName
          : (lastName as String),
      middleName: middleName == _undefined
          ? _instance.middleName
          : (middleName as String?),
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      signature: signature == _undefined
          ? _instance.signature
          : (signature
                as Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature?),
      proofOfIdentification:
          proofOfIdentification == _undefined || proofOfIdentification == null
          ? _instance.proofOfIdentification
          : (proofOfIdentification
                as List<
                  Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification
                >),
      proofOfAddress: proofOfAddress == _undefined || proofOfAddress == null
          ? _instance.proofOfAddress
          : (proofOfAddress
                as List<
                  Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress
                >),
      contactPreferences:
          contactPreferences == _undefined || contactPreferences == null
          ? _instance.contactPreferences
          : (contactPreferences
                as Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature<
    TRes
  >
  get signature {
    final local$signature = _instance.signature;
    return local$signature == null
        ? CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature(
            local$signature,
            (e) => call(signature: e),
          );
  }

  TRes proofOfIdentification(
    Iterable<
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification
    >
    Function(
      Iterable<
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification<
          Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification
        >
      >,
    )
    _fn,
  ) => call(
    proofOfIdentification: _fn(
      _instance.proofOfIdentification.map(
        (e) =>
            CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes proofOfAddress(
    Iterable<
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress
    >
    Function(
      Iterable<
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress<
          Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress
        >
      >,
    )
    _fn,
  ) => call(
    proofOfAddress: _fn(
      _instance.proofOfAddress.map(
        (e) =>
            CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences<
    TRes
  >
  get contactPreferences {
    final local$contactPreferences = _instance.contactPreferences;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences(
      local$contactPreferences,
      (e) => call(contactPreferences: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value(
    this._res,
  );

  TRes _res;

  call({
    String? addressKey,
    List<Enum$ContactType>? contactTypes,
    DateTime? dateOfBirth,
    Map<String, dynamic>? extendedProperties,
    String? firstName,
    String? jobTitle,
    String? lastName,
    String? middleName,
    String? title,
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature?
    signature,
    List<
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification
    >?
    proofOfIdentification,
    List<
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress
    >?
    proofOfAddress,
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences?
    contactPreferences,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature<
    TRes
  >
  get signature =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature.stub(
        _res,
      );

  proofOfIdentification(_fn) => _res;

  proofOfAddress(_fn) => _res;

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences<
    TRes
  >
  get contactPreferences =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences.stub(
        _res,
      );
}

class Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature {
  Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature(
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
            is! Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature ||
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature
    on
        Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature<
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$signature(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification {
  Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification({
    required this.media,
    required this.type,
    required this.subType,
    required this.validFrom,
    required this.validTo,
    this.$__typename = 'Identification',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$media = json['media'];
    final l$type = json['type'];
    final l$subType = json['subType'];
    final l$validFrom = json['validFrom'];
    final l$validTo = json['validTo'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification(
      media:
          Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media.fromJson(
            (l$media as Map<String, dynamic>),
          ),
      type: fromJson$Enum$IdentificationType((l$type as String)),
      subType: fromJson$Enum$IdentificationSubType((l$subType as String)),
      validFrom: DateTime.parse((l$validFrom as String)),
      validTo: DateTime.parse((l$validTo as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media
  media;

  final Enum$IdentificationType type;

  final Enum$IdentificationSubType subType;

  final DateTime validFrom;

  final DateTime validTo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$type = type;
    _resultData['type'] = toJson$Enum$IdentificationType(l$type);
    final l$subType = subType;
    _resultData['subType'] = toJson$Enum$IdentificationSubType(l$subType);
    final l$validFrom = validFrom;
    _resultData['validFrom'] = l$validFrom.toIso8601String();
    final l$validTo = validTo;
    _resultData['validTo'] = l$validTo.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$type = type;
    final l$subType = subType;
    final l$validFrom = validFrom;
    final l$validTo = validTo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media,
      l$type,
      l$subType,
      l$validFrom,
      l$validTo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$subType = subType;
    final lOther$subType = other.subType;
    if (l$subType != lOther$subType) {
      return false;
    }
    final l$validFrom = validFrom;
    final lOther$validFrom = other.validFrom;
    if (l$validFrom != lOther$validFrom) {
      return false;
    }
    final l$validTo = validTo;
    final lOther$validTo = other.validTo;
    if (l$validTo != lOther$validTo) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification
    on
        Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification<
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification;

  TRes call({
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media?
    media,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    DateTime? validFrom,
    DateTime? validTo,
    String? $__typename,
  });
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media<
    TRes
  >
  get media;
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? type = _undefined,
    Object? subType = _undefined,
    Object? validFrom = _undefined,
    Object? validTo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification(
      media: media == _undefined || media == null
          ? _instance.media
          : (media
                as Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$IdentificationType),
      subType: subType == _undefined || subType == null
          ? _instance.subType
          : (subType as Enum$IdentificationSubType),
      validFrom: validFrom == _undefined || validFrom == null
          ? _instance.validFrom
          : (validFrom as DateTime),
      validTo: validTo == _undefined || validTo == null
          ? _instance.validTo
          : (validTo as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media<
    TRes
  >
  get media {
    final local$media = _instance.media;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media(
      local$media,
      (e) => call(media: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification(
    this._res,
  );

  TRes _res;

  call({
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media?
    media,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    DateTime? validFrom,
    DateTime? validTo,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media<
    TRes
  >
  get media =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media.stub(
        _res,
      );
}

class Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media {
  Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media(
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
            is! Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media ||
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media
    on
        Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media<
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfIdentification$media(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress {
  Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress({
    required this.media,
    required this.type,
    required this.subType,
    required this.validFrom,
    required this.validTo,
    this.$__typename = 'Identification',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$media = json['media'];
    final l$type = json['type'];
    final l$subType = json['subType'];
    final l$validFrom = json['validFrom'];
    final l$validTo = json['validTo'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress(
      media:
          Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media.fromJson(
            (l$media as Map<String, dynamic>),
          ),
      type: fromJson$Enum$IdentificationType((l$type as String)),
      subType: fromJson$Enum$IdentificationSubType((l$subType as String)),
      validFrom: DateTime.parse((l$validFrom as String)),
      validTo: DateTime.parse((l$validTo as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media
  media;

  final Enum$IdentificationType type;

  final Enum$IdentificationSubType subType;

  final DateTime validFrom;

  final DateTime validTo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$type = type;
    _resultData['type'] = toJson$Enum$IdentificationType(l$type);
    final l$subType = subType;
    _resultData['subType'] = toJson$Enum$IdentificationSubType(l$subType);
    final l$validFrom = validFrom;
    _resultData['validFrom'] = l$validFrom.toIso8601String();
    final l$validTo = validTo;
    _resultData['validTo'] = l$validTo.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$type = type;
    final l$subType = subType;
    final l$validFrom = validFrom;
    final l$validTo = validTo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media,
      l$type,
      l$subType,
      l$validFrom,
      l$validTo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$subType = subType;
    final lOther$subType = other.subType;
    if (l$subType != lOther$subType) {
      return false;
    }
    final l$validFrom = validFrom;
    final lOther$validFrom = other.validFrom;
    if (l$validFrom != lOther$validFrom) {
      return false;
    }
    final l$validTo = validTo;
    final lOther$validTo = other.validTo;
    if (l$validTo != lOther$validTo) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress
    on
        Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress<
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress;

  TRes call({
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media?
    media,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    DateTime? validFrom,
    DateTime? validTo,
    String? $__typename,
  });
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media<
    TRes
  >
  get media;
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? type = _undefined,
    Object? subType = _undefined,
    Object? validFrom = _undefined,
    Object? validTo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress(
      media: media == _undefined || media == null
          ? _instance.media
          : (media
                as Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$IdentificationType),
      subType: subType == _undefined || subType == null
          ? _instance.subType
          : (subType as Enum$IdentificationSubType),
      validFrom: validFrom == _undefined || validFrom == null
          ? _instance.validFrom
          : (validFrom as DateTime),
      validTo: validTo == _undefined || validTo == null
          ? _instance.validTo
          : (validTo as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media<
    TRes
  >
  get media {
    final local$media = _instance.media;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media(
      local$media,
      (e) => call(media: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress(
    this._res,
  );

  TRes _res;

  call({
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media?
    media,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    DateTime? validFrom,
    DateTime? validTo,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media<
    TRes
  >
  get media =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media.stub(
        _res,
      );
}

class Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media {
  Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media(
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
            is! Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media ||
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media
    on
        Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media<
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$proofOfAddress$media(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences {
  Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences({
    required this.mobile,
    required this.email,
    this.$__typename = 'ContactPreferences',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mobile = json['mobile'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences(
      mobile:
          Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile.fromJson(
            (l$mobile as Map<String, dynamic>),
          ),
      email:
          Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email.fromJson(
            (l$email as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile
  mobile;

  final Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email
  email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mobile = mobile;
    _resultData['mobile'] = l$mobile.toJson();
    final l$email = email;
    _resultData['email'] = l$email.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mobile = mobile;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mobile, l$email, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mobile = mobile;
    final lOther$mobile = other.mobile;
    if (l$mobile != lOther$mobile) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences
    on
        Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences<
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences;

  TRes call({
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile?
    mobile,
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email?
    email,
    String? $__typename,
  });
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile;
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email<
    TRes
  >
  get email;
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mobile = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences(
      mobile: mobile == _undefined || mobile == null
          ? _instance.mobile
          : (mobile
                as Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile),
      email: email == _undefined || email == null
          ? _instance.email
          : (email
                as Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile {
    final local$mobile = _instance.mobile;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile(
      local$mobile,
      (e) => call(mobile: e),
    );
  }

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email<
    TRes
  >
  get email {
    final local$email = _instance.email;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email(
      local$email,
      (e) => call(email: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences(
    this._res,
  );

  TRes _res;

  call({
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile?
    mobile,
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email?
    email,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile.stub(
        _res,
      );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email<
    TRes
  >
  get email =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email.stub(
        _res,
      );
}

class Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile {
  Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile({
    required this.enabled,
    required this.value,
    this.$__typename = 'ContactMethod',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile(
      enabled: (l$enabled as bool),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$enabled, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile
    on
        Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile<
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile;

  TRes call({bool? enabled, String? value, String? $__typename});
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$mobile(
    this._res,
  );

  TRes _res;

  call({bool? enabled, String? value, String? $__typename}) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email {
  Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email({
    required this.enabled,
    required this.value,
    this.$__typename = 'ContactMethod',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email(
      enabled: (l$enabled as bool),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$enabled, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email
    on
        Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email<
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email;

  TRes call({bool? enabled, String? value, String? $__typename});
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$accountContacts$value$contactPreferences$email(
    this._res,
  );

  TRes _res;

  call({bool? enabled, String? value, String? $__typename}) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$account$celAgreement {
  Query$SearchAdvances$searchAdvances$nodes$account$celAgreement({
    required this.agreementDate,
    this.expiryDate,
    this.$__typename = 'LegalAgreement',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$account$celAgreement.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$agreementDate = json['agreementDate'];
    final l$expiryDate = json['expiryDate'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$account$celAgreement(
      agreementDate: DateTime.parse((l$agreementDate as String)),
      expiryDate: l$expiryDate == null
          ? null
          : DateTime.parse((l$expiryDate as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime agreementDate;

  final DateTime? expiryDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$agreementDate = agreementDate;
    _resultData['agreementDate'] = l$agreementDate.toIso8601String();
    final l$expiryDate = expiryDate;
    _resultData['expiryDate'] = l$expiryDate?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$agreementDate = agreementDate;
    final l$expiryDate = expiryDate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$agreementDate, l$expiryDate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$account$celAgreement ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$agreementDate = agreementDate;
    final lOther$agreementDate = other.agreementDate;
    if (l$agreementDate != lOther$agreementDate) {
      return false;
    }
    final l$expiryDate = expiryDate;
    final lOther$expiryDate = other.expiryDate;
    if (l$expiryDate != lOther$expiryDate) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement
    on Query$SearchAdvances$searchAdvances$nodes$account$celAgreement {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement<
    Query$SearchAdvances$searchAdvances$nodes$account$celAgreement
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement(
    Query$SearchAdvances$searchAdvances$nodes$account$celAgreement instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$account$celAgreement,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement;

  TRes call({
    DateTime? agreementDate,
    DateTime? expiryDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$account$celAgreement
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$account$celAgreement,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? agreementDate = _undefined,
    Object? expiryDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$account$celAgreement(
      agreementDate: agreementDate == _undefined || agreementDate == null
          ? _instance.agreementDate
          : (agreementDate as DateTime),
      expiryDate: expiryDate == _undefined
          ? _instance.expiryDate
          : (expiryDate as DateTime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$celAgreement(
    this._res,
  );

  TRes _res;

  call({DateTime? agreementDate, DateTime? expiryDate, String? $__typename}) =>
      _res;
}

class Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts {
  Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts({
    required this.bankName,
    required this.accountHolderName,
    required this.accountNumber,
    required this.sortCode,
    this.$__typename = 'BankAccount',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$bankName = json['bankName'];
    final l$accountHolderName = json['accountHolderName'];
    final l$accountNumber = json['accountNumber'];
    final l$sortCode = json['sortCode'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts(
      bankName: (l$bankName as String),
      accountHolderName: (l$accountHolderName as String),
      accountNumber: (l$accountNumber as String),
      sortCode: (l$sortCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String bankName;

  final String accountHolderName;

  final String accountNumber;

  final String sortCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bankName = bankName;
    _resultData['bankName'] = l$bankName;
    final l$accountHolderName = accountHolderName;
    _resultData['accountHolderName'] = l$accountHolderName;
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$sortCode = sortCode;
    _resultData['sortCode'] = l$sortCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bankName = bankName;
    final l$accountHolderName = accountHolderName;
    final l$accountNumber = accountNumber;
    final l$sortCode = sortCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bankName,
      l$accountHolderName,
      l$accountNumber,
      l$sortCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (l$bankName != lOther$bankName) {
      return false;
    }
    final l$accountHolderName = accountHolderName;
    final lOther$accountHolderName = other.accountHolderName;
    if (l$accountHolderName != lOther$accountHolderName) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$sortCode = sortCode;
    final lOther$sortCode = other.sortCode;
    if (l$sortCode != lOther$sortCode) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts
    on Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts<
    Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts(
    Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts;

  TRes call({
    String? bankName,
    String? accountHolderName,
    String? accountNumber,
    String? sortCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bankName = _undefined,
    Object? accountHolderName = _undefined,
    Object? accountNumber = _undefined,
    Object? sortCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts(
      bankName: bankName == _undefined || bankName == null
          ? _instance.bankName
          : (bankName as String),
      accountHolderName:
          accountHolderName == _undefined || accountHolderName == null
          ? _instance.accountHolderName
          : (accountHolderName as String),
      accountNumber: accountNumber == _undefined || accountNumber == null
          ? _instance.accountNumber
          : (accountNumber as String),
      sortCode: sortCode == _undefined || sortCode == null
          ? _instance.sortCode
          : (sortCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$bankAccounts(
    this._res,
  );

  TRes _res;

  call({
    String? bankName,
    String? accountHolderName,
    String? accountNumber,
    String? sortCode,
    String? $__typename,
  }) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards {
  Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards({
    required this.code,
    required this.active,
    required this.panDigits,
    required this.issuerType,
    required this.issueDate,
    this.$__typename = 'PrepaymentCard',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$active = json['active'];
    final l$panDigits = json['panDigits'];
    final l$issuerType = json['issuerType'];
    final l$issueDate = json['issueDate'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards(
      code: (l$code as String),
      active: (l$active as bool),
      panDigits: (l$panDigits as int),
      issuerType: fromJson$Enum$PrepayCardIssuer((l$issuerType as String)),
      issueDate: DateTime.parse((l$issueDate as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final bool active;

  final int panDigits;

  final Enum$PrepayCardIssuer issuerType;

  final DateTime issueDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$panDigits = panDigits;
    _resultData['panDigits'] = l$panDigits;
    final l$issuerType = issuerType;
    _resultData['issuerType'] = toJson$Enum$PrepayCardIssuer(l$issuerType);
    final l$issueDate = issueDate;
    _resultData['issueDate'] = l$issueDate.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$active = active;
    final l$panDigits = panDigits;
    final l$issuerType = issuerType;
    final l$issueDate = issueDate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$active,
      l$panDigits,
      l$issuerType,
      l$issueDate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards ||
        runtimeType != other.runtimeType) {
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
    final l$panDigits = panDigits;
    final lOther$panDigits = other.panDigits;
    if (l$panDigits != lOther$panDigits) {
      return false;
    }
    final l$issuerType = issuerType;
    final lOther$issuerType = other.issuerType;
    if (l$issuerType != lOther$issuerType) {
      return false;
    }
    final l$issueDate = issueDate;
    final lOther$issueDate = other.issueDate;
    if (l$issueDate != lOther$issueDate) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards
    on Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards<
    Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards(
    Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards;

  TRes call({
    String? code,
    bool? active,
    int? panDigits,
    Enum$PrepayCardIssuer? issuerType,
    DateTime? issueDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? active = _undefined,
    Object? panDigits = _undefined,
    Object? issuerType = _undefined,
    Object? issueDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      panDigits: panDigits == _undefined || panDigits == null
          ? _instance.panDigits
          : (panDigits as int),
      issuerType: issuerType == _undefined || issuerType == null
          ? _instance.issuerType
          : (issuerType as Enum$PrepayCardIssuer),
      issueDate: issueDate == _undefined || issueDate == null
          ? _instance.issueDate
          : (issueDate as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$account$prepaymentCards(
    this._res,
  );

  TRes _res;

  call({
    String? code,
    bool? active,
    int? panDigits,
    Enum$PrepayCardIssuer? issuerType,
    DateTime? issueDate,
    String? $__typename,
  }) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$company {
  Query$SearchAdvances$searchAdvances$nodes$company({
    required this.active,
    required this.code,
    required this.fullName,
    required this.id,
    required this.shortName,
    required this.territoryCode,
    required this.territoryId,
    this.$__typename = 'Company',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$company.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$active = json['active'];
    final l$code = json['code'];
    final l$fullName = json['fullName'];
    final l$id = json['id'];
    final l$shortName = json['shortName'];
    final l$territoryCode = json['territoryCode'];
    final l$territoryId = json['territoryId'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$company(
      active: (l$active as bool),
      code: (l$code as String),
      fullName: (l$fullName as String),
      id: (l$id as String),
      shortName: (l$shortName as String),
      territoryCode: (l$territoryCode as String),
      territoryId: (l$territoryId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool active;

  final String code;

  final String fullName;

  final String id;

  final String shortName;

  final String territoryCode;

  final String territoryId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$active = active;
    _resultData['active'] = l$active;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$shortName = shortName;
    _resultData['shortName'] = l$shortName;
    final l$territoryCode = territoryCode;
    _resultData['territoryCode'] = l$territoryCode;
    final l$territoryId = territoryId;
    _resultData['territoryId'] = l$territoryId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$active = active;
    final l$code = code;
    final l$fullName = fullName;
    final l$id = id;
    final l$shortName = shortName;
    final l$territoryCode = territoryCode;
    final l$territoryId = territoryId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$active,
      l$code,
      l$fullName,
      l$id,
      l$shortName,
      l$territoryCode,
      l$territoryId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchAdvances$searchAdvances$nodes$company ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$shortName = shortName;
    final lOther$shortName = other.shortName;
    if (l$shortName != lOther$shortName) {
      return false;
    }
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (l$territoryCode != lOther$territoryCode) {
      return false;
    }
    final l$territoryId = territoryId;
    final lOther$territoryId = other.territoryId;
    if (l$territoryId != lOther$territoryId) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$company
    on Query$SearchAdvances$searchAdvances$nodes$company {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$company<
    Query$SearchAdvances$searchAdvances$nodes$company
  >
  get copyWith => CopyWith$Query$SearchAdvances$searchAdvances$nodes$company(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$company<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$company(
    Query$SearchAdvances$searchAdvances$nodes$company instance,
    TRes Function(Query$SearchAdvances$searchAdvances$nodes$company) then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$company;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$company.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$company;

  TRes call({
    bool? active,
    String? code,
    String? fullName,
    String? id,
    String? shortName,
    String? territoryCode,
    String? territoryId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$company<TRes>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$company<TRes> {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$company(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$company _instance;

  final TRes Function(Query$SearchAdvances$searchAdvances$nodes$company) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? active = _undefined,
    Object? code = _undefined,
    Object? fullName = _undefined,
    Object? id = _undefined,
    Object? shortName = _undefined,
    Object? territoryCode = _undefined,
    Object? territoryId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$company(
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      fullName: fullName == _undefined || fullName == null
          ? _instance.fullName
          : (fullName as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      shortName: shortName == _undefined || shortName == null
          ? _instance.shortName
          : (shortName as String),
      territoryCode: territoryCode == _undefined || territoryCode == null
          ? _instance.territoryCode
          : (territoryCode as String),
      territoryId: territoryId == _undefined || territoryId == null
          ? _instance.territoryId
          : (territoryId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$company<TRes>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$company<TRes> {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$company(
    this._res,
  );

  TRes _res;

  call({
    bool? active,
    String? code,
    String? fullName,
    String? id,
    String? shortName,
    String? territoryCode,
    String? territoryId,
    String? $__typename,
  }) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$handlingYard {
  Query$SearchAdvances$searchAdvances$nodes$handlingYard({
    required this.id,
    required this.name,
    required this.yardCode,
    required this.shortName,
    this.$__typename = 'Yard',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$handlingYard.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$shortName = json['shortName'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$handlingYard(
      id: (l$id as String),
      name: (l$name as String),
      yardCode: (l$yardCode as String),
      shortName: (l$shortName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String yardCode;

  final String shortName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$shortName = shortName;
    _resultData['shortName'] = l$shortName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$yardCode = yardCode;
    final l$shortName = shortName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$yardCode,
      l$shortName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchAdvances$searchAdvances$nodes$handlingYard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$shortName = shortName;
    final lOther$shortName = other.shortName;
    if (l$shortName != lOther$shortName) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$handlingYard
    on Query$SearchAdvances$searchAdvances$nodes$handlingYard {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$handlingYard<
    Query$SearchAdvances$searchAdvances$nodes$handlingYard
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$handlingYard(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$handlingYard<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$handlingYard(
    Query$SearchAdvances$searchAdvances$nodes$handlingYard instance,
    TRes Function(Query$SearchAdvances$searchAdvances$nodes$handlingYard) then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$handlingYard;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$handlingYard.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$handlingYard;

  TRes call({
    String? id,
    String? name,
    String? yardCode,
    String? shortName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$handlingYard<TRes>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$handlingYard<TRes> {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$handlingYard(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$handlingYard _instance;

  final TRes Function(Query$SearchAdvances$searchAdvances$nodes$handlingYard)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? shortName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$handlingYard(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      shortName: shortName == _undefined || shortName == null
          ? _instance.shortName
          : (shortName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$handlingYard<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$handlingYard<TRes> {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$handlingYard(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? name,
    String? yardCode,
    String? shortName,
    String? $__typename,
  }) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$payableYard
    implements Fragment$PaymentMethodFields {
  Query$SearchAdvances$searchAdvances$nodes$payableYard({
    required this.id,
    required this.name,
    required this.yardCode,
    required this.shortName,
    required this.paymentMethods,
    this.$__typename = 'Yard',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$payableYard.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$shortName = json['shortName'];
    final l$paymentMethods = json['paymentMethods'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$payableYard(
      id: (l$id as String),
      name: (l$name as String),
      yardCode: (l$yardCode as String),
      shortName: (l$shortName as String),
      paymentMethods:
          Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods.fromJson(
            (l$paymentMethods as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String yardCode;

  final String shortName;

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods
  paymentMethods;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$shortName = shortName;
    _resultData['shortName'] = l$shortName;
    final l$paymentMethods = paymentMethods;
    _resultData['paymentMethods'] = l$paymentMethods.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$yardCode = yardCode;
    final l$shortName = shortName;
    final l$paymentMethods = paymentMethods;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$yardCode,
      l$shortName,
      l$paymentMethods,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchAdvances$searchAdvances$nodes$payableYard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$shortName = shortName;
    final lOther$shortName = other.shortName;
    if (l$shortName != lOther$shortName) {
      return false;
    }
    final l$paymentMethods = paymentMethods;
    final lOther$paymentMethods = other.paymentMethods;
    if (l$paymentMethods != lOther$paymentMethods) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$payableYard
    on Query$SearchAdvances$searchAdvances$nodes$payableYard {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard<
    Query$SearchAdvances$searchAdvances$nodes$payableYard
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard(
    Query$SearchAdvances$searchAdvances$nodes$payableYard instance,
    TRes Function(Query$SearchAdvances$searchAdvances$nodes$payableYard) then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard;

  TRes call({
    String? id,
    String? name,
    String? yardCode,
    String? shortName,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods?
    paymentMethods,
    String? $__typename,
  });
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods<
    TRes
  >
  get paymentMethods;
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard<TRes>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard<TRes> {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$payableYard _instance;

  final TRes Function(Query$SearchAdvances$searchAdvances$nodes$payableYard)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? shortName = _undefined,
    Object? paymentMethods = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$payableYard(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      shortName: shortName == _undefined || shortName == null
          ? _instance.shortName
          : (shortName as String),
      paymentMethods: paymentMethods == _undefined || paymentMethods == null
          ? _instance.paymentMethods
          : (paymentMethods
                as Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods<
    TRes
  >
  get paymentMethods {
    final local$paymentMethods = _instance.paymentMethods;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods(
      local$paymentMethods,
      (e) => call(paymentMethods: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard<TRes> {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? name,
    String? yardCode,
    String? shortName,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods?
    paymentMethods,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods<
    TRes
  >
  get paymentMethods =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods.stub(
        _res,
      );
}

class Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods
    implements Fragment$PaymentMethodFields$paymentMethods {
  Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods({
    required this.atm,
    required this.manualCheque,
    required this.autoCheque,
    required this.fasterpay,
    required this.overnightFasterpay,
    required this.cash,
    required this.autoChequeWithEncashmentCash,
    required this.autoChequeWithEncashmentAtm,
    required this.secorePrepaid,
    required this.digitalWalletWithAtm,
    required this.digitalWalletWithCash,
    required this.splitPayment,
    this.$__typename = 'PaymentMethods',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$atm = json['atm'];
    final l$manualCheque = json['manualCheque'];
    final l$autoCheque = json['autoCheque'];
    final l$fasterpay = json['fasterpay'];
    final l$overnightFasterpay = json['overnightFasterpay'];
    final l$cash = json['cash'];
    final l$autoChequeWithEncashmentCash = json['autoChequeWithEncashmentCash'];
    final l$autoChequeWithEncashmentAtm = json['autoChequeWithEncashmentAtm'];
    final l$secorePrepaid = json['secorePrepaid'];
    final l$digitalWalletWithAtm = json['digitalWalletWithAtm'];
    final l$digitalWalletWithCash = json['digitalWalletWithCash'];
    final l$splitPayment = json['splitPayment'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods(
      atm:
          Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm.fromJson(
            (l$atm as Map<String, dynamic>),
          ),
      manualCheque:
          Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque.fromJson(
            (l$manualCheque as Map<String, dynamic>),
          ),
      autoCheque:
          Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque.fromJson(
            (l$autoCheque as Map<String, dynamic>),
          ),
      fasterpay:
          Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay.fromJson(
            (l$fasterpay as Map<String, dynamic>),
          ),
      overnightFasterpay:
          Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay.fromJson(
            (l$overnightFasterpay as Map<String, dynamic>),
          ),
      cash:
          Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash.fromJson(
            (l$cash as Map<String, dynamic>),
          ),
      autoChequeWithEncashmentCash:
          Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash.fromJson(
            (l$autoChequeWithEncashmentCash as Map<String, dynamic>),
          ),
      autoChequeWithEncashmentAtm:
          Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm.fromJson(
            (l$autoChequeWithEncashmentAtm as Map<String, dynamic>),
          ),
      secorePrepaid:
          Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid.fromJson(
            (l$secorePrepaid as Map<String, dynamic>),
          ),
      digitalWalletWithAtm:
          Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm.fromJson(
            (l$digitalWalletWithAtm as Map<String, dynamic>),
          ),
      digitalWalletWithCash:
          Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash.fromJson(
            (l$digitalWalletWithCash as Map<String, dynamic>),
          ),
      splitPayment:
          Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment.fromJson(
            (l$splitPayment as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm
  atm;

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque
  manualCheque;

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque
  autoCheque;

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay
  fasterpay;

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay
  overnightFasterpay;

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash
  cash;

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash
  autoChequeWithEncashmentCash;

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm
  autoChequeWithEncashmentAtm;

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid
  secorePrepaid;

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm
  digitalWalletWithAtm;

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash
  digitalWalletWithCash;

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment
  splitPayment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$atm = atm;
    _resultData['atm'] = l$atm.toJson();
    final l$manualCheque = manualCheque;
    _resultData['manualCheque'] = l$manualCheque.toJson();
    final l$autoCheque = autoCheque;
    _resultData['autoCheque'] = l$autoCheque.toJson();
    final l$fasterpay = fasterpay;
    _resultData['fasterpay'] = l$fasterpay.toJson();
    final l$overnightFasterpay = overnightFasterpay;
    _resultData['overnightFasterpay'] = l$overnightFasterpay.toJson();
    final l$cash = cash;
    _resultData['cash'] = l$cash.toJson();
    final l$autoChequeWithEncashmentCash = autoChequeWithEncashmentCash;
    _resultData['autoChequeWithEncashmentCash'] = l$autoChequeWithEncashmentCash
        .toJson();
    final l$autoChequeWithEncashmentAtm = autoChequeWithEncashmentAtm;
    _resultData['autoChequeWithEncashmentAtm'] = l$autoChequeWithEncashmentAtm
        .toJson();
    final l$secorePrepaid = secorePrepaid;
    _resultData['secorePrepaid'] = l$secorePrepaid.toJson();
    final l$digitalWalletWithAtm = digitalWalletWithAtm;
    _resultData['digitalWalletWithAtm'] = l$digitalWalletWithAtm.toJson();
    final l$digitalWalletWithCash = digitalWalletWithCash;
    _resultData['digitalWalletWithCash'] = l$digitalWalletWithCash.toJson();
    final l$splitPayment = splitPayment;
    _resultData['splitPayment'] = l$splitPayment.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$atm = atm;
    final l$manualCheque = manualCheque;
    final l$autoCheque = autoCheque;
    final l$fasterpay = fasterpay;
    final l$overnightFasterpay = overnightFasterpay;
    final l$cash = cash;
    final l$autoChequeWithEncashmentCash = autoChequeWithEncashmentCash;
    final l$autoChequeWithEncashmentAtm = autoChequeWithEncashmentAtm;
    final l$secorePrepaid = secorePrepaid;
    final l$digitalWalletWithAtm = digitalWalletWithAtm;
    final l$digitalWalletWithCash = digitalWalletWithCash;
    final l$splitPayment = splitPayment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$atm,
      l$manualCheque,
      l$autoCheque,
      l$fasterpay,
      l$overnightFasterpay,
      l$cash,
      l$autoChequeWithEncashmentCash,
      l$autoChequeWithEncashmentAtm,
      l$secorePrepaid,
      l$digitalWalletWithAtm,
      l$digitalWalletWithCash,
      l$splitPayment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$atm = atm;
    final lOther$atm = other.atm;
    if (l$atm != lOther$atm) {
      return false;
    }
    final l$manualCheque = manualCheque;
    final lOther$manualCheque = other.manualCheque;
    if (l$manualCheque != lOther$manualCheque) {
      return false;
    }
    final l$autoCheque = autoCheque;
    final lOther$autoCheque = other.autoCheque;
    if (l$autoCheque != lOther$autoCheque) {
      return false;
    }
    final l$fasterpay = fasterpay;
    final lOther$fasterpay = other.fasterpay;
    if (l$fasterpay != lOther$fasterpay) {
      return false;
    }
    final l$overnightFasterpay = overnightFasterpay;
    final lOther$overnightFasterpay = other.overnightFasterpay;
    if (l$overnightFasterpay != lOther$overnightFasterpay) {
      return false;
    }
    final l$cash = cash;
    final lOther$cash = other.cash;
    if (l$cash != lOther$cash) {
      return false;
    }
    final l$autoChequeWithEncashmentCash = autoChequeWithEncashmentCash;
    final lOther$autoChequeWithEncashmentCash =
        other.autoChequeWithEncashmentCash;
    if (l$autoChequeWithEncashmentCash != lOther$autoChequeWithEncashmentCash) {
      return false;
    }
    final l$autoChequeWithEncashmentAtm = autoChequeWithEncashmentAtm;
    final lOther$autoChequeWithEncashmentAtm =
        other.autoChequeWithEncashmentAtm;
    if (l$autoChequeWithEncashmentAtm != lOther$autoChequeWithEncashmentAtm) {
      return false;
    }
    final l$secorePrepaid = secorePrepaid;
    final lOther$secorePrepaid = other.secorePrepaid;
    if (l$secorePrepaid != lOther$secorePrepaid) {
      return false;
    }
    final l$digitalWalletWithAtm = digitalWalletWithAtm;
    final lOther$digitalWalletWithAtm = other.digitalWalletWithAtm;
    if (l$digitalWalletWithAtm != lOther$digitalWalletWithAtm) {
      return false;
    }
    final l$digitalWalletWithCash = digitalWalletWithCash;
    final lOther$digitalWalletWithCash = other.digitalWalletWithCash;
    if (l$digitalWalletWithCash != lOther$digitalWalletWithCash) {
      return false;
    }
    final l$splitPayment = splitPayment;
    final lOther$splitPayment = other.splitPayment;
    if (l$splitPayment != lOther$splitPayment) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods
    on Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods<
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods;

  TRes call({
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm?
    atm,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque?
    manualCheque,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque?
    autoCheque,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay?
    fasterpay,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay?
    overnightFasterpay,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash?
    cash,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash?
    autoChequeWithEncashmentCash,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm?
    autoChequeWithEncashmentAtm,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid?
    secorePrepaid,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm?
    digitalWalletWithAtm,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash?
    digitalWalletWithCash,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment?
    splitPayment,
    String? $__typename,
  });
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm<
    TRes
  >
  get atm;
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque<
    TRes
  >
  get manualCheque;
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque<
    TRes
  >
  get autoCheque;
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay<
    TRes
  >
  get fasterpay;
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay<
    TRes
  >
  get overnightFasterpay;
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash<
    TRes
  >
  get cash;
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash<
    TRes
  >
  get autoChequeWithEncashmentCash;
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm<
    TRes
  >
  get autoChequeWithEncashmentAtm;
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid<
    TRes
  >
  get secorePrepaid;
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm<
    TRes
  >
  get digitalWalletWithAtm;
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash<
    TRes
  >
  get digitalWalletWithCash;
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment<
    TRes
  >
  get splitPayment;
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? atm = _undefined,
    Object? manualCheque = _undefined,
    Object? autoCheque = _undefined,
    Object? fasterpay = _undefined,
    Object? overnightFasterpay = _undefined,
    Object? cash = _undefined,
    Object? autoChequeWithEncashmentCash = _undefined,
    Object? autoChequeWithEncashmentAtm = _undefined,
    Object? secorePrepaid = _undefined,
    Object? digitalWalletWithAtm = _undefined,
    Object? digitalWalletWithCash = _undefined,
    Object? splitPayment = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods(
      atm: atm == _undefined || atm == null
          ? _instance.atm
          : (atm
                as Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm),
      manualCheque: manualCheque == _undefined || manualCheque == null
          ? _instance.manualCheque
          : (manualCheque
                as Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque),
      autoCheque: autoCheque == _undefined || autoCheque == null
          ? _instance.autoCheque
          : (autoCheque
                as Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque),
      fasterpay: fasterpay == _undefined || fasterpay == null
          ? _instance.fasterpay
          : (fasterpay
                as Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay),
      overnightFasterpay:
          overnightFasterpay == _undefined || overnightFasterpay == null
          ? _instance.overnightFasterpay
          : (overnightFasterpay
                as Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay),
      cash: cash == _undefined || cash == null
          ? _instance.cash
          : (cash
                as Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash),
      autoChequeWithEncashmentCash:
          autoChequeWithEncashmentCash == _undefined ||
              autoChequeWithEncashmentCash == null
          ? _instance.autoChequeWithEncashmentCash
          : (autoChequeWithEncashmentCash
                as Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash),
      autoChequeWithEncashmentAtm:
          autoChequeWithEncashmentAtm == _undefined ||
              autoChequeWithEncashmentAtm == null
          ? _instance.autoChequeWithEncashmentAtm
          : (autoChequeWithEncashmentAtm
                as Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm),
      secorePrepaid: secorePrepaid == _undefined || secorePrepaid == null
          ? _instance.secorePrepaid
          : (secorePrepaid
                as Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid),
      digitalWalletWithAtm:
          digitalWalletWithAtm == _undefined || digitalWalletWithAtm == null
          ? _instance.digitalWalletWithAtm
          : (digitalWalletWithAtm
                as Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm),
      digitalWalletWithCash:
          digitalWalletWithCash == _undefined || digitalWalletWithCash == null
          ? _instance.digitalWalletWithCash
          : (digitalWalletWithCash
                as Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash),
      splitPayment: splitPayment == _undefined || splitPayment == null
          ? _instance.splitPayment
          : (splitPayment
                as Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm<
    TRes
  >
  get atm {
    final local$atm = _instance.atm;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm(
      local$atm,
      (e) => call(atm: e),
    );
  }

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque<
    TRes
  >
  get manualCheque {
    final local$manualCheque = _instance.manualCheque;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque(
      local$manualCheque,
      (e) => call(manualCheque: e),
    );
  }

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque<
    TRes
  >
  get autoCheque {
    final local$autoCheque = _instance.autoCheque;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque(
      local$autoCheque,
      (e) => call(autoCheque: e),
    );
  }

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay<
    TRes
  >
  get fasterpay {
    final local$fasterpay = _instance.fasterpay;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay(
      local$fasterpay,
      (e) => call(fasterpay: e),
    );
  }

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay<
    TRes
  >
  get overnightFasterpay {
    final local$overnightFasterpay = _instance.overnightFasterpay;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay(
      local$overnightFasterpay,
      (e) => call(overnightFasterpay: e),
    );
  }

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash<
    TRes
  >
  get cash {
    final local$cash = _instance.cash;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash(
      local$cash,
      (e) => call(cash: e),
    );
  }

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash<
    TRes
  >
  get autoChequeWithEncashmentCash {
    final local$autoChequeWithEncashmentCash =
        _instance.autoChequeWithEncashmentCash;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash(
      local$autoChequeWithEncashmentCash,
      (e) => call(autoChequeWithEncashmentCash: e),
    );
  }

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm<
    TRes
  >
  get autoChequeWithEncashmentAtm {
    final local$autoChequeWithEncashmentAtm =
        _instance.autoChequeWithEncashmentAtm;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm(
      local$autoChequeWithEncashmentAtm,
      (e) => call(autoChequeWithEncashmentAtm: e),
    );
  }

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid<
    TRes
  >
  get secorePrepaid {
    final local$secorePrepaid = _instance.secorePrepaid;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid(
      local$secorePrepaid,
      (e) => call(secorePrepaid: e),
    );
  }

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm<
    TRes
  >
  get digitalWalletWithAtm {
    final local$digitalWalletWithAtm = _instance.digitalWalletWithAtm;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm(
      local$digitalWalletWithAtm,
      (e) => call(digitalWalletWithAtm: e),
    );
  }

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash<
    TRes
  >
  get digitalWalletWithCash {
    final local$digitalWalletWithCash = _instance.digitalWalletWithCash;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash(
      local$digitalWalletWithCash,
      (e) => call(digitalWalletWithCash: e),
    );
  }

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment<
    TRes
  >
  get splitPayment {
    final local$splitPayment = _instance.splitPayment;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment(
      local$splitPayment,
      (e) => call(splitPayment: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods(
    this._res,
  );

  TRes _res;

  call({
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm?
    atm,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque?
    manualCheque,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque?
    autoCheque,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay?
    fasterpay,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay?
    overnightFasterpay,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash?
    cash,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash?
    autoChequeWithEncashmentCash,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm?
    autoChequeWithEncashmentAtm,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid?
    secorePrepaid,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm?
    digitalWalletWithAtm,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash?
    digitalWalletWithCash,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment?
    splitPayment,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm<
    TRes
  >
  get atm =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm.stub(
        _res,
      );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque<
    TRes
  >
  get manualCheque =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque.stub(
        _res,
      );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque<
    TRes
  >
  get autoCheque =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque.stub(
        _res,
      );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay<
    TRes
  >
  get fasterpay =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay.stub(
        _res,
      );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay<
    TRes
  >
  get overnightFasterpay =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay.stub(
        _res,
      );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash<
    TRes
  >
  get cash =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash.stub(
        _res,
      );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash<
    TRes
  >
  get autoChequeWithEncashmentCash =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash.stub(
        _res,
      );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm<
    TRes
  >
  get autoChequeWithEncashmentAtm =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm.stub(
        _res,
      );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid<
    TRes
  >
  get secorePrepaid =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid.stub(
        _res,
      );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm<
    TRes
  >
  get digitalWalletWithAtm =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm.stub(
        _res,
      );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash<
    TRes
  >
  get digitalWalletWithCash =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash.stub(
        _res,
      );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment<
    TRes
  >
  get splitPayment =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment.stub(
        _res,
      );
}

class Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm
    implements Fragment$PaymentMethodFields$paymentMethods$atm {
  Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm({
    required this.rounding,
    required this.enabled,
    required this.paymentMethod,
    required this.maxUpperLimit,
    this.$__typename = 'AtmPaymentMethod',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$rounding = json['rounding'];
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm(
      rounding:
          Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding.fromJson(
            (l$rounding as Map<String, dynamic>),
          ),
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding
  rounding;

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rounding = rounding;
    _resultData['rounding'] = l$rounding.toJson();
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rounding = rounding;
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rounding,
      l$enabled,
      l$paymentMethod,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$rounding = rounding;
    final lOther$rounding = other.rounding;
    if (l$rounding != lOther$rounding) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm
    on Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm<
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm;

  TRes call({
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding?
    rounding,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  });
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding<
    TRes
  >
  get rounding;
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rounding = _undefined,
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm(
      rounding: rounding == _undefined || rounding == null
          ? _instance.rounding
          : (rounding
                as Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding<
    TRes
  >
  get rounding {
    final local$rounding = _instance.rounding;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding(
      local$rounding,
      (e) => call(rounding: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm(
    this._res,
  );

  TRes _res;

  call({
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding?
    rounding,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding<
    TRes
  >
  get rounding =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding.stub(
        _res,
      );
}

class Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding
    implements Fragment$PaymentMethodFields$paymentMethods$atm$rounding {
  Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding({
    required this.value,
    required this.roundingType,
    this.$__typename = 'Rounding',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$roundingType = json['roundingType'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding(
      value: (l$value as num).toDouble(),
      roundingType: fromJson$Enum$RoundingType((l$roundingType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final double value;

  final Enum$RoundingType roundingType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$roundingType = roundingType;
    _resultData['roundingType'] = toJson$Enum$RoundingType(l$roundingType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$roundingType = roundingType;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$roundingType, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$roundingType = roundingType;
    final lOther$roundingType = other.roundingType;
    if (l$roundingType != lOther$roundingType) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding
    on
        Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding<
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding;

  TRes call({
    double? value,
    Enum$RoundingType? roundingType,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? roundingType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      roundingType: roundingType == _undefined || roundingType == null
          ? _instance.roundingType
          : (roundingType as Enum$RoundingType),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$atm$rounding(
    this._res,
  );

  TRes _res;

  call({double? value, Enum$RoundingType? roundingType, String? $__typename}) =>
      _res;
}

class Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque
    implements Fragment$PaymentMethodFields$paymentMethods$manualCheque {
  Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque({
    required this.enabled,
    required this.paymentMethod,
    required this.maxUpperLimit,
    this.$__typename = 'ManualChequePaymentMethod',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque(
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enabled,
      l$paymentMethod,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque
    on
        Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque<
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque;

  TRes call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$manualCheque(
    this._res,
  );

  TRes _res;

  call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque
    implements Fragment$PaymentMethodFields$paymentMethods$autoCheque {
  Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque({
    required this.enforceIdentification,
    required this.enabled,
    required this.paymentMethod,
    required this.logoPath,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'AutoChequePaymentMethod',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enforceIdentification = json['enforceIdentification'];
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$logoPath = json['logoPath'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque(
      enforceIdentification: (l$enforceIdentification as bool),
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      logoPath: (l$logoPath as String),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enforceIdentification;

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final String logoPath;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enforceIdentification = enforceIdentification;
    _resultData['enforceIdentification'] = l$enforceIdentification;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$logoPath = logoPath;
    _resultData['logoPath'] = l$logoPath;
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enforceIdentification = enforceIdentification;
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$logoPath = logoPath;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enforceIdentification,
      l$enabled,
      l$paymentMethod,
      l$logoPath,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enforceIdentification = enforceIdentification;
    final lOther$enforceIdentification = other.enforceIdentification;
    if (l$enforceIdentification != lOther$enforceIdentification) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$logoPath = logoPath;
    final lOther$logoPath = other.logoPath;
    if (l$logoPath != lOther$logoPath) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque
    on
        Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque<
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque;

  TRes call({
    bool? enforceIdentification,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    String? logoPath,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enforceIdentification = _undefined,
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? logoPath = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque(
      enforceIdentification:
          enforceIdentification == _undefined || enforceIdentification == null
          ? _instance.enforceIdentification
          : (enforceIdentification as bool),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      logoPath: logoPath == _undefined || logoPath == null
          ? _instance.logoPath
          : (logoPath as String),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoCheque(
    this._res,
  );

  TRes _res;

  call({
    bool? enforceIdentification,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    String? logoPath,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay
    implements Fragment$PaymentMethodFields$paymentMethods$fasterpay {
  Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay({
    required this.flatFeeValue,
    required this.paymentMethod,
    required this.enabled,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'FasterpayPaymentMethod',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$flatFeeValue = json['flatFeeValue'];
    final l$paymentMethod = json['paymentMethod'];
    final l$enabled = json['enabled'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay(
      flatFeeValue: (l$flatFeeValue as num).toDouble(),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      enabled: (l$enabled as bool),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double flatFeeValue;

  final Enum$PaymentMethod paymentMethod;

  final bool enabled;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$flatFeeValue = flatFeeValue;
    _resultData['flatFeeValue'] = l$flatFeeValue;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$flatFeeValue = flatFeeValue;
    final l$paymentMethod = paymentMethod;
    final l$enabled = enabled;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$flatFeeValue,
      l$paymentMethod,
      l$enabled,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$flatFeeValue = flatFeeValue;
    final lOther$flatFeeValue = other.flatFeeValue;
    if (l$flatFeeValue != lOther$flatFeeValue) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay
    on Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay<
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay;

  TRes call({
    double? flatFeeValue,
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? flatFeeValue = _undefined,
    Object? paymentMethod = _undefined,
    Object? enabled = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay(
      flatFeeValue: flatFeeValue == _undefined || flatFeeValue == null
          ? _instance.flatFeeValue
          : (flatFeeValue as double),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$fasterpay(
    this._res,
  );

  TRes _res;

  call({
    double? flatFeeValue,
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay
    implements Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay {
  Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay({
    required this.paymentMethod,
    required this.enabled,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'OvernightFasterpayPaymentMethod',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$paymentMethod = json['paymentMethod'];
    final l$enabled = json['enabled'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay(
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      enabled: (l$enabled as bool),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$PaymentMethod paymentMethod;

  final bool enabled;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentMethod = paymentMethod;
    final l$enabled = enabled;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$paymentMethod,
      l$enabled,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay
    on
        Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay<
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay;

  TRes call({
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentMethod = _undefined,
    Object? enabled = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay(
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$overnightFasterpay(
    this._res,
  );

  TRes _res;

  call({
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash
    implements Fragment$PaymentMethodFields$paymentMethods$cash {
  Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash({
    required this.numberOfRemittancesToPrint,
    required this.paymentMethod,
    required this.enabled,
    required this.maxUpperLimit,
    this.$__typename = 'CashPaymentMethod',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$numberOfRemittancesToPrint = json['numberOfRemittancesToPrint'];
    final l$paymentMethod = json['paymentMethod'];
    final l$enabled = json['enabled'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash(
      numberOfRemittancesToPrint: (l$numberOfRemittancesToPrint as int),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      enabled: (l$enabled as bool),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int numberOfRemittancesToPrint;

  final Enum$PaymentMethod paymentMethod;

  final bool enabled;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$numberOfRemittancesToPrint = numberOfRemittancesToPrint;
    _resultData['numberOfRemittancesToPrint'] = l$numberOfRemittancesToPrint;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$numberOfRemittancesToPrint = numberOfRemittancesToPrint;
    final l$paymentMethod = paymentMethod;
    final l$enabled = enabled;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$numberOfRemittancesToPrint,
      l$paymentMethod,
      l$enabled,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$numberOfRemittancesToPrint = numberOfRemittancesToPrint;
    final lOther$numberOfRemittancesToPrint = other.numberOfRemittancesToPrint;
    if (l$numberOfRemittancesToPrint != lOther$numberOfRemittancesToPrint) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash
    on Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash<
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash;

  TRes call({
    int? numberOfRemittancesToPrint,
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? numberOfRemittancesToPrint = _undefined,
    Object? paymentMethod = _undefined,
    Object? enabled = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash(
      numberOfRemittancesToPrint:
          numberOfRemittancesToPrint == _undefined ||
              numberOfRemittancesToPrint == null
          ? _instance.numberOfRemittancesToPrint
          : (numberOfRemittancesToPrint as int),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$cash(
    this._res,
  );

  TRes _res;

  call({
    int? numberOfRemittancesToPrint,
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash
    implements
        Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash {
  Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash({
    required this.agent,
    required this.commissionPercent,
    required this.enabled,
    required this.enforceIdentification,
    required this.flatFeeThreshold,
    required this.flatFeeValue,
    required this.logoPath,
    required this.minCommission,
    required this.minDenomination,
    required this.paymentMethod,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'AutoChequeWithEncashmentCashPaymentMethod',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$agent = json['agent'];
    final l$commissionPercent = json['commissionPercent'];
    final l$enabled = json['enabled'];
    final l$enforceIdentification = json['enforceIdentification'];
    final l$flatFeeThreshold = json['flatFeeThreshold'];
    final l$flatFeeValue = json['flatFeeValue'];
    final l$logoPath = json['logoPath'];
    final l$minCommission = json['minCommission'];
    final l$minDenomination = json['minDenomination'];
    final l$paymentMethod = json['paymentMethod'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash(
      agent: (l$agent as String),
      commissionPercent: (l$commissionPercent as num).toDouble(),
      enabled: (l$enabled as bool),
      enforceIdentification: (l$enforceIdentification as bool),
      flatFeeThreshold: (l$flatFeeThreshold as num).toDouble(),
      flatFeeValue: (l$flatFeeValue as num).toDouble(),
      logoPath: (l$logoPath as String),
      minCommission: (l$minCommission as num).toDouble(),
      minDenomination: (l$minDenomination as num).toDouble(),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String agent;

  final double commissionPercent;

  final bool enabled;

  final bool enforceIdentification;

  final double flatFeeThreshold;

  final double flatFeeValue;

  final String logoPath;

  final double minCommission;

  final double minDenomination;

  final Enum$PaymentMethod paymentMethod;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$agent = agent;
    _resultData['agent'] = l$agent;
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$enforceIdentification = enforceIdentification;
    _resultData['enforceIdentification'] = l$enforceIdentification;
    final l$flatFeeThreshold = flatFeeThreshold;
    _resultData['flatFeeThreshold'] = l$flatFeeThreshold;
    final l$flatFeeValue = flatFeeValue;
    _resultData['flatFeeValue'] = l$flatFeeValue;
    final l$logoPath = logoPath;
    _resultData['logoPath'] = l$logoPath;
    final l$minCommission = minCommission;
    _resultData['minCommission'] = l$minCommission;
    final l$minDenomination = minDenomination;
    _resultData['minDenomination'] = l$minDenomination;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$agent = agent;
    final l$commissionPercent = commissionPercent;
    final l$enabled = enabled;
    final l$enforceIdentification = enforceIdentification;
    final l$flatFeeThreshold = flatFeeThreshold;
    final l$flatFeeValue = flatFeeValue;
    final l$logoPath = logoPath;
    final l$minCommission = minCommission;
    final l$minDenomination = minDenomination;
    final l$paymentMethod = paymentMethod;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$agent,
      l$commissionPercent,
      l$enabled,
      l$enforceIdentification,
      l$flatFeeThreshold,
      l$flatFeeValue,
      l$logoPath,
      l$minCommission,
      l$minDenomination,
      l$paymentMethod,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$agent = agent;
    final lOther$agent = other.agent;
    if (l$agent != lOther$agent) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$enforceIdentification = enforceIdentification;
    final lOther$enforceIdentification = other.enforceIdentification;
    if (l$enforceIdentification != lOther$enforceIdentification) {
      return false;
    }
    final l$flatFeeThreshold = flatFeeThreshold;
    final lOther$flatFeeThreshold = other.flatFeeThreshold;
    if (l$flatFeeThreshold != lOther$flatFeeThreshold) {
      return false;
    }
    final l$flatFeeValue = flatFeeValue;
    final lOther$flatFeeValue = other.flatFeeValue;
    if (l$flatFeeValue != lOther$flatFeeValue) {
      return false;
    }
    final l$logoPath = logoPath;
    final lOther$logoPath = other.logoPath;
    if (l$logoPath != lOther$logoPath) {
      return false;
    }
    final l$minCommission = minCommission;
    final lOther$minCommission = other.minCommission;
    if (l$minCommission != lOther$minCommission) {
      return false;
    }
    final l$minDenomination = minDenomination;
    final lOther$minDenomination = other.minDenomination;
    if (l$minDenomination != lOther$minDenomination) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash
    on
        Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash<
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash;

  TRes call({
    String? agent,
    double? commissionPercent,
    bool? enabled,
    bool? enforceIdentification,
    double? flatFeeThreshold,
    double? flatFeeValue,
    String? logoPath,
    double? minCommission,
    double? minDenomination,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? agent = _undefined,
    Object? commissionPercent = _undefined,
    Object? enabled = _undefined,
    Object? enforceIdentification = _undefined,
    Object? flatFeeThreshold = _undefined,
    Object? flatFeeValue = _undefined,
    Object? logoPath = _undefined,
    Object? minCommission = _undefined,
    Object? minDenomination = _undefined,
    Object? paymentMethod = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash(
      agent: agent == _undefined || agent == null
          ? _instance.agent
          : (agent as String),
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      enforceIdentification:
          enforceIdentification == _undefined || enforceIdentification == null
          ? _instance.enforceIdentification
          : (enforceIdentification as bool),
      flatFeeThreshold:
          flatFeeThreshold == _undefined || flatFeeThreshold == null
          ? _instance.flatFeeThreshold
          : (flatFeeThreshold as double),
      flatFeeValue: flatFeeValue == _undefined || flatFeeValue == null
          ? _instance.flatFeeValue
          : (flatFeeValue as double),
      logoPath: logoPath == _undefined || logoPath == null
          ? _instance.logoPath
          : (logoPath as String),
      minCommission: minCommission == _undefined || minCommission == null
          ? _instance.minCommission
          : (minCommission as double),
      minDenomination: minDenomination == _undefined || minDenomination == null
          ? _instance.minDenomination
          : (minDenomination as double),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentCash(
    this._res,
  );

  TRes _res;

  call({
    String? agent,
    double? commissionPercent,
    bool? enabled,
    bool? enforceIdentification,
    double? flatFeeThreshold,
    double? flatFeeValue,
    String? logoPath,
    double? minCommission,
    double? minDenomination,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm
    implements
        Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm {
  Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm({
    required this.agent,
    required this.commissionPercent,
    required this.enabled,
    required this.enforceIdentification,
    required this.flatFeeThreshold,
    required this.flatFeeValue,
    required this.logoPath,
    required this.minCommission,
    required this.minDenomination,
    required this.paymentMethod,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'AutoChequeWithEncashmentAtmPaymentMethod',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$agent = json['agent'];
    final l$commissionPercent = json['commissionPercent'];
    final l$enabled = json['enabled'];
    final l$enforceIdentification = json['enforceIdentification'];
    final l$flatFeeThreshold = json['flatFeeThreshold'];
    final l$flatFeeValue = json['flatFeeValue'];
    final l$logoPath = json['logoPath'];
    final l$minCommission = json['minCommission'];
    final l$minDenomination = json['minDenomination'];
    final l$paymentMethod = json['paymentMethod'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm(
      agent: (l$agent as String),
      commissionPercent: (l$commissionPercent as num).toDouble(),
      enabled: (l$enabled as bool),
      enforceIdentification: (l$enforceIdentification as bool),
      flatFeeThreshold: (l$flatFeeThreshold as num).toDouble(),
      flatFeeValue: (l$flatFeeValue as num).toDouble(),
      logoPath: (l$logoPath as String),
      minCommission: (l$minCommission as num).toDouble(),
      minDenomination: (l$minDenomination as num).toDouble(),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String agent;

  final double commissionPercent;

  final bool enabled;

  final bool enforceIdentification;

  final double flatFeeThreshold;

  final double flatFeeValue;

  final String logoPath;

  final double minCommission;

  final double minDenomination;

  final Enum$PaymentMethod paymentMethod;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$agent = agent;
    _resultData['agent'] = l$agent;
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$enforceIdentification = enforceIdentification;
    _resultData['enforceIdentification'] = l$enforceIdentification;
    final l$flatFeeThreshold = flatFeeThreshold;
    _resultData['flatFeeThreshold'] = l$flatFeeThreshold;
    final l$flatFeeValue = flatFeeValue;
    _resultData['flatFeeValue'] = l$flatFeeValue;
    final l$logoPath = logoPath;
    _resultData['logoPath'] = l$logoPath;
    final l$minCommission = minCommission;
    _resultData['minCommission'] = l$minCommission;
    final l$minDenomination = minDenomination;
    _resultData['minDenomination'] = l$minDenomination;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$agent = agent;
    final l$commissionPercent = commissionPercent;
    final l$enabled = enabled;
    final l$enforceIdentification = enforceIdentification;
    final l$flatFeeThreshold = flatFeeThreshold;
    final l$flatFeeValue = flatFeeValue;
    final l$logoPath = logoPath;
    final l$minCommission = minCommission;
    final l$minDenomination = minDenomination;
    final l$paymentMethod = paymentMethod;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$agent,
      l$commissionPercent,
      l$enabled,
      l$enforceIdentification,
      l$flatFeeThreshold,
      l$flatFeeValue,
      l$logoPath,
      l$minCommission,
      l$minDenomination,
      l$paymentMethod,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$agent = agent;
    final lOther$agent = other.agent;
    if (l$agent != lOther$agent) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$enforceIdentification = enforceIdentification;
    final lOther$enforceIdentification = other.enforceIdentification;
    if (l$enforceIdentification != lOther$enforceIdentification) {
      return false;
    }
    final l$flatFeeThreshold = flatFeeThreshold;
    final lOther$flatFeeThreshold = other.flatFeeThreshold;
    if (l$flatFeeThreshold != lOther$flatFeeThreshold) {
      return false;
    }
    final l$flatFeeValue = flatFeeValue;
    final lOther$flatFeeValue = other.flatFeeValue;
    if (l$flatFeeValue != lOther$flatFeeValue) {
      return false;
    }
    final l$logoPath = logoPath;
    final lOther$logoPath = other.logoPath;
    if (l$logoPath != lOther$logoPath) {
      return false;
    }
    final l$minCommission = minCommission;
    final lOther$minCommission = other.minCommission;
    if (l$minCommission != lOther$minCommission) {
      return false;
    }
    final l$minDenomination = minDenomination;
    final lOther$minDenomination = other.minDenomination;
    if (l$minDenomination != lOther$minDenomination) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm
    on
        Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm<
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm;

  TRes call({
    String? agent,
    double? commissionPercent,
    bool? enabled,
    bool? enforceIdentification,
    double? flatFeeThreshold,
    double? flatFeeValue,
    String? logoPath,
    double? minCommission,
    double? minDenomination,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? agent = _undefined,
    Object? commissionPercent = _undefined,
    Object? enabled = _undefined,
    Object? enforceIdentification = _undefined,
    Object? flatFeeThreshold = _undefined,
    Object? flatFeeValue = _undefined,
    Object? logoPath = _undefined,
    Object? minCommission = _undefined,
    Object? minDenomination = _undefined,
    Object? paymentMethod = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm(
      agent: agent == _undefined || agent == null
          ? _instance.agent
          : (agent as String),
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      enforceIdentification:
          enforceIdentification == _undefined || enforceIdentification == null
          ? _instance.enforceIdentification
          : (enforceIdentification as bool),
      flatFeeThreshold:
          flatFeeThreshold == _undefined || flatFeeThreshold == null
          ? _instance.flatFeeThreshold
          : (flatFeeThreshold as double),
      flatFeeValue: flatFeeValue == _undefined || flatFeeValue == null
          ? _instance.flatFeeValue
          : (flatFeeValue as double),
      logoPath: logoPath == _undefined || logoPath == null
          ? _instance.logoPath
          : (logoPath as String),
      minCommission: minCommission == _undefined || minCommission == null
          ? _instance.minCommission
          : (minCommission as double),
      minDenomination: minDenomination == _undefined || minDenomination == null
          ? _instance.minDenomination
          : (minDenomination as double),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$autoChequeWithEncashmentAtm(
    this._res,
  );

  TRes _res;

  call({
    String? agent,
    double? commissionPercent,
    bool? enabled,
    bool? enforceIdentification,
    double? flatFeeThreshold,
    double? flatFeeValue,
    String? logoPath,
    double? minCommission,
    double? minDenomination,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid
    implements Fragment$PaymentMethodFields$paymentMethods$secorePrepaid {
  Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid({
    required this.commissionPercent,
    required this.paymentMethod,
    required this.enabled,
    required this.maxUpperLimit,
    this.$__typename = 'SecorePrepaidPaymentMethod',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$commissionPercent = json['commissionPercent'];
    final l$paymentMethod = json['paymentMethod'];
    final l$enabled = json['enabled'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid(
      commissionPercent: (l$commissionPercent as num).toDouble(),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      enabled: (l$enabled as bool),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double commissionPercent;

  final Enum$PaymentMethod paymentMethod;

  final bool enabled;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$commissionPercent = commissionPercent;
    final l$paymentMethod = paymentMethod;
    final l$enabled = enabled;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$commissionPercent,
      l$paymentMethod,
      l$enabled,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid
    on
        Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid<
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid;

  TRes call({
    double? commissionPercent,
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? commissionPercent = _undefined,
    Object? paymentMethod = _undefined,
    Object? enabled = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid(
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$secorePrepaid(
    this._res,
  );

  TRes _res;

  call({
    double? commissionPercent,
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm
    implements
        Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm {
  Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm({
    required this.commissionPercent,
    required this.enabled,
    required this.paymentMethod,
    required this.rounding,
    required this.maxUpperLimit,
    this.$__typename = 'DigitalWalletWithAtmPaymentMethod',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$commissionPercent = json['commissionPercent'];
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$rounding = json['rounding'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm(
      commissionPercent: (l$commissionPercent as num).toDouble(),
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      rounding:
          Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding.fromJson(
            (l$rounding as Map<String, dynamic>),
          ),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double commissionPercent;

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding
  rounding;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$rounding = rounding;
    _resultData['rounding'] = l$rounding.toJson();
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$commissionPercent = commissionPercent;
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$rounding = rounding;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$commissionPercent,
      l$enabled,
      l$paymentMethod,
      l$rounding,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$rounding = rounding;
    final lOther$rounding = other.rounding;
    if (l$rounding != lOther$rounding) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm
    on
        Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm<
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm;

  TRes call({
    double? commissionPercent,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding?
    rounding,
    double? maxUpperLimit,
    String? $__typename,
  });
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding<
    TRes
  >
  get rounding;
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? commissionPercent = _undefined,
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? rounding = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm(
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      rounding: rounding == _undefined || rounding == null
          ? _instance.rounding
          : (rounding
                as Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding<
    TRes
  >
  get rounding {
    final local$rounding = _instance.rounding;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding(
      local$rounding,
      (e) => call(rounding: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm(
    this._res,
  );

  TRes _res;

  call({
    double? commissionPercent,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding?
    rounding,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding<
    TRes
  >
  get rounding =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding.stub(
        _res,
      );
}

class Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding
    implements
        Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding {
  Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding({
    required this.roundingType,
    required this.value,
    this.$__typename = 'Rounding',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$roundingType = json['roundingType'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding(
      roundingType: fromJson$Enum$RoundingType((l$roundingType as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$RoundingType roundingType;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$roundingType = roundingType;
    _resultData['roundingType'] = toJson$Enum$RoundingType(l$roundingType);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$roundingType = roundingType;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$roundingType, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$roundingType = roundingType;
    final lOther$roundingType = other.roundingType;
    if (l$roundingType != lOther$roundingType) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding
    on
        Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding<
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding;

  TRes call({
    Enum$RoundingType? roundingType,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? roundingType = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding(
      roundingType: roundingType == _undefined || roundingType == null
          ? _instance.roundingType
          : (roundingType as Enum$RoundingType),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithAtm$rounding(
    this._res,
  );

  TRes _res;

  call({Enum$RoundingType? roundingType, double? value, String? $__typename}) =>
      _res;
}

class Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash
    implements
        Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash {
  Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash({
    required this.commissionPercent,
    required this.enabled,
    required this.paymentMethod,
    required this.rounding,
    required this.maxUpperLimit,
    this.$__typename = 'DigitalWalletWithCashPaymentMethod',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$commissionPercent = json['commissionPercent'];
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$rounding = json['rounding'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash(
      commissionPercent: (l$commissionPercent as num).toDouble(),
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      rounding:
          Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding.fromJson(
            (l$rounding as Map<String, dynamic>),
          ),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double commissionPercent;

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding
  rounding;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$rounding = rounding;
    _resultData['rounding'] = l$rounding.toJson();
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$commissionPercent = commissionPercent;
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$rounding = rounding;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$commissionPercent,
      l$enabled,
      l$paymentMethod,
      l$rounding,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$rounding = rounding;
    final lOther$rounding = other.rounding;
    if (l$rounding != lOther$rounding) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash
    on
        Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash<
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash;

  TRes call({
    double? commissionPercent,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding?
    rounding,
    double? maxUpperLimit,
    String? $__typename,
  });
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding<
    TRes
  >
  get rounding;
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? commissionPercent = _undefined,
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? rounding = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash(
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      rounding: rounding == _undefined || rounding == null
          ? _instance.rounding
          : (rounding
                as Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding<
    TRes
  >
  get rounding {
    final local$rounding = _instance.rounding;
    return CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding(
      local$rounding,
      (e) => call(rounding: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash(
    this._res,
  );

  TRes _res;

  call({
    double? commissionPercent,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding?
    rounding,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding<
    TRes
  >
  get rounding =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding.stub(
        _res,
      );
}

class Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding
    implements
        Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding {
  Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding({
    required this.roundingType,
    required this.value,
    this.$__typename = 'Rounding',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$roundingType = json['roundingType'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding(
      roundingType: fromJson$Enum$RoundingType((l$roundingType as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$RoundingType roundingType;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$roundingType = roundingType;
    _resultData['roundingType'] = toJson$Enum$RoundingType(l$roundingType);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$roundingType = roundingType;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$roundingType, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$roundingType = roundingType;
    final lOther$roundingType = other.roundingType;
    if (l$roundingType != lOther$roundingType) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding
    on
        Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding<
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding;

  TRes call({
    Enum$RoundingType? roundingType,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? roundingType = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding(
      roundingType: roundingType == _undefined || roundingType == null
          ? _instance.roundingType
          : (roundingType as Enum$RoundingType),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$digitalWalletWithCash$rounding(
    this._res,
  );

  TRes _res;

  call({Enum$RoundingType? roundingType, double? value, String? $__typename}) =>
      _res;
}

class Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment
    implements Fragment$PaymentMethodFields$paymentMethods$splitPayment {
  Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment({
    required this.enabled,
    required this.paymentMethod,
    required this.maxUpperLimit,
    this.$__typename = 'SplitPaymentMethod',
  });

  factory Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment(
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enabled,
      l$paymentMethod,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment
    on
        Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment {
  CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment<
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment
  >
  get copyWith =>
      CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment<
  TRes
> {
  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment
    instance,
    TRes Function(
      Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment,
    )
    then,
  ) = _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment;

  factory CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment;

  TRes call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment(
    this._instance,
    this._then,
  );

  final Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment
  _instance;

  final TRes Function(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment<
  TRes
>
    implements
        CopyWith$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvances$searchAdvances$nodes$payableYard$paymentMethods$splitPayment(
    this._res,
  );

  TRes _res;

  call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}
