import 'package:gql/ast.dart';

class Variables$Query$GetCountries {
  factory Variables$Query$GetCountries({required String query}) =>
      Variables$Query$GetCountries._({r'query': query});

  Variables$Query$GetCountries._(this._$data);

  factory Variables$Query$GetCountries.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] = (l$query as String);
    return Variables$Query$GetCountries._(result$data);
  }

  Map<String, dynamic> _$data;

  String get query => (_$data['query'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query;
    return result$data;
  }

  CopyWith$Variables$Query$GetCountries<Variables$Query$GetCountries>
  get copyWith => CopyWith$Variables$Query$GetCountries(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetCountries ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    return Object.hashAll([l$query]);
  }
}

abstract class CopyWith$Variables$Query$GetCountries<TRes> {
  factory CopyWith$Variables$Query$GetCountries(
    Variables$Query$GetCountries instance,
    TRes Function(Variables$Query$GetCountries) then,
  ) = _CopyWithImpl$Variables$Query$GetCountries;

  factory CopyWith$Variables$Query$GetCountries.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCountries;

  TRes call({String? query});
}

class _CopyWithImpl$Variables$Query$GetCountries<TRes>
    implements CopyWith$Variables$Query$GetCountries<TRes> {
  _CopyWithImpl$Variables$Query$GetCountries(this._instance, this._then);

  final Variables$Query$GetCountries _instance;

  final TRes Function(Variables$Query$GetCountries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? query = _undefined}) => _then(
    Variables$Query$GetCountries._({
      ..._instance._$data,
      if (query != _undefined && query != null) 'query': (query as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetCountries<TRes>
    implements CopyWith$Variables$Query$GetCountries<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCountries(this._res);

  TRes _res;

  call({String? query}) => _res;
}

class Query$GetCountries {
  Query$GetCountries({required this.countries, this.$__typename = 'Query'});

  factory Query$GetCountries.fromJson(Map<String, dynamic> json) {
    final l$countries = json['countries'];
    final l$$__typename = json['__typename'];
    return Query$GetCountries(
      countries: (l$countries as List<dynamic>)
          .map(
            (e) => Query$GetCountries$countries.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetCountries$countries> countries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$countries = countries;
    _resultData['countries'] = l$countries.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$countries = countries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$countries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetCountries || runtimeType != other.runtimeType) {
      return false;
    }
    final l$countries = countries;
    final lOther$countries = other.countries;
    if (l$countries.length != lOther$countries.length) {
      return false;
    }
    for (int i = 0; i < l$countries.length; i++) {
      final l$countries$entry = l$countries[i];
      final lOther$countries$entry = lOther$countries[i];
      if (l$countries$entry != lOther$countries$entry) {
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

extension UtilityExtension$Query$GetCountries on Query$GetCountries {
  CopyWith$Query$GetCountries<Query$GetCountries> get copyWith =>
      CopyWith$Query$GetCountries(this, (i) => i);
}

abstract class CopyWith$Query$GetCountries<TRes> {
  factory CopyWith$Query$GetCountries(
    Query$GetCountries instance,
    TRes Function(Query$GetCountries) then,
  ) = _CopyWithImpl$Query$GetCountries;

  factory CopyWith$Query$GetCountries.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCountries;

  TRes call({
    List<Query$GetCountries$countries>? countries,
    String? $__typename,
  });
  TRes countries(
    Iterable<Query$GetCountries$countries> Function(
      Iterable<
        CopyWith$Query$GetCountries$countries<Query$GetCountries$countries>
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetCountries<TRes>
    implements CopyWith$Query$GetCountries<TRes> {
  _CopyWithImpl$Query$GetCountries(this._instance, this._then);

  final Query$GetCountries _instance;

  final TRes Function(Query$GetCountries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countries = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetCountries(
      countries: countries == _undefined || countries == null
          ? _instance.countries
          : (countries as List<Query$GetCountries$countries>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes countries(
    Iterable<Query$GetCountries$countries> Function(
      Iterable<
        CopyWith$Query$GetCountries$countries<Query$GetCountries$countries>
      >,
    )
    _fn,
  ) => call(
    countries: _fn(
      _instance.countries.map(
        (e) => CopyWith$Query$GetCountries$countries(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetCountries<TRes>
    implements CopyWith$Query$GetCountries<TRes> {
  _CopyWithStubImpl$Query$GetCountries(this._res);

  TRes _res;

  call({List<Query$GetCountries$countries>? countries, String? $__typename}) =>
      _res;

  countries(_fn) => _res;
}

const documentNodeQueryGetCountries = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetCountries'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'query')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'countries'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'query'),
                      value: VariableNode(name: NameNode(value: 'query')),
                    ),
                  ],
                ),
              ),
            ],
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

class Query$GetCountries$countries {
  Query$GetCountries$countries({
    required this.name,
    this.$__typename = 'Country',
  });

  factory Query$GetCountries$countries.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetCountries$countries(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetCountries$countries ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetCountries$countries
    on Query$GetCountries$countries {
  CopyWith$Query$GetCountries$countries<Query$GetCountries$countries>
  get copyWith => CopyWith$Query$GetCountries$countries(this, (i) => i);
}

abstract class CopyWith$Query$GetCountries$countries<TRes> {
  factory CopyWith$Query$GetCountries$countries(
    Query$GetCountries$countries instance,
    TRes Function(Query$GetCountries$countries) then,
  ) = _CopyWithImpl$Query$GetCountries$countries;

  factory CopyWith$Query$GetCountries$countries.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCountries$countries;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Query$GetCountries$countries<TRes>
    implements CopyWith$Query$GetCountries$countries<TRes> {
  _CopyWithImpl$Query$GetCountries$countries(this._instance, this._then);

  final Query$GetCountries$countries _instance;

  final TRes Function(Query$GetCountries$countries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetCountries$countries(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$GetCountries$countries<TRes>
    implements CopyWith$Query$GetCountries$countries<TRes> {
  _CopyWithStubImpl$Query$GetCountries$countries(this._res);

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}
