import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

class LoginService {
  final JourneyController journeyController;

  String? phoneVerificationCode;
  static ConfirmationResult? phoneConfirmationResult;

  LoginService({required this.journeyController});

  void setPhoneVerificationCode(String code) {
    phoneVerificationCode = code;
    journeyController.changeNotifyingService.notifyListenersInternal();
  }

  Future<void> beginSignInWithPhoneNumber(
    SignupModel signupModel,
    BuildContext context,
  ) async {
    final BaseLoginController loginController =
        Provider.of<BaseLoginController>(context, listen: false);
    journeyController.startProcessing();
    loginController.state = LoginState.busy;
    final phoneNumberValue = signupModel.phoneNumber!.replaceAll('-', '');
    phoneConfirmationResult =
        await FirebaseLogin.beginSignInWithPhoneNumber(
          (signupModel.dialingCode ?? '') + phoneNumberValue,
        ).catchError((Object e) {
          if (e is FirebaseAuthException) {
            const uuid = Uuid();
            LoggingService.logFailure(
              'BeginSignIn',
              Exception('${uuid.v4()} - ${e.message}'),
            );

            if (context.mounted) {
              EmrModal.showMessageBar(
                context,
                e.message ?? context.l10n.loginFailed,
                messageType: MessageBarTypes.error,
              );
            }
          }

          loginController.state = LoginState.loggedOut;
          journeyController.endProcessing();
          throw Exception(e);
        });

    if ((phoneConfirmationResult?.verificationId ?? '').isNotEmpty) {
      loginController.state = LoginState.completePhoneLogIn;
    }

    journeyController.endProcessing();
  }

  Future<void> completeSignInWithPhoneNumber(
    SignupModel signupModel,
    BuildContext context,
    void Function() onSuccess,
  ) async {
    final BaseLoginController loginController =
        Provider.of<BaseLoginController>(context, listen: false);
    loginController.state = LoginState.busy;
    await FirebaseLogin.completeSignInWithPhoneNumber(
      phoneConfirmationResult!,
      phoneVerificationCode!,
    ).catchError((Object e) {
      loginController.state = LoginState.completePhoneLogIn;

      if (context.mounted) {
        EmrModal.showMessageBar(
          context,
          context.l10n.enterVerificationCode,
          messageType: MessageBarTypes.error,
        );
      }

      journeyController.notifyListenersInternal();

      throw Exception(e);
    });

    loginController.state = LoginState.loggedIn;

    await _postLoggedIn(signupModel, context.mounted ? context : null);
  }

  LoginState loginState(BuildContext context) =>
      Provider.of<BaseLoginController>(context, listen: false).state;

  Future<void> beginSignInWithEmailLink(
    SignupModel signupModel,
    BuildContext context,
    String callbackUrl, {
    String? firstName,
    String? lastName,
    String? languageCode,
  }) async {
    final BaseLoginController loginController =
        Provider.of<BaseLoginController>(context, listen: false);
    loginController.state = LoginState.busy;

    final queryParameters = {
      'firstName': firstName ?? '',
      'lastName': lastName ?? '',
    };
    final encodedUrl = _emailCallBackUrl(callbackUrl, queryParameters);
    journeyController.notifyListenersInternal();

    await FirebaseLogin.beginSignEmailLink(
      signupModel.emailAddress!,
      encodedUrl,
      languageCode!,
    ).catchError((Object e) {
      loginController.state = LoginState.loggedOut;

      journeyController.notifyListenersInternal();
      throw Exception(e);
    });

    loginController.state = LoginState.completeEmailLinkLogIn;
  }

  Future<void> _postLoggedIn(
    SignupModel signupModel,
    BuildContext? context,
  ) async {
    var userInfo =
        (await journeyController.accountService.userInfoService.getUserInfo())
            as AccountUserInfo?;

    userInfo ??=
        journeyController.accountService.userInfoService.userInfoNullable;

    final signedUp = userInfo?.signedUp ?? false;

    final isProspect = userInfo?.isProspect ?? false;

    if (signedUp) {
      await JourneyController.resetModel();
      if (context != null && context.mounted) {
        context.goToHome();
      }
    } else if (isProspect) {
      await JourneyController.resetModel();
      if (context != null && context.mounted) {
        context.goToAlmostDone();
      }
    } else {
      signupModel.currentStep = SignupStep.contactInfo;
      await JourneyController.saveModel(signupModel);
      if (context != null && context.mounted) {
        context.goToContactInfo();
      }
    }
  }

  Future<void> completeSignInWithEmailLink(
    SignupModel signupModel,
    String emailLink,
    String? confirmEmailAddress,
    BuildContext context,
  ) async {
    final BaseLoginController loginController =
        Provider.of<BaseLoginController>(context, listen: false);
    loginController.state = LoginState.busy;
    await FirebaseLogin.completeSignInWithEmailLink(
      confirmEmailAddress!,
      emailLink,
    ).catchError((Object e) {
      loginController.state = LoginState.completeEmailLinkLogIn;

      if (context.mounted) {
        EmrModal.showMessageBar(
          context,
          context.l10n.enterValidEmailAddress,
          messageType: MessageBarTypes.error,
        );
      }

      journeyController.notifyListenersInternal();
      throw Exception(e);
    });

    loginController.state = LoginState.loggedIn;

    await _postLoggedIn(signupModel, context.mounted ? context : null);
  }

  String _emailCallBackUrl(
    String baseUrl,
    Map<String, String> queryParameters,
  ) {
    // parse base url, copy to new uri proper encoding
    final uri = Uri.parse(baseUrl);
    final callbackUri = Uri(
      scheme: uri.scheme,
      host: uri.host,
      port: uri.port,
      path: uri.path,
      fragment: uri.fragment,
      queryParameters: queryParameters,
    );
    return callbackUri.toString();
  }

  Future<void> onSigningIn({
    required void Function() onAccountNotSignedUp,
    required void Function() onAccountIsProspect,
    required void Function() onAccountIsRetail,
  }) async {
    if (journeyController.accountService.userInfoService.userInfo.signedUp) {
      if (journeyController
          .accountService
          .userInfoService
          .userInfo
          .isProspect) {
        onAccountIsProspect();
      } else {
        onAccountIsRetail();
      }
    } else {
      onAccountNotSignedUp();
    }
  }
}
