import 'package:flutter/material.dart';

class ElvTextButtonWidget extends StatelessWidget {
  const ElvTextButtonWidget({
    required this.label,
    required this.onPressed,
    super.key,
  });

  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
          color: Theme.of(context).colorScheme.tertiary,
        ),
      ),
    );
  }
}
