import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class EditProductEWC extends EmrTabBarVerticalViewResponsiveColumnsCard {
  EditProductEWC(
    BuildContext context, {
    required ManageProductEWCController controller,
    required super.title,
    super.key,
  }) : super(
         children: [
           ValueListenableBuilder<Product?>(
             valueListenable: controller.data.product,
             builder: (context, selectedProduct, _) {
               return EmrPickerFormField<Product>(
                 labelText: context.l10n.product,
                 binding: controller.data.product,
                 enabled: ValueNotifier<bool>(controller.productEWC == null),
                 items: controller.getAvailableProducts,
                 itemTitleText: (item) => '${item.code} - ${item.description}',
                 validator: (productText) {
                   if (productText == null || productText.trim().isEmpty) {
                     return Validators.required(productText);
                   }

                   final currentProduct = controller.data.product.value;
                   if (currentProduct == null) {
                     return context.l10n.productNotSelected;
                   }

                   if (controller.data.productEWCs.isNotEmpty) {
                     final isDuplicate = controller.data.productEWCs.any(
                       (existing) =>
                           existing.product.id == currentProduct.id &&
                           (controller.productEWC == null ||
                               controller.productEWC!.product.id !=
                                   existing.product.id),
                     );

                     if (isDuplicate) {
                       return context.l10n.productEwcAlreadyExist;
                     }
                   }

                   return null;
                 },
               );
             },
           ),
           EmrTextFormField(
             labelText: context.l10n.ewcCode,
             binding: controller.data.eWCCode,
             validator: (value) {
               final trimmed = value?.trim() ?? '';

               if (trimmed.isEmpty) {
                 return Validators.required(value);
               }

               if (trimmed.length > _maxEwcCodeLength) {
                 return context.l10n.codeMaxLengthError(_maxEwcCodeLength);
               }

               return null;
             },
           ),
         ],
       );
  static const int _maxEwcCodeLength = 50;
}
