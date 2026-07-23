import '../../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$SaveTicketGallery {
  factory Variables$Mutation$SaveTicketGallery({
    required Input$TicketGalleryInput gallery,
    required String changeVector,
  }) => Variables$Mutation$SaveTicketGallery._({
    r'gallery': gallery,
    r'changeVector': changeVector,
  });

  Variables$Mutation$SaveTicketGallery._(this._$data);

  factory Variables$Mutation$SaveTicketGallery.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$gallery = data['gallery'];
    result$data['gallery'] = Input$TicketGalleryInput.fromJson(
      (l$gallery as Map<String, dynamic>),
    );
    final l$changeVector = data['changeVector'];
    result$data['changeVector'] = (l$changeVector as String);
    return Variables$Mutation$SaveTicketGallery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TicketGalleryInput get gallery =>
      (_$data['gallery'] as Input$TicketGalleryInput);

  String get changeVector => (_$data['changeVector'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$gallery = gallery;
    result$data['gallery'] = l$gallery.toJson();
    final l$changeVector = changeVector;
    result$data['changeVector'] = l$changeVector;
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveTicketGallery<
    Variables$Mutation$SaveTicketGallery
  >
  get copyWith => CopyWith$Variables$Mutation$SaveTicketGallery(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SaveTicketGallery ||
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

abstract class CopyWith$Variables$Mutation$SaveTicketGallery<TRes> {
  factory CopyWith$Variables$Mutation$SaveTicketGallery(
    Variables$Mutation$SaveTicketGallery instance,
    TRes Function(Variables$Mutation$SaveTicketGallery) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveTicketGallery;

  factory CopyWith$Variables$Mutation$SaveTicketGallery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveTicketGallery;

  TRes call({Input$TicketGalleryInput? gallery, String? changeVector});
}

class _CopyWithImpl$Variables$Mutation$SaveTicketGallery<TRes>
    implements CopyWith$Variables$Mutation$SaveTicketGallery<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveTicketGallery(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveTicketGallery _instance;

  final TRes Function(Variables$Mutation$SaveTicketGallery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gallery = _undefined,
    Object? changeVector = _undefined,
  }) => _then(
    Variables$Mutation$SaveTicketGallery._({
      ..._instance._$data,
      if (gallery != _undefined && gallery != null)
        'gallery': (gallery as Input$TicketGalleryInput),
      if (changeVector != _undefined && changeVector != null)
        'changeVector': (changeVector as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$SaveTicketGallery<TRes>
    implements CopyWith$Variables$Mutation$SaveTicketGallery<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveTicketGallery(this._res);

  TRes _res;

  call({Input$TicketGalleryInput? gallery, String? changeVector}) => _res;
}

class Mutation$SaveTicketGallery {
  Mutation$SaveTicketGallery({
    required this.saveTicketGallery,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveTicketGallery.fromJson(Map<String, dynamic> json) {
    final l$saveTicketGallery = json['saveTicketGallery'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveTicketGallery(
      saveTicketGallery: Mutation$SaveTicketGallery$saveTicketGallery.fromJson(
        (l$saveTicketGallery as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SaveTicketGallery$saveTicketGallery saveTicketGallery;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$saveTicketGallery = saveTicketGallery;
    _resultData['saveTicketGallery'] = l$saveTicketGallery.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$saveTicketGallery = saveTicketGallery;
    final l$$__typename = $__typename;
    return Object.hashAll([l$saveTicketGallery, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveTicketGallery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$saveTicketGallery = saveTicketGallery;
    final lOther$saveTicketGallery = other.saveTicketGallery;
    if (l$saveTicketGallery != lOther$saveTicketGallery) {
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

extension UtilityExtension$Mutation$SaveTicketGallery
    on Mutation$SaveTicketGallery {
  CopyWith$Mutation$SaveTicketGallery<Mutation$SaveTicketGallery>
  get copyWith => CopyWith$Mutation$SaveTicketGallery(this, (i) => i);
}

abstract class CopyWith$Mutation$SaveTicketGallery<TRes> {
  factory CopyWith$Mutation$SaveTicketGallery(
    Mutation$SaveTicketGallery instance,
    TRes Function(Mutation$SaveTicketGallery) then,
  ) = _CopyWithImpl$Mutation$SaveTicketGallery;

  factory CopyWith$Mutation$SaveTicketGallery.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveTicketGallery;

  TRes call({
    Mutation$SaveTicketGallery$saveTicketGallery? saveTicketGallery,
    String? $__typename,
  });
  CopyWith$Mutation$SaveTicketGallery$saveTicketGallery<TRes>
  get saveTicketGallery;
}

class _CopyWithImpl$Mutation$SaveTicketGallery<TRes>
    implements CopyWith$Mutation$SaveTicketGallery<TRes> {
  _CopyWithImpl$Mutation$SaveTicketGallery(this._instance, this._then);

  final Mutation$SaveTicketGallery _instance;

  final TRes Function(Mutation$SaveTicketGallery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? saveTicketGallery = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SaveTicketGallery(
      saveTicketGallery:
          saveTicketGallery == _undefined || saveTicketGallery == null
          ? _instance.saveTicketGallery
          : (saveTicketGallery as Mutation$SaveTicketGallery$saveTicketGallery),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SaveTicketGallery$saveTicketGallery<TRes>
  get saveTicketGallery {
    final local$saveTicketGallery = _instance.saveTicketGallery;
    return CopyWith$Mutation$SaveTicketGallery$saveTicketGallery(
      local$saveTicketGallery,
      (e) => call(saveTicketGallery: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SaveTicketGallery<TRes>
    implements CopyWith$Mutation$SaveTicketGallery<TRes> {
  _CopyWithStubImpl$Mutation$SaveTicketGallery(this._res);

  TRes _res;

  call({
    Mutation$SaveTicketGallery$saveTicketGallery? saveTicketGallery,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SaveTicketGallery$saveTicketGallery<TRes>
  get saveTicketGallery =>
      CopyWith$Mutation$SaveTicketGallery$saveTicketGallery.stub(_res);
}

const documentNodeMutationSaveTicketGallery = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SaveTicketGallery'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'gallery')),
          type: NamedTypeNode(
            name: NameNode(value: 'TicketGalleryInput'),
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
            name: NameNode(value: 'saveTicketGallery'),
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
                        name: NameNode(value: 'createdBy'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'createdDate'),
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

class Mutation$SaveTicketGallery$saveTicketGallery {
  Mutation$SaveTicketGallery$saveTicketGallery({
    required this.changeVector,
    required this.gallery,
    this.$__typename = 'DocumentOfTicketGallery',
  });

  factory Mutation$SaveTicketGallery$saveTicketGallery.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$changeVector = json['changeVector'];
    final l$gallery = json['gallery'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveTicketGallery$saveTicketGallery(
      changeVector: (l$changeVector as String),
      gallery: Mutation$SaveTicketGallery$saveTicketGallery$gallery.fromJson(
        (l$gallery as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String changeVector;

  final Mutation$SaveTicketGallery$saveTicketGallery$gallery gallery;

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
    if (other is! Mutation$SaveTicketGallery$saveTicketGallery ||
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

extension UtilityExtension$Mutation$SaveTicketGallery$saveTicketGallery
    on Mutation$SaveTicketGallery$saveTicketGallery {
  CopyWith$Mutation$SaveTicketGallery$saveTicketGallery<
    Mutation$SaveTicketGallery$saveTicketGallery
  >
  get copyWith =>
      CopyWith$Mutation$SaveTicketGallery$saveTicketGallery(this, (i) => i);
}

abstract class CopyWith$Mutation$SaveTicketGallery$saveTicketGallery<TRes> {
  factory CopyWith$Mutation$SaveTicketGallery$saveTicketGallery(
    Mutation$SaveTicketGallery$saveTicketGallery instance,
    TRes Function(Mutation$SaveTicketGallery$saveTicketGallery) then,
  ) = _CopyWithImpl$Mutation$SaveTicketGallery$saveTicketGallery;

  factory CopyWith$Mutation$SaveTicketGallery$saveTicketGallery.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveTicketGallery$saveTicketGallery;

  TRes call({
    String? changeVector,
    Mutation$SaveTicketGallery$saveTicketGallery$gallery? gallery,
    String? $__typename,
  });
  CopyWith$Mutation$SaveTicketGallery$saveTicketGallery$gallery<TRes>
  get gallery;
}

class _CopyWithImpl$Mutation$SaveTicketGallery$saveTicketGallery<TRes>
    implements CopyWith$Mutation$SaveTicketGallery$saveTicketGallery<TRes> {
  _CopyWithImpl$Mutation$SaveTicketGallery$saveTicketGallery(
    this._instance,
    this._then,
  );

  final Mutation$SaveTicketGallery$saveTicketGallery _instance;

  final TRes Function(Mutation$SaveTicketGallery$saveTicketGallery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? changeVector = _undefined,
    Object? gallery = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SaveTicketGallery$saveTicketGallery(
      changeVector: changeVector == _undefined || changeVector == null
          ? _instance.changeVector
          : (changeVector as String),
      gallery: gallery == _undefined || gallery == null
          ? _instance.gallery
          : (gallery as Mutation$SaveTicketGallery$saveTicketGallery$gallery),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SaveTicketGallery$saveTicketGallery$gallery<TRes>
  get gallery {
    final local$gallery = _instance.gallery;
    return CopyWith$Mutation$SaveTicketGallery$saveTicketGallery$gallery(
      local$gallery,
      (e) => call(gallery: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SaveTicketGallery$saveTicketGallery<TRes>
    implements CopyWith$Mutation$SaveTicketGallery$saveTicketGallery<TRes> {
  _CopyWithStubImpl$Mutation$SaveTicketGallery$saveTicketGallery(this._res);

  TRes _res;

  call({
    String? changeVector,
    Mutation$SaveTicketGallery$saveTicketGallery$gallery? gallery,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SaveTicketGallery$saveTicketGallery$gallery<TRes>
  get gallery =>
      CopyWith$Mutation$SaveTicketGallery$saveTicketGallery$gallery.stub(_res);
}

class Mutation$SaveTicketGallery$saveTicketGallery$gallery {
  Mutation$SaveTicketGallery$saveTicketGallery$gallery({
    this.id,
    required this.title,
    required this.excludedImageUrls,
    this.publicUrl,
    required this.createdBy,
    required this.createdDate,
    this.$__typename = 'TicketGallery',
  });

  factory Mutation$SaveTicketGallery$saveTicketGallery$gallery.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$excludedImageUrls = json['excludedImageUrls'];
    final l$publicUrl = json['publicUrl'];
    final l$createdBy = json['createdBy'];
    final l$createdDate = json['createdDate'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveTicketGallery$saveTicketGallery$gallery(
      id: (l$id as String?),
      title: (l$title as String),
      excludedImageUrls: (l$excludedImageUrls as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      publicUrl: (l$publicUrl as String?),
      createdBy: (l$createdBy as String),
      createdDate: DateTime.parse((l$createdDate as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String title;

  final List<String> excludedImageUrls;

  final String? publicUrl;

  final String createdBy;

  final DateTime createdDate;

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
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$createdDate = createdDate;
    _resultData['createdDate'] = l$createdDate.toIso8601String();
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
    final l$createdBy = createdBy;
    final l$createdDate = createdDate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      Object.hashAll(l$excludedImageUrls.map((v) => v)),
      l$publicUrl,
      l$createdBy,
      l$createdDate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveTicketGallery$saveTicketGallery$gallery ||
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
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
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

extension UtilityExtension$Mutation$SaveTicketGallery$saveTicketGallery$gallery
    on Mutation$SaveTicketGallery$saveTicketGallery$gallery {
  CopyWith$Mutation$SaveTicketGallery$saveTicketGallery$gallery<
    Mutation$SaveTicketGallery$saveTicketGallery$gallery
  >
  get copyWith => CopyWith$Mutation$SaveTicketGallery$saveTicketGallery$gallery(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$SaveTicketGallery$saveTicketGallery$gallery<
  TRes
> {
  factory CopyWith$Mutation$SaveTicketGallery$saveTicketGallery$gallery(
    Mutation$SaveTicketGallery$saveTicketGallery$gallery instance,
    TRes Function(Mutation$SaveTicketGallery$saveTicketGallery$gallery) then,
  ) = _CopyWithImpl$Mutation$SaveTicketGallery$saveTicketGallery$gallery;

  factory CopyWith$Mutation$SaveTicketGallery$saveTicketGallery$gallery.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SaveTicketGallery$saveTicketGallery$gallery;

  TRes call({
    String? id,
    String? title,
    List<String>? excludedImageUrls,
    String? publicUrl,
    String? createdBy,
    DateTime? createdDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SaveTicketGallery$saveTicketGallery$gallery<TRes>
    implements
        CopyWith$Mutation$SaveTicketGallery$saveTicketGallery$gallery<TRes> {
  _CopyWithImpl$Mutation$SaveTicketGallery$saveTicketGallery$gallery(
    this._instance,
    this._then,
  );

  final Mutation$SaveTicketGallery$saveTicketGallery$gallery _instance;

  final TRes Function(Mutation$SaveTicketGallery$saveTicketGallery$gallery)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? excludedImageUrls = _undefined,
    Object? publicUrl = _undefined,
    Object? createdBy = _undefined,
    Object? createdDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SaveTicketGallery$saveTicketGallery$gallery(
      id: id == _undefined ? _instance.id : (id as String?),
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
      createdBy: createdBy == _undefined || createdBy == null
          ? _instance.createdBy
          : (createdBy as String),
      createdDate: createdDate == _undefined || createdDate == null
          ? _instance.createdDate
          : (createdDate as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SaveTicketGallery$saveTicketGallery$gallery<
  TRes
>
    implements
        CopyWith$Mutation$SaveTicketGallery$saveTicketGallery$gallery<TRes> {
  _CopyWithStubImpl$Mutation$SaveTicketGallery$saveTicketGallery$gallery(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? title,
    List<String>? excludedImageUrls,
    String? publicUrl,
    String? createdBy,
    DateTime? createdDate,
    String? $__typename,
  }) => _res;
}
