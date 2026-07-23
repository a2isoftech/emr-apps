import 'package:flutter/material.dart';

class OverlayContextMenuController {
  final ValueNotifier<bool> isVisible = ValueNotifier(false);
  ValueNotifier<List<MenuButtonConfig>> buttons = ValueNotifier([]);

  ValueNotifier<String?> message = ValueNotifier(null);
  MessageType? type;

  void initButtons(List<MenuButtonConfig> buttonsConfigs) {
    dispose();
    buttons.value = [...buttonsConfigs];
  }

  void evaluateAllButtons() {
    for (final btn in buttons.value) {
      btn.isEnabled.value = btn.shouldEnable();
    }
  }

  void dispose() {
    for (final btn in buttons.value) {
      btn.isEnabled.dispose();
    }
  }
}

class MenuButtonConfig {
  MenuButtonConfig({
    required this.label,
    required this.icon,
    required this.onPressed,
    required this.shouldEnable,
  });
  final String label;
  final IconData icon;
  final VoidCallback onPressed;
  final bool Function() shouldEnable;

  ValueNotifier<bool> isEnabled = ValueNotifier(false);
}

enum MessageType { success, warning, info }
