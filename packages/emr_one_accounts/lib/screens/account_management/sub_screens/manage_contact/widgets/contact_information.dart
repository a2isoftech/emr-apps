import 'package:emr_one_accounts/country_helper.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

final DateTime _minDateOfBirth = DateTime(1900);

String? _dateOfBirthValidator(
  BuildContext context,
  ManageContactController controller,
  String? value,
) {
  final loc = MaterialLocalizations.of(context);
  final max = controller.minDateOfBirth;
  final date = value == null ? null : loc.parseCompactDate(value);

  return Validators.required(value) ??
      (date == null || date.isBefore(_minDateOfBirth) || date.isAfter(max)
          ? context.l10n.dateOfBirthBetween(_minDateOfBirth, max)
          : null);
}

class ContactInformation extends EmrTabBarVerticalViewResponsiveColumnsCard {
  ContactInformation(
    BuildContext context, {
    required super.title,
    required ManageContactController controller,
    super.key,
  }) : super(
         children: [
           EmrPickerFormField(
             labelText: context.l10n.title,
             items: controller.titles,
             itemTitleText: (item) => item,
             binding: controller.data.title,
             validator: Validators.required,
           ),
           EmrTextFormField(
             labelText: context.l10n.firstName,
             binding: controller.data.firstName,
             validator: Validators.required,
           ),
           EmrTextFormField(
             labelText: context.l10n.middleName,
             binding: controller.data.middleName,
           ),
           EmrTextFormField(
             labelText: context.l10n.lastName,
             binding: controller.data.lastName,
             validator: Validators.required,
           ),
           EmrDateFormField(
             labelText: context.l10n.dateOfBirth,
             binding: controller.data.dateOfBirth,
             firstDate: _minDateOfBirth,
             lastDate: controller.minDateOfBirth,
             autovalidateMode: AutovalidateMode.always,
             validator: (v) => _dateOfBirthValidator(context, controller, v),
           ),
           EmrTextFormField(
             labelText: context.l10n.emailAddress,
             hintText: context.l10n.emailAddress,
             binding: controller.data.emailAddress,
             validator: Validators.email,
           ),
           EmrPickerFormField(
             labelText: context.l10n.country,
             items: controller.countries,
             itemTitleText: (item) => getCountryTitle(item.value),
             binding: controller.data.country,
             validator: Validators.required,
           ),
           EmrTextFormField(
             labelText: context.l10n.contactNumber,
             binding: controller.data.contactNumber,
             validator: (value) => Validators.join([
               Validators.required(value),
               Validators.mobileNumber(
                 value,
                 countryCode: controller.isCountryUK()
                     ? 'GB'
                     : controller.data.country.value?.value,
               ),
             ]),
           ),
           EmrTextFormField(
             labelText: context.l10n.faxNumber,
             binding: controller.data.faxNumber,
           ),
           Row(
             children: [
               EmrSwitchFormField(
                 labelText: context.l10n.portalAccess,
                 binding: controller.data.portalEnabled,
               ),
             ],
           ),
         ],
       );
}
