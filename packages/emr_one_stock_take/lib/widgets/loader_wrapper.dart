import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class LoaderWrapper extends StatelessWidget {
  const LoaderWrapper({
    required this.showLoader,
    required this.child,
    super.key,
  });
  final Signal<bool> showLoader;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Positioned.fill(child: child),
        if (showLoader.watch(context))
          Opacity(
            opacity: 0.8,
            child: ModalBarrier(
              dismissible: false,
              color: theme.colorScheme.outlineVariant,
            ),
          ),
        if (showLoader.watch(context))
          Center(
            child: _defaultLoadingIndicator(context, theme),
          ),
      ],
    );
  }

  SizedBox _defaultLoadingIndicator(BuildContext context, ThemeData theme) {
    return SizedBox(
      width: 160,
      height: 120,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius:
              const BorderRadius.all(Radius.circular(Insets.gutter / 4)),
          border: Border.fromBorderSide(
            BorderSide(color: theme.colorScheme.outlineVariant),
          ),
        ),
        child: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
