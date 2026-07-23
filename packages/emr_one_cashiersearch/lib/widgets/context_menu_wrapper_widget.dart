import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_cashiersearch/common/colors.dart';
import 'package:emr_one_cashiersearch/controllers/controllers.dart';
import 'package:emr_one_cashiersearch/widgets/vertical_icon_text_button.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ContextMenuWrapperWidget extends StatelessWidget {
  const ContextMenuWrapperWidget({
    required this.child,
    required this.overlayController,
    this.menuEndPosition = 0,
    super.key,
  });
  final Widget child;
  final OverlayContextMenuController overlayController;
  final double menuEndPosition;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [child, contextMenu(context)],
    );
  }

  Widget bottomSheetActionList(ThemeData theme, BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(Insets.gutter / 2),
        decoration: BoxDecoration(
          color: theme.colorScheme.outlineVariant,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(Insets.gutter),
            topRight: Radius.circular(Insets.gutter),
          ),
        ),
        child: Column(
          children: [
            ValueListenableBuilder(
              valueListenable: overlayController.message,
              builder: (context, message, child) {
                return messageWidget(theme);
              },
            ),
            ValueListenableBuilder(
              valueListenable: overlayController.buttons,
              builder: (context, value, child) {
                return Wrap(
                  spacing: Insets.gutter / 4,
                  children: overlayController.buttons.value
                          .map(
                            (config) => VerticalIconTextButton(config: config),
                          )
                          .toList() ,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget messageWidget(ThemeData theme) {
    return ValueListenableBuilder(
      valueListenable: overlayController.message,
      builder: (context, message, child) {
        if (message == null) return const SizedBox.shrink();
        return Padding(
          padding: const EdgeInsets.only(bottom: Insets.gutter),
          child: Container(
            decoration: BoxDecoration(
              color: _getChipBackground(
                context,
                overlayController.type,
              ),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.16),
                  blurRadius: Insets.gutter / 4,
                  spreadRadius: Insets.gutter / 8,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Insets.gutter / 2,
                vertical: Insets.gutter / 4,
              ),
              child: Text(
                message,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: _getChipForeground(
                        context,
                        overlayController.type,
                      ),
                    ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget contextMenu(BuildContext context) {
    final theme = Theme.of(context);
    if (!kIsWeb) {
      overlayController.isVisible.addListener(() async {
        if (overlayController.isVisible.value) {
          await showModalBottomSheet<void>(
            context: context,
            builder: (context) {
              return bottomSheetActionList(theme, context);
            },
          );
        }
      });

      return Container();
    }

    return ValueListenableBuilder<bool>(
      valueListenable: overlayController.isVisible,
      builder: (context, isVisible, _) {
        if (!isVisible) return const SizedBox.shrink();
        return Positioned(
          left: 0,
          right: 0,
          bottom: menuEndPosition,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              messageWidget(theme),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: isVisible ? 1.0 : 0.0,
                curve: Curves.easeInOut,
                child: Container(
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onTertiary,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(Insets.gutter),
                      topRight: Radius.circular(Insets.gutter),
                    ),
                    border: Border(
                      left: BorderSide(
                        color: theme.colorScheme.tertiary,
                        width: Insets.gutter / 4,
                      ),
                      top: BorderSide(
                        color: theme.colorScheme.tertiary,
                        width: Insets.gutter / 4,
                      ),
                      right: BorderSide(
                        color: theme.colorScheme.tertiary,
                        width: Insets.gutter / 4,
                      ),
                    ),
                  ),
                  child: ValueListenableBuilder(
                    valueListenable: overlayController.buttons,
                    builder: (context, value, child) {
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        spacing: Insets.gutter / 4,
                        children: overlayController.buttons.value
                            .map(
                              (config) =>
                                  VerticalIconTextButton(config: config),
                            )
                            .toList(),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Color _getChipBackground(BuildContext context, MessageType? type) =>
      switch (type) {
        MessageType.success => CashierSearchColors.plasticPines,
        MessageType.warning => EmrColours.secondaryYellow,
        _ => Theme.of(context).colorScheme.tertiary,
      };

  Color _getChipForeground(BuildContext context, MessageType? type) =>
      switch (type) {
        MessageType.success => Theme.of(context).colorScheme.onPrimary,
        MessageType.warning => Theme.of(context).colorScheme.onPrimary,
        _ => Theme.of(context).colorScheme.onTertiary,
      };
}
