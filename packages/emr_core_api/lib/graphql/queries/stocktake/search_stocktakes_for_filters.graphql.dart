import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchStocktakesForFilters {
  factory Variables$Query$SearchStocktakesForFilters({
    required Input$StocktakeSearchFiltersInput input,
  }) => Variables$Query$SearchStocktakesForFilters._({r'input': input});

  Variables$Query$SearchStocktakesForFilters._(this._$data);

  factory Variables$Query$SearchStocktakesForFilters.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$StocktakeSearchFiltersInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$SearchStocktakesForFilters._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StocktakeSearchFiltersInput get input =>
      (_$data['input'] as Input$StocktakeSearchFiltersInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$SearchStocktakesForFilters<
    Variables$Query$SearchStocktakesForFilters
  >
  get copyWith =>
      CopyWith$Variables$Query$SearchStocktakesForFilters(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchStocktakesForFilters ||
        runtimeType != other.runtimeType) {
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
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Query$SearchStocktakesForFilters<TRes> {
  factory CopyWith$Variables$Query$SearchStocktakesForFilters(
    Variables$Query$SearchStocktakesForFilters instance,
    TRes Function(Variables$Query$SearchStocktakesForFilters) then,
  ) = _CopyWithImpl$Variables$Query$SearchStocktakesForFilters;

  factory CopyWith$Variables$Query$SearchStocktakesForFilters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchStocktakesForFilters;

  TRes call({Input$StocktakeSearchFiltersInput? input});
}

class _CopyWithImpl$Variables$Query$SearchStocktakesForFilters<TRes>
    implements CopyWith$Variables$Query$SearchStocktakesForFilters<TRes> {
  _CopyWithImpl$Variables$Query$SearchStocktakesForFilters(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchStocktakesForFilters _instance;

  final TRes Function(Variables$Query$SearchStocktakesForFilters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$SearchStocktakesForFilters._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$StocktakeSearchFiltersInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchStocktakesForFilters<TRes>
    implements CopyWith$Variables$Query$SearchStocktakesForFilters<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchStocktakesForFilters(this._res);

  TRes _res;

  call({Input$StocktakeSearchFiltersInput? input}) => _res;
}

class Query$SearchStocktakesForFilters {
  Query$SearchStocktakesForFilters({
    required this.searchStocktakesForFilters,
    this.$__typename = 'Query',
  });

  factory Query$SearchStocktakesForFilters.fromJson(Map<String, dynamic> json) {
    final l$searchStocktakesForFilters = json['searchStocktakesForFilters'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakesForFilters(
      searchStocktakesForFilters: (l$searchStocktakesForFilters as List<dynamic>)
          .map(
            (e) =>
                Query$SearchStocktakesForFilters$searchStocktakesForFilters.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchStocktakesForFilters$searchStocktakesForFilters>
  searchStocktakesForFilters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchStocktakesForFilters = searchStocktakesForFilters;
    _resultData['searchStocktakesForFilters'] = l$searchStocktakesForFilters
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchStocktakesForFilters = searchStocktakesForFilters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchStocktakesForFilters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchStocktakesForFilters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchStocktakesForFilters = searchStocktakesForFilters;
    final lOther$searchStocktakesForFilters = other.searchStocktakesForFilters;
    if (l$searchStocktakesForFilters.length !=
        lOther$searchStocktakesForFilters.length) {
      return false;
    }
    for (int i = 0; i < l$searchStocktakesForFilters.length; i++) {
      final l$searchStocktakesForFilters$entry =
          l$searchStocktakesForFilters[i];
      final lOther$searchStocktakesForFilters$entry =
          lOther$searchStocktakesForFilters[i];
      if (l$searchStocktakesForFilters$entry !=
          lOther$searchStocktakesForFilters$entry) {
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

extension UtilityExtension$Query$SearchStocktakesForFilters
    on Query$SearchStocktakesForFilters {
  CopyWith$Query$SearchStocktakesForFilters<Query$SearchStocktakesForFilters>
  get copyWith => CopyWith$Query$SearchStocktakesForFilters(this, (i) => i);
}

abstract class CopyWith$Query$SearchStocktakesForFilters<TRes> {
  factory CopyWith$Query$SearchStocktakesForFilters(
    Query$SearchStocktakesForFilters instance,
    TRes Function(Query$SearchStocktakesForFilters) then,
  ) = _CopyWithImpl$Query$SearchStocktakesForFilters;

  factory CopyWith$Query$SearchStocktakesForFilters.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchStocktakesForFilters;

  TRes call({
    List<Query$SearchStocktakesForFilters$searchStocktakesForFilters>?
    searchStocktakesForFilters,
    String? $__typename,
  });
  TRes searchStocktakesForFilters(
    Iterable<Query$SearchStocktakesForFilters$searchStocktakesForFilters>
    Function(
      Iterable<
        CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters<
          Query$SearchStocktakesForFilters$searchStocktakesForFilters
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchStocktakesForFilters<TRes>
    implements CopyWith$Query$SearchStocktakesForFilters<TRes> {
  _CopyWithImpl$Query$SearchStocktakesForFilters(this._instance, this._then);

  final Query$SearchStocktakesForFilters _instance;

  final TRes Function(Query$SearchStocktakesForFilters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchStocktakesForFilters = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStocktakesForFilters(
      searchStocktakesForFilters:
          searchStocktakesForFilters == _undefined ||
              searchStocktakesForFilters == null
          ? _instance.searchStocktakesForFilters
          : (searchStocktakesForFilters
                as List<
                  Query$SearchStocktakesForFilters$searchStocktakesForFilters
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes searchStocktakesForFilters(
    Iterable<Query$SearchStocktakesForFilters$searchStocktakesForFilters>
    Function(
      Iterable<
        CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters<
          Query$SearchStocktakesForFilters$searchStocktakesForFilters
        >
      >,
    )
    _fn,
  ) => call(
    searchStocktakesForFilters: _fn(
      _instance.searchStocktakesForFilters.map(
        (e) =>
            CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchStocktakesForFilters<TRes>
    implements CopyWith$Query$SearchStocktakesForFilters<TRes> {
  _CopyWithStubImpl$Query$SearchStocktakesForFilters(this._res);

  TRes _res;

  call({
    List<Query$SearchStocktakesForFilters$searchStocktakesForFilters>?
    searchStocktakesForFilters,
    String? $__typename,
  }) => _res;

  searchStocktakesForFilters(_fn) => _res;
}

const documentNodeQuerySearchStocktakesForFilters = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchStocktakesForFilters'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'StocktakeSearchFiltersInput'),
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
            name: NameNode(value: 'searchStocktakesForFilters'),
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
                  name: NameNode(value: 'conductor'),
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
                  name: NameNode(value: 'created'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'user'),
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

class Query$SearchStocktakesForFilters$searchStocktakesForFilters {
  Query$SearchStocktakesForFilters$searchStocktakesForFilters({
    this.conductor,
    required this.created,
    this.$__typename = 'Stocktake',
  });

  factory Query$SearchStocktakesForFilters$searchStocktakesForFilters.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$conductor = json['conductor'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakesForFilters$searchStocktakesForFilters(
      conductor: l$conductor == null
          ? null
          : Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor.fromJson(
              (l$conductor as Map<String, dynamic>),
            ),
      created:
          Query$SearchStocktakesForFilters$searchStocktakesForFilters$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor?
  conductor;

  final Query$SearchStocktakesForFilters$searchStocktakesForFilters$created
  created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$conductor = conductor;
    _resultData['conductor'] = l$conductor?.toJson();
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$conductor = conductor;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([l$conductor, l$created, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchStocktakesForFilters$searchStocktakesForFilters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$conductor = conductor;
    final lOther$conductor = other.conductor;
    if (l$conductor != lOther$conductor) {
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

extension UtilityExtension$Query$SearchStocktakesForFilters$searchStocktakesForFilters
    on Query$SearchStocktakesForFilters$searchStocktakesForFilters {
  CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters<
    Query$SearchStocktakesForFilters$searchStocktakesForFilters
  >
  get copyWith =>
      CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters<
  TRes
> {
  factory CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters(
    Query$SearchStocktakesForFilters$searchStocktakesForFilters instance,
    TRes Function(Query$SearchStocktakesForFilters$searchStocktakesForFilters)
    then,
  ) = _CopyWithImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters;

  factory CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters;

  TRes call({
    Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor?
    conductor,
    Query$SearchStocktakesForFilters$searchStocktakesForFilters$created?
    created,
    String? $__typename,
  });
  CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor<
    TRes
  >
  get conductor;
  CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created<
    TRes
  >
  get created;
}

class _CopyWithImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters<
          TRes
        > {
  _CopyWithImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters(
    this._instance,
    this._then,
  );

  final Query$SearchStocktakesForFilters$searchStocktakesForFilters _instance;

  final TRes Function(
    Query$SearchStocktakesForFilters$searchStocktakesForFilters,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? conductor = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStocktakesForFilters$searchStocktakesForFilters(
      conductor: conductor == _undefined
          ? _instance.conductor
          : (conductor
                as Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor?),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$SearchStocktakesForFilters$searchStocktakesForFilters$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor<
    TRes
  >
  get conductor {
    final local$conductor = _instance.conductor;
    return local$conductor == null
        ? CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor(
            local$conductor,
            (e) => call(conductor: e),
          );
  }

  CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters(
    this._res,
  );

  TRes _res;

  call({
    Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor?
    conductor,
    Query$SearchStocktakesForFilters$searchStocktakesForFilters$created?
    created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor<
    TRes
  >
  get conductor =>
      CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor.stub(
        _res,
      );

  CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created<
    TRes
  >
  get created =>
      CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created.stub(
        _res,
      );
}

class Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor {
  Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.$__typename = 'User',
  });

  factory Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor(
      id: (l$id as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String firstName;

  final String lastName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$firstName, l$lastName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor
    on Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor {
  CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor<
    Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor
  >
  get copyWith =>
      CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor<
  TRes
> {
  factory CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor(
    Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor
    instance,
    TRes Function(
      Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor,
    )
    then,
  ) = _CopyWithImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor;

  factory CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor<
          TRes
        > {
  _CopyWithImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor(
    this._instance,
    this._then,
  );

  final Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor
  _instance;

  final TRes Function(
    Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      firstName: firstName == _undefined || firstName == null
          ? _instance.firstName
          : (firstName as String),
      lastName: lastName == _undefined || lastName == null
          ? _instance.lastName
          : (lastName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters$conductor(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? $__typename,
  }) => _res;
}

class Query$SearchStocktakesForFilters$searchStocktakesForFilters$created {
  Query$SearchStocktakesForFilters$searchStocktakesForFilters$created({
    this.user,
    this.$__typename = 'Created',
  });

  factory Query$SearchStocktakesForFilters$searchStocktakesForFilters$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakesForFilters$searchStocktakesForFilters$created(
      user: l$user == null
          ? null
          : Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user?
  user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchStocktakesForFilters$searchStocktakesForFilters$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created
    on Query$SearchStocktakesForFilters$searchStocktakesForFilters$created {
  CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created<
    Query$SearchStocktakesForFilters$searchStocktakesForFilters$created
  >
  get copyWith =>
      CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created<
  TRes
> {
  factory CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created(
    Query$SearchStocktakesForFilters$searchStocktakesForFilters$created
    instance,
    TRes Function(
      Query$SearchStocktakesForFilters$searchStocktakesForFilters$created,
    )
    then,
  ) = _CopyWithImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created;

  factory CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created;

  TRes call({
    Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user?
    user,
    String? $__typename,
  });
  CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user<
    TRes
  >
  get user;
}

class _CopyWithImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created<
          TRes
        > {
  _CopyWithImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created(
    this._instance,
    this._then,
  );

  final Query$SearchStocktakesForFilters$searchStocktakesForFilters$created
  _instance;

  final TRes Function(
    Query$SearchStocktakesForFilters$searchStocktakesForFilters$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStocktakesForFilters$searchStocktakesForFilters$created(
      user: user == _undefined
          ? _instance.user
          : (user
                as Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user<
    TRes
  >
  get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created(
    this._res,
  );

  TRes _res;

  call({
    Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user?
    user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user<
    TRes
  >
  get user =>
      CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user.stub(
        _res,
      );
}

class Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user {
  Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user({
    required this.id,
    required this.name,
    this.$__typename = 'UserInfo',
  });

  factory Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user
    on Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user {
  CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user<
    Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user
  >
  get copyWith =>
      CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user<
  TRes
> {
  factory CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user(
    Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user
    instance,
    TRes Function(
      Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user,
    )
    then,
  ) = _CopyWithImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user;

  factory CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user<
          TRes
        > {
  _CopyWithImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user(
    this._instance,
    this._then,
  );

  final Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user
  _instance;

  final TRes Function(
    Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchStocktakesForFilters$searchStocktakesForFilters$created$user(
    this._res,
  );

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}
