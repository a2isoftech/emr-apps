import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';

class EditDetails extends StatefulWidget {
  EditDetails({
    required this.controller,
    required this.existingModel,
    required this.newModel,
    required this.formKey,
    required this.countryId,
    super.key,
  }) {
    controller.model = newModel;
  }

  final AccountDetailsController controller;
  final AccountDetailsModel? newModel;
  final GlobalKey<FormState> formKey;
  final String countryId;
  final AccountDetailsModel existingModel;
  @override
  State<EditDetails> createState() => _EditDetailsState();
}

class _EditDetailsState extends State<EditDetails> {
  late final TextEditingController _address1Controller;
  late final TextEditingController _address2Controller;
  late final TextEditingController _address3Controller;
  late final TextEditingController _cityController;
  late final TextEditingController _countyController;
  late final TextEditingController _postCodeController;
  late final TextEditingController _bankNameController;

  @override
  void initState() {
    super.initState();
    _address1Controller = TextEditingController();
    _address2Controller = TextEditingController();
    _address3Controller = TextEditingController();
    _cityController = TextEditingController();
    _countyController = TextEditingController();
    _postCodeController = TextEditingController();
    _bankNameController = TextEditingController();
    _address1Controller.text = widget.newModel!.accountDetails.address1;
    _address2Controller.text = widget.newModel!.accountDetails.address2;
    _cityController.text = widget.newModel!.accountDetails.town;
    _countyController.text = widget.newModel!.accountDetails.county;
    _postCodeController.text = widget.newModel!.accountDetails.postCode;
    _bankNameController.text = widget.newModel!.bankDetails.bankName;
  }

  @override
  void dispose() {
    _address1Controller.dispose();
    _address2Controller.dispose();
    _address3Controller.dispose();
    _cityController.dispose();
    _countyController.dispose();
    _postCodeController.dispose();
    _bankNameController.dispose();
    super.dispose();
  }

  void setBankName(String bankName) {
    widget.controller.setBankName(bankName);
    _bankNameController.text = bankName;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenWidth = context.screenWidth();
    final textFieldSize =
        context.isInPortraitMode() ? screenWidth : screenWidth / 4;
    final newModel = widget.newModel;
    final controller = widget.controller;
    final existingModel = widget.existingModel;
    final countryId = widget.countryId;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
            Insets.gutter,
            Insets.gutter,
            Insets.gutter,
            0,
          ),
          child: Column(
            children: [
              Wrap(
                spacing: 10,
                children: [
                  _textField(
                      textFieldSize,
                      context.l10n.contactName,
                      newModel!.accountDetails.contactName,
                      theme,
                      controller.setContactName, (val) {
                    return controller.validate(
                      'contactName',
                      existingModel.accountDetails.contactName,
                      val,
                      () {
                        return ValidationService.validateString(
                          val,
                          context.l10n.contactName.toLowerCase(),
                          context,
                        );
                      },
                    );
                  }),
                  _textField(
                      textFieldSize,
                      context.l10n.jobTitle,
                      newModel.accountDetails.jobTitle,
                      theme,
                      controller.setJobTitle, (val) {
                    return controller.validate(
                      'jobTitle',
                      existingModel.accountDetails.jobTitle,
                      val,
                      () {
                        return ValidationService.validateString(
                          val,
                          context.l10n.jobTitle.toLowerCase(),
                          context,
                        );
                      },
                    );
                  }),
                  _textField(
                      textFieldSize,
                      context.l10n.contactEmail,
                      newModel.accountDetails.contactEmail,
                      theme,
                      controller.setContactEmail, (val) {
                    return controller.validate(
                      'contactEmail',
                      existingModel.accountDetails.contactEmail,
                      val,
                      () {
                        return ValidationService.validateEmailNoEmpty(
                          val,
                          context,
                        );
                      },
                    );
                  }),
                  _textField(
                    textFieldSize,
                    context.l10n.addressNumber('1'),
                    newModel.accountDetails.address1,
                    theme,
                    controller.setAddress1,
                    (val) {
                      return controller.validate(
                        'address1',
                        existingModel.accountDetails.address1,
                        val,
                        () {
                          return ValidationService.validateString(
                            val,
                            context.l10n.addressNumber('1').toLowerCase(),
                            context,
                          );
                        },
                      );
                    },
                    controller: _address1Controller,
                  ),
                  _textField(
                    textFieldSize,
                    context.l10n.addressNumber('2'),
                    newModel.accountDetails.address2,
                    theme,
                    controller.setAddress2,
                    (val) {
                      return controller.validate(
                        'address2',
                        existingModel.accountDetails.address2,
                        val,
                        () {
                          return ValidationService.validateString(
                            val,
                            context.l10n.addressNumber('2').toLowerCase(),
                            context,
                          );
                        },
                      );
                    },
                    controller: _address2Controller,
                  ),
                  _textField(
                    textFieldSize,
                    context.l10n.addressNumber('3'),
                    newModel.accountDetails.address3,
                    theme,
                    controller.setAddress3,
                    (val) {
                      return controller.validate(
                        'address3',
                        existingModel.accountDetails.address3,
                        val,
                        () {
                          return ValidationService.validateString(
                            val,
                            context.l10n.addressNumber('3').toLowerCase(),
                            context,
                          );
                        },
                      );
                    },
                    controller: _address3Controller,
                  ),
                  _textField(
                    textFieldSize,
                    context.l10n.town,
                    newModel.accountDetails.town,
                    theme,
                    controller.setTown,
                    (val) {
                      return controller.validate(
                        context.l10n.town,
                        existingModel.accountDetails.town,
                        val,
                        () {
                          return ValidationService.validateString(
                            val,
                            context.l10n.town,
                            context,
                          );
                        },
                      );
                    },
                    controller: _cityController,
                  ),
                  SizedBox(
                    width: textFieldSize,
                    height: 100,
                    //TODO: remove type ahead and use emr picker form field
                    child: TypeAheadField(
                      hideOnEmpty: true,
                      keepSuggestionsOnLoading: false,
                      textFieldConfiguration: TextFieldConfiguration(
                        controller: _postCodeController,
                        decoration: InputDecorationService
                            .getTextFormFieldInputDecoration(
                          context.l10n.postalOrZipCode,
                          context.l10n.postalOrZipCode,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          theme: theme,
                        ),
                        onChanged: controller.setPostCode,
                      ),
                      suggestionsCallback: (pattern) async {
                        if (pattern.length < 4) return [];
                        return [];
                      },
                      itemBuilder: (context, suggestion) {
                        return ListTile(
                          title: Text(suggestion.toString()),
                        );
                      },
                      onSuggestionSelected: (suggestion) {
                        if (suggestion is Address) {
                          _address1Controller.text = suggestion.address1 ?? '';
                          widget.controller
                              .setAddress1(_address1Controller.text);

                          _address2Controller.text =
                              (suggestion.address2 ?? '').isEmpty
                                  ? suggestion.address3 ?? ''
                                  : suggestion.address2 ?? '';
                          widget.controller
                              .setAddress2(_address2Controller.text);

                          _address3Controller.text = suggestion.address3 ?? '';

                          _cityController.text =
                              (suggestion.address4 ?? '').isEmpty
                                  ? suggestion.address5 ?? ''
                                  : suggestion.address4 ?? '';
                          widget.controller.setTown(_cityController.text);

                          _countyController.text = suggestion.address5 ?? '';
                          widget.controller.setCounty(_countyController.text);
                        }
                      },
                    ),
                  ),
                  _textField(
                    textFieldSize,
                    context.l10n.countryOrState,
                    newModel.accountDetails.county,
                    theme,
                    controller.setCounty,
                    (val) {
                      return controller.validate(
                        'county',
                        existingModel.accountDetails.county,
                        val,
                        () {
                          return ValidationService.validateString(
                            val,
                            context.l10n.countryOrState.toLowerCase(),
                            context,
                          );
                        },
                      );
                    },
                    controller: _countyController,
                  ),
                  _textField(
                      textFieldSize,
                      context.l10n.countryCode,
                      newModel.accountDetails.countryCode,
                      theme,
                      controller.setCountryCode, (val) {
                    return controller.validate(
                      'countryCode',
                      existingModel.accountDetails.countryCode,
                      val,
                      () {
                        return ValidationService.validateString(
                          val,
                          context.l10n.countryCode.toLowerCase(),
                          context,
                        );
                      },
                    );
                  }),
                  _textField(
                      textFieldSize,
                      context.l10n.telephoneNumber,
                      newModel.accountDetails.telephoneNumber,
                      theme,
                      controller.setTelephone, (val) {
                    return controller.validate(
                      'telephoneNumber',
                      existingModel.accountDetails.telephoneNumber,
                      val,
                      () {
                        return ValidationService.validateMobileNumberNoEmpty(
                          val,
                          countryId,
                          context,
                        );
                      },
                    );
                  }),
                  _textField(
                      textFieldSize,
                      context.l10n.mobileNumber,
                      newModel.accountDetails.mobileNumber,
                      theme,
                      controller.setMobileNumber, (val) {
                    return controller.validate(
                      'mobileNumber',
                      existingModel.accountDetails.mobileNumber,
                      val,
                      () {
                        return ValidationService.validateMobileNumberNoEmpty(
                          val,
                          countryId,
                          context,
                        );
                      },
                    );
                  }),
                  _textField(
                      textFieldSize,
                      context.l10n.faxNumber,
                      newModel.accountDetails.faxNumber,
                      theme,
                      controller.setFaxNumber, (val) {
                    return controller.validate(
                      'faxNumber',
                      existingModel.accountDetails.faxNumber,
                      val,
                      () {
                        return ValidationService.validateMobileNumberNoEmpty(
                          val,
                          countryId,
                          context,
                        );
                      },
                    );
                  }),
                  _textField(
                      textFieldSize,
                      context.l10n.website,
                      newModel.accountDetails.website,
                      theme,
                      controller.setWebsite, (val) {
                    return controller.validate(
                      context.l10n.website.toLowerCase(),
                      existingModel.accountDetails.website,
                      val,
                      () {
                        return ValidationService.validateWebsite(
                          val,
                          context,
                        );
                      },
                    );
                  }),
                  _textField(
                      textFieldSize,
                      context.l10n.vatRegNumber,
                      newModel.accountDetails.vatNumber,
                      theme,
                      controller.setVatNumber, (val) {
                    return controller.validate(
                      'vatNumber',
                      existingModel.accountDetails.vatNumber,
                      val,
                      () {
                        return ValidationService.validateVatNumber(
                          val,
                          context,
                        );
                      },
                    );
                  }),
                  _textField(
                      textFieldSize,
                      context.l10n.eoriNumber,
                      newModel.accountDetails.eoriNumber,
                      theme,
                      controller.setEoriNumber, (val) {
                    return controller.validate(
                      'eoriNumber',
                      existingModel.accountDetails.eoriNumber,
                      val,
                      () {
                        return ValidationService.validateEoriNumber(
                          val,
                          context,
                        );
                      },
                    );
                  }),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: Insets.gutter),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.bankDetails,
                    style: theme.textTheme.labelLarge,
                  ),
                  Text(
                    context.l10n.editBankInformationNote,
                    style: theme.textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(
            Insets.gutter,
            Insets.gutter,
            Insets.gutter,
            0,
          ),
          child: Column(
            children: [
              Wrap(
                spacing: 10,
                children: [
                  _textField(textFieldSize, context.l10n.accountNumber,
                      newModel.bankDetails.accountNumber, theme, (val) {
                    controller.setAccountNumber(
                      val,
                      setBankName,
                      countryId,
                      context,
                    );
                  }, (val) {
                    return controller.validate(
                      'accountNumber',
                      existingModel.bankDetails.accountNumber,
                      val,
                      () {
                        return ValidationService.validateAccountNumber(
                          val,
                          paidIntoAccount: true,
                          context,
                        );
                      },
                    );
                  }),
                  _textField(textFieldSize, context.l10n.sortCode,
                      newModel.bankDetails.sortCode, theme, (val) {
                    controller.setSortCode(
                      val,
                      setBankName,
                      countryId,
                      context,
                    );
                  }, (val) {
                    return controller.validate(
                      'sortCode',
                      existingModel.bankDetails.sortCode,
                      val,
                      () {
                        return ValidationService.validateSortCode(
                          val,
                          paidIntoAccount: true,
                          context,
                        );
                      },
                    );
                  }),
                  _textField(
                      textFieldSize,
                      context.l10n.ref,
                      newModel.bankDetails.ref,
                      theme,
                      controller.setRef, (val) {
                    return controller.validate(
                      'ref',
                      existingModel.bankDetails.ref,
                      val,
                      () {
                        return ValidationService.validateString(
                          val,
                          context.l10n.ref.toLowerCase(),
                          context,
                        );
                      },
                    );
                  }),
                  _textField(
                    textFieldSize,
                    context.l10n.bankName,
                    newModel.bankDetails.bankName,
                    theme,
                    controller.setBankName,
                    (val) {
                      return controller.validate(
                        'bankName',
                        existingModel.bankDetails.bankName,
                        val,
                        () {
                          return ValidationService.validateString(
                            val,
                            newModel.bankDetails.bankName.toLowerCase(),
                            context,
                          );
                        },
                      );
                    },
                    controller: _bankNameController,
                    readOnly: true,
                  ),
                  _textField(
                      textFieldSize,
                      context.l10n.accountName,
                      newModel.bankDetails.accountName,
                      theme,
                      controller.setAccountName, (val) {
                    return controller.validate(
                      'accountName',
                      existingModel.bankDetails.accountName,
                      val,
                      () {
                        return ValidationService.validateString(
                          val,
                          context.l10n.accountName.toLowerCase(),
                          context,
                        );
                      },
                    );
                  }),
                  _textField(
                      textFieldSize,
                      context.l10n.iban.toUpperCase(),
                      newModel.bankDetails.iban,
                      theme,
                      controller.setIban, (val) {
                    return controller.validate(
                      context.l10n.iban.toLowerCase(),
                      existingModel.bankDetails.iban,
                      val,
                      () {
                        return ValidationService.validateString(
                          val,
                          context.l10n.iban.toLowerCase(),
                          context,
                        );
                      },
                    );
                  }),
                  _textField(
                      textFieldSize,
                      context.l10n.swift.toUpperCase(),
                      newModel.bankDetails.swift,
                      theme,
                      controller.setSwift, (val) {
                    return controller.validate(
                      context.l10n.swift.toLowerCase(),
                      existingModel.bankDetails.swift,
                      val,
                      () {
                        return ValidationService.validateString(
                          val,
                          context.l10n.swift.toLowerCase(),
                          context,
                        );
                      },
                    );
                  }),
                  _textField(
                      textFieldSize,
                      context.l10n.paymentMethod,
                      newModel.bankDetails.paymentTerms,
                      theme,
                      readOnly: true,
                      controller.setPaymentTerms, (val) {
                    return controller.validate(
                      'paymentTerms',
                      existingModel.bankDetails.paymentTerms,
                      val,
                      () {
                        return ValidationService.validateString(
                          val,
                          newModel.bankDetails.paymentTerms.toLowerCase(),
                          context,
                        );
                      },
                    );
                  }),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(
            0,
            0,
            Insets.gutter,
            Insets.gutter,
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: colouredButton(
              width: 200,
              text: context.l10n.submitChangeRequest,
              color: controller.errors.isNotEmpty
                  ? theme.disabledColor
                  : theme.primaryColor,
              textColor: theme.colorScheme.onSecondary,
              onPressed: controller.errors.isNotEmpty
                  ? null
                  : () async {
                      await controller.requestChangeInAccountDetails(
                        existingModel,
                        newModel,
                      );
                    },
            ),
          ),
        ),
        verticalSpacer(),
      ],
    );
  }

  Widget _textField(
    double textFieldSize,
    String label,
    String initialValue,
    ThemeData theme,
    void Function(String)? onChanged,
    String? Function(String?)? validator, {
    TextEditingController? controller,
    bool readOnly = false,
  }) {
    return SizedBox(
      width: textFieldSize,
      height: 100,
      child: controller == null
          ? TextFormField(
              decoration:
                  InputDecorationService.getTextFormFieldInputDecoration(
                label,
                label,
                theme: theme,
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              onChanged: onChanged,
              initialValue: initialValue,
              validator: validator,
              readOnly: readOnly,
            )
          : TextFormField(
              decoration:
                  InputDecorationService.getTextFormFieldInputDecoration(
                label,
                label,
                theme: theme,
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              onChanged: onChanged,
              controller: controller,
              validator: validator,
              readOnly: readOnly,
            ),
    );
  }
}
