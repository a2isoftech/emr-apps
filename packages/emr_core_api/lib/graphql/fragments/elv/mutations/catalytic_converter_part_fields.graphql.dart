import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$CatalyticConverterFields {
  Fragment$CatalyticConverterFields({
    required this.partKey,
    required this.partInfo,
    required this.partPhotos,
    required this.techemetCatId,
    this.techemetCat,
    required this.classification,
    this.$__typename = 'CatalyticConverterConfig',
  });

  factory Fragment$CatalyticConverterFields.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$partKey = json['partKey'];
    final l$partInfo = json['partInfo'];
    final l$partPhotos = json['partPhotos'];
    final l$techemetCatId = json['techemetCatId'];
    final l$techemetCat = json['techemetCat'];
    final l$classification = json['classification'];
    final l$$__typename = json['__typename'];
    return Fragment$CatalyticConverterFields(
      partKey: (l$partKey as String),
      partInfo: Fragment$CatalyticConverterFields$partInfo.fromJson(
        (l$partInfo as Map<String, dynamic>),
      ),
      partPhotos: (l$partPhotos as List<dynamic>)
          .map(
            (e) => Fragment$CatalyticConverterFields$partPhotos.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      techemetCatId: (l$techemetCatId as String),
      techemetCat: l$techemetCat == null
          ? null
          : Fragment$CatalyticConverterFields$techemetCat.fromJson(
              (l$techemetCat as Map<String, dynamic>),
            ),
      classification: fromJson$Enum$CatalyticConverterClassification(
        (l$classification as String),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String partKey;

  final Fragment$CatalyticConverterFields$partInfo partInfo;

  final List<Fragment$CatalyticConverterFields$partPhotos> partPhotos;

  final String techemetCatId;

  final Fragment$CatalyticConverterFields$techemetCat? techemetCat;

  final Enum$CatalyticConverterClassification classification;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$partKey = partKey;
    _resultData['partKey'] = l$partKey;
    final l$partInfo = partInfo;
    _resultData['partInfo'] = l$partInfo.toJson();
    final l$partPhotos = partPhotos;
    _resultData['partPhotos'] = l$partPhotos.map((e) => e.toJson()).toList();
    final l$techemetCatId = techemetCatId;
    _resultData['techemetCatId'] = l$techemetCatId;
    final l$techemetCat = techemetCat;
    _resultData['techemetCat'] = l$techemetCat?.toJson();
    final l$classification = classification;
    _resultData['classification'] =
        toJson$Enum$CatalyticConverterClassification(l$classification);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$partKey = partKey;
    final l$partInfo = partInfo;
    final l$partPhotos = partPhotos;
    final l$techemetCatId = techemetCatId;
    final l$techemetCat = techemetCat;
    final l$classification = classification;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$partKey,
      l$partInfo,
      Object.hashAll(l$partPhotos.map((v) => v)),
      l$techemetCatId,
      l$techemetCat,
      l$classification,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CatalyticConverterFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partKey = partKey;
    final lOther$partKey = other.partKey;
    if (l$partKey != lOther$partKey) {
      return false;
    }
    final l$partInfo = partInfo;
    final lOther$partInfo = other.partInfo;
    if (l$partInfo != lOther$partInfo) {
      return false;
    }
    final l$partPhotos = partPhotos;
    final lOther$partPhotos = other.partPhotos;
    if (l$partPhotos.length != lOther$partPhotos.length) {
      return false;
    }
    for (int i = 0; i < l$partPhotos.length; i++) {
      final l$partPhotos$entry = l$partPhotos[i];
      final lOther$partPhotos$entry = lOther$partPhotos[i];
      if (l$partPhotos$entry != lOther$partPhotos$entry) {
        return false;
      }
    }
    final l$techemetCatId = techemetCatId;
    final lOther$techemetCatId = other.techemetCatId;
    if (l$techemetCatId != lOther$techemetCatId) {
      return false;
    }
    final l$techemetCat = techemetCat;
    final lOther$techemetCat = other.techemetCat;
    if (l$techemetCat != lOther$techemetCat) {
      return false;
    }
    final l$classification = classification;
    final lOther$classification = other.classification;
    if (l$classification != lOther$classification) {
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

extension UtilityExtension$Fragment$CatalyticConverterFields
    on Fragment$CatalyticConverterFields {
  CopyWith$Fragment$CatalyticConverterFields<Fragment$CatalyticConverterFields>
  get copyWith => CopyWith$Fragment$CatalyticConverterFields(this, (i) => i);
}

abstract class CopyWith$Fragment$CatalyticConverterFields<TRes> {
  factory CopyWith$Fragment$CatalyticConverterFields(
    Fragment$CatalyticConverterFields instance,
    TRes Function(Fragment$CatalyticConverterFields) then,
  ) = _CopyWithImpl$Fragment$CatalyticConverterFields;

  factory CopyWith$Fragment$CatalyticConverterFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CatalyticConverterFields;

  TRes call({
    String? partKey,
    Fragment$CatalyticConverterFields$partInfo? partInfo,
    List<Fragment$CatalyticConverterFields$partPhotos>? partPhotos,
    String? techemetCatId,
    Fragment$CatalyticConverterFields$techemetCat? techemetCat,
    Enum$CatalyticConverterClassification? classification,
    String? $__typename,
  });
  CopyWith$Fragment$CatalyticConverterFields$partInfo<TRes> get partInfo;
  TRes partPhotos(
    Iterable<Fragment$CatalyticConverterFields$partPhotos> Function(
      Iterable<
        CopyWith$Fragment$CatalyticConverterFields$partPhotos<
          Fragment$CatalyticConverterFields$partPhotos
        >
      >,
    )
    _fn,
  );
  CopyWith$Fragment$CatalyticConverterFields$techemetCat<TRes> get techemetCat;
}

class _CopyWithImpl$Fragment$CatalyticConverterFields<TRes>
    implements CopyWith$Fragment$CatalyticConverterFields<TRes> {
  _CopyWithImpl$Fragment$CatalyticConverterFields(this._instance, this._then);

  final Fragment$CatalyticConverterFields _instance;

  final TRes Function(Fragment$CatalyticConverterFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partKey = _undefined,
    Object? partInfo = _undefined,
    Object? partPhotos = _undefined,
    Object? techemetCatId = _undefined,
    Object? techemetCat = _undefined,
    Object? classification = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$CatalyticConverterFields(
      partKey: partKey == _undefined || partKey == null
          ? _instance.partKey
          : (partKey as String),
      partInfo: partInfo == _undefined || partInfo == null
          ? _instance.partInfo
          : (partInfo as Fragment$CatalyticConverterFields$partInfo),
      partPhotos: partPhotos == _undefined || partPhotos == null
          ? _instance.partPhotos
          : (partPhotos as List<Fragment$CatalyticConverterFields$partPhotos>),
      techemetCatId: techemetCatId == _undefined || techemetCatId == null
          ? _instance.techemetCatId
          : (techemetCatId as String),
      techemetCat: techemetCat == _undefined
          ? _instance.techemetCat
          : (techemetCat as Fragment$CatalyticConverterFields$techemetCat?),
      classification: classification == _undefined || classification == null
          ? _instance.classification
          : (classification as Enum$CatalyticConverterClassification),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$CatalyticConverterFields$partInfo<TRes> get partInfo {
    final local$partInfo = _instance.partInfo;
    return CopyWith$Fragment$CatalyticConverterFields$partInfo(
      local$partInfo,
      (e) => call(partInfo: e),
    );
  }

  TRes partPhotos(
    Iterable<Fragment$CatalyticConverterFields$partPhotos> Function(
      Iterable<
        CopyWith$Fragment$CatalyticConverterFields$partPhotos<
          Fragment$CatalyticConverterFields$partPhotos
        >
      >,
    )
    _fn,
  ) => call(
    partPhotos: _fn(
      _instance.partPhotos.map(
        (e) =>
            CopyWith$Fragment$CatalyticConverterFields$partPhotos(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Fragment$CatalyticConverterFields$techemetCat<TRes> get techemetCat {
    final local$techemetCat = _instance.techemetCat;
    return local$techemetCat == null
        ? CopyWith$Fragment$CatalyticConverterFields$techemetCat.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$CatalyticConverterFields$techemetCat(
            local$techemetCat,
            (e) => call(techemetCat: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$CatalyticConverterFields<TRes>
    implements CopyWith$Fragment$CatalyticConverterFields<TRes> {
  _CopyWithStubImpl$Fragment$CatalyticConverterFields(this._res);

  TRes _res;

  call({
    String? partKey,
    Fragment$CatalyticConverterFields$partInfo? partInfo,
    List<Fragment$CatalyticConverterFields$partPhotos>? partPhotos,
    String? techemetCatId,
    Fragment$CatalyticConverterFields$techemetCat? techemetCat,
    Enum$CatalyticConverterClassification? classification,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$CatalyticConverterFields$partInfo<TRes> get partInfo =>
      CopyWith$Fragment$CatalyticConverterFields$partInfo.stub(_res);

  partPhotos(_fn) => _res;

  CopyWith$Fragment$CatalyticConverterFields$techemetCat<TRes>
  get techemetCat =>
      CopyWith$Fragment$CatalyticConverterFields$techemetCat.stub(_res);
}

const fragmentDefinitionCatalyticConverterFields = FragmentDefinitionNode(
  name: NameNode(value: 'CatalyticConverterFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'CatalyticConverterConfig'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'partKey'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'partInfo'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'partType'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'partLocation'),
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
        name: NameNode(value: 'partPhotos'),
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
        name: NameNode(value: 'techemetCatId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'techemetCat'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'sealNo'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'serial'),
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
        name: NameNode(value: 'classification'),
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
);
const documentNodeFragmentCatalyticConverterFields = DocumentNode(
  definitions: [fragmentDefinitionCatalyticConverterFields],
);

class Fragment$CatalyticConverterFields$partInfo {
  Fragment$CatalyticConverterFields$partInfo({
    required this.partType,
    required this.partLocation,
    this.$__typename = 'PartInfo',
  });

  factory Fragment$CatalyticConverterFields$partInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$partType = json['partType'];
    final l$partLocation = json['partLocation'];
    final l$$__typename = json['__typename'];
    return Fragment$CatalyticConverterFields$partInfo(
      partType: fromJson$Enum$PartType((l$partType as String)),
      partLocation: fromJson$Enum$PartLocation((l$partLocation as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$PartType partType;

  final Enum$PartLocation partLocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$partType = partType;
    _resultData['partType'] = toJson$Enum$PartType(l$partType);
    final l$partLocation = partLocation;
    _resultData['partLocation'] = toJson$Enum$PartLocation(l$partLocation);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$partType = partType;
    final l$partLocation = partLocation;
    final l$$__typename = $__typename;
    return Object.hashAll([l$partType, l$partLocation, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CatalyticConverterFields$partInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partType = partType;
    final lOther$partType = other.partType;
    if (l$partType != lOther$partType) {
      return false;
    }
    final l$partLocation = partLocation;
    final lOther$partLocation = other.partLocation;
    if (l$partLocation != lOther$partLocation) {
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

extension UtilityExtension$Fragment$CatalyticConverterFields$partInfo
    on Fragment$CatalyticConverterFields$partInfo {
  CopyWith$Fragment$CatalyticConverterFields$partInfo<
    Fragment$CatalyticConverterFields$partInfo
  >
  get copyWith =>
      CopyWith$Fragment$CatalyticConverterFields$partInfo(this, (i) => i);
}

abstract class CopyWith$Fragment$CatalyticConverterFields$partInfo<TRes> {
  factory CopyWith$Fragment$CatalyticConverterFields$partInfo(
    Fragment$CatalyticConverterFields$partInfo instance,
    TRes Function(Fragment$CatalyticConverterFields$partInfo) then,
  ) = _CopyWithImpl$Fragment$CatalyticConverterFields$partInfo;

  factory CopyWith$Fragment$CatalyticConverterFields$partInfo.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CatalyticConverterFields$partInfo;

  TRes call({
    Enum$PartType? partType,
    Enum$PartLocation? partLocation,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CatalyticConverterFields$partInfo<TRes>
    implements CopyWith$Fragment$CatalyticConverterFields$partInfo<TRes> {
  _CopyWithImpl$Fragment$CatalyticConverterFields$partInfo(
    this._instance,
    this._then,
  );

  final Fragment$CatalyticConverterFields$partInfo _instance;

  final TRes Function(Fragment$CatalyticConverterFields$partInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partType = _undefined,
    Object? partLocation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$CatalyticConverterFields$partInfo(
      partType: partType == _undefined || partType == null
          ? _instance.partType
          : (partType as Enum$PartType),
      partLocation: partLocation == _undefined || partLocation == null
          ? _instance.partLocation
          : (partLocation as Enum$PartLocation),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$CatalyticConverterFields$partInfo<TRes>
    implements CopyWith$Fragment$CatalyticConverterFields$partInfo<TRes> {
  _CopyWithStubImpl$Fragment$CatalyticConverterFields$partInfo(this._res);

  TRes _res;

  call({
    Enum$PartType? partType,
    Enum$PartLocation? partLocation,
    String? $__typename,
  }) => _res;
}

class Fragment$CatalyticConverterFields$partPhotos {
  Fragment$CatalyticConverterFields$partPhotos({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Fragment$CatalyticConverterFields$partPhotos.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Fragment$CatalyticConverterFields$partPhotos(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CatalyticConverterFields$partPhotos ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Fragment$CatalyticConverterFields$partPhotos
    on Fragment$CatalyticConverterFields$partPhotos {
  CopyWith$Fragment$CatalyticConverterFields$partPhotos<
    Fragment$CatalyticConverterFields$partPhotos
  >
  get copyWith =>
      CopyWith$Fragment$CatalyticConverterFields$partPhotos(this, (i) => i);
}

abstract class CopyWith$Fragment$CatalyticConverterFields$partPhotos<TRes> {
  factory CopyWith$Fragment$CatalyticConverterFields$partPhotos(
    Fragment$CatalyticConverterFields$partPhotos instance,
    TRes Function(Fragment$CatalyticConverterFields$partPhotos) then,
  ) = _CopyWithImpl$Fragment$CatalyticConverterFields$partPhotos;

  factory CopyWith$Fragment$CatalyticConverterFields$partPhotos.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CatalyticConverterFields$partPhotos;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Fragment$CatalyticConverterFields$partPhotos<TRes>
    implements CopyWith$Fragment$CatalyticConverterFields$partPhotos<TRes> {
  _CopyWithImpl$Fragment$CatalyticConverterFields$partPhotos(
    this._instance,
    this._then,
  );

  final Fragment$CatalyticConverterFields$partPhotos _instance;

  final TRes Function(Fragment$CatalyticConverterFields$partPhotos) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? url = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$CatalyticConverterFields$partPhotos(
          url: url == _undefined || url == null
              ? _instance.url
              : (url as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$CatalyticConverterFields$partPhotos<TRes>
    implements CopyWith$Fragment$CatalyticConverterFields$partPhotos<TRes> {
  _CopyWithStubImpl$Fragment$CatalyticConverterFields$partPhotos(this._res);

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Fragment$CatalyticConverterFields$techemetCat {
  Fragment$CatalyticConverterFields$techemetCat({
    required this.sealNo,
    required this.serial,
    this.$__typename = 'TechemetCat',
  });

  factory Fragment$CatalyticConverterFields$techemetCat.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sealNo = json['sealNo'];
    final l$serial = json['serial'];
    final l$$__typename = json['__typename'];
    return Fragment$CatalyticConverterFields$techemetCat(
      sealNo: (l$sealNo as String),
      serial: (l$serial as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String sealNo;

  final String serial;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sealNo = sealNo;
    _resultData['sealNo'] = l$sealNo;
    final l$serial = serial;
    _resultData['serial'] = l$serial;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sealNo = sealNo;
    final l$serial = serial;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sealNo, l$serial, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CatalyticConverterFields$techemetCat ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sealNo = sealNo;
    final lOther$sealNo = other.sealNo;
    if (l$sealNo != lOther$sealNo) {
      return false;
    }
    final l$serial = serial;
    final lOther$serial = other.serial;
    if (l$serial != lOther$serial) {
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

extension UtilityExtension$Fragment$CatalyticConverterFields$techemetCat
    on Fragment$CatalyticConverterFields$techemetCat {
  CopyWith$Fragment$CatalyticConverterFields$techemetCat<
    Fragment$CatalyticConverterFields$techemetCat
  >
  get copyWith =>
      CopyWith$Fragment$CatalyticConverterFields$techemetCat(this, (i) => i);
}

abstract class CopyWith$Fragment$CatalyticConverterFields$techemetCat<TRes> {
  factory CopyWith$Fragment$CatalyticConverterFields$techemetCat(
    Fragment$CatalyticConverterFields$techemetCat instance,
    TRes Function(Fragment$CatalyticConverterFields$techemetCat) then,
  ) = _CopyWithImpl$Fragment$CatalyticConverterFields$techemetCat;

  factory CopyWith$Fragment$CatalyticConverterFields$techemetCat.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$CatalyticConverterFields$techemetCat;

  TRes call({String? sealNo, String? serial, String? $__typename});
}

class _CopyWithImpl$Fragment$CatalyticConverterFields$techemetCat<TRes>
    implements CopyWith$Fragment$CatalyticConverterFields$techemetCat<TRes> {
  _CopyWithImpl$Fragment$CatalyticConverterFields$techemetCat(
    this._instance,
    this._then,
  );

  final Fragment$CatalyticConverterFields$techemetCat _instance;

  final TRes Function(Fragment$CatalyticConverterFields$techemetCat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sealNo = _undefined,
    Object? serial = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$CatalyticConverterFields$techemetCat(
      sealNo: sealNo == _undefined || sealNo == null
          ? _instance.sealNo
          : (sealNo as String),
      serial: serial == _undefined || serial == null
          ? _instance.serial
          : (serial as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$CatalyticConverterFields$techemetCat<TRes>
    implements CopyWith$Fragment$CatalyticConverterFields$techemetCat<TRes> {
  _CopyWithStubImpl$Fragment$CatalyticConverterFields$techemetCat(this._res);

  TRes _res;

  call({String? sealNo, String? serial, String? $__typename}) => _res;
}
