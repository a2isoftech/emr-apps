import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$AccountPrices {
  factory Variables$Query$AccountPrices({
    required Input$GetPricesFlattenedInput input,
    String? after,
    String? before,
    int? first,
    int? last,
    List<Input$OutputSortInput>? sorting,
    DateTime? tagExpiryDate,
  }) => Variables$Query$AccountPrices._({
    r'input': input,
    if (after != null) r'after': after,
    if (before != null) r'before': before,
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (sorting != null) r'sorting': sorting,
    if (tagExpiryDate != null) r'tagExpiryDate': tagExpiryDate,
  });

  Variables$Query$AccountPrices._(this._$data);

  factory Variables$Query$AccountPrices.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$GetPricesFlattenedInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
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
    if (data.containsKey('sorting')) {
      final l$sorting = data['sorting'];
      result$data['sorting'] = (l$sorting as List<dynamic>?)
          ?.map(
            (e) => Input$OutputSortInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('tagExpiryDate')) {
      final l$tagExpiryDate = data['tagExpiryDate'];
      result$data['tagExpiryDate'] = l$tagExpiryDate == null
          ? null
          : DateTime.parse((l$tagExpiryDate as String));
    }
    return Variables$Query$AccountPrices._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetPricesFlattenedInput get input =>
      (_$data['input'] as Input$GetPricesFlattenedInput);

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  List<Input$OutputSortInput>? get sorting =>
      (_$data['sorting'] as List<Input$OutputSortInput>?);

  DateTime? get tagExpiryDate => (_$data['tagExpiryDate'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
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
    if (_$data.containsKey('sorting')) {
      final l$sorting = sorting;
      result$data['sorting'] = l$sorting?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('tagExpiryDate')) {
      final l$tagExpiryDate = tagExpiryDate;
      result$data['tagExpiryDate'] = l$tagExpiryDate?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Variables$Query$AccountPrices<Variables$Query$AccountPrices>
  get copyWith => CopyWith$Variables$Query$AccountPrices(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$AccountPrices ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
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
    final l$sorting = sorting;
    final lOther$sorting = other.sorting;
    if (_$data.containsKey('sorting') != other._$data.containsKey('sorting')) {
      return false;
    }
    if (l$sorting != null && lOther$sorting != null) {
      if (l$sorting.length != lOther$sorting.length) {
        return false;
      }
      for (int i = 0; i < l$sorting.length; i++) {
        final l$sorting$entry = l$sorting[i];
        final lOther$sorting$entry = lOther$sorting[i];
        if (l$sorting$entry != lOther$sorting$entry) {
          return false;
        }
      }
    } else if (l$sorting != lOther$sorting) {
      return false;
    }
    final l$tagExpiryDate = tagExpiryDate;
    final lOther$tagExpiryDate = other.tagExpiryDate;
    if (_$data.containsKey('tagExpiryDate') !=
        other._$data.containsKey('tagExpiryDate')) {
      return false;
    }
    if (l$tagExpiryDate != lOther$tagExpiryDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    final l$after = after;
    final l$before = before;
    final l$first = first;
    final l$last = last;
    final l$sorting = sorting;
    final l$tagExpiryDate = tagExpiryDate;
    return Object.hashAll([
      l$input,
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('sorting')
          ? l$sorting == null
                ? null
                : Object.hashAll(l$sorting.map((v) => v))
          : const {},
      _$data.containsKey('tagExpiryDate') ? l$tagExpiryDate : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$AccountPrices<TRes> {
  factory CopyWith$Variables$Query$AccountPrices(
    Variables$Query$AccountPrices instance,
    TRes Function(Variables$Query$AccountPrices) then,
  ) = _CopyWithImpl$Variables$Query$AccountPrices;

  factory CopyWith$Variables$Query$AccountPrices.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$AccountPrices;

  TRes call({
    Input$GetPricesFlattenedInput? input,
    String? after,
    String? before,
    int? first,
    int? last,
    List<Input$OutputSortInput>? sorting,
    DateTime? tagExpiryDate,
  });
}

class _CopyWithImpl$Variables$Query$AccountPrices<TRes>
    implements CopyWith$Variables$Query$AccountPrices<TRes> {
  _CopyWithImpl$Variables$Query$AccountPrices(this._instance, this._then);

  final Variables$Query$AccountPrices _instance;

  final TRes Function(Variables$Query$AccountPrices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? sorting = _undefined,
    Object? tagExpiryDate = _undefined,
  }) => _then(
    Variables$Query$AccountPrices._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$GetPricesFlattenedInput),
      if (after != _undefined) 'after': (after as String?),
      if (before != _undefined) 'before': (before as String?),
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (sorting != _undefined)
        'sorting': (sorting as List<Input$OutputSortInput>?),
      if (tagExpiryDate != _undefined)
        'tagExpiryDate': (tagExpiryDate as DateTime?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$AccountPrices<TRes>
    implements CopyWith$Variables$Query$AccountPrices<TRes> {
  _CopyWithStubImpl$Variables$Query$AccountPrices(this._res);

  TRes _res;

  call({
    Input$GetPricesFlattenedInput? input,
    String? after,
    String? before,
    int? first,
    int? last,
    List<Input$OutputSortInput>? sorting,
    DateTime? tagExpiryDate,
  }) => _res;
}

class Query$AccountPrices {
  Query$AccountPrices({
    this.accountPricesFlattened,
    required this.accountPricesFlattenedFacets,
    this.$__typename = 'Query',
  });

  factory Query$AccountPrices.fromJson(Map<String, dynamic> json) {
    final l$accountPricesFlattened = json['accountPricesFlattened'];
    final l$accountPricesFlattenedFacets = json['accountPricesFlattenedFacets'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices(
      accountPricesFlattened: l$accountPricesFlattened == null
          ? null
          : Query$AccountPrices$accountPricesFlattened.fromJson(
              (l$accountPricesFlattened as Map<String, dynamic>),
            ),
      accountPricesFlattenedFacets:
          (l$accountPricesFlattenedFacets as List<dynamic>)
              .map(
                (e) =>
                    Query$AccountPrices$accountPricesFlattenedFacets.fromJson(
                      (e as Map<String, dynamic>),
                    ),
              )
              .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AccountPrices$accountPricesFlattened? accountPricesFlattened;

  final List<Query$AccountPrices$accountPricesFlattenedFacets>
  accountPricesFlattenedFacets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountPricesFlattened = accountPricesFlattened;
    _resultData['accountPricesFlattened'] = l$accountPricesFlattened?.toJson();
    final l$accountPricesFlattenedFacets = accountPricesFlattenedFacets;
    _resultData['accountPricesFlattenedFacets'] = l$accountPricesFlattenedFacets
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountPricesFlattened = accountPricesFlattened;
    final l$accountPricesFlattenedFacets = accountPricesFlattenedFacets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountPricesFlattened,
      Object.hashAll(l$accountPricesFlattenedFacets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AccountPrices || runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountPricesFlattened = accountPricesFlattened;
    final lOther$accountPricesFlattened = other.accountPricesFlattened;
    if (l$accountPricesFlattened != lOther$accountPricesFlattened) {
      return false;
    }
    final l$accountPricesFlattenedFacets = accountPricesFlattenedFacets;
    final lOther$accountPricesFlattenedFacets =
        other.accountPricesFlattenedFacets;
    if (l$accountPricesFlattenedFacets.length !=
        lOther$accountPricesFlattenedFacets.length) {
      return false;
    }
    for (int i = 0; i < l$accountPricesFlattenedFacets.length; i++) {
      final l$accountPricesFlattenedFacets$entry =
          l$accountPricesFlattenedFacets[i];
      final lOther$accountPricesFlattenedFacets$entry =
          lOther$accountPricesFlattenedFacets[i];
      if (l$accountPricesFlattenedFacets$entry !=
          lOther$accountPricesFlattenedFacets$entry) {
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

extension UtilityExtension$Query$AccountPrices on Query$AccountPrices {
  CopyWith$Query$AccountPrices<Query$AccountPrices> get copyWith =>
      CopyWith$Query$AccountPrices(this, (i) => i);
}

abstract class CopyWith$Query$AccountPrices<TRes> {
  factory CopyWith$Query$AccountPrices(
    Query$AccountPrices instance,
    TRes Function(Query$AccountPrices) then,
  ) = _CopyWithImpl$Query$AccountPrices;

  factory CopyWith$Query$AccountPrices.stub(TRes res) =
      _CopyWithStubImpl$Query$AccountPrices;

  TRes call({
    Query$AccountPrices$accountPricesFlattened? accountPricesFlattened,
    List<Query$AccountPrices$accountPricesFlattenedFacets>?
    accountPricesFlattenedFacets,
    String? $__typename,
  });
  CopyWith$Query$AccountPrices$accountPricesFlattened<TRes>
  get accountPricesFlattened;
  TRes accountPricesFlattenedFacets(
    Iterable<Query$AccountPrices$accountPricesFlattenedFacets> Function(
      Iterable<
        CopyWith$Query$AccountPrices$accountPricesFlattenedFacets<
          Query$AccountPrices$accountPricesFlattenedFacets
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$AccountPrices<TRes>
    implements CopyWith$Query$AccountPrices<TRes> {
  _CopyWithImpl$Query$AccountPrices(this._instance, this._then);

  final Query$AccountPrices _instance;

  final TRes Function(Query$AccountPrices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountPricesFlattened = _undefined,
    Object? accountPricesFlattenedFacets = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices(
      accountPricesFlattened: accountPricesFlattened == _undefined
          ? _instance.accountPricesFlattened
          : (accountPricesFlattened
                as Query$AccountPrices$accountPricesFlattened?),
      accountPricesFlattenedFacets:
          accountPricesFlattenedFacets == _undefined ||
              accountPricesFlattenedFacets == null
          ? _instance.accountPricesFlattenedFacets
          : (accountPricesFlattenedFacets
                as List<Query$AccountPrices$accountPricesFlattenedFacets>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AccountPrices$accountPricesFlattened<TRes>
  get accountPricesFlattened {
    final local$accountPricesFlattened = _instance.accountPricesFlattened;
    return local$accountPricesFlattened == null
        ? CopyWith$Query$AccountPrices$accountPricesFlattened.stub(
            _then(_instance),
          )
        : CopyWith$Query$AccountPrices$accountPricesFlattened(
            local$accountPricesFlattened,
            (e) => call(accountPricesFlattened: e),
          );
  }

  TRes accountPricesFlattenedFacets(
    Iterable<Query$AccountPrices$accountPricesFlattenedFacets> Function(
      Iterable<
        CopyWith$Query$AccountPrices$accountPricesFlattenedFacets<
          Query$AccountPrices$accountPricesFlattenedFacets
        >
      >,
    )
    _fn,
  ) => call(
    accountPricesFlattenedFacets: _fn(
      _instance.accountPricesFlattenedFacets.map(
        (e) => CopyWith$Query$AccountPrices$accountPricesFlattenedFacets(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$AccountPrices<TRes>
    implements CopyWith$Query$AccountPrices<TRes> {
  _CopyWithStubImpl$Query$AccountPrices(this._res);

  TRes _res;

  call({
    Query$AccountPrices$accountPricesFlattened? accountPricesFlattened,
    List<Query$AccountPrices$accountPricesFlattenedFacets>?
    accountPricesFlattenedFacets,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AccountPrices$accountPricesFlattened<TRes>
  get accountPricesFlattened =>
      CopyWith$Query$AccountPrices$accountPricesFlattened.stub(_res);

  accountPricesFlattenedFacets(_fn) => _res;
}

const documentNodeQueryAccountPrices = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'AccountPrices'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'GetPricesFlattenedInput'),
            isNonNull: true,
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
          variable: VariableNode(name: NameNode(value: 'sorting')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'OutputSortInput'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'tagExpiryDate')),
          type: NamedTypeNode(
            name: NameNode(value: 'DateTime'),
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
            name: NameNode(value: 'accountPricesFlattened'),
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
                value: VariableNode(name: NameNode(value: 'sorting')),
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
                      FieldNode(
                        name: NameNode(value: 'accountId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'accountCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'accountName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'primaryAccountManagerName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'publicationId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'publicationName'),
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
                        name: NameNode(value: 'yardCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'productId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'productCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'productName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'deliveryMethod'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'effectiveFromEpoch'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'effectiveToEpoch'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'baseRate'),
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
                        name: NameNode(value: 'resultantRate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
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
                        name: NameNode(value: 'previousBaseRate'),
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
                        name: NameNode(value: 'issueDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'tags'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'expiryDate'),
                            value: VariableNode(
                              name: NameNode(value: 'tagExpiryDate'),
                            ),
                          ),
                        ],
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
                                  name: NameNode(value: 'Tag'),
                                  isNonNull: false,
                                ),
                              ),
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
                                    name: NameNode(value: 'functional'),
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
                                          name: NameNode(value: 'isRate'),
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
                                    name: NameNode(value: 'templateId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'template'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'category'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'reason'),
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
                                    name: NameNode(value: 'effectiveFrom'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'effectiveTo'),
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
                                          name: NameNode(value: 'userName'),
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
                            InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                on: NamedTypeNode(
                                  name: NameNode(value: 'CollectedTag'),
                                  isNonNull: false,
                                ),
                              ),
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
                                    name: NameNode(value: 'functional'),
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
                                          name: NameNode(value: 'isRate'),
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
                                    name: NameNode(value: 'haulageRate'),
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
                                          name: NameNode(value: 'isRate'),
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
                                    name: NameNode(value: 'templateId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'template'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'category'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'reason'),
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
                                    name: NameNode(value: 'effectiveFrom'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'effectiveTo'),
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
                                          name: NameNode(value: 'userName'),
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
                                    name: NameNode(value: 'fullyCharged'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'showToCustomer'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value: 'accountLocationKeys',
                                    ),
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
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(value: 'tagDelta'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
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
            name: NameNode(value: 'accountPricesFlattenedFacets'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
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
                        name: NameNode(value: 'values'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'count'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'range'),
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

class Query$AccountPrices$accountPricesFlattened {
  Query$AccountPrices$accountPricesFlattened({
    required this.pageInfo,
    required this.totalCount,
    this.nodes,
    this.$__typename = 'AccountPricesFlattenedConnection',
  });

  factory Query$AccountPrices$accountPricesFlattened.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattened(
      pageInfo: Query$AccountPrices$accountPricesFlattened$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$AccountPrices$accountPricesFlattened$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AccountPrices$accountPricesFlattened$pageInfo pageInfo;

  final int totalCount;

  final List<Query$AccountPrices$accountPricesFlattened$nodes>? nodes;

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
    if (other is! Query$AccountPrices$accountPricesFlattened ||
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattened
    on Query$AccountPrices$accountPricesFlattened {
  CopyWith$Query$AccountPrices$accountPricesFlattened<
    Query$AccountPrices$accountPricesFlattened
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattened(this, (i) => i);
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattened<TRes> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattened(
    Query$AccountPrices$accountPricesFlattened instance,
    TRes Function(Query$AccountPrices$accountPricesFlattened) then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattened;

  factory CopyWith$Query$AccountPrices$accountPricesFlattened.stub(TRes res) =
      _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened;

  TRes call({
    Query$AccountPrices$accountPricesFlattened$pageInfo? pageInfo,
    int? totalCount,
    List<Query$AccountPrices$accountPricesFlattened$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$AccountPrices$accountPricesFlattened$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$AccountPrices$accountPricesFlattened$nodes>? Function(
      Iterable<
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes<
          Query$AccountPrices$accountPricesFlattened$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattened<TRes>
    implements CopyWith$Query$AccountPrices$accountPricesFlattened<TRes> {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattened(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattened _instance;

  final TRes Function(Query$AccountPrices$accountPricesFlattened) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices$accountPricesFlattened(
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$AccountPrices$accountPricesFlattened$pageInfo),
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes as List<Query$AccountPrices$accountPricesFlattened$nodes>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AccountPrices$accountPricesFlattened$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$AccountPrices$accountPricesFlattened$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$AccountPrices$accountPricesFlattened$nodes>? Function(
      Iterable<
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes<
          Query$AccountPrices$accountPricesFlattened$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$AccountPrices$accountPricesFlattened$nodes(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened<TRes>
    implements CopyWith$Query$AccountPrices$accountPricesFlattened<TRes> {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened(this._res);

  TRes _res;

  call({
    Query$AccountPrices$accountPricesFlattened$pageInfo? pageInfo,
    int? totalCount,
    List<Query$AccountPrices$accountPricesFlattened$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AccountPrices$accountPricesFlattened$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$AccountPrices$accountPricesFlattened$pageInfo {
  Query$AccountPrices$accountPricesFlattened$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$AccountPrices$accountPricesFlattened$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattened$pageInfo(
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
    if (other is! Query$AccountPrices$accountPricesFlattened$pageInfo ||
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattened$pageInfo
    on Query$AccountPrices$accountPricesFlattened$pageInfo {
  CopyWith$Query$AccountPrices$accountPricesFlattened$pageInfo<
    Query$AccountPrices$accountPricesFlattened$pageInfo
  >
  get copyWith => CopyWith$Query$AccountPrices$accountPricesFlattened$pageInfo(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattened$pageInfo<
  TRes
> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattened$pageInfo(
    Query$AccountPrices$accountPricesFlattened$pageInfo instance,
    TRes Function(Query$AccountPrices$accountPricesFlattened$pageInfo) then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$pageInfo;

  factory CopyWith$Query$AccountPrices$accountPricesFlattened$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$pageInfo<TRes>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$pageInfo<TRes> {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$pageInfo(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattened$pageInfo _instance;

  final TRes Function(Query$AccountPrices$accountPricesFlattened$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices$accountPricesFlattened$pageInfo(
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

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$pageInfo<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$pageInfo<TRes> {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$pageInfo(
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

class Query$AccountPrices$accountPricesFlattened$nodes {
  Query$AccountPrices$accountPricesFlattened$nodes({
    required this.accountId,
    required this.accountCode,
    this.accountName,
    this.primaryAccountManagerName,
    required this.publicationId,
    this.publicationName,
    required this.yardId,
    this.yardCode,
    required this.productId,
    this.productCode,
    this.productName,
    required this.deliveryMethod,
    required this.effectiveFromEpoch,
    required this.effectiveToEpoch,
    this.baseRate,
    this.resultantRate,
    this.previousBaseRate,
    this.issueDate,
    required this.tags,
    this.tagDelta,
    required this.locations,
    this.$__typename = 'Output',
  });

  factory Query$AccountPrices$accountPricesFlattened$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountId = json['accountId'];
    final l$accountCode = json['accountCode'];
    final l$accountName = json['accountName'];
    final l$primaryAccountManagerName = json['primaryAccountManagerName'];
    final l$publicationId = json['publicationId'];
    final l$publicationName = json['publicationName'];
    final l$yardId = json['yardId'];
    final l$yardCode = json['yardCode'];
    final l$productId = json['productId'];
    final l$productCode = json['productCode'];
    final l$productName = json['productName'];
    final l$deliveryMethod = json['deliveryMethod'];
    final l$effectiveFromEpoch = json['effectiveFromEpoch'];
    final l$effectiveToEpoch = json['effectiveToEpoch'];
    final l$baseRate = json['baseRate'];
    final l$resultantRate = json['resultantRate'];
    final l$previousBaseRate = json['previousBaseRate'];
    final l$issueDate = json['issueDate'];
    final l$tags = json['tags'];
    final l$tagDelta = json['tagDelta'];
    final l$locations = json['locations'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattened$nodes(
      accountId: (l$accountId as String),
      accountCode: (l$accountCode as String),
      accountName: (l$accountName as String?),
      primaryAccountManagerName: (l$primaryAccountManagerName as String?),
      publicationId: (l$publicationId as String),
      publicationName: (l$publicationName as String?),
      yardId: (l$yardId as String),
      yardCode: (l$yardCode as String?),
      productId: (l$productId as String),
      productCode: (l$productCode as String?),
      productName: (l$productName as String?),
      deliveryMethod: fromJson$Enum$DeliveryMethod(
        (l$deliveryMethod as String),
      ),
      effectiveFromEpoch: (l$effectiveFromEpoch as int),
      effectiveToEpoch: (l$effectiveToEpoch as int),
      baseRate: l$baseRate == null
          ? null
          : Query$AccountPrices$accountPricesFlattened$nodes$baseRate.fromJson(
              (l$baseRate as Map<String, dynamic>),
            ),
      resultantRate: l$resultantRate == null
          ? null
          : Query$AccountPrices$accountPricesFlattened$nodes$resultantRate.fromJson(
              (l$resultantRate as Map<String, dynamic>),
            ),
      previousBaseRate: l$previousBaseRate == null
          ? null
          : Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate.fromJson(
              (l$previousBaseRate as Map<String, dynamic>),
            ),
      issueDate: l$issueDate == null
          ? null
          : DateTime.parse((l$issueDate as String)),
      tags: (l$tags as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$AccountPrices$accountPricesFlattened$nodes$tags.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      tagDelta: (l$tagDelta as num?)?.toDouble(),
      locations: (l$locations as List<dynamic>)
          .map(
            (e) =>
                Query$AccountPrices$accountPricesFlattened$nodes$locations.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String accountId;

  final String accountCode;

  final String? accountName;

  final String? primaryAccountManagerName;

  final String publicationId;

  final String? publicationName;

  final String yardId;

  final String? yardCode;

  final String productId;

  final String? productCode;

  final String? productName;

  final Enum$DeliveryMethod deliveryMethod;

  final int effectiveFromEpoch;

  final int effectiveToEpoch;

  final Query$AccountPrices$accountPricesFlattened$nodes$baseRate? baseRate;

  final Query$AccountPrices$accountPricesFlattened$nodes$resultantRate?
  resultantRate;

  final Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate?
  previousBaseRate;

  final DateTime? issueDate;

  final List<Query$AccountPrices$accountPricesFlattened$nodes$tags?> tags;

  final double? tagDelta;

  final List<Query$AccountPrices$accountPricesFlattened$nodes$locations>
  locations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountId = accountId;
    _resultData['accountId'] = l$accountId;
    final l$accountCode = accountCode;
    _resultData['accountCode'] = l$accountCode;
    final l$accountName = accountName;
    _resultData['accountName'] = l$accountName;
    final l$primaryAccountManagerName = primaryAccountManagerName;
    _resultData['primaryAccountManagerName'] = l$primaryAccountManagerName;
    final l$publicationId = publicationId;
    _resultData['publicationId'] = l$publicationId;
    final l$publicationName = publicationName;
    _resultData['publicationName'] = l$publicationName;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$productId = productId;
    _resultData['productId'] = l$productId;
    final l$productCode = productCode;
    _resultData['productCode'] = l$productCode;
    final l$productName = productName;
    _resultData['productName'] = l$productName;
    final l$deliveryMethod = deliveryMethod;
    _resultData['deliveryMethod'] = toJson$Enum$DeliveryMethod(
      l$deliveryMethod,
    );
    final l$effectiveFromEpoch = effectiveFromEpoch;
    _resultData['effectiveFromEpoch'] = l$effectiveFromEpoch;
    final l$effectiveToEpoch = effectiveToEpoch;
    _resultData['effectiveToEpoch'] = l$effectiveToEpoch;
    final l$baseRate = baseRate;
    _resultData['baseRate'] = l$baseRate?.toJson();
    final l$resultantRate = resultantRate;
    _resultData['resultantRate'] = l$resultantRate?.toJson();
    final l$previousBaseRate = previousBaseRate;
    _resultData['previousBaseRate'] = l$previousBaseRate?.toJson();
    final l$issueDate = issueDate;
    _resultData['issueDate'] = l$issueDate?.toIso8601String();
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e?.toJson()).toList();
    final l$tagDelta = tagDelta;
    _resultData['tagDelta'] = l$tagDelta;
    final l$locations = locations;
    _resultData['locations'] = l$locations.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountId = accountId;
    final l$accountCode = accountCode;
    final l$accountName = accountName;
    final l$primaryAccountManagerName = primaryAccountManagerName;
    final l$publicationId = publicationId;
    final l$publicationName = publicationName;
    final l$yardId = yardId;
    final l$yardCode = yardCode;
    final l$productId = productId;
    final l$productCode = productCode;
    final l$productName = productName;
    final l$deliveryMethod = deliveryMethod;
    final l$effectiveFromEpoch = effectiveFromEpoch;
    final l$effectiveToEpoch = effectiveToEpoch;
    final l$baseRate = baseRate;
    final l$resultantRate = resultantRate;
    final l$previousBaseRate = previousBaseRate;
    final l$issueDate = issueDate;
    final l$tags = tags;
    final l$tagDelta = tagDelta;
    final l$locations = locations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountId,
      l$accountCode,
      l$accountName,
      l$primaryAccountManagerName,
      l$publicationId,
      l$publicationName,
      l$yardId,
      l$yardCode,
      l$productId,
      l$productCode,
      l$productName,
      l$deliveryMethod,
      l$effectiveFromEpoch,
      l$effectiveToEpoch,
      l$baseRate,
      l$resultantRate,
      l$previousBaseRate,
      l$issueDate,
      Object.hashAll(l$tags.map((v) => v)),
      l$tagDelta,
      Object.hashAll(l$locations.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AccountPrices$accountPricesFlattened$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$accountCode = accountCode;
    final lOther$accountCode = other.accountCode;
    if (l$accountCode != lOther$accountCode) {
      return false;
    }
    final l$accountName = accountName;
    final lOther$accountName = other.accountName;
    if (l$accountName != lOther$accountName) {
      return false;
    }
    final l$primaryAccountManagerName = primaryAccountManagerName;
    final lOther$primaryAccountManagerName = other.primaryAccountManagerName;
    if (l$primaryAccountManagerName != lOther$primaryAccountManagerName) {
      return false;
    }
    final l$publicationId = publicationId;
    final lOther$publicationId = other.publicationId;
    if (l$publicationId != lOther$publicationId) {
      return false;
    }
    final l$publicationName = publicationName;
    final lOther$publicationName = other.publicationName;
    if (l$publicationName != lOther$publicationName) {
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
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    final l$productCode = productCode;
    final lOther$productCode = other.productCode;
    if (l$productCode != lOther$productCode) {
      return false;
    }
    final l$productName = productName;
    final lOther$productName = other.productName;
    if (l$productName != lOther$productName) {
      return false;
    }
    final l$deliveryMethod = deliveryMethod;
    final lOther$deliveryMethod = other.deliveryMethod;
    if (l$deliveryMethod != lOther$deliveryMethod) {
      return false;
    }
    final l$effectiveFromEpoch = effectiveFromEpoch;
    final lOther$effectiveFromEpoch = other.effectiveFromEpoch;
    if (l$effectiveFromEpoch != lOther$effectiveFromEpoch) {
      return false;
    }
    final l$effectiveToEpoch = effectiveToEpoch;
    final lOther$effectiveToEpoch = other.effectiveToEpoch;
    if (l$effectiveToEpoch != lOther$effectiveToEpoch) {
      return false;
    }
    final l$baseRate = baseRate;
    final lOther$baseRate = other.baseRate;
    if (l$baseRate != lOther$baseRate) {
      return false;
    }
    final l$resultantRate = resultantRate;
    final lOther$resultantRate = other.resultantRate;
    if (l$resultantRate != lOther$resultantRate) {
      return false;
    }
    final l$previousBaseRate = previousBaseRate;
    final lOther$previousBaseRate = other.previousBaseRate;
    if (l$previousBaseRate != lOther$previousBaseRate) {
      return false;
    }
    final l$issueDate = issueDate;
    final lOther$issueDate = other.issueDate;
    if (l$issueDate != lOther$issueDate) {
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
    final l$tagDelta = tagDelta;
    final lOther$tagDelta = other.tagDelta;
    if (l$tagDelta != lOther$tagDelta) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AccountPrices$accountPricesFlattened$nodes
    on Query$AccountPrices$accountPricesFlattened$nodes {
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes<
    Query$AccountPrices$accountPricesFlattened$nodes
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes(this, (i) => i);
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattened$nodes<TRes> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes(
    Query$AccountPrices$accountPricesFlattened$nodes instance,
    TRes Function(Query$AccountPrices$accountPricesFlattened$nodes) then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes;

  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes;

  TRes call({
    String? accountId,
    String? accountCode,
    String? accountName,
    String? primaryAccountManagerName,
    String? publicationId,
    String? publicationName,
    String? yardId,
    String? yardCode,
    String? productId,
    String? productCode,
    String? productName,
    Enum$DeliveryMethod? deliveryMethod,
    int? effectiveFromEpoch,
    int? effectiveToEpoch,
    Query$AccountPrices$accountPricesFlattened$nodes$baseRate? baseRate,
    Query$AccountPrices$accountPricesFlattened$nodes$resultantRate?
    resultantRate,
    Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate?
    previousBaseRate,
    DateTime? issueDate,
    List<Query$AccountPrices$accountPricesFlattened$nodes$tags?>? tags,
    double? tagDelta,
    List<Query$AccountPrices$accountPricesFlattened$nodes$locations>? locations,
    String? $__typename,
  });
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$baseRate<TRes>
  get baseRate;
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate<TRes>
  get resultantRate;
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate<
    TRes
  >
  get previousBaseRate;
  TRes tags(
    Iterable<Query$AccountPrices$accountPricesFlattened$nodes$tags?> Function(
      Iterable<
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags<
          Query$AccountPrices$accountPricesFlattened$nodes$tags
        >?
      >,
    )
    _fn,
  );
  TRes locations(
    Iterable<Query$AccountPrices$accountPricesFlattened$nodes$locations>
    Function(
      Iterable<
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$locations<
          Query$AccountPrices$accountPricesFlattened$nodes$locations
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes<TRes>
    implements CopyWith$Query$AccountPrices$accountPricesFlattened$nodes<TRes> {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattened$nodes _instance;

  final TRes Function(Query$AccountPrices$accountPricesFlattened$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountId = _undefined,
    Object? accountCode = _undefined,
    Object? accountName = _undefined,
    Object? primaryAccountManagerName = _undefined,
    Object? publicationId = _undefined,
    Object? publicationName = _undefined,
    Object? yardId = _undefined,
    Object? yardCode = _undefined,
    Object? productId = _undefined,
    Object? productCode = _undefined,
    Object? productName = _undefined,
    Object? deliveryMethod = _undefined,
    Object? effectiveFromEpoch = _undefined,
    Object? effectiveToEpoch = _undefined,
    Object? baseRate = _undefined,
    Object? resultantRate = _undefined,
    Object? previousBaseRate = _undefined,
    Object? issueDate = _undefined,
    Object? tags = _undefined,
    Object? tagDelta = _undefined,
    Object? locations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices$accountPricesFlattened$nodes(
      accountId: accountId == _undefined || accountId == null
          ? _instance.accountId
          : (accountId as String),
      accountCode: accountCode == _undefined || accountCode == null
          ? _instance.accountCode
          : (accountCode as String),
      accountName: accountName == _undefined
          ? _instance.accountName
          : (accountName as String?),
      primaryAccountManagerName: primaryAccountManagerName == _undefined
          ? _instance.primaryAccountManagerName
          : (primaryAccountManagerName as String?),
      publicationId: publicationId == _undefined || publicationId == null
          ? _instance.publicationId
          : (publicationId as String),
      publicationName: publicationName == _undefined
          ? _instance.publicationName
          : (publicationName as String?),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      yardCode: yardCode == _undefined
          ? _instance.yardCode
          : (yardCode as String?),
      productId: productId == _undefined || productId == null
          ? _instance.productId
          : (productId as String),
      productCode: productCode == _undefined
          ? _instance.productCode
          : (productCode as String?),
      productName: productName == _undefined
          ? _instance.productName
          : (productName as String?),
      deliveryMethod: deliveryMethod == _undefined || deliveryMethod == null
          ? _instance.deliveryMethod
          : (deliveryMethod as Enum$DeliveryMethod),
      effectiveFromEpoch:
          effectiveFromEpoch == _undefined || effectiveFromEpoch == null
          ? _instance.effectiveFromEpoch
          : (effectiveFromEpoch as int),
      effectiveToEpoch:
          effectiveToEpoch == _undefined || effectiveToEpoch == null
          ? _instance.effectiveToEpoch
          : (effectiveToEpoch as int),
      baseRate: baseRate == _undefined
          ? _instance.baseRate
          : (baseRate
                as Query$AccountPrices$accountPricesFlattened$nodes$baseRate?),
      resultantRate: resultantRate == _undefined
          ? _instance.resultantRate
          : (resultantRate
                as Query$AccountPrices$accountPricesFlattened$nodes$resultantRate?),
      previousBaseRate: previousBaseRate == _undefined
          ? _instance.previousBaseRate
          : (previousBaseRate
                as Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate?),
      issueDate: issueDate == _undefined
          ? _instance.issueDate
          : (issueDate as DateTime?),
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags
                as List<
                  Query$AccountPrices$accountPricesFlattened$nodes$tags?
                >),
      tagDelta: tagDelta == _undefined
          ? _instance.tagDelta
          : (tagDelta as double?),
      locations: locations == _undefined || locations == null
          ? _instance.locations
          : (locations
                as List<
                  Query$AccountPrices$accountPricesFlattened$nodes$locations
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$baseRate<TRes>
  get baseRate {
    final local$baseRate = _instance.baseRate;
    return local$baseRate == null
        ? CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$baseRate.stub(
            _then(_instance),
          )
        : CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$baseRate(
            local$baseRate,
            (e) => call(baseRate: e),
          );
  }

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate<TRes>
  get resultantRate {
    final local$resultantRate = _instance.resultantRate;
    return local$resultantRate == null
        ? CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate.stub(
            _then(_instance),
          )
        : CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate(
            local$resultantRate,
            (e) => call(resultantRate: e),
          );
  }

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate<
    TRes
  >
  get previousBaseRate {
    final local$previousBaseRate = _instance.previousBaseRate;
    return local$previousBaseRate == null
        ? CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate.stub(
            _then(_instance),
          )
        : CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate(
            local$previousBaseRate,
            (e) => call(previousBaseRate: e),
          );
  }

  TRes tags(
    Iterable<Query$AccountPrices$accountPricesFlattened$nodes$tags?> Function(
      Iterable<
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags<
          Query$AccountPrices$accountPricesFlattened$nodes$tags
        >?
      >,
    )
    _fn,
  ) => call(
    tags: _fn(
      _instance.tags.map(
        (e) => e == null
            ? null
            : CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );

  TRes locations(
    Iterable<Query$AccountPrices$accountPricesFlattened$nodes$locations>
    Function(
      Iterable<
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$locations<
          Query$AccountPrices$accountPricesFlattened$nodes$locations
        >
      >,
    )
    _fn,
  ) => call(
    locations: _fn(
      _instance.locations.map(
        (e) =>
            CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$locations(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes<TRes>
    implements CopyWith$Query$AccountPrices$accountPricesFlattened$nodes<TRes> {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes(this._res);

  TRes _res;

  call({
    String? accountId,
    String? accountCode,
    String? accountName,
    String? primaryAccountManagerName,
    String? publicationId,
    String? publicationName,
    String? yardId,
    String? yardCode,
    String? productId,
    String? productCode,
    String? productName,
    Enum$DeliveryMethod? deliveryMethod,
    int? effectiveFromEpoch,
    int? effectiveToEpoch,
    Query$AccountPrices$accountPricesFlattened$nodes$baseRate? baseRate,
    Query$AccountPrices$accountPricesFlattened$nodes$resultantRate?
    resultantRate,
    Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate?
    previousBaseRate,
    DateTime? issueDate,
    List<Query$AccountPrices$accountPricesFlattened$nodes$tags?>? tags,
    double? tagDelta,
    List<Query$AccountPrices$accountPricesFlattened$nodes$locations>? locations,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$baseRate<TRes>
  get baseRate =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$baseRate.stub(
        _res,
      );

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate<TRes>
  get resultantRate =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate.stub(
        _res,
      );

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate<
    TRes
  >
  get previousBaseRate =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate.stub(
        _res,
      );

  tags(_fn) => _res;

  locations(_fn) => _res;
}

class Query$AccountPrices$accountPricesFlattened$nodes$baseRate {
  Query$AccountPrices$accountPricesFlattened$nodes$baseRate({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$AccountPrices$accountPricesFlattened$nodes$baseRate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattened$nodes$baseRate(
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
    if (other is! Query$AccountPrices$accountPricesFlattened$nodes$baseRate ||
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattened$nodes$baseRate
    on Query$AccountPrices$accountPricesFlattened$nodes$baseRate {
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$baseRate<
    Query$AccountPrices$accountPricesFlattened$nodes$baseRate
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$baseRate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$baseRate<
  TRes
> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$baseRate(
    Query$AccountPrices$accountPricesFlattened$nodes$baseRate instance,
    TRes Function(Query$AccountPrices$accountPricesFlattened$nodes$baseRate)
    then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$baseRate;

  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$baseRate.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$baseRate;

  TRes call({Enum$Uom? uom, double? value, String? $__typename});
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$baseRate<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$baseRate<
          TRes
        > {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$baseRate(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattened$nodes$baseRate _instance;

  final TRes Function(Query$AccountPrices$accountPricesFlattened$nodes$baseRate)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices$accountPricesFlattened$nodes$baseRate(
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

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$baseRate<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$baseRate<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$baseRate(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, String? $__typename}) => _res;
}

class Query$AccountPrices$accountPricesFlattened$nodes$resultantRate {
  Query$AccountPrices$accountPricesFlattened$nodes$resultantRate({
    required this.rate,
    this.$__typename = 'ProductRate',
  });

  factory Query$AccountPrices$accountPricesFlattened$nodes$resultantRate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$rate = json['rate'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattened$nodes$resultantRate(
      rate:
          Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate.fromJson(
            (l$rate as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate
  rate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rate = rate;
    _resultData['rate'] = l$rate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rate = rate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$rate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountPrices$accountPricesFlattened$nodes$resultantRate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate
    on Query$AccountPrices$accountPricesFlattened$nodes$resultantRate {
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate<
    Query$AccountPrices$accountPricesFlattened$nodes$resultantRate
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate<
  TRes
> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate(
    Query$AccountPrices$accountPricesFlattened$nodes$resultantRate instance,
    TRes Function(
      Query$AccountPrices$accountPricesFlattened$nodes$resultantRate,
    )
    then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate;

  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate;

  TRes call({
    Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate? rate,
    String? $__typename,
  });
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate<
    TRes
  >
  get rate;
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate<
          TRes
        > {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattened$nodes$resultantRate
  _instance;

  final TRes Function(
    Query$AccountPrices$accountPricesFlattened$nodes$resultantRate,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices$accountPricesFlattened$nodes$resultantRate(
      rate: rate == _undefined || rate == null
          ? _instance.rate
          : (rate
                as Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate<
    TRes
  >
  get rate {
    final local$rate = _instance.rate;
    return CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate(
      local$rate,
      (e) => call(rate: e),
    );
  }
}

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate(
    this._res,
  );

  TRes _res;

  call({
    Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate? rate,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate<
    TRes
  >
  get rate =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate.stub(
        _res,
      );
}

class Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate {
  Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate(
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
            is! Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate ||
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate
    on Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate {
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate<
    Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate<
  TRes
> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate(
    Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate
    instance,
    TRes Function(
      Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate,
    )
    then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate;

  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate;

  TRes call({Enum$Uom? uom, double? value, String? $__typename});
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate<
          TRes
        > {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate
  _instance;

  final TRes Function(
    Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate(
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

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$resultantRate$rate(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, String? $__typename}) => _res;
}

class Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate {
  Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate(
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
            is! Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate ||
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate
    on Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate {
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate<
    Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate<
  TRes
> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate(
    Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate instance,
    TRes Function(
      Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate,
    )
    then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate;

  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate;

  TRes call({Enum$Uom? uom, double? value, String? $__typename});
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate<
          TRes
        > {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate
  _instance;

  final TRes Function(
    Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate(
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

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$previousBaseRate(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, String? $__typename}) => _res;
}

class Query$AccountPrices$accountPricesFlattened$nodes$tags {
  Query$AccountPrices$accountPricesFlattened$nodes$tags({
    required this.$__typename,
  });

  factory Query$AccountPrices$accountPricesFlattened$nodes$tags.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "Tag":
        return Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag.fromJson(
          json,
        );

      case "CollectedTag":
        return Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Query$AccountPrices$accountPricesFlattened$nodes$tags(
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
    if (other is! Query$AccountPrices$accountPricesFlattened$nodes$tags ||
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattened$nodes$tags
    on Query$AccountPrices$accountPricesFlattened$nodes$tags {
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags<
    Query$AccountPrices$accountPricesFlattened$nodes$tags
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag,
    )
    tag,
    required _T Function(
      Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag,
    )
    collectedTag,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Tag":
        return tag(
          this as Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag,
        );

      case "CollectedTag":
        return collectedTag(
          this
              as Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag)?
    tag,
    _T Function(
      Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag,
    )?
    collectedTag,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Tag":
        if (tag != null) {
          return tag(
            this as Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag,
          );
        } else {
          return orElse();
        }

      case "CollectedTag":
        if (collectedTag != null) {
          return collectedTag(
            this
                as Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags<
  TRes
> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags(
    Query$AccountPrices$accountPricesFlattened$nodes$tags instance,
    TRes Function(Query$AccountPrices$accountPricesFlattened$nodes$tags) then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags;

  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags<TRes>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags<TRes> {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattened$nodes$tags _instance;

  final TRes Function(Query$AccountPrices$accountPricesFlattened$nodes$tags)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Query$AccountPrices$accountPricesFlattened$nodes$tags(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags<TRes> {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag
    implements Query$AccountPrices$accountPricesFlattened$nodes$tags {
  Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag({
    required this.id,
    required this.functional,
    required this.rate,
    required this.templateId,
    required this.template,
    required this.effectiveFrom,
    required this.effectiveTo,
    required this.created,
    this.$__typename = 'Tag',
  });

  factory Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$functional = json['functional'];
    final l$rate = json['rate'];
    final l$templateId = json['templateId'];
    final l$template = json['template'];
    final l$effectiveFrom = json['effectiveFrom'];
    final l$effectiveTo = json['effectiveTo'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag(
      id: (l$id as String),
      functional: (l$functional as bool),
      rate:
          Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate.fromJson(
            (l$rate as Map<String, dynamic>),
          ),
      templateId: (l$templateId as String),
      template:
          Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template.fromJson(
            (l$template as Map<String, dynamic>),
          ),
      effectiveFrom: DateTime.parse((l$effectiveFrom as String)),
      effectiveTo: DateTime.parse((l$effectiveTo as String)),
      created:
          Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final bool functional;

  final Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate rate;

  final String templateId;

  final Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template
  template;

  final DateTime effectiveFrom;

  final DateTime effectiveTo;

  final Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created
  created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$functional = functional;
    _resultData['functional'] = l$functional;
    final l$rate = rate;
    _resultData['rate'] = l$rate.toJson();
    final l$templateId = templateId;
    _resultData['templateId'] = l$templateId;
    final l$template = template;
    _resultData['template'] = l$template.toJson();
    final l$effectiveFrom = effectiveFrom;
    _resultData['effectiveFrom'] = l$effectiveFrom.toIso8601String();
    final l$effectiveTo = effectiveTo;
    _resultData['effectiveTo'] = l$effectiveTo.toIso8601String();
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$functional = functional;
    final l$rate = rate;
    final l$templateId = templateId;
    final l$template = template;
    final l$effectiveFrom = effectiveFrom;
    final l$effectiveTo = effectiveTo;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$functional,
      l$rate,
      l$templateId,
      l$template,
      l$effectiveFrom,
      l$effectiveTo,
      l$created,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$functional = functional;
    final lOther$functional = other.functional;
    if (l$functional != lOther$functional) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$templateId = templateId;
    final lOther$templateId = other.templateId;
    if (l$templateId != lOther$templateId) {
      return false;
    }
    final l$template = template;
    final lOther$template = other.template;
    if (l$template != lOther$template) {
      return false;
    }
    final l$effectiveFrom = effectiveFrom;
    final lOther$effectiveFrom = other.effectiveFrom;
    if (l$effectiveFrom != lOther$effectiveFrom) {
      return false;
    }
    final l$effectiveTo = effectiveTo;
    final lOther$effectiveTo = other.effectiveTo;
    if (l$effectiveTo != lOther$effectiveTo) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag
    on Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag {
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag<
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag<
  TRes
> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag instance,
    TRes Function(Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag)
    then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag;

  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag;

  TRes call({
    String? id,
    bool? functional,
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate? rate,
    String? templateId,
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template?
    template,
    DateTime? effectiveFrom,
    DateTime? effectiveTo,
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created? created,
    String? $__typename,
  });
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate<TRes>
  get rate;
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template<
    TRes
  >
  get template;
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag<
          TRes
        > {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag _instance;

  final TRes Function(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? functional = _undefined,
    Object? rate = _undefined,
    Object? templateId = _undefined,
    Object? template = _undefined,
    Object? effectiveFrom = _undefined,
    Object? effectiveTo = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      functional: functional == _undefined || functional == null
          ? _instance.functional
          : (functional as bool),
      rate: rate == _undefined || rate == null
          ? _instance.rate
          : (rate
                as Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate),
      templateId: templateId == _undefined || templateId == null
          ? _instance.templateId
          : (templateId as String),
      template: template == _undefined || template == null
          ? _instance.template
          : (template
                as Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template),
      effectiveFrom: effectiveFrom == _undefined || effectiveFrom == null
          ? _instance.effectiveFrom
          : (effectiveFrom as DateTime),
      effectiveTo: effectiveTo == _undefined || effectiveTo == null
          ? _instance.effectiveTo
          : (effectiveTo as DateTime),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate<TRes>
  get rate {
    final local$rate = _instance.rate;
    return CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate(
      local$rate,
      (e) => call(rate: e),
    );
  }

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template<
    TRes
  >
  get template {
    final local$template = _instance.template;
    return CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template(
      local$template,
      (e) => call(template: e),
    );
  }

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    bool? functional,
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate? rate,
    String? templateId,
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template?
    template,
    DateTime? effectiveFrom,
    DateTime? effectiveTo,
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate<TRes>
  get rate =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate.stub(
        _res,
      );

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template<
    TRes
  >
  get template =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template.stub(
        _res,
      );

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created<
    TRes
  >
  get created =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created.stub(
        _res,
      );
}

class Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate {
  Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate({
    required this.uom,
    required this.value,
    required this.isRate,
    this.$__typename = 'UomValue',
  });

  factory Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$isRate = json['isRate'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      isRate: (l$isRate as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final bool isRate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$isRate = isRate;
    _resultData['isRate'] = l$isRate;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$isRate = isRate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$isRate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate ||
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
    final l$isRate = isRate;
    final lOther$isRate = other.isRate;
    if (l$isRate != lOther$isRate) {
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate
    on Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate {
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate<
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate<
  TRes
> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate instance,
    TRes Function(
      Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate,
    )
    then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate;

  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate;

  TRes call({Enum$Uom? uom, double? value, bool? isRate, String? $__typename});
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate<
          TRes
        > {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate
  _instance;

  final TRes Function(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? isRate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      isRate: isRate == _undefined || isRate == null
          ? _instance.isRate
          : (isRate as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$rate(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, bool? isRate, String? $__typename}) =>
      _res;
}

class Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template {
  Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template({
    required this.category,
    required this.reason,
    this.$__typename = 'TagTemplate',
  });

  factory Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$category = json['category'];
    final l$reason = json['reason'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template(
      category: (l$category as String),
      reason: (l$reason as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String category;

  final String reason;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$category = category;
    _resultData['category'] = l$category;
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$category = category;
    final l$reason = reason;
    final l$$__typename = $__typename;
    return Object.hashAll([l$category, l$reason, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template
    on Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template {
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template<
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template<
  TRes
> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template
    instance,
    TRes Function(
      Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template,
    )
    then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template;

  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template;

  TRes call({String? category, String? reason, String? $__typename});
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template<
          TRes
        > {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template
  _instance;

  final TRes Function(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? category = _undefined,
    Object? reason = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template(
      category: category == _undefined || category == null
          ? _instance.category
          : (category as String),
      reason: reason == _undefined || reason == null
          ? _instance.reason
          : (reason as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$template(
    this._res,
  );

  TRes _res;

  call({String? category, String? reason, String? $__typename}) => _res;
}

class Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created {
  Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created({
    required this.userName,
    required this.at,
    this.$__typename = 'Created',
  });

  factory Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userName = json['userName'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created(
      userName: (l$userName as String),
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String userName;

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userName = userName;
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userName, l$at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created
    on Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created {
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created<
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created<
  TRes
> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created instance,
    TRes Function(
      Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created,
    )
    then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created;

  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created;

  TRes call({String? userName, DateTime? at, String? $__typename});
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created<
          TRes
        > {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created
  _instance;

  final TRes Function(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userName = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created(
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$Tag$created(
    this._res,
  );

  TRes _res;

  call({String? userName, DateTime? at, String? $__typename}) => _res;
}

class Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag
    implements Query$AccountPrices$accountPricesFlattened$nodes$tags {
  Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag({
    required this.id,
    required this.functional,
    required this.rate,
    this.haulageRate,
    required this.templateId,
    required this.template,
    required this.effectiveFrom,
    required this.effectiveTo,
    required this.created,
    required this.fullyCharged,
    required this.showToCustomer,
    required this.accountLocationKeys,
    this.$__typename = 'CollectedTag',
  });

  factory Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$functional = json['functional'];
    final l$rate = json['rate'];
    final l$haulageRate = json['haulageRate'];
    final l$templateId = json['templateId'];
    final l$template = json['template'];
    final l$effectiveFrom = json['effectiveFrom'];
    final l$effectiveTo = json['effectiveTo'];
    final l$created = json['created'];
    final l$fullyCharged = json['fullyCharged'];
    final l$showToCustomer = json['showToCustomer'];
    final l$accountLocationKeys = json['accountLocationKeys'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag(
      id: (l$id as String),
      functional: (l$functional as bool),
      rate:
          Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate.fromJson(
            (l$rate as Map<String, dynamic>),
          ),
      haulageRate: l$haulageRate == null
          ? null
          : Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate.fromJson(
              (l$haulageRate as Map<String, dynamic>),
            ),
      templateId: (l$templateId as String),
      template:
          Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template.fromJson(
            (l$template as Map<String, dynamic>),
          ),
      effectiveFrom: DateTime.parse((l$effectiveFrom as String)),
      effectiveTo: DateTime.parse((l$effectiveTo as String)),
      created:
          Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      fullyCharged: (l$fullyCharged as bool),
      showToCustomer: (l$showToCustomer as bool),
      accountLocationKeys: (l$accountLocationKeys as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final bool functional;

  final Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate
  rate;

  final Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate?
  haulageRate;

  final String templateId;

  final Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template
  template;

  final DateTime effectiveFrom;

  final DateTime effectiveTo;

  final Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created
  created;

  final bool fullyCharged;

  final bool showToCustomer;

  final List<String> accountLocationKeys;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$functional = functional;
    _resultData['functional'] = l$functional;
    final l$rate = rate;
    _resultData['rate'] = l$rate.toJson();
    final l$haulageRate = haulageRate;
    _resultData['haulageRate'] = l$haulageRate?.toJson();
    final l$templateId = templateId;
    _resultData['templateId'] = l$templateId;
    final l$template = template;
    _resultData['template'] = l$template.toJson();
    final l$effectiveFrom = effectiveFrom;
    _resultData['effectiveFrom'] = l$effectiveFrom.toIso8601String();
    final l$effectiveTo = effectiveTo;
    _resultData['effectiveTo'] = l$effectiveTo.toIso8601String();
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$fullyCharged = fullyCharged;
    _resultData['fullyCharged'] = l$fullyCharged;
    final l$showToCustomer = showToCustomer;
    _resultData['showToCustomer'] = l$showToCustomer;
    final l$accountLocationKeys = accountLocationKeys;
    _resultData['accountLocationKeys'] = l$accountLocationKeys
        .map((e) => e)
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$functional = functional;
    final l$rate = rate;
    final l$haulageRate = haulageRate;
    final l$templateId = templateId;
    final l$template = template;
    final l$effectiveFrom = effectiveFrom;
    final l$effectiveTo = effectiveTo;
    final l$created = created;
    final l$fullyCharged = fullyCharged;
    final l$showToCustomer = showToCustomer;
    final l$accountLocationKeys = accountLocationKeys;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$functional,
      l$rate,
      l$haulageRate,
      l$templateId,
      l$template,
      l$effectiveFrom,
      l$effectiveTo,
      l$created,
      l$fullyCharged,
      l$showToCustomer,
      Object.hashAll(l$accountLocationKeys.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$functional = functional;
    final lOther$functional = other.functional;
    if (l$functional != lOther$functional) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$haulageRate = haulageRate;
    final lOther$haulageRate = other.haulageRate;
    if (l$haulageRate != lOther$haulageRate) {
      return false;
    }
    final l$templateId = templateId;
    final lOther$templateId = other.templateId;
    if (l$templateId != lOther$templateId) {
      return false;
    }
    final l$template = template;
    final lOther$template = other.template;
    if (l$template != lOther$template) {
      return false;
    }
    final l$effectiveFrom = effectiveFrom;
    final lOther$effectiveFrom = other.effectiveFrom;
    if (l$effectiveFrom != lOther$effectiveFrom) {
      return false;
    }
    final l$effectiveTo = effectiveTo;
    final lOther$effectiveTo = other.effectiveTo;
    if (l$effectiveTo != lOther$effectiveTo) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$fullyCharged = fullyCharged;
    final lOther$fullyCharged = other.fullyCharged;
    if (l$fullyCharged != lOther$fullyCharged) {
      return false;
    }
    final l$showToCustomer = showToCustomer;
    final lOther$showToCustomer = other.showToCustomer;
    if (l$showToCustomer != lOther$showToCustomer) {
      return false;
    }
    final l$accountLocationKeys = accountLocationKeys;
    final lOther$accountLocationKeys = other.accountLocationKeys;
    if (l$accountLocationKeys.length != lOther$accountLocationKeys.length) {
      return false;
    }
    for (int i = 0; i < l$accountLocationKeys.length; i++) {
      final l$accountLocationKeys$entry = l$accountLocationKeys[i];
      final lOther$accountLocationKeys$entry = lOther$accountLocationKeys[i];
      if (l$accountLocationKeys$entry != lOther$accountLocationKeys$entry) {
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag
    on Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag {
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag<
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag<
  TRes
> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag
    instance,
    TRes Function(
      Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag,
    )
    then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag;

  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag;

  TRes call({
    String? id,
    bool? functional,
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate?
    rate,
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate?
    haulageRate,
    String? templateId,
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template?
    template,
    DateTime? effectiveFrom,
    DateTime? effectiveTo,
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created?
    created,
    bool? fullyCharged,
    bool? showToCustomer,
    List<String>? accountLocationKeys,
    String? $__typename,
  });
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate<
    TRes
  >
  get rate;
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate<
    TRes
  >
  get haulageRate;
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template<
    TRes
  >
  get template;
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag<
          TRes
        > {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag
  _instance;

  final TRes Function(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? functional = _undefined,
    Object? rate = _undefined,
    Object? haulageRate = _undefined,
    Object? templateId = _undefined,
    Object? template = _undefined,
    Object? effectiveFrom = _undefined,
    Object? effectiveTo = _undefined,
    Object? created = _undefined,
    Object? fullyCharged = _undefined,
    Object? showToCustomer = _undefined,
    Object? accountLocationKeys = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      functional: functional == _undefined || functional == null
          ? _instance.functional
          : (functional as bool),
      rate: rate == _undefined || rate == null
          ? _instance.rate
          : (rate
                as Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate),
      haulageRate: haulageRate == _undefined
          ? _instance.haulageRate
          : (haulageRate
                as Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate?),
      templateId: templateId == _undefined || templateId == null
          ? _instance.templateId
          : (templateId as String),
      template: template == _undefined || template == null
          ? _instance.template
          : (template
                as Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template),
      effectiveFrom: effectiveFrom == _undefined || effectiveFrom == null
          ? _instance.effectiveFrom
          : (effectiveFrom as DateTime),
      effectiveTo: effectiveTo == _undefined || effectiveTo == null
          ? _instance.effectiveTo
          : (effectiveTo as DateTime),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created),
      fullyCharged: fullyCharged == _undefined || fullyCharged == null
          ? _instance.fullyCharged
          : (fullyCharged as bool),
      showToCustomer: showToCustomer == _undefined || showToCustomer == null
          ? _instance.showToCustomer
          : (showToCustomer as bool),
      accountLocationKeys:
          accountLocationKeys == _undefined || accountLocationKeys == null
          ? _instance.accountLocationKeys
          : (accountLocationKeys as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate<
    TRes
  >
  get rate {
    final local$rate = _instance.rate;
    return CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate(
      local$rate,
      (e) => call(rate: e),
    );
  }

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate<
    TRes
  >
  get haulageRate {
    final local$haulageRate = _instance.haulageRate;
    return local$haulageRate == null
        ? CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate.stub(
            _then(_instance),
          )
        : CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate(
            local$haulageRate,
            (e) => call(haulageRate: e),
          );
  }

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template<
    TRes
  >
  get template {
    final local$template = _instance.template;
    return CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template(
      local$template,
      (e) => call(template: e),
    );
  }

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    bool? functional,
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate?
    rate,
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate?
    haulageRate,
    String? templateId,
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template?
    template,
    DateTime? effectiveFrom,
    DateTime? effectiveTo,
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created?
    created,
    bool? fullyCharged,
    bool? showToCustomer,
    List<String>? accountLocationKeys,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate<
    TRes
  >
  get rate =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate.stub(
        _res,
      );

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate<
    TRes
  >
  get haulageRate =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate.stub(
        _res,
      );

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template<
    TRes
  >
  get template =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template.stub(
        _res,
      );

  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created<
    TRes
  >
  get created =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created.stub(
        _res,
      );
}

class Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate {
  Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate({
    required this.uom,
    required this.value,
    required this.isRate,
    this.$__typename = 'UomValue',
  });

  factory Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$isRate = json['isRate'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      isRate: (l$isRate as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final bool isRate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$isRate = isRate;
    _resultData['isRate'] = l$isRate;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$isRate = isRate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$isRate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate ||
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
    final l$isRate = isRate;
    final lOther$isRate = other.isRate;
    if (l$isRate != lOther$isRate) {
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate
    on Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate {
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate<
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate<
  TRes
> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate
    instance,
    TRes Function(
      Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate,
    )
    then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate;

  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate;

  TRes call({Enum$Uom? uom, double? value, bool? isRate, String? $__typename});
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate<
          TRes
        > {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate
  _instance;

  final TRes Function(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? isRate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      isRate: isRate == _undefined || isRate == null
          ? _instance.isRate
          : (isRate as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$rate(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, bool? isRate, String? $__typename}) =>
      _res;
}

class Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate {
  Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate({
    required this.uom,
    required this.value,
    required this.isRate,
    this.$__typename = 'UomValue',
  });

  factory Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$isRate = json['isRate'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      isRate: (l$isRate as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final bool isRate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$isRate = isRate;
    _resultData['isRate'] = l$isRate;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$isRate = isRate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$isRate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate ||
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
    final l$isRate = isRate;
    final lOther$isRate = other.isRate;
    if (l$isRate != lOther$isRate) {
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate
    on
        Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate {
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate<
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate<
  TRes
> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate
    instance,
    TRes Function(
      Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate,
    )
    then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate;

  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate;

  TRes call({Enum$Uom? uom, double? value, bool? isRate, String? $__typename});
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate<
          TRes
        > {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate
  _instance;

  final TRes Function(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? isRate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      isRate: isRate == _undefined || isRate == null
          ? _instance.isRate
          : (isRate as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$haulageRate(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, bool? isRate, String? $__typename}) =>
      _res;
}

class Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template {
  Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template({
    required this.category,
    required this.reason,
    this.$__typename = 'TagTemplate',
  });

  factory Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$category = json['category'];
    final l$reason = json['reason'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template(
      category: (l$category as String),
      reason: (l$reason as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String category;

  final String reason;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$category = category;
    _resultData['category'] = l$category;
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$category = category;
    final l$reason = reason;
    final l$$__typename = $__typename;
    return Object.hashAll([l$category, l$reason, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template
    on Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template {
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template<
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template<
  TRes
> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template
    instance,
    TRes Function(
      Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template,
    )
    then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template;

  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template;

  TRes call({String? category, String? reason, String? $__typename});
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template<
          TRes
        > {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template
  _instance;

  final TRes Function(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? category = _undefined,
    Object? reason = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template(
      category: category == _undefined || category == null
          ? _instance.category
          : (category as String),
      reason: reason == _undefined || reason == null
          ? _instance.reason
          : (reason as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$template(
    this._res,
  );

  TRes _res;

  call({String? category, String? reason, String? $__typename}) => _res;
}

class Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created {
  Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created({
    required this.userName,
    required this.at,
    this.$__typename = 'Created',
  });

  factory Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userName = json['userName'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created(
      userName: (l$userName as String),
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String userName;

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userName = userName;
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userName, l$at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created
    on Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created {
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created<
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created<
  TRes
> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created
    instance,
    TRes Function(
      Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created,
    )
    then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created;

  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created;

  TRes call({String? userName, DateTime? at, String? $__typename});
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created<
          TRes
        > {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created
  _instance;

  final TRes Function(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userName = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created(
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$tags$$CollectedTag$created(
    this._res,
  );

  TRes _res;

  call({String? userName, DateTime? at, String? $__typename}) => _res;
}

class Query$AccountPrices$accountPricesFlattened$nodes$locations {
  Query$AccountPrices$accountPricesFlattened$nodes$locations({
    required this.code,
    this.$__typename = 'Location',
  });

  factory Query$AccountPrices$accountPricesFlattened$nodes$locations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattened$nodes$locations(
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
    if (other is! Query$AccountPrices$accountPricesFlattened$nodes$locations ||
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattened$nodes$locations
    on Query$AccountPrices$accountPricesFlattened$nodes$locations {
  CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$locations<
    Query$AccountPrices$accountPricesFlattened$nodes$locations
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$locations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$locations<
  TRes
> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$locations(
    Query$AccountPrices$accountPricesFlattened$nodes$locations instance,
    TRes Function(Query$AccountPrices$accountPricesFlattened$nodes$locations)
    then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$locations;

  factory CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$locations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$locations;

  TRes call({String? code, String? $__typename});
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$locations<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$locations<
          TRes
        > {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattened$nodes$locations(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattened$nodes$locations _instance;

  final TRes Function(
    Query$AccountPrices$accountPricesFlattened$nodes$locations,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$AccountPrices$accountPricesFlattened$nodes$locations(
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$locations<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattened$nodes$locations<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattened$nodes$locations(
    this._res,
  );

  TRes _res;

  call({String? code, String? $__typename}) => _res;
}

class Query$AccountPrices$accountPricesFlattenedFacets {
  Query$AccountPrices$accountPricesFlattenedFacets({
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndFacetResult',
  });

  factory Query$AccountPrices$accountPricesFlattenedFacets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattenedFacets(
      value: Query$AccountPrices$accountPricesFlattenedFacets$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AccountPrices$accountPricesFlattenedFacets$value value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AccountPrices$accountPricesFlattenedFacets ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattenedFacets
    on Query$AccountPrices$accountPricesFlattenedFacets {
  CopyWith$Query$AccountPrices$accountPricesFlattenedFacets<
    Query$AccountPrices$accountPricesFlattenedFacets
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattenedFacets(this, (i) => i);
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattenedFacets<TRes> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattenedFacets(
    Query$AccountPrices$accountPricesFlattenedFacets instance,
    TRes Function(Query$AccountPrices$accountPricesFlattenedFacets) then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattenedFacets;

  factory CopyWith$Query$AccountPrices$accountPricesFlattenedFacets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattenedFacets;

  TRes call({
    Query$AccountPrices$accountPricesFlattenedFacets$value? value,
    String? $__typename,
  });
  CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value<TRes>
  get value;
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattenedFacets<TRes>
    implements CopyWith$Query$AccountPrices$accountPricesFlattenedFacets<TRes> {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattenedFacets(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattenedFacets _instance;

  final TRes Function(Query$AccountPrices$accountPricesFlattenedFacets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? value = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$AccountPrices$accountPricesFlattenedFacets(
          value: value == _undefined || value == null
              ? _instance.value
              : (value
                    as Query$AccountPrices$accountPricesFlattenedFacets$value),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value<TRes>
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattenedFacets<TRes>
    implements CopyWith$Query$AccountPrices$accountPricesFlattenedFacets<TRes> {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattenedFacets(this._res);

  TRes _res;

  call({
    Query$AccountPrices$accountPricesFlattenedFacets$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value<TRes>
  get value =>
      CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value.stub(
        _res,
      );
}

class Query$AccountPrices$accountPricesFlattenedFacets$value {
  Query$AccountPrices$accountPricesFlattenedFacets$value({
    this.name,
    this.values,
    this.$__typename = 'FacetResult',
  });

  factory Query$AccountPrices$accountPricesFlattenedFacets$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattenedFacets$value(
      name: (l$name as String?),
      values: (l$values as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$AccountPrices$accountPricesFlattenedFacets$value$values.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final List<Query$AccountPrices$accountPricesFlattenedFacets$value$values?>?
  values;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$values = values;
    _resultData['values'] = l$values?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$values = values;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$values == null ? null : Object.hashAll(l$values.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AccountPrices$accountPricesFlattenedFacets$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$values = values;
    final lOther$values = other.values;
    if (l$values != null && lOther$values != null) {
      if (l$values.length != lOther$values.length) {
        return false;
      }
      for (int i = 0; i < l$values.length; i++) {
        final l$values$entry = l$values[i];
        final lOther$values$entry = lOther$values[i];
        if (l$values$entry != lOther$values$entry) {
          return false;
        }
      }
    } else if (l$values != lOther$values) {
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattenedFacets$value
    on Query$AccountPrices$accountPricesFlattenedFacets$value {
  CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value<
    Query$AccountPrices$accountPricesFlattenedFacets$value
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value<
  TRes
> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value(
    Query$AccountPrices$accountPricesFlattenedFacets$value instance,
    TRes Function(Query$AccountPrices$accountPricesFlattenedFacets$value) then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattenedFacets$value;

  factory CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattenedFacets$value;

  TRes call({
    String? name,
    List<Query$AccountPrices$accountPricesFlattenedFacets$value$values?>?
    values,
    String? $__typename,
  });
  TRes values(
    Iterable<Query$AccountPrices$accountPricesFlattenedFacets$value$values?>?
    Function(
      Iterable<
        CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value$values<
          Query$AccountPrices$accountPricesFlattenedFacets$value$values
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattenedFacets$value<TRes>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value<TRes> {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattenedFacets$value(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattenedFacets$value _instance;

  final TRes Function(Query$AccountPrices$accountPricesFlattenedFacets$value)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices$accountPricesFlattenedFacets$value(
      name: name == _undefined ? _instance.name : (name as String?),
      values: values == _undefined
          ? _instance.values
          : (values
                as List<
                  Query$AccountPrices$accountPricesFlattenedFacets$value$values?
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes values(
    Iterable<Query$AccountPrices$accountPricesFlattenedFacets$value$values?>?
    Function(
      Iterable<
        CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value$values<
          Query$AccountPrices$accountPricesFlattenedFacets$value$values
        >?
      >?,
    )
    _fn,
  ) => call(
    values: _fn(
      _instance.values?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value$values(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattenedFacets$value<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value<TRes> {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattenedFacets$value(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    List<Query$AccountPrices$accountPricesFlattenedFacets$value$values?>?
    values,
    String? $__typename,
  }) => _res;

  values(_fn) => _res;
}

class Query$AccountPrices$accountPricesFlattenedFacets$value$values {
  Query$AccountPrices$accountPricesFlattenedFacets$value$values({
    required this.count,
    this.range,
    this.$__typename = 'FacetValue',
  });

  factory Query$AccountPrices$accountPricesFlattenedFacets$value$values.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$range = json['range'];
    final l$$__typename = json['__typename'];
    return Query$AccountPrices$accountPricesFlattenedFacets$value$values(
      count: (l$count as int),
      range: (l$range as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String? range;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$range = range;
    _resultData['range'] = l$range;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$range = range;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$range, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountPrices$accountPricesFlattenedFacets$value$values ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$range = range;
    final lOther$range = other.range;
    if (l$range != lOther$range) {
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

extension UtilityExtension$Query$AccountPrices$accountPricesFlattenedFacets$value$values
    on Query$AccountPrices$accountPricesFlattenedFacets$value$values {
  CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value$values<
    Query$AccountPrices$accountPricesFlattenedFacets$value$values
  >
  get copyWith =>
      CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value$values(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value$values<
  TRes
> {
  factory CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value$values(
    Query$AccountPrices$accountPricesFlattenedFacets$value$values instance,
    TRes Function(Query$AccountPrices$accountPricesFlattenedFacets$value$values)
    then,
  ) = _CopyWithImpl$Query$AccountPrices$accountPricesFlattenedFacets$value$values;

  factory CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value$values.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattenedFacets$value$values;

  TRes call({int? count, String? range, String? $__typename});
}

class _CopyWithImpl$Query$AccountPrices$accountPricesFlattenedFacets$value$values<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value$values<
          TRes
        > {
  _CopyWithImpl$Query$AccountPrices$accountPricesFlattenedFacets$value$values(
    this._instance,
    this._then,
  );

  final Query$AccountPrices$accountPricesFlattenedFacets$value$values _instance;

  final TRes Function(
    Query$AccountPrices$accountPricesFlattenedFacets$value$values,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? range = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountPrices$accountPricesFlattenedFacets$value$values(
      count: count == _undefined || count == null
          ? _instance.count
          : (count as int),
      range: range == _undefined ? _instance.range : (range as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattenedFacets$value$values<
  TRes
>
    implements
        CopyWith$Query$AccountPrices$accountPricesFlattenedFacets$value$values<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountPrices$accountPricesFlattenedFacets$value$values(
    this._res,
  );

  TRes _res;

  call({int? count, String? range, String? $__typename}) => _res;
}
