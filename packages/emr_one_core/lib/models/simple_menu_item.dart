import 'package:flutter/material.dart';

class SimpleMenuItem {
  SimpleMenuItem(
    this.name,
    this.icon,
    this.function,
  );

  final String name;
  final IconData icon;
  final void Function()? function;
}
