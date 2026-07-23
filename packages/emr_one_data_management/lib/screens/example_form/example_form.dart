import 'dart:async';

import 'package:cross_file/cross_file.dart';
import 'package:decimal/decimal.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExampleForm extends StatefulWidget {
  const ExampleForm({super.key});

  @override
  State<ExampleForm> createState() => _ExampleFormState();
}

class _ExampleFormState extends State<ExampleForm> {
  final GlobalKey<FormState> _form1Key = GlobalKey<FormState>();

  final _model = ExampleFormData(
    isOn: false,
    firstName: 'Alex',
    lastName: 'Taylor',
    favouriteColour: 'Green',
    dateOfBirth: DateTime(1979, 6, 29),
    rate: UomValue.rate(123.45, Uom.kg),
    decimalNumber: Decimal.parse('1.23'),
    territories: [const Territory('A11', 'UK', [])],
  );

  final ValueNotifier<bool> _readOnly = ValueNotifier(false);

  final ValueNotifier<bool> _enabled = ValueNotifier(true);

  late final AsyncValidator<String> _exampleAsyncValidator = AsyncValidator(
    context,
    binding: _model.valid,
    onChange: (formFieldKey, value) async {
      // Simulate calling an API.
      await Future.delayed(const Duration(seconds: 10), () {});

      return AsyncValidatorResult(
        message: value == 'valid' ? null : 'Type the word "valid"',
      );
    },
  );

  @override
  void dispose() {
    _exampleAsyncValidator.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: _form()),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: Insets.gutter),
                child: ColoredBox(
                  color: theme.canvasColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EmrSwitchFormField(
                        labelText: 'Locked',
                        binding: _model.locked,
                      ),
                      Wrap(
                        spacing: Insets.gutter,
                        runSpacing: Insets.gutter,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              _model
                                ..isOn.value = false
                                ..firstName.value = 'Alex'
                                ..lastName.value = 'Taylor'
                                ..favouriteColour.value = 'Green'
                                ..dateOfBirth.value = DateTime(1979, 6, 29)
                                ..notes.value = 'This is a note'
                                ..wholeNumber.value = 42
                                ..decimalNumber.value = Decimal.parse('1.23')
                                ..rate.value = UomValue.rate(123.45, Uom.kg)
                                ..territories.value = [
                                  const Territory('A11', 'UK', []),
                                ]
                                ..file.value = null;
                            },
                            child: const Text('Alex'),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              _model
                                ..isOn.value = true
                                ..firstName.value = 'Sam'
                                ..lastName.value = 'Young'
                                ..favouriteColour.value = 'Purple'
                                ..dateOfBirth.value = null
                                ..notes.value = null
                                ..wholeNumber.value = null
                                ..decimalNumber.value = null
                                ..rate.value = null
                                ..territories.value = [
                                  const Territory('A42', 'USA', []),
                                ]
                                ..file.value = null;
                            },
                            child: const Text('Sam'),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              _model.favouriteColour.value = 'Blue';
                            },
                            child: const Text('Blue'),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              _enabled.value = !_enabled.value;
                            },
                            child: const Text('Toggle enabled'),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              _readOnly.value = !_readOnly.value;
                            },
                            child: const Text('Toggle readonly'),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              _model.dateOfBirth.value = DateTime(2000, 11, 10);
                            },
                            child: const Text('10 Nov 2000'),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              _model.rate.value = UomValue.rate(70, Uom.kg);
                            },
                            child: const Text('70 / KG'),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              _model.rate.value = UomValue.rate(
                                1234.56,
                                Uom.ea,
                              );
                            },
                            child: const Text('1234.56 / EA'),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              _model.rate.value = UomValue.rate(-5, Uom.mt);
                            },
                            child: const Text('-5 / MT'),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              _model.rate.value = null;
                            },
                            child: const Text('Clear UOM field'),
                          ),
                          OutlinedButton(
                            onPressed: _model.reset,
                            child: const Text('Clear model'),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: Insets.gutter),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: Insets.gutter * 2,
                                ),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: ListenableBuilder(
                                    listenable: Listenable.merge([
                                      _model.isOn,
                                      _model.firstName,
                                      _model.lastName,
                                      _model.favouriteColour,
                                      _model.dateOfBirth,
                                      _model.notes,
                                      _model.wholeNumber,
                                      _model.decimalNumber,
                                      _model.rate,
                                      _model.selectedOption,
                                      _model.selectedOptions,
                                      _model.territories,
                                      _model.file,
                                      _model.valid,
                                      _model.cardNumber,
                                    ]),
                                    builder: (_, __) {
                                      return Text(_model.toJson());
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _form() {
    return Form(
      // autovalidateMode: AutovalidateMode.always,
      key: _form1Key,
      child: SingleChildScrollView(
        child: ValueListenableBuilder(
          valueListenable: _model.locked,
          builder: (_, locked, _) {
            final allowedPermissions = [
              if (locked) 'permissionThatDoesntExist',
            ];

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Switch
                EmrSwitchFormField(
                  labelText: 'Show the rest of the form',
                  binding: _model.isOn,
                  validator: Validators.required,
                  enabled: _enabled,
                  allowedPermissions: allowedPermissions,
                ),
                // Button Group (single)
                EmrButtonGroupFormField(
                  visible: _model.isOn,
                  labelText: 'Button Group (single)',
                  binding: _model.selectedOptions,
                  validator: Validators.required,
                  enabled: _enabled,
                  options: _options,
                  allowedPermissions: allowedPermissions,
                ),
                // Button Group (multiple)
                EmrButtonGroupFormField(
                  visible: _model.isOn,
                  mode: EmrButtonGroupFormFieldMode.multiple,
                  labelText: 'Button Group (multiple)',
                  binding: _model.selectedOptions,
                  validator: Validators.required,
                  enabled: _enabled,
                  options: _options,
                  allowedPermissions: allowedPermissions,
                ),
                // Radio list
                EmrRadioListFormField(
                  // visible: _model.isOn,
                  labelText: 'Radio list',
                  options: _options,
                  binding: _model.selectedOption,
                  validator: Validators.required,
                  enabled: _enabled,
                  allowedPermissions: allowedPermissions,
                ),
                // Checkbox list
                EmrCheckboxListFormField(
                  visible: _model.isOn,
                  labelText: 'Checkbox list',
                  options: _options,
                  binding: _model.selectedOptions,
                  validator: Validators.required,
                  enabled: _enabled,
                  allowedPermissions: allowedPermissions,
                ),
                // First name.
                EmrTextFormField(
                  visible: _model.isOn,
                  labelText: 'First name',
                  hintText: 'Enter your first name',
                  binding: _model.firstName,
                  enabled: _enabled,
                  readOnly: _readOnly,
                  validator: Validators.required,
                  allowedPermissions: allowedPermissions,
                ),
                // Last name.
                EmrTextFormField(
                  visible: _model.isOn,
                  labelText: 'Last name',
                  hintText: 'Enter your last name',
                  binding: _model.lastName,
                  enabled: _enabled,
                  readOnly: _readOnly,
                  validator: Validators.required,
                  allowedPermissions: allowedPermissions,
                ),
                // Favourite colour.
                EmrPickerFormField(
                  visible: _model.isOn,
                  labelText: 'Favourite colour (search)',
                  items: _colours,
                  itemTitleText: (item) => item,
                  binding: _model.favouriteColour,
                  enabled: _enabled,
                  readOnly: _readOnly,
                  validator: Validators.required,
                  mode: EmrPickerMode.search,
                  allowedPermissions: allowedPermissions,
                ),
                EmrPickerFormField(
                  visible: _model.isOn,
                  labelText: 'Favourite colour (inline)',
                  items: _colours,
                  itemTitleText: (item) => item,
                  binding: _model.favouriteColour,
                  enabled: _enabled,
                  readOnly: _readOnly,
                  validator: Validators.required,
                  allowedPermissions: allowedPermissions,
                ),
                EmrPickerFormField(
                  visible: _model.isOn,
                  labelText: 'Favourite colour (dropdown)',
                  items: _colours,
                  itemTitleText: (item) => item,
                  binding: _model.favouriteColour,
                  enabled: _enabled,
                  readOnly: _readOnly,
                  validator: Validators.required,
                  mode: EmrPickerMode.dropdown,
                  allowedPermissions: allowedPermissions,
                ),
                // Territories
                EmrMultiPickerFormField(
                  visible: _model.isOn,
                  labelText: 'Territories',
                  items: _territories,
                  itemTitleText: (item) => item.name,
                  binding: _model.territories,
                  enabled: _enabled,
                  readOnly: _readOnly,
                  validator: Validators.required,
                  allowedPermissions: allowedPermissions,
                ),
                // Date of birth.
                EmrDateFormField(
                  visible: _model.isOn,
                  labelText: 'Date of birth',
                  binding: _model.dateOfBirth,
                  enabled: _enabled,
                  readOnly: _readOnly,
                  validator: Validators.required,
                  allowedPermissions: allowedPermissions,
                ),
                Localizations.override(
                  context: context,
                  locale: const Locale('en', 'US'),
                  child: EmrTimeFormField(
                    visible: _model.isOn,
                    labelText: 'Time (en-US)',
                    binding: _model.dateOfBirth,
                    enabled: _enabled,
                    readOnly: _readOnly,
                    validator: Validators.required,
                    allowedPermissions: allowedPermissions,
                  ),
                ),
                Localizations.override(
                  context: context,
                  locale: const Locale('de', 'DE'),
                  child: EmrTimeFormField(
                    visible: _model.isOn,
                    labelText: 'Time (de-DE)',
                    binding: _model.dateOfBirth,
                    enabled: _enabled,
                    readOnly: _readOnly,
                    validator: Validators.required,
                    allowedPermissions: allowedPermissions,
                  ),
                ),
                // Notes.
                EmrTextFormField(
                  visible: _model.isOn,
                  labelText: 'Notes',
                  hintText: 'Say something',
                  binding: _model.notes,
                  enabled: _enabled,
                  readOnly: _readOnly,
                  validator: Validators.required,
                  expands: true,
                  maxLines: null,
                  textAlignVertical: TextAlignVertical.top,
                  keyboardType: TextInputType.multiline,
                  allowedPermissions: allowedPermissions,
                ),
                // A whole number.
                EmrTextFormField(
                  visible: _model.isOn,
                  labelText: 'Whole number',
                  hintText: 'Enter a whole number',
                  binding: _model.wholeNumber,
                  enabled: _enabled,
                  readOnly: _readOnly,
                  validator: Validators.required,
                  textAlign: TextAlign.end,
                  allowedPermissions: allowedPermissions,
                ),
                // A lottery number (stepper).
                EmrStepperFormField(
                  visible: _model.isOn,
                  labelText: 'Lottery number',
                  hintText: 'Required',
                  binding: _model.wholeNumber,
                  enabled: _enabled,
                  readOnly: _readOnly,
                  validator: Validators.required,
                  allowedPermissions: allowedPermissions,
                ),
                // A decimal number.
                EmrTextFormField(
                  visible: _model.isOn,
                  labelText: 'Decimal number',
                  hintText: 'Enter a decimal number',
                  binding: _model.decimalNumber,
                  enabled: _enabled,
                  readOnly: _readOnly,
                  validator: Validators.required,
                  allowedPermissions: allowedPermissions,
                ),
                // Rate.
                EmrUomFormField(
                  visible: _model.isOn,
                  labelText: 'Rate',
                  hintText: 'Enter a rate',
                  binding: _model.rate,
                  enabled: _enabled,
                  readOnlyValue: _readOnly,
                  validator: Validators.required,
                  allowNegative: true,
                  priceableElement: EmrUomPriceableElement.commodityRate,
                  allowedPermissions: allowedPermissions,
                ),
                // Rate (not negative).
                EmrUomFormField(
                  visible: _model.isOn,
                  labelText: 'Rate without sign toggle',
                  hintText: 'Enter a positive rate',
                  binding: _model.rate,
                  enabled: _enabled,
                  readOnlyValue: _readOnly,
                  validator: Validators.required,
                  priceableElement: EmrUomPriceableElement.commodityRate,
                  allowedPermissions: allowedPermissions,
                ),
                // N/A
                EmrUomFormField(
                  visible: _model.isOn,
                  labelText: 'N/A field',
                  hintText: 'N/A',
                  binding: ValueNotifier(null),
                  enabled: ValueNotifier(false),
                  priceableElement: EmrUomPriceableElement.commodityRate,
                  allowedPermissions: allowedPermissions,
                ),
                // Single file picker.
                EmrFilePickerFormField(
                  visible: _model.isOn,
                  labelText: 'A file',
                  binding: _model.file,
                  enabled: _enabled,
                  readOnly: _readOnly,
                  validator: Validators.required,
                  extensions: EmrFilePickerFormFieldFileExtensions.pictures,
                  allowedPermissions: allowedPermissions,
                ),
                ValueListenableBuilder(
                  valueListenable: _model.isOn,
                  builder: (_, visible, __) {
                    if (!visible) {
                      return const SizedBox.shrink();
                    }

                    return Center(
                      child: OutlinedButton(
                        onPressed: () async {
                          if (_model.file.value == null) {
                            return;
                          }

                          final response = await EmrBackgroundService.instance
                              .upload(
                                _model.file.value,
                                'https://appmediaservice-beta.emrgroup.com/i/com.emrgroup.yardlogistics/image_1741627718595.jpg',
                              );

                          if (!mounted) {
                            return;
                          }

                          if (response.status ==
                              BackgroundTransferStatus.completed) {
                            await EmrModal.showMessageBar(
                              context,
                              'File uploaded successfully.',
                            );
                          } else if (response.status ==
                              BackgroundTransferStatus.pending) {
                            await EmrModal.showMessageBar(
                              context,
                              'File has been queued for upload.',
                              messageType: MessageBarTypes.information,
                            );
                          } else {
                            await EmrModal.showMessageBar(
                              context,
                              'File upload failed: ${response.message}',
                              messageType: MessageBarTypes.error,
                            );
                          }
                        },
                        child: const Text('Upload file'),
                      ),
                    );
                  },
                ),
                // Async validator.
                EmrTextFormField(
                  key: _exampleAsyncValidator.formFieldKey,
                  visible: _model.isOn,
                  labelText: "String is 'valid' with delay",
                  hintText: 'valid',
                  binding: _model.valid,
                  enabled: _enabled,
                  readOnly: _readOnly,
                  validator: (value) => Validators.join([
                    Validators.required(value),
                    _exampleAsyncValidator.validator(value),
                  ]),
                  suffix: _exampleAsyncValidator.isValidatingIndicator,
                  autovalidateMode: AutovalidateMode.disabled,
                  allowedPermissions: allowedPermissions,
                ),
                // Text formatter.
                EmrTextFormField(
                  visible: _model.isOn,
                  labelText: 'Credit card number',
                  hintText: '0000 0000 0000 0000',
                  binding: _model.cardNumber,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(16),
                    _CreditCardNumberFormatter(),
                  ],
                  allowedPermissions: allowedPermissions,
                ),
                // Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        if (_form1Key.currentState?.validate() == false) {
                          await EmrModal.showMessageBar(
                            context,
                            'Please correct the validation error(s).',
                            messageType: MessageBarTypes.error,
                          );

                          return;
                        }

                        debugPrint(_model.toJson());

                        await EmrModal.showMessageBar(
                          context,
                          'The form is valid.',
                        );
                      },
                      child: Text(context.l10n.save),
                    ),
                    OutlinedButton(
                      onPressed: () => _form1Key.currentState?.reset(),
                      child: const Text('Reset'),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  final _options = ValueNotifier({
    'A': 'Option A',
    'B': 'Option B',
    'C': 'Option C',
    'D': 'Option D',
    'E': 'Option E',
    'F': 'Option F',
  });

  Future<List<String>> _colours(String _) async {
    // await Future.delayed(const Duration(seconds: 2), () {});

    return [
      'Red',
      'Green',
      'Blue',
      'Yellow',
      'Purple',
      'Orange',
      'Pink',
      'Brown',
      'Black',
      'White',
    ];
  }

  Future<List<Territory>> _territories(String _) async {
    return [
      const Territory('A11', 'UK', []),
      const Territory('A21', 'Holland', []),
      const Territory('A24', 'Germany', []),
      const Territory('A25', 'Spain', []),
      const Territory('A26', 'Italy', []),
      const Territory('A42', 'USA', []),
    ];
  }
}

class ExampleFormData {
  ExampleFormData({
    bool? locked,
    bool? isOn,
    String? selectedOption,
    List<String>? selectedOptions,
    String? firstName,
    String? lastName,
    String? favouriteColour,
    DateTime? dateOfBirth,
    String? notes,
    int? wholeNumber,
    Decimal? decimalNumber,
    UomValue? rate,
    List<Territory>? territories,
    XFile? file,
    String? valid,
    String? cardNumber,
  }) {
    this.locked = ValueNotifier(locked ?? false);
    this.isOn = ValueNotifier(isOn ?? false);
    this.selectedOption = ValueNotifier(selectedOption);
    this.selectedOptions = ValueNotifier(selectedOptions ?? []);
    this.firstName = ValueNotifier(firstName);
    this.lastName = ValueNotifier(lastName);
    this.favouriteColour = ValueNotifier(favouriteColour);
    this.dateOfBirth = ValueNotifier(dateOfBirth);
    this.notes = ValueNotifier(notes);
    this.wholeNumber = ValueNotifier(wholeNumber);
    this.decimalNumber = ValueNotifier(decimalNumber);
    this.rate = ValueNotifier(rate);
    this.territories = ValueNotifier(territories ?? []);
    this.file = ValueNotifier(file);
    this.valid = ValueNotifier(valid);
    this.cardNumber = ValueNotifier(cardNumber);
  }

  late final ValueNotifier<bool> locked;

  late final ValueNotifier<bool> isOn;

  late final ValueNotifier<String?> selectedOption;

  late final ValueNotifier<List<String>> selectedOptions;

  late final ValueNotifier<String?> firstName;

  late final ValueNotifier<String?> lastName;

  late final ValueNotifier<String?> favouriteColour;

  late final ValueNotifier<DateTime?> dateOfBirth;

  late final ValueNotifier<String?> notes;

  late final ValueNotifier<int?> wholeNumber;

  late final ValueNotifier<Decimal?> decimalNumber;

  late final ValueNotifier<UomValue?> rate;

  late final ValueNotifier<List<Territory>> territories;

  late final ValueNotifier<XFile?> file;

  late final ValueNotifier<String?> valid;

  late final ValueNotifier<String?> cardNumber;

  String toJson() {
    return '''
{
  "locked": ${locked.value},
  "isOn": ${isOn.value},
  "selectedOption": ${_nullOrString(selectedOption)},
  "selectedOptions": ${_list(selectedOptions)},
  "firstName": ${_nullOrString(firstName)},
  "lastName": ${_nullOrString(lastName)},
  "favouriteColour": ${_nullOrString(favouriteColour)},
  "dateOfBirth": ${_nullOrDateTime(dateOfBirth)},
  "notes": ${_nullOrString(notes)},
  "wholeNumber": ${_nullOrNumber(wholeNumber)},
  "decimalNumber": ${_nullOrDecimal(decimalNumber)},
  "rate": ${_nullOrValueUomPair(rate)},
  "territories": '[${territories.value.map((x) => "'${x.code}'").toList().join(', ')}]',
  "file": ${_nullOrFile(file)},
  "valid": ${_nullOrString(valid)},
  "cardNumber": ${_nullOrString(cardNumber)},
}''';
  }

  String _nullOrString(ValueNotifier<String?> notifier) =>
      notifier.value == null ? 'null' : '"${notifier.value}"';

  String _nullOrDateTime(ValueNotifier<DateTime?> notifier) =>
      notifier.value == null ? 'null' : '"${notifier.value}"';

  String _nullOrNumber(ValueNotifier<num?> notifier) {
    return notifier.value == null ? 'null' : '${notifier.value}';
  }

  String _nullOrDecimal(ValueNotifier<Decimal?> notifier) {
    return notifier.value == null ? 'null' : '${notifier.value}';
  }

  String _nullOrValueUomPair(ValueNotifier<UomValue?> notifier) =>
      notifier.value == null ? 'null' : '"${notifier.value}"';

  String _list(ValueNotifier<List<String>> notifier) =>
      '[${notifier.value.map((x) => "'$x'").join(', ')}]';

  String _nullOrFile(ValueNotifier<XFile?> notifier) =>
      notifier.value == null ? 'null' : '"${notifier.value!.name}"';

  void reset() {
    isOn.value = false;
    selectedOption.value = null;
    selectedOptions.value = [];
    firstName.value = null;
    lastName.value = null;
    favouriteColour.value = null;
    dateOfBirth.value = null;
    notes.value = null;
    wholeNumber.value = null;
    decimalNumber.value = null;
    rate.value = null;
    territories.value = [];
    file.value = null;
    valid.value = null;
    cardNumber.value = null;
  }
}

class _CreditCardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Remove all spaces
    final digitsOnly = newValue.text.replaceAll(' ', '');

    // Group into chunks of 4
    final buffer = StringBuffer();
    for (var i = 0; i < digitsOnly.length; i++) {
      buffer.write(digitsOnly[i]);
      final indexInGroup = i + 1;
      if (indexInGroup % 4 == 0 && indexInGroup != digitsOnly.length) {
        buffer.write(' ');
      }
    }

    final formatted = buffer.toString();

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
