import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/services/inventory_services/location_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class CanModeWidget extends StatelessWidget {
  const CanModeWidget({
    required this.model,
    super.key,
  });
  final WeighbridgeFormData model;

  @override
  Widget build(BuildContext context) {
    return BorderedCardWithTitle(
      title: context.l10n.canMode,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: EmrSwitchFormField(
              labelText: context.l10n.enabled,
              binding: model.canMode.value.enabled,
            ),
          ),
          const SizedBox(width: Insets.gutter),
          Expanded(
            child: EmrPickerFormField<ProductData>(
              labelText: context.l10n.product,
              binding: model.canMode.value.product,
              items: (query) async {
                final products = await context.coreApi.pricingService
                    .getProducts(null, query: '*$query*');
                return products.map(ProductData.fromProduct).toList();
              },
              itemTitleText: (product) => product.code.value,
              itemSubtitleText: (product) => product.description.value,
              enabled: model.canMode.value.enabled,
              validator: (value) {
                if (model.canMode.value.enabled.value) {
                  return Validators.required(value);
                }
                return null;
              },
            ),
          ),
          const SizedBox(width: Insets.gutter),
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: model.yard,
              builder: (context, yard, child) {
                return EmrPickerFormField<InventoryLocation>(
                  labelText: context.l10n.location,
                  binding: model.canMode.value.location,
                  items: (query) =>
                      context.coreApi.inventoryService.getLocations(
                    yardCode: yard?.yardCode ?? '',
                    pattern: query,
                  ),
                  itemTitleText: (location) =>
                      location.code ?? location.description ?? '',
                  enabled:
                      model.fieldsConfigurations.value.enableCanModeLocation,
                );
              },
            ),
          ),
          const SizedBox(width: Insets.gutter),
          // Empty container to take up remaining space
          Expanded(
            child: Container(),
          ),
          const SizedBox(width: Insets.gutter),
          // Empty container to take up remaining space
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
