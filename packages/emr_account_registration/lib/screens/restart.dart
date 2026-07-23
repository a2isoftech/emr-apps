import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReStart extends StatelessWidget with FullExtent {
  final RunContext runContext;
  final String emailVerificationCallbackUrl;
  final JourneyController journeyController;
  final SignupStep? currentStep;
  final ValueNotifier<String?> accountCode = ValueNotifier('');

  @override
  bool get hideFrameworkElements => runContext.isPortal;

  ReStart({
    super.key,
    required this.runContext,
    required this.emailVerificationCallbackUrl,
    required this.journeyController,
    this.currentStep,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ChangeNotifyingForRestartService>(
      builder: (context, changeNotifyingService, child) {
        return _buildUI(context, changeNotifyingService);
      },
    );
  }

  Widget _buildUI(
    BuildContext context,
    ChangeNotifyingForRestartService changeNotifyingService,
  ) {
    final formKey = GlobalKey<FormState>();

    if ((accountCode.value ?? '').isEmpty) {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.all(Insets.gutter),
            child: EmrTextFormField(
              binding: accountCode,
              labelText: context.l10n.accountCode,
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () async {
              changeNotifyingService.notifyListenersInternal();
            },
            child: Text(context.l10n.restartAccountRegistration),
          ),
        ],
      );
    }

    return FutureBuilder(
      future: journeyController.loadExisting(
        accountCode.value!,
        Localizations.localeOf(context),
        runContext,
        context,
      ),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return processingIndicator();
        }

        if (snapshot.hasError) {
          EmrModal.showMessageBar(
            context,
            context.l10n.accountLoadErrMsg,
            messageType: MessageBarTypes.error,
          );
          WidgetsBinding.instance.addPostFrameCallback((_) {
            accountCode.value = '';
            changeNotifyingService.notifyListenersInternal();
          });

          return SizedBox();
        }

        if (snapshot.hasData && snapshot.data != null) {
          final signupModel = snapshot.data!;
          if (currentStep != null) {
            signupModel.currentStep = currentStep!;
          }

          return Form(
            key: formKey,
            child: SignupStepWidget(
              journeyController: journeyController,
              signupModel: signupModel,
              emailVerificationCallbackUrl: emailVerificationCallbackUrl,
            ),
          );
        }

        return SizedBox();
      },
    );
  }
}
