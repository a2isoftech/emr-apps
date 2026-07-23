import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension ShortcutActivatorKeys on ShortcutActivator {
  Set<LogicalKeyboardKey> getKeys() {
    return switch (this) {
      SingleActivator(
        :final trigger,
        :final control,
        :final shift,
        :final alt,
        :final meta
      ) =>
        {
          trigger,
          if (control) LogicalKeyboardKey.controlLeft,
          if (shift) LogicalKeyboardKey.shiftLeft,
          if (alt) LogicalKeyboardKey.altLeft,
          if (meta) LogicalKeyboardKey.metaLeft,
        },
      CharacterActivator(:final character) => {
          LogicalKeyboardKey(character.codeUnitAt(0)),
        },
      LogicalKeySet(:final keys) => keys,
      _ => {},
    };
  }
}
