import 'package:flutter/material.dart';

class LinkText extends StatelessWidget {
  const LinkText({
    required this.label,
    super.key,
    this.labelDefaultStyle,
    this.onTap,
  });

  final String label;
  final TextStyle? labelDefaultStyle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          label,
          style: (labelDefaultStyle ?? Theme.of(context).textTheme.titleSmall!)
              .copyWith(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
        ),
      ),
    );
  }
}
