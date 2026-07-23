import 'package:emr_one_elv_quotes/typedefs.dart';
import 'package:flutter/material.dart';

abstract class CustomFormElementsBase<T> extends StatelessWidget {
  CustomFormElementsBase({
    required this.label,
    required this.initialValue,
    super.key,
    CrossAxisAlignment? crossAxisAlignment,
    this.constraints,
    this.onChanged,
    this.enabled,
  }) {
    _crossAxisAlignment = crossAxisAlignment;
  }
  final String label;
  final T initialValue;
  final BoxConstraints? constraints;
  late final CrossAxisAlignment? _crossAxisAlignment;
  final ChangeFunc<T>? onChanged;
  final bool? enabled;

  CrossAxisAlignment get crossAxisAlignment =>
      _crossAxisAlignment ?? CrossAxisAlignment.start;

  Color standardFillColor(BuildContext context) => (enabled ?? true)
      ? Theme.of(context).colorScheme.surface
      : Theme.of(context).colorScheme.primary.withAlpha(51);

  bool get readonly => (enabled ?? true) == false;
}
