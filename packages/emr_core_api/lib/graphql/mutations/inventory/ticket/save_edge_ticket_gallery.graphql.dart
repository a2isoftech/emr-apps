import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$SaveEdgeTicketGallery {
  factory Variables$Mutation$SaveEdgeTicketGallery({
    required Input$EdgeTicketGalleryInput gallery,
    required String changeVector,
  }) => Variables$Mutation$SaveEdgeTicketGallery._({
    r'gallery': gallery,
    r'changeVector': changeVector,
  });

  Variables$Mutation$SaveEdgeTicketGallery._(this._$data);

  factory Variables$Mutation$SaveEdgeTicketGallery.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$gallery = data['gallery'];
    result$data['gallery'] = Input$EdgeTicketGalleryInput.fromJson(
      (l$gallery as Map<String, dynamic>),
    );
    final l$changeVector = data['changeVector'];
    result$data['changeVector'] = (l$changeVector as String);
    return Variables$Mutation$SaveEdgeTicketGallery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$EdgeTicketGalleryInput get gallery =>
      (_$data['gallery'] as Input$EdgeTicketGalleryInput);

  String get changeVector => (_$data['changeVector'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$gallery = gallery;
    result$data['gallery'] = l$gallery.toJson();
    final l$changeVector = changeVector;
    result$data['changeVector'] = l$changeVector;
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveEdgeTicketGallery<
    Variables$Mutation$SaveEdgeTicketGallery
  >
  get copyWith =>
      CopyWith$Variables$Mutation$SaveEdgeTicketGallery(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SaveEdgeTicketGallery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gallery = gallery;
    final lOther$gallery = other.gallery;
    if (l$gallery != lOther$gallery) {
      return false;
    }
    final l$changeVector = changeVector;
    final lOther$changeVector = other.changeVector;
    if (l$changeVector != lOther$changeVector) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$gallery = gallery;
    final l$changeVector = changeVector;
    return Object.hashAll([l$gallery, l$changeVector]);
  }
}

abstract class CopyWith$Variables$Mutation$SaveEdgeTicketGallery<TRes> {
  factory CopyWith$Variables$Mutation$SaveEdgeTicketGallery(
    Variables$Mutation$SaveEdgeTicketGallery instance,
    TRes Function(Variables$Mutation$SaveEdgeTicketGallery) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveEdgeTicketGallery;

  factory CopyWith$Variables$Mutation$SaveEdgeTicketGallery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveEdgeTicketGallery;

  TRes call({Input$EdgeTicketGalleryInput? gallery, String? changeVector});
}

class _CopyWithImpl$Variables$Mutation$SaveEdgeTicketGallery<TRes>
    implements CopyWith$Variables$Mutation$SaveEdgeTicketGallery<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveEdgeTicketGallery(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveEdgeTicketGallery _instance;

  final TRes Function(Variables$Mutation$SaveEdgeTicketGallery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gallery = _undefined,
    Object? changeVector = _undefined,
  }) => _then(
    Variables$Mutation$SaveEdgeTicketGallery._({
      ..._instance._$data,
      if (gallery != _undefined && gallery != null)
        'gallery': (gallery as Input$EdgeTicketGalleryInput),
      if (changeVector != _undefined && changeVector != null)
        'changeVector': (changeVector as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$SaveEdgeTicketGallery<TRes>
    implements CopyWith$Variables$Mutation$SaveEdgeTicketGallery<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveEdgeTicketGallery(this._res);

  TRes _res;

  call({Input$EdgeTicketGalleryInput? gallery, String? changeVector}) => _res;
}

class Mutation$SaveEdgeTicketGallery {
  Mutation$SaveEdgeTicketGallery({
    required this.saveEdgeTicketGallery,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveEdgeTicketGallery.fromJson(Map<String, dynamic> json) {
    final l$saveEdgeTicketGallery = json['saveEdgeTicketGallery'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveEdgeTicketGallery(
      saveEdgeTicketGallery:
          Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery.fromJson(
            (l$saveEdgeTicketGallery as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery
  saveEdgeTicketGallery;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$saveEdgeTicketGallery = saveEdgeTicketGallery;
    _resultData['saveEdgeTicketGallery'] = l$saveEdgeTicketGallery.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$saveEdgeTicketGallery = saveEdgeTicketGallery;
    final l$$__typename = $__typename;
    return Object.hashAll([l$saveEdgeTicketGallery, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveEdgeTicketGallery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$saveEdgeTicketGallery = saveEdgeTicketGallery;
    final lOther$saveEdgeTicketGallery = other.saveEdgeTicketGallery;
    if (l$saveEdgeTicketGallery != lOther$saveEdgeTicketGallery) {
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

extension UtilityExtension$Mutation$SaveEdgeTicketGallery
    on Mutation$SaveEdgeTicketGallery {
  CopyWith$Mutation$SaveEdgeTicketGallery<Mutation$SaveEdgeTicketGallery>
  get copyWith => CopyWith$Mutation$SaveEdgeTicketGallery(this, (i) => i);
}

abstract class CopyWith$Mutation$SaveEdgeTicketGallery<TRes> {
  factory CopyWith$Mutation$SaveEdgeTicketGallery(
    Mutation$SaveEdgeTicketGallery instance,
    TRes Function(Mutation$SaveEdgeTicketGallery) then,
  ) = _CopyWithImpl$Mutation$SaveEdgeTicketGallery;

  factory CopyWith$Mutation$SaveEdgeTicketGallery.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveEdgeTicketGallery;

  TRes call({
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery? saveEdgeTicketGallery,
    String? $__typename,
  });
  CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery<TRes>
  get saveEdgeTicketGallery;
}

class _CopyWithImpl$Mutation$SaveEdgeTicketGallery<TRes>
    implements CopyWith$Mutation$SaveEdgeTicketGallery<TRes> {
  _CopyWithImpl$Mutation$SaveEdgeTicketGallery(this._instance, this._then);

  final Mutation$SaveEdgeTicketGallery _instance;

  final TRes Function(Mutation$SaveEdgeTicketGallery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? saveEdgeTicketGallery = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SaveEdgeTicketGallery(
      saveEdgeTicketGallery:
          saveEdgeTicketGallery == _undefined || saveEdgeTicketGallery == null
          ? _instance.saveEdgeTicketGallery
          : (saveEdgeTicketGallery
                as Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery<TRes>
  get saveEdgeTicketGallery {
    final local$saveEdgeTicketGallery = _instance.saveEdgeTicketGallery;
    return CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery(
      local$saveEdgeTicketGallery,
      (e) => call(saveEdgeTicketGallery: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SaveEdgeTicketGallery<TRes>
    implements CopyWith$Mutation$SaveEdgeTicketGallery<TRes> {
  _CopyWithStubImpl$Mutation$SaveEdgeTicketGallery(this._res);

  TRes _res;

  call({
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery? saveEdgeTicketGallery,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery<TRes>
  get saveEdgeTicketGallery =>
      CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery.stub(_res);
}

const documentNodeMutationSaveEdgeTicketGallery = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SaveEdgeTicketGallery'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'gallery')),
          type: NamedTypeNode(
            name: NameNode(value: 'EdgeTicketGalleryInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'changeVector')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'saveEdgeTicketGallery'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'gallery'),
                value: VariableNode(name: NameNode(value: 'gallery')),
              ),
              ArgumentNode(
                name: NameNode(value: 'changeVector'),
                value: VariableNode(name: NameNode(value: 'changeVector')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'changeVector'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'entity'),
                  alias: NameNode(value: 'gallery'),
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
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'excludedImageUrls'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'publicUrl'),
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
                              name: NameNode(value: 'userInfoId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'userName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'at'),
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
                        name: NameNode(value: 'modified'),
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
                              name: NameNode(value: 'userInfoId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'userName'),
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
                        name: NameNode(value: 'tags'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'active'),
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

class Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery {
  Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery({
    required this.changeVector,
    required this.gallery,
    this.$__typename = 'DocumentOfEdgeTicketGallery',
  });

  factory Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$changeVector = json['changeVector'];
    final l$gallery = json['gallery'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery(
      changeVector: (l$changeVector as String),
      gallery:
          Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery.fromJson(
            (l$gallery as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String changeVector;

  final Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery gallery;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$changeVector = changeVector;
    _resultData['changeVector'] = l$changeVector;
    final l$gallery = gallery;
    _resultData['gallery'] = l$gallery.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$changeVector = changeVector;
    final l$gallery = gallery;
    final l$$__typename = $__typename;
    return Object.hashAll([l$changeVector, l$gallery, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$changeVector = changeVector;
    final lOther$changeVector = other.changeVector;
    if (l$changeVector != lOther$changeVector) {
      return false;
    }
    final l$gallery = gallery;
    final lOther$gallery = other.gallery;
    if (l$gallery != lOther$gallery) {
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

extension UtilityExtension$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery
    on Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery {
  CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery<
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery
  >
  get copyWith => CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery<
  TRes
> {
  factory CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery(
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery instance,
    TRes Function(Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery) then,
  ) = _CopyWithImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery;

  factory CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery;

  TRes call({
    String? changeVector,
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery? gallery,
    String? $__typename,
  });
  CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery<TRes>
  get gallery;
}

class _CopyWithImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery<TRes>
    implements
        CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery<TRes> {
  _CopyWithImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery(
    this._instance,
    this._then,
  );

  final Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery _instance;

  final TRes Function(Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? changeVector = _undefined,
    Object? gallery = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery(
      changeVector: changeVector == _undefined || changeVector == null
          ? _instance.changeVector
          : (changeVector as String),
      gallery: gallery == _undefined || gallery == null
          ? _instance.gallery
          : (gallery
                as Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery<TRes>
  get gallery {
    final local$gallery = _instance.gallery;
    return CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery(
      local$gallery,
      (e) => call(gallery: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery<
  TRes
>
    implements
        CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery<TRes> {
  _CopyWithStubImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery(
    this._res,
  );

  TRes _res;

  call({
    String? changeVector,
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery? gallery,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery<TRes>
  get gallery =>
      CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery.stub(
        _res,
      );
}

class Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery {
  Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery({
    required this.id,
    required this.title,
    required this.excludedImageUrls,
    this.publicUrl,
    required this.created,
    required this.modified,
    required this.tags,
    required this.active,
    this.$__typename = 'EdgeTicketGallery',
  });

  factory Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$excludedImageUrls = json['excludedImageUrls'];
    final l$publicUrl = json['publicUrl'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$tags = json['tags'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery(
      id: (l$id as String),
      title: (l$title as String),
      excludedImageUrls: (l$excludedImageUrls as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      publicUrl: (l$publicUrl as String?),
      created:
          Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      modified:
          Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified.fromJson(
            (l$modified as Map<String, dynamic>),
          ),
      tags: (l$tags as List<dynamic>).map((e) => (e as String)).toList(),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final List<String> excludedImageUrls;

  final String? publicUrl;

  final Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created
  created;

  final Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified
  modified;

  final List<String> tags;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$excludedImageUrls = excludedImageUrls;
    _resultData['excludedImageUrls'] = l$excludedImageUrls
        .map((e) => e)
        .toList();
    final l$publicUrl = publicUrl;
    _resultData['publicUrl'] = l$publicUrl;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e).toList();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$excludedImageUrls = excludedImageUrls;
    final l$publicUrl = publicUrl;
    final l$created = created;
    final l$modified = modified;
    final l$tags = tags;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      Object.hashAll(l$excludedImageUrls.map((v) => v)),
      l$publicUrl,
      l$created,
      l$modified,
      Object.hashAll(l$tags.map((v) => v)),
      l$active,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$excludedImageUrls = excludedImageUrls;
    final lOther$excludedImageUrls = other.excludedImageUrls;
    if (l$excludedImageUrls.length != lOther$excludedImageUrls.length) {
      return false;
    }
    for (int i = 0; i < l$excludedImageUrls.length; i++) {
      final l$excludedImageUrls$entry = l$excludedImageUrls[i];
      final lOther$excludedImageUrls$entry = lOther$excludedImageUrls[i];
      if (l$excludedImageUrls$entry != lOther$excludedImageUrls$entry) {
        return false;
      }
    }
    final l$publicUrl = publicUrl;
    final lOther$publicUrl = other.publicUrl;
    if (l$publicUrl != lOther$publicUrl) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags.length != lOther$tags.length) {
      return false;
    }
    for (int i = 0; i < l$tags.length; i++) {
      final l$tags$entry = l$tags[i];
      final lOther$tags$entry = lOther$tags[i];
      if (l$tags$entry != lOther$tags$entry) {
        return false;
      }
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
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

extension UtilityExtension$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery
    on Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery {
  CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery<
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery
  >
  get copyWith =>
      CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery<
  TRes
> {
  factory CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery(
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery instance,
    TRes Function(Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery)
    then,
  ) = _CopyWithImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery;

  factory CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery;

  TRes call({
    String? id,
    String? title,
    List<String>? excludedImageUrls,
    String? publicUrl,
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created?
    created,
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified?
    modified,
    List<String>? tags,
    bool? active,
    String? $__typename,
  });
  CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created<
    TRes
  >
  get created;
  CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified<
    TRes
  >
  get modified;
}

class _CopyWithImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery<
  TRes
>
    implements
        CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery<
          TRes
        > {
  _CopyWithImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery(
    this._instance,
    this._then,
  );

  final Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery _instance;

  final TRes Function(
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? excludedImageUrls = _undefined,
    Object? publicUrl = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? tags = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      excludedImageUrls:
          excludedImageUrls == _undefined || excludedImageUrls == null
          ? _instance.excludedImageUrls
          : (excludedImageUrls as List<String>),
      publicUrl: publicUrl == _undefined
          ? _instance.publicUrl
          : (publicUrl as String?),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified
                as Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified),
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags as List<String>),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified<
    TRes
  >
  get modified {
    final local$modified = _instance.modified;
    return CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery<
  TRes
>
    implements
        CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? title,
    List<String>? excludedImageUrls,
    String? publicUrl,
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created?
    created,
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified?
    modified,
    List<String>? tags,
    bool? active,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created<
    TRes
  >
  get created =>
      CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created.stub(
        _res,
      );

  CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified<
    TRes
  >
  get modified =>
      CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified.stub(
        _res,
      );
}

class Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created {
  Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created({
    required this.userInfoId,
    required this.userName,
    required this.at,
    this.$__typename = 'Created',
  });

  factory Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created(
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String userInfoId;

  final String userName;

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userInfoId, l$userName, l$at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
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

extension UtilityExtension$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created
    on Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created {
  CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created<
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created
  >
  get copyWith =>
      CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created<
  TRes
> {
  factory CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created(
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created
    instance,
    TRes Function(
      Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created,
    )
    then,
  ) = _CopyWithImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created;

  factory CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created;

  TRes call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created<
  TRes
>
    implements
        CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created<
          TRes
        > {
  _CopyWithImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created(
    this._instance,
    this._then,
  );

  final Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created
  _instance;

  final TRes Function(
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created(
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created<
  TRes
>
    implements
        CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$created(
    this._res,
  );

  TRes _res;

  call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  }) => _res;
}

class Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified {
  Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Modified',
  });

  factory Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified(
      at: DateTime.parse((l$at as String)),
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userInfoId;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userInfoId, l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified
    on Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified {
  CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified<
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified
  >
  get copyWith =>
      CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified<
  TRes
> {
  factory CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified(
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified
    instance,
    TRes Function(
      Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified,
    )
    then,
  ) = _CopyWithImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified;

  factory CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified<
  TRes
>
    implements
        CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified<
          TRes
        > {
  _CopyWithImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified(
    this._instance,
    this._then,
  );

  final Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified
  _instance;

  final TRes Function(
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified<
  TRes
>
    implements
        CopyWith$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SaveEdgeTicketGallery$saveEdgeTicketGallery$gallery$modified(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  }) => _res;
}
