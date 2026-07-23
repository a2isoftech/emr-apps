import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

const double gutterTimes15 = Insets.gutter * 15;
const double labelControlSpacing = 2;

class AccountAccessConstants {
  static const String accountNotAuthorized = 'AUTH_NOT_AUTHORIZED';
  static const Color bannerColour = Color(0xFF125489);
}

abstract class ManageLocationFieldLimits {
  static const int locationCodeMaxLength = 20;
  static const int sitePermitOrExemptionNumberMaxLength = 50;
}

const double accountGridRowHeight = 50;
const double accountGridMaxVisibleRows = 6.5;
const double accountGridEmptyHeight = 100;

abstract class MainDetailsLayoutConstants {
  static const int smallScreenMaxWidth = 480;
  static const int mediumScreenMaxWidth = 960;
  static const int largeScreenMaxWidth = 1440;
  static const double saveButtonSpinnerWidth = 31;
  static const double saveButtonSpinnerHeight = 18;
  static const double saveButtonSpinnerStrokeWidth = 3;
  static const int accountNameMaxLength = 50;
  static const int sicCodeMaxLength = 20;
  static const int vihbNumberMaxLength = 10;
}

abstract class HeadOfficeLayoutConstants {
  static const int selfBillingTicketAgeMinDays = 0;
  static const int selfBillingTicketAgeMaxDays = 93;
  static const int companyRegistrationNumberMaxLength = 12;
  static const int vatRegistrationMaxLength = 25;
  static const int eoriNumberMaxLength = 50;
  static const int websiteMaxLength = 100;
  static const int discountTermsMaxLength = 5;
  static const int doingBusinessAsMaxLength = 50;
  static const int creditLimitMaxLength = 10;
}
