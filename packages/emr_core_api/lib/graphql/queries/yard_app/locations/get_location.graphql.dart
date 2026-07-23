import 'package:gql/ast.dart';

class Variables$Query$Location {
  factory Variables$Query$Location({required String id}) =>
      Variables$Query$Location._({r'id': id});

  Variables$Query$Location._(this._$data);

  factory Variables$Query$Location.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$Location._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$Location<Variables$Query$Location> get copyWith =>
      CopyWith$Variables$Query$Location(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Location ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$Location<TRes> {
  factory CopyWith$Variables$Query$Location(
    Variables$Query$Location instance,
    TRes Function(Variables$Query$Location) then,
  ) = _CopyWithImpl$Variables$Query$Location;

  factory CopyWith$Variables$Query$Location.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Location;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$Location<TRes>
    implements CopyWith$Variables$Query$Location<TRes> {
  _CopyWithImpl$Variables$Query$Location(this._instance, this._then);

  final Variables$Query$Location _instance;

  final TRes Function(Variables$Query$Location) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$Location._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$Location<TRes>
    implements CopyWith$Variables$Query$Location<TRes> {
  _CopyWithStubImpl$Variables$Query$Location(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$Location {
  Query$Location({required this.inventoryLocation, this.$__typename = 'Query'});

  factory Query$Location.fromJson(Map<String, dynamic> json) {
    final l$inventoryLocation = json['inventoryLocation'];
    final l$$__typename = json['__typename'];
    return Query$Location(
      inventoryLocation: Query$Location$inventoryLocation.fromJson(
        (l$inventoryLocation as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Location$inventoryLocation inventoryLocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$inventoryLocation = inventoryLocation;
    _resultData['inventoryLocation'] = l$inventoryLocation.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$inventoryLocation = inventoryLocation;
    final l$$__typename = $__typename;
    return Object.hashAll([l$inventoryLocation, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Location || runtimeType != other.runtimeType) {
      return false;
    }
    final l$inventoryLocation = inventoryLocation;
    final lOther$inventoryLocation = other.inventoryLocation;
    if (l$inventoryLocation != lOther$inventoryLocation) {
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

extension UtilityExtension$Query$Location on Query$Location {
  CopyWith$Query$Location<Query$Location> get copyWith =>
      CopyWith$Query$Location(this, (i) => i);
}

abstract class CopyWith$Query$Location<TRes> {
  factory CopyWith$Query$Location(
    Query$Location instance,
    TRes Function(Query$Location) then,
  ) = _CopyWithImpl$Query$Location;

  factory CopyWith$Query$Location.stub(TRes res) =
      _CopyWithStubImpl$Query$Location;

  TRes call({
    Query$Location$inventoryLocation? inventoryLocation,
    String? $__typename,
  });
  CopyWith$Query$Location$inventoryLocation<TRes> get inventoryLocation;
}

class _CopyWithImpl$Query$Location<TRes>
    implements CopyWith$Query$Location<TRes> {
  _CopyWithImpl$Query$Location(this._instance, this._then);

  final Query$Location _instance;

  final TRes Function(Query$Location) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? inventoryLocation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Location(
      inventoryLocation:
          inventoryLocation == _undefined || inventoryLocation == null
          ? _instance.inventoryLocation
          : (inventoryLocation as Query$Location$inventoryLocation),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$Location$inventoryLocation<TRes> get inventoryLocation {
    final local$inventoryLocation = _instance.inventoryLocation;
    return CopyWith$Query$Location$inventoryLocation(
      local$inventoryLocation,
      (e) => call(inventoryLocation: e),
    );
  }
}

class _CopyWithStubImpl$Query$Location<TRes>
    implements CopyWith$Query$Location<TRes> {
  _CopyWithStubImpl$Query$Location(this._res);

  TRes _res;

  call({
    Query$Location$inventoryLocation? inventoryLocation,
    String? $__typename,
  }) => _res;

  CopyWith$Query$Location$inventoryLocation<TRes> get inventoryLocation =>
      CopyWith$Query$Location$inventoryLocation.stub(_res);
}

const documentNodeQueryLocation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Location'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'inventoryLocation'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'locationId'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
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
                  name: NameNode(value: 'mediaAssets'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'created'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'at'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'user'),
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
                  name: NameNode(value: 'id'),
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

class Query$Location$inventoryLocation {
  Query$Location$inventoryLocation({
    required this.code,
    required this.description,
    required this.mediaAssets,
    required this.id,
    this.$__typename = 'InventoryLocation',
  });

  factory Query$Location$inventoryLocation.fromJson(Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$description = json['description'];
    final l$mediaAssets = json['mediaAssets'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$Location$inventoryLocation(
      code: (l$code as String),
      description: (l$description as String),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) => Query$Location$inventoryLocation$mediaAssets.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String description;

  final List<Query$Location$inventoryLocation$mediaAssets> mediaAssets;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$description = description;
    final l$mediaAssets = mediaAssets;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$description,
      Object.hashAll(l$mediaAssets.map((v) => v)),
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Location$inventoryLocation ||
        runtimeType != other.runtimeType) {
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
    final l$mediaAssets = mediaAssets;
    final lOther$mediaAssets = other.mediaAssets;
    if (l$mediaAssets.length != lOther$mediaAssets.length) {
      return false;
    }
    for (int i = 0; i < l$mediaAssets.length; i++) {
      final l$mediaAssets$entry = l$mediaAssets[i];
      final lOther$mediaAssets$entry = lOther$mediaAssets[i];
      if (l$mediaAssets$entry != lOther$mediaAssets$entry) {
        return false;
      }
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$Location$inventoryLocation
    on Query$Location$inventoryLocation {
  CopyWith$Query$Location$inventoryLocation<Query$Location$inventoryLocation>
  get copyWith => CopyWith$Query$Location$inventoryLocation(this, (i) => i);
}

abstract class CopyWith$Query$Location$inventoryLocation<TRes> {
  factory CopyWith$Query$Location$inventoryLocation(
    Query$Location$inventoryLocation instance,
    TRes Function(Query$Location$inventoryLocation) then,
  ) = _CopyWithImpl$Query$Location$inventoryLocation;

  factory CopyWith$Query$Location$inventoryLocation.stub(TRes res) =
      _CopyWithStubImpl$Query$Location$inventoryLocation;

  TRes call({
    String? code,
    String? description,
    List<Query$Location$inventoryLocation$mediaAssets>? mediaAssets,
    String? id,
    String? $__typename,
  });
  TRes mediaAssets(
    Iterable<Query$Location$inventoryLocation$mediaAssets> Function(
      Iterable<
        CopyWith$Query$Location$inventoryLocation$mediaAssets<
          Query$Location$inventoryLocation$mediaAssets
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$Location$inventoryLocation<TRes>
    implements CopyWith$Query$Location$inventoryLocation<TRes> {
  _CopyWithImpl$Query$Location$inventoryLocation(this._instance, this._then);

  final Query$Location$inventoryLocation _instance;

  final TRes Function(Query$Location$inventoryLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? description = _undefined,
    Object? mediaAssets = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Location$inventoryLocation(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets as List<Query$Location$inventoryLocation$mediaAssets>),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes mediaAssets(
    Iterable<Query$Location$inventoryLocation$mediaAssets> Function(
      Iterable<
        CopyWith$Query$Location$inventoryLocation$mediaAssets<
          Query$Location$inventoryLocation$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) =>
            CopyWith$Query$Location$inventoryLocation$mediaAssets(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$Location$inventoryLocation<TRes>
    implements CopyWith$Query$Location$inventoryLocation<TRes> {
  _CopyWithStubImpl$Query$Location$inventoryLocation(this._res);

  TRes _res;

  call({
    String? code,
    String? description,
    List<Query$Location$inventoryLocation$mediaAssets>? mediaAssets,
    String? id,
    String? $__typename,
  }) => _res;

  mediaAssets(_fn) => _res;
}

class Query$Location$inventoryLocation$mediaAssets {
  Query$Location$inventoryLocation$mediaAssets({
    required this.url,
    required this.created,
    this.$__typename = 'MediaAsset',
  });

  factory Query$Location$inventoryLocation$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$Location$inventoryLocation$mediaAssets(
      url: (l$url as String),
      created: Query$Location$inventoryLocation$mediaAssets$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final Query$Location$inventoryLocation$mediaAssets$created created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$created, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Location$inventoryLocation$mediaAssets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Query$Location$inventoryLocation$mediaAssets
    on Query$Location$inventoryLocation$mediaAssets {
  CopyWith$Query$Location$inventoryLocation$mediaAssets<
    Query$Location$inventoryLocation$mediaAssets
  >
  get copyWith =>
      CopyWith$Query$Location$inventoryLocation$mediaAssets(this, (i) => i);
}

abstract class CopyWith$Query$Location$inventoryLocation$mediaAssets<TRes> {
  factory CopyWith$Query$Location$inventoryLocation$mediaAssets(
    Query$Location$inventoryLocation$mediaAssets instance,
    TRes Function(Query$Location$inventoryLocation$mediaAssets) then,
  ) = _CopyWithImpl$Query$Location$inventoryLocation$mediaAssets;

  factory CopyWith$Query$Location$inventoryLocation$mediaAssets.stub(TRes res) =
      _CopyWithStubImpl$Query$Location$inventoryLocation$mediaAssets;

  TRes call({
    String? url,
    Query$Location$inventoryLocation$mediaAssets$created? created,
    String? $__typename,
  });
  CopyWith$Query$Location$inventoryLocation$mediaAssets$created<TRes>
  get created;
}

class _CopyWithImpl$Query$Location$inventoryLocation$mediaAssets<TRes>
    implements CopyWith$Query$Location$inventoryLocation$mediaAssets<TRes> {
  _CopyWithImpl$Query$Location$inventoryLocation$mediaAssets(
    this._instance,
    this._then,
  );

  final Query$Location$inventoryLocation$mediaAssets _instance;

  final TRes Function(Query$Location$inventoryLocation$mediaAssets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Location$inventoryLocation$mediaAssets(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Query$Location$inventoryLocation$mediaAssets$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$Location$inventoryLocation$mediaAssets$created<TRes>
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$Location$inventoryLocation$mediaAssets$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Query$Location$inventoryLocation$mediaAssets<TRes>
    implements CopyWith$Query$Location$inventoryLocation$mediaAssets<TRes> {
  _CopyWithStubImpl$Query$Location$inventoryLocation$mediaAssets(this._res);

  TRes _res;

  call({
    String? url,
    Query$Location$inventoryLocation$mediaAssets$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Query$Location$inventoryLocation$mediaAssets$created<TRes>
  get created =>
      CopyWith$Query$Location$inventoryLocation$mediaAssets$created.stub(_res);
}

class Query$Location$inventoryLocation$mediaAssets$created {
  Query$Location$inventoryLocation$mediaAssets$created({
    required this.at,
    this.user,
    this.$__typename = 'Created',
  });

  factory Query$Location$inventoryLocation$mediaAssets$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$Location$inventoryLocation$mediaAssets$created(
      at: DateTime.parse((l$at as String)),
      user: l$user == null
          ? null
          : Query$Location$inventoryLocation$mediaAssets$created$user.fromJson(
              (l$user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final Query$Location$inventoryLocation$mediaAssets$created$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Location$inventoryLocation$mediaAssets$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$Location$inventoryLocation$mediaAssets$created
    on Query$Location$inventoryLocation$mediaAssets$created {
  CopyWith$Query$Location$inventoryLocation$mediaAssets$created<
    Query$Location$inventoryLocation$mediaAssets$created
  >
  get copyWith => CopyWith$Query$Location$inventoryLocation$mediaAssets$created(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$Location$inventoryLocation$mediaAssets$created<
  TRes
> {
  factory CopyWith$Query$Location$inventoryLocation$mediaAssets$created(
    Query$Location$inventoryLocation$mediaAssets$created instance,
    TRes Function(Query$Location$inventoryLocation$mediaAssets$created) then,
  ) = _CopyWithImpl$Query$Location$inventoryLocation$mediaAssets$created;

  factory CopyWith$Query$Location$inventoryLocation$mediaAssets$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$Location$inventoryLocation$mediaAssets$created;

  TRes call({
    DateTime? at,
    Query$Location$inventoryLocation$mediaAssets$created$user? user,
    String? $__typename,
  });
  CopyWith$Query$Location$inventoryLocation$mediaAssets$created$user<TRes>
  get user;
}

class _CopyWithImpl$Query$Location$inventoryLocation$mediaAssets$created<TRes>
    implements
        CopyWith$Query$Location$inventoryLocation$mediaAssets$created<TRes> {
  _CopyWithImpl$Query$Location$inventoryLocation$mediaAssets$created(
    this._instance,
    this._then,
  );

  final Query$Location$inventoryLocation$mediaAssets$created _instance;

  final TRes Function(Query$Location$inventoryLocation$mediaAssets$created)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Location$inventoryLocation$mediaAssets$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      user: user == _undefined
          ? _instance.user
          : (user
                as Query$Location$inventoryLocation$mediaAssets$created$user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$Location$inventoryLocation$mediaAssets$created$user<TRes>
  get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$Location$inventoryLocation$mediaAssets$created$user.stub(
            _then(_instance),
          )
        : CopyWith$Query$Location$inventoryLocation$mediaAssets$created$user(
            local$user,
            (e) => call(user: e),
          );
  }
}

class _CopyWithStubImpl$Query$Location$inventoryLocation$mediaAssets$created<
  TRes
>
    implements
        CopyWith$Query$Location$inventoryLocation$mediaAssets$created<TRes> {
  _CopyWithStubImpl$Query$Location$inventoryLocation$mediaAssets$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    Query$Location$inventoryLocation$mediaAssets$created$user? user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$Location$inventoryLocation$mediaAssets$created$user<TRes>
  get user =>
      CopyWith$Query$Location$inventoryLocation$mediaAssets$created$user.stub(
        _res,
      );
}

class Query$Location$inventoryLocation$mediaAssets$created$user {
  Query$Location$inventoryLocation$mediaAssets$created$user({
    required this.name,
    this.$__typename = 'UserInfo',
  });

  factory Query$Location$inventoryLocation$mediaAssets$created$user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Location$inventoryLocation$mediaAssets$created$user(
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
    if (other is! Query$Location$inventoryLocation$mediaAssets$created$user ||
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

extension UtilityExtension$Query$Location$inventoryLocation$mediaAssets$created$user
    on Query$Location$inventoryLocation$mediaAssets$created$user {
  CopyWith$Query$Location$inventoryLocation$mediaAssets$created$user<
    Query$Location$inventoryLocation$mediaAssets$created$user
  >
  get copyWith =>
      CopyWith$Query$Location$inventoryLocation$mediaAssets$created$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Location$inventoryLocation$mediaAssets$created$user<
  TRes
> {
  factory CopyWith$Query$Location$inventoryLocation$mediaAssets$created$user(
    Query$Location$inventoryLocation$mediaAssets$created$user instance,
    TRes Function(Query$Location$inventoryLocation$mediaAssets$created$user)
    then,
  ) = _CopyWithImpl$Query$Location$inventoryLocation$mediaAssets$created$user;

  factory CopyWith$Query$Location$inventoryLocation$mediaAssets$created$user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$Location$inventoryLocation$mediaAssets$created$user;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Query$Location$inventoryLocation$mediaAssets$created$user<
  TRes
>
    implements
        CopyWith$Query$Location$inventoryLocation$mediaAssets$created$user<
          TRes
        > {
  _CopyWithImpl$Query$Location$inventoryLocation$mediaAssets$created$user(
    this._instance,
    this._then,
  );

  final Query$Location$inventoryLocation$mediaAssets$created$user _instance;

  final TRes Function(Query$Location$inventoryLocation$mediaAssets$created$user)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$Location$inventoryLocation$mediaAssets$created$user(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$Location$inventoryLocation$mediaAssets$created$user<
  TRes
>
    implements
        CopyWith$Query$Location$inventoryLocation$mediaAssets$created$user<
          TRes
        > {
  _CopyWithStubImpl$Query$Location$inventoryLocation$mediaAssets$created$user(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}
