import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/services/inventory_services/location_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/extensions/weighbridge/lead_source_extensions.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ElvConfigurationsWidget extends StatelessWidget {
  const ElvConfigurationsWidget({
    required this.model,
    super.key,
  });
  final WeighbridgeFormData model;

  @override
  Widget build(BuildContext context) {
    return BorderedCardWithTitle(
      title: context.l10n.elvCoinfigurations,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: EmrPickerFormField<ProductData>(
              labelText: context.l10n.elvProduct,
              binding: model.elvSettings.value.product,
              itemTitleText: (product) => product.code.value,
              itemSubtitleText: (product) => product.description.value,
              items: (query) async {
                final products = await context.coreApi.pricingService
                    .getProducts(null, query: '*$query*');
                return products.map(ProductData.fromProduct).toList();
              },
            ),
          ),
          const SizedBox(width: Insets.gutter),
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: model.yard,
              builder: (context, yard, child) {
                return EmrPickerFormField<InventoryLocation>(
                  labelText: context.l10n.elvLocation,
                  binding: model.elvSettings.value.location,
                  items: (query) async {
                    final locations =
                        await context.coreApi.inventoryService.getLocations(
                      yardCode: yard?.yardCode ?? '',
                      pattern: query,
                    );
                    return locations;
                  },
                  itemTitleText: (location) =>
                      location.code ?? location.description ?? '',
                  enabled: model.fieldsConfigurations.value.yardSelected,
                );
              },
            ),
          ),
          const SizedBox(width: Insets.gutter),
          Expanded(
            child: EmrMultiPickerFormField<LeadSource>(
              labelText: context.l10n.enforceELVInspectionForLeadSources,
              items: (query) {
                return Future.value(
                  LeadSource.values
                      .where((leadSource) =>
                          leadSource.name.contains(query) &&
                          leadSource != LeadSource.none,)
                      .toList(),
                );
              },
              binding:
                  model.elvSettings.value.enforceELVInspectionForLeadSources,
              itemTitleText: (item) => item.localizedLabel(context),
            ),
          ),
        ],
      ),
    );
  }
}
