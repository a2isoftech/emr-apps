import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/common/standard_emr_control.dart';
import 'package:flutter/material.dart';

class ElvTextField extends StatefulWidget {
  const ElvTextField({
    required this.label,
    this.controller,
    this.onChanged,
    this.value,
    this.onFieldSubmitted,
    this.enabled = true,
    this.validator,
    super.key,
  });

  final void Function(String)? onFieldSubmitted;
  final String label;
  final String? value;
  final void Function(String?)? onChanged;
  final TextEditingController? controller;
  final bool enabled;
  final ValidatorFunc<String>? validator;

  @override
  State<ElvTextField> createState() => _ElvTextFieldState();
}

class _ElvTextFieldState extends State<ElvTextField> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = widget.controller ?? TextEditingController();
    if (widget.value != null) {
      controller.text = widget.value!;
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: TextFormField(
        controller: widget.controller,
        onFieldSubmitted: widget.onFieldSubmitted,
        enabled: widget.enabled,
        validator: widget.validator,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          label: Text(
            widget.label,
          ),
          contentPadding: const EdgeInsets.all(
            Insets.gutter / 2,
          ),
          fillColor: Theme.of(context).colorScheme.surface,
        ),
        autofocus: true,
      ),
    );
  }
}
