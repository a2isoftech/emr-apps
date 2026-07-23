import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/uom/emr_uom_form_field_input.dart';
import 'package:emr_one_core/src/widgets/uom/emr_uom_form_field_input_controller.dart';
import 'package:emr_one_core/src/widgets/widgets.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum EmrUomPriceableElement {
  unknown,
  haulageRate,
  costRate,
  commodityRate,
  commodityWeight,
}

class EmrUomFormField extends StatefulWidget {
  EmrUomFormField({
    required this.binding,
    super.key,
    this.labelText = '',
    this.hintText = '',
    this.validator = Validators.none,
    ValueNotifier<bool>? enabled,
    ValueNotifier<bool>? visible,
    ValueNotifier<bool>? readOnlySign,
    ValueNotifier<bool>? readOnlyValue,
    ValueNotifier<bool>? readOnlyUnit,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.allowedPermissions = const [],
    this.priceableElement = EmrUomPriceableElement.commodityWeight,
    this.allowNegative = false,
    this.defaultUom,
    this.uomList = const [],
  }) {
    this.enabled = enabled ?? ValueNotifier(true);
    this.visible = visible ?? ValueNotifier(true);
    this.readOnlySign = readOnlySign ?? ValueNotifier(false);
    this.readOnlyValue = readOnlyValue ?? ValueNotifier(false);
    this.readOnlyUnit = readOnlyUnit ?? ValueNotifier(false);
  }

  final String labelText;

  final String hintText;

  final ValueNotifier<UomValue?> binding;

  final FormFieldValidator<dynamic>? validator;

  late final ValueNotifier<bool> enabled;

  late final ValueNotifier<bool> visible;

  late final ValueNotifier<bool> readOnlySign;

  late final ValueNotifier<bool> readOnlyValue;

  late final ValueNotifier<bool> readOnlyUnit;

  final AutovalidateMode autovalidateMode;

  final List<String> allowedPermissions;

  final bool allowNegative;

  final EmrUomPriceableElement priceableElement;

  final Uom? defaultUom;

  final List<Uom> uomList;

  @override
  State<EmrUomFormField> createState() => _EmrUomFormFieldState();
}

class _EmrUomFormFieldState extends State<EmrUomFormField> {
  late final List<Uom> _uoms;

  late final EmrUomFormFieldInputController _controller;

  final FocusNode _focusNode = FocusNode();

  bool hasErrors = false;

  @override
  void initState() {
    super.initState();
    // Get the UOMs for the current territory.
    // TODO: This will change in the future to use priceableElement as well.
    final uomService = context.read<UomService>();
    _uoms = widget.uomList.isEmpty
        ? uomService.getUoms(
            (context.read<BaseSettingsController>() as SettingsController)
                .territory,
          )
        : widget.uomList;

    _controller = EmrUomFormFieldInputController(
      uoms: _uoms,
      isRate: widget.priceableElement != EmrUomPriceableElement.commodityWeight,
      allowNegative: widget.allowNegative,
      value: ValueNotifier<double?>(widget.binding.value?.value),
      uom: ValueNotifier<Uom>(
        widget.binding.value?.uom ?? widget.defaultUom ?? _uoms.first,
      ),
      onChanged: _onFieldChanged,
    );

    widget.binding.addListener(_onBindingChanged);
  }

  @override
  void dispose() {
    widget.binding.removeListener(_onBindingChanged);

    _focusNode.dispose();

    super.dispose();
  }

  /// Update the UOM input field when the binding value changes.
  /// These checks here that the value/UOM have actually changed
  /// allow us to break out when the field changes (which triggers a binding
  /// update), so we don't end up in an infinite loop!
  void _onBindingChanged() {
    final bindingValue = widget.binding.value?.value;
    final value = _controller.value.value;

    final bindingUom = widget.binding.value?.uom;
    final uom = _controller.uom.value;

    if (bindingValue != value) {
      _controller.value.value = bindingValue;
    }

    if ((bindingUom?.uomId ?? _uoms.first) != uom.uomId) {
      _controller.uom.value = bindingUom ?? widget.defaultUom ?? _uoms.first;
    }
  }

  // Update the binding value when the field changes.
  void _onFieldChanged() {
    final uomValue = _controller.getUomValue();

    if (widget.binding.value.toString() != uomValue.toString()) {
      widget.binding.value = uomValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return EmrFormFieldLayout(
      validator: (_) => widget.visible.value
          ? widget.validator?.call(widget.binding.value?.toString())
          : null,
      autovalidateMode: widget.autovalidateMode,
      visible: widget.visible,
      labelText: widget.labelText,
      binding: widget.binding,
      allowedPermissions: widget.allowedPermissions,
      builder: (formField) => ValueListenableBuilder<UomValue?>(
        valueListenable: widget.binding,
        builder: (_, _, _) {
          return EmrUomFormFieldInput(
            controller: _controller,
            hintText: widget.hintText,
            enabled: widget.enabled,
            readOnlyValue: widget.readOnlyValue,
            readOnlyUnit: widget.readOnlyUnit,
            readOnlySign: widget.readOnlySign,
            hasError: formField.hasError,
            focusNode: _focusNode,
          );
        },
      ),
    );
  }
}
