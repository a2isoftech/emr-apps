import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

extension RolesExtension on String? {
  String getLocalizedRole(BuildContext context) {
    switch (this) {
      case 'Electrician':
        return context.l10n.electrician;
      case 'General House Clearance':
        return context.l10n.generalHouseClearance;
      case 'Home Improvements / DIY Project':
        return context.l10n.homeImprovementsOrDIYProject;
      case 'Plumber':
        return context.l10n.plumber;
      case 'Scrap Collector':
        return context.l10n.scrapCollector;
      case 'Scrapping a vehicle(s)':
        return context.l10n.scrappingAVehicles;
      case 'Contractor':
        return context.l10n.contractor;
      case 'Trader':
        return context.l10n.trader;
      case 'Other':
        return context.l10n.other;
      case 'Please select your reason for creating an account...':
        return context.l10n.msgSelectReasonForAccountCreation;
      default:
        return '';
    }
  }
}
