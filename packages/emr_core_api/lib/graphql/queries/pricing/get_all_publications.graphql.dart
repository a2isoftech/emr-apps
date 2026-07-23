import 'package:gql/ast.dart';

class Query$GetAllPublications {
  Query$GetAllPublications({
    required this.publications,
    this.$__typename = 'Query',
  });

  factory Query$GetAllPublications.fromJson(Map<String, dynamic> json) {
    final l$publications = json['publications'];
    final l$$__typename = json['__typename'];
    return Query$GetAllPublications(
      publications: (l$publications as List<dynamic>)
          .map(
            (e) => Query$GetAllPublications$publications.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllPublications$publications> publications;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$publications = publications;
    _resultData['publications'] = l$publications
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$publications = publications;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$publications.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllPublications ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$publications = publications;
    final lOther$publications = other.publications;
    if (l$publications.length != lOther$publications.length) {
      return false;
    }
    for (int i = 0; i < l$publications.length; i++) {
      final l$publications$entry = l$publications[i];
      final lOther$publications$entry = lOther$publications[i];
      if (l$publications$entry != lOther$publications$entry) {
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

extension UtilityExtension$Query$GetAllPublications
    on Query$GetAllPublications {
  CopyWith$Query$GetAllPublications<Query$GetAllPublications> get copyWith =>
      CopyWith$Query$GetAllPublications(this, (i) => i);
}

abstract class CopyWith$Query$GetAllPublications<TRes> {
  factory CopyWith$Query$GetAllPublications(
    Query$GetAllPublications instance,
    TRes Function(Query$GetAllPublications) then,
  ) = _CopyWithImpl$Query$GetAllPublications;

  factory CopyWith$Query$GetAllPublications.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllPublications;

  TRes call({
    List<Query$GetAllPublications$publications>? publications,
    String? $__typename,
  });
  TRes publications(
    Iterable<Query$GetAllPublications$publications> Function(
      Iterable<
        CopyWith$Query$GetAllPublications$publications<
          Query$GetAllPublications$publications
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAllPublications<TRes>
    implements CopyWith$Query$GetAllPublications<TRes> {
  _CopyWithImpl$Query$GetAllPublications(this._instance, this._then);

  final Query$GetAllPublications _instance;

  final TRes Function(Query$GetAllPublications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? publications = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllPublications(
      publications: publications == _undefined || publications == null
          ? _instance.publications
          : (publications as List<Query$GetAllPublications$publications>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes publications(
    Iterable<Query$GetAllPublications$publications> Function(
      Iterable<
        CopyWith$Query$GetAllPublications$publications<
          Query$GetAllPublications$publications
        >
      >,
    )
    _fn,
  ) => call(
    publications: _fn(
      _instance.publications.map(
        (e) => CopyWith$Query$GetAllPublications$publications(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAllPublications<TRes>
    implements CopyWith$Query$GetAllPublications<TRes> {
  _CopyWithStubImpl$Query$GetAllPublications(this._res);

  TRes _res;

  call({
    List<Query$GetAllPublications$publications>? publications,
    String? $__typename,
  }) => _res;

  publications(_fn) => _res;
}

const documentNodeQueryGetAllPublications = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAllPublications'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'publications'),
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

class Query$GetAllPublications$publications {
  Query$GetAllPublications$publications({
    required this.id,
    required this.name,
    this.$__typename = 'Publication',
  });

  factory Query$GetAllPublications$publications.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetAllPublications$publications(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllPublications$publications ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetAllPublications$publications
    on Query$GetAllPublications$publications {
  CopyWith$Query$GetAllPublications$publications<
    Query$GetAllPublications$publications
  >
  get copyWith =>
      CopyWith$Query$GetAllPublications$publications(this, (i) => i);
}

abstract class CopyWith$Query$GetAllPublications$publications<TRes> {
  factory CopyWith$Query$GetAllPublications$publications(
    Query$GetAllPublications$publications instance,
    TRes Function(Query$GetAllPublications$publications) then,
  ) = _CopyWithImpl$Query$GetAllPublications$publications;

  factory CopyWith$Query$GetAllPublications$publications.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllPublications$publications;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$GetAllPublications$publications<TRes>
    implements CopyWith$Query$GetAllPublications$publications<TRes> {
  _CopyWithImpl$Query$GetAllPublications$publications(
    this._instance,
    this._then,
  );

  final Query$GetAllPublications$publications _instance;

  final TRes Function(Query$GetAllPublications$publications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllPublications$publications(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAllPublications$publications<TRes>
    implements CopyWith$Query$GetAllPublications$publications<TRes> {
  _CopyWithStubImpl$Query$GetAllPublications$publications(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}
