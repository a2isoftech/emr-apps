import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class AddNewButton extends StatelessWidget {
  const AddNewButton({required this.onTap, super.key});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: Insets.gutter),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: onTap,
          child: const Icon(Icons.add, size: 32),
        ),
      ),
    );
  }
}
