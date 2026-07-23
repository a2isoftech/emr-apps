import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchRetailAccountsFacet {
  factory Variables$Query$SearchRetailAccountsFacet({
    required Input$RetailAccountsSearchInput input,
  }) => Variables$Query$SearchRetailAccountsFacet._({r'input': input});

  Variables$Query$SearchRetailAccountsFacet._(this._$data);

  factory Variables$Query$SearchRetailAccountsFacet.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$RetailAccountsSearchInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$SearchRetailAccountsFacet._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$RetailAccountsSearchInput get input =>
      (_$data['input'] as Input$RetailAccountsSearchInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$SearchRetailAccountsFacet<
    Variables$Query$SearchRetailAccountsFacet
  >
  get copyWith =>
      CopyWith$Variables$Query$SearchRetailAccountsFacet(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchRetailAccountsFacet ||
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

abstract class CopyWith$Variables$Query$SearchRetailAccountsFacet<TRes> {
  factory CopyWith$Variables$Query$SearchRetailAccountsFacet(
    Variables$Query$SearchRetailAccountsFacet instance,
    TRes Function(Variables$Query$SearchRetailAccountsFacet) then,
  ) = _CopyWithImpl$Variables$Query$SearchRetailAccountsFacet;

  factory CopyWith$Variables$Query$SearchRetailAccountsFacet.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchRetailAccountsFacet;

  TRes call({Input$RetailAccountsSearchInput? input});
}

class _CopyWithImpl$Variables$Query$SearchRetailAccountsFacet<TRes>
    implements CopyWith$Variables$Query$SearchRetailAccountsFacet<TRes> {
  _CopyWithImpl$Variables$Query$SearchRetailAccountsFacet(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchRetailAccountsFacet _instance;

  final TRes Function(Variables$Query$SearchRetailAccountsFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$SearchRetailAccountsFacet._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$RetailAccountsSearchInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchRetailAccountsFacet<TRes>
    implements CopyWith$Variables$Query$SearchRetailAccountsFacet<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchRetailAccountsFacet(this._res);

  TRes _res;

  call({Input$RetailAccountsSearchInput? input}) => _res;
}

class Query$SearchRetailAccountsFacet {
  Query$SearchRetailAccountsFacet({
    required this.searchRetailAccountsFacet,
    this.$__typename = 'Query',
  });

  factory Query$SearchRetailAccountsFacet.fromJson(Map<String, dynamic> json) {
    final l$searchRetailAccountsFacet = json['searchRetailAccountsFacet'];
    final l$$__typename = json['__typename'];
    return Query$SearchRetailAccountsFacet(
      searchRetailAccountsFacet: (l$searchRetailAccountsFacet as List<dynamic>)
          .map(
            (e) =>
                Query$SearchRetailAccountsFacet$searchRetailAccountsFacet.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchRetailAccountsFacet$searchRetailAccountsFacet>
  searchRetailAccountsFacet;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchRetailAccountsFacet = searchRetailAccountsFacet;
    _resultData['searchRetailAccountsFacet'] = l$searchRetailAccountsFacet
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchRetailAccountsFacet = searchRetailAccountsFacet;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchRetailAccountsFacet.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchRetailAccountsFacet ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchRetailAccountsFacet = searchRetailAccountsFacet;
    final lOther$searchRetailAccountsFacet = other.searchRetailAccountsFacet;
    if (l$searchRetailAccountsFacet.length !=
        lOther$searchRetailAccountsFacet.length) {
      return false;
    }
    for (int i = 0; i < l$searchRetailAccountsFacet.length; i++) {
      final l$searchRetailAccountsFacet$entry = l$searchRetailAccountsFacet[i];
      final lOther$searchRetailAccountsFacet$entry =
          lOther$searchRetailAccountsFacet[i];
      if (l$searchRetailAccountsFacet$entry !=
          lOther$searchRetailAccountsFacet$entry) {
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

extension UtilityExtension$Query$SearchRetailAccountsFacet
    on Query$SearchRetailAccountsFacet {
  CopyWith$Query$SearchRetailAccountsFacet<Query$SearchRetailAccountsFacet>
  get copyWith => CopyWith$Query$SearchRetailAccountsFacet(this, (i) => i);
}

abstract class CopyWith$Query$SearchRetailAccountsFacet<TRes> {
  factory CopyWith$Query$SearchRetailAccountsFacet(
    Query$SearchRetailAccountsFacet instance,
    TRes Function(Query$SearchRetailAccountsFacet) then,
  ) = _CopyWithImpl$Query$SearchRetailAccountsFacet;

  factory CopyWith$Query$SearchRetailAccountsFacet.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchRetailAccountsFacet;

  TRes call({
    List<Query$SearchRetailAccountsFacet$searchRetailAccountsFacet>?
    searchRetailAccountsFacet,
    String? $__typename,
  });
  TRes searchRetailAccountsFacet(
    Iterable<Query$SearchRetailAccountsFacet$searchRetailAccountsFacet>
    Function(
      Iterable<
        CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet<
          Query$SearchRetailAccountsFacet$searchRetailAccountsFacet
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchRetailAccountsFacet<TRes>
    implements CopyWith$Query$SearchRetailAccountsFacet<TRes> {
  _CopyWithImpl$Query$SearchRetailAccountsFacet(this._instance, this._then);

  final Query$SearchRetailAccountsFacet _instance;

  final TRes Function(Query$SearchRetailAccountsFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchRetailAccountsFacet = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchRetailAccountsFacet(
      searchRetailAccountsFacet:
          searchRetailAccountsFacet == _undefined ||
              searchRetailAccountsFacet == null
          ? _instance.searchRetailAccountsFacet
          : (searchRetailAccountsFacet
                as List<
                  Query$SearchRetailAccountsFacet$searchRetailAccountsFacet
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes searchRetailAccountsFacet(
    Iterable<Query$SearchRetailAccountsFacet$searchRetailAccountsFacet>
    Function(
      Iterable<
        CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet<
          Query$SearchRetailAccountsFacet$searchRetailAccountsFacet
        >
      >,
    )
    _fn,
  ) => call(
    searchRetailAccountsFacet: _fn(
      _instance.searchRetailAccountsFacet.map(
        (e) =>
            CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchRetailAccountsFacet<TRes>
    implements CopyWith$Query$SearchRetailAccountsFacet<TRes> {
  _CopyWithStubImpl$Query$SearchRetailAccountsFacet(this._res);

  TRes _res;

  call({
    List<Query$SearchRetailAccountsFacet$searchRetailAccountsFacet>?
    searchRetailAccountsFacet,
    String? $__typename,
  }) => _res;

  searchRetailAccountsFacet(_fn) => _res;
}

const documentNodeQuerySearchRetailAccountsFacet = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchRetailAccountsFacet'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'RetailAccountsSearchInput'),
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
            name: NameNode(value: 'searchRetailAccountsFacet'),
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

class Query$SearchRetailAccountsFacet$searchRetailAccountsFacet {
  Query$SearchRetailAccountsFacet$searchRetailAccountsFacet({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndFacetResult',
  });

  factory Query$SearchRetailAccountsFacet$searchRetailAccountsFacet.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchRetailAccountsFacet$searchRetailAccountsFacet(
      key: (l$key as String),
      value:
          Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value value;

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
    if (other is! Query$SearchRetailAccountsFacet$searchRetailAccountsFacet ||
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

extension UtilityExtension$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet
    on Query$SearchRetailAccountsFacet$searchRetailAccountsFacet {
  CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet<
    Query$SearchRetailAccountsFacet$searchRetailAccountsFacet
  >
  get copyWith =>
      CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet<
  TRes
> {
  factory CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet(
    Query$SearchRetailAccountsFacet$searchRetailAccountsFacet instance,
    TRes Function(Query$SearchRetailAccountsFacet$searchRetailAccountsFacet)
    then,
  ) = _CopyWithImpl$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet;

  factory CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet;

  TRes call({
    String? key,
    Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value? value,
    String? $__typename,
  });
  CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value<TRes>
  get value;
}

class _CopyWithImpl$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet<
          TRes
        > {
  _CopyWithImpl$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet(
    this._instance,
    this._then,
  );

  final Query$SearchRetailAccountsFacet$searchRetailAccountsFacet _instance;

  final TRes Function(Query$SearchRetailAccountsFacet$searchRetailAccountsFacet)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchRetailAccountsFacet$searchRetailAccountsFacet(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value<TRes>
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value<TRes>
  get value =>
      CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value.stub(
        _res,
      );
}

class Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value {
  Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value({
    this.name,
    this.values,
    this.$__typename = 'FacetResult',
  });

  factory Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value(
      name: (l$name as String?),
      values: (l$values as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final List<
    Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values?
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
            is! Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value ||
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

extension UtilityExtension$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value
    on Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value {
  CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value<
    Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value
  >
  get copyWith =>
      CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value<
  TRes
> {
  factory CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value(
    Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value instance,
    TRes Function(
      Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value,
    )
    then,
  ) = _CopyWithImpl$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value;

  factory CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value;

  TRes call({
    String? name,
    List<
      Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values?
    >?
    values,
    String? $__typename,
  });
  TRes values(
    Iterable<
      Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values?
    >?
    Function(
      Iterable<
        CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values<
          Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value<
          TRes
        > {
  _CopyWithImpl$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value(
    this._instance,
    this._then,
  );

  final Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value
  _instance;

  final TRes Function(
    Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value(
      name: name == _undefined ? _instance.name : (name as String?),
      values: values == _undefined
          ? _instance.values
          : (values
                as List<
                  Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values?
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes values(
    Iterable<
      Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values?
    >?
    Function(
      Iterable<
        CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values<
          Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values
        >?
      >?,
    )
    _fn,
  ) => call(
    values: _fn(
      _instance.values?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    List<
      Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values?
    >?
    values,
    String? $__typename,
  }) => _res;

  values(_fn) => _res;
}

class Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values {
  Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values({
    this.range,
    required this.count,
    this.name,
    this.$__typename = 'FacetValue',
  });

  factory Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$range = json['range'];
    final l$count = json['count'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values(
      range: (l$range as String?),
      count: (l$count as int),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? range;

  final int count;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$range = range;
    _resultData['range'] = l$range;
    final l$count = count;
    _resultData['count'] = l$count;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$range = range;
    final l$count = count;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$range, l$count, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values
    on Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values {
  CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values<
    Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values
  >
  get copyWith =>
      CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values<
  TRes
> {
  factory CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values(
    Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values
    instance,
    TRes Function(
      Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values,
    )
    then,
  ) = _CopyWithImpl$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values;

  factory CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values;

  TRes call({String? range, int? count, String? name, String? $__typename});
}

class _CopyWithImpl$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values<
          TRes
        > {
  _CopyWithImpl$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values(
    this._instance,
    this._then,
  );

  final Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values
  _instance;

  final TRes Function(
    Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? range = _undefined,
    Object? count = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values(
      range: range == _undefined ? _instance.range : (range as String?),
      count: count == _undefined || count == null
          ? _instance.count
          : (count as int),
      name: name == _undefined ? _instance.name : (name as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values<
  TRes
>
    implements
        CopyWith$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchRetailAccountsFacet$searchRetailAccountsFacet$value$values(
    this._res,
  );

  TRes _res;

  call({String? range, int? count, String? name, String? $__typename}) => _res;
}
