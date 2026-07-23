import 'dart:io';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SignatureDialog extends StatefulWidget {
  const SignatureDialog({
    required this.selectedImageNotifier,
    required this.loading,
    super.key,
  });
  final ValueNotifier<XFile?> selectedImageNotifier;
  final ValueNotifier<bool> loading;

  @override
  State<SignatureDialog> createState() => _SignatureDialogState();
}

class _SignatureDialogState extends State<SignatureDialog> {
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final picked = await _picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 600,
    );
    if (picked != null) {
      widget.selectedImageNotifier.value = picked;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 600,
      child: ValueListenableBuilder(
        valueListenable: widget.loading,
        builder: (context, loading, child) {
          if (loading) {
            return const Center(child: CircularProgressIndicator());
          }
          return Column(
            mainAxisAlignment: .center,
            children: [
              ValueListenableBuilder<XFile?>(
                valueListenable: widget.selectedImageNotifier,
                builder: (_, XFile? image, __) {
                  if (image == null) {
                    return ElevatedButton(
                      onPressed: _pickImage,
                      child: const Text('Add Signature'),
                    );
                  } else {
                    return Column(
                      children: [
                        if (kIsWeb)
                          Image.network(image.path, width: 200)
                        else
                          Image.file(File(image.path), width: 200),
                        const SizedBox(height: Insets.gutter / 2),
                        ElevatedButton(
                          onPressed: _pickImage,
                          child: const Text('Change Signature'),
                        ),
                      ],
                    );
                  }
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
