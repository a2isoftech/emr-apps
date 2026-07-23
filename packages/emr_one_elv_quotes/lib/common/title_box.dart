import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class TitleBox extends StatelessWidget {
  const TitleBox({
    required this.child,
    this.text,
    this.color,
    this.borderColor,
    super.key,
  });

  final Widget child;
  final String? text;
  final Color? color;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            TitleBoxDecoration(
              borderColor: borderColor,
              color: color,
              constraints: constraints,
              child: child,
            ),
            if (text != null) TitleBoxHeader(text: text),
          ],
        );
      },
    );
  }
}

class TitleBoxHeader extends StatelessWidget {
  const TitleBoxHeader({
    required this.text,
    super.key,
  });

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 3,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Theme.of(context).colorScheme.surface,
            padding: const EdgeInsets.only(
              left: Insets.gutter,
              right: Insets.gutter,
            ),
            child: Text(
              text!,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleBoxDecoration extends StatelessWidget {
  const TitleBoxDecoration({
    required this.borderColor,
    required this.color,
    required this.child,
    required this.constraints,
    super.key,
  });

  final Color? borderColor;
  final Color? color;
  final Widget child;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(Insets.gutter / 2),
      padding: const EdgeInsets.all(Insets.gutter / 2),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        border: Border.all(
          color: borderColor ?? Theme.of(context).primaryColorDark,
        ),
        color: color,
      ),
      constraints: BoxConstraints(
        minWidth: constraints.maxWidth,
        maxWidth: constraints.maxWidth,
      ),
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: child,
      ),
    );
  }
}
