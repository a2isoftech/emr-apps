import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchEdgeTicketsFacet {
  factory Variables$Query$SearchEdgeTicketsFacet({
    required Input$SearchTicketsInput input,
  }) => Variables$Query$SearchEdgeTicketsFacet._({r'input': input});

  Variables$Query$SearchEdgeTicketsFacet._(this._$data);

  factory Variables$Query$SearchEdgeTicketsFacet.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchTicketsInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$SearchEdgeTicketsFacet._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchTicketsInput get input =>
      (_$data['input'] as Input$SearchTicketsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$SearchEdgeTicketsFacet<
    Variables$Query$SearchEdgeTicketsFacet
  >
  get copyWith =>
      CopyWith$Variables$Query$SearchEdgeTicketsFacet(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchEdgeTicketsFacet ||
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

abstract class CopyWith$Variables$Query$SearchEdgeTicketsFacet<TRes> {
  factory CopyWith$Variables$Query$SearchEdgeTicketsFacet(
    Variables$Query$SearchEdgeTicketsFacet instance,
    TRes Function(Variables$Query$SearchEdgeTicketsFacet) then,
  ) = _CopyWithImpl$Variables$Query$SearchEdgeTicketsFacet;

  factory CopyWith$Variables$Query$SearchEdgeTicketsFacet.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchEdgeTicketsFacet;

  TRes call({Input$SearchTicketsInput? input});
}

class _CopyWithImpl$Variables$Query$SearchEdgeTicketsFacet<TRes>
    implements CopyWith$Variables$Query$SearchEdgeTicketsFacet<TRes> {
  _CopyWithImpl$Variables$Query$SearchEdgeTicketsFacet(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchEdgeTicketsFacet _instance;

  final TRes Function(Variables$Query$SearchEdgeTicketsFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$SearchEdgeTicketsFacet._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchTicketsInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchEdgeTicketsFacet<TRes>
    implements CopyWith$Variables$Query$SearchEdgeTicketsFacet<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchEdgeTicketsFacet(this._res);

  TRes _res;

  call({Input$SearchTicketsInput? input}) => _res;
}

class Query$SearchEdgeTicketsFacet {
  Query$SearchEdgeTicketsFacet({
    required this.searchTicketsFacet,
    this.$__typename = 'Query',
  });

  factory Query$SearchEdgeTicketsFacet.fromJson(Map<String, dynamic> json) {
    final l$searchTicketsFacet = json['searchTicketsFacet'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTicketsFacet(
      searchTicketsFacet: (l$searchTicketsFacet as List<dynamic>)
          .map(
            (e) => Query$SearchEdgeTicketsFacet$searchTicketsFacet.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchEdgeTicketsFacet$searchTicketsFacet>
  searchTicketsFacet;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchTicketsFacet = searchTicketsFacet;
    _resultData['searchTicketsFacet'] = l$searchTicketsFacet
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchTicketsFacet = searchTicketsFacet;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchTicketsFacet.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchEdgeTicketsFacet ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchTicketsFacet = searchTicketsFacet;
    final lOther$searchTicketsFacet = other.searchTicketsFacet;
    if (l$searchTicketsFacet.length != lOther$searchTicketsFacet.length) {
      return false;
    }
    for (int i = 0; i < l$searchTicketsFacet.length; i++) {
      final l$searchTicketsFacet$entry = l$searchTicketsFacet[i];
      final lOther$searchTicketsFacet$entry = lOther$searchTicketsFacet[i];
      if (l$searchTicketsFacet$entry != lOther$searchTicketsFacet$entry) {
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

extension UtilityExtension$Query$SearchEdgeTicketsFacet
    on Query$SearchEdgeTicketsFacet {
  CopyWith$Query$SearchEdgeTicketsFacet<Query$SearchEdgeTicketsFacet>
  get copyWith => CopyWith$Query$SearchEdgeTicketsFacet(this, (i) => i);
}

abstract class CopyWith$Query$SearchEdgeTicketsFacet<TRes> {
  factory CopyWith$Query$SearchEdgeTicketsFacet(
    Query$SearchEdgeTicketsFacet instance,
    TRes Function(Query$SearchEdgeTicketsFacet) then,
  ) = _CopyWithImpl$Query$SearchEdgeTicketsFacet;

  factory CopyWith$Query$SearchEdgeTicketsFacet.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchEdgeTicketsFacet;

  TRes call({
    List<Query$SearchEdgeTicketsFacet$searchTicketsFacet>? searchTicketsFacet,
    String? $__typename,
  });
  TRes searchTicketsFacet(
    Iterable<Query$SearchEdgeTicketsFacet$searchTicketsFacet> Function(
      Iterable<
        CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet<
          Query$SearchEdgeTicketsFacet$searchTicketsFacet
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchEdgeTicketsFacet<TRes>
    implements CopyWith$Query$SearchEdgeTicketsFacet<TRes> {
  _CopyWithImpl$Query$SearchEdgeTicketsFacet(this._instance, this._then);

  final Query$SearchEdgeTicketsFacet _instance;

  final TRes Function(Query$SearchEdgeTicketsFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchTicketsFacet = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchEdgeTicketsFacet(
      searchTicketsFacet:
          searchTicketsFacet == _undefined || searchTicketsFacet == null
          ? _instance.searchTicketsFacet
          : (searchTicketsFacet
                as List<Query$SearchEdgeTicketsFacet$searchTicketsFacet>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes searchTicketsFacet(
    Iterable<Query$SearchEdgeTicketsFacet$searchTicketsFacet> Function(
      Iterable<
        CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet<
          Query$SearchEdgeTicketsFacet$searchTicketsFacet
        >
      >,
    )
    _fn,
  ) => call(
    searchTicketsFacet: _fn(
      _instance.searchTicketsFacet.map(
        (e) => CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchEdgeTicketsFacet<TRes>
    implements CopyWith$Query$SearchEdgeTicketsFacet<TRes> {
  _CopyWithStubImpl$Query$SearchEdgeTicketsFacet(this._res);

  TRes _res;

  call({
    List<Query$SearchEdgeTicketsFacet$searchTicketsFacet>? searchTicketsFacet,
    String? $__typename,
  }) => _res;

  searchTicketsFacet(_fn) => _res;
}

const documentNodeQuerySearchEdgeTicketsFacet = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchEdgeTicketsFacet'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchTicketsInput'),
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
            name: NameNode(value: 'searchTicketsFacet'),
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

class Query$SearchEdgeTicketsFacet$searchTicketsFacet {
  Query$SearchEdgeTicketsFacet$searchTicketsFacet({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndFacetResult',
  });

  factory Query$SearchEdgeTicketsFacet$searchTicketsFacet.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTicketsFacet$searchTicketsFacet(
      key: (l$key as String),
      value: Query$SearchEdgeTicketsFacet$searchTicketsFacet$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$SearchEdgeTicketsFacet$searchTicketsFacet$value value;

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
    if (other is! Query$SearchEdgeTicketsFacet$searchTicketsFacet ||
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

extension UtilityExtension$Query$SearchEdgeTicketsFacet$searchTicketsFacet
    on Query$SearchEdgeTicketsFacet$searchTicketsFacet {
  CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet<
    Query$SearchEdgeTicketsFacet$searchTicketsFacet
  >
  get copyWith =>
      CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet(this, (i) => i);
}

abstract class CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet<TRes> {
  factory CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet(
    Query$SearchEdgeTicketsFacet$searchTicketsFacet instance,
    TRes Function(Query$SearchEdgeTicketsFacet$searchTicketsFacet) then,
  ) = _CopyWithImpl$Query$SearchEdgeTicketsFacet$searchTicketsFacet;

  factory CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTicketsFacet$searchTicketsFacet;

  TRes call({
    String? key,
    Query$SearchEdgeTicketsFacet$searchTicketsFacet$value? value,
    String? $__typename,
  });
  CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value<TRes>
  get value;
}

class _CopyWithImpl$Query$SearchEdgeTicketsFacet$searchTicketsFacet<TRes>
    implements CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet<TRes> {
  _CopyWithImpl$Query$SearchEdgeTicketsFacet$searchTicketsFacet(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTicketsFacet$searchTicketsFacet _instance;

  final TRes Function(Query$SearchEdgeTicketsFacet$searchTicketsFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchEdgeTicketsFacet$searchTicketsFacet(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Query$SearchEdgeTicketsFacet$searchTicketsFacet$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value<TRes>
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchEdgeTicketsFacet$searchTicketsFacet<TRes>
    implements CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet<TRes> {
  _CopyWithStubImpl$Query$SearchEdgeTicketsFacet$searchTicketsFacet(this._res);

  TRes _res;

  call({
    String? key,
    Query$SearchEdgeTicketsFacet$searchTicketsFacet$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value<TRes>
  get value =>
      CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value.stub(_res);
}

class Query$SearchEdgeTicketsFacet$searchTicketsFacet$value {
  Query$SearchEdgeTicketsFacet$searchTicketsFacet$value({
    this.name,
    this.values,
    this.$__typename = 'FacetResult',
  });

  factory Query$SearchEdgeTicketsFacet$searchTicketsFacet$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTicketsFacet$searchTicketsFacet$value(
      name: (l$name as String?),
      values: (l$values as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final List<Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values?>?
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
    if (other is! Query$SearchEdgeTicketsFacet$searchTicketsFacet$value ||
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

extension UtilityExtension$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value
    on Query$SearchEdgeTicketsFacet$searchTicketsFacet$value {
  CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value<
    Query$SearchEdgeTicketsFacet$searchTicketsFacet$value
  >
  get copyWith =>
      CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value<
  TRes
> {
  factory CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value(
    Query$SearchEdgeTicketsFacet$searchTicketsFacet$value instance,
    TRes Function(Query$SearchEdgeTicketsFacet$searchTicketsFacet$value) then,
  ) = _CopyWithImpl$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value;

  factory CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value;

  TRes call({
    String? name,
    List<Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values?>? values,
    String? $__typename,
  });
  TRes values(
    Iterable<Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values?>?
    Function(
      Iterable<
        CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values<
          Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value<TRes>
    implements
        CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value<TRes> {
  _CopyWithImpl$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTicketsFacet$searchTicketsFacet$value _instance;

  final TRes Function(Query$SearchEdgeTicketsFacet$searchTicketsFacet$value)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchEdgeTicketsFacet$searchTicketsFacet$value(
      name: name == _undefined ? _instance.name : (name as String?),
      values: values == _undefined
          ? _instance.values
          : (values
                as List<
                  Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values?
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes values(
    Iterable<Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values?>?
    Function(
      Iterable<
        CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values<
          Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values
        >?
      >?,
    )
    _fn,
  ) => call(
    values: _fn(
      _instance.values?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value<TRes> {
  _CopyWithStubImpl$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    List<Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values?>? values,
    String? $__typename,
  }) => _res;

  values(_fn) => _res;
}

class Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values {
  Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values({
    this.name,
    this.range,
    required this.count,
    this.min,
    this.max,
    this.average,
    this.$__typename = 'FacetValue',
  });

  factory Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$range = json['range'];
    final l$count = json['count'];
    final l$min = json['min'];
    final l$max = json['max'];
    final l$average = json['average'];
    final l$$__typename = json['__typename'];
    return Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values(
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
            is! Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values ||
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

extension UtilityExtension$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values
    on Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values {
  CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values<
    Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values
  >
  get copyWith =>
      CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values<
  TRes
> {
  factory CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values(
    Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values instance,
    TRes Function(Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values)
    then,
  ) = _CopyWithImpl$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values;

  factory CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values;

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

class _CopyWithImpl$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values<
          TRes
        > {
  _CopyWithImpl$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values(
    this._instance,
    this._then,
  );

  final Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values _instance;

  final TRes Function(
    Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values,
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
    Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values(
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

class _CopyWithStubImpl$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values<
  TRes
>
    implements
        CopyWith$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchEdgeTicketsFacet$searchTicketsFacet$value$values(
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
