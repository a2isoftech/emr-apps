import '../../../schema.graphql.dart';
import 'media_asset_fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'uom_value.graphql.dart';

class Fragment$DeductionFields {
  Fragment$DeductionFields({
    required this.typeId,
    this.subType,
    this.stockRequirement,
    this.weight,
    this.value,
    this.scaleIdentifier,
    this.weightSerial,
    required this.isTareFromPreviousWeight,
    required this.hasSeenZero,
    required this.mediaAssets,
    required this.created,
    required this.modified,
    this.$__typename = 'LineDeduction',
  });

  factory Fragment$DeductionFields.fromJson(Map<String, dynamic> json) {
    final l$typeId = json['typeId'];
    final l$subType = json['subType'];
    final l$stockRequirement = json['stockRequirement'];
    final l$weight = json['weight'];
    final l$value = json['value'];
    final l$scaleIdentifier = json['scaleIdentifier'];
    final l$weightSerial = json['weightSerial'];
    final l$isTareFromPreviousWeight = json['isTareFromPreviousWeight'];
    final l$hasSeenZero = json['hasSeenZero'];
    final l$mediaAssets = json['mediaAssets'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$$__typename = json['__typename'];
    return Fragment$DeductionFields(
      typeId: (l$typeId as String),
      subType: l$subType == null
          ? null
          : fromJson$Enum$DeductionSubType((l$subType as String)),
      stockRequirement: l$stockRequirement == null
          ? null
          : Fragment$DeductionFields$stockRequirement.fromJson(
              (l$stockRequirement as Map<String, dynamic>),
            ),
      weight: l$weight == null
          ? null
          : Fragment$UomValueFields.fromJson(
              (l$weight as Map<String, dynamic>),
            ),
      value: (l$value as num?)?.toDouble(),
      scaleIdentifier: (l$scaleIdentifier as String?),
      weightSerial: (l$weightSerial as String?),
      isTareFromPreviousWeight: (l$isTareFromPreviousWeight as bool),
      hasSeenZero: (l$hasSeenZero as bool),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Fragment$MediaAssetFields.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      created: Fragment$DeductionFields$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      modified: Fragment$DeductionFields$modified.fromJson(
        (l$modified as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String typeId;

  final Enum$DeductionSubType? subType;

  final Fragment$DeductionFields$stockRequirement? stockRequirement;

  final Fragment$UomValueFields? weight;

  final double? value;

  final String? scaleIdentifier;

  final String? weightSerial;

  final bool isTareFromPreviousWeight;

  final bool hasSeenZero;

  final List<Fragment$MediaAssetFields> mediaAssets;

  final Fragment$DeductionFields$created created;

  final Fragment$DeductionFields$modified modified;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$typeId = typeId;
    _resultData['typeId'] = l$typeId;
    final l$subType = subType;
    _resultData['subType'] = l$subType == null
        ? null
        : toJson$Enum$DeductionSubType(l$subType);
    final l$stockRequirement = stockRequirement;
    _resultData['stockRequirement'] = l$stockRequirement?.toJson();
    final l$weight = weight;
    _resultData['weight'] = l$weight?.toJson();
    final l$value = value;
    _resultData['value'] = l$value;
    final l$scaleIdentifier = scaleIdentifier;
    _resultData['scaleIdentifier'] = l$scaleIdentifier;
    final l$weightSerial = weightSerial;
    _resultData['weightSerial'] = l$weightSerial;
    final l$isTareFromPreviousWeight = isTareFromPreviousWeight;
    _resultData['isTareFromPreviousWeight'] = l$isTareFromPreviousWeight;
    final l$hasSeenZero = hasSeenZero;
    _resultData['hasSeenZero'] = l$hasSeenZero;
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
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
    final l$typeId = typeId;
    final l$subType = subType;
    final l$stockRequirement = stockRequirement;
    final l$weight = weight;
    final l$value = value;
    final l$scaleIdentifier = scaleIdentifier;
    final l$weightSerial = weightSerial;
    final l$isTareFromPreviousWeight = isTareFromPreviousWeight;
    final l$hasSeenZero = hasSeenZero;
    final l$mediaAssets = mediaAssets;
    final l$created = created;
    final l$modified = modified;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$typeId,
      l$subType,
      l$stockRequirement,
      l$weight,
      l$value,
      l$scaleIdentifier,
      l$weightSerial,
      l$isTareFromPreviousWeight,
      l$hasSeenZero,
      Object.hashAll(l$mediaAssets.map((v) => v)),
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
    if (other is! Fragment$DeductionFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$typeId = typeId;
    final lOther$typeId = other.typeId;
    if (l$typeId != lOther$typeId) {
      return false;
    }
    final l$subType = subType;
    final lOther$subType = other.subType;
    if (l$subType != lOther$subType) {
      return false;
    }
    final l$stockRequirement = stockRequirement;
    final lOther$stockRequirement = other.stockRequirement;
    if (l$stockRequirement != lOther$stockRequirement) {
      return false;
    }
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$scaleIdentifier = scaleIdentifier;
    final lOther$scaleIdentifier = other.scaleIdentifier;
    if (l$scaleIdentifier != lOther$scaleIdentifier) {
      return false;
    }
    final l$weightSerial = weightSerial;
    final lOther$weightSerial = other.weightSerial;
    if (l$weightSerial != lOther$weightSerial) {
      return false;
    }
    final l$isTareFromPreviousWeight = isTareFromPreviousWeight;
    final lOther$isTareFromPreviousWeight = other.isTareFromPreviousWeight;
    if (l$isTareFromPreviousWeight != lOther$isTareFromPreviousWeight) {
      return false;
    }
    final l$hasSeenZero = hasSeenZero;
    final lOther$hasSeenZero = other.hasSeenZero;
    if (l$hasSeenZero != lOther$hasSeenZero) {
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

extension UtilityExtension$Fragment$DeductionFields
    on Fragment$DeductionFields {
  CopyWith$Fragment$DeductionFields<Fragment$DeductionFields> get copyWith =>
      CopyWith$Fragment$DeductionFields(this, (i) => i);
}

abstract class CopyWith$Fragment$DeductionFields<TRes> {
  factory CopyWith$Fragment$DeductionFields(
    Fragment$DeductionFields instance,
    TRes Function(Fragment$DeductionFields) then,
  ) = _CopyWithImpl$Fragment$DeductionFields;

  factory CopyWith$Fragment$DeductionFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DeductionFields;

  TRes call({
    String? typeId,
    Enum$DeductionSubType? subType,
    Fragment$DeductionFields$stockRequirement? stockRequirement,
    Fragment$UomValueFields? weight,
    double? value,
    String? scaleIdentifier,
    String? weightSerial,
    bool? isTareFromPreviousWeight,
    bool? hasSeenZero,
    List<Fragment$MediaAssetFields>? mediaAssets,
    Fragment$DeductionFields$created? created,
    Fragment$DeductionFields$modified? modified,
    String? $__typename,
  });
  CopyWith$Fragment$DeductionFields$stockRequirement<TRes> get stockRequirement;
  CopyWith$Fragment$UomValueFields<TRes> get weight;
  TRes mediaAssets(
    Iterable<Fragment$MediaAssetFields> Function(
      Iterable<CopyWith$Fragment$MediaAssetFields<Fragment$MediaAssetFields>>,
    )
    _fn,
  );
  CopyWith$Fragment$DeductionFields$created<TRes> get created;
  CopyWith$Fragment$DeductionFields$modified<TRes> get modified;
}

class _CopyWithImpl$Fragment$DeductionFields<TRes>
    implements CopyWith$Fragment$DeductionFields<TRes> {
  _CopyWithImpl$Fragment$DeductionFields(this._instance, this._then);

  final Fragment$DeductionFields _instance;

  final TRes Function(Fragment$DeductionFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? typeId = _undefined,
    Object? subType = _undefined,
    Object? stockRequirement = _undefined,
    Object? weight = _undefined,
    Object? value = _undefined,
    Object? scaleIdentifier = _undefined,
    Object? weightSerial = _undefined,
    Object? isTareFromPreviousWeight = _undefined,
    Object? hasSeenZero = _undefined,
    Object? mediaAssets = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$DeductionFields(
      typeId: typeId == _undefined || typeId == null
          ? _instance.typeId
          : (typeId as String),
      subType: subType == _undefined
          ? _instance.subType
          : (subType as Enum$DeductionSubType?),
      stockRequirement: stockRequirement == _undefined
          ? _instance.stockRequirement
          : (stockRequirement as Fragment$DeductionFields$stockRequirement?),
      weight: weight == _undefined
          ? _instance.weight
          : (weight as Fragment$UomValueFields?),
      value: value == _undefined ? _instance.value : (value as double?),
      scaleIdentifier: scaleIdentifier == _undefined
          ? _instance.scaleIdentifier
          : (scaleIdentifier as String?),
      weightSerial: weightSerial == _undefined
          ? _instance.weightSerial
          : (weightSerial as String?),
      isTareFromPreviousWeight:
          isTareFromPreviousWeight == _undefined ||
              isTareFromPreviousWeight == null
          ? _instance.isTareFromPreviousWeight
          : (isTareFromPreviousWeight as bool),
      hasSeenZero: hasSeenZero == _undefined || hasSeenZero == null
          ? _instance.hasSeenZero
          : (hasSeenZero as bool),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets as List<Fragment$MediaAssetFields>),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Fragment$DeductionFields$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified as Fragment$DeductionFields$modified),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$DeductionFields$stockRequirement<TRes>
  get stockRequirement {
    final local$stockRequirement = _instance.stockRequirement;
    return local$stockRequirement == null
        ? CopyWith$Fragment$DeductionFields$stockRequirement.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$DeductionFields$stockRequirement(
            local$stockRequirement,
            (e) => call(stockRequirement: e),
          );
  }

  CopyWith$Fragment$UomValueFields<TRes> get weight {
    final local$weight = _instance.weight;
    return local$weight == null
        ? CopyWith$Fragment$UomValueFields.stub(_then(_instance))
        : CopyWith$Fragment$UomValueFields(
            local$weight,
            (e) => call(weight: e),
          );
  }

  TRes mediaAssets(
    Iterable<Fragment$MediaAssetFields> Function(
      Iterable<CopyWith$Fragment$MediaAssetFields<Fragment$MediaAssetFields>>,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) => CopyWith$Fragment$MediaAssetFields(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Fragment$DeductionFields$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$DeductionFields$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Fragment$DeductionFields$modified<TRes> get modified {
    final local$modified = _instance.modified;
    return CopyWith$Fragment$DeductionFields$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$DeductionFields<TRes>
    implements CopyWith$Fragment$DeductionFields<TRes> {
  _CopyWithStubImpl$Fragment$DeductionFields(this._res);

  TRes _res;

  call({
    String? typeId,
    Enum$DeductionSubType? subType,
    Fragment$DeductionFields$stockRequirement? stockRequirement,
    Fragment$UomValueFields? weight,
    double? value,
    String? scaleIdentifier,
    String? weightSerial,
    bool? isTareFromPreviousWeight,
    bool? hasSeenZero,
    List<Fragment$MediaAssetFields>? mediaAssets,
    Fragment$DeductionFields$created? created,
    Fragment$DeductionFields$modified? modified,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$DeductionFields$stockRequirement<TRes>
  get stockRequirement =>
      CopyWith$Fragment$DeductionFields$stockRequirement.stub(_res);

  CopyWith$Fragment$UomValueFields<TRes> get weight =>
      CopyWith$Fragment$UomValueFields.stub(_res);

  mediaAssets(_fn) => _res;

  CopyWith$Fragment$DeductionFields$created<TRes> get created =>
      CopyWith$Fragment$DeductionFields$created.stub(_res);

  CopyWith$Fragment$DeductionFields$modified<TRes> get modified =>
      CopyWith$Fragment$DeductionFields$modified.stub(_res);
}

const fragmentDefinitionDeductionFields = FragmentDefinitionNode(
  name: NameNode(value: 'DeductionFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'LineDeduction'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'typeId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'subType'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'stockRequirement'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'productId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'count'),
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
        name: NameNode(value: 'weight'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'UomValueFields'),
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
        name: NameNode(value: 'value'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'scaleIdentifier'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'weightSerial'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isTareFromPreviousWeight'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'hasSeenZero'),
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
            FragmentSpreadNode(
              name: NameNode(value: 'MediaAssetFields'),
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
const documentNodeFragmentDeductionFields = DocumentNode(
  definitions: [
    fragmentDefinitionDeductionFields,
    fragmentDefinitionUomValueFields,
    fragmentDefinitionMediaAssetFields,
  ],
);

class Fragment$DeductionFields$stockRequirement {
  Fragment$DeductionFields$stockRequirement({
    required this.productId,
    required this.count,
    this.$__typename = 'DeductionStockRequirement',
  });

  factory Fragment$DeductionFields$stockRequirement.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$productId = json['productId'];
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Fragment$DeductionFields$stockRequirement(
      productId: (l$productId as String),
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String productId;

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$productId = productId;
    _resultData['productId'] = l$productId;
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$productId = productId;
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$productId, l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$DeductionFields$stockRequirement ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Fragment$DeductionFields$stockRequirement
    on Fragment$DeductionFields$stockRequirement {
  CopyWith$Fragment$DeductionFields$stockRequirement<
    Fragment$DeductionFields$stockRequirement
  >
  get copyWith =>
      CopyWith$Fragment$DeductionFields$stockRequirement(this, (i) => i);
}

abstract class CopyWith$Fragment$DeductionFields$stockRequirement<TRes> {
  factory CopyWith$Fragment$DeductionFields$stockRequirement(
    Fragment$DeductionFields$stockRequirement instance,
    TRes Function(Fragment$DeductionFields$stockRequirement) then,
  ) = _CopyWithImpl$Fragment$DeductionFields$stockRequirement;

  factory CopyWith$Fragment$DeductionFields$stockRequirement.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DeductionFields$stockRequirement;

  TRes call({String? productId, int? count, String? $__typename});
}

class _CopyWithImpl$Fragment$DeductionFields$stockRequirement<TRes>
    implements CopyWith$Fragment$DeductionFields$stockRequirement<TRes> {
  _CopyWithImpl$Fragment$DeductionFields$stockRequirement(
    this._instance,
    this._then,
  );

  final Fragment$DeductionFields$stockRequirement _instance;

  final TRes Function(Fragment$DeductionFields$stockRequirement) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productId = _undefined,
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$DeductionFields$stockRequirement(
      productId: productId == _undefined || productId == null
          ? _instance.productId
          : (productId as String),
      count: count == _undefined || count == null
          ? _instance.count
          : (count as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$DeductionFields$stockRequirement<TRes>
    implements CopyWith$Fragment$DeductionFields$stockRequirement<TRes> {
  _CopyWithStubImpl$Fragment$DeductionFields$stockRequirement(this._res);

  TRes _res;

  call({String? productId, int? count, String? $__typename}) => _res;
}

class Fragment$DeductionFields$created {
  Fragment$DeductionFields$created({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Created',
  });

  factory Fragment$DeductionFields$created.fromJson(Map<String, dynamic> json) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Fragment$DeductionFields$created(
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
    if (other is! Fragment$DeductionFields$created ||
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

extension UtilityExtension$Fragment$DeductionFields$created
    on Fragment$DeductionFields$created {
  CopyWith$Fragment$DeductionFields$created<Fragment$DeductionFields$created>
  get copyWith => CopyWith$Fragment$DeductionFields$created(this, (i) => i);
}

abstract class CopyWith$Fragment$DeductionFields$created<TRes> {
  factory CopyWith$Fragment$DeductionFields$created(
    Fragment$DeductionFields$created instance,
    TRes Function(Fragment$DeductionFields$created) then,
  ) = _CopyWithImpl$Fragment$DeductionFields$created;

  factory CopyWith$Fragment$DeductionFields$created.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DeductionFields$created;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$DeductionFields$created<TRes>
    implements CopyWith$Fragment$DeductionFields$created<TRes> {
  _CopyWithImpl$Fragment$DeductionFields$created(this._instance, this._then);

  final Fragment$DeductionFields$created _instance;

  final TRes Function(Fragment$DeductionFields$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$DeductionFields$created(
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

class _CopyWithStubImpl$Fragment$DeductionFields$created<TRes>
    implements CopyWith$Fragment$DeductionFields$created<TRes> {
  _CopyWithStubImpl$Fragment$DeductionFields$created(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Fragment$DeductionFields$modified {
  Fragment$DeductionFields$modified({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Modified',
  });

  factory Fragment$DeductionFields$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Fragment$DeductionFields$modified(
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
    if (other is! Fragment$DeductionFields$modified ||
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

extension UtilityExtension$Fragment$DeductionFields$modified
    on Fragment$DeductionFields$modified {
  CopyWith$Fragment$DeductionFields$modified<Fragment$DeductionFields$modified>
  get copyWith => CopyWith$Fragment$DeductionFields$modified(this, (i) => i);
}

abstract class CopyWith$Fragment$DeductionFields$modified<TRes> {
  factory CopyWith$Fragment$DeductionFields$modified(
    Fragment$DeductionFields$modified instance,
    TRes Function(Fragment$DeductionFields$modified) then,
  ) = _CopyWithImpl$Fragment$DeductionFields$modified;

  factory CopyWith$Fragment$DeductionFields$modified.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DeductionFields$modified;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$DeductionFields$modified<TRes>
    implements CopyWith$Fragment$DeductionFields$modified<TRes> {
  _CopyWithImpl$Fragment$DeductionFields$modified(this._instance, this._then);

  final Fragment$DeductionFields$modified _instance;

  final TRes Function(Fragment$DeductionFields$modified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$DeductionFields$modified(
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

class _CopyWithStubImpl$Fragment$DeductionFields$modified<TRes>
    implements CopyWith$Fragment$DeductionFields$modified<TRes> {
  _CopyWithStubImpl$Fragment$DeductionFields$modified(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}
