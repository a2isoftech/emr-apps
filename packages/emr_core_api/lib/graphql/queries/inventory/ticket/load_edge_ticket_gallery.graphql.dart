import '../../../fragments/inventory/ticket/account_details_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/media_asset_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/non_stock_ticket_line_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/ticket_account.graphql.dart';
import '../../../fragments/inventory/ticket/ticket_deduction_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/ticket_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/ticket_line_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/uom_value.graphql.dart';
import '../../../fragments/payment/advance_fields.graphql.dart';
import '../../../fragments/payments/encashment_values.graphql.dart';
import '../../../fragments/payments/payment_deduction.graphql.dart';
import '../../../fragments/payments/payment_deduction_items.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$LoadEdgeTicketGallery {
  factory Variables$Query$LoadEdgeTicketGallery({required String id}) =>
      Variables$Query$LoadEdgeTicketGallery._({r'id': id});

  Variables$Query$LoadEdgeTicketGallery._(this._$data);

  factory Variables$Query$LoadEdgeTicketGallery.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$LoadEdgeTicketGallery._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$LoadEdgeTicketGallery<
    Variables$Query$LoadEdgeTicketGallery
  >
  get copyWith =>
      CopyWith$Variables$Query$LoadEdgeTicketGallery(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$LoadEdgeTicketGallery ||
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

abstract class CopyWith$Variables$Query$LoadEdgeTicketGallery<TRes> {
  factory CopyWith$Variables$Query$LoadEdgeTicketGallery(
    Variables$Query$LoadEdgeTicketGallery instance,
    TRes Function(Variables$Query$LoadEdgeTicketGallery) then,
  ) = _CopyWithImpl$Variables$Query$LoadEdgeTicketGallery;

  factory CopyWith$Variables$Query$LoadEdgeTicketGallery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$LoadEdgeTicketGallery;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$LoadEdgeTicketGallery<TRes>
    implements CopyWith$Variables$Query$LoadEdgeTicketGallery<TRes> {
  _CopyWithImpl$Variables$Query$LoadEdgeTicketGallery(
    this._instance,
    this._then,
  );

  final Variables$Query$LoadEdgeTicketGallery _instance;

  final TRes Function(Variables$Query$LoadEdgeTicketGallery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$LoadEdgeTicketGallery._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$LoadEdgeTicketGallery<TRes>
    implements CopyWith$Variables$Query$LoadEdgeTicketGallery<TRes> {
  _CopyWithStubImpl$Variables$Query$LoadEdgeTicketGallery(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$LoadEdgeTicketGallery {
  Query$LoadEdgeTicketGallery({
    required this.loadEdgeTicketGalleryDocument,
    this.$__typename = 'Query',
  });

  factory Query$LoadEdgeTicketGallery.fromJson(Map<String, dynamic> json) {
    final l$loadEdgeTicketGalleryDocument =
        json['loadEdgeTicketGalleryDocument'];
    final l$$__typename = json['__typename'];
    return Query$LoadEdgeTicketGallery(
      loadEdgeTicketGalleryDocument:
          Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument.fromJson(
            (l$loadEdgeTicketGalleryDocument as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument
  loadEdgeTicketGalleryDocument;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$loadEdgeTicketGalleryDocument = loadEdgeTicketGalleryDocument;
    _resultData['loadEdgeTicketGalleryDocument'] =
        l$loadEdgeTicketGalleryDocument.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$loadEdgeTicketGalleryDocument = loadEdgeTicketGalleryDocument;
    final l$$__typename = $__typename;
    return Object.hashAll([l$loadEdgeTicketGalleryDocument, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LoadEdgeTicketGallery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$loadEdgeTicketGalleryDocument = loadEdgeTicketGalleryDocument;
    final lOther$loadEdgeTicketGalleryDocument =
        other.loadEdgeTicketGalleryDocument;
    if (l$loadEdgeTicketGalleryDocument !=
        lOther$loadEdgeTicketGalleryDocument) {
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

extension UtilityExtension$Query$LoadEdgeTicketGallery
    on Query$LoadEdgeTicketGallery {
  CopyWith$Query$LoadEdgeTicketGallery<Query$LoadEdgeTicketGallery>
  get copyWith => CopyWith$Query$LoadEdgeTicketGallery(this, (i) => i);
}

abstract class CopyWith$Query$LoadEdgeTicketGallery<TRes> {
  factory CopyWith$Query$LoadEdgeTicketGallery(
    Query$LoadEdgeTicketGallery instance,
    TRes Function(Query$LoadEdgeTicketGallery) then,
  ) = _CopyWithImpl$Query$LoadEdgeTicketGallery;

  factory CopyWith$Query$LoadEdgeTicketGallery.stub(TRes res) =
      _CopyWithStubImpl$Query$LoadEdgeTicketGallery;

  TRes call({
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument?
    loadEdgeTicketGalleryDocument,
    String? $__typename,
  });
  CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument<TRes>
  get loadEdgeTicketGalleryDocument;
}

class _CopyWithImpl$Query$LoadEdgeTicketGallery<TRes>
    implements CopyWith$Query$LoadEdgeTicketGallery<TRes> {
  _CopyWithImpl$Query$LoadEdgeTicketGallery(this._instance, this._then);

  final Query$LoadEdgeTicketGallery _instance;

  final TRes Function(Query$LoadEdgeTicketGallery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? loadEdgeTicketGalleryDocument = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadEdgeTicketGallery(
      loadEdgeTicketGalleryDocument:
          loadEdgeTicketGalleryDocument == _undefined ||
              loadEdgeTicketGalleryDocument == null
          ? _instance.loadEdgeTicketGalleryDocument
          : (loadEdgeTicketGalleryDocument
                as Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument<TRes>
  get loadEdgeTicketGalleryDocument {
    final local$loadEdgeTicketGalleryDocument =
        _instance.loadEdgeTicketGalleryDocument;
    return CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument(
      local$loadEdgeTicketGalleryDocument,
      (e) => call(loadEdgeTicketGalleryDocument: e),
    );
  }
}

class _CopyWithStubImpl$Query$LoadEdgeTicketGallery<TRes>
    implements CopyWith$Query$LoadEdgeTicketGallery<TRes> {
  _CopyWithStubImpl$Query$LoadEdgeTicketGallery(this._res);

  TRes _res;

  call({
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument?
    loadEdgeTicketGalleryDocument,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument<TRes>
  get loadEdgeTicketGalleryDocument =>
      CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument.stub(
        _res,
      );
}

const documentNodeQueryLoadEdgeTicketGallery = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'LoadEdgeTicketGallery'),
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
            name: NameNode(value: 'loadEdgeTicketGalleryDocument'),
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
                              name: NameNode(value: 'TicketFields'),
                              directives: [],
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
    fragmentDefinitionTicketFields,
    fragmentDefinitionTicketAccountFields,
    fragmentDefinitionAccountDetails,
    fragmentDefinitionUomValueFields,
    fragmentDefinitionTicketLineFields,
    fragmentDefinitionDeductionFields,
    fragmentDefinitionMediaAssetFields,
    fragmentDefinitionNonStockTicketLineFields,
    fragmentDefinitionPaymentDeductionFields,
    fragmentDefinitionEncashmentValueFields,
    fragmentDefinitionPaymentDeductionItemFields,
    fragmentDefinitionAdvanceFields,
  ],
);

class Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument {
  Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument({
    required this.changeVector,
    required this.gallery,
    this.$__typename = 'DocumentOfEdgeTicketGallery',
  });

  factory Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$changeVector = json['changeVector'];
    final l$gallery = json['gallery'];
    final l$$__typename = json['__typename'];
    return Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument(
      changeVector: (l$changeVector as String),
      gallery:
          Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery.fromJson(
            (l$gallery as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String changeVector;

  final Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery
  gallery;

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
    if (other is! Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument ||
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

extension UtilityExtension$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument
    on Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument {
  CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument<
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument
  >
  get copyWith =>
      CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument<
  TRes
> {
  factory CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument(
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument instance,
    TRes Function(Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument)
    then,
  ) = _CopyWithImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument;

  factory CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument;

  TRes call({
    String? changeVector,
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery? gallery,
    String? $__typename,
  });
  CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery<
    TRes
  >
  get gallery;
}

class _CopyWithImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument<
  TRes
>
    implements
        CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument<
          TRes
        > {
  _CopyWithImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument(
    this._instance,
    this._then,
  );

  final Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument _instance;

  final TRes Function(Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? changeVector = _undefined,
    Object? gallery = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument(
      changeVector: changeVector == _undefined || changeVector == null
          ? _instance.changeVector
          : (changeVector as String),
      gallery: gallery == _undefined || gallery == null
          ? _instance.gallery
          : (gallery
                as Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery<
    TRes
  >
  get gallery {
    final local$gallery = _instance.gallery;
    return CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery(
      local$gallery,
      (e) => call(gallery: e),
    );
  }
}

class _CopyWithStubImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument<
  TRes
>
    implements
        CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument<
          TRes
        > {
  _CopyWithStubImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument(
    this._res,
  );

  TRes _res;

  call({
    String? changeVector,
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery? gallery,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery<
    TRes
  >
  get gallery =>
      CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery.stub(
        _res,
      );
}

class Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery {
  Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery({
    this.publicUrl,
    required this.id,
    required this.title,
    required this.excludedImageUrls,
    required this.tickets,
    required this.created,
    required this.modified,
    required this.tags,
    required this.active,
    this.$__typename = 'EdgeTicketGallery',
  });

  factory Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$publicUrl = json['publicUrl'];
    final l$id = json['id'];
    final l$title = json['title'];
    final l$excludedImageUrls = json['excludedImageUrls'];
    final l$tickets = json['tickets'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$tags = json['tags'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery(
      publicUrl: (l$publicUrl as String?),
      id: (l$id as String),
      title: (l$title as String),
      excludedImageUrls: (l$excludedImageUrls as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      tickets: (l$tickets as List<dynamic>)
          .map(
            (e) => Fragment$TicketFields.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      created:
          Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      modified:
          Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified.fromJson(
            (l$modified as Map<String, dynamic>),
          ),
      tags: (l$tags as List<dynamic>).map((e) => (e as String)).toList(),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? publicUrl;

  final String id;

  final String title;

  final List<String> excludedImageUrls;

  final List<Fragment$TicketFields> tickets;

  final Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created
  created;

  final Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified
  modified;

  final List<String> tags;

  final bool active;

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
    final l$publicUrl = publicUrl;
    final l$id = id;
    final l$title = title;
    final l$excludedImageUrls = excludedImageUrls;
    final l$tickets = tickets;
    final l$created = created;
    final l$modified = modified;
    final l$tags = tags;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$publicUrl,
      l$id,
      l$title,
      Object.hashAll(l$excludedImageUrls.map((v) => v)),
      Object.hashAll(l$tickets.map((v) => v)),
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
            is! Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery ||
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

extension UtilityExtension$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery
    on Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery {
  CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery<
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery
  >
  get copyWith =>
      CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery<
  TRes
> {
  factory CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery(
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery instance,
    TRes Function(
      Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery,
    )
    then,
  ) = _CopyWithImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery;

  factory CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery;

  TRes call({
    String? publicUrl,
    String? id,
    String? title,
    List<String>? excludedImageUrls,
    List<Fragment$TicketFields>? tickets,
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created?
    created,
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified?
    modified,
    List<String>? tags,
    bool? active,
    String? $__typename,
  });
  TRes tickets(
    Iterable<Fragment$TicketFields> Function(
      Iterable<CopyWith$Fragment$TicketFields<Fragment$TicketFields>>,
    )
    _fn,
  );
  CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created<
    TRes
  >
  get created;
  CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified<
    TRes
  >
  get modified;
}

class _CopyWithImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery<
  TRes
>
    implements
        CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery<
          TRes
        > {
  _CopyWithImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery(
    this._instance,
    this._then,
  );

  final Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery
  _instance;

  final TRes Function(
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? publicUrl = _undefined,
    Object? id = _undefined,
    Object? title = _undefined,
    Object? excludedImageUrls = _undefined,
    Object? tickets = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? tags = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery(
      publicUrl: publicUrl == _undefined
          ? _instance.publicUrl
          : (publicUrl as String?),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      excludedImageUrls:
          excludedImageUrls == _undefined || excludedImageUrls == null
          ? _instance.excludedImageUrls
          : (excludedImageUrls as List<String>),
      tickets: tickets == _undefined || tickets == null
          ? _instance.tickets
          : (tickets as List<Fragment$TicketFields>),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified
                as Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified),
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

  TRes tickets(
    Iterable<Fragment$TicketFields> Function(
      Iterable<CopyWith$Fragment$TicketFields<Fragment$TicketFields>>,
    )
    _fn,
  ) => call(
    tickets: _fn(
      _instance.tickets.map((e) => CopyWith$Fragment$TicketFields(e, (i) => i)),
    ).toList(),
  );

  CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified<
    TRes
  >
  get modified {
    final local$modified = _instance.modified;
    return CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery<
  TRes
>
    implements
        CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery<
          TRes
        > {
  _CopyWithStubImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery(
    this._res,
  );

  TRes _res;

  call({
    String? publicUrl,
    String? id,
    String? title,
    List<String>? excludedImageUrls,
    List<Fragment$TicketFields>? tickets,
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created?
    created,
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified?
    modified,
    List<String>? tags,
    bool? active,
    String? $__typename,
  }) => _res;

  tickets(_fn) => _res;

  CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created<
    TRes
  >
  get created =>
      CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created.stub(
        _res,
      );

  CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified<
    TRes
  >
  get modified =>
      CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified.stub(
        _res,
      );
}

class Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created {
  Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created(
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
            is! Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created ||
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

extension UtilityExtension$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created
    on Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created {
  CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created<
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created
  >
  get copyWith =>
      CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created<
  TRes
> {
  factory CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created(
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created
    instance,
    TRes Function(
      Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created,
    )
    then,
  ) = _CopyWithImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created;

  factory CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created<
  TRes
>
    implements
        CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created<
          TRes
        > {
  _CopyWithImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created(
    this._instance,
    this._then,
  );

  final Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created
  _instance;

  final TRes Function(
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created(
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

class _CopyWithStubImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created<
  TRes
>
    implements
        CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created<
          TRes
        > {
  _CopyWithStubImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$created(
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

class Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified {
  Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Modified',
  });

  factory Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified(
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
            is! Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified ||
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

extension UtilityExtension$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified
    on Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified {
  CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified<
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified
  >
  get copyWith =>
      CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified<
  TRes
> {
  factory CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified(
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified
    instance,
    TRes Function(
      Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified,
    )
    then,
  ) = _CopyWithImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified;

  factory CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified<
  TRes
>
    implements
        CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified<
          TRes
        > {
  _CopyWithImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified(
    this._instance,
    this._then,
  );

  final Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified
  _instance;

  final TRes Function(
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified(
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

class _CopyWithStubImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified<
  TRes
>
    implements
        CopyWith$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified<
          TRes
        > {
  _CopyWithStubImpl$Query$LoadEdgeTicketGallery$loadEdgeTicketGalleryDocument$gallery$modified(
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
