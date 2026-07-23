import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class QrCodeScanner extends StatelessWidget with FullExtent {
  final RunContext runContext;
  final JourneyController journeyController;

  @override
  bool get hideFrameworkElements => runContext.isPortal;

  QrCodeScanner({
    super.key,
    required this.runContext,
    required this.journeyController,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final formKey = GlobalKey<FormState>();

    String? scannedData;
    bool isScanning = false;

    return Consumer<ChangeNotifyingForRestartService>(
      builder: (context, changeNotifyingService, child) {
        final scanningResult = _parse(scannedData, isScanning: isScanning);
        if (scanningResult.hasScannedData) {
          // qr code was internal and for an account code and operation
          if (!scanningResult.isExternal &&
              !scanningResult.uploadDocumentOnly) {
            return FutureBuilder(
              future: journeyController.loadExisting(
                scanningResult.accountCode,
                Localizations.localeOf(context),
                runContext,
                context,
              ),
              builder:
                  (BuildContext ctx, AsyncSnapshot<SignupModel?> snapshot) {
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

                      if (scanningResult.operation == QrCode.signatureType) {
                        return UpdateSignature(
                          signupModel: signupModel,
                          journeyController: journeyController,
                        );
                      } else if (scanningResult.operation == QrCode.mainType) {
                        signupModel.currentStep = SignupStep.almostDone;
                      } else if (scanningResult.operation ==
                          QrCode.idUploadType) {
                        signupModel.currentStep =
                            SignupStep.selectIdentityProofType;
                      } else if (scanningResult.operation ==
                          QrCode.addressUploadType) {
                        signupModel.currentStep =
                            SignupStep.selectAddressProofType;
                      }

                      return Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        key: formKey,
                        onChanged: () => {},
                        child: SignupStepWidget(
                          journeyController: journeyController,
                          signupModel: signupModel,
                          emailVerificationCallbackUrl: '',
                        ),
                      );
                    } else {
                      return processingIndicator();
                    }
                  },
            );
          } else if (scanningResult.isExternal) {
            return FutureBuilder(
              future: _openLink(scanningResult.externalLink),
              builder: (BuildContext ctx, AsyncSnapshot<bool> snapshot) {
                if (ConnectionState.done == snapshot.connectionState) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    scannedData = '';
                    isScanning = false;
                    changeNotifyingService.notifyListenersInternal();
                  });

                  return Container();
                } else {
                  return processingIndicator();
                }
              },
            );
          } else if (scanningResult.uploadDocumentOnly) {
            return Center(
              child: Padding(
                padding: EdgeInsets.all(Insets.gutter),
                child: Text(
                  '${context.l10n.uploadDocumentIdentificationHeader} : ${scanningResult.documentPath}',
                ),
              ),
            );
          }
        }
        return Center(
          child: Padding(
            padding: EdgeInsets.all(Insets.gutter),
            child: ScanQrCodeWidget(
              onStartScan: () {
                isScanning = true;
                changeNotifyingService.notifyListenersInternal();
              },
              onScanned: (val) {
                scannedData = val.rawValue ?? '';
                isScanning = false;
                changeNotifyingService.notifyListenersInternal();
              },
              onEndScan: () {
                isScanning = false;
                changeNotifyingService.notifyListenersInternal();
              },
              isScanning: isScanning,
              scannedData: scannedData,
            ),
          ),
        );
      },
    );
  }

  Future<bool> _openLink(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode:
            LaunchMode.externalApplication, // Opens in browser (mobile/desktop)
        webOnlyWindowName: '_blank', // 👈 opens in new tab for web
      );
      return true;
    }
    return false;
  }

  ScanningResult _parse(String? scannedData, {required bool isScanning}) {
    if (isScanning == false && (scannedData ?? '').isNotEmpty) {
      // scanned data is available

      // check if its an external link e.g. https://portal-dev.emrgroup.com/qrlogin?code=sjjsjsjhjjh&operation=main
      if (scannedData!.startsWith('http://') ||
          scannedData.startsWith('https://')) {
        return ScanningResult(
          hasScannedData: true,
          isExternal: true,
          uploadDocumentOnly: false,
          externalLink: scannedData,
          documentPath: '',
          accountCode: '',
          operation: '',
        );
      } else if (!scannedData.contains('|')) {
        // there is no | in the scanned data, which means its a document path to uppload to media api
        return ScanningResult(
          hasScannedData: true,
          isExternal: false,
          uploadDocumentOnly: true,
          externalLink: '',
          documentPath: scannedData,
          accountCode: '',
          operation: '',
        );
      } else {
        final accountId = scannedData.split('|').first;
        final operation = scannedData.split('|').last;
        final accountCode = accountId.contains('/')
            ? accountId.split('/').last
            : accountId;
        return ScanningResult(
          hasScannedData: true,
          isExternal: false,
          uploadDocumentOnly: false,
          externalLink: '',
          documentPath: '',
          accountCode: accountCode,
          operation: operation,
        );
      }
    } else {
      return ScanningResult(
        hasScannedData: false,
        isExternal: false,
        uploadDocumentOnly: false,
        externalLink: '',
        documentPath: '',
        accountCode: '',
        operation: '',
      );
    }
  }
}
