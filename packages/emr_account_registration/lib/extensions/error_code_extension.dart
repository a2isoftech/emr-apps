import 'package:emr_account_registration/services/account_registration_remote_config_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

extension ErrorCodeExtension on String? {
  String getErrorLocalizedErrorMessage(BuildContext context) {
    switch (this) {
      case '101':
        return context.l10n.duplicatePortalAccount;
      default:
        return AccountRegistrationRemoteConfigService.errorCodes[this] ??
            this ??
            '';
    }
  }
}
