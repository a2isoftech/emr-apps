import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class FeedbackBar extends StatelessWidget {
  const FeedbackBar({
    required this.message,
    required this.showMessage,
    required this.feedbackType,
    super.key,
  });

  final String message;
  final bool showMessage;
  final FeedbackType feedbackType;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return showMessage
        ? Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: AnimatedOpacity(
              // If the widget is visible, animate to 0.0 (invisible).
              // If the widget is hidden, animate to 1.0 (fully visible).
              opacity: showMessage ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              // The green box must be a child of the AnimatedOpacity widget.
              child: Container(
                color: feedbackType == FeedbackType.error
                    ? Colors.red
                    : Colors.green,
                padding: const EdgeInsets.all(Insets.gutter),
                child: Wrap(
                  children: [
                    Text(
                      message,
                      style: theme.textTheme.labelMedium!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : Container();
  }
}

enum FeedbackType { success, error }
