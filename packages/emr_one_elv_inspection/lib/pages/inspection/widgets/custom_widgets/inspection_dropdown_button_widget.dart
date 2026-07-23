import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:flutter/material.dart';

class InspectionDropDownButton<TItem> extends StatelessWidget {
  InspectionDropDownButton({
    required this.onChanged,
    super.key,
    this.header,
    this.placeholder,
    this.items,
    this.validator,
    TItem? selectedItem,
  }) : selectedValueNotifier = ValueNotifier(selectedItem);
  final void Function(TItem?)? onChanged;
  final String? header;
  final String? placeholder;
  final List<DropdownMenuItem<TItem>>? items;
  final String? Function(TItem?)? validator;
  final ValueNotifier<TItem?> selectedValueNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedValueNotifier,
      builder: (context, value, child) {
        return DropdownButtonFormField(
          iconSize: 0,
          initialValue: value,
          items: items,
          validator: validator,
          onChanged: (selectedItem) {
            selectedValueNotifier.value = selectedItem;
            if (onChanged == null) {
              return;
            }
            onChanged!.call(selectedItem);
          },
          decoration: InputDecoration(
            labelText: header,
            labelStyle: Theme.of(context).textTheme.labelMedium,
            hintText: placeholder,
            hintStyle: Theme.of(context).textTheme.labelMedium,
            suffixIcon: value == null
                ? null
                : IconButton(
                    onPressed: () {
                      selectedValueNotifier.value = null;
                      if (onChanged == null) {
                        return;
                      }
                      onChanged!.call(null);
                    },
                    icon: const Icon(
                      Icons.cancel_outlined,
                    ),
                  ),
            isDense: true,
            counterText: '',
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: EmrColours.secondaryGrey,
              ),
            ),
          ),
        );
      },
    );
  }
}
