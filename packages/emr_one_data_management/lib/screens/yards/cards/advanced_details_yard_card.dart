import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/yards/yard_form_data.dart';
import 'package:emr_sharedtypes/enums/enums.dart';
import 'package:flutter/material.dart';

class AdvancedDetailsYardCard extends EmrTabBarVerticalViewCard {
  AdvancedDetailsYardCard({
    required super.title,
    required YardFormData model,
    super.key,
  }) : super(
         child: Column(
           children: [
             Row(
               children: [
                 Expanded(
                   child: Column(
                     children: [
                       EmrTextFormField(
                         labelText: 'ATF Code',
                         binding: model.atfCode,
                       ),
                     ],
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 const Spacer(),
               ],
             ),
             Row(
               children: [
                 Expanded(
                   child: EmrTextFormField(
                     labelText: 'DVLA Code',
                     binding: model.dvlaCode,
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: EmrTextFormField(
                     labelText: 'DVLA Username',
                     binding: model.dvlaUsername,
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: EmrTextFormField(
                     labelText: 'DVLA Password',
                     binding: model.dvlaPassword,
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: EmrSwitchFormField(
                     labelText: 'Post to DVLA',
                     binding: model.postToDVLA,
                   ),
                 ),
               ],
             ),
             Row(
               children: [
                 Expanded(
                   child: Column(
                     children: [
                       EmrTextFormField(
                         labelText: 'Default Retail Account Pool',
                         binding: model.defaultRetailAccountPool,
                       ),
                     ],
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: Column(
                     children: [
                       EmrPickerFormField<PaymentSystemEnum>(
                         validator: Validators.required,
                         labelText: 'Primary Cashier Payment System',
                         binding: model.primaryCashierPaymentSystem,
                         items: (searchText) =>
                             Future.value(PaymentSystemEnum.values),
                         itemTitleText: (item) => item.name.toUpperCase(),
                       ),
                     ],
                   ),
                 ),
               ],
             ),
             Row(
               children: [
                 Expanded(
                   child: Column(
                     children: [
                       EmrTextFormField(
                         labelText: 'Waste Carrier Reg No',
                         binding: model.wasteCarrierRegNo,
                       ),
                     ],
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: Column(
                     children: [
                       EmrTextFormField(
                         labelText: 'Wml Exemption No',
                         binding: model.wmlExemptionNo,
                       ),
                     ],
                   ),
                 ),
               ],
             ),
             Row(
               children: [
                 Expanded(
                   child: Column(
                     children: [
                       EmrTextFormField(
                         labelText: 'Prepay Card Issuer Id',
                         binding: model.prepayCardIssuerId,
                       ),
                     ],
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: Column(
                     children: [
                       EmrTextFormField(
                         labelText: 'Document Branding Level Id',
                         binding: model.documentBrandingLevelId,
                       ),
                     ],
                   ),
                 ),
               ],
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Expanded(
                   child: Column(
                     children: [
                       ValueListenableBuilder(
                         valueListenable: model.promptForPhotoDefault,
                         builder: (context, value, child) {
                           return SwitchListTile(
                             contentPadding: EdgeInsets.zero,
                             controlAffinity: ListTileControlAffinity.leading,
                             title: const Text(
                               'Prompt for Retail Account Photo',
                             ),
                             value: model.promptForPhotoDefault.value,
                             onChanged: (bool? value) {
                               model.promptForPhotoDefault.value =
                                   value ?? false;
                             },
                           );
                         },
                       ),
                     ],
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: Column(
                     children: [
                       ValueListenableBuilder(
                         valueListenable: model.restrictOffsetsToAdvancingYard,
                         builder: (context, value, child) {
                           return SwitchListTile(
                             contentPadding: EdgeInsets.zero,
                             controlAffinity: ListTileControlAffinity.leading,
                             title: const Text(
                               'Restrict Offsets To Advancing Yards',
                             ),
                             value: model.restrictOffsetsToAdvancingYard.value,
                             onChanged: (bool? value) {
                               model.restrictOffsetsToAdvancingYard.value =
                                   value ?? false;
                             },
                           );
                         },
                       ),
                     ],
                   ),
                 ),
               ],
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Expanded(
                   child: Column(
                     children: [
                       ValueListenableBuilder(
                         valueListenable: model.blockExpiredUtilityBill,
                         builder: (context, value, child) {
                           return SwitchListTile(
                             contentPadding: EdgeInsets.zero,
                             controlAffinity: ListTileControlAffinity.leading,
                             title: const Text('Block Expired Utility Bill'),
                             value: model.blockExpiredUtilityBill.value,
                             onChanged: (bool? value) {
                               model.blockExpiredUtilityBill.value =
                                   value ?? false;
                             },
                           );
                         },
                       ),
                     ],
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: Column(
                     children: [
                       ValueListenableBuilder(
                         valueListenable: model.enforceIssueDateForUtilityBill,
                         builder: (context, value, child) {
                           return SwitchListTile(
                             contentPadding: EdgeInsets.zero,
                             controlAffinity: ListTileControlAffinity.leading,
                             title: const Text(
                               'Enforce Issue Date For Utility Bill',
                             ),
                             value: model.enforceIssueDateForUtilityBill.value,
                             onChanged: (bool? value) {
                               model.enforceIssueDateForUtilityBill.value =
                                   value ?? false;
                             },
                           );
                         },
                       ),
                     ],
                   ),
                 ),
               ],
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Expanded(
                   child: Column(
                     children: [
                       ValueListenableBuilder(
                         valueListenable: model.suppressManualTareOnRemittance,
                         builder: (context, value, child) {
                           return SwitchListTile(
                             contentPadding: EdgeInsets.zero,
                             controlAffinity: ListTileControlAffinity.leading,
                             title: const Text(
                               'Suppress Manual Tare On Remittance',
                             ),
                             value: model.suppressManualTareOnRemittance.value,
                             onChanged: (bool? value) {
                               model.suppressManualTareOnRemittance.value =
                                   value ?? false;
                             },
                           );
                         },
                       ),
                     ],
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: Column(
                     children: [
                       ValueListenableBuilder(
                         valueListenable: model.gradeDescOverride,
                         builder: (context, value, child) {
                           return SwitchListTile(
                             contentPadding: EdgeInsets.zero,
                             controlAffinity: ListTileControlAffinity.leading,
                             title: const Text('Grade Desc Override'),
                             value: model.gradeDescOverride.value,
                             onChanged: (bool? value) {
                               model.gradeDescOverride.value = value ?? false;
                             },
                           );
                         },
                       ),
                     ],
                   ),
                 ),
               ],
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Expanded(
                   child: Column(
                     children: [
                       ValueListenableBuilder(
                         valueListenable: model.autoCreateInwardInterdepot,
                         builder: (context, value, child) {
                           return SwitchListTile(
                             contentPadding: EdgeInsets.zero,
                             controlAffinity: ListTileControlAffinity.leading,
                             title: const Text(
                               'Auto Create Inward Inter depot',
                             ),
                             value: model.autoCreateInwardInterdepot.value,
                             onChanged: (bool? value) {
                               model.autoCreateInwardInterdepot.value =
                                   value ?? false;
                             },
                           );
                         },
                       ),
                     ],
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: Column(
                     children: [
                       ValueListenableBuilder(
                         valueListenable: model.autoCreateOutwardInterdepot,
                         builder: (context, value, child) {
                           return SwitchListTile(
                             contentPadding: EdgeInsets.zero,
                             controlAffinity: ListTileControlAffinity.leading,
                             title: const Text(
                               'Auto Create Outward Inter depot',
                             ),
                             value: model.autoCreateOutwardInterdepot.value,
                             onChanged: (bool? value) {
                               model.autoCreateOutwardInterdepot.value =
                                   value ?? false;
                             },
                           );
                         },
                       ),
                     ],
                   ),
                 ),
               ],
             ),
           ],
         ),
       );
}
