import 'package:emr_core_api/extensions/build_context_extensions.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/screens.dart';
import 'package:flutter/material.dart';

class AutoHulkAffidavitWidget extends StatelessWidget {
  const AutoHulkAffidavitWidget({required this.model, super.key});

  final WeighbridgeFormData model;
  @override
  Widget build(BuildContext context) {
    return BorderedCardWithTitle(
      title: context.l10n.autoHulkAffidavit,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: EmrSwitchFormField(
                  labelText: context.l10n.enabled,
                  binding: model.autoHulkAffidavitControl.value.enabled,
                ),
              ),
              const SizedBox(width: Insets.gutter),
              Expanded(
                child: ValueListenableBuilder(
                  valueListenable:
                      model.autoHulkAffidavitControl.value.productData,
                  builder: (context, productData, child) {
                    return EmrMultiPickerFormField<ProductData>(
                      items: (query) async {
                        final products = await context.coreApi.pricingService
                            .getProducts(null, query: '*$query*');
                        return products
                            .where(
                              (x) => !productData
                                  .map((y) => y.code.value)
                                  .contains(x.code),
                            )
                            .map(ProductData.fromProduct)
                            .toList();
                      },
                      itemTitleText: (product) => product.code.value,
                      labelText: context.l10n.allowedProducts,
                      itemSubtitleText: (product) => product.description.value,
                      binding: model.autoHulkAffidavitControl.value.productData,
                      enabled: model.autoHulkAffidavitControl.value.enabled,
                      validator: (value) {
                        if (model
                            .autoHulkAffidavitControl
                            .value
                            .enabled
                            .value) {
                          return Validators.required(value);
                        }
                        return null;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
