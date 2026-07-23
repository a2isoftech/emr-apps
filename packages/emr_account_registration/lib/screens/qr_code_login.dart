import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class QrLoginPage extends StatefulWidget with FullExtent {
  final JourneyController journeyController;
  const QrLoginPage({
    super.key,
    required this.appConfig,
    required this.journeyController,
    this.code,
    this.operation,
  });

  final AppConfig appConfig;
  final String? code;
  final String? operation;

  @override
  State<QrLoginPage> createState() => _QrLoginPageState();
}

class _QrLoginPageState extends State<QrLoginPage> {
  String? code;
  String? operation;

  @override
  void initState() {
    super.initState();
    final uri = Uri.base;
    code = widget.code ?? uri.queryParameters['code'];
    operation = widget.operation ?? uri.queryParameters['operation'];
  }

  Future<SignupModel?> _handleQrLogin(String? code) async {
    try {
      final exceptionMsg = context.mounted ? context.l10n.loginFailed : '';

      // 1) Exchange the one-time code for a Firebase custom token
      final uri = Uri.parse(
        '${widget.appConfig.primaryApiUrl}/accounts/token/exchange?code=$code',
      );
      final res = await http.get(
        uri,
        headers: {'Content-Type': 'application/json'},
      );

      if (res.statusCode != 200) {
        throw Exception('$exceptionMsg - (${res.statusCode}): ${res.body}');
      }

      final data = res.body.replaceAll('"', '');

      final customToken = data;

      // 2) Sign in with Firebase using the custom token
      await FirebaseAuth.instance.signInWithCustomToken(customToken);

      if (!context.mounted) return null;

      final account = await widget.journeyController.loadExisting(
        '',
        // ignore: use_build_context_synchronously
        Localizations.localeOf(context),
        RunContext.portalQrLogin,
        // ignore: use_build_context_synchronously
        context,
      );

      return account;
    } catch (e) {
      LoggingService.logToConsole(e.toString());
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final formKey = GlobalKey<FormState>();

    final body = FutureBuilder(
      future: _handleQrLogin(code),
      builder: (BuildContext ctx, AsyncSnapshot<SignupModel?> snapshot) {
        if (ConnectionState.done == snapshot.connectionState) {
          if (snapshot.data == null) {
            return Center(
              child: Text(
                context.l10n.invalidLink,
                style: theme.textTheme.headlineMedium,
              ),
            );
          }

          final signupModel = snapshot.data!;

          //TODOL change this to enum

          if (operation == QrCode.signatureType) {
            return UpdateSignature(
              signupModel: signupModel,
              journeyController: widget.journeyController,
            );
          } else if (operation == QrCode.mainType) {
            signupModel.currentStep = SignupStep.almostDone;
          } else if (operation == QrCode.idUploadType) {
            signupModel.currentStep = SignupStep.selectIdentityProofType;
          } else if (operation == QrCode.addressUploadType) {
            signupModel.currentStep = SignupStep.selectAddressProofType;
          }

          return Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formKey,
            onChanged: () => {},
            child: SignupStepWidget(
              journeyController: widget.journeyController,
              signupModel: signupModel,
              emailVerificationCallbackUrl: '',
            ),
          );
        } else {
          return processingIndicator();
        }
      },
    );

    return Scaffold(body: Center(child: body));
  }
}
