import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/double_extensions.dart';
import 'package:emr_one_core/extensions/locale_extensions.dart';
import 'package:emr_one_core/extensions/string_extensions.dart';
import 'package:emr_one_core/src/widgets/uom/emr_uom_form_field_input_controller.dart';
import 'package:emr_one_core/src/widgets/uom/uom_field_dropdown.dart';
import 'package:emr_one_core/widgets/form_fields/emr_form.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// This UOM field should only be used via [EmrUomFormField].
@internal
class EmrUomFormFieldInput extends StatefulWidget {
  const EmrUomFormFieldInput({
    required this.controller,
    required this.enabled,
    required this.readOnlyValue,
    required this.readOnlyUnit,
    required this.readOnlySign,
    required this.focusNode,
    this.hintText = '',
    super.key,
    this.hasError = false,
    this.errorText,
  });

  final EmrUomFormFieldInputController controller;

  final String hintText;

  final ValueNotifier<bool> enabled;

  final ValueNotifier<bool> readOnlyValue;

  final ValueNotifier<bool> readOnlySign;

  final ValueNotifier<bool> readOnlyUnit;

  final bool hasError;

  final String? errorText;

  final FocusNode focusNode;

  @override
  State<EmrUomFormFieldInput> createState() => _EmrUomFormFieldInputState();
}

class _EmrUomFormFieldInputState extends State<EmrUomFormFieldInput> {
  final double _borderRadius = 6;

  final double _fieldHeight = 48;

  OverlayState? _overlay;

  OverlayEntry? _overlayEntry;

  final LayerLink _layerLink = LayerLink();

  List<TextInputFormatter>? _inputFormatters;

  late final _textEditingController = TextEditingController();

  bool _hovering = false;

  final FocusNode _dropDownFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_updateBorderColour);
    widget.controller.value.addListener(_valueChanged);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _overlay ??= Overlay.of(context);
    _getBorderColour(context);
    _setInputFormatterAndText();
  }

  @override
  void dispose() {
    widget.controller.value.removeListener(_valueChanged);
    _textEditingController.dispose();
    widget.focusNode.removeListener(_updateBorderColour);
    super.dispose();
  }

  void _valueChanged() {
    // Toggle the sign if it's changed.
    if (widget.controller.value.value != null) {
      if (widget.controller.value.value! < 0 &&
          widget.controller.isNegative.value == false) {
        widget.controller.isNegative.value = true;
      } else if (widget.controller.value.value! >= 0 &&
          widget.controller.isNegative.value) {
        widget.controller.isNegative.value = false;
      }
    } else {
      // Make the sign positive when the field is cleared.
      if (widget.controller.isNegative.value && !widget.readOnlySign.value) {
        widget.controller.isNegative.value = false;
      }
    }

    // Change the number field if it's changed.
    final absValue = widget.controller.value.value?.abs();
    final textValue = _textEditingController.text.tryParseDoubleForLocale(
      context,
    );

    if (textValue != absValue) {
      _textEditingController.text = absValue?.toStringForLocale(context) ?? '';
    }
  }

  // Update the input formatter with the appropriate number of decimal places
  // for the selected UOM, and format the text for the value.
  void _setInputFormatterAndText() {
    final maximumFractionDigits = widget.controller.numberOfFractionalDigits;

    _inputFormatters = [
      Localizations.localeOf(
        context,
      ).decimalInputFormatter(maximumFractionDigits: maximumFractionDigits),
    ];

    _textEditingController.text =
        widget.controller.value.value?.abs().toStringForLocale(
          context,
          maximumFractionDigits: maximumFractionDigits,
        ) ??
        '';
  }

  @override
  Widget build(BuildContext context) {
    final borderColour = widget.hasError
        ? Theme.of(context).colorScheme.error
        : _getBorderColour(context);
    final uomBorderColour = widget.hasError
        ? Theme.of(context).colorScheme.error
        : _getUomBorderColour(context);

    final border = OutlineInputBorder(
      borderSide: BorderSide(color: borderColour),
      borderRadius: .horizontal(left: .circular(_borderRadius)),
    );

    return ListenableBuilder(
      listenable: Listenable.merge([
        widget.enabled,
        widget.readOnlyValue,
        widget.readOnlyUnit,
        // This is so the input formatter is updated on the text field.
        widget.controller.uom,
      ]),
      builder: (_, __) {
        final uomEnabled = widget.enabled.value && !widget.readOnlyUnit.value;
        final emrFormMode = EmrForm.modeOf(context);
        return FocusTraversalGroup(
          policy: OrderedTraversalPolicy(),
          child: Row(
            crossAxisAlignment: .start,
            children: [
              Expanded(
                child: MouseRegion(
                  onEnter: (_) {
                    _hovering = true;
                    _updateBorderColour();
                  },
                  onExit: (_) {
                    _hovering = false;
                    _updateBorderColour();
                  },
                  child: SizedBox(
                    height: _fieldHeight,
                    child: TextFormField(
                      controller: _textEditingController,
                      focusNode: widget.focusNode,
                      enabled: widget.enabled.value,
                      readOnly: widget.readOnlyValue.value,
                      cursorColor: Theme.of(context).colorScheme.onSurface,
                      onChanged: (value) {
                        var parsedValue = value.tryParseDoubleForLocale(
                          context,
                        );
                        if (parsedValue != null) {
                          parsedValue *= widget.controller.isNegative.value
                              ? -1
                              : 1;
                        }
                        widget.controller.value.value = parsedValue;
                        widget.controller.onChanged();
                      },
                      decoration: InputDecoration(
                        hintText: widget.hintText,
                        errorText: widget.errorText,
                        prefixIcon: _getPrefixIcon(context),
                        errorStyle:
                            // Hide the validation message when
                            // in grid mode.
                            emrFormMode == EmrFormMode.grid
                            ? const TextStyle(fontSize: 0)
                            : null,
                        border: border,
                        enabledBorder: border,
                        focusedBorder: border.copyWith(
                          borderSide: BorderSide(color: borderColour, width: 2),
                        ),
                        errorBorder: border,
                        focusedErrorBorder: border,
                        disabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: .horizontal(
                            left: .circular(_borderRadius),
                          ),
                        ),
                        suffixIcon: widget.controller.isRate
                            ? const SizedBox(
                                width: 24,
                                child: Center(
                                  child: Text(
                                    ' / ',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              )
                            : null,
                      ),
                      keyboardType: const .numberWithOptions(decimal: true),
                      inputFormatters: _inputFormatters,
                    ),
                  ),
                ),
              ),
              CompositedTransformTarget(
                link: _layerLink,
                child: FocusableActionDetector(
                  focusNode: _dropDownFocusNode,
                  enabled: uomEnabled,
                  onShowHoverHighlight: (hovering) {
                    setState(() => _hovering = hovering);
                  },
                  onShowFocusHighlight: (focused) {
                    setState(() {});
                  },
                  shortcuts: const {
                    SingleActivator(LogicalKeyboardKey.enter): ActivateIntent(),
                    SingleActivator(LogicalKeyboardKey.space): ActivateIntent(),
                  },
                  actions: {
                    ActivateIntent: CallbackAction<ActivateIntent>(
                      onInvoke: (_) {
                        if (uomEnabled) {
                          _showOverlay(borderColour);
                        }
                        return null;
                      },
                    ),
                  },
                  child: GestureDetector(
                    onTap: uomEnabled ? () => _showOverlay(borderColour) : null,
                    child: Container(
                      height: _fieldHeight,
                      width: 80,
                      decoration: BoxDecoration(
                        color: _backgroundColour(),
                        border: .fromLTRB(
                          top: BorderSide(
                            color: uomBorderColour,
                            width: _dropDownFocusNode.hasFocus ? 2 : 1,
                          ),
                          right: BorderSide(
                            color: uomBorderColour,
                            width: _dropDownFocusNode.hasFocus ? 2 : 1,
                          ),
                          bottom: BorderSide(
                            color: uomBorderColour,
                            width: _dropDownFocusNode.hasFocus ? 2 : 1,
                          ),
                        ),
                        borderRadius: .only(
                          topRight: .circular(_borderRadius),
                          bottomRight: _overlayEntry == null
                              ? .circular(_borderRadius)
                              : .zero,
                        ),
                      ),
                      child: Padding(
                        padding: const .symmetric(
                          horizontal: Insets.gutter / 2,
                        ),
                        child: Row(
                          spacing: Insets.gutter / 2,
                          mainAxisAlignment: .center,
                          children: [
                            Text(
                              widget.controller.uom.value.uomCode,
                              style:
                                  (Theme.of(context).popupMenuTheme.textStyle ??
                                          Theme.of(
                                            context,
                                          ).textTheme.titleMedium)
                                      ?.copyWith(
                                        fontWeight: .bold,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.onPrimary,
                                      ),
                            ),
                            Icon(
                              _overlayEntry == null
                                  ? Icons.keyboard_arrow_down
                                  : Icons.keyboard_arrow_up,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Color _getBorderColour(BuildContext context) {
    if (!widget.focusNode.canRequestFocus) {
      return Colors.grey.shade300;
    }

    if (widget.focusNode.hasFocus) {
      return Theme.of(context).colorScheme.outline;
    }

    if (_hovering) {
      return Theme.of(context).colorScheme.outline;
    }

    return Theme.of(context).disabledColor;
  }

  Color _getUomBorderColour(BuildContext context) {
    if (!_dropDownFocusNode.canRequestFocus) {
      return Colors.grey.shade300;
    }

    if (_dropDownFocusNode.hasFocus) {
      return Theme.of(context).colorScheme.outline;
    }

    if (_hovering) {
      return Theme.of(context).colorScheme.outline;
    }

    return Theme.of(context).disabledColor;
  }

  Widget? _getPrefixIcon(BuildContext context) {
    if (widget.controller.allowNegative == false) {
      return null;
    }

    return ValueListenableBuilder(
      valueListenable: widget.controller.isNegative,
      builder: (context, isNegative, _) {
        return Container(
          width: 24,
          height: 24,
          decoration: const BoxDecoration(borderRadius: .all(.circular(8))),
          child: InkWell(
            onTap: widget.readOnlySign.value
                ? null
                : () {
                    if (!widget.readOnlyValue.value) {
                      widget.controller.toggleNegative();
                    }
                  },
            child: Center(
              child: Padding(
                padding: const .only(left: Insets.gutter / 4),
                child: Icon(
                  isNegative ? Icons.remove : Icons.add,
                  size: 24,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _showOverlay(Color borderColour) {
    if (_overlayEntry != null) return;

    _overlayEntry = _createOverlayEntry(borderColour);
    _overlay!.insert(_overlayEntry!);
    setState(() {});
  }

  void _hideOverlay({bool notify = true}) {
    _overlayEntry?.remove();
    _overlayEntry = null;

    if (mounted) {
      _dropDownFocusNode.requestFocus();
    }

    setState(() {});
  }

  OverlayEntry _createOverlayEntry(Color borderColour) {
    const verticalOffset = 46.0;

    return OverlayEntry(
      builder: (_) => Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: _hideOverlay,
              behavior: HitTestBehavior.translucent,
            ),
          ),
          Positioned(
            width: 81,
            child: CompositedTransformFollower(
              link: _layerLink,
              offset: const Offset(-1, verticalOffset),
              child: Material(
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    border: .fromLTRB(
                      left: BorderSide(color: borderColour),
                      right: BorderSide(color: borderColour),
                      bottom: BorderSide(color: borderColour),
                    ),
                    borderRadius: .vertical(bottom: .circular(_borderRadius)),
                  ),
                  child: UomFieldDropdown(
                    uoms: widget.controller.uoms,
                    onSelected: (value) {
                      _hideOverlay();
                      widget.controller.uom.value = value;
                      _setInputFormatterAndText();
                      widget.controller.onChanged();
                    },
                    backgroundColour: _backgroundColour(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _updateBorderColour() {
    setState(() {});
  }

  Color _backgroundColour() {
    final theme = Theme.of(context);
    if (widget.enabled.value == false) {
      return theme.disabledColor;
    }
    return widget.hasError
        ? theme.colorScheme.error
        : Theme.brightnessOf(context) == Brightness.light
        ? theme.colorScheme.onSurface
        : theme.colorScheme.outlineVariant;
  }
}
