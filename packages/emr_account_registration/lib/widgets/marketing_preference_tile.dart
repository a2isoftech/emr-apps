import 'package:flutter/material.dart';

class MarketingPreferenceTile extends StatelessWidget {

  const MarketingPreferenceTile({
    required this.title,
    required this.value,
    required this.isDisabled,
    required this.onChanged,
    super.key,
  });
  final String title;
  final bool value;
  final bool isDisabled;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall,
      ),
      value: value,
      onChanged: isDisabled ? null : onChanged,
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
