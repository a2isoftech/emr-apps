import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/common/common.dart';
import 'package:flutter/material.dart';

class CustomSelectBox<T> extends EmrStatelessWidget {
  const CustomSelectBox({
    required this.value,
    required this.items,
    required this.sorted,
    required this.onChanged,
    super.key,
    super.label,
    this.placeholder,
    this.validator,
    this.decoration,
  });
  final T? value;
  final CustomControlItems<T> items;
  final bool sorted;
  final ChangeFunc<T>? onChanged;
  final String? placeholder;
  final ValidatorFunc<T>? validator;
  final InputDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<T>(
          hint: placeholder == null
              ? null
              : Padding(
                  padding: const EdgeInsets.only(left: Insets.gutter / 2),
                  child: Text(placeholder!),
                ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: decoration ??
              InputDecoration(
                labelText: label,
                hintText: label,
                isDense: false,
              ),
          initialValue: value,
          isExpanded: true,
          items: items.toDropdownMenuItem<dynamic, String>(
            childBuilder: (_, text) => Padding(
              padding: const EdgeInsets.only(left: Insets.gutter / 2),
              child: Text(text, overflow: TextOverflow.ellipsis),
            ),
          ),
          onChanged: onChanged,
          validator: validator,
        ),
      ],
    );
  }
}
