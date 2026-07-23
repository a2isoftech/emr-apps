import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class PublicationInformation
    extends EmrTabBarVerticalViewResponsiveColumnsCard {
  PublicationInformation(
    BuildContext context, {
    required super.title,
    required List<String> publicationIds,
    required ManagePublicationsController controller,

    super.key,
  }) : super(
         children: [
           EmrPickerFormField(
             labelText: context.l10n.publications,
             items: (query) => controller.publications(publicationIds),
             itemTitleText: (item) => item.value,
             binding: controller.data.newPublication,
             validator: Validators.required,
             readOnly: controller.isInEditMode,
           ),
         ],
       );
}
