import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/code_scanner/emr_code_scanner.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_core/widgets/dialog/elv_dialog.dart';
import 'package:emr_one_elv_core/widgets/elv_wrapper.dart';
import 'package:emr_one_elv_dismantling/controllers/dismantle_controller.dart';
import 'package:emr_one_elv_dismantling/extensions/enum_part_type_extension.dart';
import 'package:emr_one_elv_dismantling/models/dismantling_vehicle.dart';
import 'package:emr_one_elv_dismantling/models/vehicle_part.dart';
import 'package:emr_one_elv_dismantling/models/vehicle_part_inventory_location.dart';
import 'package:emr_one_elv_dismantling/widgets/common/dismantling_header.dart';
import 'package:emr_one_elv_dismantling/widgets/dismantle/dismantle_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DismantleScreen extends StatefulWidget {
  const DismantleScreen({
    required this.vehicle,
    super.key,
  });
  final DismantlingVehicle vehicle;

  @override
  State<DismantleScreen> createState() => _DismantleScreenState();
}

class _DismantleScreenState extends State<DismantleScreen> {
  late final TextEditingController sealNumberController;
  late final TextEditingController serialNumberController;

  @override
  void initState() {
    super.initState();
    sealNumberController = TextEditingController();
    serialNumberController = TextEditingController();
    final controller = Provider.of<DismantleController>(context, listen: false);
    controller.init(widget.vehicle);
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<DismantleController>(context);
    final selectedPart = controller.selectedPart;
    final vehicle = controller.vehicle;
    sealNumberController.text = selectedPart?.catSealNumber ?? '';
    serialNumberController.text = selectedPart?.catSerialNumber ?? '';

    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height - 124,
        child: ElvScreenWrapper(
          header: DismantlingHeader(
            title: DismantleHeaderTitle(
              vehicle: vehicle,
              remainingVehicleWeight: controller.remainingVehicleWeight(),
              territory:
                  controller.settingsController.territory.toElvTerritory(),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.l10n.selectPartsToDismantle,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        context.l10n.dismantleEachListedPart,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  AddPartsToVehicle(
                    groupedPartTypes: controller.getGroupedPartTypes(context),
                    enabled: controller.getGroupedPartTypes(context).isNotEmpty,
                    onSave: (partsToAdd) async =>
                        controller.addPartsToVehicle(partsToAdd),
                  ),
                ],
              ),
              const SizedBox(
                height: Insets.gutter,
              ),
              ResponsiveWrapBoxes(
                children: controller
                    .getGroupedVehicleParts()
                    .map(
                      (part) => DismantlePartContainer(
                        part: part,
                        selectedPart: selectedPart,
                        onPartTap: controller.toggleSelectedParts,
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(
                height: Insets.gutter,
              ),
              Expanded(
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      Insets.gutter / 2,
                    ),
                    side: BorderSide(
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  child: selectedPart == null
                      ? Center(
                          child: Text(context.l10n.selectAPartToViewDetails),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(Insets.gutter),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DismantlePartHeader(
                                part: selectedPart,
                                onDeletePressed: () =>
                                    controller.deletePartFromVehicle(
                                  selectedPart.type,
                                ),
                                onMoveOrUndoPressed: () {
                                  selectedPart.partStatus ==
                                          Enum$PartStatus.DISMANTLED
                                      ? controller.undoDismantledVehiclePart(
                                          selectedPart.type,
                                        )
                                      : _movePart(
                                          selectedPart,
                                          controller,
                                        );
                                },
                              ),
                              const Divider(thickness: 1),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: Insets.gutter / 2,
                                    ),
                                    child: PartInputSelector(
                                      sealNumberController:
                                          sealNumberController,
                                      serialNumberController:
                                          serialNumberController,
                                      dismantleController: controller,
                                      vehiclePart: selectedPart,
                                      dismantledWheelCount: vehicle.vehicleParts
                                          .where(
                                            (p) =>
                                                p.active &&
                                                p.type == selectedPart.type &&
                                                p.partStatus ==
                                                    Enum$PartStatus.DISMANTLED,
                                          )
                                          .length,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _movePart(
    VehiclePart selectedPart,
    DismantleController controller,
  ) {
    if (selectedPart.type == Enum$PartType.CAR_BODY) {
      _moveCarBodyConfirmationDialog(
        selectedPart.type.formattedName,
        controller.partNameNotYetDismantled(),
        () => _movePartDialog(selectedPart, controller),
      );
      return;
    }
    _movePartDialog(selectedPart, controller);
  }

  void _movePartDialog(
    VehiclePart selectedPart,
    DismantleController controller,
  ) {
    final defaultInventoryLocationCode =
        controller.defaultInventoryLocationCodes![selectedPart.type]!;
    VehiclePartInventoryLocation? inventoryLocation;
    final textEditingController =
        TextEditingController(text: defaultInventoryLocationCode);
    ElvDialog.action(
      context,
      titleText: '${context.l10n.move} ${selectedPart.type.formattedName}',
      actions: [
        DialogAction(
          context.l10n.cancel,
          Navigator.of(context).pop,
        ),
        DialogAction(context.l10n.save, () {
          if (textEditingController.text.isEmpty) return;
          controller.dismantleVehiclePart(
            selectedPart.type,
            inventoryLocation?.code ?? defaultInventoryLocationCode,
            catSealNumber: sealNumberController.text,
            catSerialNumber: serialNumberController.text,
          );
          Navigator.of(context).pop();
          if (selectedPart.type == Enum$PartType.CAR_BODY) {
            EmrDialog.ok(
              context,
              titleText: context.l10n.success,
              contentText: context.l10n.vehicleIsNowSuccessfullyDismantled,
              onOk: () => context.pop(),
            );
          }
        }),
      ],
      content: SizedBox(
        width: 450,
        height: 100,
        child: EmrCodeScanner<VehiclePartInventoryLocation>(
          labeltText: '${context.l10n.newPartLocation}:',
          hinttext: context.l10n.enterLocationCode,
          onSelected: (selectedInventoryLocation) {
            inventoryLocation = selectedInventoryLocation;
            textEditingController.text = selectedInventoryLocation.code;
          },
          futureCallback: (searchText) {
            return controller.searchInventoryLocations(
              searchText: searchText,
            );
          },
          itembuilder: (context, item) {
            return ListTile(
              title: Text(item.code),
              subtitle: Text(item.description),
            );
          },
          textController: textEditingController,
        ),
      ),
    );
  }

  void _moveCarBodyConfirmationDialog(
    String carBodyFormattedName,
    String partNamesNotYetDismanted,
    void Function() onYesClicked,
  ) {
    ElvDialog.action(
      context,
      titleText: '${context.l10n.confirmationToMove} $carBodyFormattedName',
      actions: [
        DialogAction(
          context.l10n.no,
          Navigator.of(context).pop,
        ),
        DialogAction(context.l10n.yes, () {
          Navigator.of(context).pop();
          onYesClicked();
        }),
      ],
      content: MoveCarBodyConfirmationText(
        carBodyFormattedName: carBodyFormattedName,
        partNamesNotYetDismanted: partNamesNotYetDismanted,
      ),
    );
  }
}
