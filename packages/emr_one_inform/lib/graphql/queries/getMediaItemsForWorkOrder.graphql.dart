import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$getWorkOrderMedia {
  factory Variables$Query$getWorkOrderMedia({
    required String cmpCode,
    required String refId,
  }) =>
      Variables$Query$getWorkOrderMedia._({
        r'cmpCode': cmpCode,
        r'refId': refId,
      });

  Variables$Query$getWorkOrderMedia._(this._$data);

  factory Variables$Query$getWorkOrderMedia.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$cmpCode = data['cmpCode'];
    result$data['cmpCode'] = (l$cmpCode as String);
    final l$refId = data['refId'];
    result$data['refId'] = (l$refId as String);
    return Variables$Query$getWorkOrderMedia._(result$data);
  }

  Map<String, dynamic> _$data;

  String get cmpCode => (_$data['cmpCode'] as String);

  String get refId => (_$data['refId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$cmpCode = cmpCode;
    result$data['cmpCode'] = l$cmpCode;
    final l$refId = refId;
    result$data['refId'] = l$refId;
    return result$data;
  }

  CopyWith$Variables$Query$getWorkOrderMedia<Variables$Query$getWorkOrderMedia>
      get copyWith => CopyWith$Variables$Query$getWorkOrderMedia(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getWorkOrderMedia) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cmpCode = cmpCode;
    final lOther$cmpCode = other.cmpCode;
    if (l$cmpCode != lOther$cmpCode) {
      return false;
    }
    final l$refId = refId;
    final lOther$refId = other.refId;
    if (l$refId != lOther$refId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cmpCode = cmpCode;
    final l$refId = refId;
    return Object.hashAll([
      l$cmpCode,
      l$refId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$getWorkOrderMedia<TRes> {
  factory CopyWith$Variables$Query$getWorkOrderMedia(
    Variables$Query$getWorkOrderMedia instance,
    TRes Function(Variables$Query$getWorkOrderMedia) then,
  ) = _CopyWithImpl$Variables$Query$getWorkOrderMedia;

  factory CopyWith$Variables$Query$getWorkOrderMedia.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getWorkOrderMedia;

  TRes call({
    String? cmpCode,
    String? refId,
  });
}

class _CopyWithImpl$Variables$Query$getWorkOrderMedia<TRes>
    implements CopyWith$Variables$Query$getWorkOrderMedia<TRes> {
  _CopyWithImpl$Variables$Query$getWorkOrderMedia(
    this._instance,
    this._then,
  );

  final Variables$Query$getWorkOrderMedia _instance;

  final TRes Function(Variables$Query$getWorkOrderMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cmpCode = _undefined,
    Object? refId = _undefined,
  }) =>
      _then(Variables$Query$getWorkOrderMedia._({
        ..._instance._$data,
        if (cmpCode != _undefined && cmpCode != null)
          'cmpCode': (cmpCode as String),
        if (refId != _undefined && refId != null) 'refId': (refId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$getWorkOrderMedia<TRes>
    implements CopyWith$Variables$Query$getWorkOrderMedia<TRes> {
  _CopyWithStubImpl$Variables$Query$getWorkOrderMedia(this._res);

  TRes _res;

  call({
    String? cmpCode,
    String? refId,
  }) =>
      _res;
}

class Query$getWorkOrderMedia {
  Query$getWorkOrderMedia({
    required this.mediaItemsForWorkOrder,
    this.$__typename = 'FormsQuery',
  });

  factory Query$getWorkOrderMedia.fromJson(Map<String, dynamic> json) {
    final l$mediaItemsForWorkOrder = json['mediaItemsForWorkOrder'];
    final l$$__typename = json['__typename'];
    return Query$getWorkOrderMedia(
      mediaItemsForWorkOrder: (l$mediaItemsForWorkOrder as List<dynamic>)
          .map((e) => Query$getWorkOrderMedia$mediaItemsForWorkOrder.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getWorkOrderMedia$mediaItemsForWorkOrder>
      mediaItemsForWorkOrder;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mediaItemsForWorkOrder = mediaItemsForWorkOrder;
    _resultData['mediaItemsForWorkOrder'] =
        l$mediaItemsForWorkOrder.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mediaItemsForWorkOrder = mediaItemsForWorkOrder;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$mediaItemsForWorkOrder.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getWorkOrderMedia) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaItemsForWorkOrder = mediaItemsForWorkOrder;
    final lOther$mediaItemsForWorkOrder = other.mediaItemsForWorkOrder;
    if (l$mediaItemsForWorkOrder.length !=
        lOther$mediaItemsForWorkOrder.length) {
      return false;
    }
    for (int i = 0; i < l$mediaItemsForWorkOrder.length; i++) {
      final l$mediaItemsForWorkOrder$entry = l$mediaItemsForWorkOrder[i];
      final lOther$mediaItemsForWorkOrder$entry =
          lOther$mediaItemsForWorkOrder[i];
      if (l$mediaItemsForWorkOrder$entry !=
          lOther$mediaItemsForWorkOrder$entry) {
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

extension UtilityExtension$Query$getWorkOrderMedia on Query$getWorkOrderMedia {
  CopyWith$Query$getWorkOrderMedia<Query$getWorkOrderMedia> get copyWith =>
      CopyWith$Query$getWorkOrderMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getWorkOrderMedia<TRes> {
  factory CopyWith$Query$getWorkOrderMedia(
    Query$getWorkOrderMedia instance,
    TRes Function(Query$getWorkOrderMedia) then,
  ) = _CopyWithImpl$Query$getWorkOrderMedia;

  factory CopyWith$Query$getWorkOrderMedia.stub(TRes res) =
      _CopyWithStubImpl$Query$getWorkOrderMedia;

  TRes call({
    List<Query$getWorkOrderMedia$mediaItemsForWorkOrder>?
        mediaItemsForWorkOrder,
    String? $__typename,
  });
  TRes mediaItemsForWorkOrder(
      Iterable<Query$getWorkOrderMedia$mediaItemsForWorkOrder> Function(
              Iterable<
                  CopyWith$Query$getWorkOrderMedia$mediaItemsForWorkOrder<
                      Query$getWorkOrderMedia$mediaItemsForWorkOrder>>)
          _fn);
}

class _CopyWithImpl$Query$getWorkOrderMedia<TRes>
    implements CopyWith$Query$getWorkOrderMedia<TRes> {
  _CopyWithImpl$Query$getWorkOrderMedia(
    this._instance,
    this._then,
  );

  final Query$getWorkOrderMedia _instance;

  final TRes Function(Query$getWorkOrderMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaItemsForWorkOrder = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getWorkOrderMedia(
        mediaItemsForWorkOrder: mediaItemsForWorkOrder == _undefined ||
                mediaItemsForWorkOrder == null
            ? _instance.mediaItemsForWorkOrder
            : (mediaItemsForWorkOrder
                as List<Query$getWorkOrderMedia$mediaItemsForWorkOrder>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes mediaItemsForWorkOrder(
          Iterable<Query$getWorkOrderMedia$mediaItemsForWorkOrder> Function(
                  Iterable<
                      CopyWith$Query$getWorkOrderMedia$mediaItemsForWorkOrder<
                          Query$getWorkOrderMedia$mediaItemsForWorkOrder>>)
              _fn) =>
      call(
          mediaItemsForWorkOrder: _fn(_instance.mediaItemsForWorkOrder.map(
              (e) => CopyWith$Query$getWorkOrderMedia$mediaItemsForWorkOrder(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$getWorkOrderMedia<TRes>
    implements CopyWith$Query$getWorkOrderMedia<TRes> {
  _CopyWithStubImpl$Query$getWorkOrderMedia(this._res);

  TRes _res;

  call({
    List<Query$getWorkOrderMedia$mediaItemsForWorkOrder>?
        mediaItemsForWorkOrder,
    String? $__typename,
  }) =>
      _res;

  mediaItemsForWorkOrder(_fn) => _res;
}

const documentNodeQuerygetWorkOrderMedia = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getWorkOrderMedia'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cmpCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'refId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'mediaItemsForWorkOrder'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'companyCode'),
            value: VariableNode(name: NameNode(value: 'cmpCode')),
          ),
          ArgumentNode(
            name: NameNode(value: 'workOrderId'),
            value: VariableNode(name: NameNode(value: 'refId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'mediaType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'mediaPath'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'thumbnailPath'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isUploaded'),
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
            name: NameNode(value: 'uploadDate'),
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

class Query$getWorkOrderMedia$mediaItemsForWorkOrder {
  Query$getWorkOrderMedia$mediaItemsForWorkOrder({
    required this.id,
    required this.mediaType,
    this.mediaPath,
    this.thumbnailPath,
    required this.isUploaded,
    this.createdBy,
    required this.createdDate,
    this.uploadDate,
    this.$__typename = 'MediaItem',
  });

  factory Query$getWorkOrderMedia$mediaItemsForWorkOrder.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$mediaType = json['mediaType'];
    final l$mediaPath = json['mediaPath'];
    final l$thumbnailPath = json['thumbnailPath'];
    final l$isUploaded = json['isUploaded'];
    final l$createdBy = json['createdBy'];
    final l$createdDate = json['createdDate'];
    final l$uploadDate = json['uploadDate'];
    final l$$__typename = json['__typename'];
    return Query$getWorkOrderMedia$mediaItemsForWorkOrder(
      id: (l$id as String),
      mediaType: fromJson$Enum$MediaTypeId((l$mediaType as String)),
      mediaPath: (l$mediaPath as String?),
      thumbnailPath: (l$thumbnailPath as String?),
      isUploaded: (l$isUploaded as bool),
      createdBy: (l$createdBy as String?),
      createdDate: (l$createdDate as String),
      uploadDate: (l$uploadDate as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$MediaTypeId mediaType;

  final String? mediaPath;

  final String? thumbnailPath;

  final bool isUploaded;

  final String? createdBy;

  final String createdDate;

  final String? uploadDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$mediaType = mediaType;
    _resultData['mediaType'] = toJson$Enum$MediaTypeId(l$mediaType);
    final l$mediaPath = mediaPath;
    _resultData['mediaPath'] = l$mediaPath;
    final l$thumbnailPath = thumbnailPath;
    _resultData['thumbnailPath'] = l$thumbnailPath;
    final l$isUploaded = isUploaded;
    _resultData['isUploaded'] = l$isUploaded;
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$createdDate = createdDate;
    _resultData['createdDate'] = l$createdDate;
    final l$uploadDate = uploadDate;
    _resultData['uploadDate'] = l$uploadDate;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$mediaType = mediaType;
    final l$mediaPath = mediaPath;
    final l$thumbnailPath = thumbnailPath;
    final l$isUploaded = isUploaded;
    final l$createdBy = createdBy;
    final l$createdDate = createdDate;
    final l$uploadDate = uploadDate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$mediaType,
      l$mediaPath,
      l$thumbnailPath,
      l$isUploaded,
      l$createdBy,
      l$createdDate,
      l$uploadDate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getWorkOrderMedia$mediaItemsForWorkOrder) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$mediaType = mediaType;
    final lOther$mediaType = other.mediaType;
    if (l$mediaType != lOther$mediaType) {
      return false;
    }
    final l$mediaPath = mediaPath;
    final lOther$mediaPath = other.mediaPath;
    if (l$mediaPath != lOther$mediaPath) {
      return false;
    }
    final l$thumbnailPath = thumbnailPath;
    final lOther$thumbnailPath = other.thumbnailPath;
    if (l$thumbnailPath != lOther$thumbnailPath) {
      return false;
    }
    final l$isUploaded = isUploaded;
    final lOther$isUploaded = other.isUploaded;
    if (l$isUploaded != lOther$isUploaded) {
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
    final l$uploadDate = uploadDate;
    final lOther$uploadDate = other.uploadDate;
    if (l$uploadDate != lOther$uploadDate) {
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

extension UtilityExtension$Query$getWorkOrderMedia$mediaItemsForWorkOrder
    on Query$getWorkOrderMedia$mediaItemsForWorkOrder {
  CopyWith$Query$getWorkOrderMedia$mediaItemsForWorkOrder<
          Query$getWorkOrderMedia$mediaItemsForWorkOrder>
      get copyWith => CopyWith$Query$getWorkOrderMedia$mediaItemsForWorkOrder(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getWorkOrderMedia$mediaItemsForWorkOrder<TRes> {
  factory CopyWith$Query$getWorkOrderMedia$mediaItemsForWorkOrder(
    Query$getWorkOrderMedia$mediaItemsForWorkOrder instance,
    TRes Function(Query$getWorkOrderMedia$mediaItemsForWorkOrder) then,
  ) = _CopyWithImpl$Query$getWorkOrderMedia$mediaItemsForWorkOrder;

  factory CopyWith$Query$getWorkOrderMedia$mediaItemsForWorkOrder.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getWorkOrderMedia$mediaItemsForWorkOrder;

  TRes call({
    String? id,
    Enum$MediaTypeId? mediaType,
    String? mediaPath,
    String? thumbnailPath,
    bool? isUploaded,
    String? createdBy,
    String? createdDate,
    String? uploadDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getWorkOrderMedia$mediaItemsForWorkOrder<TRes>
    implements CopyWith$Query$getWorkOrderMedia$mediaItemsForWorkOrder<TRes> {
  _CopyWithImpl$Query$getWorkOrderMedia$mediaItemsForWorkOrder(
    this._instance,
    this._then,
  );

  final Query$getWorkOrderMedia$mediaItemsForWorkOrder _instance;

  final TRes Function(Query$getWorkOrderMedia$mediaItemsForWorkOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? mediaType = _undefined,
    Object? mediaPath = _undefined,
    Object? thumbnailPath = _undefined,
    Object? isUploaded = _undefined,
    Object? createdBy = _undefined,
    Object? createdDate = _undefined,
    Object? uploadDate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getWorkOrderMedia$mediaItemsForWorkOrder(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        mediaType: mediaType == _undefined || mediaType == null
            ? _instance.mediaType
            : (mediaType as Enum$MediaTypeId),
        mediaPath: mediaPath == _undefined
            ? _instance.mediaPath
            : (mediaPath as String?),
        thumbnailPath: thumbnailPath == _undefined
            ? _instance.thumbnailPath
            : (thumbnailPath as String?),
        isUploaded: isUploaded == _undefined || isUploaded == null
            ? _instance.isUploaded
            : (isUploaded as bool),
        createdBy: createdBy == _undefined
            ? _instance.createdBy
            : (createdBy as String?),
        createdDate: createdDate == _undefined || createdDate == null
            ? _instance.createdDate
            : (createdDate as String),
        uploadDate: uploadDate == _undefined
            ? _instance.uploadDate
            : (uploadDate as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getWorkOrderMedia$mediaItemsForWorkOrder<TRes>
    implements CopyWith$Query$getWorkOrderMedia$mediaItemsForWorkOrder<TRes> {
  _CopyWithStubImpl$Query$getWorkOrderMedia$mediaItemsForWorkOrder(this._res);

  TRes _res;

  call({
    String? id,
    Enum$MediaTypeId? mediaType,
    String? mediaPath,
    String? thumbnailPath,
    bool? isUploaded,
    String? createdBy,
    String? createdDate,
    String? uploadDate,
    String? $__typename,
  }) =>
      _res;
}
