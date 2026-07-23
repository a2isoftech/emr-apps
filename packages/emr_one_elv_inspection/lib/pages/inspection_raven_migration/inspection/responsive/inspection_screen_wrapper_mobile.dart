import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/rounded_tab_selector_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/generic/inspection_header.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/subscreens/documents_subscreen.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/subscreens/vehicle_offered_price_subscreen.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/subscreens/vehicle_parts_mobile_subscreen.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/subscreens/vehicle_pictures_subscreen.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/subscreens/vehicle_subheader_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InspectionScreenWrapperMobile extends StatelessWidget {
  const InspectionScreenWrapperMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionController>(context);

    final vehicleDetail = controller.state.vehicleQuote.vehicleInfo.detail;

    final title =
        '${vehicleDetail.year} '
        '${vehicleDetail.make} '
        '${vehicleDetail.model}';

    return Column(
      children: [
        Container(
          color: Theme.of(context).colorScheme.primary,
          padding: const EdgeInsets.symmetric(
            vertical: Insets.gutter / 2,
            horizontal: Insets.gutter / 4,
          ),
          child: InspectionHeader(
            title: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: context.l10n.inspection,
                    style: Theme.of(context).primaryTextTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: title,
                    style: Theme.of(context).primaryTextTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            subTitle: VehicleSubHeaderDetailsPrice(
              vehicleDetail: vehicleDetail,
              quoteSource: controller.state.vehicleQuote.quoteSource,
              deviceType: DeviceTypeEnum.mobile,
            ),
            vehiclePrice: controller.activeTerritory != ElvTerritory.uk
                ? null
                : VehicleOfferedPriceSubScreen(
                    offeredPrice:
                        controller.state.vehicleQuote.vehiclePriceDetail.price,
                    totalCatPrice: controller
                        .state
                        .vehicleQuote
                        .vehiclePriceDetail
                        .totalCatPrice,
                    deviceType: DeviceTypeEnum.mobile,
                  ),
          ),
        ),
        Expanded(
          child: RoundedTabSelectorWidget(
            tabs: _menuTabs(context, controller.activeTerritory),
            widgets: _widgetTabs(context, controller.activeTerritory),
            activeTab: _activeTab(
              context,
              controller.activeTerritory,
              controller.state.activeTab,
            ),
            onChanged: (index) {
              controller.changeTab(
                _selectedTab(controller.activeTerritory, index),
              );
            },
          ),
        ),
      ],
    );
  }

  List<String> _menuTabs(BuildContext context, ElvTerritory territory) {
    final tabs = [
      context.l10n.pictures,
      context.l10n.documents,
      context.l10n.parts,
    ];
    if (territory == ElvTerritory.usa) {
      tabs.removeAt(1);
    }
    return tabs;
  }

  List<Widget> _widgetTabs(BuildContext context, ElvTerritory territory) {
    final tabs = [
      const VehiclePicturesSubScreen(deviceType: DeviceTypeEnum.mobile),
      const DocumentsSubScreen(),
      const VehiclePartsSubScreenMobile(),
    ];
    if (territory == ElvTerritory.usa) {
      tabs.removeAt(1);
    }
    return tabs;
  }

  String _activeTab(
    BuildContext context,
    ElvTerritory territory,
    InspectionTabs activeTab,
  ) {
    var selectedTab = activeTab;
    if (territory == ElvTerritory.usa && activeTab.index > 0) {
      selectedTab = InspectionTabs.values[activeTab.index - 1];
    }
    return _menuTabs(context, territory)[selectedTab.index];
  }

  InspectionTabs _selectedTab(ElvTerritory territory, int index) {
    var selectedIndex = index;
    if (territory == ElvTerritory.usa && index > 0) {
      selectedIndex = index + 1;
    }
    return InspectionTabs.values[selectedIndex];
  }
}
