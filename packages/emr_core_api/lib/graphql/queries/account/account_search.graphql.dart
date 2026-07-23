import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$AccountSearch {
  factory Variables$Query$AccountSearch({
    String? after,
    String? before,
    int? first,
    int? last,
    required Input$AccountsSearchInput input,
    Input$AccountFilterInput? where,
    List<Input$AccountSortInput>? order,
  }) => Variables$Query$AccountSearch._({
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    r'input': input,
    if (where != null) r'where': where,
    if (order != null) r'order': order,
  });

  Variables$Query$AccountSearch._(this._$data);

  factory Variables$Query$AccountSearch.fromJson(Map<String, dynamic> data) {
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
    result$data['input'] = Input$AccountsSearchInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$AccountFilterInput.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) => Input$AccountSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    return Variables$Query$AccountSearch._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  Input$AccountsSearchInput get input =>
      (_$data['input'] as Input$AccountsSearchInput);

  Input$AccountFilterInput? get where =>
      (_$data['where'] as Input$AccountFilterInput?);

  List<Input$AccountSortInput>? get order =>
      (_$data['order'] as List<Input$AccountSortInput>?);

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
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$AccountSearch<Variables$Query$AccountSearch>
  get copyWith => CopyWith$Variables$Query$AccountSearch(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$AccountSearch ||
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
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
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
    final l$after = after;
    final l$before = before;
    final l$first = first;
    final l$last = last;
    final l$input = input;
    final l$where = where;
    final l$order = order;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      l$input,
      _$data.containsKey('where') ? l$where : const {},
      _$data.containsKey('order')
          ? l$order == null
                ? null
                : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$AccountSearch<TRes> {
  factory CopyWith$Variables$Query$AccountSearch(
    Variables$Query$AccountSearch instance,
    TRes Function(Variables$Query$AccountSearch) then,
  ) = _CopyWithImpl$Variables$Query$AccountSearch;

  factory CopyWith$Variables$Query$AccountSearch.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$AccountSearch;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$AccountsSearchInput? input,
    Input$AccountFilterInput? where,
    List<Input$AccountSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$AccountSearch<TRes>
    implements CopyWith$Variables$Query$AccountSearch<TRes> {
  _CopyWithImpl$Variables$Query$AccountSearch(this._instance, this._then);

  final Variables$Query$AccountSearch _instance;

  final TRes Function(Variables$Query$AccountSearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? input = _undefined,
    Object? where = _undefined,
    Object? order = _undefined,
  }) => _then(
    Variables$Query$AccountSearch._({
      ..._instance._$data,
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (input != _undefined && input != null)
        'input': (input as Input$AccountsSearchInput),
      if (where != _undefined) 'where': (where as Input$AccountFilterInput?),
      if (order != _undefined)
        'order': (order as List<Input$AccountSortInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$AccountSearch<TRes>
    implements CopyWith$Variables$Query$AccountSearch<TRes> {
  _CopyWithStubImpl$Variables$Query$AccountSearch(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$AccountsSearchInput? input,
    Input$AccountFilterInput? where,
    List<Input$AccountSortInput>? order,
  }) => _res;
}

class Query$AccountSearch {
  Query$AccountSearch({this.searchAccounts, this.$__typename = 'Query'});

  factory Query$AccountSearch.fromJson(Map<String, dynamic> json) {
    final l$searchAccounts = json['searchAccounts'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearch(
      searchAccounts: l$searchAccounts == null
          ? null
          : Query$AccountSearch$searchAccounts.fromJson(
              (l$searchAccounts as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AccountSearch$searchAccounts? searchAccounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchAccounts = searchAccounts;
    _resultData['searchAccounts'] = l$searchAccounts?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchAccounts = searchAccounts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchAccounts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AccountSearch || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchAccounts = searchAccounts;
    final lOther$searchAccounts = other.searchAccounts;
    if (l$searchAccounts != lOther$searchAccounts) {
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

extension UtilityExtension$Query$AccountSearch on Query$AccountSearch {
  CopyWith$Query$AccountSearch<Query$AccountSearch> get copyWith =>
      CopyWith$Query$AccountSearch(this, (i) => i);
}

abstract class CopyWith$Query$AccountSearch<TRes> {
  factory CopyWith$Query$AccountSearch(
    Query$AccountSearch instance,
    TRes Function(Query$AccountSearch) then,
  ) = _CopyWithImpl$Query$AccountSearch;

  factory CopyWith$Query$AccountSearch.stub(TRes res) =
      _CopyWithStubImpl$Query$AccountSearch;

  TRes call({
    Query$AccountSearch$searchAccounts? searchAccounts,
    String? $__typename,
  });
  CopyWith$Query$AccountSearch$searchAccounts<TRes> get searchAccounts;
}

class _CopyWithImpl$Query$AccountSearch<TRes>
    implements CopyWith$Query$AccountSearch<TRes> {
  _CopyWithImpl$Query$AccountSearch(this._instance, this._then);

  final Query$AccountSearch _instance;

  final TRes Function(Query$AccountSearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchAccounts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearch(
      searchAccounts: searchAccounts == _undefined
          ? _instance.searchAccounts
          : (searchAccounts as Query$AccountSearch$searchAccounts?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AccountSearch$searchAccounts<TRes> get searchAccounts {
    final local$searchAccounts = _instance.searchAccounts;
    return local$searchAccounts == null
        ? CopyWith$Query$AccountSearch$searchAccounts.stub(_then(_instance))
        : CopyWith$Query$AccountSearch$searchAccounts(
            local$searchAccounts,
            (e) => call(searchAccounts: e),
          );
  }
}

class _CopyWithStubImpl$Query$AccountSearch<TRes>
    implements CopyWith$Query$AccountSearch<TRes> {
  _CopyWithStubImpl$Query$AccountSearch(this._res);

  TRes _res;

  call({
    Query$AccountSearch$searchAccounts? searchAccounts,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AccountSearch$searchAccounts<TRes> get searchAccounts =>
      CopyWith$Query$AccountSearch$searchAccounts.stub(_res);
}

const documentNodeQueryAccountSearch = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'AccountSearch'),
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
            name: NameNode(value: 'AccountsSearchInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'where')),
          type: NamedTypeNode(
            name: NameNode(value: 'AccountFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'order')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'AccountSortInput'),
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
            name: NameNode(value: 'searchAccounts'),
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
                name: NameNode(value: 'where'),
                value: VariableNode(name: NameNode(value: 'where')),
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
                        name: NameNode(value: 'name'),
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
                        name: NameNode(value: 'type'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'accountAddresses'),
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
                              name: NameNode(value: 'address1'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'address2'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'address3'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'address4'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'address5'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'address6'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'postCode'),
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
                                    name: NameNode(value: 'title'),
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
                                    name: NameNode(value: 'firstName'),
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
                                    name: NameNode(value: 'proofOfAddress'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'validTo'),
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
                                          name: NameNode(value: 'subType'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'sasUrl'),
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
                                    name: NameNode(
                                      value: 'proofOfIdentification',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'validTo'),
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
                                          name: NameNode(value: 'subType'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'sasUrl'),
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
                                    name: NameNode(value: 'contactPreferences'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'email'),
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
                                          name: NameNode(value: 'mobile'),
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
                                          name: NameNode(value: 'phone'),
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
                        name: NameNode(value: 'locations'),
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
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'addressKey'),
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
                        name: NameNode(value: 'primaryManager'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
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
                        name: NameNode(value: 'industryGroup'),
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
                        name: NameNode(value: 'managers'),
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
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'name'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'userInfo'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'emailAddress'),
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

class Query$AccountSearch$searchAccounts {
  Query$AccountSearch$searchAccounts({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SearchAccountsConnection',
  });

  factory Query$AccountSearch$searchAccounts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearch$searchAccounts(
      totalCount: (l$totalCount as int),
      pageInfo: Query$AccountSearch$searchAccounts$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$AccountSearch$searchAccounts$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$AccountSearch$searchAccounts$pageInfo pageInfo;

  final List<Query$AccountSearch$searchAccounts$nodes>? nodes;

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
    if (other is! Query$AccountSearch$searchAccounts ||
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

extension UtilityExtension$Query$AccountSearch$searchAccounts
    on Query$AccountSearch$searchAccounts {
  CopyWith$Query$AccountSearch$searchAccounts<
    Query$AccountSearch$searchAccounts
  >
  get copyWith => CopyWith$Query$AccountSearch$searchAccounts(this, (i) => i);
}

abstract class CopyWith$Query$AccountSearch$searchAccounts<TRes> {
  factory CopyWith$Query$AccountSearch$searchAccounts(
    Query$AccountSearch$searchAccounts instance,
    TRes Function(Query$AccountSearch$searchAccounts) then,
  ) = _CopyWithImpl$Query$AccountSearch$searchAccounts;

  factory CopyWith$Query$AccountSearch$searchAccounts.stub(TRes res) =
      _CopyWithStubImpl$Query$AccountSearch$searchAccounts;

  TRes call({
    int? totalCount,
    Query$AccountSearch$searchAccounts$pageInfo? pageInfo,
    List<Query$AccountSearch$searchAccounts$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$AccountSearch$searchAccounts$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$AccountSearch$searchAccounts$nodes>? Function(
      Iterable<
        CopyWith$Query$AccountSearch$searchAccounts$nodes<
          Query$AccountSearch$searchAccounts$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$AccountSearch$searchAccounts<TRes>
    implements CopyWith$Query$AccountSearch$searchAccounts<TRes> {
  _CopyWithImpl$Query$AccountSearch$searchAccounts(this._instance, this._then);

  final Query$AccountSearch$searchAccounts _instance;

  final TRes Function(Query$AccountSearch$searchAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearch$searchAccounts(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$AccountSearch$searchAccounts$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$AccountSearch$searchAccounts$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AccountSearch$searchAccounts$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$AccountSearch$searchAccounts$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$AccountSearch$searchAccounts$nodes>? Function(
      Iterable<
        CopyWith$Query$AccountSearch$searchAccounts$nodes<
          Query$AccountSearch$searchAccounts$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$AccountSearch$searchAccounts$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$AccountSearch$searchAccounts<TRes>
    implements CopyWith$Query$AccountSearch$searchAccounts<TRes> {
  _CopyWithStubImpl$Query$AccountSearch$searchAccounts(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$AccountSearch$searchAccounts$pageInfo? pageInfo,
    List<Query$AccountSearch$searchAccounts$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AccountSearch$searchAccounts$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$AccountSearch$searchAccounts$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$AccountSearch$searchAccounts$pageInfo {
  Query$AccountSearch$searchAccounts$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$AccountSearch$searchAccounts$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearch$searchAccounts$pageInfo(
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
    if (other is! Query$AccountSearch$searchAccounts$pageInfo ||
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

extension UtilityExtension$Query$AccountSearch$searchAccounts$pageInfo
    on Query$AccountSearch$searchAccounts$pageInfo {
  CopyWith$Query$AccountSearch$searchAccounts$pageInfo<
    Query$AccountSearch$searchAccounts$pageInfo
  >
  get copyWith =>
      CopyWith$Query$AccountSearch$searchAccounts$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$AccountSearch$searchAccounts$pageInfo<TRes> {
  factory CopyWith$Query$AccountSearch$searchAccounts$pageInfo(
    Query$AccountSearch$searchAccounts$pageInfo instance,
    TRes Function(Query$AccountSearch$searchAccounts$pageInfo) then,
  ) = _CopyWithImpl$Query$AccountSearch$searchAccounts$pageInfo;

  factory CopyWith$Query$AccountSearch$searchAccounts$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$AccountSearch$searchAccounts$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AccountSearch$searchAccounts$pageInfo<TRes>
    implements CopyWith$Query$AccountSearch$searchAccounts$pageInfo<TRes> {
  _CopyWithImpl$Query$AccountSearch$searchAccounts$pageInfo(
    this._instance,
    this._then,
  );

  final Query$AccountSearch$searchAccounts$pageInfo _instance;

  final TRes Function(Query$AccountSearch$searchAccounts$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearch$searchAccounts$pageInfo(
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

class _CopyWithStubImpl$Query$AccountSearch$searchAccounts$pageInfo<TRes>
    implements CopyWith$Query$AccountSearch$searchAccounts$pageInfo<TRes> {
  _CopyWithStubImpl$Query$AccountSearch$searchAccounts$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}

class Query$AccountSearch$searchAccounts$nodes {
  Query$AccountSearch$searchAccounts$nodes({
    required this.id,
    required this.name,
    required this.code,
    required this.type,
    this.accountAddresses,
    this.accountContacts,
    required this.locations,
    required this.primaryManager,
    this.industryGroup,
    required this.accountStatus,
    required this.managers,
    this.$__typename = 'Account',
  });

  factory Query$AccountSearch$searchAccounts$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$code = json['code'];
    final l$type = json['type'];
    final l$accountAddresses = json['accountAddresses'];
    final l$accountContacts = json['accountContacts'];
    final l$locations = json['locations'];
    final l$primaryManager = json['primaryManager'];
    final l$industryGroup = json['industryGroup'];
    final l$accountStatus = json['accountStatus'];
    final l$managers = json['managers'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearch$searchAccounts$nodes(
      id: (l$id as String),
      name: (l$name as String),
      code: (l$code as String),
      type: fromJson$Enum$AccountType((l$type as String)),
      accountAddresses: (l$accountAddresses as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$AccountSearch$searchAccounts$nodes$accountAddresses.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      accountContacts: (l$accountContacts as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$AccountSearch$searchAccounts$nodes$accountContacts.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      locations: (l$locations as List<dynamic>)
          .map(
            (e) => Query$AccountSearch$searchAccounts$nodes$locations.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      primaryManager:
          Query$AccountSearch$searchAccounts$nodes$primaryManager.fromJson(
            (l$primaryManager as Map<String, dynamic>),
          ),
      industryGroup: (l$industryGroup as String?),
      accountStatus: fromJson$Enum$AccountStatus((l$accountStatus as String)),
      managers: (l$managers as List<dynamic>)
          .map(
            (e) => Query$AccountSearch$searchAccounts$nodes$managers.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String code;

  final Enum$AccountType type;

  final List<Query$AccountSearch$searchAccounts$nodes$accountAddresses?>?
  accountAddresses;

  final List<Query$AccountSearch$searchAccounts$nodes$accountContacts?>?
  accountContacts;

  final List<Query$AccountSearch$searchAccounts$nodes$locations> locations;

  final Query$AccountSearch$searchAccounts$nodes$primaryManager primaryManager;

  final String? industryGroup;

  final Enum$AccountStatus accountStatus;

  final List<Query$AccountSearch$searchAccounts$nodes$managers> managers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$type = type;
    _resultData['type'] = toJson$Enum$AccountType(l$type);
    final l$accountAddresses = accountAddresses;
    _resultData['accountAddresses'] = l$accountAddresses
        ?.map((e) => e?.toJson())
        .toList();
    final l$accountContacts = accountContacts;
    _resultData['accountContacts'] = l$accountContacts
        ?.map((e) => e?.toJson())
        .toList();
    final l$locations = locations;
    _resultData['locations'] = l$locations.map((e) => e.toJson()).toList();
    final l$primaryManager = primaryManager;
    _resultData['primaryManager'] = l$primaryManager.toJson();
    final l$industryGroup = industryGroup;
    _resultData['industryGroup'] = l$industryGroup;
    final l$accountStatus = accountStatus;
    _resultData['accountStatus'] = toJson$Enum$AccountStatus(l$accountStatus);
    final l$managers = managers;
    _resultData['managers'] = l$managers.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$code = code;
    final l$type = type;
    final l$accountAddresses = accountAddresses;
    final l$accountContacts = accountContacts;
    final l$locations = locations;
    final l$primaryManager = primaryManager;
    final l$industryGroup = industryGroup;
    final l$accountStatus = accountStatus;
    final l$managers = managers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$code,
      l$type,
      l$accountAddresses == null
          ? null
          : Object.hashAll(l$accountAddresses.map((v) => v)),
      l$accountContacts == null
          ? null
          : Object.hashAll(l$accountContacts.map((v) => v)),
      Object.hashAll(l$locations.map((v) => v)),
      l$primaryManager,
      l$industryGroup,
      l$accountStatus,
      Object.hashAll(l$managers.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AccountSearch$searchAccounts$nodes ||
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
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$accountAddresses = accountAddresses;
    final lOther$accountAddresses = other.accountAddresses;
    if (l$accountAddresses != null && lOther$accountAddresses != null) {
      if (l$accountAddresses.length != lOther$accountAddresses.length) {
        return false;
      }
      for (int i = 0; i < l$accountAddresses.length; i++) {
        final l$accountAddresses$entry = l$accountAddresses[i];
        final lOther$accountAddresses$entry = lOther$accountAddresses[i];
        if (l$accountAddresses$entry != lOther$accountAddresses$entry) {
          return false;
        }
      }
    } else if (l$accountAddresses != lOther$accountAddresses) {
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
    final l$locations = locations;
    final lOther$locations = other.locations;
    if (l$locations.length != lOther$locations.length) {
      return false;
    }
    for (int i = 0; i < l$locations.length; i++) {
      final l$locations$entry = l$locations[i];
      final lOther$locations$entry = lOther$locations[i];
      if (l$locations$entry != lOther$locations$entry) {
        return false;
      }
    }
    final l$primaryManager = primaryManager;
    final lOther$primaryManager = other.primaryManager;
    if (l$primaryManager != lOther$primaryManager) {
      return false;
    }
    final l$industryGroup = industryGroup;
    final lOther$industryGroup = other.industryGroup;
    if (l$industryGroup != lOther$industryGroup) {
      return false;
    }
    final l$accountStatus = accountStatus;
    final lOther$accountStatus = other.accountStatus;
    if (l$accountStatus != lOther$accountStatus) {
      return false;
    }
    final l$managers = managers;
    final lOther$managers = other.managers;
    if (l$managers.length != lOther$managers.length) {
      return false;
    }
    for (int i = 0; i < l$managers.length; i++) {
      final l$managers$entry = l$managers[i];
      final lOther$managers$entry = lOther$managers[i];
      if (l$managers$entry != lOther$managers$entry) {
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

extension UtilityExtension$Query$AccountSearch$searchAccounts$nodes
    on Query$AccountSearch$searchAccounts$nodes {
  CopyWith$Query$AccountSearch$searchAccounts$nodes<
    Query$AccountSearch$searchAccounts$nodes
  >
  get copyWith =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes(this, (i) => i);
}

abstract class CopyWith$Query$AccountSearch$searchAccounts$nodes<TRes> {
  factory CopyWith$Query$AccountSearch$searchAccounts$nodes(
    Query$AccountSearch$searchAccounts$nodes instance,
    TRes Function(Query$AccountSearch$searchAccounts$nodes) then,
  ) = _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes;

  factory CopyWith$Query$AccountSearch$searchAccounts$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes;

  TRes call({
    String? id,
    String? name,
    String? code,
    Enum$AccountType? type,
    List<Query$AccountSearch$searchAccounts$nodes$accountAddresses?>?
    accountAddresses,
    List<Query$AccountSearch$searchAccounts$nodes$accountContacts?>?
    accountContacts,
    List<Query$AccountSearch$searchAccounts$nodes$locations>? locations,
    Query$AccountSearch$searchAccounts$nodes$primaryManager? primaryManager,
    String? industryGroup,
    Enum$AccountStatus? accountStatus,
    List<Query$AccountSearch$searchAccounts$nodes$managers>? managers,
    String? $__typename,
  });
  TRes accountAddresses(
    Iterable<Query$AccountSearch$searchAccounts$nodes$accountAddresses?>?
    Function(
      Iterable<
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountAddresses<
          Query$AccountSearch$searchAccounts$nodes$accountAddresses
        >?
      >?,
    )
    _fn,
  );
  TRes accountContacts(
    Iterable<Query$AccountSearch$searchAccounts$nodes$accountContacts?>?
    Function(
      Iterable<
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts<
          Query$AccountSearch$searchAccounts$nodes$accountContacts
        >?
      >?,
    )
    _fn,
  );
  TRes locations(
    Iterable<Query$AccountSearch$searchAccounts$nodes$locations> Function(
      Iterable<
        CopyWith$Query$AccountSearch$searchAccounts$nodes$locations<
          Query$AccountSearch$searchAccounts$nodes$locations
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$AccountSearch$searchAccounts$nodes$primaryManager<TRes>
  get primaryManager;
  TRes managers(
    Iterable<Query$AccountSearch$searchAccounts$nodes$managers> Function(
      Iterable<
        CopyWith$Query$AccountSearch$searchAccounts$nodes$managers<
          Query$AccountSearch$searchAccounts$nodes$managers
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes<TRes>
    implements CopyWith$Query$AccountSearch$searchAccounts$nodes<TRes> {
  _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes(
    this._instance,
    this._then,
  );

  final Query$AccountSearch$searchAccounts$nodes _instance;

  final TRes Function(Query$AccountSearch$searchAccounts$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? code = _undefined,
    Object? type = _undefined,
    Object? accountAddresses = _undefined,
    Object? accountContacts = _undefined,
    Object? locations = _undefined,
    Object? primaryManager = _undefined,
    Object? industryGroup = _undefined,
    Object? accountStatus = _undefined,
    Object? managers = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearch$searchAccounts$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$AccountType),
      accountAddresses: accountAddresses == _undefined
          ? _instance.accountAddresses
          : (accountAddresses
                as List<
                  Query$AccountSearch$searchAccounts$nodes$accountAddresses?
                >?),
      accountContacts: accountContacts == _undefined
          ? _instance.accountContacts
          : (accountContacts
                as List<
                  Query$AccountSearch$searchAccounts$nodes$accountContacts?
                >?),
      locations: locations == _undefined || locations == null
          ? _instance.locations
          : (locations
                as List<Query$AccountSearch$searchAccounts$nodes$locations>),
      primaryManager: primaryManager == _undefined || primaryManager == null
          ? _instance.primaryManager
          : (primaryManager
                as Query$AccountSearch$searchAccounts$nodes$primaryManager),
      industryGroup: industryGroup == _undefined
          ? _instance.industryGroup
          : (industryGroup as String?),
      accountStatus: accountStatus == _undefined || accountStatus == null
          ? _instance.accountStatus
          : (accountStatus as Enum$AccountStatus),
      managers: managers == _undefined || managers == null
          ? _instance.managers
          : (managers
                as List<Query$AccountSearch$searchAccounts$nodes$managers>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes accountAddresses(
    Iterable<Query$AccountSearch$searchAccounts$nodes$accountAddresses?>?
    Function(
      Iterable<
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountAddresses<
          Query$AccountSearch$searchAccounts$nodes$accountAddresses
        >?
      >?,
    )
    _fn,
  ) => call(
    accountAddresses: _fn(
      _instance.accountAddresses?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$AccountSearch$searchAccounts$nodes$accountAddresses(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );

  TRes accountContacts(
    Iterable<Query$AccountSearch$searchAccounts$nodes$accountContacts?>?
    Function(
      Iterable<
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts<
          Query$AccountSearch$searchAccounts$nodes$accountContacts
        >?
      >?,
    )
    _fn,
  ) => call(
    accountContacts: _fn(
      _instance.accountContacts?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );

  TRes locations(
    Iterable<Query$AccountSearch$searchAccounts$nodes$locations> Function(
      Iterable<
        CopyWith$Query$AccountSearch$searchAccounts$nodes$locations<
          Query$AccountSearch$searchAccounts$nodes$locations
        >
      >,
    )
    _fn,
  ) => call(
    locations: _fn(
      _instance.locations.map(
        (e) => CopyWith$Query$AccountSearch$searchAccounts$nodes$locations(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  CopyWith$Query$AccountSearch$searchAccounts$nodes$primaryManager<TRes>
  get primaryManager {
    final local$primaryManager = _instance.primaryManager;
    return CopyWith$Query$AccountSearch$searchAccounts$nodes$primaryManager(
      local$primaryManager,
      (e) => call(primaryManager: e),
    );
  }

  TRes managers(
    Iterable<Query$AccountSearch$searchAccounts$nodes$managers> Function(
      Iterable<
        CopyWith$Query$AccountSearch$searchAccounts$nodes$managers<
          Query$AccountSearch$searchAccounts$nodes$managers
        >
      >,
    )
    _fn,
  ) => call(
    managers: _fn(
      _instance.managers.map(
        (e) => CopyWith$Query$AccountSearch$searchAccounts$nodes$managers(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes<TRes>
    implements CopyWith$Query$AccountSearch$searchAccounts$nodes<TRes> {
  _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? code,
    Enum$AccountType? type,
    List<Query$AccountSearch$searchAccounts$nodes$accountAddresses?>?
    accountAddresses,
    List<Query$AccountSearch$searchAccounts$nodes$accountContacts?>?
    accountContacts,
    List<Query$AccountSearch$searchAccounts$nodes$locations>? locations,
    Query$AccountSearch$searchAccounts$nodes$primaryManager? primaryManager,
    String? industryGroup,
    Enum$AccountStatus? accountStatus,
    List<Query$AccountSearch$searchAccounts$nodes$managers>? managers,
    String? $__typename,
  }) => _res;

  accountAddresses(_fn) => _res;

  accountContacts(_fn) => _res;

  locations(_fn) => _res;

  CopyWith$Query$AccountSearch$searchAccounts$nodes$primaryManager<TRes>
  get primaryManager =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$primaryManager.stub(
        _res,
      );

  managers(_fn) => _res;
}

class Query$AccountSearch$searchAccounts$nodes$accountAddresses {
  Query$AccountSearch$searchAccounts$nodes$accountAddresses({
    this.key,
    this.address1,
    this.address2,
    this.address3,
    this.address4,
    this.address5,
    this.address6,
    this.postCode,
    this.$__typename = 'AddressWithKey',
  });

  factory Query$AccountSearch$searchAccounts$nodes$accountAddresses.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$address3 = json['address3'];
    final l$address4 = json['address4'];
    final l$address5 = json['address5'];
    final l$address6 = json['address6'];
    final l$postCode = json['postCode'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearch$searchAccounts$nodes$accountAddresses(
      key: (l$key as String?),
      address1: (l$address1 as String?),
      address2: (l$address2 as String?),
      address3: (l$address3 as String?),
      address4: (l$address4 as String?),
      address5: (l$address5 as String?),
      address6: (l$address6 as String?),
      postCode: (l$postCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? key;

  final String? address1;

  final String? address2;

  final String? address3;

  final String? address4;

  final String? address5;

  final String? address6;

  final String? postCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$address1 = address1;
    final l$address2 = address2;
    final l$address3 = address3;
    final l$address4 = address4;
    final l$address5 = address5;
    final l$address6 = address6;
    final l$postCode = postCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$key,
      l$address1,
      l$address2,
      l$address3,
      l$address4,
      l$address5,
      l$address6,
      l$postCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AccountSearch$searchAccounts$nodes$accountAddresses ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AccountSearch$searchAccounts$nodes$accountAddresses
    on Query$AccountSearch$searchAccounts$nodes$accountAddresses {
  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountAddresses<
    Query$AccountSearch$searchAccounts$nodes$accountAddresses
  >
  get copyWith =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$accountAddresses(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountSearch$searchAccounts$nodes$accountAddresses<
  TRes
> {
  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$accountAddresses(
    Query$AccountSearch$searchAccounts$nodes$accountAddresses instance,
    TRes Function(Query$AccountSearch$searchAccounts$nodes$accountAddresses)
    then,
  ) = _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountAddresses;

  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$accountAddresses.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountAddresses;

  TRes call({
    String? key,
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountAddresses<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountAddresses<
          TRes
        > {
  _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountAddresses(
    this._instance,
    this._then,
  );

  final Query$AccountSearch$searchAccounts$nodes$accountAddresses _instance;

  final TRes Function(Query$AccountSearch$searchAccounts$nodes$accountAddresses)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? address3 = _undefined,
    Object? address4 = _undefined,
    Object? address5 = _undefined,
    Object? address6 = _undefined,
    Object? postCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearch$searchAccounts$nodes$accountAddresses(
      key: key == _undefined ? _instance.key : (key as String?),
      address1: address1 == _undefined
          ? _instance.address1
          : (address1 as String?),
      address2: address2 == _undefined
          ? _instance.address2
          : (address2 as String?),
      address3: address3 == _undefined
          ? _instance.address3
          : (address3 as String?),
      address4: address4 == _undefined
          ? _instance.address4
          : (address4 as String?),
      address5: address5 == _undefined
          ? _instance.address5
          : (address5 as String?),
      address6: address6 == _undefined
          ? _instance.address6
          : (address6 as String?),
      postCode: postCode == _undefined
          ? _instance.postCode
          : (postCode as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountAddresses<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountAddresses<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountAddresses(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? $__typename,
  }) => _res;
}

class Query$AccountSearch$searchAccounts$nodes$accountContacts {
  Query$AccountSearch$searchAccounts$nodes$accountContacts({
    required this.key,
    required this.value,
    this.$__typename = 'ContactWithKey',
  });

  factory Query$AccountSearch$searchAccounts$nodes$accountContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearch$searchAccounts$nodes$accountContacts(
      key: (l$key as String),
      value:
          Query$AccountSearch$searchAccounts$nodes$accountContacts$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$AccountSearch$searchAccounts$nodes$accountContacts$value value;

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
    if (other is! Query$AccountSearch$searchAccounts$nodes$accountContacts ||
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

extension UtilityExtension$Query$AccountSearch$searchAccounts$nodes$accountContacts
    on Query$AccountSearch$searchAccounts$nodes$accountContacts {
  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts<
    Query$AccountSearch$searchAccounts$nodes$accountContacts
  >
  get copyWith =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts<
  TRes
> {
  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts(
    Query$AccountSearch$searchAccounts$nodes$accountContacts instance,
    TRes Function(Query$AccountSearch$searchAccounts$nodes$accountContacts)
    then,
  ) = _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts;

  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts;

  TRes call({
    String? key,
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value? value,
    String? $__typename,
  });
  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value<TRes>
  get value;
}

class _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts<
          TRes
        > {
  _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts(
    this._instance,
    this._then,
  );

  final Query$AccountSearch$searchAccounts$nodes$accountContacts _instance;

  final TRes Function(Query$AccountSearch$searchAccounts$nodes$accountContacts)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearch$searchAccounts$nodes$accountContacts(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$AccountSearch$searchAccounts$nodes$accountContacts$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value<TRes>
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value<TRes>
  get value =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value.stub(
        _res,
      );
}

class Query$AccountSearch$searchAccounts$nodes$accountContacts$value {
  Query$AccountSearch$searchAccounts$nodes$accountContacts$value({
    required this.title,
    required this.contactTypes,
    required this.firstName,
    required this.lastName,
    required this.proofOfAddress,
    required this.proofOfIdentification,
    required this.contactPreferences,
    this.$__typename = 'Contact',
  });

  factory Query$AccountSearch$searchAccounts$nodes$accountContacts$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$title = json['title'];
    final l$contactTypes = json['contactTypes'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$proofOfAddress = json['proofOfAddress'];
    final l$proofOfIdentification = json['proofOfIdentification'];
    final l$contactPreferences = json['contactPreferences'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearch$searchAccounts$nodes$accountContacts$value(
      title: (l$title as String),
      contactTypes: (l$contactTypes as List<dynamic>)
          .map((e) => fromJson$Enum$ContactType((e as String)))
          .toList(),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      proofOfAddress: (l$proofOfAddress as List<dynamic>)
          .map(
            (e) =>
                Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      proofOfIdentification: (l$proofOfIdentification as List<dynamic>)
          .map(
            (e) =>
                Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      contactPreferences:
          Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences.fromJson(
            (l$contactPreferences as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String title;

  final List<Enum$ContactType> contactTypes;

  final String firstName;

  final String lastName;

  final List<
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress
  >
  proofOfAddress;

  final List<
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification
  >
  proofOfIdentification;

  final Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences
  contactPreferences;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$contactTypes = contactTypes;
    _resultData['contactTypes'] = l$contactTypes
        .map((e) => toJson$Enum$ContactType(e))
        .toList();
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$proofOfAddress = proofOfAddress;
    _resultData['proofOfAddress'] = l$proofOfAddress
        .map((e) => e.toJson())
        .toList();
    final l$proofOfIdentification = proofOfIdentification;
    _resultData['proofOfIdentification'] = l$proofOfIdentification
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
    final l$title = title;
    final l$contactTypes = contactTypes;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$proofOfAddress = proofOfAddress;
    final l$proofOfIdentification = proofOfIdentification;
    final l$contactPreferences = contactPreferences;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      Object.hashAll(l$contactTypes.map((v) => v)),
      l$firstName,
      l$lastName,
      Object.hashAll(l$proofOfAddress.map((v) => v)),
      Object.hashAll(l$proofOfIdentification.map((v) => v)),
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
            is! Query$AccountSearch$searchAccounts$nodes$accountContacts$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
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

extension UtilityExtension$Query$AccountSearch$searchAccounts$nodes$accountContacts$value
    on Query$AccountSearch$searchAccounts$nodes$accountContacts$value {
  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value<
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value
  >
  get copyWith =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value<
  TRes
> {
  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value instance,
    TRes Function(
      Query$AccountSearch$searchAccounts$nodes$accountContacts$value,
    )
    then,
  ) = _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value;

  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value;

  TRes call({
    String? title,
    List<Enum$ContactType>? contactTypes,
    String? firstName,
    String? lastName,
    List<
      Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress
    >?
    proofOfAddress,
    List<
      Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification
    >?
    proofOfIdentification,
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences?
    contactPreferences,
    String? $__typename,
  });
  TRes proofOfAddress(
    Iterable<
      Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress
    >
    Function(
      Iterable<
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress<
          Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress
        >
      >,
    )
    _fn,
  );
  TRes proofOfIdentification(
    Iterable<
      Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification
    >
    Function(
      Iterable<
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification<
          Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences<
    TRes
  >
  get contactPreferences;
}

class _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value<
          TRes
        > {
  _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value(
    this._instance,
    this._then,
  );

  final Query$AccountSearch$searchAccounts$nodes$accountContacts$value
  _instance;

  final TRes Function(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? contactTypes = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? proofOfAddress = _undefined,
    Object? proofOfIdentification = _undefined,
    Object? contactPreferences = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value(
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      contactTypes: contactTypes == _undefined || contactTypes == null
          ? _instance.contactTypes
          : (contactTypes as List<Enum$ContactType>),
      firstName: firstName == _undefined || firstName == null
          ? _instance.firstName
          : (firstName as String),
      lastName: lastName == _undefined || lastName == null
          ? _instance.lastName
          : (lastName as String),
      proofOfAddress: proofOfAddress == _undefined || proofOfAddress == null
          ? _instance.proofOfAddress
          : (proofOfAddress
                as List<
                  Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress
                >),
      proofOfIdentification:
          proofOfIdentification == _undefined || proofOfIdentification == null
          ? _instance.proofOfIdentification
          : (proofOfIdentification
                as List<
                  Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification
                >),
      contactPreferences:
          contactPreferences == _undefined || contactPreferences == null
          ? _instance.contactPreferences
          : (contactPreferences
                as Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes proofOfAddress(
    Iterable<
      Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress
    >
    Function(
      Iterable<
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress<
          Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress
        >
      >,
    )
    _fn,
  ) => call(
    proofOfAddress: _fn(
      _instance.proofOfAddress.map(
        (e) =>
            CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes proofOfIdentification(
    Iterable<
      Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification
    >
    Function(
      Iterable<
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification<
          Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification
        >
      >,
    )
    _fn,
  ) => call(
    proofOfIdentification: _fn(
      _instance.proofOfIdentification.map(
        (e) =>
            CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences<
    TRes
  >
  get contactPreferences {
    final local$contactPreferences = _instance.contactPreferences;
    return CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences(
      local$contactPreferences,
      (e) => call(contactPreferences: e),
    );
  }
}

class _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value(
    this._res,
  );

  TRes _res;

  call({
    String? title,
    List<Enum$ContactType>? contactTypes,
    String? firstName,
    String? lastName,
    List<
      Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress
    >?
    proofOfAddress,
    List<
      Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification
    >?
    proofOfIdentification,
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences?
    contactPreferences,
    String? $__typename,
  }) => _res;

  proofOfAddress(_fn) => _res;

  proofOfIdentification(_fn) => _res;

  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences<
    TRes
  >
  get contactPreferences =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences.stub(
        _res,
      );
}

class Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress {
  Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress({
    required this.validTo,
    required this.type,
    required this.subType,
    this.sasUrl,
    this.$__typename = 'Identification',
  });

  factory Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$validTo = json['validTo'];
    final l$type = json['type'];
    final l$subType = json['subType'];
    final l$sasUrl = json['sasUrl'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress(
      validTo: DateTime.parse((l$validTo as String)),
      type: fromJson$Enum$IdentificationType((l$type as String)),
      subType: fromJson$Enum$IdentificationSubType((l$subType as String)),
      sasUrl: (l$sasUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime validTo;

  final Enum$IdentificationType type;

  final Enum$IdentificationSubType subType;

  final String? sasUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$validTo = validTo;
    _resultData['validTo'] = l$validTo.toIso8601String();
    final l$type = type;
    _resultData['type'] = toJson$Enum$IdentificationType(l$type);
    final l$subType = subType;
    _resultData['subType'] = toJson$Enum$IdentificationSubType(l$subType);
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$validTo = validTo;
    final l$type = type;
    final l$subType = subType;
    final l$sasUrl = sasUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$validTo,
      l$type,
      l$subType,
      l$sasUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$validTo = validTo;
    final lOther$validTo = other.validTo;
    if (l$validTo != lOther$validTo) {
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
    final l$sasUrl = sasUrl;
    final lOther$sasUrl = other.sasUrl;
    if (l$sasUrl != lOther$sasUrl) {
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

extension UtilityExtension$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress
    on Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress {
  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress<
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress
  >
  get copyWith =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress<
  TRes
> {
  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress
    instance,
    TRes Function(
      Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress,
    )
    then,
  ) = _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress;

  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress;

  TRes call({
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? sasUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress<
          TRes
        > {
  _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress(
    this._instance,
    this._then,
  );

  final Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress
  _instance;

  final TRes Function(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? validTo = _undefined,
    Object? type = _undefined,
    Object? subType = _undefined,
    Object? sasUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress(
      validTo: validTo == _undefined || validTo == null
          ? _instance.validTo
          : (validTo as DateTime),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$IdentificationType),
      subType: subType == _undefined || subType == null
          ? _instance.subType
          : (subType as Enum$IdentificationSubType),
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfAddress(
    this._res,
  );

  TRes _res;

  call({
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? sasUrl,
    String? $__typename,
  }) => _res;
}

class Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification {
  Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification({
    required this.validTo,
    required this.type,
    required this.subType,
    this.sasUrl,
    this.$__typename = 'Identification',
  });

  factory Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$validTo = json['validTo'];
    final l$type = json['type'];
    final l$subType = json['subType'];
    final l$sasUrl = json['sasUrl'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification(
      validTo: DateTime.parse((l$validTo as String)),
      type: fromJson$Enum$IdentificationType((l$type as String)),
      subType: fromJson$Enum$IdentificationSubType((l$subType as String)),
      sasUrl: (l$sasUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime validTo;

  final Enum$IdentificationType type;

  final Enum$IdentificationSubType subType;

  final String? sasUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$validTo = validTo;
    _resultData['validTo'] = l$validTo.toIso8601String();
    final l$type = type;
    _resultData['type'] = toJson$Enum$IdentificationType(l$type);
    final l$subType = subType;
    _resultData['subType'] = toJson$Enum$IdentificationSubType(l$subType);
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$validTo = validTo;
    final l$type = type;
    final l$subType = subType;
    final l$sasUrl = sasUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$validTo,
      l$type,
      l$subType,
      l$sasUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$validTo = validTo;
    final lOther$validTo = other.validTo;
    if (l$validTo != lOther$validTo) {
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
    final l$sasUrl = sasUrl;
    final lOther$sasUrl = other.sasUrl;
    if (l$sasUrl != lOther$sasUrl) {
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

extension UtilityExtension$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification
    on
        Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification {
  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification<
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification
  >
  get copyWith =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification<
  TRes
> {
  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification
    instance,
    TRes Function(
      Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification,
    )
    then,
  ) = _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification;

  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification;

  TRes call({
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? sasUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification<
          TRes
        > {
  _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification(
    this._instance,
    this._then,
  );

  final Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification
  _instance;

  final TRes Function(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? validTo = _undefined,
    Object? type = _undefined,
    Object? subType = _undefined,
    Object? sasUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification(
      validTo: validTo == _undefined || validTo == null
          ? _instance.validTo
          : (validTo as DateTime),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$IdentificationType),
      subType: subType == _undefined || subType == null
          ? _instance.subType
          : (subType as Enum$IdentificationSubType),
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$proofOfIdentification(
    this._res,
  );

  TRes _res;

  call({
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? sasUrl,
    String? $__typename,
  }) => _res;
}

class Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences {
  Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences({
    required this.email,
    required this.mobile,
    required this.phone,
    this.$__typename = 'ContactPreferences',
  });

  factory Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$email = json['email'];
    final l$mobile = json['mobile'];
    final l$phone = json['phone'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences(
      email:
          Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email.fromJson(
            (l$email as Map<String, dynamic>),
          ),
      mobile:
          Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile.fromJson(
            (l$mobile as Map<String, dynamic>),
          ),
      phone:
          Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone.fromJson(
            (l$phone as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email
  email;

  final Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile
  mobile;

  final Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone
  phone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$email = email;
    _resultData['email'] = l$email.toJson();
    final l$mobile = mobile;
    _resultData['mobile'] = l$mobile.toJson();
    final l$phone = phone;
    _resultData['phone'] = l$phone.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$mobile = mobile;
    final l$phone = phone;
    final l$$__typename = $__typename;
    return Object.hashAll([l$email, l$mobile, l$phone, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$mobile = mobile;
    final lOther$mobile = other.mobile;
    if (l$mobile != lOther$mobile) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
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

extension UtilityExtension$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences
    on
        Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences {
  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences<
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences
  >
  get copyWith =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences<
  TRes
> {
  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences
    instance,
    TRes Function(
      Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences,
    )
    then,
  ) = _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences;

  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences;

  TRes call({
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email?
    email,
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile?
    mobile,
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone?
    phone,
    String? $__typename,
  });
  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email<
    TRes
  >
  get email;
  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile;
  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone<
    TRes
  >
  get phone;
}

class _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences<
          TRes
        > {
  _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences(
    this._instance,
    this._then,
  );

  final Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences
  _instance;

  final TRes Function(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? mobile = _undefined,
    Object? phone = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences(
      email: email == _undefined || email == null
          ? _instance.email
          : (email
                as Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email),
      mobile: mobile == _undefined || mobile == null
          ? _instance.mobile
          : (mobile
                as Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile),
      phone: phone == _undefined || phone == null
          ? _instance.phone
          : (phone
                as Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email<
    TRes
  >
  get email {
    final local$email = _instance.email;
    return CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email(
      local$email,
      (e) => call(email: e),
    );
  }

  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile {
    final local$mobile = _instance.mobile;
    return CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile(
      local$mobile,
      (e) => call(mobile: e),
    );
  }

  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone<
    TRes
  >
  get phone {
    final local$phone = _instance.phone;
    return CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone(
      local$phone,
      (e) => call(phone: e),
    );
  }
}

class _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences(
    this._res,
  );

  TRes _res;

  call({
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email?
    email,
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile?
    mobile,
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone?
    phone,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email<
    TRes
  >
  get email =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email.stub(
        _res,
      );

  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile.stub(
        _res,
      );

  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone<
    TRes
  >
  get phone =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone.stub(
        _res,
      );
}

class Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email {
  Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email(
      value: (l$value as String),
      enabled: (l$enabled as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final bool enabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$enabled = enabled;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$enabled, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email
    on
        Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email {
  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email<
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email
  >
  get copyWith =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email<
  TRes
> {
  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email
    instance,
    TRes Function(
      Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email,
    )
    then,
  ) = _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email;

  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email<
          TRes
        > {
  _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email(
    this._instance,
    this._then,
  );

  final Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email
  _instance;

  final TRes Function(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$email(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile {
  Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile(
      value: (l$value as String),
      enabled: (l$enabled as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final bool enabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$enabled = enabled;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$enabled, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile
    on
        Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile {
  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile<
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile
  >
  get copyWith =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile<
  TRes
> {
  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile
    instance,
    TRes Function(
      Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile,
    )
    then,
  ) = _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile;

  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile<
          TRes
        > {
  _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile(
    this._instance,
    this._then,
  );

  final Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile
  _instance;

  final TRes Function(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$mobile(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone {
  Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone(
      value: (l$value as String),
      enabled: (l$enabled as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final bool enabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$enabled = enabled;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$enabled, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone
    on
        Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone {
  CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone<
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone
  >
  get copyWith =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone<
  TRes
> {
  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone
    instance,
    TRes Function(
      Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone,
    )
    then,
  ) = _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone;

  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone;

  TRes call({String? value, bool? enabled, String? $__typename});
}

class _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone<
          TRes
        > {
  _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone(
    this._instance,
    this._then,
  );

  final Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone
  _instance;

  final TRes Function(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$accountContacts$value$contactPreferences$phone(
    this._res,
  );

  TRes _res;

  call({String? value, bool? enabled, String? $__typename}) => _res;
}

class Query$AccountSearch$searchAccounts$nodes$locations {
  Query$AccountSearch$searchAccounts$nodes$locations({
    required this.code,
    required this.name,
    required this.addressKey,
    this.$__typename = 'Location',
  });

  factory Query$AccountSearch$searchAccounts$nodes$locations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$name = json['name'];
    final l$addressKey = json['addressKey'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearch$searchAccounts$nodes$locations(
      code: (l$code as String),
      name: (l$name as String),
      addressKey: (l$addressKey as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String name;

  final String addressKey;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$addressKey = addressKey;
    _resultData['addressKey'] = l$addressKey;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$name = name;
    final l$addressKey = addressKey;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$name, l$addressKey, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AccountSearch$searchAccounts$nodes$locations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$addressKey = addressKey;
    final lOther$addressKey = other.addressKey;
    if (l$addressKey != lOther$addressKey) {
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

extension UtilityExtension$Query$AccountSearch$searchAccounts$nodes$locations
    on Query$AccountSearch$searchAccounts$nodes$locations {
  CopyWith$Query$AccountSearch$searchAccounts$nodes$locations<
    Query$AccountSearch$searchAccounts$nodes$locations
  >
  get copyWith => CopyWith$Query$AccountSearch$searchAccounts$nodes$locations(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$AccountSearch$searchAccounts$nodes$locations<
  TRes
> {
  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$locations(
    Query$AccountSearch$searchAccounts$nodes$locations instance,
    TRes Function(Query$AccountSearch$searchAccounts$nodes$locations) then,
  ) = _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$locations;

  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$locations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$locations;

  TRes call({
    String? code,
    String? name,
    String? addressKey,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$locations<TRes>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$locations<TRes> {
  _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$locations(
    this._instance,
    this._then,
  );

  final Query$AccountSearch$searchAccounts$nodes$locations _instance;

  final TRes Function(Query$AccountSearch$searchAccounts$nodes$locations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? name = _undefined,
    Object? addressKey = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearch$searchAccounts$nodes$locations(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      addressKey: addressKey == _undefined || addressKey == null
          ? _instance.addressKey
          : (addressKey as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$locations<TRes>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$locations<TRes> {
  _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$locations(
    this._res,
  );

  TRes _res;

  call({String? code, String? name, String? addressKey, String? $__typename}) =>
      _res;
}

class Query$AccountSearch$searchAccounts$nodes$primaryManager {
  Query$AccountSearch$searchAccounts$nodes$primaryManager({
    this.name,
    this.$__typename = 'ManagementDetail',
  });

  factory Query$AccountSearch$searchAccounts$nodes$primaryManager.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearch$searchAccounts$nodes$primaryManager(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AccountSearch$searchAccounts$nodes$primaryManager ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$AccountSearch$searchAccounts$nodes$primaryManager
    on Query$AccountSearch$searchAccounts$nodes$primaryManager {
  CopyWith$Query$AccountSearch$searchAccounts$nodes$primaryManager<
    Query$AccountSearch$searchAccounts$nodes$primaryManager
  >
  get copyWith =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$primaryManager(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountSearch$searchAccounts$nodes$primaryManager<
  TRes
> {
  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$primaryManager(
    Query$AccountSearch$searchAccounts$nodes$primaryManager instance,
    TRes Function(Query$AccountSearch$searchAccounts$nodes$primaryManager) then,
  ) = _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$primaryManager;

  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$primaryManager.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$primaryManager;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$primaryManager<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$primaryManager<TRes> {
  _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$primaryManager(
    this._instance,
    this._then,
  );

  final Query$AccountSearch$searchAccounts$nodes$primaryManager _instance;

  final TRes Function(Query$AccountSearch$searchAccounts$nodes$primaryManager)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$AccountSearch$searchAccounts$nodes$primaryManager(
          name: name == _undefined ? _instance.name : (name as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$primaryManager<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$primaryManager<TRes> {
  _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$primaryManager(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}

class Query$AccountSearch$searchAccounts$nodes$managers {
  Query$AccountSearch$searchAccounts$nodes$managers({
    required this.value,
    this.$__typename = 'KeyValuePairOfServiceTypeAndListOfManagementDetail',
  });

  factory Query$AccountSearch$searchAccounts$nodes$managers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearch$searchAccounts$nodes$managers(
      value: (l$value as List<dynamic>)
          .map(
            (e) =>
                Query$AccountSearch$searchAccounts$nodes$managers$value.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$AccountSearch$searchAccounts$nodes$managers$value> value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$value.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AccountSearch$searchAccounts$nodes$managers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value.length != lOther$value.length) {
      return false;
    }
    for (int i = 0; i < l$value.length; i++) {
      final l$value$entry = l$value[i];
      final lOther$value$entry = lOther$value[i];
      if (l$value$entry != lOther$value$entry) {
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

extension UtilityExtension$Query$AccountSearch$searchAccounts$nodes$managers
    on Query$AccountSearch$searchAccounts$nodes$managers {
  CopyWith$Query$AccountSearch$searchAccounts$nodes$managers<
    Query$AccountSearch$searchAccounts$nodes$managers
  >
  get copyWith => CopyWith$Query$AccountSearch$searchAccounts$nodes$managers(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$AccountSearch$searchAccounts$nodes$managers<
  TRes
> {
  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$managers(
    Query$AccountSearch$searchAccounts$nodes$managers instance,
    TRes Function(Query$AccountSearch$searchAccounts$nodes$managers) then,
  ) = _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$managers;

  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$managers.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$managers;

  TRes call({
    List<Query$AccountSearch$searchAccounts$nodes$managers$value>? value,
    String? $__typename,
  });
  TRes value(
    Iterable<Query$AccountSearch$searchAccounts$nodes$managers$value> Function(
      Iterable<
        CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value<
          Query$AccountSearch$searchAccounts$nodes$managers$value
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$managers<TRes>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$managers<TRes> {
  _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$managers(
    this._instance,
    this._then,
  );

  final Query$AccountSearch$searchAccounts$nodes$managers _instance;

  final TRes Function(Query$AccountSearch$searchAccounts$nodes$managers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? value = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$AccountSearch$searchAccounts$nodes$managers(
          value: value == _undefined || value == null
              ? _instance.value
              : (value
                    as List<
                      Query$AccountSearch$searchAccounts$nodes$managers$value
                    >),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes value(
    Iterable<Query$AccountSearch$searchAccounts$nodes$managers$value> Function(
      Iterable<
        CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value<
          Query$AccountSearch$searchAccounts$nodes$managers$value
        >
      >,
    )
    _fn,
  ) => call(
    value: _fn(
      _instance.value.map(
        (e) => CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$managers<TRes>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$managers<TRes> {
  _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$managers(
    this._res,
  );

  TRes _res;

  call({
    List<Query$AccountSearch$searchAccounts$nodes$managers$value>? value,
    String? $__typename,
  }) => _res;

  value(_fn) => _res;
}

class Query$AccountSearch$searchAccounts$nodes$managers$value {
  Query$AccountSearch$searchAccounts$nodes$managers$value({
    this.name,
    this.userInfo,
    this.$__typename = 'ManagementDetail',
  });

  factory Query$AccountSearch$searchAccounts$nodes$managers$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$userInfo = json['userInfo'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearch$searchAccounts$nodes$managers$value(
      name: (l$name as String?),
      userInfo: l$userInfo == null
          ? null
          : Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo.fromJson(
              (l$userInfo as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo?
  userInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$userInfo = userInfo;
    _resultData['userInfo'] = l$userInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$userInfo = userInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$userInfo, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AccountSearch$searchAccounts$nodes$managers$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$userInfo = userInfo;
    final lOther$userInfo = other.userInfo;
    if (l$userInfo != lOther$userInfo) {
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

extension UtilityExtension$Query$AccountSearch$searchAccounts$nodes$managers$value
    on Query$AccountSearch$searchAccounts$nodes$managers$value {
  CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value<
    Query$AccountSearch$searchAccounts$nodes$managers$value
  >
  get copyWith =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value<
  TRes
> {
  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value(
    Query$AccountSearch$searchAccounts$nodes$managers$value instance,
    TRes Function(Query$AccountSearch$searchAccounts$nodes$managers$value) then,
  ) = _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$managers$value;

  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$managers$value;

  TRes call({
    String? name,
    Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo? userInfo,
    String? $__typename,
  });
  CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo<
    TRes
  >
  get userInfo;
}

class _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$managers$value<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value<TRes> {
  _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$managers$value(
    this._instance,
    this._then,
  );

  final Query$AccountSearch$searchAccounts$nodes$managers$value _instance;

  final TRes Function(Query$AccountSearch$searchAccounts$nodes$managers$value)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? userInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearch$searchAccounts$nodes$managers$value(
      name: name == _undefined ? _instance.name : (name as String?),
      userInfo: userInfo == _undefined
          ? _instance.userInfo
          : (userInfo
                as Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo<
    TRes
  >
  get userInfo {
    final local$userInfo = _instance.userInfo;
    return local$userInfo == null
        ? CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo.stub(
            _then(_instance),
          )
        : CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo(
            local$userInfo,
            (e) => call(userInfo: e),
          );
  }
}

class _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$managers$value<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value<TRes> {
  _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$managers$value(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo? userInfo,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo<
    TRes
  >
  get userInfo =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo.stub(
        _res,
      );
}

class Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo {
  Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo({
    required this.emailAddress,
    this.$__typename = 'UserInfo',
  });

  factory Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$emailAddress = json['emailAddress'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo(
      emailAddress: (l$emailAddress as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String emailAddress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$emailAddress = emailAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([l$emailAddress, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
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

extension UtilityExtension$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo
    on Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo {
  CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo<
    Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo
  >
  get copyWith =>
      CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo<
  TRes
> {
  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo(
    Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo instance,
    TRes Function(
      Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo,
    )
    then,
  ) = _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo;

  factory CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo;

  TRes call({String? emailAddress, String? $__typename});
}

class _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo<
          TRes
        > {
  _CopyWithImpl$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo(
    this._instance,
    this._then,
  );

  final Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo
  _instance;

  final TRes Function(
    Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? emailAddress = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo(
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo<
  TRes
>
    implements
        CopyWith$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountSearch$searchAccounts$nodes$managers$value$userInfo(
    this._res,
  );

  TRes _res;

  call({String? emailAddress, String? $__typename}) => _res;
}
