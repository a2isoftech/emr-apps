import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class StandardDialogBody extends StatelessWidget {
  factory StandardDialogBody({required Widget child}) {
    return StandardDialogBody._internal(child);
  }

  const StandardDialogBody._internal(
    this._child,
  );
  final Widget _child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        Insets.gutter,
        Insets.gutter / 2,
        Insets.gutter,
        Insets.gutter,
      ),
      child: _child,
    );
  }
}
