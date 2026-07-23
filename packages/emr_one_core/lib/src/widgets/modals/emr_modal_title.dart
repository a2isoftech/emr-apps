import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class EmrModalTitle extends StatelessWidget {
  const EmrModalTitle({
    required this.title,
    required this.isAccepting,
    super.key,
  });

  final String title;

  final ValueNotifier<bool> isAccepting;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Insets.gutter * 3,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ColoredBox(
              color: Theme.of(context).colorScheme.onSurface,
              child: SizedBox(
                height: Insets.gutter * 3,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: Insets.gutter),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style:
                          Theme.of(context).textTheme.bodyLarge?.copyWith(
                                color: Theme.of(context).colorScheme.surface,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: Insets.gutter * 3,
            child: ColoredBox(
              color: Theme.of(context).colorScheme.onSurface,
              child: Center(
                child: ValueListenableBuilder(
                  valueListenable: isAccepting,
                  builder: (context, value, child) => IconButton(
                    icon: const Icon(Icons.close),
                    color: Theme.of(context).colorScheme.surface,
                    // an empty delegate is passed here as otherwise the
                    // default rendering would hide the X completely
                    onPressed: value == true
                        ? () {}
                        : () {
                            Navigator.of(context).pop();
                          },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
