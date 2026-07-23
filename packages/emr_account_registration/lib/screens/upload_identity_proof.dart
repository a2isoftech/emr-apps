import 'dart:io';

import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/screens/widget_catalog/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class UploadIdentityProofPage extends StatefulWidget with FullExtent {
  UploadIdentityProofPage({
    required this.journeyController,
    required this.signupModel,
    super.key,
  });

  final SignupModel signupModel;
  final JourneyController journeyController;

  @override
  bool get hideFrameworkElements => signupModel.hasPortalRunContext;

  @override
  State<UploadIdentityProofPage> createState() =>
      _UploadIdentityProofPageState();
}

class _UploadIdentityProofPageState extends State<UploadIdentityProofPage> {
  final _formKey = GlobalKey<FormState>();
  bool isQrCodeExpired = false;
  bool showUploadButtons = true;

  @override
  void initState() {
    super.initState();
    showUploadButtons = widget.signupModel.runContext.isPortal;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SignupLayout(
      runContext: widget.signupModel.runContext,
      title:
          widget.journeyController.navigationService.selectedProofPageCaption ??
          '',
      formKey: _formKey,
      onGoBack: () async {
        await widget.journeyController.uiActions.onBackFromUploadIdentityProof(
          widget.journeyController,
          widget.signupModel,
          context: context,
        );
      },
      widgets: [
        //Consumer Widget to listen for changes
        Consumer<ChangeNotifyingService>(
          builder: (context, dataBindingService, child) {
            if (isQrCodeExpired) {
              return SessionTimeoutMessage(
                title: context.l10n.sessionTimedOut,
                message: context.l10n.goBackAndTryAgain,
              );
            }
            return Column(
              children: [
                if (!widget.signupModel.runContext.isPortal) ...[
                  verticalSpacer(),
                  AccountQrCode(
                    journeyController: widget.journeyController,
                    appConfig: Provider.of<AppConfig>(context, listen: false),
                    accountCode: widget.signupModel.accountCode,
                    qrCodeType: QrCode.idUploadType,
                    onImageRetrieved: (image) {
                      showUploadButtons = true;
                      dataBindingService.notifyListenersInternal();
                    },
                    onQrCodeExpired: () async {
                      if (context.mounted) {
                        setState(() {
                          showUploadButtons = false;
                          isQrCodeExpired = true;
                        });
                        await EmrModal.showMessageBar(
                          context,
                          '${context.l10n.sessionTimedOut} ${context.l10n.goBackAndTryAgain}',
                          messageType: MessageBarTypes.error,
                        );
                      }
                    },
                  ),
                  Text(context.l10n.showUploadControls),
                  Switch.adaptive(
                    value: showUploadButtons,
                    onChanged: (value) {
                      showUploadButtons = value;
                      dataBindingService.notifyListenersInternal();
                    },
                  ),
                ],

                if (showUploadButtons) ...[
                  verticalSpacer(),
                  _displayselectedimage(context, widget.journeyController),
                  verticalSpacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: Insets.gutter,
                      right: Insets.gutter,
                    ),
                    child: ElevatedButton.icon(
                      onPressed: () async {
                        widget.journeyController.documentService.pickedFile =
                            ImagePicker()
                                .pickImage(
                                  source: ImageSource.camera,
                                  imageQuality: AccountRegistrationSettings
                                      .uploadedImageQuality,
                                  maxWidth: AccountRegistrationSettings
                                      .uploadedImageMaxWidth,
                                  maxHeight: AccountRegistrationSettings
                                      .uploadedImageMaxHeight,
                                )
                                .whenComplete(() async {
                                  widget.journeyController.documentService
                                      .setFilePicked(val: true);
                                });
                        final bytes = await widget
                            .journeyController
                            .documentService
                            .pickedFile
                            .then((value) => value!.readAsBytes());
                        await widget.journeyController.documentService
                            .setDocument(bytes, isImage: true);
                      },
                      icon: const Icon(Icons.camera_alt_outlined),
                      label: Text(context.l10n.useCamera),
                    ),
                  ),
                  verticalSpacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: Insets.gutter,
                      right: Insets.gutter,
                    ),
                    child: ElevatedButton.icon(
                      onPressed: () async {
                        widget.journeyController.documentService.pickedFile =
                            ImagePicker()
                                .pickImage(
                                  source: ImageSource.gallery,
                                  imageQuality: AccountRegistrationSettings
                                      .uploadedImageQuality,
                                  maxWidth: AccountRegistrationSettings
                                      .uploadedImageMaxWidth,
                                  maxHeight: AccountRegistrationSettings
                                      .uploadedImageMaxHeight,
                                )
                                .whenComplete(() async {
                                  widget.journeyController.documentService
                                      .setFilePicked(val: true);
                                });

                        final bytes = await widget
                            .journeyController
                            .documentService
                            .pickedFile
                            .then((value) => value!.readAsBytes());

                        await widget.journeyController.documentService
                            .setDocument(bytes, isImage: true);
                      },
                      icon: const Icon(Icons.filter),
                      label: Text(context.l10n.selectFromDevice),
                    ),
                  ),
                ],
                verticalSpacer(),
                if (widget.journeyController.isProcessing) ...{
                  processingIndicator(),
                } else ...{
                  SizedBox(
                    width: 200,
                    child: TextButton(
                      style: widget.journeyController.documentService.filePicked
                          ? EmrButtonStyles.cta()
                          : AccountRegistrationButtonStyles.disabled(theme),
                      onPressed:
                          widget.journeyController.documentService.filePicked
                          ? () async {
                              widget.journeyController.startProcessing();
                              final result = await widget
                                  .journeyController
                                  .documentService
                                  .readDocument(
                                    signupModel: widget.signupModel,
                                    documentTypeID:
                                        Enum$IdentificationType.PHOTO_ID,
                                    documentSubTypeID:
                                        widget.signupModel.proofOfIdType!,
                                    onError: (err) async {
                                      if (context.mounted) {
                                        LoggingService.logFailure(
                                          AccountRegistrationTelemetry
                                              .kGetDocumentData,
                                          err,
                                          partyAccountNo:
                                              widget.signupModel.accountCode,
                                          userId: widget.signupModel.userId,
                                        );
                                        await EmrModal.showMessageBar(
                                          context,
                                          context
                                              .l10n
                                              .errMsgDocumentCouldNotBeUploaded,
                                          messageType: MessageBarTypes.error,
                                        );
                                      }
                                    },
                                  );
                              widget.journeyController.endProcessing();
                              if (result != null ||
                                  !widget.signupModel.runContext.isPortal) {
                                await widget.journeyController.uiActions
                                    .onGoToIdentityDocumentDetails(
                                      widget.journeyController,
                                      widget.signupModel,
                                      context: context.mounted ? context : null,
                                    );
                              } else {
                                await widget.journeyController.uiActions
                                    .onDocumentOCRFailed(
                                      widget.journeyController,
                                      widget.signupModel,
                                      context: context.mounted ? context : null,
                                    );
                              }
                            }
                          : null,
                      child: Text(context.l10n.continueForm),
                    ),
                  ),
                },
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _displayselectedimage(
    BuildContext context,
    JourneyController controller,
  ) {
    Size? size;
    final media = MediaQuery.of(context);
    final isPhone =
        media.size.width < App.phoneWidthBreakpoint ||
        media.size.height < App.phoneHeightBreakpoint;
    final effectiveSize =
        size ?? (isPhone ? const Size(200, 200) : const Size(300, 300));
    return FutureBuilder<XFile?>(
      future: controller.documentService.pickedFile,
      builder: (context, snap) {
        if (snap.hasData) {
          return Padding(
            padding: const EdgeInsets.only(
              left: Insets.gutter,
              right: Insets.gutter,
              top: Insets.gutter,
            ),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () async {
                  final bytes = await snap.data!.readAsBytes();

                  if (context.mounted) {
                    _showImageDialogFromBytes(context, bytes);
                  }
                },
                child: Container(
                  width: effectiveSize.width,
                  height: effectiveSize.height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: kIsWeb
                          ? NetworkImage(snap.data!.path)
                          : FileImage(File(snap.data!.path)),
                      fit: BoxFit.fill,
                    ),
                    color: AccountRegistrationSettings.defaultuploadImageColor,
                  ),
                  child: const SizedBox.square(),
                ),
              ),
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.only(
            left: Insets.gutter,
            right: Insets.gutter,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: effectiveSize.width,
              height: effectiveSize.height,
              decoration: const BoxDecoration(
                color: AccountRegistrationSettings.defaultuploadImageColor,
              ),
              child: const SizedBox.square(),
            ),
          ),
        );
      },
    );
  }

  void _showImageDialogFromBytes(BuildContext context, Uint8List bytes) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return Dialog(
          child: InteractiveViewer(
            child: Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: Image.memory(bytes),
            ),
          ),
        );
      },
    );
  }
}
