import 'dart:io';

import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class DocumentPicker extends StatefulWidget {
  const DocumentPicker({
    required this.mediaService,
    required this.appConfig,
    required this.uploadPath,
    required this.type,
    this.onSuccess,
    super.key,
  });
  final MediaService mediaService;
  final AppConfig appConfig;
  final String uploadPath;
  final String type;
  final void Function()? onSuccess;

  @override
  State<DocumentPicker> createState() => _DocumentPickerState();
}

class _DocumentPickerState extends State<DocumentPicker> {
  bool filePicked = false;
  Uint8List? selectedDocument;
  bool _isProcessing = false;
  String filePath = '';
  String fileType = 'img';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final url = '${widget.appConfig.edgeMediaApiUrl}/i/${widget.uploadPath}';
    final fileName = widget.uploadPath.contains('/')
        ? widget.uploadPath.split('/').last
        : widget.type;
    return Consumer<ChangeNotifyingService>(
      builder: (context, changeNotifyingService, child) {
        return Column(
          children: [
            verticalSpacer(),
            _displayselectedimage(context, fileType, filePath),
            verticalSpacer(),
            Padding(
              padding: const EdgeInsets.only(
                left: Insets.gutter,
                right: Insets.gutter,
              ),
              child: ElevatedButton.icon(
                onPressed: () => _pickImage(
                  changeNotifyingService,
                  imageSource: ImageSource.camera,
                ),
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
                onPressed: () => _pickImage(
                  changeNotifyingService,
                  imageSource: ImageSource.gallery,
                ),

                icon: const Icon(Icons.camera_alt_outlined),
                label: Text(context.l10n.selectImage),
              ),
            ),
            verticalSpacer(),
            Padding(
              padding: const EdgeInsets.only(
                left: Insets.gutter,
                right: Insets.gutter,
              ),
              child: ElevatedButton.icon(
                onPressed: () =>
                    _pickFile(changeNotifyingService, isImage: false),
                icon: const Icon(Icons.filter),
                label: Text(context.l10n.selectFile),
              ),
            ),
            verticalSpacer(),
            if (_isProcessing) ...{
              processingIndicator(),
            } else ...{
              SizedBox(
                width: 200,
                child: TextButton(
                  style: filePicked
                      ? EmrButtonStyles.cta()
                      : AccountRegistrationButtonStyles.disabled(theme),
                  onPressed: filePicked
                      ? () async {
                          _isProcessing = true;
                          changeNotifyingService.notifyListenersInternal();

                          final result = await widget.mediaService
                              .uploadDocument(
                                mediaApiUrlWithToken: url,
                                fileName: fileName,
                                fileBytes: selectedDocument!,
                              );
                          _isProcessing = false;
                          changeNotifyingService.notifyListenersInternal();

                          if (context.mounted) {
                            if (result) {
                              await EmrModal.showMessageBar(
                                context,
                                context.l10n.documentUpdated,
                              );
                              if (widget.onSuccess != null) {
                                widget.onSuccess!.call();
                              }
                            } else {
                              await EmrModal.showMessageBar(
                                context,
                                context.l10n.documentNotUpdated,
                                messageType: MessageBarTypes.error,
                              );
                            }
                          }
                        }
                      : null,
                  child: Text(context.l10n.save),
                ),
              ),
            },
          ],
        );
      },
    );
  }

  Future<void> _pickImage(
    ChangeNotifyingService changeNotifyingService, {
    required ImageSource imageSource,
  }) async {
    final imageNull = context.l10n.imageNull;
    final XFile? result = await ImagePicker().pickImage(
      source: imageSource,
      imageQuality: AccountRegistrationSettings.uploadedImageQuality,
      maxWidth: AccountRegistrationSettings.uploadedImageMaxWidth,
      maxHeight: AccountRegistrationSettings.uploadedImageMaxHeight,
    );

    if (result == null) return;

    filePicked = true;
    fileType = 'img';

    late final Uint8List bytes;

    if (kIsWeb) {
      // Web-safe
      bytes = await result.readAsBytes();
      filePath = ''; // no real path on web
    } else {
      // Android / iOS
      if (result.path.isEmpty) {
        throw Exception(imageNull);
      }

      filePath = result.path;
      bytes = await File(result.path).readAsBytes();
    }

    await _setDocument(bytes, isImage: true);

    changeNotifyingService.notifyListenersInternal();
  }

  Future<void> _pickFile(
    ChangeNotifyingService changeNotifyingService, {
    required bool isImage,
  }) async {
    final fileBytesNull = context.l10n.fileBytesNull;
    final filePathNull = context.l10n.filePathNull;
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpeg', 'jpg', 'heic', 'pdf'],
      withData: kIsWeb,
    );

    if (result == null || result.files.isEmpty) return;

    final file = result.files.first;

    filePicked = true;
    fileType = (file.extension ?? '').toLowerCase();

    late final Uint8List bytes;

    if (kIsWeb) {
      // web : bytes come from memory
      if (file.bytes == null) {
        throw Exception(fileBytesNull);
      }

      bytes = file.bytes!;
      filePath = ''; // no real path on web
    } else {
      // Android / iOS
      if (file.path == null) {
        throw Exception(filePathNull);
      }

      filePath = file.path!;
      bytes = await File(file.path!).readAsBytes();
    }

    await _setDocument(bytes, isImage: isImage);

    changeNotifyingService.notifyListenersInternal();
  }

  Widget _displayselectedimage(
    BuildContext context,
    String fileType,
    String filePath,
  ) {
    return Padding(
      padding: const EdgeInsets.only(
        left: Insets.gutter,
        right: Insets.gutter,
        top: Insets.gutter,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: filePickedContainer(context, fileType, selectedDocument),
      ),
    );
  }

  Widget filePickedContainer(
    BuildContext context,
    String fileType,
    Uint8List? selectedDocument,
  ) {
    final effectiveSize = const Size(300, 300);

    if (selectedDocument == null) {
      return Container(
        width: effectiveSize.width,
        height: effectiveSize.height,
        decoration: const BoxDecoration(
          color: AccountRegistrationSettings.defaultuploadImageColor,
        ),
      );
    }

    // ------------------------
    // IMAGE PREVIEW
    // ------------------------
    if (fileType != 'pdf') {
      return Container(
        width: effectiveSize.width,
        height: effectiveSize.height,
        decoration: BoxDecoration(
          color: AccountRegistrationSettings.defaultuploadImageColor,
          image: DecorationImage(
            image: MemoryImage(selectedDocument),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    // ------------------------
    // PDF PREVIEW
    // ------------------------
    return Container(
      width: 400,
      height: 300,
      decoration: const BoxDecoration(
        color: AccountRegistrationSettings.defaultuploadImageColor,
      ),
      child: EmrPdfViewer(data: selectedDocument),
    );
  }

  Future<void> _setDocument(Uint8List document, {required bool isImage}) async {
    try {
      final imageCompressionSettings =
          AccountRegistrationRemoteConfigService.imageCompressionSettings;
      if (isImage &&
          document.length >
              (imageCompressionSettings['minSizeForCompression'] ?? 200000)) {
        final result = await FlutterImageCompress.compressWithList(
          document,
          minHeight: imageCompressionSettings['minHeight'] ?? 800,
          minWidth: imageCompressionSettings['minWidth'] ?? 600,
          quality: imageCompressionSettings['quality'] ?? 70,
          rotate: imageCompressionSettings['rotate'] ?? 0,
        );

        selectedDocument = result;
      } else {
        selectedDocument = document;
      }
    } catch (ex) {
      selectedDocument = document;
      LoggingService.logFailure(
        AccountRegistrationTelemetry.kCompressImage,
        ex,
      );
    }
  }
}
