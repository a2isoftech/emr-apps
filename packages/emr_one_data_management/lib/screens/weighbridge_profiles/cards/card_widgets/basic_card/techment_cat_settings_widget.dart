import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/services/inventory_services/location_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class TechmentCatSettingsWidget extends StatelessWidget {
  const TechmentCatSettingsWidget({
    required this.model,
    required this.uomService,
    required this.uoms,
    super.key,
  });
  final WeighbridgeFormData model;
  final UomService uomService;
  final ValueNotifier<List<Uom>> uoms;
  @override
  Widget build(BuildContext context) {
    return BorderedCardWithTitle(
      title: context.l10n.techmetCatSettings,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: EmrSwitchFormField(
              labelText: context.l10n.enabled,
              binding: model.techemetCatSettings.value.enabled,
            ),
          ),
          const SizedBox(width: Insets.gutter),
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: model.techemetCatSettings.value.enabled,
              builder: (context, enabled, child) => EmrTextFormField<double?>(
                labelText: context.l10n.defaultWeight,
                binding: model.techemetCatSettings.value.defaultWeight,
                enabled: model.techemetCatSettings.value.enabled,
                validator: (value) {
                  if (model.techemetCatSettings.value.enabled.value &&
                      (value?.isNotEmpty ?? false)) {
                    return Validators.integer(value, min: 1);
                  }
                  return null;
                },
              ),
            ),
          ),
          const SizedBox(width: Insets.gutter),
          Expanded(
            child: EmrPickerFormField<Uom>(
              labelText: context.l10n.defaultWeightUom,
              binding: model.techemetCatSettings.value.defaultWeightUom,
              items: (_) => Future.value(uoms.value),
              itemTitleText: (item) => item.uomCode.replaceAll('XX', ''),
              itemSubtitleText: (item) => item.uomCode,
              enabled: model.techemetCatSettings.value.enabled,
              validator: (value) {
                if (!model.techemetCatSettings.value.enabled.value) {
                  return null;
                }

                final validation = Validators.required(value);

                if (validation != null && uoms.value.isEmpty) {
                  if (!model.fieldsConfigurations.value.yardSelected.value) {
                    return context.l10n.yardRequiredToLoadUoms;
                  } else {
                    return context.l10n.territoryRequiredToLoadUoms;
                  }
                } else {
                  final territory =
                      model.yard.value?.company?.territory?.code ?? '';
                  if (model.techemetCatSettings.value.defaultWeightUom.value !=
                          null &&
                      !uomService.uomValidForTerritory(
                        model.techemetCatSettings.value.defaultWeightUom.value!,
                        territory,
                      )) {
                    return context.l10n.invalidUOMForYard(
                      model.weighbridgeUom.value!.uomCode.replaceAll('XX', ''),
                      model.yard.value!.yardCode,
                    );
                  }
                }
                return validation;
              },
            ),
          ),
          const SizedBox(width: Insets.gutter),
          Expanded(
            child: EmrPickerFormField<ProductData>(
              items: (query) async {
                final products = await context.coreApi.pricingService
                    .getProducts(null, query: '*$query*');

                return products.map(ProductData.fromProduct).toList();
              },
              labelText: context.l10n.defaultProduct,
              binding: model.techemetCatSettings.value.defaultProduct,
              itemTitleText: (product) => product.code.value,
              itemSubtitleText: (product) => product.description.value,
              enabled: model.techemetCatSettings.value.enabled,
              validator: (value) {
                if (model.techemetCatSettings.value.enabled.value) {
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
                  binding: model.techemetCatSettings.value.defaultLocation,
                  items: (query) =>
                      context.coreApi.inventoryService.getLocations(
                    yardCode: yard?.yardCode ?? '',
                    pattern: query,
                  ),
                  itemTitleText: (location) =>
                      location.code ?? location.description ?? '',
                  enabled: model.fieldsConfigurations.value
                      .enableTechmetCatSettingsLocation,
                  validator: (value) {
                    if (model.techemetCatSettings.value.enabled.value &&
                        model.fieldsConfigurations.value
                            .enableTechmetCatSettingsLocation.value) {
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
    );
  }
}
