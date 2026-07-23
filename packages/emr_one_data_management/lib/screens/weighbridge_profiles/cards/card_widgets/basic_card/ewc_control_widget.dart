import 'package:emr_core_api/extensions/build_context_extensions.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:flutter/material.dart';

class EwcControlWidget extends StatelessWidget {
  const EwcControlWidget({
    required this.model,
    super.key,
  });

  final WeighbridgeFormData model;

  @override
  Widget build(BuildContext context) {
    return BorderedCardWithTitle(
      title: context.l10n.ewcControl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: EmrSwitchFormField(
                  labelText: context.l10n.enabled,
                  binding: model.ewcControl.value.enabled,
                ),
              ),
              const SizedBox(width: Insets.gutter),
              Expanded(
                child: ValueListenableBuilder<bool>(
                  valueListenable: model.ewcControl.value.enabled,
                  builder: (context, enabled, _) {
                    return ValueListenableBuilder<CommoditySourceTypesData?>(
                      valueListenable:
                          model.ewcControl.value.commoditySourceType,
                      builder: (context, selected, _) {
                        return EmrPickerFormField<CommoditySourceTypesData>(
                          labelText: context.l10n.arisingClass,
                          binding: model.ewcControl.value.commoditySourceType,
                          items: (String query) async {
                            final types = await context.coreApi.ticketService
                                .commodityServiceTypes(query);
                            return types
                                .map(
                                  CommoditySourceTypesData
                                      .fromCommoditySourceTypes,
                                )
                                .toList();
                          },
                          itemTitleText: (d) =>
                              d.commoditySourceTypeName.value ?? '',
                          enabled: ValueNotifier(enabled),
                        );
                      },
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
              Expanded(
                child: EmrSwitchFormField(
                  labelText: context.l10n.partyWasteStreamLabel,
                  binding: model.ewcControl.value.enablePartyWasteStream,
                  enabled: model.ewcControl.value.enabled,
                ),
              ),
              const SizedBox(width: Insets.gutter),
              // Empty container to take up remaining space
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
