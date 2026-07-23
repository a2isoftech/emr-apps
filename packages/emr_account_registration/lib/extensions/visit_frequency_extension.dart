import 'package:emr_core_api/emr_core_api.dart';

extension VisitFrequencyExtension on String {
  Enum$VisitFrequency getVisitFrequency() {
    switch (this) {
      case 'AdHoc':
        return Enum$VisitFrequency.AD_HOC;
      case 'Daily':
        return Enum$VisitFrequency.DAILY;
      case 'Weekly':
        return Enum$VisitFrequency.WEEKLY;
      case 'BiWeekly':
        return Enum$VisitFrequency.BI_WEEKLY;
      case 'Monthly':
        return Enum$VisitFrequency.MONTHLY;
      case 'BiMonthly':
        return Enum$VisitFrequency.BI_MONTHLY;
      case 'Yearly':
        return Enum$VisitFrequency.YEARLY;
      case 'OneOff':
        return Enum$VisitFrequency.ONE_OFF;
    }
    return Enum$VisitFrequency.$unknown;
  }
}
