import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

enum EmrButtonGroupFormFieldMode { single, multiple }

class EmrButtonGroupFormField<T> extends StatelessWidget {
  EmrButtonGroupFormField({
    required this.options,
    required this.binding,
    super.key,
    this.mode = EmrButtonGroupFormFieldMode.single,
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

  final EmrButtonGroupFormFieldMode mode;

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
      builder: (field) {
        return ListenableBuilder(
          listenable: Listenable.merge([binding, options, enabled]),
          builder: (context, _) {
            final theme = Theme.of(context);

            return Row(
              children: [
                Wrap(
                  spacing: Insets.gutter,
                  runSpacing: Insets.gutter,
                  children: options.value.entries
                      .map(
                        (entry) => OutlinedButton.icon(
                          onPressed: enabled.value
                              ? () {
                                  _hasInteractedByUser.value = true;

                                  if (mode ==
                                      EmrButtonGroupFormFieldMode.single) {
                                    binding.value = [entry.key];
                                  } else {
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
                                }
                              : null,
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.resolveWith((
                              states,
                            ) {
                              return (binding.value.contains(entry.key))
                                  ? theme.colorScheme.primary
                                  : theme.colorScheme.surface;
                            }),
                            side: field.hasError
                                ? WidgetStateProperty.resolveWith(
                                    (states) => BorderSide(
                                      color: theme.colorScheme.error,
                                    ),
                                  )
                                : null,
                          ),
                          icon: Icon(
                            (binding.value.contains(entry.key))
                                ? Icons.check
                                : Icons.close,
                            color: (binding.value.contains(entry.key))
                                ? theme.colorScheme.onPrimary
                                : theme.colorScheme.onSurface,
                          ),
                          label: Text(
                            entry.value,
                            style: TextStyle(
                              color: (binding.value.contains(entry.key))
                                  ? theme.colorScheme.onPrimary
                                  : theme.colorScheme.onSurface,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
