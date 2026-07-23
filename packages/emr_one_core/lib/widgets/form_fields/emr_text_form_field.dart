import 'package:decimal/decimal.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A form field which can be bound to a String, int, double or Decimal.
class EmrTextFormField<T> extends StatefulWidget {
  EmrTextFormField({
    required this.binding,
    this.labelText = '',
    this.hintText = '',
    this.validator = Validators.none,
    ValueNotifier<bool>? enabled,
    ValueNotifier<bool>? visible,
    ValueNotifier<bool>? readOnly,
    this.maxLines = 1,
    this.autovalidateMode = AutovalidateMode.onUnfocus,
    this.allowedPermissions = const [],
    this.prefix,
    this.suffix,
    this.expands = false,
    this.textAlignVertical,
    this.textAlign = TextAlign.start,
    this.inputFormatters = const <TextInputFormatter>[],
    this.keyboardType,
    this.focusNode,
    this.obscureText = false,
    this.onFieldSubmitted,
    this.autoFocus = false,
    super.key,
  }) {
    _textFormFieldKey = key;
    this.enabled = enabled ?? ValueNotifier(true);
    this.visible = visible ?? ValueNotifier(true);
    this.readOnly = readOnly ?? ValueNotifier(false);
  }

  final String labelText;

  final String hintText;

  final ValueNotifier<T?> binding;

  final bool expands;

  final TextAlignVertical? textAlignVertical;

  final TextAlign textAlign;

  final FormFieldValidator<String?>? validator;

  late final ValueNotifier<bool> enabled;

  late final ValueNotifier<bool> visible;

  late final ValueNotifier<bool> readOnly;

  final int? maxLines;

  final AutovalidateMode? autovalidateMode;

  final List<String> allowedPermissions;

  final Widget? prefix;

  final Widget? suffix;

  late final Key? _textFormFieldKey;

  final List<TextInputFormatter> inputFormatters;

  /// The keyboard type to use when T is a String.
  final TextInputType? keyboardType;

  final FocusNode? focusNode;

  final bool obscureText;

  final bool autoFocus;

  final void Function(String)? onFieldSubmitted;

  @override
  State<EmrTextFormField<T>> createState() => _EmrTextFormFieldState<T>();
}

class _EmrTextFormFieldState<T> extends State<EmrTextFormField<T>> {
  TextInputType? _keyboardType;

  List<TextInputFormatter>? _inputFormatters;

  // Create a controller which starts with the initial value of the binding.
  late final TextEditingController _controller = TextEditingController(
    text: _formattedTextForBindingValue(),
  );

  String _formattedTextForBindingValue() {
    if (widget.binding is ValueNotifier<double?>) {
      return (widget.binding.value as double?)?.toStringForLocale(context) ??
          '';
    } else if (widget.binding is ValueNotifier<Decimal?>) {
      return (widget.binding.value as Decimal?)?.toStringForLocale(context) ??
          '';
    }

    return widget.binding.value?.toString() ?? '';
  }

  @override
  void initState() {
    super.initState();

    widget.binding.addListener(_onBindingChanged);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    switch (widget.binding) {
      case ValueNotifier<int?>():
        _keyboardType = TextInputType.number;

        _inputFormatters = [
          FilteringTextInputFormatter.digitsOnly,
          ...widget.inputFormatters,
        ];
      case ValueNotifier<double?>():
      case ValueNotifier<Decimal?>():
        _keyboardType = const TextInputType.numberWithOptions(decimal: true);

        _inputFormatters = [
          Localizations.localeOf(
            context,
          ).decimalInputFormatter(allowNegative: true),
          ...widget.inputFormatters,
        ];
      default:
        _keyboardType = widget.keyboardType ?? TextInputType.text;

        if (widget.inputFormatters.isNotEmpty) {
          _inputFormatters = widget.inputFormatters;
        }
    }
  }

  @override
  void dispose() {
    widget.binding.removeListener(_onBindingChanged);

    _controller.dispose();

    super.dispose();
  }

  /// Update the controller text when the binding value changes.
  void _onBindingChanged() {
    if (widget.binding is ValueNotifier<double?>) {
      final bindingValue = widget.binding.value as double?;

      if (_controller.text.tryParseDoubleForLocale(context) == bindingValue) {
        return;
      }

      _controller.text = bindingValue.toStringForLocale(context);
    } else if (widget.binding is ValueNotifier<Decimal?>) {
      final bindingValue = widget.binding.value as Decimal?;

      if (_controller.text.tryParseDecimalForLocale(context) == bindingValue) {
        return;
      }

      _controller.text = bindingValue.toStringForLocale(context);
    } else {
      final bindingValue = widget.binding.value?.toString() ?? '';

      if (_controller.text == bindingValue) {
        return;
      }

      _controller.text = bindingValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    final emrFormMode = EmrForm.modeOf(context);

    return EmrFormFieldLayout<String>(
      visible: widget.visible,
      labelText: widget.labelText,
      enabled: widget.enabled,
      allowedPermissions: widget.allowedPermissions,
      builder: (_) => ListenableBuilder(
        listenable: Listenable.merge([widget.enabled, widget.readOnly]),
        builder: (_, __) {
          final textFormField = TextFormField(
            key: widget._textFormFieldKey,
            controller: _controller,
            decoration: InputDecoration(
              hintText: widget.hintText,
              prefix: widget.prefix,
              suffix: widget.suffix,
              errorStyle:
                  // Hide the validation message when in grid mode.
                  emrFormMode == EmrFormMode.grid
                  ? const TextStyle(fontSize: 0)
                  : null,
            ),
            validator: widget.validator,
            autovalidateMode: widget.autovalidateMode,
            enabled: widget.enabled.value,
            readOnly: widget.readOnly.value,
            obscureText: widget.obscureText,
            autofocus: widget.autoFocus,
            maxLines: widget.maxLines,
            keyboardType: _keyboardType,
            inputFormatters: _inputFormatters,
            expands: widget.expands,
            focusNode: widget.focusNode,
            textAlignVertical: widget.textAlignVertical,
            textAlign: widget.textAlign,
            onFieldSubmitted: widget.onFieldSubmitted,
            // Update the binding value when the text changes.
            onChanged: (value) {
              if (widget.binding is ValueNotifier<int?>) {
                final parsedValue = int.tryParse(value);

                widget.binding.value = parsedValue as T?;
              } else if (widget.binding is ValueNotifier<double?>) {
                final parsedValue = value.tryParseDoubleForLocale(context);

                widget.binding.value = parsedValue as T?;
              } else if (widget.binding is ValueNotifier<Decimal?>) {
                final parsedValue = value.tryParseDecimalForLocale(context);

                widget.binding.value = parsedValue as T?;
              } else if (widget.binding is ValueNotifier<String?>) {
                widget.binding.value = value as T?;
              }
            },
          );

          if (widget.expands) {
            return SizedBox(height: 100, child: textFormField);
          }

          return textFormField;
        },
      ),
    );
  }
}
