import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchSuggestionCompanies {
  factory Variables$Query$SearchSuggestionCompanies({
    Input$SearchCompanyInput? input,
  }) => Variables$Query$SearchSuggestionCompanies._({
    if (input != null) r'input': input,
  });

  Variables$Query$SearchSuggestionCompanies._(this._$data);

  factory Variables$Query$SearchSuggestionCompanies.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$SearchCompanyInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
    return Variables$Query$SearchSuggestionCompanies._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchCompanyInput? get input =>
      (_$data['input'] as Input$SearchCompanyInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$SearchSuggestionCompanies<
    Variables$Query$SearchSuggestionCompanies
  >
  get copyWith =>
      CopyWith$Variables$Query$SearchSuggestionCompanies(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchSuggestionCompanies ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([_$data.containsKey('input') ? l$input : const {}]);
  }
}

abstract class CopyWith$Variables$Query$SearchSuggestionCompanies<TRes> {
  factory CopyWith$Variables$Query$SearchSuggestionCompanies(
    Variables$Query$SearchSuggestionCompanies instance,
    TRes Function(Variables$Query$SearchSuggestionCompanies) then,
  ) = _CopyWithImpl$Variables$Query$SearchSuggestionCompanies;

  factory CopyWith$Variables$Query$SearchSuggestionCompanies.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchSuggestionCompanies;

  TRes call({Input$SearchCompanyInput? input});
}

class _CopyWithImpl$Variables$Query$SearchSuggestionCompanies<TRes>
    implements CopyWith$Variables$Query$SearchSuggestionCompanies<TRes> {
  _CopyWithImpl$Variables$Query$SearchSuggestionCompanies(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchSuggestionCompanies _instance;

  final TRes Function(Variables$Query$SearchSuggestionCompanies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$SearchSuggestionCompanies._({
      ..._instance._$data,
      if (input != _undefined) 'input': (input as Input$SearchCompanyInput?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchSuggestionCompanies<TRes>
    implements CopyWith$Variables$Query$SearchSuggestionCompanies<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchSuggestionCompanies(this._res);

  TRes _res;

  call({Input$SearchCompanyInput? input}) => _res;
}

class Query$SearchSuggestionCompanies {
  Query$SearchSuggestionCompanies({this.companies, this.$__typename = 'Query'});

  factory Query$SearchSuggestionCompanies.fromJson(Map<String, dynamic> json) {
    final l$companies = json['companies'];
    final l$$__typename = json['__typename'];
    return Query$SearchSuggestionCompanies(
      companies: l$companies == null
          ? null
          : Query$SearchSuggestionCompanies$companies.fromJson(
              (l$companies as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchSuggestionCompanies$companies? companies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$companies = companies;
    _resultData['companies'] = l$companies?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$companies = companies;
    final l$$__typename = $__typename;
    return Object.hashAll([l$companies, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchSuggestionCompanies ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$companies = companies;
    final lOther$companies = other.companies;
    if (l$companies != lOther$companies) {
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

extension UtilityExtension$Query$SearchSuggestionCompanies
    on Query$SearchSuggestionCompanies {
  CopyWith$Query$SearchSuggestionCompanies<Query$SearchSuggestionCompanies>
  get copyWith => CopyWith$Query$SearchSuggestionCompanies(this, (i) => i);
}

abstract class CopyWith$Query$SearchSuggestionCompanies<TRes> {
  factory CopyWith$Query$SearchSuggestionCompanies(
    Query$SearchSuggestionCompanies instance,
    TRes Function(Query$SearchSuggestionCompanies) then,
  ) = _CopyWithImpl$Query$SearchSuggestionCompanies;

  factory CopyWith$Query$SearchSuggestionCompanies.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchSuggestionCompanies;

  TRes call({
    Query$SearchSuggestionCompanies$companies? companies,
    String? $__typename,
  });
  CopyWith$Query$SearchSuggestionCompanies$companies<TRes> get companies;
}

class _CopyWithImpl$Query$SearchSuggestionCompanies<TRes>
    implements CopyWith$Query$SearchSuggestionCompanies<TRes> {
  _CopyWithImpl$Query$SearchSuggestionCompanies(this._instance, this._then);

  final Query$SearchSuggestionCompanies _instance;

  final TRes Function(Query$SearchSuggestionCompanies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? companies = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchSuggestionCompanies(
      companies: companies == _undefined
          ? _instance.companies
          : (companies as Query$SearchSuggestionCompanies$companies?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SearchSuggestionCompanies$companies<TRes> get companies {
    final local$companies = _instance.companies;
    return local$companies == null
        ? CopyWith$Query$SearchSuggestionCompanies$companies.stub(
            _then(_instance),
          )
        : CopyWith$Query$SearchSuggestionCompanies$companies(
            local$companies,
            (e) => call(companies: e),
          );
  }
}

class _CopyWithStubImpl$Query$SearchSuggestionCompanies<TRes>
    implements CopyWith$Query$SearchSuggestionCompanies<TRes> {
  _CopyWithStubImpl$Query$SearchSuggestionCompanies(this._res);

  TRes _res;

  call({
    Query$SearchSuggestionCompanies$companies? companies,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SearchSuggestionCompanies$companies<TRes> get companies =>
      CopyWith$Query$SearchSuggestionCompanies$companies.stub(_res);
}

const documentNodeQuerySearchSuggestionCompanies = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchSuggestionCompanies'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SearchCompanyInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'companies'),
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
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'shortName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'fullName'),
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
  ],
);

class Query$SearchSuggestionCompanies$companies {
  Query$SearchSuggestionCompanies$companies({
    this.nodes,
    this.$__typename = 'CompaniesConnection',
  });

  factory Query$SearchSuggestionCompanies$companies.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SearchSuggestionCompanies$companies(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$SearchSuggestionCompanies$companies$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchSuggestionCompanies$companies$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchSuggestionCompanies$companies ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$SearchSuggestionCompanies$companies
    on Query$SearchSuggestionCompanies$companies {
  CopyWith$Query$SearchSuggestionCompanies$companies<
    Query$SearchSuggestionCompanies$companies
  >
  get copyWith =>
      CopyWith$Query$SearchSuggestionCompanies$companies(this, (i) => i);
}

abstract class CopyWith$Query$SearchSuggestionCompanies$companies<TRes> {
  factory CopyWith$Query$SearchSuggestionCompanies$companies(
    Query$SearchSuggestionCompanies$companies instance,
    TRes Function(Query$SearchSuggestionCompanies$companies) then,
  ) = _CopyWithImpl$Query$SearchSuggestionCompanies$companies;

  factory CopyWith$Query$SearchSuggestionCompanies$companies.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchSuggestionCompanies$companies;

  TRes call({
    List<Query$SearchSuggestionCompanies$companies$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$SearchSuggestionCompanies$companies$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchSuggestionCompanies$companies$nodes<
          Query$SearchSuggestionCompanies$companies$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchSuggestionCompanies$companies<TRes>
    implements CopyWith$Query$SearchSuggestionCompanies$companies<TRes> {
  _CopyWithImpl$Query$SearchSuggestionCompanies$companies(
    this._instance,
    this._then,
  );

  final Query$SearchSuggestionCompanies$companies _instance;

  final TRes Function(Query$SearchSuggestionCompanies$companies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? nodes = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$SearchSuggestionCompanies$companies(
          nodes: nodes == _undefined
              ? _instance.nodes
              : (nodes
                    as List<Query$SearchSuggestionCompanies$companies$nodes>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes nodes(
    Iterable<Query$SearchSuggestionCompanies$companies$nodes>? Function(
      Iterable<
        CopyWith$Query$SearchSuggestionCompanies$companies$nodes<
          Query$SearchSuggestionCompanies$companies$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$SearchSuggestionCompanies$companies$nodes(
          e,
          (i) => i,
        ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$SearchSuggestionCompanies$companies<TRes>
    implements CopyWith$Query$SearchSuggestionCompanies$companies<TRes> {
  _CopyWithStubImpl$Query$SearchSuggestionCompanies$companies(this._res);

  TRes _res;

  call({
    List<Query$SearchSuggestionCompanies$companies$nodes>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SearchSuggestionCompanies$companies$nodes {
  Query$SearchSuggestionCompanies$companies$nodes({
    required this.id,
    required this.code,
    required this.shortName,
    required this.fullName,
    this.$__typename = 'Company',
  });

  factory Query$SearchSuggestionCompanies$companies$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$shortName = json['shortName'];
    final l$fullName = json['fullName'];
    final l$$__typename = json['__typename'];
    return Query$SearchSuggestionCompanies$companies$nodes(
      id: (l$id as String),
      code: (l$code as String),
      shortName: (l$shortName as String),
      fullName: (l$fullName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String shortName;

  final String fullName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$shortName = shortName;
    _resultData['shortName'] = l$shortName;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$shortName = shortName;
    final l$fullName = fullName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$shortName,
      l$fullName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchSuggestionCompanies$companies$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$shortName = shortName;
    final lOther$shortName = other.shortName;
    if (l$shortName != lOther$shortName) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
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

extension UtilityExtension$Query$SearchSuggestionCompanies$companies$nodes
    on Query$SearchSuggestionCompanies$companies$nodes {
  CopyWith$Query$SearchSuggestionCompanies$companies$nodes<
    Query$SearchSuggestionCompanies$companies$nodes
  >
  get copyWith =>
      CopyWith$Query$SearchSuggestionCompanies$companies$nodes(this, (i) => i);
}

abstract class CopyWith$Query$SearchSuggestionCompanies$companies$nodes<TRes> {
  factory CopyWith$Query$SearchSuggestionCompanies$companies$nodes(
    Query$SearchSuggestionCompanies$companies$nodes instance,
    TRes Function(Query$SearchSuggestionCompanies$companies$nodes) then,
  ) = _CopyWithImpl$Query$SearchSuggestionCompanies$companies$nodes;

  factory CopyWith$Query$SearchSuggestionCompanies$companies$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchSuggestionCompanies$companies$nodes;

  TRes call({
    String? id,
    String? code,
    String? shortName,
    String? fullName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchSuggestionCompanies$companies$nodes<TRes>
    implements CopyWith$Query$SearchSuggestionCompanies$companies$nodes<TRes> {
  _CopyWithImpl$Query$SearchSuggestionCompanies$companies$nodes(
    this._instance,
    this._then,
  );

  final Query$SearchSuggestionCompanies$companies$nodes _instance;

  final TRes Function(Query$SearchSuggestionCompanies$companies$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? shortName = _undefined,
    Object? fullName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchSuggestionCompanies$companies$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      shortName: shortName == _undefined || shortName == null
          ? _instance.shortName
          : (shortName as String),
      fullName: fullName == _undefined || fullName == null
          ? _instance.fullName
          : (fullName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchSuggestionCompanies$companies$nodes<TRes>
    implements CopyWith$Query$SearchSuggestionCompanies$companies$nodes<TRes> {
  _CopyWithStubImpl$Query$SearchSuggestionCompanies$companies$nodes(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    String? shortName,
    String? fullName,
    String? $__typename,
  }) => _res;
}
