import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchStocktakeFacets {
  factory Variables$Query$SearchStocktakeFacets({
    required Input$StocktakeSearchInput input,
  }) => Variables$Query$SearchStocktakeFacets._({r'input': input});

  Variables$Query$SearchStocktakeFacets._(this._$data);

  factory Variables$Query$SearchStocktakeFacets.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$StocktakeSearchInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$SearchStocktakeFacets._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StocktakeSearchInput get input =>
      (_$data['input'] as Input$StocktakeSearchInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$SearchStocktakeFacets<
    Variables$Query$SearchStocktakeFacets
  >
  get copyWith =>
      CopyWith$Variables$Query$SearchStocktakeFacets(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchStocktakeFacets ||
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

abstract class CopyWith$Variables$Query$SearchStocktakeFacets<TRes> {
  factory CopyWith$Variables$Query$SearchStocktakeFacets(
    Variables$Query$SearchStocktakeFacets instance,
    TRes Function(Variables$Query$SearchStocktakeFacets) then,
  ) = _CopyWithImpl$Variables$Query$SearchStocktakeFacets;

  factory CopyWith$Variables$Query$SearchStocktakeFacets.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchStocktakeFacets;

  TRes call({Input$StocktakeSearchInput? input});
}

class _CopyWithImpl$Variables$Query$SearchStocktakeFacets<TRes>
    implements CopyWith$Variables$Query$SearchStocktakeFacets<TRes> {
  _CopyWithImpl$Variables$Query$SearchStocktakeFacets(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchStocktakeFacets _instance;

  final TRes Function(Variables$Query$SearchStocktakeFacets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$SearchStocktakeFacets._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$StocktakeSearchInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchStocktakeFacets<TRes>
    implements CopyWith$Variables$Query$SearchStocktakeFacets<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchStocktakeFacets(this._res);

  TRes _res;

  call({Input$StocktakeSearchInput? input}) => _res;
}

class Query$SearchStocktakeFacets {
  Query$SearchStocktakeFacets({
    required this.searchStocktakeFacet,
    this.$__typename = 'Query',
  });

  factory Query$SearchStocktakeFacets.fromJson(Map<String, dynamic> json) {
    final l$searchStocktakeFacet = json['searchStocktakeFacet'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakeFacets(
      searchStocktakeFacet: (l$searchStocktakeFacet as List<dynamic>)
          .map(
            (e) => Query$SearchStocktakeFacets$searchStocktakeFacet.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchStocktakeFacets$searchStocktakeFacet>
  searchStocktakeFacet;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchStocktakeFacet = searchStocktakeFacet;
    _resultData['searchStocktakeFacet'] = l$searchStocktakeFacet
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchStocktakeFacet = searchStocktakeFacet;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchStocktakeFacet.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchStocktakeFacets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchStocktakeFacet = searchStocktakeFacet;
    final lOther$searchStocktakeFacet = other.searchStocktakeFacet;
    if (l$searchStocktakeFacet.length != lOther$searchStocktakeFacet.length) {
      return false;
    }
    for (int i = 0; i < l$searchStocktakeFacet.length; i++) {
      final l$searchStocktakeFacet$entry = l$searchStocktakeFacet[i];
      final lOther$searchStocktakeFacet$entry = lOther$searchStocktakeFacet[i];
      if (l$searchStocktakeFacet$entry != lOther$searchStocktakeFacet$entry) {
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

extension UtilityExtension$Query$SearchStocktakeFacets
    on Query$SearchStocktakeFacets {
  CopyWith$Query$SearchStocktakeFacets<Query$SearchStocktakeFacets>
  get copyWith => CopyWith$Query$SearchStocktakeFacets(this, (i) => i);
}

abstract class CopyWith$Query$SearchStocktakeFacets<TRes> {
  factory CopyWith$Query$SearchStocktakeFacets(
    Query$SearchStocktakeFacets instance,
    TRes Function(Query$SearchStocktakeFacets) then,
  ) = _CopyWithImpl$Query$SearchStocktakeFacets;

  factory CopyWith$Query$SearchStocktakeFacets.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchStocktakeFacets;

  TRes call({
    List<Query$SearchStocktakeFacets$searchStocktakeFacet>?
    searchStocktakeFacet,
    String? $__typename,
  });
  TRes searchStocktakeFacet(
    Iterable<Query$SearchStocktakeFacets$searchStocktakeFacet> Function(
      Iterable<
        CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet<
          Query$SearchStocktakeFacets$searchStocktakeFacet
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchStocktakeFacets<TRes>
    implements CopyWith$Query$SearchStocktakeFacets<TRes> {
  _CopyWithImpl$Query$SearchStocktakeFacets(this._instance, this._then);

  final Query$SearchStocktakeFacets _instance;

  final TRes Function(Query$SearchStocktakeFacets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchStocktakeFacet = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStocktakeFacets(
      searchStocktakeFacet:
          searchStocktakeFacet == _undefined || searchStocktakeFacet == null
          ? _instance.searchStocktakeFacet
          : (searchStocktakeFacet
                as List<Query$SearchStocktakeFacets$searchStocktakeFacet>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes searchStocktakeFacet(
    Iterable<Query$SearchStocktakeFacets$searchStocktakeFacet> Function(
      Iterable<
        CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet<
          Query$SearchStocktakeFacets$searchStocktakeFacet
        >
      >,
    )
    _fn,
  ) => call(
    searchStocktakeFacet: _fn(
      _instance.searchStocktakeFacet.map(
        (e) => CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchStocktakeFacets<TRes>
    implements CopyWith$Query$SearchStocktakeFacets<TRes> {
  _CopyWithStubImpl$Query$SearchStocktakeFacets(this._res);

  TRes _res;

  call({
    List<Query$SearchStocktakeFacets$searchStocktakeFacet>?
    searchStocktakeFacet,
    String? $__typename,
  }) => _res;

  searchStocktakeFacet(_fn) => _res;
}

const documentNodeQuerySearchStocktakeFacets = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchStocktakeFacets'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'StocktakeSearchInput'),
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
            name: NameNode(value: 'searchStocktakeFacet'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'stocktakeSearchInput'),
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

class Query$SearchStocktakeFacets$searchStocktakeFacet {
  Query$SearchStocktakeFacets$searchStocktakeFacet({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndFacetResult',
  });

  factory Query$SearchStocktakeFacets$searchStocktakeFacet.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakeFacets$searchStocktakeFacet(
      key: (l$key as String),
      value: Query$SearchStocktakeFacets$searchStocktakeFacet$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$SearchStocktakeFacets$searchStocktakeFacet$value value;

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
    if (other is! Query$SearchStocktakeFacets$searchStocktakeFacet ||
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

extension UtilityExtension$Query$SearchStocktakeFacets$searchStocktakeFacet
    on Query$SearchStocktakeFacets$searchStocktakeFacet {
  CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet<
    Query$SearchStocktakeFacets$searchStocktakeFacet
  >
  get copyWith =>
      CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet(this, (i) => i);
}

abstract class CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet<TRes> {
  factory CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet(
    Query$SearchStocktakeFacets$searchStocktakeFacet instance,
    TRes Function(Query$SearchStocktakeFacets$searchStocktakeFacet) then,
  ) = _CopyWithImpl$Query$SearchStocktakeFacets$searchStocktakeFacet;

  factory CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchStocktakeFacets$searchStocktakeFacet;

  TRes call({
    String? key,
    Query$SearchStocktakeFacets$searchStocktakeFacet$value? value,
    String? $__typename,
  });
  CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value<TRes>
  get value;
}

class _CopyWithImpl$Query$SearchStocktakeFacets$searchStocktakeFacet<TRes>
    implements CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet<TRes> {
  _CopyWithImpl$Query$SearchStocktakeFacets$searchStocktakeFacet(
    this._instance,
    this._then,
  );

  final Query$SearchStocktakeFacets$searchStocktakeFacet _instance;

  final TRes Function(Query$SearchStocktakeFacets$searchStocktakeFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStocktakeFacets$searchStocktakeFacet(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Query$SearchStocktakeFacets$searchStocktakeFacet$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value<TRes>
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchStocktakeFacets$searchStocktakeFacet<TRes>
    implements CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet<TRes> {
  _CopyWithStubImpl$Query$SearchStocktakeFacets$searchStocktakeFacet(this._res);

  TRes _res;

  call({
    String? key,
    Query$SearchStocktakeFacets$searchStocktakeFacet$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value<TRes>
  get value =>
      CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value.stub(
        _res,
      );
}

class Query$SearchStocktakeFacets$searchStocktakeFacet$value {
  Query$SearchStocktakeFacets$searchStocktakeFacet$value({
    this.name,
    this.values,
    this.$__typename = 'FacetResult',
  });

  factory Query$SearchStocktakeFacets$searchStocktakeFacet$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakeFacets$searchStocktakeFacet$value(
      name: (l$name as String?),
      values: (l$values as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$SearchStocktakeFacets$searchStocktakeFacet$value$values.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final List<Query$SearchStocktakeFacets$searchStocktakeFacet$value$values?>?
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
    if (other is! Query$SearchStocktakeFacets$searchStocktakeFacet$value ||
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

extension UtilityExtension$Query$SearchStocktakeFacets$searchStocktakeFacet$value
    on Query$SearchStocktakeFacets$searchStocktakeFacet$value {
  CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value<
    Query$SearchStocktakeFacets$searchStocktakeFacet$value
  >
  get copyWith =>
      CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value<
  TRes
> {
  factory CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value(
    Query$SearchStocktakeFacets$searchStocktakeFacet$value instance,
    TRes Function(Query$SearchStocktakeFacets$searchStocktakeFacet$value) then,
  ) = _CopyWithImpl$Query$SearchStocktakeFacets$searchStocktakeFacet$value;

  factory CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchStocktakeFacets$searchStocktakeFacet$value;

  TRes call({
    String? name,
    List<Query$SearchStocktakeFacets$searchStocktakeFacet$value$values?>?
    values,
    String? $__typename,
  });
  TRes values(
    Iterable<Query$SearchStocktakeFacets$searchStocktakeFacet$value$values?>?
    Function(
      Iterable<
        CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value$values<
          Query$SearchStocktakeFacets$searchStocktakeFacet$value$values
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchStocktakeFacets$searchStocktakeFacet$value<TRes>
    implements
        CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value<TRes> {
  _CopyWithImpl$Query$SearchStocktakeFacets$searchStocktakeFacet$value(
    this._instance,
    this._then,
  );

  final Query$SearchStocktakeFacets$searchStocktakeFacet$value _instance;

  final TRes Function(Query$SearchStocktakeFacets$searchStocktakeFacet$value)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchStocktakeFacets$searchStocktakeFacet$value(
      name: name == _undefined ? _instance.name : (name as String?),
      values: values == _undefined
          ? _instance.values
          : (values
                as List<
                  Query$SearchStocktakeFacets$searchStocktakeFacet$value$values?
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes values(
    Iterable<Query$SearchStocktakeFacets$searchStocktakeFacet$value$values?>?
    Function(
      Iterable<
        CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value$values<
          Query$SearchStocktakeFacets$searchStocktakeFacet$value$values
        >?
      >?,
    )
    _fn,
  ) => call(
    values: _fn(
      _instance.values?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value$values(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchStocktakeFacets$searchStocktakeFacet$value<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value<TRes> {
  _CopyWithStubImpl$Query$SearchStocktakeFacets$searchStocktakeFacet$value(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    List<Query$SearchStocktakeFacets$searchStocktakeFacet$value$values?>?
    values,
    String? $__typename,
  }) => _res;

  values(_fn) => _res;
}

class Query$SearchStocktakeFacets$searchStocktakeFacet$value$values {
  Query$SearchStocktakeFacets$searchStocktakeFacet$value$values({
    this.name,
    this.range,
    required this.count,
    this.min,
    this.max,
    this.average,
    this.$__typename = 'FacetValue',
  });

  factory Query$SearchStocktakeFacets$searchStocktakeFacet$value$values.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$range = json['range'];
    final l$count = json['count'];
    final l$min = json['min'];
    final l$max = json['max'];
    final l$average = json['average'];
    final l$$__typename = json['__typename'];
    return Query$SearchStocktakeFacets$searchStocktakeFacet$value$values(
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
            is! Query$SearchStocktakeFacets$searchStocktakeFacet$value$values ||
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

extension UtilityExtension$Query$SearchStocktakeFacets$searchStocktakeFacet$value$values
    on Query$SearchStocktakeFacets$searchStocktakeFacet$value$values {
  CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value$values<
    Query$SearchStocktakeFacets$searchStocktakeFacet$value$values
  >
  get copyWith =>
      CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value$values(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value$values<
  TRes
> {
  factory CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value$values(
    Query$SearchStocktakeFacets$searchStocktakeFacet$value$values instance,
    TRes Function(Query$SearchStocktakeFacets$searchStocktakeFacet$value$values)
    then,
  ) = _CopyWithImpl$Query$SearchStocktakeFacets$searchStocktakeFacet$value$values;

  factory CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value$values.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchStocktakeFacets$searchStocktakeFacet$value$values;

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

class _CopyWithImpl$Query$SearchStocktakeFacets$searchStocktakeFacet$value$values<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value$values<
          TRes
        > {
  _CopyWithImpl$Query$SearchStocktakeFacets$searchStocktakeFacet$value$values(
    this._instance,
    this._then,
  );

  final Query$SearchStocktakeFacets$searchStocktakeFacet$value$values _instance;

  final TRes Function(
    Query$SearchStocktakeFacets$searchStocktakeFacet$value$values,
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
    Query$SearchStocktakeFacets$searchStocktakeFacet$value$values(
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

class _CopyWithStubImpl$Query$SearchStocktakeFacets$searchStocktakeFacet$value$values<
  TRes
>
    implements
        CopyWith$Query$SearchStocktakeFacets$searchStocktakeFacet$value$values<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchStocktakeFacets$searchStocktakeFacet$value$values(
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
