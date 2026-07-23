import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class SummarySectionWrapper extends StatelessWidget {
  const SummarySectionWrapper({
    required this.body,
    this.title,
    this.backgroundColour,
    this.hideTitle = false,
    this.onEditButtonPressed,
    super.key,
  });

  final String? title;
  final Widget body;
  final Color? backgroundColour;
  final bool hideTitle;
  final void Function()? onEditButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!hideTitle)
          SizedBox(
            height: Insets.gutter * 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: Insets.gutter / 2,
                    top: Insets.gutter / 2,
                  ),
                  child: Text(
                    title ?? '',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                if (onEditButtonPressed != null)
                  IconButton(
                    onPressed: onEditButtonPressed,
                    icon: const Icon(Icons.edit),
                  ),
              ],
            ),
          ),
        if (hideTitle && onEditButtonPressed != null)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: onEditButtonPressed,
                icon: const Icon(Icons.edit),
              ),
            ],
          ),
        Padding(
          padding: const EdgeInsets.all(
            Insets.gutter / 2,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: backgroundColour,
              border: Border.all(
                color:
                    backgroundColour ?? Theme.of(context).colorScheme.onSurface,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(Insets.gutter / 2),
              child: body,
            ),
          ),
        ),
      ],
    );
  }
}
