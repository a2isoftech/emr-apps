import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class DocumentViewDialog extends StatelessWidget {
  const DocumentViewDialog({required this.item, super.key});

  final DocumentGridItem item;

  @override
  Widget build(BuildContext context) {
    final rawUrl = item.identification.media?.sasUrl?.trim();
    final fallbackUrl = item.identification.media?.url.trim();
    final documentUrl = (rawUrl?.isNotEmpty ?? false)
        ? rawUrl!
        : (fallbackUrl?.isNotEmpty ?? false)
            ? fallbackUrl!
            : '';
    final isPdf = documentUrl.toLowerCase().contains('.pdf');

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5, // Reduced width
      height: MediaQuery.of(context).size.height * 0.6, // Reduced height
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: Center(
          child: documentUrl.isEmpty
              ? Text(context.l10n.noUploads)
              : isPdf
                  ? Icon(Icons.picture_as_pdf, size: Insets.gutter * 6,
                  color: Theme.of(context).colorScheme.tertiary)
                  : GestureDetector(
                      onTap: () => showImageViewer(context,
                      NetworkImage(documentUrl)),
                      child: Image.network(
                        documentUrl,
                        fit: BoxFit.contain,
                        errorBuilder: (_, __, ___) =>
                        Text(context.l10n.noUploads),
                      ),
                    ),
        ),
      ),
    );
  }
}
