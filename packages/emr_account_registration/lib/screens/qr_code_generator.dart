import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class QrCodeGenerator extends StatelessWidget with FullExtent {
  final RunContext runContext;
  final JourneyController journeyController;

  final ValueNotifier<String?> accountId = ValueNotifier('');
  final ValueNotifier<String?> portalUrl = ValueNotifier('');
  final ValueNotifier<bool> isForUploadinDocOnly = ValueNotifier(false);
  final ValueNotifier<bool> isExternal = ValueNotifier(false);
  final ValueNotifier<String> purpose = ValueNotifier(QrCode.mainType);
  final ValueNotifier<String> documentPath = ValueNotifier('');
  final ValueNotifier<String> generatedCode = ValueNotifier('');

  final ValueNotifier<bool> isProcessing = ValueNotifier(false);

  @override
  bool get hideFrameworkElements => runContext.isPortal;

  QrCodeGenerator({
    super.key,
    required this.runContext,
    required this.journeyController,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(Insets.gutter),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EmrSwitchFormField(
              binding: isForUploadinDocOnly,
              labelText: context.l10n.isForUploadingDoc,
            ),
            ValueListenableBuilder<bool>(
              valueListenable: isForUploadinDocOnly,
              builder: (context, value, child) {
                _resetGeneratedCode();
                _resetIsExternal();
                return value == true
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          verticalSpacer(),
                          EmrTextFormField(
                            binding: documentPath,
                            labelText: context.l10n.docPathWithExample,
                            validator: Validators.required,
                          ),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          verticalSpacer(),
                          EmrSwitchFormField(
                            binding: isExternal,
                            labelText: context.l10n.isExternal,
                          ),
                          verticalSpacer(),
                          EmrTextFormField(
                            binding: accountId,
                            labelText: context.l10n.accountIdWithExample,
                            validator: Validators.required,
                          ),
                          verticalSpacer(),
                          EmrPickerFormField<String>(
                            items: (p0) {
                              return Future.value([
                                QrCode.mainType,
                                QrCode.signatureType,
                                QrCode.idUploadType,
                                QrCode.addressUploadType,
                              ]);
                            },
                            itemTitleText: (t) => t,
                            binding: purpose,
                            labelText: context.l10n.purpose,
                          ),
                          verticalSpacer(),
                          ValueListenableBuilder<bool>(
                            valueListenable: isExternal,
                            builder: (context, isExternalValue, child) {
                              _resetGeneratedCode();
                              return isExternalValue == true
                                  ? EmrTextFormField(
                                      binding: portalUrl,
                                      labelText:
                                          context.l10n.portalUrlWithExample,
                                      validator: Validators.required,
                                    )
                                  : Container();
                            },
                          ),
                        ],
                      );
              },
            ),
            ValueListenableBuilder<bool>(
              valueListenable: isProcessing,
              builder: (context, isProcessingValue, child) {
                return isProcessingValue == true
                    ? processingIndicator()
                    : Row(
                        children: [
                          ElevatedButton(
                            onPressed: () async {
                              await _generateQrCode(context);
                            },
                            child: Text(context.l10n.generateQrCode),
                          ),
                          horizontalSpacer(),
                          ElevatedButton(
                            onPressed: () async {
                              _resetGeneratedCode();
                            },
                            child: Text(context.l10n.resetForm),
                          ),
                        ],
                      );
              },
            ),

            verticalSpacer(),

            ValueListenableBuilder<String>(
              valueListenable: generatedCode,
              builder: (context, generatedCodeValue, child) {
                return generatedCodeValue.isNotEmpty
                    ? Column(
                        children: [
                          if (isExternal.value) ...{
                            Text(
                              context.l10n.validFor5Min,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          },
                          SizedBox(
                            height: 320,
                            width: 300,
                            child: EmrQrCode(
                              value: generatedCode.value,
                              colour: isExternal.value
                                  ? Colors.green
                                  : Colors.black,
                            ),
                          ),
                        ],
                      )
                    : Container();
              },
            ),
          ],
        ),
      ),
    );
  }

  void _resetGeneratedCode() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      generatedCode.value = '';
    });
  }

  void _resetIsExternal() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      isExternal.value = false;
    });
  }

  Future<void> _generateQrCode(BuildContext context) async {
    if (isForUploadinDocOnly.value) {
      if (documentPath.value.isEmpty) {
        await EmrModal.showMessageBar(
          context,
          context.l10n.docPathMissing,
          messageType: MessageBarTypes.error,
        );
        return;
      }
      generatedCode.value = documentPath.value;
    } else {
      if ((accountId.value ?? '').isEmpty) {
        await EmrModal.showMessageBar(
          context,
          context.l10n.accountIdMissing,
          messageType: MessageBarTypes.error,
        );
        return;
      }
      if (isExternal.value) {
        if ((portalUrl.value ?? '').isEmpty) {
          await EmrModal.showMessageBar(
            context,
            context.l10n.portalUrlMissing,
            messageType: MessageBarTypes.error,
          );
          return;
        }
        isProcessing.value = true;
        final accessCode = await journeyController.accountService
            .generateCodeForQrCode(accountId.value!);

        generatedCode.value =
            '${portalUrl.value}/qrlogin?code=$accessCode&operation=${purpose.value}';
        isProcessing.value = false;
      } else {
        generatedCode.value = '${accountId.value}|${purpose.value}';
      }
    }
  }
}
