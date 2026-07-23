import 'package:gql/ast.dart';

class Fragment$MediaAssetFields {
  Fragment$MediaAssetFields({
    required this.url,
    this.sasUrl,
    this.sasThumbnailUrl,
    required this.created,
    required this.modified,
    this.$__typename = 'MediaAsset',
  });

  factory Fragment$MediaAssetFields.fromJson(Map<String, dynamic> json) {
    final l$url = json['url'];
    final l$sasUrl = json['sasUrl'];
    final l$sasThumbnailUrl = json['sasThumbnailUrl'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaAssetFields(
      url: (l$url as String),
      sasUrl: (l$sasUrl as String?),
      sasThumbnailUrl: (l$sasThumbnailUrl as String?),
      created: Fragment$MediaAssetFields$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      modified: Fragment$MediaAssetFields$modified.fromJson(
        (l$modified as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String? sasUrl;

  final String? sasThumbnailUrl;

  final Fragment$MediaAssetFields$created created;

  final Fragment$MediaAssetFields$modified modified;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$sasThumbnailUrl = sasThumbnailUrl;
    _resultData['sasThumbnailUrl'] = l$sasThumbnailUrl;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$sasUrl = sasUrl;
    final l$sasThumbnailUrl = sasThumbnailUrl;
    final l$created = created;
    final l$modified = modified;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$url,
      l$sasUrl,
      l$sasThumbnailUrl,
      l$created,
      l$modified,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MediaAssetFields ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$MediaAssetFields
    on Fragment$MediaAssetFields {
  CopyWith$Fragment$MediaAssetFields<Fragment$MediaAssetFields> get copyWith =>
      CopyWith$Fragment$MediaAssetFields(this, (i) => i);
}

abstract class CopyWith$Fragment$MediaAssetFields<TRes> {
  factory CopyWith$Fragment$MediaAssetFields(
    Fragment$MediaAssetFields instance,
    TRes Function(Fragment$MediaAssetFields) then,
  ) = _CopyWithImpl$Fragment$MediaAssetFields;

  factory CopyWith$Fragment$MediaAssetFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaAssetFields;

  TRes call({
    String? url,
    String? sasUrl,
    String? sasThumbnailUrl,
    Fragment$MediaAssetFields$created? created,
    Fragment$MediaAssetFields$modified? modified,
    String? $__typename,
  });
  CopyWith$Fragment$MediaAssetFields$created<TRes> get created;
  CopyWith$Fragment$MediaAssetFields$modified<TRes> get modified;
}

class _CopyWithImpl$Fragment$MediaAssetFields<TRes>
    implements CopyWith$Fragment$MediaAssetFields<TRes> {
  _CopyWithImpl$Fragment$MediaAssetFields(this._instance, this._then);

  final Fragment$MediaAssetFields _instance;

  final TRes Function(Fragment$MediaAssetFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? sasUrl = _undefined,
    Object? sasThumbnailUrl = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$MediaAssetFields(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      sasThumbnailUrl: sasThumbnailUrl == _undefined
          ? _instance.sasThumbnailUrl
          : (sasThumbnailUrl as String?),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Fragment$MediaAssetFields$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified as Fragment$MediaAssetFields$modified),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$MediaAssetFields$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$MediaAssetFields$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Fragment$MediaAssetFields$modified<TRes> get modified {
    final local$modified = _instance.modified;
    return CopyWith$Fragment$MediaAssetFields$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$MediaAssetFields<TRes>
    implements CopyWith$Fragment$MediaAssetFields<TRes> {
  _CopyWithStubImpl$Fragment$MediaAssetFields(this._res);

  TRes _res;

  call({
    String? url,
    String? sasUrl,
    String? sasThumbnailUrl,
    Fragment$MediaAssetFields$created? created,
    Fragment$MediaAssetFields$modified? modified,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$MediaAssetFields$created<TRes> get created =>
      CopyWith$Fragment$MediaAssetFields$created.stub(_res);

  CopyWith$Fragment$MediaAssetFields$modified<TRes> get modified =>
      CopyWith$Fragment$MediaAssetFields$modified.stub(_res);
}

const fragmentDefinitionMediaAssetFields = FragmentDefinitionNode(
  name: NameNode(value: 'MediaAssetFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'MediaAsset'), isNonNull: false),
  ),
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
              name: NameNode(value: 'userName'),
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
              name: NameNode(value: 'userName'),
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
);
const documentNodeFragmentMediaAssetFields = DocumentNode(
  definitions: [fragmentDefinitionMediaAssetFields],
);

class Fragment$MediaAssetFields$created {
  Fragment$MediaAssetFields$created({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Created',
  });

  factory Fragment$MediaAssetFields$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaAssetFields$created(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MediaAssetFields$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Fragment$MediaAssetFields$created
    on Fragment$MediaAssetFields$created {
  CopyWith$Fragment$MediaAssetFields$created<Fragment$MediaAssetFields$created>
  get copyWith => CopyWith$Fragment$MediaAssetFields$created(this, (i) => i);
}

abstract class CopyWith$Fragment$MediaAssetFields$created<TRes> {
  factory CopyWith$Fragment$MediaAssetFields$created(
    Fragment$MediaAssetFields$created instance,
    TRes Function(Fragment$MediaAssetFields$created) then,
  ) = _CopyWithImpl$Fragment$MediaAssetFields$created;

  factory CopyWith$Fragment$MediaAssetFields$created.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaAssetFields$created;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaAssetFields$created<TRes>
    implements CopyWith$Fragment$MediaAssetFields$created<TRes> {
  _CopyWithImpl$Fragment$MediaAssetFields$created(this._instance, this._then);

  final Fragment$MediaAssetFields$created _instance;

  final TRes Function(Fragment$MediaAssetFields$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$MediaAssetFields$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$MediaAssetFields$created<TRes>
    implements CopyWith$Fragment$MediaAssetFields$created<TRes> {
  _CopyWithStubImpl$Fragment$MediaAssetFields$created(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Fragment$MediaAssetFields$modified {
  Fragment$MediaAssetFields$modified({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Modified',
  });

  factory Fragment$MediaAssetFields$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaAssetFields$modified(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MediaAssetFields$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Fragment$MediaAssetFields$modified
    on Fragment$MediaAssetFields$modified {
  CopyWith$Fragment$MediaAssetFields$modified<
    Fragment$MediaAssetFields$modified
  >
  get copyWith => CopyWith$Fragment$MediaAssetFields$modified(this, (i) => i);
}

abstract class CopyWith$Fragment$MediaAssetFields$modified<TRes> {
  factory CopyWith$Fragment$MediaAssetFields$modified(
    Fragment$MediaAssetFields$modified instance,
    TRes Function(Fragment$MediaAssetFields$modified) then,
  ) = _CopyWithImpl$Fragment$MediaAssetFields$modified;

  factory CopyWith$Fragment$MediaAssetFields$modified.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaAssetFields$modified;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaAssetFields$modified<TRes>
    implements CopyWith$Fragment$MediaAssetFields$modified<TRes> {
  _CopyWithImpl$Fragment$MediaAssetFields$modified(this._instance, this._then);

  final Fragment$MediaAssetFields$modified _instance;

  final TRes Function(Fragment$MediaAssetFields$modified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$MediaAssetFields$modified(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$MediaAssetFields$modified<TRes>
    implements CopyWith$Fragment$MediaAssetFields$modified<TRes> {
  _CopyWithStubImpl$Fragment$MediaAssetFields$modified(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}
