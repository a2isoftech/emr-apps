import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  void goToTriage() {
    goNamed(AccountRegistrationNamedRoutes.customerPortalTriage);
  }

  void goToContactInfo() {
    if (mounted) {
      goNamed(NamedRoutes.customerPortalContactInfo);
    }
  }

  void goToMarketingPrefs() {
    goNamed(NamedRoutes.customerPortalMarketingPrefs);
  }

  void goToAlmostDone() {
    goNamed(AccountRegistrationNamedRoutes.customerPortalAlmostDone);
  }

  void goToIdentityProof() {
    goNamed(AccountRegistrationNamedRoutes.customerPortalIdentityProof);
  }

  void goToDocumentDetails({required String name}) {
    goNamed(
      AccountRegistrationNamedRoutes.customerPortalDocumentDetails,
      params: {'proofName': name},
    );
  }

  void goToAddressProof() {
    goNamed(AccountRegistrationNamedRoutes.customerPortalAddressProof);
  }

  void goToResetRegistration() {
    goNamed(AccountRegistrationNamedRoutes.customerPortalResetRegister);
  }

  void goToPaymentDetails() {
    goNamed(AccountRegistrationNamedRoutes.customerPortalPaymentDetails);
  }

  void goToSignupSuccessful({required String name, required String countryId}) {
    goNamed(
      AccountRegistrationNamedRoutes.customerPortalSuccess,
      params: {'name': name, 'countryId': countryId},
    );
  }

  void goToSignupFailure({required String name}) {
    goNamed(
      AccountRegistrationNamedRoutes.customerPortalFailure,
      params: {'name': name},
    );
  }

  void goToHome() {
    goNamed(NamedRoutes.customerPortalWelcome);
  }

  void goToLogin() {
    goNamed(NamedRoutes.login);
  }

  void goToCountrySelection() {
    goNamed(AccountRegistrationNamedRoutes.customerPortalCountrySelection);
  }

  void goToRegister() {
    goNamed(AccountRegistrationNamedRoutes.customerPortalRegister);
  }

  double screenWidth() => MediaQuery.of(this).size.width;
  double screenHeight() => MediaQuery.of(this).size.height;

  double qrCodeHeight() =>
      (screenWidth() < screenHeight() ? screenWidth() : screenHeight()) -
      Insets.gutter;

  (bool, bool) getScreenFacts() {
    final windowType = getWindowType(this);
    final isPhone = windowType < EmrOneConstants.appDefaultSizeBreakpoint;
    final isNotDesktop =
        windowType < EmrOneConstants.appDefaultLargeSizeBreakpoint;
    return (isPhone, isNotDesktop);
  }

  bool isInPortraitMode() => screenHeight() > screenWidth();
}
