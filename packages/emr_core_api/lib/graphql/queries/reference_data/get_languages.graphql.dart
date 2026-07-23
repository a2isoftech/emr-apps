import 'package:gql/ast.dart';

class Variables$Query$GetLanguages {
  factory Variables$Query$GetLanguages({required String query}) =>
      Variables$Query$GetLanguages._({r'query': query});

  Variables$Query$GetLanguages._(this._$data);

  factory Variables$Query$GetLanguages.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] = (l$query as String);
    return Variables$Query$GetLanguages._(result$data);
  }

  Map<String, dynamic> _$data;

  String get query => (_$data['query'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query;
    return result$data;
  }

  CopyWith$Variables$Query$GetLanguages<Variables$Query$GetLanguages>
  get copyWith => CopyWith$Variables$Query$GetLanguages(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetLanguages ||
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

abstract class CopyWith$Variables$Query$GetLanguages<TRes> {
  factory CopyWith$Variables$Query$GetLanguages(
    Variables$Query$GetLanguages instance,
    TRes Function(Variables$Query$GetLanguages) then,
  ) = _CopyWithImpl$Variables$Query$GetLanguages;

  factory CopyWith$Variables$Query$GetLanguages.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetLanguages;

  TRes call({String? query});
}

class _CopyWithImpl$Variables$Query$GetLanguages<TRes>
    implements CopyWith$Variables$Query$GetLanguages<TRes> {
  _CopyWithImpl$Variables$Query$GetLanguages(this._instance, this._then);

  final Variables$Query$GetLanguages _instance;

  final TRes Function(Variables$Query$GetLanguages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? query = _undefined}) => _then(
    Variables$Query$GetLanguages._({
      ..._instance._$data,
      if (query != _undefined && query != null) 'query': (query as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetLanguages<TRes>
    implements CopyWith$Variables$Query$GetLanguages<TRes> {
  _CopyWithStubImpl$Variables$Query$GetLanguages(this._res);

  TRes _res;

  call({String? query}) => _res;
}

class Query$GetLanguages {
  Query$GetLanguages({required this.languages, this.$__typename = 'Query'});

  factory Query$GetLanguages.fromJson(Map<String, dynamic> json) {
    final l$languages = json['languages'];
    final l$$__typename = json['__typename'];
    return Query$GetLanguages(
      languages: (l$languages as List<dynamic>)
          .map(
            (e) => Query$GetLanguages$languages.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetLanguages$languages> languages;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$languages = languages;
    _resultData['languages'] = l$languages.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$languages = languages;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$languages.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetLanguages || runtimeType != other.runtimeType) {
      return false;
    }
    final l$languages = languages;
    final lOther$languages = other.languages;
    if (l$languages.length != lOther$languages.length) {
      return false;
    }
    for (int i = 0; i < l$languages.length; i++) {
      final l$languages$entry = l$languages[i];
      final lOther$languages$entry = lOther$languages[i];
      if (l$languages$entry != lOther$languages$entry) {
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

extension UtilityExtension$Query$GetLanguages on Query$GetLanguages {
  CopyWith$Query$GetLanguages<Query$GetLanguages> get copyWith =>
      CopyWith$Query$GetLanguages(this, (i) => i);
}

abstract class CopyWith$Query$GetLanguages<TRes> {
  factory CopyWith$Query$GetLanguages(
    Query$GetLanguages instance,
    TRes Function(Query$GetLanguages) then,
  ) = _CopyWithImpl$Query$GetLanguages;

  factory CopyWith$Query$GetLanguages.stub(TRes res) =
      _CopyWithStubImpl$Query$GetLanguages;

  TRes call({
    List<Query$GetLanguages$languages>? languages,
    String? $__typename,
  });
  TRes languages(
    Iterable<Query$GetLanguages$languages> Function(
      Iterable<
        CopyWith$Query$GetLanguages$languages<Query$GetLanguages$languages>
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetLanguages<TRes>
    implements CopyWith$Query$GetLanguages<TRes> {
  _CopyWithImpl$Query$GetLanguages(this._instance, this._then);

  final Query$GetLanguages _instance;

  final TRes Function(Query$GetLanguages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? languages = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetLanguages(
      languages: languages == _undefined || languages == null
          ? _instance.languages
          : (languages as List<Query$GetLanguages$languages>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes languages(
    Iterable<Query$GetLanguages$languages> Function(
      Iterable<
        CopyWith$Query$GetLanguages$languages<Query$GetLanguages$languages>
      >,
    )
    _fn,
  ) => call(
    languages: _fn(
      _instance.languages.map(
        (e) => CopyWith$Query$GetLanguages$languages(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetLanguages<TRes>
    implements CopyWith$Query$GetLanguages<TRes> {
  _CopyWithStubImpl$Query$GetLanguages(this._res);

  TRes _res;

  call({List<Query$GetLanguages$languages>? languages, String? $__typename}) =>
      _res;

  languages(_fn) => _res;
}

const documentNodeQueryGetLanguages = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetLanguages'),
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
            name: NameNode(value: 'languages'),
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
                  name: NameNode(value: 'value'),
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

class Query$GetLanguages$languages {
  Query$GetLanguages$languages({
    required this.name,
    required this.value,
    this.$__typename = 'Language',
  });

  factory Query$GetLanguages$languages.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetLanguages$languages(
      name: (l$name as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetLanguages$languages ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetLanguages$languages
    on Query$GetLanguages$languages {
  CopyWith$Query$GetLanguages$languages<Query$GetLanguages$languages>
  get copyWith => CopyWith$Query$GetLanguages$languages(this, (i) => i);
}

abstract class CopyWith$Query$GetLanguages$languages<TRes> {
  factory CopyWith$Query$GetLanguages$languages(
    Query$GetLanguages$languages instance,
    TRes Function(Query$GetLanguages$languages) then,
  ) = _CopyWithImpl$Query$GetLanguages$languages;

  factory CopyWith$Query$GetLanguages$languages.stub(TRes res) =
      _CopyWithStubImpl$Query$GetLanguages$languages;

  TRes call({String? name, String? value, String? $__typename});
}

class _CopyWithImpl$Query$GetLanguages$languages<TRes>
    implements CopyWith$Query$GetLanguages$languages<TRes> {
  _CopyWithImpl$Query$GetLanguages$languages(this._instance, this._then);

  final Query$GetLanguages$languages _instance;

  final TRes Function(Query$GetLanguages$languages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetLanguages$languages(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetLanguages$languages<TRes>
    implements CopyWith$Query$GetLanguages$languages<TRes> {
  _CopyWithStubImpl$Query$GetLanguages$languages(this._res);

  TRes _res;

  call({String? name, String? value, String? $__typename}) => _res;
}
