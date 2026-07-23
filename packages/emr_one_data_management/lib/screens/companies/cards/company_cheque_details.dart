import 'dart:convert';

import 'package:emr_core_api/extensions/build_context_extensions.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/companies/companies.dart';
import 'package:emr_one_data_management/screens/companies/widgets/signature_dialog.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CompanyChequeDetails extends EmrTabBarVerticalViewCard {
  CompanyChequeDetails({
    required super.title,
    required CompanyFormData companyFormData,
    required BuildContext context,
    super.key,
  }) : super(
         child: Column(
           crossAxisAlignment: .start,
           children: [
             EmrTextFormField(
               labelText: 'Value Required for Two Signatures on a Cheque',
               hintText: 'e.g. 10000',
               binding: companyFormData.valueRequiredForTwoSignaturesOnCheque,
               validator: Validators.required,
             ),
             ValueListenableBuilder(
               valueListenable: companyFormData.chequeSignatures,
               builder: (context, value, child) {
                 if (value.isEmpty) {
                   return const Text(
                     'No Signatures held. Please add to Sign Checks.',
                   );
                 }

                 return Wrap(
                   runSpacing: Insets.gutter / 2,
                   children: [
                     ...value.map(
                       (e) => Card(
                         child: Column(
                           children: [
                             Padding(
                               padding: const .all(Insets.gutter / 2),
                               child: Image.memory(
                                 base64Decode(e),
                                 height: 200,
                                 width: 250,
                               ),
                             ),
                             Padding(
                               padding: const .all(Insets.gutter / 2),
                               child: ElevatedButton(
                                 child: const Text('Remove Signature'),
                                 onPressed: () async {
                                   final company = companyFormData.toCompany();
                                   final result = await context
                                       .coreApi
                                       .referenceData
                                       .removeCompanySignatures(
                                         company,
                                         companyFormData.chequeSignatures.value
                                             .indexOf(e),
                                       );
                                   if (result.success) {
                                     companyFormData.chequeSignatures.value
                                         .remove(e);
                                     companyFormData.chequeSignatures.value = [
                                       ...companyFormData
                                           .chequeSignatures
                                           .value,
                                     ];
                                     if (!context.mounted) {
                                       return;
                                     }

                                     await EmrModal.showMessageBar(
                                       context,
                                       'Signature Removed',
                                     );
                                   } else {
                                     if (!context.mounted) {
                                       return;
                                     }

                                     await EmrModal.showMessageBar(
                                       context,
                                       result.message,
                                       messageType: MessageBarTypes.error,
                                     );
                                     return;
                                   }
                                 },
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                   ],
                 );
               },
             ),
           ],
         ),
         actions: {
           CardAddActionIntent: CardAddAction(
             context,
             createIntent: (context) => CardAddActionIntent(context: context),
             onAction: () {
               final tempImage = ValueNotifier<XFile?>(null);
               final loading = ValueNotifier<bool>(false);

               EmrDialog.modal<bool>(
                 context,
                 builder: (_) => SignatureDialog(
                   selectedImageNotifier: tempImage,
                   loading: loading,
                 ),
                 onAccept: () async {
                   if (tempImage.value != null) {
                     loading.value = true;
                     final company = companyFormData.toCompany();
                     final imageBase64 = base64Encode(
                       await tempImage.value!.readAsBytes(),
                     );
                     if (context.mounted) {
                       final result = await context.coreApi.referenceData
                           .addCompanySignatures(company, imageBase64);

                       if (result.success && context.mounted) {
                         companyFormData.chequeSignatures.value = [
                           ...companyFormData.chequeSignatures.value,
                           imageBase64,
                         ];
                         context.pop();

                         if (context.mounted) {
                           await EmrModal.showMessageBar(
                             context,
                             'Signature Added',
                           );
                         }
                       } else {
                         if (!context.mounted) {
                           return;
                         }

                         await EmrModal.showMessageBar(
                           context,
                           result.message,
                           messageType: .error,
                         );
                         return;
                       }
                     }
                   }
                 },
                 onCancel: () {
                   tempImage.value = null;
                   context.pop();
                 },
                 titleText: 'Add Signature',
               );
             },
           ),
         },
       );
}
