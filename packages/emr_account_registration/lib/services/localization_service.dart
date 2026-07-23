import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class LocalizationService {
  static String getPhoneNumberString(String countryId, BuildContext context) {
    if (countryId.isCountryUS()) {
      return context.l10n.cellNumber;
    } else {
      return context.l10n.mobileNumber;
    }
  }

  static String getLocalizedFrequency(String key, BuildContext context) {
    switch (key) {
      case 'Ad-hoc':
        return context.l10n.adHoc;
      case 'Daily':
        return context.l10n.daily;
      case 'Weekly':
        return context.l10n.weekly;
      case 'Bi-Weekly':
        return context.l10n.biWeekly;
      case 'Monthly':
        return context.l10n.monthly;
      case 'Bi-Monthly':
        return context.l10n.biMonthly;
      case 'Annually':
        return context.l10n.annually;
      case 'One Off':
        return context.l10n.oneOff;
      case 'How often do you plan to visit us...':
        return context.l10n.msgPlanToVisit;
      default:
        return '';
    }
  }

  static Map<String, Enum$VisitFrequency> getLocalizedFrequencies(
    RunContext runContext,
    BuildContext context, {
    bool isDutchLocale = false,
  }) {
    final visitFrequencies = runContext.isPortal
        ? AccountRegistrationRemoteConfigService.frequencies
        : JourneyController.visitFrequencies;
    return Map.fromEntries(
      visitFrequencies.entries
          .map((entry) {
            final localizedFrequency = isDutchLocale
                ? LocalizationService.getLocalizedFrequency(entry.key, context)
                : entry.key;
            return MapEntry(
              localizedFrequency.isNotEmpty ? localizedFrequency : '',
              entry.value,
            );
          })
          .where((entry) => entry.key.isNotEmpty),
    );
  }

  static Map<String, String> getLocalizedRoles(
    RunContext runContext,
    BuildContext context, {
    bool isDutchLocale = false,
  }) {
    final roles = runContext.isPortal
        ? AccountRegistrationRemoteConfigService.roles
        : JourneyController.roles;

    return Map.fromEntries(
      roles.entries
          .map((entry) {
            final localizedRole = isDutchLocale
                ? entry.key.getLocalizedRole(context)
                : entry.key;
            return MapEntry(
              localizedRole.isNotEmpty ? localizedRole : '',
              entry.value,
            );
          })
          .where((entry) => entry.key.isNotEmpty),
    );
  }
}
