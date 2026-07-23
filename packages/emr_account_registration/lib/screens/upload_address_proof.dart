import 'dart:typed_data';

import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/screens/widget_catalog/app.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class UploadAddressProofPage extends StatefulWidget with FullExtent {
  UploadAddressProofPage({
    required this.journeyController,
    required this.signupModel,
    super.key,
  });

  final SignupModel signupModel;
  final JourneyController journeyController;

  @override
  bool get hideFrameworkElements => signupModel.hasPortalRunContext;

  @override
  State<UploadAddressProofPage> createState() => _UploadAddressProofPageState();
}

class _UploadAddressProofPageState extends State<UploadAddressProofPage> {
  final _formKey = GlobalKey<FormState>();

  bool showUploadButtons = true;
  bool isCamera = false;
  bool isQrCodeExpired = false;

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
        await widget.journeyController.uiActions.onBackFromUploadAddressProof(
          widget.journeyController,
          widget.signupModel,
          context: context,
        );
      },
      widgets: [
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
                    qrCodeType: QrCode.addressUploadType,
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
                  _displaySelectedImage(
                    context,
                    widget.journeyController,
                    isCamera,
                  ),
                  verticalSpacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: Insets.gutter,
                      right: Insets.gutter,
                    ),
                    child: ElevatedButton.icon(
                      onPressed: () async {
                        isCamera = true;
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
                                .whenComplete(
                                  () => widget.journeyController.documentService
                                      .setFilePicked(val: true),
                                );

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
                        isCamera = false;
                        widget
                            .journeyController
                            .documentService
                            .addressProofPickedFile = FilePicker.platform
                            .pickFiles(
                              type: FileType.custom,
                              allowedExtensions: ['jpeg', 'jpg', 'heic', 'pdf'],
                            )
                            .whenComplete(
                              () => widget.journeyController.documentService
                                  .setFilePicked(val: true),
                            );
                        final file = await widget
                            .journeyController
                            .documentService
                            .addressProofPickedFile
                            .then((value) => value!.files.first);
                        final bytes = file.bytes;
                        await widget.journeyController.documentService
                            .setDocument(
                              bytes!,
                              isImage: !(file.extension ?? '').contains('pdf'),
                            );
                        if ((file.extension ?? '').isNotEmpty) {
                          widget.journeyController.documentService.fileType =
                              file.extension!;
                        }
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
                                        Enum$IdentificationType.ADDRESS_ID,
                                    documentSubTypeID:
                                        widget.signupModel.proofOfAddressType!,
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
                              if (result == null && context.mounted) {
                                await EmrModal.showMessageBar(
                                  context,
                                  context.l10n.errMsgDocumentCouldNotBeUploaded,
                                  messageType: MessageBarTypes.error,
                                );
                              }

                              await widget.journeyController.uiActions
                                  .onGoToAddressDocumentDetails(
                                    widget.journeyController,
                                    widget.signupModel,
                                    context: context.mounted ? context : null,
                                  );
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

  Widget _displaySelectedImage(
    BuildContext context,
    JourneyController controller,
    bool isCamera,
  ) {
    if (isCamera) {
      return FutureBuilder<XFile?>(
        future: controller.documentService.pickedFile,
        builder: (context, snap) {
          return Padding(
            padding: const EdgeInsets.only(
              left: Insets.gutter,
              right: Insets.gutter,
              top: Insets.gutter,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: snap.hasData
                  ? MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () async {
                          final bytes = await snap.data!.readAsBytes();
                          if (context.mounted) {
                            _showImageDialogFromBytes(context, bytes);
                          }
                        },
                        child: cameraImageContainer(context, snap),
                      ),
                    )
                  : cameraImageContainer(context, snap),
            ),
          );
        },
      );
    } else {
      return FutureBuilder<FilePickerResult?>(
        future: controller.documentService.addressProofPickedFile,
        builder: (context, snap) {
          return Padding(
            padding: const EdgeInsets.only(
              left: Insets.gutter,
              right: Insets.gutter,
              top: Insets.gutter,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: snap.hasData && snap.data!.files.first.extension != 'pdf'
                  ? MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          _showImageDialogFromBytes(
                            context,
                            snap.data!.files.first.bytes!,
                          );
                        },
                        child: filePickedContainer(context, snap),
                      ),
                    )
                  : filePickedContainer(context, snap),
            ),
          );
        },
      );
    }
  }

  Widget cameraImageContainer(
    BuildContext context,
    AsyncSnapshot<XFile?> snap,
  ) {
    Size? size;
    final media = MediaQuery.of(context);
    final isPhone =
        media.size.width < App.phoneWidthBreakpoint ||
        media.size.height < App.phoneHeightBreakpoint;
    final effectiveSize =
        size ?? (isPhone ? const Size(200, 200) : const Size(300, 300));
    if (snap.hasData) {
      return Container(
        width: effectiveSize.width,
        height: effectiveSize.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(snap.data!.path),
            fit: BoxFit.fill,
          ),
          color: AccountRegistrationSettings.defaultuploadImageColor,
        ),
        child: const SizedBox.square(),
      );
    } else {
      return Container(
        width: effectiveSize.width,
        height: effectiveSize.height,
        decoration: const BoxDecoration(
          color: AccountRegistrationSettings.defaultuploadImageColor,
        ),
        child: const SizedBox.square(),
      );
    }
  }

  Widget filePickedContainer(
    BuildContext context,
    AsyncSnapshot<FilePickerResult?> snap,
  ) {
    Size? size;
    final media = MediaQuery.of(context);
    final isPhone =
        media.size.width < App.phoneWidthBreakpoint ||
        media.size.height < App.phoneHeightBreakpoint;
    final effectiveSize =
        size ?? (isPhone ? const Size(200, 200) : const Size(300, 300));

    if (snap.hasData) {
      if (snap.data!.files.first.extension != 'pdf' &&
          widget.journeyController.documentService.fileType != 'pdf') {
        return Container(
          width: effectiveSize.width,
          height: effectiveSize.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: MemoryImage(snap.data!.files.first.bytes!),
              fit: BoxFit.fill,
            ),
            color: AccountRegistrationSettings.defaultuploadImageColor,
          ),
          child: const SizedBox.square(),
        );
      } else {
        return Container(
          decoration: const BoxDecoration(
            color: AccountRegistrationSettings.defaultuploadImageColor,
          ),
          width: 400,
          height: 300,
          child: SizedBox.square(
            child: EmrPdfViewer(data: snap.data!.files.first.bytes),
          ),
        );
      }
    }

    return Container(
      width: effectiveSize.width,
      height: effectiveSize.height,
      decoration: const BoxDecoration(
        color: AccountRegistrationSettings.defaultuploadImageColor,
      ),
      child: const SizedBox.square(),
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
