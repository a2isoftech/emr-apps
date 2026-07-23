import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchBomFacets {
  factory Variables$Query$SearchBomFacets({
    required Input$SearchBomInput input,
  }) => Variables$Query$SearchBomFacets._({r'input': input});

  Variables$Query$SearchBomFacets._(this._$data);

  factory Variables$Query$SearchBomFacets.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchBomInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$SearchBomFacets._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchBomInput get input => (_$data['input'] as Input$SearchBomInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$SearchBomFacets<Variables$Query$SearchBomFacets>
  get copyWith => CopyWith$Variables$Query$SearchBomFacets(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchBomFacets ||
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

abstract class CopyWith$Variables$Query$SearchBomFacets<TRes> {
  factory CopyWith$Variables$Query$SearchBomFacets(
    Variables$Query$SearchBomFacets instance,
    TRes Function(Variables$Query$SearchBomFacets) then,
  ) = _CopyWithImpl$Variables$Query$SearchBomFacets;

  factory CopyWith$Variables$Query$SearchBomFacets.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchBomFacets;

  TRes call({Input$SearchBomInput? input});
}

class _CopyWithImpl$Variables$Query$SearchBomFacets<TRes>
    implements CopyWith$Variables$Query$SearchBomFacets<TRes> {
  _CopyWithImpl$Variables$Query$SearchBomFacets(this._instance, this._then);

  final Variables$Query$SearchBomFacets _instance;

  final TRes Function(Variables$Query$SearchBomFacets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$SearchBomFacets._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchBomInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchBomFacets<TRes>
    implements CopyWith$Variables$Query$SearchBomFacets<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchBomFacets(this._res);

  TRes _res;

  call({Input$SearchBomInput? input}) => _res;
}

class Query$SearchBomFacets {
  Query$SearchBomFacets({
    required this.searchBomFacet,
    this.$__typename = 'Query',
  });

  factory Query$SearchBomFacets.fromJson(Map<String, dynamic> json) {
    final l$searchBomFacet = json['searchBomFacet'];
    final l$$__typename = json['__typename'];
    return Query$SearchBomFacets(
      searchBomFacet: (l$searchBomFacet as List<dynamic>)
          .map(
            (e) => Query$SearchBomFacets$searchBomFacet.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchBomFacets$searchBomFacet> searchBomFacet;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchBomFacet = searchBomFacet;
    _resultData['searchBomFacet'] = l$searchBomFacet
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchBomFacet = searchBomFacet;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchBomFacet.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchBomFacets || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchBomFacet = searchBomFacet;
    final lOther$searchBomFacet = other.searchBomFacet;
    if (l$searchBomFacet.length != lOther$searchBomFacet.length) {
      return false;
    }
    for (int i = 0; i < l$searchBomFacet.length; i++) {
      final l$searchBomFacet$entry = l$searchBomFacet[i];
      final lOther$searchBomFacet$entry = lOther$searchBomFacet[i];
      if (l$searchBomFacet$entry != lOther$searchBomFacet$entry) {
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

extension UtilityExtension$Query$SearchBomFacets on Query$SearchBomFacets {
  CopyWith$Query$SearchBomFacets<Query$SearchBomFacets> get copyWith =>
      CopyWith$Query$SearchBomFacets(this, (i) => i);
}

abstract class CopyWith$Query$SearchBomFacets<TRes> {
  factory CopyWith$Query$SearchBomFacets(
    Query$SearchBomFacets instance,
    TRes Function(Query$SearchBomFacets) then,
  ) = _CopyWithImpl$Query$SearchBomFacets;

  factory CopyWith$Query$SearchBomFacets.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchBomFacets;

  TRes call({
    List<Query$SearchBomFacets$searchBomFacet>? searchBomFacet,
    String? $__typename,
  });
  TRes searchBomFacet(
    Iterable<Query$SearchBomFacets$searchBomFacet> Function(
      Iterable<
        CopyWith$Query$SearchBomFacets$searchBomFacet<
          Query$SearchBomFacets$searchBomFacet
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchBomFacets<TRes>
    implements CopyWith$Query$SearchBomFacets<TRes> {
  _CopyWithImpl$Query$SearchBomFacets(this._instance, this._then);

  final Query$SearchBomFacets _instance;

  final TRes Function(Query$SearchBomFacets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchBomFacet = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchBomFacets(
      searchBomFacet: searchBomFacet == _undefined || searchBomFacet == null
          ? _instance.searchBomFacet
          : (searchBomFacet as List<Query$SearchBomFacets$searchBomFacet>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes searchBomFacet(
    Iterable<Query$SearchBomFacets$searchBomFacet> Function(
      Iterable<
        CopyWith$Query$SearchBomFacets$searchBomFacet<
          Query$SearchBomFacets$searchBomFacet
        >
      >,
    )
    _fn,
  ) => call(
    searchBomFacet: _fn(
      _instance.searchBomFacet.map(
        (e) => CopyWith$Query$SearchBomFacets$searchBomFacet(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchBomFacets<TRes>
    implements CopyWith$Query$SearchBomFacets<TRes> {
  _CopyWithStubImpl$Query$SearchBomFacets(this._res);

  TRes _res;

  call({
    List<Query$SearchBomFacets$searchBomFacet>? searchBomFacet,
    String? $__typename,
  }) => _res;

  searchBomFacet(_fn) => _res;
}

const documentNodeQuerySearchBomFacets = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchBomFacets'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchBomInput'),
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
            name: NameNode(value: 'searchBomFacet'),
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

class Query$SearchBomFacets$searchBomFacet {
  Query$SearchBomFacets$searchBomFacet({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndFacetResult',
  });

  factory Query$SearchBomFacets$searchBomFacet.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchBomFacets$searchBomFacet(
      key: (l$key as String),
      value: Query$SearchBomFacets$searchBomFacet$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$SearchBomFacets$searchBomFacet$value value;

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
    if (other is! Query$SearchBomFacets$searchBomFacet ||
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

extension UtilityExtension$Query$SearchBomFacets$searchBomFacet
    on Query$SearchBomFacets$searchBomFacet {
  CopyWith$Query$SearchBomFacets$searchBomFacet<
    Query$SearchBomFacets$searchBomFacet
  >
  get copyWith => CopyWith$Query$SearchBomFacets$searchBomFacet(this, (i) => i);
}

abstract class CopyWith$Query$SearchBomFacets$searchBomFacet<TRes> {
  factory CopyWith$Query$SearchBomFacets$searchBomFacet(
    Query$SearchBomFacets$searchBomFacet instance,
    TRes Function(Query$SearchBomFacets$searchBomFacet) then,
  ) = _CopyWithImpl$Query$SearchBomFacets$searchBomFacet;

  factory CopyWith$Query$SearchBomFacets$searchBomFacet.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchBomFacets$searchBomFacet;

  TRes call({
    String? key,
    Query$SearchBomFacets$searchBomFacet$value? value,
    String? $__typename,
  });
  CopyWith$Query$SearchBomFacets$searchBomFacet$value<TRes> get value;
}

class _CopyWithImpl$Query$SearchBomFacets$searchBomFacet<TRes>
    implements CopyWith$Query$SearchBomFacets$searchBomFacet<TRes> {
  _CopyWithImpl$Query$SearchBomFacets$searchBomFacet(
    this._instance,
    this._then,
  );

  final Query$SearchBomFacets$searchBomFacet _instance;

  final TRes Function(Query$SearchBomFacets$searchBomFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchBomFacets$searchBomFacet(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Query$SearchBomFacets$searchBomFacet$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchBomFacets$searchBomFacet$value<TRes> get value {
    final local$value = _instance.value;
    return CopyWith$Query$SearchBomFacets$searchBomFacet$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchBomFacets$searchBomFacet<TRes>
    implements CopyWith$Query$SearchBomFacets$searchBomFacet<TRes> {
  _CopyWithStubImpl$Query$SearchBomFacets$searchBomFacet(this._res);

  TRes _res;

  call({
    String? key,
    Query$SearchBomFacets$searchBomFacet$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchBomFacets$searchBomFacet$value<TRes> get value =>
      CopyWith$Query$SearchBomFacets$searchBomFacet$value.stub(_res);
}

class Query$SearchBomFacets$searchBomFacet$value {
  Query$SearchBomFacets$searchBomFacet$value({
    this.name,
    this.values,
    this.$__typename = 'FacetResult',
  });

  factory Query$SearchBomFacets$searchBomFacet$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$SearchBomFacets$searchBomFacet$value(
      name: (l$name as String?),
      values: (l$values as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$SearchBomFacets$searchBomFacet$value$values.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final List<Query$SearchBomFacets$searchBomFacet$value$values?>? values;

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
    if (other is! Query$SearchBomFacets$searchBomFacet$value ||
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

extension UtilityExtension$Query$SearchBomFacets$searchBomFacet$value
    on Query$SearchBomFacets$searchBomFacet$value {
  CopyWith$Query$SearchBomFacets$searchBomFacet$value<
    Query$SearchBomFacets$searchBomFacet$value
  >
  get copyWith =>
      CopyWith$Query$SearchBomFacets$searchBomFacet$value(this, (i) => i);
}

abstract class CopyWith$Query$SearchBomFacets$searchBomFacet$value<TRes> {
  factory CopyWith$Query$SearchBomFacets$searchBomFacet$value(
    Query$SearchBomFacets$searchBomFacet$value instance,
    TRes Function(Query$SearchBomFacets$searchBomFacet$value) then,
  ) = _CopyWithImpl$Query$SearchBomFacets$searchBomFacet$value;

  factory CopyWith$Query$SearchBomFacets$searchBomFacet$value.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchBomFacets$searchBomFacet$value;

  TRes call({
    String? name,
    List<Query$SearchBomFacets$searchBomFacet$value$values?>? values,
    String? $__typename,
  });
  TRes values(
    Iterable<Query$SearchBomFacets$searchBomFacet$value$values?>? Function(
      Iterable<
        CopyWith$Query$SearchBomFacets$searchBomFacet$value$values<
          Query$SearchBomFacets$searchBomFacet$value$values
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchBomFacets$searchBomFacet$value<TRes>
    implements CopyWith$Query$SearchBomFacets$searchBomFacet$value<TRes> {
  _CopyWithImpl$Query$SearchBomFacets$searchBomFacet$value(
    this._instance,
    this._then,
  );

  final Query$SearchBomFacets$searchBomFacet$value _instance;

  final TRes Function(Query$SearchBomFacets$searchBomFacet$value) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchBomFacets$searchBomFacet$value(
      name: name == _undefined ? _instance.name : (name as String?),
      values: values == _undefined
          ? _instance.values
          : (values
                as List<Query$SearchBomFacets$searchBomFacet$value$values?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes values(
    Iterable<Query$SearchBomFacets$searchBomFacet$value$values?>? Function(
      Iterable<
        CopyWith$Query$SearchBomFacets$searchBomFacet$value$values<
          Query$SearchBomFacets$searchBomFacet$value$values
        >?
      >?,
    )
    _fn,
  ) => call(
    values: _fn(
      _instance.values?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SearchBomFacets$searchBomFacet$value$values(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchBomFacets$searchBomFacet$value<TRes>
    implements CopyWith$Query$SearchBomFacets$searchBomFacet$value<TRes> {
  _CopyWithStubImpl$Query$SearchBomFacets$searchBomFacet$value(this._res);

  TRes _res;

  call({
    String? name,
    List<Query$SearchBomFacets$searchBomFacet$value$values?>? values,
    String? $__typename,
  }) => _res;

  values(_fn) => _res;
}

class Query$SearchBomFacets$searchBomFacet$value$values {
  Query$SearchBomFacets$searchBomFacet$value$values({
    this.range,
    required this.count,
    this.$__typename = 'FacetValue',
  });

  factory Query$SearchBomFacets$searchBomFacet$value$values.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$range = json['range'];
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$SearchBomFacets$searchBomFacet$value$values(
      range: (l$range as String?),
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String? range;

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$range = range;
    _resultData['range'] = l$range;
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$range = range;
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$range, l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchBomFacets$searchBomFacet$value$values ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchBomFacets$searchBomFacet$value$values
    on Query$SearchBomFacets$searchBomFacet$value$values {
  CopyWith$Query$SearchBomFacets$searchBomFacet$value$values<
    Query$SearchBomFacets$searchBomFacet$value$values
  >
  get copyWith => CopyWith$Query$SearchBomFacets$searchBomFacet$value$values(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$SearchBomFacets$searchBomFacet$value$values<
  TRes
> {
  factory CopyWith$Query$SearchBomFacets$searchBomFacet$value$values(
    Query$SearchBomFacets$searchBomFacet$value$values instance,
    TRes Function(Query$SearchBomFacets$searchBomFacet$value$values) then,
  ) = _CopyWithImpl$Query$SearchBomFacets$searchBomFacet$value$values;

  factory CopyWith$Query$SearchBomFacets$searchBomFacet$value$values.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchBomFacets$searchBomFacet$value$values;

  TRes call({String? range, int? count, String? $__typename});
}

class _CopyWithImpl$Query$SearchBomFacets$searchBomFacet$value$values<TRes>
    implements
        CopyWith$Query$SearchBomFacets$searchBomFacet$value$values<TRes> {
  _CopyWithImpl$Query$SearchBomFacets$searchBomFacet$value$values(
    this._instance,
    this._then,
  );

  final Query$SearchBomFacets$searchBomFacet$value$values _instance;

  final TRes Function(Query$SearchBomFacets$searchBomFacet$value$values) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? range = _undefined,
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchBomFacets$searchBomFacet$value$values(
      range: range == _undefined ? _instance.range : (range as String?),
      count: count == _undefined || count == null
          ? _instance.count
          : (count as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchBomFacets$searchBomFacet$value$values<TRes>
    implements
        CopyWith$Query$SearchBomFacets$searchBomFacet$value$values<TRes> {
  _CopyWithStubImpl$Query$SearchBomFacets$searchBomFacet$value$values(
    this._res,
  );

  TRes _res;

  call({String? range, int? count, String? $__typename}) => _res;
}
