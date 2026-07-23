import 'package:emr_one_can_scale/screens/can_scale_screen_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class CanScaleScreen extends StatefulWidget {
  const CanScaleScreen({
    required this.controller,
    super.key,
  });

  final CanScaleScreenController controller;

  @override
  State<CanScaleScreen> createState() => _CanScaleScreenState();
}

class _CanScaleScreenState extends State<CanScaleScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ValueListenableBuilder(
        valueListenable: widget.controller.isLoading,
        builder: (BuildContext context, value, Widget? child) {
          if (value) {
            return const CircularProgressIndicator();
          }

          return ElevatedButton(
            onPressed: () async {
              final success = await widget.controller.createTicket();

              if (!context.mounted) {
                return;
              }

              final theme = Theme.of(context);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: success
                      ? theme.colorScheme.surfaceTint
                      : theme.colorScheme.error,
                  content: Text(
                    success
                        ? context.l10n.theTicketHasBeenSentToThePrinter
                        : context.l10n.anErrorOccurredTryAgain,
                    style: EmrOneConstants.kSmallestHeadingTextStyle.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: Text(context.l10n.createTicket),
            ),
          );
        },
      ),
    );
  }
}
