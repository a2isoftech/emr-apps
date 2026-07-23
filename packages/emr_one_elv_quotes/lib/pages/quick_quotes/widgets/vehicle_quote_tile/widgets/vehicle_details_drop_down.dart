import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_elv_core/extensions/small_screen_check.dart';
import 'package:flutter/material.dart';

class VehicleDetailsDropDown<T> extends StatelessWidget {
  const VehicleDetailsDropDown({
    required this.items,
    required this.value,
    required this.title,
    required this.onChanged,
    super.key,
  });

  final List<DropdownMenuItem<T>> items;
  final T value;
  final String title;
  final void Function(T?)? onChanged;

  @override
  Widget build(BuildContext context) {
    if (SmallScreenCheck().isSmallScreen(context)) {
      return SizedBox(
        height: 68,
        child: _sharedLayout(context),
      );
    }

    return Expanded(child: _sharedLayout(context));
  }

  Widget _sharedLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter / 2),
      child: DropdownButtonFormField<T>(
        items: items,
        initialValue: value,
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: title,
          filled: true,
          fillColor: Theme.of(context).colorScheme.surface,
          errorBorder: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
