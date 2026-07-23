import 'package:emr_one_elv_core/models/quote_type_enum.dart';

class BatchQuoteSearchCriteria {
  BatchQuoteSearchCriteria({
    required this.searchText,
    required this.sortField,
    required this.sortAscending,
    required this.page,
    required this.pageSize,
    this.createdBefore,
    this.createdAfter,
    this.type,
    this.status,
  });

  String searchText;
  BatchQuoteSearchSortFieldEnum sortField;
  bool sortAscending;
  int page;
  int pageSize;
  DateTime? createdBefore;
  DateTime? createdAfter;
  QuoteTypeEnum? type;
  QuoteStatusEnum? status;

  static BatchQuoteSearchCriteria? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return BatchQuoteSearchCriteria(
        searchText: json['searchText'] as String,
        sortField: BatchQuoteSearchSortFieldEnum.fromJson(json['sortField'])!,
        sortAscending: json['sortAscending'] as bool,
        page: json['page'] as int,
        pageSize: json['pageSize'] as int,
        createdBefore:
            DateTime.tryParse(json['createdBefore'] as String? ?? ''),
        createdAfter: DateTime.tryParse(json['createdAfter'] as String? ?? ''),
        type: QuoteTypeEnum.fromJson(json['type']),
        status: QuoteStatusEnum.fromJson(json['status']),
      );
    }
    return null;
  }

  static List<BatchQuoteSearchCriteria>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BatchQuoteSearchCriteria>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchQuoteSearchCriteria.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

class BatchQuoteSearchSortFieldEnum {
  /// Instantiate a new enum with the provided [value].
  const BatchQuoteSearchSortFieldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const createdDate = BatchQuoteSearchSortFieldEnum._('CreatedDate');
  static const id = BatchQuoteSearchSortFieldEnum._('Id');
  static const status = BatchQuoteSearchSortFieldEnum._('Status');
  static const type = BatchQuoteSearchSortFieldEnum._('Type');
  static const source_ = BatchQuoteSearchSortFieldEnum._('Source');
  static const createdBy = BatchQuoteSearchSortFieldEnum._('CreatedBy');
  static const accountCode = BatchQuoteSearchSortFieldEnum._('AccountCode');

  /// List of all possible values in this [enum][BatchQuoteSearchSortFieldEnum].
  static const values = <BatchQuoteSearchSortFieldEnum>[
    createdDate,
    id,
    status,
    type,
    source_,
    createdBy,
    accountCode,
  ];

  static BatchQuoteSearchSortFieldEnum? fromJson(dynamic value) =>
      BatchQuoteSearchSortFieldEnumTypeTransformer().decode(value);

  static List<BatchQuoteSearchSortFieldEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BatchQuoteSearchSortFieldEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchQuoteSearchSortFieldEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

class BatchQuoteSearchSortFieldEnumTypeTransformer {
  factory BatchQuoteSearchSortFieldEnumTypeTransformer() =>
      _instance ??= const BatchQuoteSearchSortFieldEnumTypeTransformer._();

  const BatchQuoteSearchSortFieldEnumTypeTransformer._();

  String encode(BatchQuoteSearchSortFieldEnum data) => data.value;
  BatchQuoteSearchSortFieldEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case 'CreatedDate':
          return BatchQuoteSearchSortFieldEnum.createdDate;
        case 'Id':
          return BatchQuoteSearchSortFieldEnum.id;
        case 'Status':
          return BatchQuoteSearchSortFieldEnum.status;
        case 'Type':
          return BatchQuoteSearchSortFieldEnum.type;
        case 'Source':
          return BatchQuoteSearchSortFieldEnum.source_;
        case 'CreatedBy':
          return BatchQuoteSearchSortFieldEnum.createdBy;
        case 'AccountCode':
          return BatchQuoteSearchSortFieldEnum.accountCode;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  static BatchQuoteSearchSortFieldEnumTypeTransformer? _instance;
}

class QuoteStatusEnum {
  const QuoteStatusEnum._(this.value);

  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = QuoteStatusEnum._('Unknown');
  static const draft = QuoteStatusEnum._('Draft');
  static const confirmed = QuoteStatusEnum._('Confirmed');
  static const inspected = QuoteStatusEnum._('Inspected');
  static const inspectionInProgress = QuoteStatusEnum._('InspectionInProgress');
  static const abandoned = QuoteStatusEnum._('Abandoned');

  static const values = <QuoteStatusEnum>[
    unknown,
    draft,
    confirmed,
    inspected,
    inspectionInProgress,
    abandoned,
  ];

  static List<String> toStringArray = <String>[
    unknown.value,
    draft.value,
    confirmed.value,
    inspected.value,
    inspectionInProgress.value,
    abandoned.value,
  ];

  static QuoteStatusEnum? fromJson(dynamic value) =>
      QuoteStatusEnumTypeTransformer().decode(value);

  static List<QuoteStatusEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <QuoteStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuoteStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static QuoteStatusEnum mapFromInt(int? value) {
    switch (value) {
      case 1:
        return QuoteStatusEnum.draft;
      case 2:
        return QuoteStatusEnum.confirmed;
      case 3:
        return QuoteStatusEnum.inspected;
      case 4:
        return QuoteStatusEnum.inspectionInProgress;
      case 5:
        return QuoteStatusEnum.abandoned;
      default:
        return QuoteStatusEnum.unknown;
    }
  }
}

class QuoteStatusEnumTypeTransformer {
  factory QuoteStatusEnumTypeTransformer() =>
      _instance ??= const QuoteStatusEnumTypeTransformer._();

  const QuoteStatusEnumTypeTransformer._();
  String encode(QuoteStatusEnum data) => data.value;
  QuoteStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case 'Unknown':
          return QuoteStatusEnum.unknown;
        case 'Draft':
          return QuoteStatusEnum.draft;
        case 'Confirmed':
          return QuoteStatusEnum.confirmed;
        case 'Inspected':
          return QuoteStatusEnum.inspected;
        case 'InspectionInProgress':
          return QuoteStatusEnum.inspectionInProgress;
        case 'Abandoned':
          return QuoteStatusEnum.abandoned;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  static QuoteStatusEnumTypeTransformer? _instance;
}
