import 'package:emr_account_registration/signup.dart' as signup;
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  void goToHomeOrAlmostDone(
    signup.CustomerUserInfoService customerUserInfoService,
  ) {
    if (customerUserInfoService.userInfo.signedUp) {
      goToHome();
    } else {
      goToAlmostDone();
    }
  }

  void goToSignupSuccessful({
    required String name,
    required String countryId,
  }) {
    goNamed(
      signup.AccountRegistrationNamedRoutes.customerPortalSuccess,
      params: {
        'name': name,
        'countryId': countryId,
      },
    );
  }

  void goToSignupFailure({
    required String name,
  }) {
    goNamed(
      signup.AccountRegistrationNamedRoutes.customerPortalFailure,
      params: {
        'name': name,
      },
    );
  }

  void goToLogin() {
    goNamed(
      NamedRoutes.login,
    );
  }

  void goToCountrySelection() {
    goNamed(
      signup.AccountRegistrationNamedRoutes.customerPortalCountrySelection,
    );
  }

  void goToRegister() {
    goNamed(
      signup.AccountRegistrationNamedRoutes.customerPortalRegister,
    );
  }

  void goToHome() {
    goNamed(
      NamedRoutes.customerPortalWelcome,
    );
  }

  void goToScanTicket() {
    goNamed(
      PortalNamedRoutes.customerPortalScanTicket,
    );
  }
}
