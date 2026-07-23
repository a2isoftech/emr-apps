import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_elv_core/extensions/small_screen_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VehicleDetailsTextInput extends StatefulWidget {
  const VehicleDetailsTextInput({
    required this.title,
    required this.value,
    this.onChanged,
    this.onTap,
    this.suffix,
    this.enabled = true,
    this.inputFormatter,
    super.key,
  });

  final String title;
  final void Function(String? v)? onChanged;
  final void Function()? onTap;
  final String value;
  final String? suffix;
  final bool enabled;
  final List<TextInputFormatter>? inputFormatter;

  @override
  State<VehicleDetailsTextInput> createState() =>
      _VehicleDetailsTextInputState();
}

class _VehicleDetailsTextInputState extends State<VehicleDetailsTextInput> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    if (SmallScreenCheck().isSmallScreen(context)) {
      return SizedBox(
        height: 68,
        child: _sharedLayout(context),
      );
    }

    controller.text = widget.value;
    return Expanded(child: _sharedLayout(context));
  }

  Widget _sharedLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter / 2),
      child: GestureDetector(
        onTap: widget.onTap,
        child: TextFormField(
          onChanged: widget.onChanged,
          controller: controller,
          enabled: widget.enabled,
          inputFormatters: widget.inputFormatter,
          style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
          decoration: InputDecoration(
            floatingLabelStyle:
                TextStyle(color: Theme.of(context).colorScheme.onSurface),
            labelText: widget.title,
            labelStyle:
                TextStyle(color: Theme.of(context).colorScheme.onSurface),
            hintStyle:
                TextStyle(color: Theme.of(context).colorScheme.onSurface),
            suffix: widget.suffix != null
                ? Text(
                    widget.suffix!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  )
                : null,
            filled: true,
            fillColor: widget.enabled
                ? Theme.of(context).colorScheme.surface
                : Colors.grey.withAlpha(76),
            focusedBorder: const OutlineInputBorder(),
            errorBorder: const OutlineInputBorder(),
            enabledBorder: const OutlineInputBorder(),
            disabledBorder: const OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
