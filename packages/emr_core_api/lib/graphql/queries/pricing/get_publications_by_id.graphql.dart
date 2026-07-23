import 'package:gql/ast.dart';

class Variables$Query$GetPublicationsById {
  factory Variables$Query$GetPublicationsById({List<String>? publicationIds}) =>
      Variables$Query$GetPublicationsById._({
        if (publicationIds != null) r'publicationIds': publicationIds,
      });

  Variables$Query$GetPublicationsById._(this._$data);

  factory Variables$Query$GetPublicationsById.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('publicationIds')) {
      final l$publicationIds = data['publicationIds'];
      result$data['publicationIds'] = (l$publicationIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Variables$Query$GetPublicationsById._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get publicationIds =>
      (_$data['publicationIds'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('publicationIds')) {
      final l$publicationIds = publicationIds;
      result$data['publicationIds'] = l$publicationIds?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetPublicationsById<
    Variables$Query$GetPublicationsById
  >
  get copyWith => CopyWith$Variables$Query$GetPublicationsById(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetPublicationsById ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$publicationIds = publicationIds;
    final lOther$publicationIds = other.publicationIds;
    if (_$data.containsKey('publicationIds') !=
        other._$data.containsKey('publicationIds')) {
      return false;
    }
    if (l$publicationIds != null && lOther$publicationIds != null) {
      if (l$publicationIds.length != lOther$publicationIds.length) {
        return false;
      }
      for (int i = 0; i < l$publicationIds.length; i++) {
        final l$publicationIds$entry = l$publicationIds[i];
        final lOther$publicationIds$entry = lOther$publicationIds[i];
        if (l$publicationIds$entry != lOther$publicationIds$entry) {
          return false;
        }
      }
    } else if (l$publicationIds != lOther$publicationIds) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$publicationIds = publicationIds;
    return Object.hashAll([
      _$data.containsKey('publicationIds')
          ? l$publicationIds == null
                ? null
                : Object.hashAll(l$publicationIds.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetPublicationsById<TRes> {
  factory CopyWith$Variables$Query$GetPublicationsById(
    Variables$Query$GetPublicationsById instance,
    TRes Function(Variables$Query$GetPublicationsById) then,
  ) = _CopyWithImpl$Variables$Query$GetPublicationsById;

  factory CopyWith$Variables$Query$GetPublicationsById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetPublicationsById;

  TRes call({List<String>? publicationIds});
}

class _CopyWithImpl$Variables$Query$GetPublicationsById<TRes>
    implements CopyWith$Variables$Query$GetPublicationsById<TRes> {
  _CopyWithImpl$Variables$Query$GetPublicationsById(this._instance, this._then);

  final Variables$Query$GetPublicationsById _instance;

  final TRes Function(Variables$Query$GetPublicationsById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? publicationIds = _undefined}) => _then(
    Variables$Query$GetPublicationsById._({
      ..._instance._$data,
      if (publicationIds != _undefined)
        'publicationIds': (publicationIds as List<String>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetPublicationsById<TRes>
    implements CopyWith$Variables$Query$GetPublicationsById<TRes> {
  _CopyWithStubImpl$Variables$Query$GetPublicationsById(this._res);

  TRes _res;

  call({List<String>? publicationIds}) => _res;
}

class Query$GetPublicationsById {
  Query$GetPublicationsById({
    required this.publications,
    this.$__typename = 'Query',
  });

  factory Query$GetPublicationsById.fromJson(Map<String, dynamic> json) {
    final l$publications = json['publications'];
    final l$$__typename = json['__typename'];
    return Query$GetPublicationsById(
      publications: (l$publications as List<dynamic>)
          .map(
            (e) => Query$GetPublicationsById$publications.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetPublicationsById$publications> publications;

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
    if (other is! Query$GetPublicationsById ||
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

extension UtilityExtension$Query$GetPublicationsById
    on Query$GetPublicationsById {
  CopyWith$Query$GetPublicationsById<Query$GetPublicationsById> get copyWith =>
      CopyWith$Query$GetPublicationsById(this, (i) => i);
}

abstract class CopyWith$Query$GetPublicationsById<TRes> {
  factory CopyWith$Query$GetPublicationsById(
    Query$GetPublicationsById instance,
    TRes Function(Query$GetPublicationsById) then,
  ) = _CopyWithImpl$Query$GetPublicationsById;

  factory CopyWith$Query$GetPublicationsById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPublicationsById;

  TRes call({
    List<Query$GetPublicationsById$publications>? publications,
    String? $__typename,
  });
  TRes publications(
    Iterable<Query$GetPublicationsById$publications> Function(
      Iterable<
        CopyWith$Query$GetPublicationsById$publications<
          Query$GetPublicationsById$publications
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetPublicationsById<TRes>
    implements CopyWith$Query$GetPublicationsById<TRes> {
  _CopyWithImpl$Query$GetPublicationsById(this._instance, this._then);

  final Query$GetPublicationsById _instance;

  final TRes Function(Query$GetPublicationsById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? publications = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPublicationsById(
      publications: publications == _undefined || publications == null
          ? _instance.publications
          : (publications as List<Query$GetPublicationsById$publications>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes publications(
    Iterable<Query$GetPublicationsById$publications> Function(
      Iterable<
        CopyWith$Query$GetPublicationsById$publications<
          Query$GetPublicationsById$publications
        >
      >,
    )
    _fn,
  ) => call(
    publications: _fn(
      _instance.publications.map(
        (e) => CopyWith$Query$GetPublicationsById$publications(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetPublicationsById<TRes>
    implements CopyWith$Query$GetPublicationsById<TRes> {
  _CopyWithStubImpl$Query$GetPublicationsById(this._res);

  TRes _res;

  call({
    List<Query$GetPublicationsById$publications>? publications,
    String? $__typename,
  }) => _res;

  publications(_fn) => _res;
}

const documentNodeQueryGetPublicationsById = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetPublicationsById'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'publicationIds')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
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
            name: NameNode(value: 'publications'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'publicationIds'),
                value: VariableNode(name: NameNode(value: 'publicationIds')),
              ),
            ],
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
                  name: NameNode(value: 'availableProducts'),
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
                        name: NameNode(value: 'description'),
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
                  name: NameNode(value: 'availableYards'),
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
                        name: NameNode(value: 'yardCode'),
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

class Query$GetPublicationsById$publications {
  Query$GetPublicationsById$publications({
    required this.id,
    required this.name,
    required this.availableProducts,
    required this.availableYards,
    this.$__typename = 'Publication',
  });

  factory Query$GetPublicationsById$publications.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$availableProducts = json['availableProducts'];
    final l$availableYards = json['availableYards'];
    final l$$__typename = json['__typename'];
    return Query$GetPublicationsById$publications(
      id: (l$id as String),
      name: (l$name as String),
      availableProducts: (l$availableProducts as List<dynamic>)
          .map(
            (e) =>
                Query$GetPublicationsById$publications$availableProducts.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      availableYards: (l$availableYards as List<dynamic>)
          .map(
            (e) =>
                Query$GetPublicationsById$publications$availableYards.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final List<Query$GetPublicationsById$publications$availableProducts>
  availableProducts;

  final List<Query$GetPublicationsById$publications$availableYards>
  availableYards;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$availableProducts = availableProducts;
    _resultData['availableProducts'] = l$availableProducts
        .map((e) => e.toJson())
        .toList();
    final l$availableYards = availableYards;
    _resultData['availableYards'] = l$availableYards
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$availableProducts = availableProducts;
    final l$availableYards = availableYards;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      Object.hashAll(l$availableProducts.map((v) => v)),
      Object.hashAll(l$availableYards.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPublicationsById$publications ||
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
    final l$availableProducts = availableProducts;
    final lOther$availableProducts = other.availableProducts;
    if (l$availableProducts.length != lOther$availableProducts.length) {
      return false;
    }
    for (int i = 0; i < l$availableProducts.length; i++) {
      final l$availableProducts$entry = l$availableProducts[i];
      final lOther$availableProducts$entry = lOther$availableProducts[i];
      if (l$availableProducts$entry != lOther$availableProducts$entry) {
        return false;
      }
    }
    final l$availableYards = availableYards;
    final lOther$availableYards = other.availableYards;
    if (l$availableYards.length != lOther$availableYards.length) {
      return false;
    }
    for (int i = 0; i < l$availableYards.length; i++) {
      final l$availableYards$entry = l$availableYards[i];
      final lOther$availableYards$entry = lOther$availableYards[i];
      if (l$availableYards$entry != lOther$availableYards$entry) {
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

extension UtilityExtension$Query$GetPublicationsById$publications
    on Query$GetPublicationsById$publications {
  CopyWith$Query$GetPublicationsById$publications<
    Query$GetPublicationsById$publications
  >
  get copyWith =>
      CopyWith$Query$GetPublicationsById$publications(this, (i) => i);
}

abstract class CopyWith$Query$GetPublicationsById$publications<TRes> {
  factory CopyWith$Query$GetPublicationsById$publications(
    Query$GetPublicationsById$publications instance,
    TRes Function(Query$GetPublicationsById$publications) then,
  ) = _CopyWithImpl$Query$GetPublicationsById$publications;

  factory CopyWith$Query$GetPublicationsById$publications.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPublicationsById$publications;

  TRes call({
    String? id,
    String? name,
    List<Query$GetPublicationsById$publications$availableProducts>?
    availableProducts,
    List<Query$GetPublicationsById$publications$availableYards>? availableYards,
    String? $__typename,
  });
  TRes availableProducts(
    Iterable<Query$GetPublicationsById$publications$availableProducts> Function(
      Iterable<
        CopyWith$Query$GetPublicationsById$publications$availableProducts<
          Query$GetPublicationsById$publications$availableProducts
        >
      >,
    )
    _fn,
  );
  TRes availableYards(
    Iterable<Query$GetPublicationsById$publications$availableYards> Function(
      Iterable<
        CopyWith$Query$GetPublicationsById$publications$availableYards<
          Query$GetPublicationsById$publications$availableYards
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetPublicationsById$publications<TRes>
    implements CopyWith$Query$GetPublicationsById$publications<TRes> {
  _CopyWithImpl$Query$GetPublicationsById$publications(
    this._instance,
    this._then,
  );

  final Query$GetPublicationsById$publications _instance;

  final TRes Function(Query$GetPublicationsById$publications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? availableProducts = _undefined,
    Object? availableYards = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPublicationsById$publications(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      availableProducts:
          availableProducts == _undefined || availableProducts == null
          ? _instance.availableProducts
          : (availableProducts
                as List<
                  Query$GetPublicationsById$publications$availableProducts
                >),
      availableYards: availableYards == _undefined || availableYards == null
          ? _instance.availableYards
          : (availableYards
                as List<Query$GetPublicationsById$publications$availableYards>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes availableProducts(
    Iterable<Query$GetPublicationsById$publications$availableProducts> Function(
      Iterable<
        CopyWith$Query$GetPublicationsById$publications$availableProducts<
          Query$GetPublicationsById$publications$availableProducts
        >
      >,
    )
    _fn,
  ) => call(
    availableProducts: _fn(
      _instance.availableProducts.map(
        (e) =>
            CopyWith$Query$GetPublicationsById$publications$availableProducts(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes availableYards(
    Iterable<Query$GetPublicationsById$publications$availableYards> Function(
      Iterable<
        CopyWith$Query$GetPublicationsById$publications$availableYards<
          Query$GetPublicationsById$publications$availableYards
        >
      >,
    )
    _fn,
  ) => call(
    availableYards: _fn(
      _instance.availableYards.map(
        (e) => CopyWith$Query$GetPublicationsById$publications$availableYards(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetPublicationsById$publications<TRes>
    implements CopyWith$Query$GetPublicationsById$publications<TRes> {
  _CopyWithStubImpl$Query$GetPublicationsById$publications(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    List<Query$GetPublicationsById$publications$availableProducts>?
    availableProducts,
    List<Query$GetPublicationsById$publications$availableYards>? availableYards,
    String? $__typename,
  }) => _res;

  availableProducts(_fn) => _res;

  availableYards(_fn) => _res;
}

class Query$GetPublicationsById$publications$availableProducts {
  Query$GetPublicationsById$publications$availableProducts({
    required this.id,
    required this.code,
    required this.description,
    this.$__typename = 'Product',
  });

  factory Query$GetPublicationsById$publications$availableProducts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetPublicationsById$publications$availableProducts(
      id: (l$id as String),
      code: (l$code as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$code, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPublicationsById$publications$availableProducts ||
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtension$Query$GetPublicationsById$publications$availableProducts
    on Query$GetPublicationsById$publications$availableProducts {
  CopyWith$Query$GetPublicationsById$publications$availableProducts<
    Query$GetPublicationsById$publications$availableProducts
  >
  get copyWith =>
      CopyWith$Query$GetPublicationsById$publications$availableProducts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPublicationsById$publications$availableProducts<
  TRes
> {
  factory CopyWith$Query$GetPublicationsById$publications$availableProducts(
    Query$GetPublicationsById$publications$availableProducts instance,
    TRes Function(Query$GetPublicationsById$publications$availableProducts)
    then,
  ) = _CopyWithImpl$Query$GetPublicationsById$publications$availableProducts;

  factory CopyWith$Query$GetPublicationsById$publications$availableProducts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetPublicationsById$publications$availableProducts;

  TRes call({
    String? id,
    String? code,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPublicationsById$publications$availableProducts<
  TRes
>
    implements
        CopyWith$Query$GetPublicationsById$publications$availableProducts<
          TRes
        > {
  _CopyWithImpl$Query$GetPublicationsById$publications$availableProducts(
    this._instance,
    this._then,
  );

  final Query$GetPublicationsById$publications$availableProducts _instance;

  final TRes Function(Query$GetPublicationsById$publications$availableProducts)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPublicationsById$publications$availableProducts(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetPublicationsById$publications$availableProducts<
  TRes
>
    implements
        CopyWith$Query$GetPublicationsById$publications$availableProducts<
          TRes
        > {
  _CopyWithStubImpl$Query$GetPublicationsById$publications$availableProducts(
    this._res,
  );

  TRes _res;

  call({String? id, String? code, String? description, String? $__typename}) =>
      _res;
}

class Query$GetPublicationsById$publications$availableYards {
  Query$GetPublicationsById$publications$availableYards({
    required this.id,
    required this.name,
    required this.yardCode,
    this.$__typename = 'Yard',
  });

  factory Query$GetPublicationsById$publications$availableYards.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$$__typename = json['__typename'];
    return Query$GetPublicationsById$publications$availableYards(
      id: (l$id as String),
      name: (l$name as String),
      yardCode: (l$yardCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String yardCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$yardCode = yardCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$yardCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPublicationsById$publications$availableYards ||
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
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
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

extension UtilityExtension$Query$GetPublicationsById$publications$availableYards
    on Query$GetPublicationsById$publications$availableYards {
  CopyWith$Query$GetPublicationsById$publications$availableYards<
    Query$GetPublicationsById$publications$availableYards
  >
  get copyWith =>
      CopyWith$Query$GetPublicationsById$publications$availableYards(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPublicationsById$publications$availableYards<
  TRes
> {
  factory CopyWith$Query$GetPublicationsById$publications$availableYards(
    Query$GetPublicationsById$publications$availableYards instance,
    TRes Function(Query$GetPublicationsById$publications$availableYards) then,
  ) = _CopyWithImpl$Query$GetPublicationsById$publications$availableYards;

  factory CopyWith$Query$GetPublicationsById$publications$availableYards.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetPublicationsById$publications$availableYards;

  TRes call({String? id, String? name, String? yardCode, String? $__typename});
}

class _CopyWithImpl$Query$GetPublicationsById$publications$availableYards<TRes>
    implements
        CopyWith$Query$GetPublicationsById$publications$availableYards<TRes> {
  _CopyWithImpl$Query$GetPublicationsById$publications$availableYards(
    this._instance,
    this._then,
  );

  final Query$GetPublicationsById$publications$availableYards _instance;

  final TRes Function(Query$GetPublicationsById$publications$availableYards)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPublicationsById$publications$availableYards(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetPublicationsById$publications$availableYards<
  TRes
>
    implements
        CopyWith$Query$GetPublicationsById$publications$availableYards<TRes> {
  _CopyWithStubImpl$Query$GetPublicationsById$publications$availableYards(
    this._res,
  );

  TRes _res;

  call({String? id, String? name, String? yardCode, String? $__typename}) =>
      _res;
}
