import 'package:emr_one_accounts/constants.dart';
import 'package:emr_one_accounts/country_helper.dart';
import 'package:emr_one_accounts/screens/account_management/sub_screens/manage_location/controllers/manage_location_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class LocationInformation extends EmrTabBarVerticalViewResponsiveColumnsCard {
  LocationInformation(
    BuildContext context, {
    required super.title,
    required ManageLocationController controller,
    super.key,
  }) : super(
         children: [
           EmrTextFormField(
             labelText: context.l10n.name,
             binding: controller.locationData.name,
             validator: Validators.required,
           ),
           EmrPickerFormField(
             labelText: context.l10n.primaryContact,
             items: controller.contacts,
             itemTitleText: (item) => item.key,
             binding: controller.locationData.primaryContact,
           ),
           EmrTextFormField(
             labelText: context.l10n.locationCode,
             binding: controller.locationData.code,
             enabled: ValueNotifier<bool>(controller.location == null),
             autovalidateMode: AutovalidateMode.onUserInteraction,
             validator: (value) => Validators.join([
               Validators.required(value),
               Validators.length(
                 value,
                 max: ManageLocationFieldLimits.locationCodeMaxLength,
               ),
             ]),
           ),
           EmrPickerFormField(
             labelText: context.l10n.country,
             items: controller.countries,
             itemTitleText: (item) => getCountryTitle(item.value),
             binding: controller.locationData.countryCode,
             validator: Validators.required,
           ),
           EmrTextFormField(
             labelText: context.l10n.latitude,
             binding: controller.locationData.latitude,
             validator: (value) => Validators.join([
               Validators.required(value),
               Validators.decimal(value),
             ]),
           ),
           EmrTextFormField(
             labelText: context.l10n.longitude,
             binding: controller.locationData.longitude,
             validator: (value) => Validators.join([
               Validators.required(value),
               Validators.decimal(value),
             ]),
           ),
           EmrTextFormField(
             labelText: context.l10n.what3Words,
             binding: controller.locationData.what3Words,
             validator: Validators.required,
           ),
           EmrSwitchFormField(
             labelText: context.l10n.sitePermitHolder,
             binding: controller.locationData.isSitePermitHolder,
           ),
           EmrTextFormField(
             labelText: context.l10n.sitePermitExceptionNumber,
             binding: controller.locationData.sitePermitOrExceptionNumber,
             enabled: controller.locationData.isSitePermitHolder,
             autovalidateMode: AutovalidateMode.onUserInteraction,
             validator: (value) =>
                 controller.locationData.isSitePermitHolder.value
                 ? Validators.length(
                     value,
                     max: ManageLocationFieldLimits
                         .sitePermitOrExemptionNumberMaxLength,
                   )
                 : null,
           ),
           
           EmrTextFormField(
             maxLines: 4,
             labelText: context.l10n.description,
             binding: controller.locationData.description,
           ),
         ],
       );
}
