import 'package:dotted_border/dotted_border.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/upload_party_document.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatelessWidget {
  const ImagePickerWidget({
    required this.imageUploadNotifier,
    required this.onFileUpload,
    required this.isFileValid,
    required this.hasError,
    required this.onError,
    super.key,
  });

  final void Function(DocumentModel) onFileUpload;
  final ValueNotifier<Uint8List?> imageUploadNotifier;
  final ValueNotifier<bool> isFileValid;
  final bool hasError;
  final void Function(String)? onError;

  @override
  Widget build(BuildContext context) {
    const errorColor = Color(0xffB00020);
    return Column(
      children: [
        GestureDetector(
          onTap: () async {
            if (!kIsWeb) {
              await showDialog<SimpleDialog>(
                context: context,
                builder: (ctx) => SimpleDialog(
                  title: const Text('Choose one'),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: Insets.gutter,
                        right: Insets.gutter,
                      ),
                      child: ElevatedButton.icon(
                        onPressed: () async {
                          await _pickImageFromGallery();
                          if (ctx.mounted) Navigator.of(ctx).pop();
                        },
                        icon: const Icon(Icons.photo),
                        label: const Text('Gallery'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: Insets.gutter,
                        right: Insets.gutter,
                      ),
                      child: ElevatedButton.icon(
                        onPressed: () async {
                          await _pickImageFromCamera();
                          if (ctx.mounted) Navigator.of(ctx).pop();
                        },
                        icon: const Icon(Icons.camera),
                        label: const Text('Camera'),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              await _pickImageFromGallery();
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: double.infinity,
              height: 300,
              child: ValueListenableBuilder(
                valueListenable: isFileValid,
                builder: (context, fileValid, child) {
                  return DottedBorder(
                    color: fileValid ? Colors.black : errorColor,
                    borderType: BorderType.RRect,
                    strokeWidth: 2,
                    radius: const Radius.circular(10),
                    dashPattern: const [8, 4],
                    padding: EdgeInsets.zero,
                    child: Center(
                      child: ValueListenableBuilder(
                        valueListenable: imageUploadNotifier,
                        builder: (context, value, child) {
                          if (value == null) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.upload_file,
                                  size: 75,
                                  color: fileValid ? Colors.black : errorColor,
                                ),
                                Text(
                                  'Choose File to upload',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color:
                                        fileValid ? Colors.black : errorColor,
                                  ),
                                ),
                                if (hasError) ...[
                                  const SizedBox(
                                    height: Insets.gutter,
                                  ),
                                  Text(
                                    'Please upload the party document',
                                    style: TextStyle(
                                      fontSize: Insets.gutter - 2,
                                      color:
                                          fileValid ? Colors.black : errorColor,
                                    ),
                                  ),
                                ],
                              ],
                            );
                          } else {
                            return Image.memory(value);
                          }
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        ValueListenableBuilder(
          valueListenable: isFileValid,
          builder: (context, value, child) {
            return Container(
              margin: const EdgeInsets.only(
                left: Insets.gutter,
                bottom: Insets.gutter,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                context.l10n.partyDocumentUploadHint,
                style: TextStyle(
                  color: (value ? Colors.black : errorColor),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Future<void> _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage == null) return;

    final mime = returnedImage.name.split('.').last.toLowerCase();
    if (!['jpg', 'jpeg', 'png'].contains(mime)) {
      if (onError != null) {
        onError!.call('Not a valid file');
      }
      return;
    }

    final data = await returnedImage.readAsBytes();
    onFileUpload(
      DocumentModel(
        fileBytes: data,
        fileName: returnedImage.name,
      ),
    );
    imageUploadNotifier.value = data;
  }

  Future<void> _pickImageFromCamera() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (returnedImage == null) return;
    final data = await returnedImage.readAsBytes();
    onFileUpload(
      DocumentModel(
        fileBytes: data,
        fileName: returnedImage.name,
      ),
    );
    imageUploadNotifier.value = data;
  }
}
