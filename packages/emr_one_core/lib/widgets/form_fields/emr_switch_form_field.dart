import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EmrSwitchFormField extends StatelessWidget {
  EmrSwitchFormField({
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

  final String labelText;

  final ValueNotifier<bool> binding;

  final FormFieldValidator<bool>? validator;

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
      validator: (_) => validator?.call(binding.value),
      binding: binding,
      autovalidateMode: autovalidateMode,
      hasInteractedByUser: _hasInteractedByUser,
      allowedPermissions: allowedPermissions,
      builder: (_) => ListenableBuilder(
        listenable: Listenable.merge([binding, enabled]),
        builder: (_, __) {
          return Switch.adaptive(
            value: binding.value,
            onChanged: enabled.value
                ? (value) {
                    _hasInteractedByUser.value = true;

                    binding.value = !binding.value;
                  }
                : null,
          );
        },
      ),
    );
  }
}
