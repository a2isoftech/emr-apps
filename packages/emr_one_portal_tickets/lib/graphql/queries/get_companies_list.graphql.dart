import 'package:gql/ast.dart';

class Query$Companies {
  Query$Companies({
    required this.companies,
    this.$__typename = 'Query',
  });

  factory Query$Companies.fromJson(Map<String, dynamic> json) {
    final l$companies = json['companies'];
    final l$$__typename = json['__typename'];
    return Query$Companies(
      companies: (l$companies as List<dynamic>)
          .map((e) =>
              Query$Companies$companies.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Companies$companies> companies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$companies = companies;
    _resultData['companies'] = l$companies.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$companies = companies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$companies.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Companies || runtimeType != other.runtimeType) {
      return false;
    }
    final l$companies = companies;
    final lOther$companies = other.companies;
    if (l$companies.length != lOther$companies.length) {
      return false;
    }
    for (int i = 0; i < l$companies.length; i++) {
      final l$companies$entry = l$companies[i];
      final lOther$companies$entry = lOther$companies[i];
      if (l$companies$entry != lOther$companies$entry) {
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

extension UtilityExtension$Query$Companies on Query$Companies {
  CopyWith$Query$Companies<Query$Companies> get copyWith =>
      CopyWith$Query$Companies(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Companies<TRes> {
  factory CopyWith$Query$Companies(
    Query$Companies instance,
    TRes Function(Query$Companies) then,
  ) = _CopyWithImpl$Query$Companies;

  factory CopyWith$Query$Companies.stub(TRes res) =
      _CopyWithStubImpl$Query$Companies;

  TRes call({
    List<Query$Companies$companies>? companies,
    String? $__typename,
  });
  TRes companies(
      Iterable<Query$Companies$companies> Function(
              Iterable<
                  CopyWith$Query$Companies$companies<
                      Query$Companies$companies>>)
          _fn);
}

class _CopyWithImpl$Query$Companies<TRes>
    implements CopyWith$Query$Companies<TRes> {
  _CopyWithImpl$Query$Companies(
    this._instance,
    this._then,
  );

  final Query$Companies _instance;

  final TRes Function(Query$Companies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? companies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Companies(
        companies: companies == _undefined || companies == null
            ? _instance.companies
            : (companies as List<Query$Companies$companies>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes companies(
          Iterable<Query$Companies$companies> Function(
                  Iterable<
                      CopyWith$Query$Companies$companies<
                          Query$Companies$companies>>)
              _fn) =>
      call(
          companies: _fn(
              _instance.companies.map((e) => CopyWith$Query$Companies$companies(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Companies<TRes>
    implements CopyWith$Query$Companies<TRes> {
  _CopyWithStubImpl$Query$Companies(this._res);

  TRes _res;

  call({
    List<Query$Companies$companies>? companies,
    String? $__typename,
  }) =>
      _res;

  companies(_fn) => _res;
}

const documentNodeQueryCompanies = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Companies'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'companies'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'code'),
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$Companies$companies {
  Query$Companies$companies({
    required this.code,
    required this.fullName,
    this.$__typename = 'Company',
  });

  factory Query$Companies$companies.fromJson(Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$fullName = json['fullName'];
    final l$$__typename = json['__typename'];
    return Query$Companies$companies(
      code: (l$code as String),
      fullName: (l$fullName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String fullName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$fullName = fullName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$fullName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Companies$companies ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$Companies$companies
    on Query$Companies$companies {
  CopyWith$Query$Companies$companies<Query$Companies$companies> get copyWith =>
      CopyWith$Query$Companies$companies(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Companies$companies<TRes> {
  factory CopyWith$Query$Companies$companies(
    Query$Companies$companies instance,
    TRes Function(Query$Companies$companies) then,
  ) = _CopyWithImpl$Query$Companies$companies;

  factory CopyWith$Query$Companies$companies.stub(TRes res) =
      _CopyWithStubImpl$Query$Companies$companies;

  TRes call({
    String? code,
    String? fullName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Companies$companies<TRes>
    implements CopyWith$Query$Companies$companies<TRes> {
  _CopyWithImpl$Query$Companies$companies(
    this._instance,
    this._then,
  );

  final Query$Companies$companies _instance;

  final TRes Function(Query$Companies$companies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? fullName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Companies$companies(
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        fullName: fullName == _undefined || fullName == null
            ? _instance.fullName
            : (fullName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Companies$companies<TRes>
    implements CopyWith$Query$Companies$companies<TRes> {
  _CopyWithStubImpl$Query$Companies$companies(this._res);

  TRes _res;

  call({
    String? code,
    String? fullName,
    String? $__typename,
  }) =>
      _res;
}
