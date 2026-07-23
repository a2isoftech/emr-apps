import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EmrCheckboxListFormField<T> extends StatelessWidget {
  EmrCheckboxListFormField({
    required this.options,
    required this.binding,
    super.key,
    this.labelText = '',
    this.validator = Validators.none,
    ValueNotifier<bool>? enabled,
    ValueNotifier<bool>? visible,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.allowedPermissions = const [],
  }) {
    this.enabled = enabled ?? ValueNotifier(true);
    this.visible = visible ?? ValueNotifier(true);
  }

  final ValueNotifier<Map<T, String>> options;

  final ValueNotifier<List<T>> binding;

  final String labelText;

  final FormFieldValidator<List<T>?>? validator;

  late final ValueNotifier<bool> enabled;

  late final ValueNotifier<bool> visible;

  final AutovalidateMode autovalidateMode;

  final ValueNotifier<bool> _hasInteractedByUser = ValueNotifier(false);

  final List<String> allowedPermissions;

  @override
  Widget build(BuildContext context) {
    return EmrFormFieldLayout(
      visible: visible,
      labelText: labelText,
      validator: (_) => (visible.value) ? validator?.call(binding.value) : null,
      binding: binding,
      autovalidateMode: autovalidateMode,
      hasInteractedByUser: _hasInteractedByUser,
      allowedPermissions: allowedPermissions,
      builder: (_) => ListenableBuilder(
        listenable: Listenable.merge([binding, options, enabled]),
        builder: (context, _) => Column(
          children: options.value.entries
              .map(
                (entry) => CheckboxListTile.adaptive(
                  value: binding.value.contains(entry.key),
                  title: Text(entry.value),
                  onChanged: enabled.value
                      ? (_) {
                          _hasInteractedByUser.value = true;

                          // Clone the list so that the binding
                          // is updated.
                          final values = [...binding.value];

                          if (values.contains(entry.key)) {
                            values.remove(entry.key);
                          } else {
                            values.add(entry.key);
                          }

                          binding.value = values;
                        }
                      : null,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
