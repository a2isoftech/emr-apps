import 'package:emr_account_registration/services/input_decoration_service.dart';
import 'package:flutter/material.dart';

class SignupDropdownField<T> extends StatelessWidget {
  const SignupDropdownField({
    required this.title,
    required this.value,
    required this.items,
    required this.isDisabled,
    this.onChanged,
    this.onSaved,
    this.validator,
    super.key,
  });
  final String title;
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?>? onChanged;
  final FormFieldSetter<T>? onSaved;
  final FormFieldValidator<T>? validator;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      initialValue: value,
      onChanged: onChanged,
      isExpanded: true,
      onSaved: onSaved,
      validator: validator,
      decoration: InputDecorationService.getDropDownInputDecoration(
        title,
        theme: Theme.of(context),
      ),
      items: items,
    );
  }
}
