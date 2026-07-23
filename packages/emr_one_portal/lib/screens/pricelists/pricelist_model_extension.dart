import 'package:emr_one_portal/portal.dart';
import 'package:flutter/widgets.dart';

extension PricelistModelExtension on PriceListModel {
  String getCellValue(String type, BuildContext context) {
    final activeLocale = Localizations.localeOf(context);
    switch (type) {
      case PriceListGridColumns.description:
        return description;
      case PriceListGridColumns.price:
        return price;
      case PriceListGridColumns.unitOfMeasurement:
        return unitOfMeasurement;
      case PriceListGridColumns.deliveryMethod:
        return deliveryMethod;
      case PriceListGridColumns.updatedDate:
        return DateToStringHelpers.formatDateByLocale(
          updatedDate,
          activeLocale.toString(),
        );
      case PriceListGridColumns.notes:
        return notes;
      case PriceListGridColumns.grade:
        return grade;
      default:
        return '-';
    }
  }
}
