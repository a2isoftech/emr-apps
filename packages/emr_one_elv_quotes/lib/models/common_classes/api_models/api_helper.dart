import 'package:emr_one_elv_core/models/account_models/account_models.dart';
import 'package:emr_one_elv_core/models/batch_quote_search_criteria.dart';
import 'package:emr_one_elv_core/models/quote_type_enum.dart';
import 'package:emr_one_elv_core/models/uom_code.dart';
import 'package:emr_one_elv_core/models/yard/yard_opening_times_model.dart';
import 'package:emr_one_elv_quotes/models/common_classes/enums/email_quote_status_enum.dart';

class QueryParam {
  const QueryParam(this.name, this.value);

  final String name;
  final String value;

  @override
  String toString() =>
      '${Uri.encodeQueryComponent(name)}=${Uri.encodeQueryComponent(value)}';
}

/// Format the given parameter object into a [String].
String parameterToString(dynamic value) {
  if (value == null) {
    return '';
  }
  if (value is DateTime) {
    return value.toUtc().toIso8601String();
  }
  if (value is BatchQuoteSearchSortFieldEnum) {
    return BatchQuoteSearchSortFieldEnumTypeTransformer().encode(value);
  }
  if (value is DayOfWeek) {
    return DayOfWeekTypeTransformer().encode(value);
  }
  if (value is DocumentSubType) {
    return DocumentSubTypeTypeTransformer().encode(value);
  }
  if (value is DocumentType) {
    return DocumentTypeTypeTransformer().encode(value);
  }
  if (value is EmailQuoteStatusEnum) {
    return EmailQuoteStatusEnumTypeTransformer().encode(value);
  }
  if (value is PaymentMethod) {
    return PaymentMethodTypeTransformer().encode(value);
  }
  if (value is QuoteStatusEnum) {
    return QuoteStatusEnumTypeTransformer().encode(value);
  }
  if (value is QuoteTypeEnum) {
    return QuoteTypeEnumTypeTransformer().encode(value);
  }
  if (value is UomCode) {
    return UomCodeTypeTransformer().encode(value);
  }
  return value.toString();
}

T? mapValueOfType<T>(dynamic map, String key) {
  final dynamic value = map is Map ? map[key] : null;
  return value is T ? value : null;
}

/// Returns a valid Map<K, V> found at the specified Map [key], null otherwise.
Map<K, V>? mapCastOfType<K, V>(dynamic map, String key) {
  final dynamic value = map is Map ? map[key] : null;
  return value is Map ? value.cast<K, V>() : null;
}

/// Returns a valid [DateTime] found at the specified Map [key], null otherwise.
DateTime? mapDateTime(dynamic map, String key, [String? pattern]) {
  final dynamic value = map is Map ? map[key] : null;

  const dateEpochMarker = 'epoch';

  if (value != null) {
    int? millis;
    if (value is int) {
      millis = value;
    } else if (value is String) {
      if (pattern == dateEpochMarker) {
        millis = int.tryParse(value);
      } else {
        return DateTime.tryParse(value);
      }
    }
    if (millis != null) {
      return DateTime.fromMillisecondsSinceEpoch(millis, isUtc: true);
    }
  }
  return null;
}
