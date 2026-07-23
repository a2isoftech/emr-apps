class DocumentModel {
  /// Returns a new [DocumentModel] instance.
  DocumentModel({
    required this.name,
    required this.type,
    required this.subType,
    required this.path,
    required this.id,
  });

  String name;

  DocumentType type;

  DocumentSubType subType;

  String path;

  String id;

  /// Returns a new [DocumentModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DocumentModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return DocumentModel(
        name: json['name'] as String,
        type: DocumentType.fromJson(json['type'])!,
        subType: DocumentSubType.fromJson(json['subType'])!,
        path: json['path'] as String,
        id: json['id'] as String,
      );
    }
    return null;
  }

  static List<DocumentModel>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DocumentModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocumentModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

class DocumentType {
  const DocumentType._(this.value);
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const none = DocumentType._('None');
  static const proofOfId = DocumentType._('ProofOfId');
  static const proofOfAddress = DocumentType._('ProofOfAddress');
  static const signature = DocumentType._('Signature');

  /// List of all possible values in this [enum][DocumentType].
  static const values = <DocumentType>[
    none,
    proofOfId,
    proofOfAddress,
    signature,
  ];

  static DocumentType? fromJson(dynamic value) =>
      DocumentTypeTypeTransformer().decode(value);

  static List<DocumentType>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DocumentType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocumentType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

class DocumentTypeTypeTransformer {
  factory DocumentTypeTypeTransformer() =>
      _instance ??= const DocumentTypeTypeTransformer._();

  const DocumentTypeTypeTransformer._();

  String encode(DocumentType data) => data.value;
  DocumentType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case 'None':
          return DocumentType.none;
        case 'ProofOfId':
          return DocumentType.proofOfId;
        case 'ProofOfAddress':
          return DocumentType.proofOfAddress;
        case 'Signature':
          return DocumentType.signature;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  static DocumentTypeTypeTransformer? _instance;
}

class DocumentSubType {
  const DocumentSubType._(this.value);

  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const none = DocumentSubType._('None');
  static const ukDrivingLicense = DocumentSubType._('UkDrivingLicense');
  static const ukEuEeaPassport = DocumentSubType._('UkEuEeaPassport');
  static const euNationalIdCard = DocumentSubType._('EuNationalIdCard');
  static const utilityBill = DocumentSubType._('UtilityBill');
  static const bankStatement = DocumentSubType._('BankStatement');
  static const councilTaxDemandLetter =
      DocumentSubType._('CouncilTaxDemandLetter');
  static const creditDebitCardStatement =
      DocumentSubType._('CreditDebitCardStatement');
  static const ukEuDrivingLicense = DocumentSubType._('UkEuDrivingLicense');
  static const biometricImmigrationDocument =
      DocumentSubType._('BiometricImmigrationDocument');
  static const euDrivingLicense = DocumentSubType._('EuDrivingLicense');
  static const hmrcCorrespondance = DocumentSubType._('HmrcCorrespondance');
  static const mortgageStatement = DocumentSubType._('MortgageStatement');
  static const ukFirearmLicense = DocumentSubType._('UkFirearmLicense');

  static const values = <DocumentSubType>[
    none,
    ukDrivingLicense,
    ukEuEeaPassport,
    euNationalIdCard,
    utilityBill,
    bankStatement,
    councilTaxDemandLetter,
    creditDebitCardStatement,
    ukEuDrivingLicense,
    biometricImmigrationDocument,
    euDrivingLicense,
    hmrcCorrespondance,
    mortgageStatement,
    ukFirearmLicense,
  ];

  static DocumentSubType? fromJson(dynamic value) =>
      DocumentSubTypeTypeTransformer().decode(value);

  static List<DocumentSubType>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DocumentSubType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocumentSubType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

class DocumentSubTypeTypeTransformer {
  factory DocumentSubTypeTypeTransformer() =>
      _instance ??= const DocumentSubTypeTypeTransformer._();

  const DocumentSubTypeTypeTransformer._();

  String encode(DocumentSubType data) => data.value;

  DocumentSubType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case 'None':
          return DocumentSubType.none;
        case 'UkDrivingLicense':
          return DocumentSubType.ukDrivingLicense;
        case 'UkEuEeaPassport':
          return DocumentSubType.ukEuEeaPassport;
        case 'EuNationalIdCard':
          return DocumentSubType.euNationalIdCard;
        case 'UtilityBill':
          return DocumentSubType.utilityBill;
        case 'BankStatement':
          return DocumentSubType.bankStatement;
        case 'CouncilTaxDemandLetter':
          return DocumentSubType.councilTaxDemandLetter;
        case 'CreditDebitCardStatement':
          return DocumentSubType.creditDebitCardStatement;
        case 'UkEuDrivingLicense':
          return DocumentSubType.ukEuDrivingLicense;
        case 'BiometricImmigrationDocument':
          return DocumentSubType.biometricImmigrationDocument;
        case 'EuDrivingLicense':
          return DocumentSubType.euDrivingLicense;
        case 'HmrcCorrespondance':
          return DocumentSubType.hmrcCorrespondance;
        case 'MortgageStatement':
          return DocumentSubType.mortgageStatement;
        case 'UkFirearmLicense':
          return DocumentSubType.ukFirearmLicense;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  static DocumentSubTypeTypeTransformer? _instance;
}
