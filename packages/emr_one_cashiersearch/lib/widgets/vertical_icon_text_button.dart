import 'package:emr_one_cashiersearch/controllers/context_menu_controller.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class VerticalIconTextButton extends StatelessWidget {
  const VerticalIconTextButton({required this.config, super.key});
  final MenuButtonConfig config;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: config.isEnabled,
      builder: (context, isEnabled, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
          child: SizedBox(
            width: 110,
            child: TextButton(
              onPressed: isEnabled ? config.onPressed : null,
              style: Theme.of(context).textButtonTheme.style!.copyWith(
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                  ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: Insets.gutter / 2,
                children: [
                  Icon(
                    config.icon,
                    size: 22,
                  ),
                  Text(
                    config.label,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
