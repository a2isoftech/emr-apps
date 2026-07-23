import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class DismantlingSearchInput extends StatefulWidget {
  const DismantlingSearchInput({
    required this.searchVehicles,
    required this.onSearchTextChanged,
    required this.searching,
    super.key,
  });

  final void Function() searchVehicles;
  final void Function(String) onSearchTextChanged;
  final bool searching;

  @override
  State<DismantlingSearchInput> createState() => _DismantlingSearchInputState();
}

class _DismantlingSearchInputState extends State<DismantlingSearchInput> {
  @override
  Widget build(BuildContext context) {
    final vehicleSearchController = TextEditingController();
    return TextField(
      controller: vehicleSearchController,
      onChanged: widget.onSearchTextChanged,
      onSubmitted: (v) => widget.searchVehicles(),
      autocorrect: false,
      decoration: InputDecoration(
        label: Text('${context.l10n.search}...'),
        isDense: false,
        suffixIcon: widget.searching
            ? const Padding(
                padding: EdgeInsets.all(Insets.gutter),
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(),
                ),
              )
            : null,
      ),
    );
  }
}
