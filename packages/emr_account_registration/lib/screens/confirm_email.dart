import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConfirmEmailPage extends StatelessWidget with FullExtent {
  ConfirmEmailPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final emailLink = Uri.base.toString();
    // it might not be correct to set the controller variables here,
    // perhaps its better on a routing or middleware level,
    // or when we reroute later with `onSigningIn` below

    final firstName = Uri.base.queryParameters['firstName'] ?? '';
    final lastName = Uri.base.queryParameters['lastName'] ?? '';
    final auth = FirebaseLogin.getInstance();
    final isValidLink = auth.isSignInWithEmailLink(emailLink);

    return FutureBuilder(
      future: JourneyController.retrieveModel(),
      builder: (BuildContext ctx, AsyncSnapshot<SignupModel?> snapshot) {
        if (ConnectionState.done == snapshot.connectionState &&
            snapshot.hasData) {
          final signupModel = snapshot.data!;
          return Consumer<JourneyController>(
            builder: (context, ctrlThatListens, child) {
              var confirmEmailAddress = signupModel.emailAddress;

              final view = isValidLink
                  ? Column(
                      children: [
                        Text(
                          (signupModel.emailAddress ?? '').isNotEmpty
                              ? '${context.l10n.msgWeNeedToValidateYourEmail} '
                                    '${context.l10n.msgIftheEmailIsCorrectHitLogin} '
                                    '${context.l10n.msgIfTheEmailIsCorrect}'
                              : context.l10n.reEnterYourEmail,
                          style: theme.textTheme.labelMedium,
                        ),
                        verticalSpacer(),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              context.goToLogin();
                            },
                            child: Text(
                              context.l10n.clickHereToReturnHome,
                              style: theme.textTheme.labelSmall?.bold(),
                            ),
                          ),
                        ),
                        verticalSpacer(),
                        TextFormField(
                          decoration:
                              InputDecorationService.getTextFormFieldInputDecoration(
                                context.l10n.confirmYourEmail,
                                context.l10n.email,
                                theme: Theme.of(context),
                              ),
                          initialValue: signupModel.emailAddress,
                          validator: (val) {
                            return ValidationService.validateEmail(
                              val,
                              context,
                            );
                          },
                          onChanged: (value) {
                            confirmEmailAddress = value;
                          },
                        ),
                        const SizedBox(height: Insets.gutter),
                        SizedBox(
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () async {
                              await ctrlThatListens.loginService
                                  .completeSignInWithEmailLink(
                                    signupModel,
                                    emailLink,
                                    confirmEmailAddress,
                                    context,
                                  );

                              if (context.mounted &&
                                  ctrlThatListens.loginService.loginState(
                                        context,
                                      ) ==
                                      LoginState.loggedIn) {
                                signupModel.firstName = firstName;
                                signupModel.lastName = lastName;
                              }
                            },
                            child: Text(context.l10n.routeDisplayNameLogIn),
                          ),
                        ),
                      ],
                    )
                  : _getLinkNotFoundWidget(context);
              return Stack(
                children: [
                  SignupLayout(
                    runContext: snapshot.data!.runContext,
                    formKey: _formKey,
                    title: context.l10n.confirmYourEmail,
                    onGoBack: null,
                    widgets: [
                      if (ctrlThatListens.isProcessing) ...{
                        const WaitingIndicator(),
                      } else ...{
                        view,
                      },
                    ],
                  ),
                ],
              );
            },
          );
        } else {
          return processingIndicator();
        }
      },
    );
  }
}

Widget _getLinkNotFoundWidget(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  return SizedBox(
    width: screenWidth,
    child: Text(context.l10n.errLinkInvalid, textAlign: TextAlign.center),
  );
}
