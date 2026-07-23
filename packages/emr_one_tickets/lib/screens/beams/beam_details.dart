import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/controllers/beam_controller.dart';
import 'package:emr_one_tickets/screens/beams/beam_tolerance_info.dart';
import 'package:emr_one_tickets/screens/beams/blue_book_universal_shapes_tolerance_calculator.dart';
import 'package:emr_one_tickets/widgets/beams/item_entry.dart';
import 'package:emr_one_tickets/widgets/beams/item_entry_bool.dart';
import 'package:emr_one_tickets/widgets/beams/item_entry_type.dart';
import 'package:flutter/material.dart';

class BeamDetails extends StatelessWidget {
  BeamDetails({required this.beamController, super.key});

  final BeamController beamController;

  final _toleranceCalculator = BlueBookUniversalShapesToleranceCalculator();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _heading(),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Form(
                    key: beamController.formKey,
                    child: Wrap(
                      runSpacing: Insets.gutter * 2,
                      spacing: Insets.gutter,
                      direction: Axis.vertical,
                      children: [
                        ItemEntry(
                          label: 'Approved by',
                          heading: 'Initial Details',
                          initialValue:
                              beamController.model.approvedBy?.toString(),
                          onChanged: (value) =>
                              beamController.model.approvedBy = value,
                        ),
                        ItemEntryBool(
                          label: 'Does the member have Shear Studs?',
                          heading: 'Classification',
                          initialValue: beamController.model.hasShearStuds,
                          onBoolChanged: (value) =>
                              beamController.model.hasShearStuds = value,
                        ),
                        ItemEntryBool(
                          label: 'Does the member have Bolt Holes?',
                          initialValue: beamController.model.hasBoltHoles,
                          onBoolChanged: (value) =>
                              beamController.model.hasBoltHoles = value,
                        ),
                        ItemEntryBool(
                          label: 'Does the member have Web Stiffeners?',
                          dependentLabel: 'How many Web Stiffeners?',
                          hasDependent: true,
                          dependentEntryType: ItemEntryType.numberInput,
                          initialValue: beamController.model.hasWebStiffeners,
                          onBoolChanged: (value) =>
                              beamController.model.hasWebStiffeners = value,
                          dependentInitialValue: beamController
                              .model.countWebStiffeners
                              ?.toString(),
                          onDependentChanged: (value) =>
                              beamController.model.countWebStiffeners =
                                  value == null || value.isEmpty
                                      ? null
                                      : int.parse(value),
                        ),
                        ItemEntryBool(
                          label:
                              'Does the member have Structural Penetrations?',
                          dependentLabel: 'How many structural penetrations?',
                          hasDependent: true,
                          dependentEntryType: ItemEntryType.numberInput,
                          initialValue:
                              beamController.model.hasStructuralPenetrations,
                          onBoolChanged: (value) => beamController
                              .model.hasStructuralPenetrations = value,
                          dependentInitialValue: beamController
                              .model.countStructuralPenetrations
                              ?.toString(),
                          onDependentChanged: (value) =>
                              beamController.model.countStructuralPenetrations =
                                  value == null || value.isEmpty
                                      ? null
                                      : int.parse(value),
                        ),
                        ItemEntryBool(
                          label: 'Does the member have any '
                              'other Fabrication Items?',
                          dependentLabel:
                              'What fabricated items does this member have?',
                          hasDependent: true,
                          initialValue:
                              beamController.model.hasFabricationItems,
                          onBoolChanged: (value) =>
                              beamController.model.hasFabricationItems = value,
                          dependentInitialValue:
                              beamController.model.fabricatedMembers,
                          onDependentChanged: (value) =>
                              beamController.model.fabricatedMembers = value,
                        ),
                        ItemEntry(
                          label: 'Gross Weight (t)',
                          heading: 'Dimensions',
                          entryType: ItemEntryType.decimalInput,
                          initialValue:
                              beamController.model.grossWeight?.toString(),
                          onChanged: (value) =>
                              beamController.model.grossWeight =
                                  value == null || value.isEmpty
                                      ? null
                                      : double.parse(value),
                        ),
                        const ItemEntry(
                          label: 'Section Type',
                        ),
                        ItemEntry(
                          label: 'Height of Section (h) in mm',
                          entryType: ItemEntryType.decimalInput,
                          initialValue:
                              beamController.model.heightOfSection?.toString(),
                          onChanged: (value) =>
                              beamController.model.heightOfSection =
                                  value == null || value.isEmpty
                                      ? null
                                      : double.parse(value),
                          trailingWidgetBuilder: (context) => ListenableBuilder(
                            listenable: beamController.model,
                            builder: (context, child) {
                              final (minus, plus) =
                                  _toleranceCalculator.heightTolerance(
                                beamController.model.heightOfSection ?? 0,
                              );
                              return BeamToleranceInfo(
                                minus: minus,
                                plus: plus,
                              );
                            },
                          ),
                        ),
                        ItemEntry(
                          label: 'Width of Section (h) in mm',
                          entryType: ItemEntryType.decimalInput,
                          initialValue:
                              beamController.model.widthOfSection?.toString(),
                          onChanged: (value) =>
                              beamController.model.widthOfSection =
                                  value == null || value.isEmpty
                                      ? null
                                      : double.parse(value),
                        ),
                        ItemEntry(
                          label: 'Web Thickness (tw) in mm',
                          entryType: ItemEntryType.decimalInput,
                          initialValue:
                              beamController.model.webThickness?.toString(),
                          onChanged: (value) =>
                              beamController.model.webThickness =
                                  value == null || value.isEmpty
                                      ? null
                                      : double.parse(value),
                          trailingWidgetBuilder: (context) => ListenableBuilder(
                            listenable: beamController.model,
                            builder: (context, child) {
                              final (minus, plus) =
                                  _toleranceCalculator.webThicknessTolerance(
                                beamController.model.webThickness ?? 0,
                              );
                              return BeamToleranceInfo(
                                minus: minus,
                                plus: plus,
                              );
                            },
                          ),
                        ),
                        ItemEntry(
                          label: 'Flange Thickness (tf) in mm',
                          entryType: ItemEntryType.decimalInput,
                          initialValue:
                              beamController.model.flangeThickness?.toString(),
                          onChanged: (value) =>
                              beamController.model.flangeThickness =
                                  value == null || value.isEmpty
                                      ? null
                                      : double.parse(value),
                          trailingWidgetBuilder: (context) => ListenableBuilder(
                            listenable: beamController.model,
                            builder: (context, child) {
                              final (minus, plus) =
                                  _toleranceCalculator.flangeThicknessTolerance(
                                beamController.model.flangeThickness ?? 0,
                              );
                              return BeamToleranceInfo(
                                minus: minus,
                                plus: plus,
                              );
                            },
                          ),
                        ),
                        const ItemEntry(
                          label: 'Section Size',
                        ),
                        ItemEntry(
                          label: 'L1 (mm)',
                          entryType: ItemEntryType.decimalInput,
                          initialValue: beamController.model.l1?.toString(),
                          onChanged: (value) => beamController.model.l1 =
                              value == null || value.isEmpty
                                  ? null
                                  : double.parse(value),
                        ),
                        ItemEntry(
                          label: 'L2 (mm)',
                          entryType: ItemEntryType.decimalInput,
                          initialValue: beamController.model.l2?.toString(),
                          onChanged: (value) => beamController.model.l2 =
                              value == null || value.isEmpty
                                  ? null
                                  : double.parse(value),
                        ),
                        ItemEntry(
                          label: 'Flange width B (b2)',
                          entryType: ItemEntryType.decimalInput,
                          initialValue:
                              beamController.model.flangeWidth?.toString(),
                          onChanged: (value) =>
                              beamController.model.flangeWidth =
                                  value == null || value.isEmpty
                                      ? null
                                      : double.parse(value),
                          trailingWidgetBuilder: (context) => ListenableBuilder(
                            listenable: beamController.model,
                            builder: (context, child) {
                              final (minus, plus) =
                                  _toleranceCalculator.flangeWidthTolerance(
                                beamController.model.flangeWidth ?? 0,
                              );
                              return BeamToleranceInfo(
                                minus: minus,
                                plus: plus,
                              );
                            },
                          ),
                        ),
                        ItemEntry(
                          label: 'Straightness Qxx (mm)',
                          entryType: ItemEntryType.decimalInput,
                          initialValue:
                              beamController.model.straightnessQxx?.toString(),
                          onChanged: (value) =>
                              beamController.model.straightnessQxx =
                                  value == null || value.isEmpty
                                      ? null
                                      : double.parse(value),
                        ),
                        ItemEntry(
                          label: 'Straightness Qyy (mm)',
                          entryType: ItemEntryType.decimalInput,
                          initialValue:
                              beamController.model.straightnessQyy?.toString(),
                          onChanged: (value) =>
                              beamController.model.straightnessQyy =
                                  value == null || value.isEmpty
                                      ? null
                                      : double.parse(value),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: Insets.gutter),
          _footer(),
        ],
      ),
    );
  }

  Widget _footer() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(32),
        bottomRight: Radius.circular(32),
      ),
      child: SizedBox(
        height: 64,
        child: ColoredBox(
          color: Colors.green.withAlpha(32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: ElevatedButton(
                  onPressed: () {
                    final valid =
                        beamController.formKey.currentState?.validate();
                    if (valid ?? false) {
                      beamController.saveBeam();
                    }
                  },
                  child: const Text('Create'),
                ),
              ),
              const SizedBox(width: Insets.gutter),
            ],
          ),
        ),
      ),
    );
  }

  Row _heading() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
          child: Text(
            'Create Beam',
            style: EmrOneConstants.kLargeHeadingTextStyle,
          ),
        ),
      ],
    );
  }
}
