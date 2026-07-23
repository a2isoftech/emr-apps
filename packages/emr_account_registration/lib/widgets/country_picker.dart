import 'package:collection/collection.dart';
import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class CountryPicker extends StatefulWidget {
  const CountryPicker({
    required this.countries,
    required this.onChanged,
    required this.disable,
    this.initialValue,
    this.showFullName = false,
    this.isIsPortraitMode = false,
    super.key,
  });

  final void Function(CountryData?) onChanged;
  final bool disable;
  final bool showFullName;
  final String? initialValue;
  final List<CountryData> countries;
  final bool isIsPortraitMode;

  @override
  State<CountryPicker> createState() => _CountryPickerState();
}

class _CountryPickerState extends State<CountryPicker> {
  late List<DropdownMenuItem<CountryData>> _dropdownMenuItems;
  late CountryData _selectedCountry;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(
      widget.countries,
      isInPortaitMode: widget.isIsPortraitMode,
    );
    final selectedCountry = widget.countries.firstWhereOrNull(
      (element) => element.shortName == widget.initialValue,
    );
    _selectedCountry = selectedCountry ?? _dropdownMenuItems[0].value!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: _selectedCountry,
        items: _dropdownMenuItems,
        onChanged: widget.disable ? null : onChangeDropdownItem,
      ),
    );
  }

  void onChangeDropdownItem(CountryData? selectedCompany) {
    setState(() {
      _selectedCountry = selectedCompany!;
    });

    widget.onChanged(selectedCompany);
  }

  List<DropdownMenuItem<CountryData>> buildDropdownMenuItems(
    List<CountryData> counties, {
    required bool isInPortaitMode,
  }) {
    final items = <DropdownMenuItem<CountryData>>[];
    for (final country in counties) {
      items.add(
        DropdownMenuItem(
          value: country,
          child: Padding(
            padding: isInPortaitMode
                ? EdgeInsets.zero
                : const EdgeInsets.all(Insets.gutter / 2),
            child: Row(
              children: [
                if (country.images.isNotEmpty)
                  Image.asset(
                    country.images,
                    package: 'emr_account_registration',
                    width: isInPortaitMode ? 20 : 30,
                    height: isInPortaitMode ? 10 : 15,
                  ),
                Padding(
                  padding: isInPortaitMode
                      ? const EdgeInsets.only(left: Insets.gutter / 4)
                      : const EdgeInsets.only(left: Insets.gutter / 2),
                  child: Text(
                    widget.showFullName
                        ? country.fullName
                        : country.dialingCode.isNotEmpty
                        ? '${country.shortName} (${country.dialingCode})'
                        : country.shortName,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return items;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
