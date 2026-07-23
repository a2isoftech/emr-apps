import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:flutter/material.dart';

/// A reusable modal widget with a title, close button, and Cancel/Save buttons.
class AppModal extends StatelessWidget {
  const AppModal({
    required this.title,
    required this.content,
    this.height,
    this.width,
    super.key,
    this.onClose,
  });
  final String title;
  final Widget content;
  final double? height;
  final double? width;
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(
        horizontal: Insets.gutter,
        vertical: Insets.gutter,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Insets.gutter / 4),
      ),
      child: Container(
        color: Theme.of(context).colorScheme.surface,
        height: height,
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Top row with title and close button.
            SizedBox(
              height: Insets.gutter * 3,
              child: Row(
                children: [
                  Expanded(
                    child: ColoredBox(
                      color: Theme.of(context).brightness == Brightness.light
                          ? TransportAppColors.darkBg
                          : Theme.of(context).colorScheme.onSurface,
                      child: SizedBox(
                        height: Insets.gutter * 3,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: Insets.gutter),
                            child: Text(
                              title,
                              textAlign: TextAlign.center,
                              style: EmrOneConstants.kOpenSans16BoldTextStyle
                                  .copyWith(
                                color: Theme.of(context).colorScheme.surface,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Insets.gutter * 3,
                    child: ColoredBox(
                      color: Theme.of(context).colorScheme.onSurface,
                      child: Center(
                        child: IconButton(
                          icon: const Icon(Icons.close),
                          color: Theme.of(context).colorScheme.surface,
                          onPressed:
                              onClose ?? () => Navigator.of(context).pop(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: Insets.gutter / 2),
            // Modal content.
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(Insets.gutter),
                child: content,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
