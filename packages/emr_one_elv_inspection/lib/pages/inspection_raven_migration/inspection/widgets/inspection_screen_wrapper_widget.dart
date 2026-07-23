import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_elv_core/emr_one_elv_core.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/generic/inspection_header.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/state_screens/contact_support_screen.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/state_screens/failed_screen.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/state_screens/loading_screen.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/inspection_screen_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/modular/state_screens/complete_screen.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/subscreens/vehicle_offered_price_subscreen.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/subscreens/vehicle_subheader_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InspectionScreenWrapperWidget extends StatefulWidget {
  const InspectionScreenWrapperWidget({required this.deviceType, super.key});
  final DeviceTypeEnum deviceType;

  @override
  State<InspectionScreenWrapperWidget> createState() =>
      _InspectionScreenWrapperWidgetState();
}

class _InspectionScreenWrapperWidgetState
    extends State<InspectionScreenWrapperWidget> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionController>(context);
    final vehicleDetail = controller.state.vehicleQuote.vehicleInfo.detail;
    return ElvScreenWrapper(
      header: InspectionHeader(
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: context.l10n.inspection,
                style: Theme.of(
                  context,
                ).primaryTextTheme.bodyLarge!.copyWith(fontSize: 18),
              ),
              TextSpan(
                text:
                    '${vehicleDetail.year} '
                    '${vehicleDetail.make} '
                    '${vehicleDetail.model}',
                style: Theme.of(
                  context,
                ).primaryTextTheme.bodyLarge!.copyWith(fontSize: 18),
              ),
            ],
          ),
        ),
        subTitle: VehicleSubHeaderDetailsPrice(
          vehicleDetail: vehicleDetail,
          quoteSource: controller.state.vehicleQuote.quoteSource,
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
                deviceType: widget.deviceType,
              ),
        tabs: [
          ElvTab(
            heading: context.l10n.pictures,
            onTap: () {
              controller.changeTab(InspectionTabs.vehiclePictures);
            },
            selected:
                controller.state.activeTab == InspectionTabs.vehiclePictures,
          ),
          if (controller.activeTerritory == ElvTerritory.uk) ...{
            ElvTab(
              heading: context.l10n.documents,
              onTap: () {
                controller.changeTab(InspectionTabs.documents);
              },
              selected: controller.state.activeTab == InspectionTabs.documents,
            ),
          },
          ElvTab(
            heading: context.l10n.parts,
            onTap: () {
              controller.changeTab(InspectionTabs.vehicleParts);
            },
            selected: controller.state.activeTab == InspectionTabs.vehicleParts,
          ),
        ],
      ),
      child: _body(controller, context),
    );
  }

  Widget _body(InspectionController controller, BuildContext context) {
    switch (controller.state.currentScreen) {
      case InspectionScreen.inspection:
        return const InspectionScreenWidget();
      case InspectionScreen.loading:
        return const InspectionLoadingScreen();
      case InspectionScreen.complete:
        return const InspectionCompleteScreen();
      case InspectionScreen.failed:
        return const InspectionScreenFailed();
      case InspectionScreen.contactHelpDesk:
        return const InspectionContactSupportScreen();
    }
  }
}
