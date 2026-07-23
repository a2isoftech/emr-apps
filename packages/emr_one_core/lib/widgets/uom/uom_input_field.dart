import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/controllers/base_settings_controller.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class UomInputField extends StatefulWidget {
  const UomInputField({
    required this.values,
    super.key,
    this.initialValue,
    this.initialUom,
    this.readOnly = false,
    this.isRate = false,
    this.onChanged,
    this.controller,
    this.isBold = false,
    this.isDense = false,
    this.hintText,
    this.labelText,
    this.validator,
    this.fillColour,
    this.filled = false,
    this.enabled = true,
    this.isNotApplicable = false,
    this.allowNegative = false,
    this.autoFocus = false,
  }) : assert(
            initialValue == null || initialUom == null,
            'Add a message like "You can only supply either '
            'initialValue or intialUom but not both at the same time."');

  factory UomInputField.fromUOMDefaults({
    required BuildContext context,
    Key? key,
    ValueUomPair? initialValue,
    Uom? initialUom,
    bool readOnly = false,
    bool isRate = false,
    ValueChanged<ValueUomPair>? onChanged,
    TextEditingController? controller,
    bool isBold = false,
    bool isDense = false,
    String? hintText,
    String? labelText,
    String? Function(String?)? validator,
    Color? fillColour,
    bool enabled = true,
    bool filled = false,
    bool isNotApplicable = false,
    bool allowNegative = false,
    bool autoFocus = false,
  }) {
    final uomService = Provider.of<UomService>(context);
    final settingsController =
        Provider.of<BaseSettingsController>(context) as SettingsController;
    return UomInputField(
      key: key,
      values: uomService.getUoms(settingsController.territory),
      initialValue: initialValue,
      initialUom: initialUom,
      readOnly: readOnly,
      isRate: isRate,
      onChanged: onChanged,
      controller: controller,
      isBold: isBold,
      isDense: isDense,
      hintText: hintText,
      labelText: labelText,
      validator: validator,
      fillColour: fillColour,
      enabled: enabled,
      filled: filled,
      isNotApplicable: isNotApplicable,
      allowNegative: allowNegative,
      autoFocus: autoFocus,
    );
  }

  final bool isRate;
  final bool readOnly;
  final bool enabled;
  final bool isDense;
  final bool filled;
  final bool autoFocus;
  final ValueChanged<ValueUomPair>? onChanged;
  final ValueUomPair? initialValue;
  final Uom? initialUom;
  final List<Uom> values;
  final TextEditingController? controller;
  final bool isBold;
  final String? hintText;
  final String? labelText;
  final String? Function(String?)? validator;
  final Color? fillColour;
  final bool isNotApplicable;
  final bool allowNegative;

  @override
  State<UomInputField> createState() => _UomInputFieldState();
}

class _UomInputFieldState extends State<UomInputField> {
  late ValueUomPair valueUomPair;
  late bool isNegative;
  late FocusNode focusNode;
  late FocusNode focusNodeListener;

  static const double kContentPadding = 4;
  static const double kPopupPadding = 8;
  static const double kUnitPaddingLeftRight = 4;
  static const double kUnitPaddingTopBottom = 2;

  @override
  void initState() {
    super.initState();

    valueUomPair = widget.initialValue ??
        ValueUomPair(
          isRate: widget.isRate,
          uom: widget.initialUom ?? widget.values.first,
        );
    isNegative = widget.allowNegative && valueUomPair.value < 0;
    focusNode = FocusNode();
    focusNodeListener = FocusNode();
  }

  @override
  void dispose() {
    focusNodeListener.dispose();
    focusNode.dispose();
    super.dispose();
  }

  void onChangedHandler() {
    if (widget.onChanged == null) {
      return;
    }

    widget.onChanged!(valueUomPair);
  }

  @override
  Widget build(BuildContext context) {
    // Use the current locale to build a regex to validate the input.
    // In EU countries this can be in the format '1,23' or '1.23' in the rest
    // of the world.
    // _decimalPattern is used to parse the input and to format the value
    // for display.
    final locale = Localizations.localeOf(context);
    final localeText = (locale.countryCode?.isEmpty ?? true)
        ? locale.languageCode
        : '${locale.languageCode}_${locale.countryCode}';
    final decimalPattern = NumberFormat.decimalPattern(localeText);

    final inputRegex =
        RegExp('^\\d*[${decimalPattern.symbols.DECIMAL_SEP}]?\\d{0,}\$');
    final textFieldDecoration = FormStyles.textFieldDecoration(context);

    if (widget.isNotApplicable) {
      return TextFormField(
        key: UniqueKey(),
        initialValue: 'N/A',
        autofocus: widget.autoFocus,
        enabled: false,
        style: TextStyle(
          color: widget.enabled
              ? Theme.of(context).colorScheme.primary
              : Colors.grey,
        ),
        decoration: textFieldDecoration.copyWith(
          isDense: widget.isDense,
          hintText: widget.hintText,
          labelText: widget.labelText,
          filled: widget.filled,
          fillColor: widget.fillColour,
          contentPadding:
              widget.isDense ? const EdgeInsets.all(kContentPadding) : null,
          enabledBorder: widget.isBold
              ? const OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 2, color: EmrColours.primaryBlue),
                )
              : null,
          suffixIcon: _getSuffixIcon(context),
          prefixIcon: _getPrefixIcon(context),
        ),
      );
    }

    return KeyboardListener(
      focusNode: focusNodeListener,
      onKeyEvent: handleOnKeyEvent,
      child: TextFormField(
        focusNode: focusNode,
        autofocus: widget.autoFocus,
        style: TextStyle(
          color: widget.enabled
              ? Theme.of(context).colorScheme.primary
              : Colors.grey,
        ),
        initialValue:
            _formattedValue(widget.initialValue?.value.abs(), decimalPattern),
        controller: widget.controller,
        readOnly: widget.readOnly,
        enabled: widget.enabled,
        decoration: textFieldDecoration.copyWith(
          isDense: widget.isDense,
          hintText: widget.hintText,
          labelText: widget.labelText,
          filled: widget.filled,
          fillColor: widget.fillColour,
          contentPadding:
              widget.isDense ? const EdgeInsets.all(kContentPadding) : null,
          enabledBorder: widget.isBold
              ? const OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 2, color: EmrColours.primaryBlue),
                )
              : null,
          suffixIcon: _getSuffixIcon(context),
          prefixIcon: _getPrefixIcon(context),
        ),
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        inputFormatters: [
          TextInputFormatter.withFunction(
            (oldValue, newValue) =>
                inputRegex.hasMatch(newValue.text) ? newValue : oldValue,
          ),
        ],
        onChanged: (value) {
          try {
            final decimalValue = decimalPattern.parse(value);

            valueUomPair.value = decimalValue * (isNegative ? -1 : 1);
          } catch (e) {
            // When the input can't be parsed, default the value to 0.
            valueUomPair.value = 0;
          }

          onChangedHandler();
        },
        validator: widget.validator,
      ),
    );
  }

  void handleOnKeyEvent(KeyEvent value) {
    if (!widget.allowNegative) return;

    if (value.character == '+') {
      isNegative = false;
      valueUomPair.value = valueUomPair.value.abs() * (isNegative ? -1 : 1);
      onChangedHandler();
    }

    if (value.character == '-') {
      isNegative = true;
      valueUomPair.value = valueUomPair.value.abs() * (isNegative ? -1 : 1);
      onChangedHandler();
    }
  }

  Widget? _getPrefixIcon(BuildContext context) {
    if (!widget.allowNegative) return null;

    return IconButton(
      icon: _getPrefixIconElement(),
      onPressed: () {
        focusNode.requestFocus();

        isNegative = !isNegative;

        valueUomPair.value = valueUomPair.value.abs() * (isNegative ? -1 : 1);
        onChangedHandler();
      },
    );
  }

  Icon _getPrefixIconElement() {
    if (isNegative) {
      return const Icon(
        Icons.remove,
        color: Color.fromARGB(99, 33, 32, 32),
      );
    } else {
      return const Icon(
        Icons.add,
        color: Color.fromARGB(99, 33, 32, 32),
      );
    }
  }

  Widget _getSuffixIcon(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Insets.gutter / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.isRate) const Text(' / '),
          PopupMenuButton(
            tooltip: '',
            enabled: widget.enabled && !widget.readOnly,
            padding: widget.isDense
                ? EdgeInsets.zero
                : const EdgeInsets.all(kPopupPadding),
            onSelected: (Uom selected) {
              focusNode.requestFocus();
              setState(() {
                valueUomPair.uom = selected;
                onChangedHandler();
              });
            },
            itemBuilder: (
              BuildContext context,
            ) =>
                widget.values
                    .map(
                      (item) => PopupMenuItem<Uom>(
                        value: item,
                        child: Text(
                          item.name.toUpperCase(),
                        ),
                      ),
                    )
                    .toList(),
            child: Container(
              padding: widget.isDense
                  ? const EdgeInsets.only(
                      left: kUnitPaddingLeftRight,
                      right: kUnitPaddingLeftRight,
                    )
                  : const EdgeInsets.only(
                      left: kUnitPaddingLeftRight,
                      right: kUnitPaddingLeftRight,
                      top: kUnitPaddingTopBottom,
                      bottom: kUnitPaddingTopBottom,
                    ),
              decoration: BoxDecoration(
                color: widget.enabled
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                borderRadius: const BorderRadius.all(
                  Radius.circular(2),
                ),
              ),
              child: Center(
                child: Text(
                  valueUomPair.uom.uomCode,
                  style: EmrOneConstants.kSmallestHeadingTextStyle
                      .copyWith(color: Theme.of(context).colorScheme.onPrimary),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Format a value for the current locale.
  String? _formattedValue(double? value, NumberFormat decimalPattern) {
    if (value == null) {
      return null;
    }

    return decimalPattern.format(value);
  }
}

Widget uomConverterButton(
  void Function() function,
) {
  return GestureDetector(
    onTap: function,
    child: Container(
      decoration: const BoxDecoration(
        color: EmrColours.primaryBlue,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      height: 30,
      width: 30,
      child: const FaIcon(
        FontAwesomeIcons.arrowRightArrowLeft,
        size: 20,
        color: Colors.white,
      ),
    ),
  );
}

Future<ValueUomPair?> showUomConverter(
  ValueUomPair uomPair,
  BuildContext context,
  String currencyCode,
  int defaultUom, {
  required bool isRate,
}) {
  final uomConverted =
      ValueUomPair(isRate: isRate, uom: uomPair.uom, value: uomPair.value);

  final uomPairController =
      TextEditingController(text: uomPair.value.toString());
  final uomConvertedController =
      TextEditingController(text: uomConverted.value.toString());
  var localUomPair = uomPair;

  return showDialog<ValueUomPair>(
    context: context,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) => AlertDialog(
        title: Text(
          isRate ? context.l10n.rateConverter : context.l10n.unitConverter,
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${localUomPair.value} ${localUomPair.uom.uomCode} '
              '${context.l10n.equals.toLowerCase()}',
              style: const TextStyle(fontSize: 12),
            ),
            Text(
              '${uomConverted.value} ${uomConverted.uom.uomCode}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: Insets.gutter,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UomInputField.fromUOMDefaults(
                  context: context,
                  controller: uomPairController,
                  isRate: localUomPair.isRate,
                  initialValue: localUomPair,
                  onChanged: (ValueUomPair value) {
                    setState(() {
                      if (isRate) {
                        final converted = convertRate(
                          localUomPair.uom,
                          uomConverted.uom,
                          value.value,
                        );

                        uomConverted.value = converted;
                      } else {
                        uomConverted.value = convertWeight(
                          localUomPair.uom,
                          uomConverted.uom,
                          value.value,
                        );
                      }

                      localUomPair.value = value.value;
                      uomConvertedController.value = TextEditingValue(
                        text: uomConverted.value.toString(),
                        selection: TextSelection.collapsed(
                          offset: uomConverted.value.toString().length - 2,
                        ),
                      );
                      uomPairController.value = TextEditingValue(
                        text: localUomPair.value.toString(),
                        selection: TextSelection.collapsed(
                          offset: localUomPair.value.toString().length - 2,
                        ),
                      );
                    });
                  },
                ),
                const SizedBox(
                  height: Insets.gutter,
                ),
                UomInputField.fromUOMDefaults(
                  context: context,
                  isBold: true,
                  controller: uomConvertedController,
                  isRate: isRate,
                  initialValue: uomConverted,
                  onChanged: (value) {
                    setState(() {
                      if (isRate) {
                        final converted = convertRate(
                          localUomPair.uom,
                          uomConverted.uom,
                          localUomPair.value,
                        );

                        uomConverted.value = converted;
                      } else {
                        uomConverted.value = convertWeight(
                          localUomPair.uom,
                          uomConverted.uom,
                          localUomPair.value,
                        );
                      }

                      uomConvertedController.value = TextEditingValue(
                        text: uomConverted.value.toString(),
                        selection: TextSelection.collapsed(
                          offset: uomConverted.value.toString().length - 2,
                        ),
                      );
                    });
                  },
                ),
              ],
            ),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(uomPair);
            },
            child: Text(context.l10n.cancel),
          ),
          ElevatedButton(
            onPressed: () {
              localUomPair = uomConverted;
              Navigator.of(context).pop(uomPair);
            },
            child: Text(context.l10n.confirm),
          ),
        ],
      ),
    ),
  );
}
