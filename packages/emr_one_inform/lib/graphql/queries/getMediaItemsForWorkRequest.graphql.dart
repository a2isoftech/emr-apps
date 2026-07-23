import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$getWorkRequestMedia {
  factory Variables$Query$getWorkRequestMedia({
    required String cmpCode,
    required String requestId,
  }) =>
      Variables$Query$getWorkRequestMedia._({
        r'cmpCode': cmpCode,
        r'requestId': requestId,
      });

  Variables$Query$getWorkRequestMedia._(this._$data);

  factory Variables$Query$getWorkRequestMedia.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$cmpCode = data['cmpCode'];
    result$data['cmpCode'] = (l$cmpCode as String);
    final l$requestId = data['requestId'];
    result$data['requestId'] = (l$requestId as String);
    return Variables$Query$getWorkRequestMedia._(result$data);
  }

  Map<String, dynamic> _$data;

  String get cmpCode => (_$data['cmpCode'] as String);

  String get requestId => (_$data['requestId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$cmpCode = cmpCode;
    result$data['cmpCode'] = l$cmpCode;
    final l$requestId = requestId;
    result$data['requestId'] = l$requestId;
    return result$data;
  }

  CopyWith$Variables$Query$getWorkRequestMedia<
          Variables$Query$getWorkRequestMedia>
      get copyWith => CopyWith$Variables$Query$getWorkRequestMedia(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getWorkRequestMedia) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cmpCode = cmpCode;
    final lOther$cmpCode = other.cmpCode;
    if (l$cmpCode != lOther$cmpCode) {
      return false;
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (l$requestId != lOther$requestId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cmpCode = cmpCode;
    final l$requestId = requestId;
    return Object.hashAll([
      l$cmpCode,
      l$requestId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$getWorkRequestMedia<TRes> {
  factory CopyWith$Variables$Query$getWorkRequestMedia(
    Variables$Query$getWorkRequestMedia instance,
    TRes Function(Variables$Query$getWorkRequestMedia) then,
  ) = _CopyWithImpl$Variables$Query$getWorkRequestMedia;

  factory CopyWith$Variables$Query$getWorkRequestMedia.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getWorkRequestMedia;

  TRes call({
    String? cmpCode,
    String? requestId,
  });
}

class _CopyWithImpl$Variables$Query$getWorkRequestMedia<TRes>
    implements CopyWith$Variables$Query$getWorkRequestMedia<TRes> {
  _CopyWithImpl$Variables$Query$getWorkRequestMedia(
    this._instance,
    this._then,
  );

  final Variables$Query$getWorkRequestMedia _instance;

  final TRes Function(Variables$Query$getWorkRequestMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cmpCode = _undefined,
    Object? requestId = _undefined,
  }) =>
      _then(Variables$Query$getWorkRequestMedia._({
        ..._instance._$data,
        if (cmpCode != _undefined && cmpCode != null)
          'cmpCode': (cmpCode as String),
        if (requestId != _undefined && requestId != null)
          'requestId': (requestId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$getWorkRequestMedia<TRes>
    implements CopyWith$Variables$Query$getWorkRequestMedia<TRes> {
  _CopyWithStubImpl$Variables$Query$getWorkRequestMedia(this._res);

  TRes _res;

  call({
    String? cmpCode,
    String? requestId,
  }) =>
      _res;
}

class Query$getWorkRequestMedia {
  Query$getWorkRequestMedia({
    required this.mediaItemsForWorkRequest,
    this.$__typename = 'FormsQuery',
  });

  factory Query$getWorkRequestMedia.fromJson(Map<String, dynamic> json) {
    final l$mediaItemsForWorkRequest = json['mediaItemsForWorkRequest'];
    final l$$__typename = json['__typename'];
    return Query$getWorkRequestMedia(
      mediaItemsForWorkRequest: (l$mediaItemsForWorkRequest as List<dynamic>)
          .map((e) =>
              Query$getWorkRequestMedia$mediaItemsForWorkRequest.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getWorkRequestMedia$mediaItemsForWorkRequest>
      mediaItemsForWorkRequest;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mediaItemsForWorkRequest = mediaItemsForWorkRequest;
    _resultData['mediaItemsForWorkRequest'] =
        l$mediaItemsForWorkRequest.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mediaItemsForWorkRequest = mediaItemsForWorkRequest;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$mediaItemsForWorkRequest.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getWorkRequestMedia) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaItemsForWorkRequest = mediaItemsForWorkRequest;
    final lOther$mediaItemsForWorkRequest = other.mediaItemsForWorkRequest;
    if (l$mediaItemsForWorkRequest.length !=
        lOther$mediaItemsForWorkRequest.length) {
      return false;
    }
    for (int i = 0; i < l$mediaItemsForWorkRequest.length; i++) {
      final l$mediaItemsForWorkRequest$entry = l$mediaItemsForWorkRequest[i];
      final lOther$mediaItemsForWorkRequest$entry =
          lOther$mediaItemsForWorkRequest[i];
      if (l$mediaItemsForWorkRequest$entry !=
          lOther$mediaItemsForWorkRequest$entry) {
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

extension UtilityExtension$Query$getWorkRequestMedia
    on Query$getWorkRequestMedia {
  CopyWith$Query$getWorkRequestMedia<Query$getWorkRequestMedia> get copyWith =>
      CopyWith$Query$getWorkRequestMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getWorkRequestMedia<TRes> {
  factory CopyWith$Query$getWorkRequestMedia(
    Query$getWorkRequestMedia instance,
    TRes Function(Query$getWorkRequestMedia) then,
  ) = _CopyWithImpl$Query$getWorkRequestMedia;

  factory CopyWith$Query$getWorkRequestMedia.stub(TRes res) =
      _CopyWithStubImpl$Query$getWorkRequestMedia;

  TRes call({
    List<Query$getWorkRequestMedia$mediaItemsForWorkRequest>?
        mediaItemsForWorkRequest,
    String? $__typename,
  });
  TRes mediaItemsForWorkRequest(
      Iterable<Query$getWorkRequestMedia$mediaItemsForWorkRequest> Function(
              Iterable<
                  CopyWith$Query$getWorkRequestMedia$mediaItemsForWorkRequest<
                      Query$getWorkRequestMedia$mediaItemsForWorkRequest>>)
          _fn);
}

class _CopyWithImpl$Query$getWorkRequestMedia<TRes>
    implements CopyWith$Query$getWorkRequestMedia<TRes> {
  _CopyWithImpl$Query$getWorkRequestMedia(
    this._instance,
    this._then,
  );

  final Query$getWorkRequestMedia _instance;

  final TRes Function(Query$getWorkRequestMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaItemsForWorkRequest = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getWorkRequestMedia(
        mediaItemsForWorkRequest: mediaItemsForWorkRequest == _undefined ||
                mediaItemsForWorkRequest == null
            ? _instance.mediaItemsForWorkRequest
            : (mediaItemsForWorkRequest
                as List<Query$getWorkRequestMedia$mediaItemsForWorkRequest>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes mediaItemsForWorkRequest(
          Iterable<Query$getWorkRequestMedia$mediaItemsForWorkRequest> Function(
                  Iterable<
                      CopyWith$Query$getWorkRequestMedia$mediaItemsForWorkRequest<
                          Query$getWorkRequestMedia$mediaItemsForWorkRequest>>)
              _fn) =>
      call(
          mediaItemsForWorkRequest: _fn(_instance.mediaItemsForWorkRequest.map(
              (e) =>
                  CopyWith$Query$getWorkRequestMedia$mediaItemsForWorkRequest(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$getWorkRequestMedia<TRes>
    implements CopyWith$Query$getWorkRequestMedia<TRes> {
  _CopyWithStubImpl$Query$getWorkRequestMedia(this._res);

  TRes _res;

  call({
    List<Query$getWorkRequestMedia$mediaItemsForWorkRequest>?
        mediaItemsForWorkRequest,
    String? $__typename,
  }) =>
      _res;

  mediaItemsForWorkRequest(_fn) => _res;
}

const documentNodeQuerygetWorkRequestMedia = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getWorkRequestMedia'),
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
        variable: VariableNode(name: NameNode(value: 'requestId')),
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
        name: NameNode(value: 'mediaItemsForWorkRequest'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'companyCode'),
            value: VariableNode(name: NameNode(value: 'cmpCode')),
          ),
          ArgumentNode(
            name: NameNode(value: 'workRequestId'),
            value: VariableNode(name: NameNode(value: 'requestId')),
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

class Query$getWorkRequestMedia$mediaItemsForWorkRequest {
  Query$getWorkRequestMedia$mediaItemsForWorkRequest({
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

  factory Query$getWorkRequestMedia$mediaItemsForWorkRequest.fromJson(
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
    return Query$getWorkRequestMedia$mediaItemsForWorkRequest(
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
    if (!(other is Query$getWorkRequestMedia$mediaItemsForWorkRequest) ||
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

extension UtilityExtension$Query$getWorkRequestMedia$mediaItemsForWorkRequest
    on Query$getWorkRequestMedia$mediaItemsForWorkRequest {
  CopyWith$Query$getWorkRequestMedia$mediaItemsForWorkRequest<
          Query$getWorkRequestMedia$mediaItemsForWorkRequest>
      get copyWith =>
          CopyWith$Query$getWorkRequestMedia$mediaItemsForWorkRequest(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getWorkRequestMedia$mediaItemsForWorkRequest<
    TRes> {
  factory CopyWith$Query$getWorkRequestMedia$mediaItemsForWorkRequest(
    Query$getWorkRequestMedia$mediaItemsForWorkRequest instance,
    TRes Function(Query$getWorkRequestMedia$mediaItemsForWorkRequest) then,
  ) = _CopyWithImpl$Query$getWorkRequestMedia$mediaItemsForWorkRequest;

  factory CopyWith$Query$getWorkRequestMedia$mediaItemsForWorkRequest.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getWorkRequestMedia$mediaItemsForWorkRequest;

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

class _CopyWithImpl$Query$getWorkRequestMedia$mediaItemsForWorkRequest<TRes>
    implements
        CopyWith$Query$getWorkRequestMedia$mediaItemsForWorkRequest<TRes> {
  _CopyWithImpl$Query$getWorkRequestMedia$mediaItemsForWorkRequest(
    this._instance,
    this._then,
  );

  final Query$getWorkRequestMedia$mediaItemsForWorkRequest _instance;

  final TRes Function(Query$getWorkRequestMedia$mediaItemsForWorkRequest) _then;

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
      _then(Query$getWorkRequestMedia$mediaItemsForWorkRequest(
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

class _CopyWithStubImpl$Query$getWorkRequestMedia$mediaItemsForWorkRequest<TRes>
    implements
        CopyWith$Query$getWorkRequestMedia$mediaItemsForWorkRequest<TRes> {
  _CopyWithStubImpl$Query$getWorkRequestMedia$mediaItemsForWorkRequest(
      this._res);

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
