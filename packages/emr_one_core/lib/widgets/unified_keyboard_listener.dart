import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UnifiedKeyboardListener extends StatefulWidget {
  const UnifiedKeyboardListener({
    required this.child,
    required this.shouldPerformAction,
    this.shortcuts,
    super.key,
  });

  final Map<Set<LogicalKeyboardKey>, VoidCallback?>? shortcuts;
  final Widget child;
  final bool Function() shouldPerformAction;

  @override
  State<UnifiedKeyboardListener> createState() =>
      _UnifiedKeyboardListenerState();
}

class _UnifiedKeyboardListenerState extends State<UnifiedKeyboardListener> {
  late final Map<Set<LogicalKeyboardKey>, VoidCallback?> _keyActions;
  final Set<LogicalKeyboardKey> _pressedKeys = {};

  @override
  void initState() {
    super.initState();
    _initializeKeyActions();
    HardwareKeyboard.instance.addHandler(_onKeyPressed);
  }

  void _initializeKeyActions() {
    _keyActions = widget.shortcuts ?? {};
  }

  @override
  void dispose() {
    HardwareKeyboard.instance.removeHandler(_onKeyPressed);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  bool _onKeyPressed(KeyEvent keyEvent) {
    if (keyEvent is KeyDownEvent) {
      _pressedKeys.add(keyEvent.logicalKey);
      if (!widget.shouldPerformAction()) {
        return false;
      }

      for (final keyCombination in _keyActions.keys) {
        if (_pressedKeys.containsAll(keyCombination)) {
          _keyActions[keyCombination]?.call();
          return true;
        }
      }

      return false;
    } else {
      _pressedKeys.remove(keyEvent.logicalKey);
    }
    return false;
  }
}
