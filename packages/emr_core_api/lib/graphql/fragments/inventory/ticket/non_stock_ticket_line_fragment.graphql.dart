import 'media_asset_fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'ticket_deduction_fragment.graphql.dart';
import 'uom_value.graphql.dart';

class Fragment$NonStockTicketLineFields {
  Fragment$NonStockTicketLineFields({
    required this.lineNumber,
    required this.description,
    this.weightSerial,
    required this.deductions,
    required this.mediaAssets,
    required this.isActive,
    this.binNo,
    this.sealNo,
    this.consignmentNoteNo,
    this.scaleIdentifier,
    required this.hasSeenZero,
    this.$__typename = 'NonStockTicketLine',
  });

  factory Fragment$NonStockTicketLineFields.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$lineNumber = json['lineNumber'];
    final l$description = json['description'];
    final l$weightSerial = json['weightSerial'];
    final l$deductions = json['deductions'];
    final l$mediaAssets = json['mediaAssets'];
    final l$isActive = json['isActive'];
    final l$binNo = json['binNo'];
    final l$sealNo = json['sealNo'];
    final l$consignmentNoteNo = json['consignmentNoteNo'];
    final l$scaleIdentifier = json['scaleIdentifier'];
    final l$hasSeenZero = json['hasSeenZero'];
    final l$$__typename = json['__typename'];
    return Fragment$NonStockTicketLineFields(
      lineNumber: (l$lineNumber as int),
      description: (l$description as String),
      weightSerial: (l$weightSerial as String?),
      deductions: (l$deductions as List<dynamic>)
          .map(
            (e) =>
                Fragment$DeductionFields.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Fragment$MediaAssetFields.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      isActive: (l$isActive as bool),
      binNo: (l$binNo as String?),
      sealNo: (l$sealNo as String?),
      consignmentNoteNo: (l$consignmentNoteNo as String?),
      scaleIdentifier: (l$scaleIdentifier as String?),
      hasSeenZero: (l$hasSeenZero as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final int lineNumber;

  final String description;

  final String? weightSerial;

  final List<Fragment$DeductionFields> deductions;

  final List<Fragment$MediaAssetFields> mediaAssets;

  final bool isActive;

  final String? binNo;

  final String? sealNo;

  final String? consignmentNoteNo;

  final String? scaleIdentifier;

  final bool hasSeenZero;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lineNumber = lineNumber;
    _resultData['lineNumber'] = l$lineNumber;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$weightSerial = weightSerial;
    _resultData['weightSerial'] = l$weightSerial;
    final l$deductions = deductions;
    _resultData['deductions'] = l$deductions.map((e) => e.toJson()).toList();
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$binNo = binNo;
    _resultData['binNo'] = l$binNo;
    final l$sealNo = sealNo;
    _resultData['sealNo'] = l$sealNo;
    final l$consignmentNoteNo = consignmentNoteNo;
    _resultData['consignmentNoteNo'] = l$consignmentNoteNo;
    final l$scaleIdentifier = scaleIdentifier;
    _resultData['scaleIdentifier'] = l$scaleIdentifier;
    final l$hasSeenZero = hasSeenZero;
    _resultData['hasSeenZero'] = l$hasSeenZero;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lineNumber = lineNumber;
    final l$description = description;
    final l$weightSerial = weightSerial;
    final l$deductions = deductions;
    final l$mediaAssets = mediaAssets;
    final l$isActive = isActive;
    final l$binNo = binNo;
    final l$sealNo = sealNo;
    final l$consignmentNoteNo = consignmentNoteNo;
    final l$scaleIdentifier = scaleIdentifier;
    final l$hasSeenZero = hasSeenZero;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lineNumber,
      l$description,
      l$weightSerial,
      Object.hashAll(l$deductions.map((v) => v)),
      Object.hashAll(l$mediaAssets.map((v) => v)),
      l$isActive,
      l$binNo,
      l$sealNo,
      l$consignmentNoteNo,
      l$scaleIdentifier,
      l$hasSeenZero,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$NonStockTicketLineFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lineNumber = lineNumber;
    final lOther$lineNumber = other.lineNumber;
    if (l$lineNumber != lOther$lineNumber) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$weightSerial = weightSerial;
    final lOther$weightSerial = other.weightSerial;
    if (l$weightSerial != lOther$weightSerial) {
      return false;
    }
    final l$deductions = deductions;
    final lOther$deductions = other.deductions;
    if (l$deductions.length != lOther$deductions.length) {
      return false;
    }
    for (int i = 0; i < l$deductions.length; i++) {
      final l$deductions$entry = l$deductions[i];
      final lOther$deductions$entry = lOther$deductions[i];
      if (l$deductions$entry != lOther$deductions$entry) {
        return false;
      }
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
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$binNo = binNo;
    final lOther$binNo = other.binNo;
    if (l$binNo != lOther$binNo) {
      return false;
    }
    final l$sealNo = sealNo;
    final lOther$sealNo = other.sealNo;
    if (l$sealNo != lOther$sealNo) {
      return false;
    }
    final l$consignmentNoteNo = consignmentNoteNo;
    final lOther$consignmentNoteNo = other.consignmentNoteNo;
    if (l$consignmentNoteNo != lOther$consignmentNoteNo) {
      return false;
    }
    final l$scaleIdentifier = scaleIdentifier;
    final lOther$scaleIdentifier = other.scaleIdentifier;
    if (l$scaleIdentifier != lOther$scaleIdentifier) {
      return false;
    }
    final l$hasSeenZero = hasSeenZero;
    final lOther$hasSeenZero = other.hasSeenZero;
    if (l$hasSeenZero != lOther$hasSeenZero) {
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

extension UtilityExtension$Fragment$NonStockTicketLineFields
    on Fragment$NonStockTicketLineFields {
  CopyWith$Fragment$NonStockTicketLineFields<Fragment$NonStockTicketLineFields>
  get copyWith => CopyWith$Fragment$NonStockTicketLineFields(this, (i) => i);
}

abstract class CopyWith$Fragment$NonStockTicketLineFields<TRes> {
  factory CopyWith$Fragment$NonStockTicketLineFields(
    Fragment$NonStockTicketLineFields instance,
    TRes Function(Fragment$NonStockTicketLineFields) then,
  ) = _CopyWithImpl$Fragment$NonStockTicketLineFields;

  factory CopyWith$Fragment$NonStockTicketLineFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$NonStockTicketLineFields;

  TRes call({
    int? lineNumber,
    String? description,
    String? weightSerial,
    List<Fragment$DeductionFields>? deductions,
    List<Fragment$MediaAssetFields>? mediaAssets,
    bool? isActive,
    String? binNo,
    String? sealNo,
    String? consignmentNoteNo,
    String? scaleIdentifier,
    bool? hasSeenZero,
    String? $__typename,
  });
  TRes deductions(
    Iterable<Fragment$DeductionFields> Function(
      Iterable<CopyWith$Fragment$DeductionFields<Fragment$DeductionFields>>,
    )
    _fn,
  );
  TRes mediaAssets(
    Iterable<Fragment$MediaAssetFields> Function(
      Iterable<CopyWith$Fragment$MediaAssetFields<Fragment$MediaAssetFields>>,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$NonStockTicketLineFields<TRes>
    implements CopyWith$Fragment$NonStockTicketLineFields<TRes> {
  _CopyWithImpl$Fragment$NonStockTicketLineFields(this._instance, this._then);

  final Fragment$NonStockTicketLineFields _instance;

  final TRes Function(Fragment$NonStockTicketLineFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lineNumber = _undefined,
    Object? description = _undefined,
    Object? weightSerial = _undefined,
    Object? deductions = _undefined,
    Object? mediaAssets = _undefined,
    Object? isActive = _undefined,
    Object? binNo = _undefined,
    Object? sealNo = _undefined,
    Object? consignmentNoteNo = _undefined,
    Object? scaleIdentifier = _undefined,
    Object? hasSeenZero = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$NonStockTicketLineFields(
      lineNumber: lineNumber == _undefined || lineNumber == null
          ? _instance.lineNumber
          : (lineNumber as int),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      weightSerial: weightSerial == _undefined
          ? _instance.weightSerial
          : (weightSerial as String?),
      deductions: deductions == _undefined || deductions == null
          ? _instance.deductions
          : (deductions as List<Fragment$DeductionFields>),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets as List<Fragment$MediaAssetFields>),
      isActive: isActive == _undefined || isActive == null
          ? _instance.isActive
          : (isActive as bool),
      binNo: binNo == _undefined ? _instance.binNo : (binNo as String?),
      sealNo: sealNo == _undefined ? _instance.sealNo : (sealNo as String?),
      consignmentNoteNo: consignmentNoteNo == _undefined
          ? _instance.consignmentNoteNo
          : (consignmentNoteNo as String?),
      scaleIdentifier: scaleIdentifier == _undefined
          ? _instance.scaleIdentifier
          : (scaleIdentifier as String?),
      hasSeenZero: hasSeenZero == _undefined || hasSeenZero == null
          ? _instance.hasSeenZero
          : (hasSeenZero as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes deductions(
    Iterable<Fragment$DeductionFields> Function(
      Iterable<CopyWith$Fragment$DeductionFields<Fragment$DeductionFields>>,
    )
    _fn,
  ) => call(
    deductions: _fn(
      _instance.deductions.map(
        (e) => CopyWith$Fragment$DeductionFields(e, (i) => i),
      ),
    ).toList(),
  );

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
}

class _CopyWithStubImpl$Fragment$NonStockTicketLineFields<TRes>
    implements CopyWith$Fragment$NonStockTicketLineFields<TRes> {
  _CopyWithStubImpl$Fragment$NonStockTicketLineFields(this._res);

  TRes _res;

  call({
    int? lineNumber,
    String? description,
    String? weightSerial,
    List<Fragment$DeductionFields>? deductions,
    List<Fragment$MediaAssetFields>? mediaAssets,
    bool? isActive,
    String? binNo,
    String? sealNo,
    String? consignmentNoteNo,
    String? scaleIdentifier,
    bool? hasSeenZero,
    String? $__typename,
  }) => _res;

  deductions(_fn) => _res;

  mediaAssets(_fn) => _res;
}

const fragmentDefinitionNonStockTicketLineFields = FragmentDefinitionNode(
  name: NameNode(value: 'NonStockTicketLineFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'NonStockTicketLine'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'lineNumber'),
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
        name: NameNode(value: 'weightSerial'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'deductions'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'DeductionFields'),
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
        name: NameNode(value: 'isActive'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'binNo'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'sealNo'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'consignmentNoteNo'),
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
        name: NameNode(value: 'hasSeenZero'),
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
const documentNodeFragmentNonStockTicketLineFields = DocumentNode(
  definitions: [
    fragmentDefinitionNonStockTicketLineFields,
    fragmentDefinitionDeductionFields,
    fragmentDefinitionUomValueFields,
    fragmentDefinitionMediaAssetFields,
  ],
);
