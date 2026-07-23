import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchCashierTicketsFacet {
  factory Variables$Query$SearchCashierTicketsFacet({
    required Input$SearchCashierTicketsInput input,
  }) => Variables$Query$SearchCashierTicketsFacet._({r'input': input});

  Variables$Query$SearchCashierTicketsFacet._(this._$data);

  factory Variables$Query$SearchCashierTicketsFacet.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchCashierTicketsInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$SearchCashierTicketsFacet._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchCashierTicketsInput get input =>
      (_$data['input'] as Input$SearchCashierTicketsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$SearchCashierTicketsFacet<
    Variables$Query$SearchCashierTicketsFacet
  >
  get copyWith =>
      CopyWith$Variables$Query$SearchCashierTicketsFacet(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchCashierTicketsFacet ||
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

abstract class CopyWith$Variables$Query$SearchCashierTicketsFacet<TRes> {
  factory CopyWith$Variables$Query$SearchCashierTicketsFacet(
    Variables$Query$SearchCashierTicketsFacet instance,
    TRes Function(Variables$Query$SearchCashierTicketsFacet) then,
  ) = _CopyWithImpl$Variables$Query$SearchCashierTicketsFacet;

  factory CopyWith$Variables$Query$SearchCashierTicketsFacet.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchCashierTicketsFacet;

  TRes call({Input$SearchCashierTicketsInput? input});
}

class _CopyWithImpl$Variables$Query$SearchCashierTicketsFacet<TRes>
    implements CopyWith$Variables$Query$SearchCashierTicketsFacet<TRes> {
  _CopyWithImpl$Variables$Query$SearchCashierTicketsFacet(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchCashierTicketsFacet _instance;

  final TRes Function(Variables$Query$SearchCashierTicketsFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$SearchCashierTicketsFacet._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchCashierTicketsInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchCashierTicketsFacet<TRes>
    implements CopyWith$Variables$Query$SearchCashierTicketsFacet<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchCashierTicketsFacet(this._res);

  TRes _res;

  call({Input$SearchCashierTicketsInput? input}) => _res;
}

class Query$SearchCashierTicketsFacet {
  Query$SearchCashierTicketsFacet({
    required this.searchCashierTicketsFacet,
    this.$__typename = 'Query',
  });

  factory Query$SearchCashierTicketsFacet.fromJson(Map<String, dynamic> json) {
    final l$searchCashierTicketsFacet = json['searchCashierTicketsFacet'];
    final l$$__typename = json['__typename'];
    return Query$SearchCashierTicketsFacet(
      searchCashierTicketsFacet: (l$searchCashierTicketsFacet as List<dynamic>)
          .map(
            (e) =>
                Query$SearchCashierTicketsFacet$searchCashierTicketsFacet.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchCashierTicketsFacet$searchCashierTicketsFacet>
  searchCashierTicketsFacet;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchCashierTicketsFacet = searchCashierTicketsFacet;
    _resultData['searchCashierTicketsFacet'] = l$searchCashierTicketsFacet
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchCashierTicketsFacet = searchCashierTicketsFacet;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchCashierTicketsFacet.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchCashierTicketsFacet ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchCashierTicketsFacet = searchCashierTicketsFacet;
    final lOther$searchCashierTicketsFacet = other.searchCashierTicketsFacet;
    if (l$searchCashierTicketsFacet.length !=
        lOther$searchCashierTicketsFacet.length) {
      return false;
    }
    for (int i = 0; i < l$searchCashierTicketsFacet.length; i++) {
      final l$searchCashierTicketsFacet$entry = l$searchCashierTicketsFacet[i];
      final lOther$searchCashierTicketsFacet$entry =
          lOther$searchCashierTicketsFacet[i];
      if (l$searchCashierTicketsFacet$entry !=
          lOther$searchCashierTicketsFacet$entry) {
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

extension UtilityExtension$Query$SearchCashierTicketsFacet
    on Query$SearchCashierTicketsFacet {
  CopyWith$Query$SearchCashierTicketsFacet<Query$SearchCashierTicketsFacet>
  get copyWith => CopyWith$Query$SearchCashierTicketsFacet(this, (i) => i);
}

abstract class CopyWith$Query$SearchCashierTicketsFacet<TRes> {
  factory CopyWith$Query$SearchCashierTicketsFacet(
    Query$SearchCashierTicketsFacet instance,
    TRes Function(Query$SearchCashierTicketsFacet) then,
  ) = _CopyWithImpl$Query$SearchCashierTicketsFacet;

  factory CopyWith$Query$SearchCashierTicketsFacet.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCashierTicketsFacet;

  TRes call({
    List<Query$SearchCashierTicketsFacet$searchCashierTicketsFacet>?
    searchCashierTicketsFacet,
    String? $__typename,
  });
  TRes searchCashierTicketsFacet(
    Iterable<Query$SearchCashierTicketsFacet$searchCashierTicketsFacet>
    Function(
      Iterable<
        CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet<
          Query$SearchCashierTicketsFacet$searchCashierTicketsFacet
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchCashierTicketsFacet<TRes>
    implements CopyWith$Query$SearchCashierTicketsFacet<TRes> {
  _CopyWithImpl$Query$SearchCashierTicketsFacet(this._instance, this._then);

  final Query$SearchCashierTicketsFacet _instance;

  final TRes Function(Query$SearchCashierTicketsFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchCashierTicketsFacet = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchCashierTicketsFacet(
      searchCashierTicketsFacet:
          searchCashierTicketsFacet == _undefined ||
              searchCashierTicketsFacet == null
          ? _instance.searchCashierTicketsFacet
          : (searchCashierTicketsFacet
                as List<
                  Query$SearchCashierTicketsFacet$searchCashierTicketsFacet
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes searchCashierTicketsFacet(
    Iterable<Query$SearchCashierTicketsFacet$searchCashierTicketsFacet>
    Function(
      Iterable<
        CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet<
          Query$SearchCashierTicketsFacet$searchCashierTicketsFacet
        >
      >,
    )
    _fn,
  ) => call(
    searchCashierTicketsFacet: _fn(
      _instance.searchCashierTicketsFacet.map(
        (e) =>
            CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchCashierTicketsFacet<TRes>
    implements CopyWith$Query$SearchCashierTicketsFacet<TRes> {
  _CopyWithStubImpl$Query$SearchCashierTicketsFacet(this._res);

  TRes _res;

  call({
    List<Query$SearchCashierTicketsFacet$searchCashierTicketsFacet>?
    searchCashierTicketsFacet,
    String? $__typename,
  }) => _res;

  searchCashierTicketsFacet(_fn) => _res;
}

const documentNodeQuerySearchCashierTicketsFacet = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchCashierTicketsFacet'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchCashierTicketsInput'),
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
            name: NameNode(value: 'searchCashierTicketsFacet'),
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
                              name: NameNode(value: 'name'),
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
                              name: NameNode(value: 'count'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'min'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'max'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'average'),
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

class Query$SearchCashierTicketsFacet$searchCashierTicketsFacet {
  Query$SearchCashierTicketsFacet$searchCashierTicketsFacet({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndFacetResult',
  });

  factory Query$SearchCashierTicketsFacet$searchCashierTicketsFacet.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchCashierTicketsFacet$searchCashierTicketsFacet(
      key: (l$key as String),
      value:
          Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value value;

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
    if (other is! Query$SearchCashierTicketsFacet$searchCashierTicketsFacet ||
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

extension UtilityExtension$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet
    on Query$SearchCashierTicketsFacet$searchCashierTicketsFacet {
  CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet<
    Query$SearchCashierTicketsFacet$searchCashierTicketsFacet
  >
  get copyWith =>
      CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet<
  TRes
> {
  factory CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet(
    Query$SearchCashierTicketsFacet$searchCashierTicketsFacet instance,
    TRes Function(Query$SearchCashierTicketsFacet$searchCashierTicketsFacet)
    then,
  ) = _CopyWithImpl$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet;

  factory CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet;

  TRes call({
    String? key,
    Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value? value,
    String? $__typename,
  });
  CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value<TRes>
  get value;
}

class _CopyWithImpl$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet<
  TRes
>
    implements
        CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet<
          TRes
        > {
  _CopyWithImpl$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet(
    this._instance,
    this._then,
  );

  final Query$SearchCashierTicketsFacet$searchCashierTicketsFacet _instance;

  final TRes Function(Query$SearchCashierTicketsFacet$searchCashierTicketsFacet)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchCashierTicketsFacet$searchCashierTicketsFacet(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value<TRes>
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet<
  TRes
>
    implements
        CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value<TRes>
  get value =>
      CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value.stub(
        _res,
      );
}

class Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value {
  Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value({
    this.name,
    this.values,
    this.$__typename = 'FacetResult',
  });

  factory Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value(
      name: (l$name as String?),
      values: (l$values as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final List<
    Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values?
  >?
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
    if (other
            is! Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value ||
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

extension UtilityExtension$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value
    on Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value {
  CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value<
    Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value
  >
  get copyWith =>
      CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value<
  TRes
> {
  factory CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value(
    Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value instance,
    TRes Function(
      Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value,
    )
    then,
  ) = _CopyWithImpl$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value;

  factory CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value;

  TRes call({
    String? name,
    List<
      Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values?
    >?
    values,
    String? $__typename,
  });
  TRes values(
    Iterable<
      Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values?
    >?
    Function(
      Iterable<
        CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values<
          Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value<
  TRes
>
    implements
        CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value<
          TRes
        > {
  _CopyWithImpl$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value(
    this._instance,
    this._then,
  );

  final Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value
  _instance;

  final TRes Function(
    Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value(
      name: name == _undefined ? _instance.name : (name as String?),
      values: values == _undefined
          ? _instance.values
          : (values
                as List<
                  Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values?
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes values(
    Iterable<
      Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values?
    >?
    Function(
      Iterable<
        CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values<
          Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values
        >?
      >?,
    )
    _fn,
  ) => call(
    values: _fn(
      _instance.values?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value<
  TRes
>
    implements
        CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    List<
      Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values?
    >?
    values,
    String? $__typename,
  }) => _res;

  values(_fn) => _res;
}

class Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values {
  Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values({
    this.name,
    this.range,
    required this.count,
    this.min,
    this.max,
    this.average,
    this.$__typename = 'FacetValue',
  });

  factory Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$range = json['range'];
    final l$count = json['count'];
    final l$min = json['min'];
    final l$max = json['max'];
    final l$average = json['average'];
    final l$$__typename = json['__typename'];
    return Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values(
      name: (l$name as String?),
      range: (l$range as String?),
      count: (l$count as int),
      min: (l$min as num?)?.toDouble(),
      max: (l$max as num?)?.toDouble(),
      average: (l$average as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? range;

  final int count;

  final double? min;

  final double? max;

  final double? average;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$range = range;
    _resultData['range'] = l$range;
    final l$count = count;
    _resultData['count'] = l$count;
    final l$min = min;
    _resultData['min'] = l$min;
    final l$max = max;
    _resultData['max'] = l$max;
    final l$average = average;
    _resultData['average'] = l$average;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$range = range;
    final l$count = count;
    final l$min = min;
    final l$max = max;
    final l$average = average;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$range,
      l$count,
      l$min,
      l$max,
      l$average,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$range = range;
    final lOther$range = other.range;
    if (l$range != lOther$range) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    final l$average = average;
    final lOther$average = other.average;
    if (l$average != lOther$average) {
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

extension UtilityExtension$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values
    on Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values {
  CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values<
    Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values
  >
  get copyWith =>
      CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values<
  TRes
> {
  factory CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values(
    Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values
    instance,
    TRes Function(
      Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values,
    )
    then,
  ) = _CopyWithImpl$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values;

  factory CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values;

  TRes call({
    String? name,
    String? range,
    int? count,
    double? min,
    double? max,
    double? average,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values<
  TRes
>
    implements
        CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values<
          TRes
        > {
  _CopyWithImpl$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values(
    this._instance,
    this._then,
  );

  final Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values
  _instance;

  final TRes Function(
    Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? range = _undefined,
    Object? count = _undefined,
    Object? min = _undefined,
    Object? max = _undefined,
    Object? average = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values(
      name: name == _undefined ? _instance.name : (name as String?),
      range: range == _undefined ? _instance.range : (range as String?),
      count: count == _undefined || count == null
          ? _instance.count
          : (count as int),
      min: min == _undefined ? _instance.min : (min as double?),
      max: max == _undefined ? _instance.max : (max as double?),
      average: average == _undefined ? _instance.average : (average as double?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values<
  TRes
>
    implements
        CopyWith$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchCashierTicketsFacet$searchCashierTicketsFacet$value$values(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    String? range,
    int? count,
    double? min,
    double? max,
    double? average,
    String? $__typename,
  }) => _res;
}
