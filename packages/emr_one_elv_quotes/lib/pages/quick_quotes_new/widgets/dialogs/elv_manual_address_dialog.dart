import 'package:emr_one_elv_quotes/elv_quotes.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';

class ElvManualAddressDialog extends StatefulWidget {
  const ElvManualAddressDialog({
    required this.controller,
    required this.onAddressChanged,
    super.key,
  });

  final QuickQuotesNewController controller;
  final void Function(Address selectedAddress) onAddressChanged;

  @override
  State<ElvManualAddressDialog> createState() => _ElvManualAddressDialogState();
}

class _ElvManualAddressDialogState extends State<ElvManualAddressDialog> {
  late final ValueNotifier<String> _addressLine1Notifier;
  late final ValueNotifier<String> _addressLine2Notifier;
  late final ValueNotifier<String> _cityNotifier;
  late final ValueNotifier<String> _countryNotifier;
  late final ValueNotifier<String> _postcodeNotifier;

  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();

    _addressLine1Notifier = ValueNotifier('');
    _addressLine2Notifier = ValueNotifier('');
    _cityNotifier = ValueNotifier('');
    _countryNotifier = ValueNotifier('UK');
    _postcodeNotifier = ValueNotifier('');

    _formKey = GlobalKey<FormState>();
  }

  Future<bool> validatePostcode() async {
    await EmrDialog.busy(context, titleText: context.l10n.loading);

    final response = await widget.controller.yardService.isValidPostcode(
      _postcodeNotifier.value,
    );

    if (!mounted) return false;

    context.pop();

    if (response) {
      return true;
    }

    await EmrDialog.ok(
      titleText: context.l10n.error,
      context,
      contentText: context.l10n.errInvalidPostcode,
    );

    return false;
  }

  @override
  void dispose() {
    _addressLine1Notifier.dispose();
    _addressLine2Notifier.dispose();
    _cityNotifier.dispose();
    _countryNotifier.dispose();
    _postcodeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
              child: EmrForm(
                key: _formKey,
                builder: (context) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      EmrTextFormField(
                        binding: _addressLine1Notifier,
                        hintText: context.l10n.addressLine1,
                        labelText: context.l10n.addressLine1,
                        validator: (value) => Validators.join([
                          Validators.required(
                            value,
                            () => context.l10n.errMsgPleaseEnterAddressLine1,
                          ),
                          Validators.length(value, min: 3),
                          Validators.length(value, max: 35),
                        ]),
                      ),

                      EmrTextFormField(
                        binding: _addressLine2Notifier,
                        hintText: context.l10n.addressLine2Optional,
                        labelText: context.l10n.addressLine2Optional,
                        validator: (value) => Validators.join([
                          Validators.length(value, min: 3),
                          Validators.length(value, max: 35),
                        ]),
                      ),

                      EmrTextFormField(
                        binding: _cityNotifier,
                        hintText: context.l10n.townOrCity,
                        labelText: context.l10n.townOrCity,
                        validator: (value) => Validators.join([
                          Validators.required(
                            value,
                            () => context.l10n.pleaseEnterCity,
                          ),
                          Validators.length(value, min: 3),
                          Validators.length(value, max: 35),
                        ]),
                      ),

                      EmrTextFormField(
                        binding: _countryNotifier,
                        hintText: context.l10n.country,
                        labelText: context.l10n.country,
                        readOnly: ValueNotifier(true),
                      ),

                      EmrTextFormField(
                        binding: _postcodeNotifier,
                        hintText: context.l10n.postCode,
                        labelText: context.l10n.postCode,
                        validator: (value) => Validators.join([
                          Validators.required(
                            value,
                            () => context.l10n.pleaseEnterPostcode,
                          ),
                          Validators.length(value, min: 3),
                          Validators.length(value, max: 12),
                          Validators.ukPostcodeFormat(value),
                        ]),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),

        Center(
          child: OutlinedButton(
            onPressed: () async {
              final form = _formKey.currentState;

              if (form == null || !form.validate()) return;

              final isValid = await validatePostcode();
              if (!isValid || !mounted) return;

              widget.onAddressChanged(
                Address(
                  line1: _addressLine1Notifier.value,
                  line2: _addressLine2Notifier.value,
                  line4: _cityNotifier.value,
                  country: _countryNotifier.value,
                  postCode: _postcodeNotifier.value,
                ),
              );
              if (context.mounted) {
                context.pop();
              }
            },
            child: Text(context.l10n.save),
          ),
        ),
      ],
    );
  }
}
