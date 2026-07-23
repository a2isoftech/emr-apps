import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchAdvancesFacets {
  factory Variables$Query$SearchAdvancesFacets({
    required Input$AdvancesSearchInput input,
  }) => Variables$Query$SearchAdvancesFacets._({r'input': input});

  Variables$Query$SearchAdvancesFacets._(this._$data);

  factory Variables$Query$SearchAdvancesFacets.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$AdvancesSearchInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$SearchAdvancesFacets._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AdvancesSearchInput get input =>
      (_$data['input'] as Input$AdvancesSearchInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$SearchAdvancesFacets<
    Variables$Query$SearchAdvancesFacets
  >
  get copyWith => CopyWith$Variables$Query$SearchAdvancesFacets(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchAdvancesFacets ||
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

abstract class CopyWith$Variables$Query$SearchAdvancesFacets<TRes> {
  factory CopyWith$Variables$Query$SearchAdvancesFacets(
    Variables$Query$SearchAdvancesFacets instance,
    TRes Function(Variables$Query$SearchAdvancesFacets) then,
  ) = _CopyWithImpl$Variables$Query$SearchAdvancesFacets;

  factory CopyWith$Variables$Query$SearchAdvancesFacets.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchAdvancesFacets;

  TRes call({Input$AdvancesSearchInput? input});
}

class _CopyWithImpl$Variables$Query$SearchAdvancesFacets<TRes>
    implements CopyWith$Variables$Query$SearchAdvancesFacets<TRes> {
  _CopyWithImpl$Variables$Query$SearchAdvancesFacets(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchAdvancesFacets _instance;

  final TRes Function(Variables$Query$SearchAdvancesFacets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$SearchAdvancesFacets._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$AdvancesSearchInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchAdvancesFacets<TRes>
    implements CopyWith$Variables$Query$SearchAdvancesFacets<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchAdvancesFacets(this._res);

  TRes _res;

  call({Input$AdvancesSearchInput? input}) => _res;
}

class Query$SearchAdvancesFacets {
  Query$SearchAdvancesFacets({
    required this.searchAdvancesFacets,
    this.$__typename = 'Query',
  });

  factory Query$SearchAdvancesFacets.fromJson(Map<String, dynamic> json) {
    final l$searchAdvancesFacets = json['searchAdvancesFacets'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvancesFacets(
      searchAdvancesFacets: (l$searchAdvancesFacets as List<dynamic>)
          .map(
            (e) => Query$SearchAdvancesFacets$searchAdvancesFacets.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchAdvancesFacets$searchAdvancesFacets>
  searchAdvancesFacets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchAdvancesFacets = searchAdvancesFacets;
    _resultData['searchAdvancesFacets'] = l$searchAdvancesFacets
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchAdvancesFacets = searchAdvancesFacets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchAdvancesFacets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchAdvancesFacets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchAdvancesFacets = searchAdvancesFacets;
    final lOther$searchAdvancesFacets = other.searchAdvancesFacets;
    if (l$searchAdvancesFacets.length != lOther$searchAdvancesFacets.length) {
      return false;
    }
    for (int i = 0; i < l$searchAdvancesFacets.length; i++) {
      final l$searchAdvancesFacets$entry = l$searchAdvancesFacets[i];
      final lOther$searchAdvancesFacets$entry = lOther$searchAdvancesFacets[i];
      if (l$searchAdvancesFacets$entry != lOther$searchAdvancesFacets$entry) {
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

extension UtilityExtension$Query$SearchAdvancesFacets
    on Query$SearchAdvancesFacets {
  CopyWith$Query$SearchAdvancesFacets<Query$SearchAdvancesFacets>
  get copyWith => CopyWith$Query$SearchAdvancesFacets(this, (i) => i);
}

abstract class CopyWith$Query$SearchAdvancesFacets<TRes> {
  factory CopyWith$Query$SearchAdvancesFacets(
    Query$SearchAdvancesFacets instance,
    TRes Function(Query$SearchAdvancesFacets) then,
  ) = _CopyWithImpl$Query$SearchAdvancesFacets;

  factory CopyWith$Query$SearchAdvancesFacets.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAdvancesFacets;

  TRes call({
    List<Query$SearchAdvancesFacets$searchAdvancesFacets>? searchAdvancesFacets,
    String? $__typename,
  });
  TRes searchAdvancesFacets(
    Iterable<Query$SearchAdvancesFacets$searchAdvancesFacets> Function(
      Iterable<
        CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets<
          Query$SearchAdvancesFacets$searchAdvancesFacets
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchAdvancesFacets<TRes>
    implements CopyWith$Query$SearchAdvancesFacets<TRes> {
  _CopyWithImpl$Query$SearchAdvancesFacets(this._instance, this._then);

  final Query$SearchAdvancesFacets _instance;

  final TRes Function(Query$SearchAdvancesFacets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchAdvancesFacets = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvancesFacets(
      searchAdvancesFacets:
          searchAdvancesFacets == _undefined || searchAdvancesFacets == null
          ? _instance.searchAdvancesFacets
          : (searchAdvancesFacets
                as List<Query$SearchAdvancesFacets$searchAdvancesFacets>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes searchAdvancesFacets(
    Iterable<Query$SearchAdvancesFacets$searchAdvancesFacets> Function(
      Iterable<
        CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets<
          Query$SearchAdvancesFacets$searchAdvancesFacets
        >
      >,
    )
    _fn,
  ) => call(
    searchAdvancesFacets: _fn(
      _instance.searchAdvancesFacets.map(
        (e) => CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchAdvancesFacets<TRes>
    implements CopyWith$Query$SearchAdvancesFacets<TRes> {
  _CopyWithStubImpl$Query$SearchAdvancesFacets(this._res);

  TRes _res;

  call({
    List<Query$SearchAdvancesFacets$searchAdvancesFacets>? searchAdvancesFacets,
    String? $__typename,
  }) => _res;

  searchAdvancesFacets(_fn) => _res;
}

const documentNodeQuerySearchAdvancesFacets = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchAdvancesFacets'),
      variableDefinitions: [
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
            name: NameNode(value: 'searchAdvancesFacets'),
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

class Query$SearchAdvancesFacets$searchAdvancesFacets {
  Query$SearchAdvancesFacets$searchAdvancesFacets({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndFacetResult',
  });

  factory Query$SearchAdvancesFacets$searchAdvancesFacets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvancesFacets$searchAdvancesFacets(
      key: (l$key as String),
      value: Query$SearchAdvancesFacets$searchAdvancesFacets$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$SearchAdvancesFacets$searchAdvancesFacets$value value;

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
    if (other is! Query$SearchAdvancesFacets$searchAdvancesFacets ||
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

extension UtilityExtension$Query$SearchAdvancesFacets$searchAdvancesFacets
    on Query$SearchAdvancesFacets$searchAdvancesFacets {
  CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets<
    Query$SearchAdvancesFacets$searchAdvancesFacets
  >
  get copyWith =>
      CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets(this, (i) => i);
}

abstract class CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets<TRes> {
  factory CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets(
    Query$SearchAdvancesFacets$searchAdvancesFacets instance,
    TRes Function(Query$SearchAdvancesFacets$searchAdvancesFacets) then,
  ) = _CopyWithImpl$Query$SearchAdvancesFacets$searchAdvancesFacets;

  factory CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvancesFacets$searchAdvancesFacets;

  TRes call({
    String? key,
    Query$SearchAdvancesFacets$searchAdvancesFacets$value? value,
    String? $__typename,
  });
  CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value<TRes>
  get value;
}

class _CopyWithImpl$Query$SearchAdvancesFacets$searchAdvancesFacets<TRes>
    implements CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets<TRes> {
  _CopyWithImpl$Query$SearchAdvancesFacets$searchAdvancesFacets(
    this._instance,
    this._then,
  );

  final Query$SearchAdvancesFacets$searchAdvancesFacets _instance;

  final TRes Function(Query$SearchAdvancesFacets$searchAdvancesFacets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvancesFacets$searchAdvancesFacets(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Query$SearchAdvancesFacets$searchAdvancesFacets$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value<TRes>
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchAdvancesFacets$searchAdvancesFacets<TRes>
    implements CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets<TRes> {
  _CopyWithStubImpl$Query$SearchAdvancesFacets$searchAdvancesFacets(this._res);

  TRes _res;

  call({
    String? key,
    Query$SearchAdvancesFacets$searchAdvancesFacets$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value<TRes>
  get value =>
      CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value.stub(_res);
}

class Query$SearchAdvancesFacets$searchAdvancesFacets$value {
  Query$SearchAdvancesFacets$searchAdvancesFacets$value({
    this.name,
    this.values,
    this.$__typename = 'FacetResult',
  });

  factory Query$SearchAdvancesFacets$searchAdvancesFacets$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvancesFacets$searchAdvancesFacets$value(
      name: (l$name as String?),
      values: (l$values as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$SearchAdvancesFacets$searchAdvancesFacets$value$values.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final List<Query$SearchAdvancesFacets$searchAdvancesFacets$value$values?>?
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
    if (other is! Query$SearchAdvancesFacets$searchAdvancesFacets$value ||
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

extension UtilityExtension$Query$SearchAdvancesFacets$searchAdvancesFacets$value
    on Query$SearchAdvancesFacets$searchAdvancesFacets$value {
  CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value<
    Query$SearchAdvancesFacets$searchAdvancesFacets$value
  >
  get copyWith =>
      CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value<
  TRes
> {
  factory CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value(
    Query$SearchAdvancesFacets$searchAdvancesFacets$value instance,
    TRes Function(Query$SearchAdvancesFacets$searchAdvancesFacets$value) then,
  ) = _CopyWithImpl$Query$SearchAdvancesFacets$searchAdvancesFacets$value;

  factory CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvancesFacets$searchAdvancesFacets$value;

  TRes call({
    String? name,
    List<Query$SearchAdvancesFacets$searchAdvancesFacets$value$values?>? values,
    String? $__typename,
  });
  TRes values(
    Iterable<Query$SearchAdvancesFacets$searchAdvancesFacets$value$values?>?
    Function(
      Iterable<
        CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value$values<
          Query$SearchAdvancesFacets$searchAdvancesFacets$value$values
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchAdvancesFacets$searchAdvancesFacets$value<TRes>
    implements
        CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value<TRes> {
  _CopyWithImpl$Query$SearchAdvancesFacets$searchAdvancesFacets$value(
    this._instance,
    this._then,
  );

  final Query$SearchAdvancesFacets$searchAdvancesFacets$value _instance;

  final TRes Function(Query$SearchAdvancesFacets$searchAdvancesFacets$value)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAdvancesFacets$searchAdvancesFacets$value(
      name: name == _undefined ? _instance.name : (name as String?),
      values: values == _undefined
          ? _instance.values
          : (values
                as List<
                  Query$SearchAdvancesFacets$searchAdvancesFacets$value$values?
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes values(
    Iterable<Query$SearchAdvancesFacets$searchAdvancesFacets$value$values?>?
    Function(
      Iterable<
        CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value$values<
          Query$SearchAdvancesFacets$searchAdvancesFacets$value$values
        >?
      >?,
    )
    _fn,
  ) => call(
    values: _fn(
      _instance.values?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value$values(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchAdvancesFacets$searchAdvancesFacets$value<
  TRes
>
    implements
        CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value<TRes> {
  _CopyWithStubImpl$Query$SearchAdvancesFacets$searchAdvancesFacets$value(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    List<Query$SearchAdvancesFacets$searchAdvancesFacets$value$values?>? values,
    String? $__typename,
  }) => _res;

  values(_fn) => _res;
}

class Query$SearchAdvancesFacets$searchAdvancesFacets$value$values {
  Query$SearchAdvancesFacets$searchAdvancesFacets$value$values({
    this.name,
    this.range,
    required this.count,
    this.min,
    this.max,
    this.average,
    this.$__typename = 'FacetValue',
  });

  factory Query$SearchAdvancesFacets$searchAdvancesFacets$value$values.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$range = json['range'];
    final l$count = json['count'];
    final l$min = json['min'];
    final l$max = json['max'];
    final l$average = json['average'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdvancesFacets$searchAdvancesFacets$value$values(
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
            is! Query$SearchAdvancesFacets$searchAdvancesFacets$value$values ||
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

extension UtilityExtension$Query$SearchAdvancesFacets$searchAdvancesFacets$value$values
    on Query$SearchAdvancesFacets$searchAdvancesFacets$value$values {
  CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value$values<
    Query$SearchAdvancesFacets$searchAdvancesFacets$value$values
  >
  get copyWith =>
      CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value$values(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value$values<
  TRes
> {
  factory CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value$values(
    Query$SearchAdvancesFacets$searchAdvancesFacets$value$values instance,
    TRes Function(Query$SearchAdvancesFacets$searchAdvancesFacets$value$values)
    then,
  ) = _CopyWithImpl$Query$SearchAdvancesFacets$searchAdvancesFacets$value$values;

  factory CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value$values.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAdvancesFacets$searchAdvancesFacets$value$values;

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

class _CopyWithImpl$Query$SearchAdvancesFacets$searchAdvancesFacets$value$values<
  TRes
>
    implements
        CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value$values<
          TRes
        > {
  _CopyWithImpl$Query$SearchAdvancesFacets$searchAdvancesFacets$value$values(
    this._instance,
    this._then,
  );

  final Query$SearchAdvancesFacets$searchAdvancesFacets$value$values _instance;

  final TRes Function(
    Query$SearchAdvancesFacets$searchAdvancesFacets$value$values,
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
    Query$SearchAdvancesFacets$searchAdvancesFacets$value$values(
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

class _CopyWithStubImpl$Query$SearchAdvancesFacets$searchAdvancesFacets$value$values<
  TRes
>
    implements
        CopyWith$Query$SearchAdvancesFacets$searchAdvancesFacets$value$values<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAdvancesFacets$searchAdvancesFacets$value$values(
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
