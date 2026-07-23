import '../../../../fragments/inventory/ticket/trade2_ticket_fragment.graphql.dart';
import '../../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$LoadTicketGallery {
  factory Variables$Query$LoadTicketGallery({required String id}) =>
      Variables$Query$LoadTicketGallery._({r'id': id});

  Variables$Query$LoadTicketGallery._(this._$data);

  factory Variables$Query$LoadTicketGallery.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$LoadTicketGallery._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$LoadTicketGallery<Variables$Query$LoadTicketGallery>
  get copyWith => CopyWith$Variables$Query$LoadTicketGallery(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$LoadTicketGallery ||
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

abstract class CopyWith$Variables$Query$LoadTicketGallery<TRes> {
  factory CopyWith$Variables$Query$LoadTicketGallery(
    Variables$Query$LoadTicketGallery instance,
    TRes Function(Variables$Query$LoadTicketGallery) then,
  ) = _CopyWithImpl$Variables$Query$LoadTicketGallery;

  factory CopyWith$Variables$Query$LoadTicketGallery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$LoadTicketGallery;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$LoadTicketGallery<TRes>
    implements CopyWith$Variables$Query$LoadTicketGallery<TRes> {
  _CopyWithImpl$Variables$Query$LoadTicketGallery(this._instance, this._then);

  final Variables$Query$LoadTicketGallery _instance;

  final TRes Function(Variables$Query$LoadTicketGallery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$LoadTicketGallery._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$LoadTicketGallery<TRes>
    implements CopyWith$Variables$Query$LoadTicketGallery<TRes> {
  _CopyWithStubImpl$Variables$Query$LoadTicketGallery(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$LoadTicketGallery {
  Query$LoadTicketGallery({
    required this.loadTicketGalleryDocument,
    this.$__typename = 'Query',
  });

  factory Query$LoadTicketGallery.fromJson(Map<String, dynamic> json) {
    final l$loadTicketGalleryDocument = json['loadTicketGalleryDocument'];
    final l$$__typename = json['__typename'];
    return Query$LoadTicketGallery(
      loadTicketGalleryDocument:
          Query$LoadTicketGallery$loadTicketGalleryDocument.fromJson(
            (l$loadTicketGalleryDocument as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$LoadTicketGallery$loadTicketGalleryDocument
  loadTicketGalleryDocument;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$loadTicketGalleryDocument = loadTicketGalleryDocument;
    _resultData['loadTicketGalleryDocument'] = l$loadTicketGalleryDocument
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$loadTicketGalleryDocument = loadTicketGalleryDocument;
    final l$$__typename = $__typename;
    return Object.hashAll([l$loadTicketGalleryDocument, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LoadTicketGallery || runtimeType != other.runtimeType) {
      return false;
    }
    final l$loadTicketGalleryDocument = loadTicketGalleryDocument;
    final lOther$loadTicketGalleryDocument = other.loadTicketGalleryDocument;
    if (l$loadTicketGalleryDocument != lOther$loadTicketGalleryDocument) {
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

extension UtilityExtension$Query$LoadTicketGallery on Query$LoadTicketGallery {
  CopyWith$Query$LoadTicketGallery<Query$LoadTicketGallery> get copyWith =>
      CopyWith$Query$LoadTicketGallery(this, (i) => i);
}

abstract class CopyWith$Query$LoadTicketGallery<TRes> {
  factory CopyWith$Query$LoadTicketGallery(
    Query$LoadTicketGallery instance,
    TRes Function(Query$LoadTicketGallery) then,
  ) = _CopyWithImpl$Query$LoadTicketGallery;

  factory CopyWith$Query$LoadTicketGallery.stub(TRes res) =
      _CopyWithStubImpl$Query$LoadTicketGallery;

  TRes call({
    Query$LoadTicketGallery$loadTicketGalleryDocument?
    loadTicketGalleryDocument,
    String? $__typename,
  });
  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument<TRes>
  get loadTicketGalleryDocument;
}

class _CopyWithImpl$Query$LoadTicketGallery<TRes>
    implements CopyWith$Query$LoadTicketGallery<TRes> {
  _CopyWithImpl$Query$LoadTicketGallery(this._instance, this._then);

  final Query$LoadTicketGallery _instance;

  final TRes Function(Query$LoadTicketGallery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? loadTicketGalleryDocument = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadTicketGallery(
      loadTicketGalleryDocument:
          loadTicketGalleryDocument == _undefined ||
              loadTicketGalleryDocument == null
          ? _instance.loadTicketGalleryDocument
          : (loadTicketGalleryDocument
                as Query$LoadTicketGallery$loadTicketGalleryDocument),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument<TRes>
  get loadTicketGalleryDocument {
    final local$loadTicketGalleryDocument = _instance.loadTicketGalleryDocument;
    return CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument(
      local$loadTicketGalleryDocument,
      (e) => call(loadTicketGalleryDocument: e),
    );
  }
}

class _CopyWithStubImpl$Query$LoadTicketGallery<TRes>
    implements CopyWith$Query$LoadTicketGallery<TRes> {
  _CopyWithStubImpl$Query$LoadTicketGallery(this._res);

  TRes _res;

  call({
    Query$LoadTicketGallery$loadTicketGalleryDocument?
    loadTicketGalleryDocument,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument<TRes>
  get loadTicketGalleryDocument =>
      CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument.stub(_res);
}

const documentNodeQueryLoadTicketGallery = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'LoadTicketGallery'),
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
            name: NameNode(value: 'loadTicketGalleryDocument'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
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
                        name: NameNode(value: 'publicUrl'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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
                        name: NameNode(value: 'tickets'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'Trade2TicketFields'),
                              directives: [],
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
                                    name: NameNode(value: 'sasUrl'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'sasThumbnailUrl'),
                                    alias: null,
                                    arguments: [
                                      ArgumentNode(
                                        name: NameNode(value: 'width'),
                                        value: IntValueNode(value: '128'),
                                      ),
                                    ],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'type'),
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
    fragmentDefinitionTrade2TicketFields,
  ],
);

class Query$LoadTicketGallery$loadTicketGalleryDocument {
  Query$LoadTicketGallery$loadTicketGalleryDocument({
    required this.changeVector,
    required this.gallery,
    this.$__typename = 'DocumentOfTicketGallery',
  });

  factory Query$LoadTicketGallery$loadTicketGalleryDocument.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$changeVector = json['changeVector'];
    final l$gallery = json['gallery'];
    final l$$__typename = json['__typename'];
    return Query$LoadTicketGallery$loadTicketGalleryDocument(
      changeVector: (l$changeVector as String),
      gallery:
          Query$LoadTicketGallery$loadTicketGalleryDocument$gallery.fromJson(
            (l$gallery as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String changeVector;

  final Query$LoadTicketGallery$loadTicketGalleryDocument$gallery gallery;

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
    if (other is! Query$LoadTicketGallery$loadTicketGalleryDocument ||
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

extension UtilityExtension$Query$LoadTicketGallery$loadTicketGalleryDocument
    on Query$LoadTicketGallery$loadTicketGalleryDocument {
  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument<
    Query$LoadTicketGallery$loadTicketGalleryDocument
  >
  get copyWith => CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument<
  TRes
> {
  factory CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument(
    Query$LoadTicketGallery$loadTicketGalleryDocument instance,
    TRes Function(Query$LoadTicketGallery$loadTicketGalleryDocument) then,
  ) = _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument;

  factory CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument;

  TRes call({
    String? changeVector,
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery? gallery,
    String? $__typename,
  });
  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery<TRes>
  get gallery;
}

class _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument<TRes>
    implements
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument<TRes> {
  _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument(
    this._instance,
    this._then,
  );

  final Query$LoadTicketGallery$loadTicketGalleryDocument _instance;

  final TRes Function(Query$LoadTicketGallery$loadTicketGalleryDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? changeVector = _undefined,
    Object? gallery = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadTicketGallery$loadTicketGalleryDocument(
      changeVector: changeVector == _undefined || changeVector == null
          ? _instance.changeVector
          : (changeVector as String),
      gallery: gallery == _undefined || gallery == null
          ? _instance.gallery
          : (gallery
                as Query$LoadTicketGallery$loadTicketGalleryDocument$gallery),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery<TRes>
  get gallery {
    final local$gallery = _instance.gallery;
    return CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery(
      local$gallery,
      (e) => call(gallery: e),
    );
  }
}

class _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument<TRes>
    implements
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument<TRes> {
  _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument(
    this._res,
  );

  TRes _res;

  call({
    String? changeVector,
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery? gallery,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery<TRes>
  get gallery =>
      CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery.stub(
        _res,
      );
}

class Query$LoadTicketGallery$loadTicketGalleryDocument$gallery {
  Query$LoadTicketGallery$loadTicketGalleryDocument$gallery({
    this.publicUrl,
    this.id,
    required this.title,
    required this.excludedImageUrls,
    required this.tickets,
    required this.createdBy,
    required this.createdDate,
    this.$__typename = 'TicketGallery',
  });

  factory Query$LoadTicketGallery$loadTicketGalleryDocument$gallery.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$publicUrl = json['publicUrl'];
    final l$id = json['id'];
    final l$title = json['title'];
    final l$excludedImageUrls = json['excludedImageUrls'];
    final l$tickets = json['tickets'];
    final l$createdBy = json['createdBy'];
    final l$createdDate = json['createdDate'];
    final l$$__typename = json['__typename'];
    return Query$LoadTicketGallery$loadTicketGalleryDocument$gallery(
      publicUrl: (l$publicUrl as String?),
      id: (l$id as String?),
      title: (l$title as String),
      excludedImageUrls: (l$excludedImageUrls as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      tickets: (l$tickets as List<dynamic>)
          .map(
            (e) =>
                Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      createdBy: (l$createdBy as String),
      createdDate: DateTime.parse((l$createdDate as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? publicUrl;

  final String? id;

  final String title;

  final List<String> excludedImageUrls;

  final List<Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets>
  tickets;

  final String createdBy;

  final DateTime createdDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$publicUrl = publicUrl;
    _resultData['publicUrl'] = l$publicUrl;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$excludedImageUrls = excludedImageUrls;
    _resultData['excludedImageUrls'] = l$excludedImageUrls
        .map((e) => e)
        .toList();
    final l$tickets = tickets;
    _resultData['tickets'] = l$tickets.map((e) => e.toJson()).toList();
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
    final l$publicUrl = publicUrl;
    final l$id = id;
    final l$title = title;
    final l$excludedImageUrls = excludedImageUrls;
    final l$tickets = tickets;
    final l$createdBy = createdBy;
    final l$createdDate = createdDate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$publicUrl,
      l$id,
      l$title,
      Object.hashAll(l$excludedImageUrls.map((v) => v)),
      Object.hashAll(l$tickets.map((v) => v)),
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
    if (other is! Query$LoadTicketGallery$loadTicketGalleryDocument$gallery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$publicUrl = publicUrl;
    final lOther$publicUrl = other.publicUrl;
    if (l$publicUrl != lOther$publicUrl) {
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
    final l$tickets = tickets;
    final lOther$tickets = other.tickets;
    if (l$tickets.length != lOther$tickets.length) {
      return false;
    }
    for (int i = 0; i < l$tickets.length; i++) {
      final l$tickets$entry = l$tickets[i];
      final lOther$tickets$entry = lOther$tickets[i];
      if (l$tickets$entry != lOther$tickets$entry) {
        return false;
      }
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

extension UtilityExtension$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery
    on Query$LoadTicketGallery$loadTicketGalleryDocument$gallery {
  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery<
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery
  >
  get copyWith =>
      CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery<
  TRes
> {
  factory CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery instance,
    TRes Function(Query$LoadTicketGallery$loadTicketGalleryDocument$gallery)
    then,
  ) = _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery;

  factory CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery;

  TRes call({
    String? publicUrl,
    String? id,
    String? title,
    List<String>? excludedImageUrls,
    List<Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets>?
    tickets,
    String? createdBy,
    DateTime? createdDate,
    String? $__typename,
  });
  TRes tickets(
    Iterable<Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets>
    Function(
      Iterable<
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets<
          Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery<
  TRes
>
    implements
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery<
          TRes
        > {
  _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery(
    this._instance,
    this._then,
  );

  final Query$LoadTicketGallery$loadTicketGalleryDocument$gallery _instance;

  final TRes Function(Query$LoadTicketGallery$loadTicketGalleryDocument$gallery)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? publicUrl = _undefined,
    Object? id = _undefined,
    Object? title = _undefined,
    Object? excludedImageUrls = _undefined,
    Object? tickets = _undefined,
    Object? createdBy = _undefined,
    Object? createdDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery(
      publicUrl: publicUrl == _undefined
          ? _instance.publicUrl
          : (publicUrl as String?),
      id: id == _undefined ? _instance.id : (id as String?),
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      excludedImageUrls:
          excludedImageUrls == _undefined || excludedImageUrls == null
          ? _instance.excludedImageUrls
          : (excludedImageUrls as List<String>),
      tickets: tickets == _undefined || tickets == null
          ? _instance.tickets
          : (tickets
                as List<
                  Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets
                >),
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

  TRes tickets(
    Iterable<Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets>
    Function(
      Iterable<
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets<
          Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets
        >
      >,
    )
    _fn,
  ) => call(
    tickets: _fn(
      _instance.tickets.map(
        (e) =>
            CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery<
  TRes
>
    implements
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery<
          TRes
        > {
  _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery(
    this._res,
  );

  TRes _res;

  call({
    String? publicUrl,
    String? id,
    String? title,
    List<String>? excludedImageUrls,
    List<Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets>?
    tickets,
    String? createdBy,
    DateTime? createdDate,
    String? $__typename,
  }) => _res;

  tickets(_fn) => _res;
}

class Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets
    implements Fragment$Trade2TicketFields {
  Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets({
    this.id,
    required this.key,
    this.trade2Key,
    this.partyAccountNo,
    this.partyName,
    required this.depotNo,
    required this.yardId,
    required this.yardCode,
    required this.ticketNumber,
    required this.ticketCategory,
    required this.ticketStatus,
    required this.ticketType,
    this.publishedToTrade,
    required this.createdDate,
    required this.createdDateEpoch,
    required this.createdBy,
    required this.price,
    required this.lines,
    required this.currency,
    required this.ticketDate,
    this.vehicleNo,
    this.locationCode,
    this.locationName,
    this.$__typename = 'Trade2Ticket',
    required this.mediaAssets,
  });

  factory Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$key = json['key'];
    final l$trade2Key = json['trade2Key'];
    final l$partyAccountNo = json['partyAccountNo'];
    final l$partyName = json['partyName'];
    final l$depotNo = json['depotNo'];
    final l$yardId = json['yardId'];
    final l$yardCode = json['yardCode'];
    final l$ticketNumber = json['ticketNumber'];
    final l$ticketCategory = json['ticketCategory'];
    final l$ticketStatus = json['ticketStatus'];
    final l$ticketType = json['ticketType'];
    final l$publishedToTrade = json['publishedToTrade'];
    final l$createdDate = json['createdDate'];
    final l$createdDateEpoch = json['createdDateEpoch'];
    final l$createdBy = json['createdBy'];
    final l$price = json['price'];
    final l$lines = json['lines'];
    final l$currency = json['currency'];
    final l$ticketDate = json['ticketDate'];
    final l$vehicleNo = json['vehicleNo'];
    final l$locationCode = json['locationCode'];
    final l$locationName = json['locationName'];
    final l$$__typename = json['__typename'];
    final l$mediaAssets = json['mediaAssets'];
    return Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets(
      id: (l$id as String?),
      key: (l$key as String),
      trade2Key: (l$trade2Key as int?),
      partyAccountNo: (l$partyAccountNo as String?),
      partyName: (l$partyName as String?),
      depotNo: (l$depotNo as String),
      yardId: (l$yardId as String),
      yardCode: (l$yardCode as String),
      ticketNumber: (l$ticketNumber as int),
      ticketCategory: fromJson$Enum$Trade2TicketCategory(
        (l$ticketCategory as String),
      ),
      ticketStatus: fromJson$Enum$Trade2TicketStatus(
        (l$ticketStatus as String),
      ),
      ticketType: fromJson$Enum$Trade2TicketType((l$ticketType as String)),
      publishedToTrade: l$publishedToTrade == null
          ? null
          : DateTime.parse((l$publishedToTrade as String)),
      createdDate: DateTime.parse((l$createdDate as String)),
      createdDateEpoch: (l$createdDateEpoch as int),
      createdBy: (l$createdBy as String),
      price: (l$price as num).toDouble(),
      lines: (l$lines as List<dynamic>)
          .map(
            (e) =>
                Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      currency: (l$currency as String),
      ticketDate: DateTime.parse((l$ticketDate as String)),
      vehicleNo: (l$vehicleNo as String?),
      locationCode: (l$locationCode as String?),
      locationName: (l$locationName as String?),
      $__typename: (l$$__typename as String),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
    );
  }

  final String? id;

  final String key;

  final int? trade2Key;

  final String? partyAccountNo;

  final String? partyName;

  final String depotNo;

  final String yardId;

  final String yardCode;

  final int ticketNumber;

  final Enum$Trade2TicketCategory ticketCategory;

  final Enum$Trade2TicketStatus ticketStatus;

  final Enum$Trade2TicketType ticketType;

  final DateTime? publishedToTrade;

  final DateTime createdDate;

  final int createdDateEpoch;

  final String createdBy;

  final double price;

  final List<
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines
  >
  lines;

  final String currency;

  final DateTime ticketDate;

  final String? vehicleNo;

  final String? locationCode;

  final String? locationName;

  final String $__typename;

  final List<
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets
  >
  mediaAssets;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$key = key;
    _resultData['key'] = l$key;
    final l$trade2Key = trade2Key;
    _resultData['trade2Key'] = l$trade2Key;
    final l$partyAccountNo = partyAccountNo;
    _resultData['partyAccountNo'] = l$partyAccountNo;
    final l$partyName = partyName;
    _resultData['partyName'] = l$partyName;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$ticketNumber = ticketNumber;
    _resultData['ticketNumber'] = l$ticketNumber;
    final l$ticketCategory = ticketCategory;
    _resultData['ticketCategory'] = toJson$Enum$Trade2TicketCategory(
      l$ticketCategory,
    );
    final l$ticketStatus = ticketStatus;
    _resultData['ticketStatus'] = toJson$Enum$Trade2TicketStatus(
      l$ticketStatus,
    );
    final l$ticketType = ticketType;
    _resultData['ticketType'] = toJson$Enum$Trade2TicketType(l$ticketType);
    final l$publishedToTrade = publishedToTrade;
    _resultData['publishedToTrade'] = l$publishedToTrade?.toIso8601String();
    final l$createdDate = createdDate;
    _resultData['createdDate'] = l$createdDate.toIso8601String();
    final l$createdDateEpoch = createdDateEpoch;
    _resultData['createdDateEpoch'] = l$createdDateEpoch;
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$lines = lines;
    _resultData['lines'] = l$lines.map((e) => e.toJson()).toList();
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$ticketDate = ticketDate;
    _resultData['ticketDate'] = l$ticketDate.toIso8601String();
    final l$vehicleNo = vehicleNo;
    _resultData['vehicleNo'] = l$vehicleNo;
    final l$locationCode = locationCode;
    _resultData['locationCode'] = l$locationCode;
    final l$locationName = locationName;
    _resultData['locationName'] = l$locationName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$key = key;
    final l$trade2Key = trade2Key;
    final l$partyAccountNo = partyAccountNo;
    final l$partyName = partyName;
    final l$depotNo = depotNo;
    final l$yardId = yardId;
    final l$yardCode = yardCode;
    final l$ticketNumber = ticketNumber;
    final l$ticketCategory = ticketCategory;
    final l$ticketStatus = ticketStatus;
    final l$ticketType = ticketType;
    final l$publishedToTrade = publishedToTrade;
    final l$createdDate = createdDate;
    final l$createdDateEpoch = createdDateEpoch;
    final l$createdBy = createdBy;
    final l$price = price;
    final l$lines = lines;
    final l$currency = currency;
    final l$ticketDate = ticketDate;
    final l$vehicleNo = vehicleNo;
    final l$locationCode = locationCode;
    final l$locationName = locationName;
    final l$$__typename = $__typename;
    final l$mediaAssets = mediaAssets;
    return Object.hashAll([
      l$id,
      l$key,
      l$trade2Key,
      l$partyAccountNo,
      l$partyName,
      l$depotNo,
      l$yardId,
      l$yardCode,
      l$ticketNumber,
      l$ticketCategory,
      l$ticketStatus,
      l$ticketType,
      l$publishedToTrade,
      l$createdDate,
      l$createdDateEpoch,
      l$createdBy,
      l$price,
      Object.hashAll(l$lines.map((v) => v)),
      l$currency,
      l$ticketDate,
      l$vehicleNo,
      l$locationCode,
      l$locationName,
      l$$__typename,
      Object.hashAll(l$mediaAssets.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$trade2Key = trade2Key;
    final lOther$trade2Key = other.trade2Key;
    if (l$trade2Key != lOther$trade2Key) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$partyName = partyName;
    final lOther$partyName = other.partyName;
    if (l$partyName != lOther$partyName) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (l$ticketNumber != lOther$ticketNumber) {
      return false;
    }
    final l$ticketCategory = ticketCategory;
    final lOther$ticketCategory = other.ticketCategory;
    if (l$ticketCategory != lOther$ticketCategory) {
      return false;
    }
    final l$ticketStatus = ticketStatus;
    final lOther$ticketStatus = other.ticketStatus;
    if (l$ticketStatus != lOther$ticketStatus) {
      return false;
    }
    final l$ticketType = ticketType;
    final lOther$ticketType = other.ticketType;
    if (l$ticketType != lOther$ticketType) {
      return false;
    }
    final l$publishedToTrade = publishedToTrade;
    final lOther$publishedToTrade = other.publishedToTrade;
    if (l$publishedToTrade != lOther$publishedToTrade) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
      return false;
    }
    final l$createdDateEpoch = createdDateEpoch;
    final lOther$createdDateEpoch = other.createdDateEpoch;
    if (l$createdDateEpoch != lOther$createdDateEpoch) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$lines = lines;
    final lOther$lines = other.lines;
    if (l$lines.length != lOther$lines.length) {
      return false;
    }
    for (int i = 0; i < l$lines.length; i++) {
      final l$lines$entry = l$lines[i];
      final lOther$lines$entry = lOther$lines[i];
      if (l$lines$entry != lOther$lines$entry) {
        return false;
      }
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$ticketDate = ticketDate;
    final lOther$ticketDate = other.ticketDate;
    if (l$ticketDate != lOther$ticketDate) {
      return false;
    }
    final l$vehicleNo = vehicleNo;
    final lOther$vehicleNo = other.vehicleNo;
    if (l$vehicleNo != lOther$vehicleNo) {
      return false;
    }
    final l$locationCode = locationCode;
    final lOther$locationCode = other.locationCode;
    if (l$locationCode != lOther$locationCode) {
      return false;
    }
    final l$locationName = locationName;
    final lOther$locationName = other.locationName;
    if (l$locationName != lOther$locationName) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    return true;
  }
}

extension UtilityExtension$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets
    on Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets {
  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets<
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets
  >
  get copyWith =>
      CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets<
  TRes
> {
  factory CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets instance,
    TRes Function(
      Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets,
    )
    then,
  ) = _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets;

  factory CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets;

  TRes call({
    String? id,
    String? key,
    int? trade2Key,
    String? partyAccountNo,
    String? partyName,
    String? depotNo,
    String? yardId,
    String? yardCode,
    int? ticketNumber,
    Enum$Trade2TicketCategory? ticketCategory,
    Enum$Trade2TicketStatus? ticketStatus,
    Enum$Trade2TicketType? ticketType,
    DateTime? publishedToTrade,
    DateTime? createdDate,
    int? createdDateEpoch,
    String? createdBy,
    double? price,
    List<
      Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines
    >?
    lines,
    String? currency,
    DateTime? ticketDate,
    String? vehicleNo,
    String? locationCode,
    String? locationName,
    String? $__typename,
    List<
      Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets
    >?
    mediaAssets,
  });
  TRes lines(
    Iterable<
      Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines
    >
    Function(
      Iterable<
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines<
          Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines
        >
      >,
    )
    _fn,
  );
  TRes mediaAssets(
    Iterable<
      Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets
    >
    Function(
      Iterable<
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets<
          Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets<
  TRes
>
    implements
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets<
          TRes
        > {
  _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets(
    this._instance,
    this._then,
  );

  final Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets
  _instance;

  final TRes Function(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? key = _undefined,
    Object? trade2Key = _undefined,
    Object? partyAccountNo = _undefined,
    Object? partyName = _undefined,
    Object? depotNo = _undefined,
    Object? yardId = _undefined,
    Object? yardCode = _undefined,
    Object? ticketNumber = _undefined,
    Object? ticketCategory = _undefined,
    Object? ticketStatus = _undefined,
    Object? ticketType = _undefined,
    Object? publishedToTrade = _undefined,
    Object? createdDate = _undefined,
    Object? createdDateEpoch = _undefined,
    Object? createdBy = _undefined,
    Object? price = _undefined,
    Object? lines = _undefined,
    Object? currency = _undefined,
    Object? ticketDate = _undefined,
    Object? vehicleNo = _undefined,
    Object? locationCode = _undefined,
    Object? locationName = _undefined,
    Object? $__typename = _undefined,
    Object? mediaAssets = _undefined,
  }) => _then(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets(
      id: id == _undefined ? _instance.id : (id as String?),
      key: key == _undefined || key == null ? _instance.key : (key as String),
      trade2Key: trade2Key == _undefined
          ? _instance.trade2Key
          : (trade2Key as int?),
      partyAccountNo: partyAccountNo == _undefined
          ? _instance.partyAccountNo
          : (partyAccountNo as String?),
      partyName: partyName == _undefined
          ? _instance.partyName
          : (partyName as String?),
      depotNo: depotNo == _undefined || depotNo == null
          ? _instance.depotNo
          : (depotNo as String),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      ticketNumber: ticketNumber == _undefined || ticketNumber == null
          ? _instance.ticketNumber
          : (ticketNumber as int),
      ticketCategory: ticketCategory == _undefined || ticketCategory == null
          ? _instance.ticketCategory
          : (ticketCategory as Enum$Trade2TicketCategory),
      ticketStatus: ticketStatus == _undefined || ticketStatus == null
          ? _instance.ticketStatus
          : (ticketStatus as Enum$Trade2TicketStatus),
      ticketType: ticketType == _undefined || ticketType == null
          ? _instance.ticketType
          : (ticketType as Enum$Trade2TicketType),
      publishedToTrade: publishedToTrade == _undefined
          ? _instance.publishedToTrade
          : (publishedToTrade as DateTime?),
      createdDate: createdDate == _undefined || createdDate == null
          ? _instance.createdDate
          : (createdDate as DateTime),
      createdDateEpoch:
          createdDateEpoch == _undefined || createdDateEpoch == null
          ? _instance.createdDateEpoch
          : (createdDateEpoch as int),
      createdBy: createdBy == _undefined || createdBy == null
          ? _instance.createdBy
          : (createdBy as String),
      price: price == _undefined || price == null
          ? _instance.price
          : (price as double),
      lines: lines == _undefined || lines == null
          ? _instance.lines
          : (lines
                as List<
                  Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines
                >),
      currency: currency == _undefined || currency == null
          ? _instance.currency
          : (currency as String),
      ticketDate: ticketDate == _undefined || ticketDate == null
          ? _instance.ticketDate
          : (ticketDate as DateTime),
      vehicleNo: vehicleNo == _undefined
          ? _instance.vehicleNo
          : (vehicleNo as String?),
      locationCode: locationCode == _undefined
          ? _instance.locationCode
          : (locationCode as String?),
      locationName: locationName == _undefined
          ? _instance.locationName
          : (locationName as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets
                as List<
                  Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets
                >),
    ),
  );

  TRes lines(
    Iterable<
      Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines
    >
    Function(
      Iterable<
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines<
          Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines
        >
      >,
    )
    _fn,
  ) => call(
    lines: _fn(
      _instance.lines.map(
        (e) =>
            CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes mediaAssets(
    Iterable<
      Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets
    >
    Function(
      Iterable<
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets<
          Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) =>
            CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets<
  TRes
>
    implements
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets<
          TRes
        > {
  _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? key,
    int? trade2Key,
    String? partyAccountNo,
    String? partyName,
    String? depotNo,
    String? yardId,
    String? yardCode,
    int? ticketNumber,
    Enum$Trade2TicketCategory? ticketCategory,
    Enum$Trade2TicketStatus? ticketStatus,
    Enum$Trade2TicketType? ticketType,
    DateTime? publishedToTrade,
    DateTime? createdDate,
    int? createdDateEpoch,
    String? createdBy,
    double? price,
    List<
      Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines
    >?
    lines,
    String? currency,
    DateTime? ticketDate,
    String? vehicleNo,
    String? locationCode,
    String? locationName,
    String? $__typename,
    List<
      Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets
    >?
    mediaAssets,
  }) => _res;

  lines(_fn) => _res;

  mediaAssets(_fn) => _res;
}

class Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines
    implements Fragment$Trade2TicketFields$lines {
  Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines({
    required this.grossWeight,
    required this.netWeight,
    required this.gradeId,
    required this.gradeCode,
    required this.gradeName,
    required this.lineNumber,
    required this.heapId,
    required this.heapCode,
    required this.rate,
    this.weightSerial,
    required this.isActive,
    required this.price,
    required this.ewcCode,
    this.partyContractRef,
    this.partyContractPart,
    required this.priceOrigin,
    this.binNo,
    this.weighedBy,
    this.sealNo,
    this.consgnNo,
    this.comments,
    this.$__typename = 'Trade2TicketLine',
  });

  factory Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$grossWeight = json['grossWeight'];
    final l$netWeight = json['netWeight'];
    final l$gradeId = json['gradeId'];
    final l$gradeCode = json['gradeCode'];
    final l$gradeName = json['gradeName'];
    final l$lineNumber = json['lineNumber'];
    final l$heapId = json['heapId'];
    final l$heapCode = json['heapCode'];
    final l$rate = json['rate'];
    final l$weightSerial = json['weightSerial'];
    final l$isActive = json['isActive'];
    final l$price = json['price'];
    final l$ewcCode = json['ewcCode'];
    final l$partyContractRef = json['partyContractRef'];
    final l$partyContractPart = json['partyContractPart'];
    final l$priceOrigin = json['priceOrigin'];
    final l$binNo = json['binNo'];
    final l$weighedBy = json['weighedBy'];
    final l$sealNo = json['sealNo'];
    final l$consgnNo = json['consgnNo'];
    final l$comments = json['comments'];
    final l$$__typename = json['__typename'];
    return Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines(
      grossWeight:
          Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight.fromJson(
            (l$grossWeight as Map<String, dynamic>),
          ),
      netWeight:
          Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight.fromJson(
            (l$netWeight as Map<String, dynamic>),
          ),
      gradeId: (l$gradeId as String),
      gradeCode: (l$gradeCode as String),
      gradeName: (l$gradeName as String),
      lineNumber: (l$lineNumber as int),
      heapId: (l$heapId as String),
      heapCode: (l$heapCode as String),
      rate:
          Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate.fromJson(
            (l$rate as Map<String, dynamic>),
          ),
      weightSerial: (l$weightSerial as String?),
      isActive: (l$isActive as bool),
      price: (l$price as num).toDouble(),
      ewcCode: (l$ewcCode as String),
      partyContractRef: (l$partyContractRef as String?),
      partyContractPart: (l$partyContractPart as String?),
      priceOrigin: fromJson$Enum$Trade2PriceOriginType(
        (l$priceOrigin as String),
      ),
      binNo: (l$binNo as String?),
      weighedBy: (l$weighedBy as String?),
      sealNo: (l$sealNo as String?),
      consgnNo: (l$consgnNo as String?),
      comments: (l$comments as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight
  grossWeight;

  final Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight
  netWeight;

  final String gradeId;

  final String gradeCode;

  final String gradeName;

  final int lineNumber;

  final String heapId;

  final String heapCode;

  final Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate
  rate;

  final String? weightSerial;

  final bool isActive;

  final double price;

  final String ewcCode;

  final String? partyContractRef;

  final String? partyContractPart;

  final Enum$Trade2PriceOriginType priceOrigin;

  final String? binNo;

  final String? weighedBy;

  final String? sealNo;

  final String? consgnNo;

  final String? comments;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$grossWeight = grossWeight;
    _resultData['grossWeight'] = l$grossWeight.toJson();
    final l$netWeight = netWeight;
    _resultData['netWeight'] = l$netWeight.toJson();
    final l$gradeId = gradeId;
    _resultData['gradeId'] = l$gradeId;
    final l$gradeCode = gradeCode;
    _resultData['gradeCode'] = l$gradeCode;
    final l$gradeName = gradeName;
    _resultData['gradeName'] = l$gradeName;
    final l$lineNumber = lineNumber;
    _resultData['lineNumber'] = l$lineNumber;
    final l$heapId = heapId;
    _resultData['heapId'] = l$heapId;
    final l$heapCode = heapCode;
    _resultData['heapCode'] = l$heapCode;
    final l$rate = rate;
    _resultData['rate'] = l$rate.toJson();
    final l$weightSerial = weightSerial;
    _resultData['weightSerial'] = l$weightSerial;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$ewcCode = ewcCode;
    _resultData['ewcCode'] = l$ewcCode;
    final l$partyContractRef = partyContractRef;
    _resultData['partyContractRef'] = l$partyContractRef;
    final l$partyContractPart = partyContractPart;
    _resultData['partyContractPart'] = l$partyContractPart;
    final l$priceOrigin = priceOrigin;
    _resultData['priceOrigin'] = toJson$Enum$Trade2PriceOriginType(
      l$priceOrigin,
    );
    final l$binNo = binNo;
    _resultData['binNo'] = l$binNo;
    final l$weighedBy = weighedBy;
    _resultData['weighedBy'] = l$weighedBy;
    final l$sealNo = sealNo;
    _resultData['sealNo'] = l$sealNo;
    final l$consgnNo = consgnNo;
    _resultData['consgnNo'] = l$consgnNo;
    final l$comments = comments;
    _resultData['comments'] = l$comments;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$grossWeight = grossWeight;
    final l$netWeight = netWeight;
    final l$gradeId = gradeId;
    final l$gradeCode = gradeCode;
    final l$gradeName = gradeName;
    final l$lineNumber = lineNumber;
    final l$heapId = heapId;
    final l$heapCode = heapCode;
    final l$rate = rate;
    final l$weightSerial = weightSerial;
    final l$isActive = isActive;
    final l$price = price;
    final l$ewcCode = ewcCode;
    final l$partyContractRef = partyContractRef;
    final l$partyContractPart = partyContractPart;
    final l$priceOrigin = priceOrigin;
    final l$binNo = binNo;
    final l$weighedBy = weighedBy;
    final l$sealNo = sealNo;
    final l$consgnNo = consgnNo;
    final l$comments = comments;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$grossWeight,
      l$netWeight,
      l$gradeId,
      l$gradeCode,
      l$gradeName,
      l$lineNumber,
      l$heapId,
      l$heapCode,
      l$rate,
      l$weightSerial,
      l$isActive,
      l$price,
      l$ewcCode,
      l$partyContractRef,
      l$partyContractPart,
      l$priceOrigin,
      l$binNo,
      l$weighedBy,
      l$sealNo,
      l$consgnNo,
      l$comments,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$grossWeight = grossWeight;
    final lOther$grossWeight = other.grossWeight;
    if (l$grossWeight != lOther$grossWeight) {
      return false;
    }
    final l$netWeight = netWeight;
    final lOther$netWeight = other.netWeight;
    if (l$netWeight != lOther$netWeight) {
      return false;
    }
    final l$gradeId = gradeId;
    final lOther$gradeId = other.gradeId;
    if (l$gradeId != lOther$gradeId) {
      return false;
    }
    final l$gradeCode = gradeCode;
    final lOther$gradeCode = other.gradeCode;
    if (l$gradeCode != lOther$gradeCode) {
      return false;
    }
    final l$gradeName = gradeName;
    final lOther$gradeName = other.gradeName;
    if (l$gradeName != lOther$gradeName) {
      return false;
    }
    final l$lineNumber = lineNumber;
    final lOther$lineNumber = other.lineNumber;
    if (l$lineNumber != lOther$lineNumber) {
      return false;
    }
    final l$heapId = heapId;
    final lOther$heapId = other.heapId;
    if (l$heapId != lOther$heapId) {
      return false;
    }
    final l$heapCode = heapCode;
    final lOther$heapCode = other.heapCode;
    if (l$heapCode != lOther$heapCode) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$weightSerial = weightSerial;
    final lOther$weightSerial = other.weightSerial;
    if (l$weightSerial != lOther$weightSerial) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$ewcCode = ewcCode;
    final lOther$ewcCode = other.ewcCode;
    if (l$ewcCode != lOther$ewcCode) {
      return false;
    }
    final l$partyContractRef = partyContractRef;
    final lOther$partyContractRef = other.partyContractRef;
    if (l$partyContractRef != lOther$partyContractRef) {
      return false;
    }
    final l$partyContractPart = partyContractPart;
    final lOther$partyContractPart = other.partyContractPart;
    if (l$partyContractPart != lOther$partyContractPart) {
      return false;
    }
    final l$priceOrigin = priceOrigin;
    final lOther$priceOrigin = other.priceOrigin;
    if (l$priceOrigin != lOther$priceOrigin) {
      return false;
    }
    final l$binNo = binNo;
    final lOther$binNo = other.binNo;
    if (l$binNo != lOther$binNo) {
      return false;
    }
    final l$weighedBy = weighedBy;
    final lOther$weighedBy = other.weighedBy;
    if (l$weighedBy != lOther$weighedBy) {
      return false;
    }
    final l$sealNo = sealNo;
    final lOther$sealNo = other.sealNo;
    if (l$sealNo != lOther$sealNo) {
      return false;
    }
    final l$consgnNo = consgnNo;
    final lOther$consgnNo = other.consgnNo;
    if (l$consgnNo != lOther$consgnNo) {
      return false;
    }
    final l$comments = comments;
    final lOther$comments = other.comments;
    if (l$comments != lOther$comments) {
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

extension UtilityExtension$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines
    on Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines {
  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines<
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines
  >
  get copyWith =>
      CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines<
  TRes
> {
  factory CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines
    instance,
    TRes Function(
      Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines,
    )
    then,
  ) = _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines;

  factory CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines;

  TRes call({
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight?
    grossWeight,
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight?
    netWeight,
    String? gradeId,
    String? gradeCode,
    String? gradeName,
    int? lineNumber,
    String? heapId,
    String? heapCode,
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate?
    rate,
    String? weightSerial,
    bool? isActive,
    double? price,
    String? ewcCode,
    String? partyContractRef,
    String? partyContractPart,
    Enum$Trade2PriceOriginType? priceOrigin,
    String? binNo,
    String? weighedBy,
    String? sealNo,
    String? consgnNo,
    String? comments,
    String? $__typename,
  });
  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight<
    TRes
  >
  get grossWeight;
  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight<
    TRes
  >
  get netWeight;
  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate<
    TRes
  >
  get rate;
}

class _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines<
  TRes
>
    implements
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines<
          TRes
        > {
  _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines(
    this._instance,
    this._then,
  );

  final Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines
  _instance;

  final TRes Function(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? grossWeight = _undefined,
    Object? netWeight = _undefined,
    Object? gradeId = _undefined,
    Object? gradeCode = _undefined,
    Object? gradeName = _undefined,
    Object? lineNumber = _undefined,
    Object? heapId = _undefined,
    Object? heapCode = _undefined,
    Object? rate = _undefined,
    Object? weightSerial = _undefined,
    Object? isActive = _undefined,
    Object? price = _undefined,
    Object? ewcCode = _undefined,
    Object? partyContractRef = _undefined,
    Object? partyContractPart = _undefined,
    Object? priceOrigin = _undefined,
    Object? binNo = _undefined,
    Object? weighedBy = _undefined,
    Object? sealNo = _undefined,
    Object? consgnNo = _undefined,
    Object? comments = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines(
      grossWeight: grossWeight == _undefined || grossWeight == null
          ? _instance.grossWeight
          : (grossWeight
                as Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight),
      netWeight: netWeight == _undefined || netWeight == null
          ? _instance.netWeight
          : (netWeight
                as Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight),
      gradeId: gradeId == _undefined || gradeId == null
          ? _instance.gradeId
          : (gradeId as String),
      gradeCode: gradeCode == _undefined || gradeCode == null
          ? _instance.gradeCode
          : (gradeCode as String),
      gradeName: gradeName == _undefined || gradeName == null
          ? _instance.gradeName
          : (gradeName as String),
      lineNumber: lineNumber == _undefined || lineNumber == null
          ? _instance.lineNumber
          : (lineNumber as int),
      heapId: heapId == _undefined || heapId == null
          ? _instance.heapId
          : (heapId as String),
      heapCode: heapCode == _undefined || heapCode == null
          ? _instance.heapCode
          : (heapCode as String),
      rate: rate == _undefined || rate == null
          ? _instance.rate
          : (rate
                as Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate),
      weightSerial: weightSerial == _undefined
          ? _instance.weightSerial
          : (weightSerial as String?),
      isActive: isActive == _undefined || isActive == null
          ? _instance.isActive
          : (isActive as bool),
      price: price == _undefined || price == null
          ? _instance.price
          : (price as double),
      ewcCode: ewcCode == _undefined || ewcCode == null
          ? _instance.ewcCode
          : (ewcCode as String),
      partyContractRef: partyContractRef == _undefined
          ? _instance.partyContractRef
          : (partyContractRef as String?),
      partyContractPart: partyContractPart == _undefined
          ? _instance.partyContractPart
          : (partyContractPart as String?),
      priceOrigin: priceOrigin == _undefined || priceOrigin == null
          ? _instance.priceOrigin
          : (priceOrigin as Enum$Trade2PriceOriginType),
      binNo: binNo == _undefined ? _instance.binNo : (binNo as String?),
      weighedBy: weighedBy == _undefined
          ? _instance.weighedBy
          : (weighedBy as String?),
      sealNo: sealNo == _undefined ? _instance.sealNo : (sealNo as String?),
      consgnNo: consgnNo == _undefined
          ? _instance.consgnNo
          : (consgnNo as String?),
      comments: comments == _undefined
          ? _instance.comments
          : (comments as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight<
    TRes
  >
  get grossWeight {
    final local$grossWeight = _instance.grossWeight;
    return CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight(
      local$grossWeight,
      (e) => call(grossWeight: e),
    );
  }

  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight<
    TRes
  >
  get netWeight {
    final local$netWeight = _instance.netWeight;
    return CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight(
      local$netWeight,
      (e) => call(netWeight: e),
    );
  }

  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate<
    TRes
  >
  get rate {
    final local$rate = _instance.rate;
    return CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate(
      local$rate,
      (e) => call(rate: e),
    );
  }
}

class _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines<
  TRes
>
    implements
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines<
          TRes
        > {
  _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines(
    this._res,
  );

  TRes _res;

  call({
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight?
    grossWeight,
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight?
    netWeight,
    String? gradeId,
    String? gradeCode,
    String? gradeName,
    int? lineNumber,
    String? heapId,
    String? heapCode,
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate?
    rate,
    String? weightSerial,
    bool? isActive,
    double? price,
    String? ewcCode,
    String? partyContractRef,
    String? partyContractPart,
    Enum$Trade2PriceOriginType? priceOrigin,
    String? binNo,
    String? weighedBy,
    String? sealNo,
    String? consgnNo,
    String? comments,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight<
    TRes
  >
  get grossWeight =>
      CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight.stub(
        _res,
      );

  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight<
    TRes
  >
  get netWeight =>
      CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight.stub(
        _res,
      );

  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate<
    TRes
  >
  get rate =>
      CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate.stub(
        _res,
      );
}

class Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight
    implements Fragment$Trade2TicketFields$lines$grossWeight {
  Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'Trade2UomValue',
  });

  factory Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
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

extension UtilityExtension$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight
    on
        Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight {
  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight<
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight
  >
  get copyWith =>
      CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight<
  TRes
> {
  factory CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight
    instance,
    TRes Function(
      Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight,
    )
    then,
  ) = _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight;

  factory CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight;

  TRes call({Enum$Uom? uom, double? value, int? id, String? $__typename});
}

class _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight<
  TRes
>
    implements
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight<
          TRes
        > {
  _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight(
    this._instance,
    this._then,
  );

  final Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight
  _instance;

  final TRes Function(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      id: id == _undefined || id == null ? _instance.id : (id as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight<
  TRes
>
    implements
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight<
          TRes
        > {
  _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$grossWeight(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, int? id, String? $__typename}) => _res;
}

class Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight
    implements Fragment$Trade2TicketFields$lines$netWeight {
  Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'Trade2UomValue',
  });

  factory Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
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

extension UtilityExtension$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight
    on
        Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight {
  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight<
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight
  >
  get copyWith =>
      CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight<
  TRes
> {
  factory CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight
    instance,
    TRes Function(
      Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight,
    )
    then,
  ) = _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight;

  factory CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight;

  TRes call({Enum$Uom? uom, double? value, int? id, String? $__typename});
}

class _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight<
  TRes
>
    implements
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight<
          TRes
        > {
  _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight(
    this._instance,
    this._then,
  );

  final Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight
  _instance;

  final TRes Function(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      id: id == _undefined || id == null ? _instance.id : (id as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight<
  TRes
>
    implements
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight<
          TRes
        > {
  _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$netWeight(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, int? id, String? $__typename}) => _res;
}

class Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate
    implements Fragment$Trade2TicketFields$lines$rate {
  Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'Trade2UomValue',
  });

  factory Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
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

extension UtilityExtension$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate
    on Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate {
  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate<
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate
  >
  get copyWith =>
      CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate<
  TRes
> {
  factory CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate
    instance,
    TRes Function(
      Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate,
    )
    then,
  ) = _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate;

  factory CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate;

  TRes call({Enum$Uom? uom, double? value, int? id, String? $__typename});
}

class _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate<
  TRes
>
    implements
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate<
          TRes
        > {
  _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate(
    this._instance,
    this._then,
  );

  final Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate
  _instance;

  final TRes Function(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      id: id == _undefined || id == null ? _instance.id : (id as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate<
  TRes
>
    implements
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate<
          TRes
        > {
  _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$lines$rate(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, int? id, String? $__typename}) => _res;
}

class Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets {
  Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets({
    required this.url,
    this.sasUrl,
    this.sasThumbnailUrl,
    required this.type,
    this.$__typename = 'Trade2MediaAsset',
  });

  factory Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$sasUrl = json['sasUrl'];
    final l$sasThumbnailUrl = json['sasThumbnailUrl'];
    final l$type = json['type'];
    final l$$__typename = json['__typename'];
    return Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets(
      url: (l$url as String),
      sasUrl: (l$sasUrl as String?),
      sasThumbnailUrl: (l$sasThumbnailUrl as String?),
      type: fromJson$Enum$Trade2MediaAssetType((l$type as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String? sasUrl;

  final String? sasThumbnailUrl;

  final Enum$Trade2MediaAssetType type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$sasThumbnailUrl = sasThumbnailUrl;
    _resultData['sasThumbnailUrl'] = l$sasThumbnailUrl;
    final l$type = type;
    _resultData['type'] = toJson$Enum$Trade2MediaAssetType(l$type);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$sasUrl = sasUrl;
    final l$sasThumbnailUrl = sasThumbnailUrl;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$url,
      l$sasUrl,
      l$sasThumbnailUrl,
      l$type,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$sasUrl = sasUrl;
    final lOther$sasUrl = other.sasUrl;
    if (l$sasUrl != lOther$sasUrl) {
      return false;
    }
    final l$sasThumbnailUrl = sasThumbnailUrl;
    final lOther$sasThumbnailUrl = other.sasThumbnailUrl;
    if (l$sasThumbnailUrl != lOther$sasThumbnailUrl) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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

extension UtilityExtension$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets
    on Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets {
  CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets<
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets
  >
  get copyWith =>
      CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets<
  TRes
> {
  factory CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets
    instance,
    TRes Function(
      Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets,
    )
    then,
  ) = _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets;

  factory CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets;

  TRes call({
    String? url,
    String? sasUrl,
    String? sasThumbnailUrl,
    Enum$Trade2MediaAssetType? type,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets<
          TRes
        > {
  _CopyWithImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets(
    this._instance,
    this._then,
  );

  final Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets
  _instance;

  final TRes Function(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? sasUrl = _undefined,
    Object? sasThumbnailUrl = _undefined,
    Object? type = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      sasThumbnailUrl: sasThumbnailUrl == _undefined
          ? _instance.sasThumbnailUrl
          : (sasThumbnailUrl as String?),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$Trade2MediaAssetType),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets<
          TRes
        > {
  _CopyWithStubImpl$Query$LoadTicketGallery$loadTicketGalleryDocument$gallery$tickets$mediaAssets(
    this._res,
  );

  TRes _res;

  call({
    String? url,
    String? sasUrl,
    String? sasThumbnailUrl,
    Enum$Trade2MediaAssetType? type,
    String? $__typename,
  }) => _res;
}
