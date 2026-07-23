import '../../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchTrade2TicketsFacet {
  factory Variables$Query$SearchTrade2TicketsFacet({
    required Input$SearchTrade2TicketsInput input,
  }) => Variables$Query$SearchTrade2TicketsFacet._({r'input': input});

  Variables$Query$SearchTrade2TicketsFacet._(this._$data);

  factory Variables$Query$SearchTrade2TicketsFacet.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SearchTrade2TicketsInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$SearchTrade2TicketsFacet._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchTrade2TicketsInput get input =>
      (_$data['input'] as Input$SearchTrade2TicketsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$SearchTrade2TicketsFacet<
    Variables$Query$SearchTrade2TicketsFacet
  >
  get copyWith =>
      CopyWith$Variables$Query$SearchTrade2TicketsFacet(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchTrade2TicketsFacet ||
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

abstract class CopyWith$Variables$Query$SearchTrade2TicketsFacet<TRes> {
  factory CopyWith$Variables$Query$SearchTrade2TicketsFacet(
    Variables$Query$SearchTrade2TicketsFacet instance,
    TRes Function(Variables$Query$SearchTrade2TicketsFacet) then,
  ) = _CopyWithImpl$Variables$Query$SearchTrade2TicketsFacet;

  factory CopyWith$Variables$Query$SearchTrade2TicketsFacet.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchTrade2TicketsFacet;

  TRes call({Input$SearchTrade2TicketsInput? input});
}

class _CopyWithImpl$Variables$Query$SearchTrade2TicketsFacet<TRes>
    implements CopyWith$Variables$Query$SearchTrade2TicketsFacet<TRes> {
  _CopyWithImpl$Variables$Query$SearchTrade2TicketsFacet(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchTrade2TicketsFacet _instance;

  final TRes Function(Variables$Query$SearchTrade2TicketsFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$SearchTrade2TicketsFacet._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SearchTrade2TicketsInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchTrade2TicketsFacet<TRes>
    implements CopyWith$Variables$Query$SearchTrade2TicketsFacet<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchTrade2TicketsFacet(this._res);

  TRes _res;

  call({Input$SearchTrade2TicketsInput? input}) => _res;
}

class Query$SearchTrade2TicketsFacet {
  Query$SearchTrade2TicketsFacet({
    required this.searchTrade2TicketsFacet,
    this.$__typename = 'Query',
  });

  factory Query$SearchTrade2TicketsFacet.fromJson(Map<String, dynamic> json) {
    final l$searchTrade2TicketsFacet = json['searchTrade2TicketsFacet'];
    final l$$__typename = json['__typename'];
    return Query$SearchTrade2TicketsFacet(
      searchTrade2TicketsFacet: (l$searchTrade2TicketsFacet as List<dynamic>)
          .map(
            (e) =>
                Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet>
  searchTrade2TicketsFacet;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchTrade2TicketsFacet = searchTrade2TicketsFacet;
    _resultData['searchTrade2TicketsFacet'] = l$searchTrade2TicketsFacet
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchTrade2TicketsFacet = searchTrade2TicketsFacet;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchTrade2TicketsFacet.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchTrade2TicketsFacet ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchTrade2TicketsFacet = searchTrade2TicketsFacet;
    final lOther$searchTrade2TicketsFacet = other.searchTrade2TicketsFacet;
    if (l$searchTrade2TicketsFacet.length !=
        lOther$searchTrade2TicketsFacet.length) {
      return false;
    }
    for (int i = 0; i < l$searchTrade2TicketsFacet.length; i++) {
      final l$searchTrade2TicketsFacet$entry = l$searchTrade2TicketsFacet[i];
      final lOther$searchTrade2TicketsFacet$entry =
          lOther$searchTrade2TicketsFacet[i];
      if (l$searchTrade2TicketsFacet$entry !=
          lOther$searchTrade2TicketsFacet$entry) {
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

extension UtilityExtension$Query$SearchTrade2TicketsFacet
    on Query$SearchTrade2TicketsFacet {
  CopyWith$Query$SearchTrade2TicketsFacet<Query$SearchTrade2TicketsFacet>
  get copyWith => CopyWith$Query$SearchTrade2TicketsFacet(this, (i) => i);
}

abstract class CopyWith$Query$SearchTrade2TicketsFacet<TRes> {
  factory CopyWith$Query$SearchTrade2TicketsFacet(
    Query$SearchTrade2TicketsFacet instance,
    TRes Function(Query$SearchTrade2TicketsFacet) then,
  ) = _CopyWithImpl$Query$SearchTrade2TicketsFacet;

  factory CopyWith$Query$SearchTrade2TicketsFacet.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchTrade2TicketsFacet;

  TRes call({
    List<Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet>?
    searchTrade2TicketsFacet,
    String? $__typename,
  });
  TRes searchTrade2TicketsFacet(
    Iterable<Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet> Function(
      Iterable<
        CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet<
          Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchTrade2TicketsFacet<TRes>
    implements CopyWith$Query$SearchTrade2TicketsFacet<TRes> {
  _CopyWithImpl$Query$SearchTrade2TicketsFacet(this._instance, this._then);

  final Query$SearchTrade2TicketsFacet _instance;

  final TRes Function(Query$SearchTrade2TicketsFacet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchTrade2TicketsFacet = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTrade2TicketsFacet(
      searchTrade2TicketsFacet:
          searchTrade2TicketsFacet == _undefined ||
              searchTrade2TicketsFacet == null
          ? _instance.searchTrade2TicketsFacet
          : (searchTrade2TicketsFacet
                as List<
                  Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes searchTrade2TicketsFacet(
    Iterable<Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet> Function(
      Iterable<
        CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet<
          Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet
        >
      >,
    )
    _fn,
  ) => call(
    searchTrade2TicketsFacet: _fn(
      _instance.searchTrade2TicketsFacet.map(
        (e) => CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchTrade2TicketsFacet<TRes>
    implements CopyWith$Query$SearchTrade2TicketsFacet<TRes> {
  _CopyWithStubImpl$Query$SearchTrade2TicketsFacet(this._res);

  TRes _res;

  call({
    List<Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet>?
    searchTrade2TicketsFacet,
    String? $__typename,
  }) => _res;

  searchTrade2TicketsFacet(_fn) => _res;
}

const documentNodeQuerySearchTrade2TicketsFacet = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchTrade2TicketsFacet'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchTrade2TicketsInput'),
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
            name: NameNode(value: 'searchTrade2TicketsFacet'),
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

class Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet {
  Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndFacetResult',
  });

  factory Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet(
      key: (l$key as String),
      value:
          Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value value;

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
    if (other is! Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet ||
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

extension UtilityExtension$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet
    on Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet {
  CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet<
    Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet
  >
  get copyWith =>
      CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet<
  TRes
> {
  factory CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet(
    Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet instance,
    TRes Function(Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet) then,
  ) = _CopyWithImpl$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet;

  factory CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet;

  TRes call({
    String? key,
    Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value? value,
    String? $__typename,
  });
  CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value<TRes>
  get value;
}

class _CopyWithImpl$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet<
  TRes
>
    implements
        CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet<TRes> {
  _CopyWithImpl$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet(
    this._instance,
    this._then,
  );

  final Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet _instance;

  final TRes Function(Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value<TRes>
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet<
  TRes
>
    implements
        CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet<TRes> {
  _CopyWithStubImpl$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value<TRes>
  get value =>
      CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value.stub(
        _res,
      );
}

class Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value {
  Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value({
    this.name,
    this.values,
    this.$__typename = 'FacetResult',
  });

  factory Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$values = json['values'];
    final l$$__typename = json['__typename'];
    return Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value(
      name: (l$name as String?),
      values: (l$values as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final List<
    Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values?
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
            is! Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value ||
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

extension UtilityExtension$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value
    on Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value {
  CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value<
    Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value
  >
  get copyWith =>
      CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value<
  TRes
> {
  factory CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value(
    Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value instance,
    TRes Function(Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value)
    then,
  ) = _CopyWithImpl$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value;

  factory CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value;

  TRes call({
    String? name,
    List<Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values?>?
    values,
    String? $__typename,
  });
  TRes values(
    Iterable<
      Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values?
    >?
    Function(
      Iterable<
        CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values<
          Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value<
  TRes
>
    implements
        CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value<
          TRes
        > {
  _CopyWithImpl$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value(
    this._instance,
    this._then,
  );

  final Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value _instance;

  final TRes Function(
    Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? values = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value(
      name: name == _undefined ? _instance.name : (name as String?),
      values: values == _undefined
          ? _instance.values
          : (values
                as List<
                  Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values?
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes values(
    Iterable<
      Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values?
    >?
    Function(
      Iterable<
        CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values<
          Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values
        >?
      >?,
    )
    _fn,
  ) => call(
    values: _fn(
      _instance.values?.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value<
  TRes
>
    implements
        CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    List<Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values?>?
    values,
    String? $__typename,
  }) => _res;

  values(_fn) => _res;
}

class Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values {
  Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values({
    this.name,
    this.range,
    required this.count,
    this.min,
    this.max,
    this.average,
    this.$__typename = 'FacetValue',
  });

  factory Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$range = json['range'];
    final l$count = json['count'];
    final l$min = json['min'];
    final l$max = json['max'];
    final l$average = json['average'];
    final l$$__typename = json['__typename'];
    return Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values(
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
            is! Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values ||
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

extension UtilityExtension$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values
    on Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values {
  CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values<
    Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values
  >
  get copyWith =>
      CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values<
  TRes
> {
  factory CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values(
    Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values
    instance,
    TRes Function(
      Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values,
    )
    then,
  ) = _CopyWithImpl$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values;

  factory CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values;

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

class _CopyWithImpl$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values<
  TRes
>
    implements
        CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values<
          TRes
        > {
  _CopyWithImpl$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values(
    this._instance,
    this._then,
  );

  final Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values
  _instance;

  final TRes Function(
    Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values,
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
    Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values(
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

class _CopyWithStubImpl$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values<
  TRes
>
    implements
        CopyWith$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchTrade2TicketsFacet$searchTrade2TicketsFacet$value$values(
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
