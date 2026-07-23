import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchAccountsFacet {
  factory Variables$Query$SearchAccountsFacet({
    required Input$AccountsSearchInput input,
  }) => Variables$Query$SearchAccountsFacet._({r'input': input});

  Variables$Query$SearchAccountsFacet._(this._$data);

  factory Variables$Query$SearchAccountsFacet.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$AccountsSearchInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$SearchAccountsFacet._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AccountsSearchInput get input =>
      (_$data['input'] as Input$AccountsSearchInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$SearchAccountsFacet<
    Variables$Query$SearchAccountsFacet
  >
  get copyWith => CopyWith$Variables$Query$SearchAccountsFacet(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchAccountsFacet ||
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

abstract class CopyWith$Variables$Query$SearchAccountsFacet<TRes> {
  factory CopyWith$Variables$Query$SearchAccountsFacet(
    Variables$Query$SearchAccountsFacet instance,
    TRes Function(Variables$Query$SearchAccountsFacet) then,
  ) = _CopyWithImpl$Variables$Query$SearchAccountsFacet;

  factory CopyWith$Variables$Query$SearchAccountsFacet.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchAccountsFacet;

  TRes call({Input$AccountsSearchInput? input});
}

class _CopyWithImpl$Variables$Query$SearchAccountsFacet<TRes>
    implements CopyWith$Variables$Query$SearchAccountsFacet<TRes> {
  _CopyWithImpl$Variables$Query$SearchAccountsFacet(this._instance, this._then);

  final Variables$Query$SearchAccountsFacet _instance;

  final TRes Function(Variables$Query$SearchAccountsFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$SearchAccountsFacet._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$AccountsSearchInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchAccountsFacet<TRes>
    implements CopyWith$Variables$Query$SearchAccountsFacet<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchAccountsFacet(this._res);

  TRes _res;

  call({Input$AccountsSearchInput? input}) => _res;
}

class Query$SearchAccountsFacet {
  Query$SearchAccountsFacet({
    required this.searchAccountsFacet,
    this.$__typename = 'Query',
  });

  factory Query$SearchAccountsFacet.fromJson(Map<String, dynamic> json) {
    final l$searchAccountsFacet = json['searchAccountsFacet'];
    final l$$__typename = json['__typename'];
    return Query$SearchAccountsFacet(
      searchAccountsFacet: (l$searchAccountsFacet as List<dynamic>)
          .map(
            (e) => Query$SearchAccountsFacet$searchAccountsFacet.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchAccountsFacet$searchAccountsFacet> searchAccountsFacet;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchAccountsFacet = searchAccountsFacet;
    _resultData['searchAccountsFacet'] = l$searchAccountsFacet
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchAccountsFacet = searchAccountsFacet;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchAccountsFacet.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchAccountsFacet ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchAccountsFacet = searchAccountsFacet;
    final lOther$searchAccountsFacet = other.searchAccountsFacet;
    if (l$searchAccountsFacet.length != lOther$searchAccountsFacet.length) {
      return false;
    }
    for (int i = 0; i < l$searchAccountsFacet.length; i++) {
      final l$searchAccountsFacet$entry = l$searchAccountsFacet[i];
      final lOther$searchAccountsFacet$entry = lOther$searchAccountsFacet[i];
      if (l$searchAccountsFacet$entry != lOther$searchAccountsFacet$entry) {
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

extension UtilityExtension$Query$SearchAccountsFacet
    on Query$SearchAccountsFacet {
  CopyWith$Query$SearchAccountsFacet<Query$SearchAccountsFacet> get copyWith =>
      CopyWith$Query$SearchAccountsFacet(this, (i) => i);
}

abstract class CopyWith$Query$SearchAccountsFacet<TRes> {
  factory CopyWith$Query$SearchAccountsFacet(
    Query$SearchAccountsFacet instance,
    TRes Function(Query$SearchAccountsFacet) then,
  ) = _CopyWithImpl$Query$SearchAccountsFacet;

  factory CopyWith$Query$SearchAccountsFacet.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAccountsFacet;

  TRes call({
    List<Query$SearchAccountsFacet$searchAccountsFacet>? searchAccountsFacet,
    String? $__typename,
  });
  TRes searchAccountsFacet(
    Iterable<Query$SearchAccountsFacet$searchAccountsFacet> Function(
      Iterable<
        CopyWith$Query$SearchAccountsFacet$searchAccountsFacet<
          Query$SearchAccountsFacet$searchAccountsFacet
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchAccountsFacet<TRes>
    implements CopyWith$Query$SearchAccountsFacet<TRes> {
  _CopyWithImpl$Query$SearchAccountsFacet(this._instance, this._then);

  final Query$SearchAccountsFacet _instance;

  final TRes Function(Query$SearchAccountsFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchAccountsFacet = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAccountsFacet(
      searchAccountsFacet:
          searchAccountsFacet == _undefined || searchAccountsFacet == null
          ? _instance.searchAccountsFacet
          : (searchAccountsFacet
                as List<Query$SearchAccountsFacet$searchAccountsFacet>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes searchAccountsFacet(
    Iterable<Query$SearchAccountsFacet$searchAccountsFacet> Function(
      Iterable<
        CopyWith$Query$SearchAccountsFacet$searchAccountsFacet<
          Query$SearchAccountsFacet$searchAccountsFacet
        >
      >,
    )
    _fn,
  ) => call(
    searchAccountsFacet: _fn(
      _instance.searchAccountsFacet.map(
        (e) =>
            CopyWith$Query$SearchAccountsFacet$searchAccountsFacet(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchAccountsFacet<TRes>
    implements CopyWith$Query$SearchAccountsFacet<TRes> {
  _CopyWithStubImpl$Query$SearchAccountsFacet(this._res);

  TRes _res;

  call({
    List<Query$SearchAccountsFacet$searchAccountsFacet>? searchAccountsFacet,
    String? $__typename,
  }) => _res;

  searchAccountsFacet(_fn) => _res;
}

const documentNodeQuerySearchAccountsFacet = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchAccountsFacet'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'AccountsSearchInput'),
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
            name: NameNode(value: 'searchAccountsFacet'),
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

class Query$SearchAccountsFacet$searchAccountsFacet {
  Query$SearchAccountsFacet$searchAccountsFacet({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndFacetResult',
  });

  factory Query$SearchAccountsFacet$searchAccountsFacet.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchAccountsFacet$searchAccountsFacet(
      key: (l$key as String),
      value: Query$SearchAccountsFacet$searchAccountsFacet$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$SearchAccountsFacet$searchAccountsFacet$value value;

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
    if (other is! Query$SearchAccountsFacet$searchAccountsFacet ||
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

extension UtilityExtension$Query$SearchAccountsFacet$searchAccountsFacet
    on Query$SearchAccountsFacet$searchAccountsFacet {
  CopyWith$Query$SearchAccountsFacet$searchAccountsFacet<
    Query$SearchAccountsFacet$searchAccountsFacet
  >
  get copyWith =>
      CopyWith$Query$SearchAccountsFacet$searchAccountsFacet(this, (i) => i);
}

abstract class CopyWith$Query$SearchAccountsFacet$searchAccountsFacet<TRes> {
  factory CopyWith$Query$SearchAccountsFacet$searchAccountsFacet(
    Query$SearchAccountsFacet$searchAccountsFacet instance,
    TRes Function(Query$SearchAccountsFacet$searchAccountsFacet) then,
  ) = _CopyWithImpl$Query$SearchAccountsFacet$searchAccountsFacet;

  factory CopyWith$Query$SearchAccountsFacet$searchAccountsFacet.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAccountsFacet$searchAccountsFacet;

  TRes call({
    String? key,
    Query$SearchAccountsFacet$searchAccountsFacet$value? value,
    String? $__typename,
  });
  CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value<TRes> get value;
}

class _CopyWithImpl$Query$SearchAccountsFacet$searchAccountsFacet<TRes>
    implements CopyWith$Query$SearchAccountsFacet$searchAccountsFacet<TRes> {
  _CopyWithImpl$Query$SearchAccountsFacet$searchAccountsFacet(
    this._instance,
    this._then,
  );

  final Query$SearchAccountsFacet$searchAccountsFacet _instance;

  final TRes Function(Query$SearchAccountsFacet$searchAccountsFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAccountsFacet$searchAccountsFacet(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Query$SearchAccountsFacet$searchAccountsFacet$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value<TRes> get value {
    final local$value = _instance.value;
    return CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchAccountsFacet$searchAccountsFacet<TRes>
    implements CopyWith$Query$SearchAccountsFacet$searchAccountsFacet<TRes> {
  _CopyWithStubImpl$Query$SearchAccountsFacet$searchAccountsFacet(this._res);

  TRes _res;

  call({
    String? key,
    Query$SearchAccountsFacet$searchAccountsFacet$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value<TRes>
  get value =>
      CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value.stub(_res);
}

class Query$SearchAccountsFacet$searchAccountsFacet$value {
  Query$SearchAccountsFacet$searchAccountsFacet$value({
    this.name,
    this.values,
    this.$__typename = 'FacetResult',
  });

  factory Query$SearchAccountsFacet$searchAccountsFacet$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$SearchAccountsFacet$searchAccountsFacet$value(
      name: (l$name as String?),
      values: (l$values as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$SearchAccountsFacet$searchAccountsFacet$value$values.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final List<Query$SearchAccountsFacet$searchAccountsFacet$value$values?>?
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
    if (other is! Query$SearchAccountsFacet$searchAccountsFacet$value ||
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

extension UtilityExtension$Query$SearchAccountsFacet$searchAccountsFacet$value
    on Query$SearchAccountsFacet$searchAccountsFacet$value {
  CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value<
    Query$SearchAccountsFacet$searchAccountsFacet$value
  >
  get copyWith => CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value<
  TRes
> {
  factory CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value(
    Query$SearchAccountsFacet$searchAccountsFacet$value instance,
    TRes Function(Query$SearchAccountsFacet$searchAccountsFacet$value) then,
  ) = _CopyWithImpl$Query$SearchAccountsFacet$searchAccountsFacet$value;

  factory CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAccountsFacet$searchAccountsFacet$value;

  TRes call({
    String? name,
    List<Query$SearchAccountsFacet$searchAccountsFacet$value$values?>? values,
    String? $__typename,
  });
  TRes values(
    Iterable<Query$SearchAccountsFacet$searchAccountsFacet$value$values?>?
    Function(
      Iterable<
        CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value$values<
          Query$SearchAccountsFacet$searchAccountsFacet$value$values
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchAccountsFacet$searchAccountsFacet$value<TRes>
    implements
        CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value<TRes> {
  _CopyWithImpl$Query$SearchAccountsFacet$searchAccountsFacet$value(
    this._instance,
    this._then,
  );

  final Query$SearchAccountsFacet$searchAccountsFacet$value _instance;

  final TRes Function(Query$SearchAccountsFacet$searchAccountsFacet$value)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAccountsFacet$searchAccountsFacet$value(
      name: name == _undefined ? _instance.name : (name as String?),
      values: values == _undefined
          ? _instance.values
          : (values
                as List<
                  Query$SearchAccountsFacet$searchAccountsFacet$value$values?
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes values(
    Iterable<Query$SearchAccountsFacet$searchAccountsFacet$value$values?>?
    Function(
      Iterable<
        CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value$values<
          Query$SearchAccountsFacet$searchAccountsFacet$value$values
        >?
      >?,
    )
    _fn,
  ) => call(
    values: _fn(
      _instance.values?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value$values(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchAccountsFacet$searchAccountsFacet$value<
  TRes
>
    implements
        CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value<TRes> {
  _CopyWithStubImpl$Query$SearchAccountsFacet$searchAccountsFacet$value(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    List<Query$SearchAccountsFacet$searchAccountsFacet$value$values?>? values,
    String? $__typename,
  }) => _res;

  values(_fn) => _res;
}

class Query$SearchAccountsFacet$searchAccountsFacet$value$values {
  Query$SearchAccountsFacet$searchAccountsFacet$value$values({
    this.range,
    required this.count,
    this.name,
    this.$__typename = 'FacetValue',
  });

  factory Query$SearchAccountsFacet$searchAccountsFacet$value$values.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$range = json['range'];
    final l$count = json['count'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$SearchAccountsFacet$searchAccountsFacet$value$values(
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
    if (other is! Query$SearchAccountsFacet$searchAccountsFacet$value$values ||
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

extension UtilityExtension$Query$SearchAccountsFacet$searchAccountsFacet$value$values
    on Query$SearchAccountsFacet$searchAccountsFacet$value$values {
  CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value$values<
    Query$SearchAccountsFacet$searchAccountsFacet$value$values
  >
  get copyWith =>
      CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value$values(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value$values<
  TRes
> {
  factory CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value$values(
    Query$SearchAccountsFacet$searchAccountsFacet$value$values instance,
    TRes Function(Query$SearchAccountsFacet$searchAccountsFacet$value$values)
    then,
  ) = _CopyWithImpl$Query$SearchAccountsFacet$searchAccountsFacet$value$values;

  factory CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value$values.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchAccountsFacet$searchAccountsFacet$value$values;

  TRes call({String? range, int? count, String? name, String? $__typename});
}

class _CopyWithImpl$Query$SearchAccountsFacet$searchAccountsFacet$value$values<
  TRes
>
    implements
        CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value$values<
          TRes
        > {
  _CopyWithImpl$Query$SearchAccountsFacet$searchAccountsFacet$value$values(
    this._instance,
    this._then,
  );

  final Query$SearchAccountsFacet$searchAccountsFacet$value$values _instance;

  final TRes Function(
    Query$SearchAccountsFacet$searchAccountsFacet$value$values,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? range = _undefined,
    Object? count = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchAccountsFacet$searchAccountsFacet$value$values(
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

class _CopyWithStubImpl$Query$SearchAccountsFacet$searchAccountsFacet$value$values<
  TRes
>
    implements
        CopyWith$Query$SearchAccountsFacet$searchAccountsFacet$value$values<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchAccountsFacet$searchAccountsFacet$value$values(
    this._res,
  );

  TRes _res;

  call({String? range, int? count, String? name, String? $__typename}) => _res;
}
