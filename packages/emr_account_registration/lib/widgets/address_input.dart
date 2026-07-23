import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class AddressInput extends StatefulWidget with FullExtent {
  AddressInput({
    required this.controller,
    required this.uploadedDocumentDetails,
    required this.countryId,
    super.key,
  });

  final JourneyController controller;
  final UploadedDocumentDetailsModel? uploadedDocumentDetails;
  final String countryId;

  @override
  State<AddressInput> createState() => _AddressInputState();
}

class _AddressInputState extends State<AddressInput> {
  late final TextEditingController _address1Controller;
  late final TextEditingController _address2Controller;
  late final TextEditingController _cityController;
  late final TextEditingController _countyController;
  late final TextEditingController _postCodeController;

  @override
  void initState() {
    super.initState();

    _address1Controller = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _address1Controller.addListener(() {
        widget.controller.dataBinding.setAddress1(
          _address1Controller.text,
          widget.uploadedDocumentDetails,
        );
      });
    });

    _address2Controller = TextEditingController();
    _cityController = TextEditingController();
    _countyController = TextEditingController();
    _postCodeController = TextEditingController();
    _address1Controller.text = widget.uploadedDocumentDetails?.address1 ?? '';
    _address2Controller.text = widget.uploadedDocumentDetails?.address2 ?? '';
    _cityController.text = widget.uploadedDocumentDetails?.city ?? '';
    _countyController.text = widget.uploadedDocumentDetails?.county ?? '';
    _postCodeController.text = widget.uploadedDocumentDetails?.postCode ?? '';
  }

  @override
  void dispose() {
    _address1Controller.dispose();
    _address2Controller.dispose();
    _cityController.dispose();
    _countyController.dispose();
    _postCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 5,
              child: widget.countryId.isCountryNL()
                  ? wrappedWidget(
                      theme: theme,
                      label: context.l10n.street,
                      child: TextFormField(
                        controller: _address1Controller,
                        onChanged: (val) => widget.controller.dataBinding
                            .setAddress1(val, widget.uploadedDocumentDetails),
                        validator: (value) => (value ?? '').isEmpty
                            ? context.l10n.errEnterStreet
                            : null,
                      ),
                    )
                  : wrappedWidget(
                      theme: theme,
                      label: context.l10n.address1,
                      child: EmrPicker<AddressLookupResult>(
                        mode: EmrPickerMode.inline,
                        labelText: context.l10n.address1,
                        items: (query) async {
                          if (query.length < 4) {
                            return [];
                          }
                          return context.coreApi.accountService.getAddresses(
                            widget.countryId,
                            query,
                          );
                        },
                        controller: _address1Controller,
                        itemTitleText: (item) => item.toString(),
                        validator: Validators.required,
                        onItemSelected: (item) async {
                          final suggestion = await context
                              .coreApi
                              .accountService
                              .getAddressDetails(item.id!);

                          var address1 = suggestion.address1 ?? '';

                          _address1Controller.text = address1;

                          _address2Controller.text =
                              (suggestion.address2 ?? '').isEmpty
                              ? suggestion.address3 ?? ''
                              : suggestion.address2 ?? '';

                          try {
                            if (_address2Controller.text.isEmpty &&
                                address1.contains(' ')) {
                              _address1Controller.text = address1.substring(
                                0,
                                address1.indexOf(' '),
                              );
                              _address2Controller.text = address1.substring(
                                address1.indexOf(' ') + 1,
                              );
                            }
                          } catch (err) {
                            LoggingService.logToConsole(err.toString());
                          }

                          widget.controller.dataBinding.setAddress1(
                            _address1Controller.text,
                            widget.uploadedDocumentDetails,
                          );

                          widget.controller.dataBinding.setAddress2(
                            _address2Controller.text,
                            widget.uploadedDocumentDetails,
                          );

                          _cityController.text =
                              (suggestion.address4 ?? '').isEmpty
                              ? suggestion.address5 ?? ''
                              : suggestion.address4 ?? '';
                          widget.controller.dataBinding.setCity(
                            _cityController.text,
                            widget.uploadedDocumentDetails,
                          );

                          _countyController.text =
                              (suggestion.address5 ?? '').isEmpty
                              ? suggestion.address6 ?? ''
                              : suggestion.address5 ?? '';
                          widget.controller.dataBinding.setCounty(
                            _countyController.text,
                            widget.uploadedDocumentDetails,
                          );

                          _postCodeController.text = suggestion.postCode ?? '';
                          widget.controller.dataBinding.setPostcode(
                            _postCodeController.text,
                            widget.uploadedDocumentDetails,
                          );
                        },
                      ),
                    ),
            ),
            const SizedBox(width: Insets.gutter / 2),
            Expanded(
              flex: 5,
              child: wrappedWidget(
                theme: theme,
                label: widget.countryId.isCountryNL()
                    ? context.l10n.houseNumber
                    : context.l10n.address2,
                child: TextFormField(
                  controller: _address2Controller,
                  onChanged: (val) => widget.controller.dataBinding.setAddress2(
                    val,
                    widget.uploadedDocumentDetails,
                  ),
                  validator: (value) =>
                      widget.countryId.isCountryNL() && (value ?? '').isEmpty
                      ? context.l10n.errEnterHouseNumber
                      : null,
                ),
              ),
            ),
          ],
        ),
        verticalSpacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (!widget.countryId.isCountryNL())
              Expanded(
                flex: 5,
                child: wrappedWidget(
                  theme: theme,
                  label: context.l10n.city,
                  child: TextFormField(
                    controller: _cityController,
                    onChanged: (val) => widget.controller.dataBinding.setCity(
                      val,
                      widget.uploadedDocumentDetails,
                    ),
                    validator: (value) => (value ?? '').isEmpty
                        ? (widget.countryId.isCountryNL()
                              ? context.l10n.errEnterPlace
                              : context.l10n.errEnterCity)
                        : null,
                  ),
                ),
              ),
            if (!widget.countryId.isCountryNL())
              const SizedBox(width: Insets.gutter / 2),
            Expanded(
              flex: 5,
              child: wrappedWidget(
                theme: theme,
                label: widget.countryId.isCountryNL()
                    ? context.l10n.place
                    : context.l10n.county,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _countyController,
                  onChanged: (val) => widget.controller.dataBinding.setCounty(
                    val,
                    widget.uploadedDocumentDetails,
                  ),
                  validator: (value) {
                    final county = (value ?? '').trim();
                    if (county.isEmpty) {
                      return widget.countryId.isCountryNL()
                          ? context.l10n.errEnterPlace
                          : context.l10n.errEnterCounty;
                    }
                    if (widget.countryId.isCountryUS() && county.length > 2) {
                      return context.l10n.countyValidation;
                    }
                    return null;
                  },
                ),
              ),
            ),
            const SizedBox(width: Insets.gutter / 2),
            if (widget.countryId.isCountryNL())
              Expanded(
                flex: 5,
                child: wrappedWidget(
                  theme: theme,
                  label: context.l10n.postCode,
                  child: TextFormField(
                    controller: _postCodeController,
                    onChanged: (val) => widget.controller.dataBinding
                        .setPostcode(val, widget.uploadedDocumentDetails),
                    validator: (value) {
                      if ((value ?? '').isEmpty ||
                          !widget.controller.validationService
                              .isValidNLPostcode(value!)) {
                        return context.l10n.enterValidDutchPostalCode;
                      }
                      return null;
                    },
                  ),
                ),
              ),
            const SizedBox(width: Insets.gutter / 2),
            if (!widget.countryId.isCountryNL())
              Expanded(
                flex: 5,
                child: wrappedWidget(
                  theme: theme,
                  label: context.l10n.postCode,
                  child: TextFormField(
                    controller: _postCodeController,
                    onChanged: (val) => widget.controller.dataBinding
                        .setPostcode(val, widget.uploadedDocumentDetails),
                    validator: (val) => Validators.join([
                      Validators.required(val),
                      Validators.length(val, min: 4, max: 8),
                    ]),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
