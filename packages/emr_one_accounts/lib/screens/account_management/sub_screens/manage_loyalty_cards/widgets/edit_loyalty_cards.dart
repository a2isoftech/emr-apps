import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EditLoyaltyCards extends EmrTabBarVerticalViewResponsiveColumnsCard {
  EditLoyaltyCards(
    BuildContext context, {
    required ManageLoyaltyCardsController controller,
    required super.title,
    super.key,
  }) : super(
         children: [
           EmrTextFormField(
             labelText: context.l10n.code,
             binding: controller.data.code,
             enabled: ValueNotifier<bool>(controller.loyaltyCard == null),
             validator: (value) {
               if (value == null || value.trim().isEmpty) {
                 return Validators.required(value);
               }

               if (value.length > _maxCodeLength) {
                 return context.l10n.codeMaxLengthError(_maxCodeLength);
               }
               return null;
             },
           ),
           EmrDateFormField(
             labelText: context.l10n.issueDate,
             binding: controller.data.issueDate,
             validator: Validators.required,
           ),
         ],
       );
  static const int _maxCodeLength = 50;
}
