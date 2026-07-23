import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_core/models/enums/enums.dart';
import 'package:emr_one_elv_core/widgets/elv_breadcrumb.dart';
import 'package:emr_one_elv_core/widgets/elv_header_tabs.dart';
import 'package:emr_one_elv_core/widgets/elv_wrapper.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart'
    hide InspectionScreen, InspectionTabs;
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/inspection_screen_widget.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/inspection_modular_widgets.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/subscreens/inspection_subscreens_widgets.dart';
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
    final controller = Provider.of<InspectionScreenController>(context);

    if (controller.state.quoteToInspect == null) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }

    final vehicle = controller.state.quoteToInspect;

    final title = vehicle?.vehicleDescription == null
        ? context.l10n.inspection
        : ': '
              '${vehicle?.vehicleDescription.year} '
              '${vehicle?.vehicleDescription.make} '
              '${vehicle?.vehicleDescription.model}';

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
                text: title,
                style: Theme.of(
                  context,
                ).primaryTextTheme.bodyLarge!.copyWith(fontSize: 18),
              ),
            ],
          ),
        ),
        subTitle: VehicleSubHeaderDetailsPrice(
          vehicle: vehicle,
          quoteStatus: vehicle?.quoteSource.toReadableString(context),
        ),
        vehiclePrice: controller.activeTerritory != ElvTerritory.uk
            ? null
            : VehicleOfferedPriceSubScreen(
                offeredPrice: vehicle?.total ?? 0,
                catPrice: vehicle?.catValue ?? 0,
                controller: controller,
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
      breadcrumb: ElvBreadCrumb(headings: [context.l10n.inspection]),
      child: _body(controller, context),
    );
  }
}

Widget _body(InspectionScreenController controller, BuildContext context) {
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
