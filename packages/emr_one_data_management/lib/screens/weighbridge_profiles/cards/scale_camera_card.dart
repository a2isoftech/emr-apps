import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeighbridgeScaleCameraCard extends EmrTabBarVerticalViewCard {
  WeighbridgeScaleCameraCard({
    required super.title,
    required BuildContext context,
    required WeighbridgeScaleCameraData model,
    required void Function(WeighbridgeScaleCameraData) deleteCamera,
    super.key,
  }) : super(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             ValueListenableBuilder(
               valueListenable: model.name,
               builder: (_, __, ___) {
                 return WeighbridgeProfileSectionHeader(
                   iconData: FontAwesomeIcons.camera,
                   text: model.name.value,
                   onDelete: () => deleteCamera(model),
                 );
               },
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Expanded(
                   child: EmrTextFormField(
                     labelText: context.l10n.cameraName,
                     binding: model.name,
                     autovalidateMode: AutovalidateMode.onUserInteraction,
                     validator: (name) {
                       final requiredValidatorResult = Validators.required(
                         name,
                       );
                       if (requiredValidatorResult == null &&
                           !name!.validateName()) {
                         return context
                             .l10n
                             .onlyLettersNumbersHyphensSpacesAllowed;
                       }
                       return requiredValidatorResult;
                     },
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: EmrTextFormField(
                     labelText: context.l10n.ipAddress,
                     binding: model.ipAddress,
                     autovalidateMode: AutovalidateMode.onUserInteraction,
                     validator: Validators.required,
                   ),
                 ),
               ],
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Expanded(
                   child: EmrTextFormField(
                     labelText: context.l10n.username,
                     binding: model.userName,
                     autovalidateMode: AutovalidateMode.onUserInteraction,
                     validator: Validators.required,
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: EmrTextFormField(
                     labelText: context.l10n.password,
                     binding: model.password,
                     autovalidateMode: AutovalidateMode.onUserInteraction,
                     validator: Validators.required,
                   ),
                 ),
               ],
             ),

             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Expanded(
                   child: EmrTextFormField(
                     labelText: context.l10n.imageUrl,
                     binding: model.imageUrl,
                     autovalidateMode: AutovalidateMode.onUserInteraction,
                     validator: (value) => Validators.join([
                       Validators.required(value),
                       Validators.url(value),
                     ]),
                   ),
                 ),
                 const SizedBox(width: Insets.gutter),
                 Expanded(
                   child: EmrTextFormField(
                     labelText: context.l10n.videoUrl,
                     binding: model.videoUrl,
                     autovalidateMode: AutovalidateMode.onUserInteraction,
                     validator: (value) => Validators.join([
                       Validators.required(value),
                       Validators.url(value),
                     ]),
                   ),
                 ),
               ],
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Expanded(
                   child: EmrTextFormField(
                     labelText: context.l10n.overlayUrl,
                     binding: model.overlayUrl,
                     autovalidateMode: AutovalidateMode.onUserInteraction,
                     validator: (value) => Validators.join([
                       Validators.required(value),
                       Validators.url(value),
                     ]),
                   ),
                 ),
                 // Empty container to take up remaining space
                 Expanded(child: Container()),
               ],
             ),
           ],
         ),
       );
}
