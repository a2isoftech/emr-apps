import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/constants.dart';
import 'package:emr_one_elv_core/models/address.dart';
import 'package:emr_one_elv_quotes/elv_quotes.dart';
import 'package:emr_sharedtypes/models/yard.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class ElvCreateAccountDialog extends StatefulWidget {
  const ElvCreateAccountDialog({required this.controller, super.key});

  final QuickQuotesNewController controller;

  @override
  State<ElvCreateAccountDialog> createState() => _ElvCreateAccountDialogState();
}

class _ElvCreateAccountDialogState extends State<ElvCreateAccountDialog> {
  late final ValueNotifier<String> _titleNotifier;
  late final ValueNotifier<String> _firstNameNotifier;
  late final ValueNotifier<String> _lastNameNotifier;
  late final ValueNotifier<DateTime?> _dateNotifier;
  late final ValueNotifier<String> _emailNotifier;
  late final ValueNotifier<String> _mobileNotifier;
  late final ValueNotifier<Yard?> _yardNotifier;
  late final ValueNotifier<String> _addressNotifier;

  late final Signal<bool> _allowedContactByEmailSignal;
  late final Signal<bool> _allowedContactByPostSignal;
  late final Signal<bool> _allowedContactBySMSSignal;
  late final Signal<bool> _allowedContactByPhoneSignal;

  late final GlobalKey<FormState> _formKey;

  Address? selectedAddress;

  @override
  void initState() {
    super.initState();
    _titleNotifier = ValueNotifier<String>('');
    _firstNameNotifier = ValueNotifier<String>('');
    _lastNameNotifier = ValueNotifier<String>('');
    _dateNotifier = ValueNotifier(null);
    _emailNotifier = ValueNotifier<String>('');
    _mobileNotifier = ValueNotifier<String>('');
    _yardNotifier = ValueNotifier<Yard?>(null);
    _addressNotifier = ValueNotifier<String>('');

    _allowedContactByEmailSignal = Signal(false);
    _allowedContactByPostSignal = Signal(false);
    _allowedContactBySMSSignal = Signal(false);
    _allowedContactByPhoneSignal = Signal(false);

    _formKey = GlobalKey();
    selectedAddress = null;
  }

  @override
  void dispose() {
    _titleNotifier.dispose();
    _firstNameNotifier.dispose();
    _lastNameNotifier.dispose();
    _dateNotifier.dispose();
    _emailNotifier.dispose();
    _mobileNotifier.dispose();
    _yardNotifier.dispose();
    _addressNotifier.dispose();
    selectedAddress = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EmrForm(
      key: _formKey,
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                EmrPickerFormField<String>(
                  labelText: context.l10n.title,
                  binding: _titleNotifier,
                  validator: (value) => Validators.required(
                    value,
                    () => context.l10n.selectTitle,
                  ),
                  items: (_) => Future.value(ElvConstants().titleItems),
                  itemTitleText: (e) {
                    return e;
                  },
                  mode: EmrPickerMode.search,
                ),
                EmrTextFormField(
                  binding: _firstNameNotifier,
                  labelText: context.l10n.firstName,
                  hintText: context.l10n.firstName,
                  validator: (value) => Validators.required(
                    value,
                    () => context.l10n.pleaseEnterAFirstName,
                  ),
                ),
                EmrTextFormField(
                  binding: _lastNameNotifier,
                  labelText: context.l10n.lastName,
                  hintText: context.l10n.lastName,
                  validator: (value) => Validators.required(
                    value,
                    () => context.l10n.pleaseEnterLastName,
                  ),
                ),
                EmrDateFormField(
                  binding: _dateNotifier,
                  lastDate: DateTime.now(),
                  labelText: context.l10n.dateOfBirth,
                  validator: (value) => Validators.join([
                    Validators.required(
                      value,
                      () => context.l10n.pleaseEnterADoB,
                    ),
                  ]),
                ),
                EmrTextFormField(
                  binding: _emailNotifier,
                  labelText: context.l10n.email,
                  hintText: context.l10n.email,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) => Validators.join([
                    Validators.required(
                      value,
                      () => context.l10n.msgEnterAValidEmail,
                    ),
                    Validators.email(value),
                  ]),
                ),
                EmrTextFormField(
                  binding: _mobileNotifier,
                  labelText: context.l10n.mobile,
                  hintText: context.l10n.mobile,
                  keyboardType: TextInputType.phone,

                  validator: (value) =>
                      Validators.join([Validators.mobileNumber(value)]),
                ),
                EmrPickerFormField<Yard>(
                  items: (_) async {
                    return widget.controller.state.otherYards;
                  },
                  labelText: context.l10n.yard,
                  binding: _yardNotifier,
                  itemTitleText: (yard) => '${yard.name} (${yard.yardCode})',
                  validator: Validators.required,
                  mode: EmrPickerMode.search,
                ),
                EmrTextFormField(
                  binding: _addressNotifier,
                  labelText: context.l10n.searchForAnAddress,
                  hintText: context.l10n.searchForAnAddress,
                  validator: (value) => Validators.required(
                    value,
                    () => context.l10n.pleaseAddAnAddress,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(Insets.gutter),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          context.l10n.marketingPreferences,
                          style: Theme.of(context).textTheme.bodyLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 350,
                          child: EmrCard(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Watch(
                                  (context) => CheckboxListTile(
                                    title: Text(
                                      '''${context.l10n.allowContactBy} ${context.l10n.email}''',
                                    ),
                                    value: _allowedContactByEmailSignal.value,
                                    onChanged: (value) {
                                      _allowedContactByEmailSignal.value =
                                          value ?? false;
                                    },
                                  ),
                                ),
                                Watch(
                                  (context) => CheckboxListTile(
                                    title: Text(
                                      '''${context.l10n.allowContactBy} ${context.l10n.post}''',
                                    ),
                                    value: _allowedContactByPostSignal.value,
                                    onChanged: (value) {
                                      _allowedContactByPostSignal.value =
                                          value ?? false;
                                    },
                                  ),
                                ),
                                Watch(
                                  (context) => CheckboxListTile(
                                    title: Text(
                                      '''${context.l10n.allowContactBy} ${context.l10n.sms}''',
                                    ),
                                    value: _allowedContactBySMSSignal.value,
                                    onChanged: (value) {
                                      _allowedContactBySMSSignal.value =
                                          value ?? false;
                                    },
                                  ),
                                ),
                                Watch(
                                  (context) => CheckboxListTile(
                                    title: Text(
                                      '''${context.l10n.allowContactBy} ${context.l10n.phone}''',
                                    ),
                                    value: _allowedContactByPhoneSignal.value,
                                    onChanged: (value) {
                                      _allowedContactByPhoneSignal.value =
                                          value ?? false;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: OutlinedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: Text(context.l10n.create),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
