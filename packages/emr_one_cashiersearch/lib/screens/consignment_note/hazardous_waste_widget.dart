import 'package:emr_one_cashiersearch/controllers/consignment_note_controller.dart';
import 'package:emr_one_cashiersearch/models/form_data/hazardous_request_data.dart';
import 'package:emr_one_cashiersearch/screens/consignment_note/sized_control.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class HazardousWasteWidget extends StatefulWidget {
  const HazardousWasteWidget({
    required this.controller,
    required this.isInwardTicket,
    super.key,
  });

  final ConsignmentNoteController controller;
  final bool isInwardTicket;

  @override
  State<HazardousWasteWidget> createState() => _HazardousWasteWidgetState();
}

class _HazardousWasteWidgetState extends State<HazardousWasteWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ValueListenableBuilder(
            valueListenable: widget.controller.hwRequestData,
            builder: (context1, hwGrades, child) {
              if (hwGrades.isEmpty) {
                return Container();
              }
              return SizedBox(
                width: MediaQuery.of(context1).size.width,
                height: 200,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    child: Table(
                      defaultColumnWidth: const FixedColumnWidth(120),
                      border: TableBorder.all(),
                      children: _buildHazWasteTable(),
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(
            height: Insets.gutter,
          ),
          ValueListenableBuilder(
            valueListenable: widget.controller.hwGrades,
            builder: (context, value, child) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: widget.controller.hwGrades.value.isEmpty ? 0 : 200,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    child: widget.controller.hwGrades.value.isEmpty
                        ? const SizedBox.shrink()
                        : Table(
                            defaultColumnWidth: const FixedColumnWidth(120),
                            border: TableBorder.all(),
                            children: _buildEwcTable(),
                          ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(
            height: Insets.gutter,
          ),
          _buildOperationsRdData(),
        ],
      ),
    );
  }

  List<TableRow> _buildHazWasteTable() {
    final tableRows = <TableRow>[];
    final textTheme = Theme.of(context).textTheme;
    tableRows.add(
      TableRow(
        children: [
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(Insets.gutter / 2),
                child: Center(
                  child: Text(
                    '',
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(Insets.gutter / 2),
                child: Center(
                  child: Text(
                    context.l10n.wasteDesc,
                    style: textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(Insets.gutter / 2),
                child: Center(
                  child: Text(
                    context.l10n.ewcCodes,
                    style: textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(Insets.gutter / 2),
                child: Center(
                  child: Text(
                    context.l10n.quantity,
                    style: textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(Insets.gutter / 2),
                child: Center(
                  child: Text(
                    context.l10n.component,
                    style: textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(Insets.gutter / 2),
                child: Center(
                  child: Text(
                    context.l10n.concentration,
                    style: textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(Insets.gutter / 2),
                child: Center(
                  child: Text(
                    context.l10n.physicalForm,
                    style: textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(Insets.gutter / 2),
                child: Center(
                  child: Text(
                    context.l10n.hazardCodes,
                    style: textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(Insets.gutter / 2),
                child: Center(
                  child: Text(
                    context.l10n.containerType,
                    style: textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    for (final element in widget.controller.hwRequestData.value) {
      tableRows.add(
        TableRow(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter / 2),
                  child: Center(
                    child: IconButton(
                      onPressed: () async {
                        await editHazardRow(
                          HazardousRequestData(
                            id: element.id,
                            component: element.component.value,
                            concentration: element.concentration.value,
                            hazardCodes: element.hazardCodes.value,
                            physicalForm: element.physicalForm.value,
                            europeanWasteCode: element.europeanWasteCode.value,
                            containerType: element.containerType.value,
                            description: element.description.value,
                            productCode: element.productCode,
                          ),
                          widget.controller.hwRequestData.value
                              .indexOf(element),
                        );
                        widget.controller.hwRequestData.value = [
                          ...widget.controller.hwRequestData.value,
                        ];
                      },
                      icon: const Icon(Icons.edit),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter / 2),
                  child: Center(
                    child: Text(
                      element.description.value,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter / 2),
                  child: Center(
                    child: Text(element.europeanWasteCode.value),
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(Insets.gutter / 2),
                  child: Center(
                    child: Text('1'),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter / 2),
                  child: Center(
                    child: Text(
                      element.component.value,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter / 2),
                  child: Center(
                    child: Text(
                      element.concentration.value,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter / 2),
                  child: Center(
                    child: Text(element.physicalForm.value),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter / 2),
                  child: Center(
                    child: Text(
                      element.hazardCodes.value,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(Insets.gutter / 2),
                  child: Center(
                    child: Text(
                      element.containerType.value,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return tableRows;
  }

  Future<void> editHazardRow(HazardousRequestData element, int index) async {
    const maxLines = 4;
    await EmrDialog.modal<void>(
      context,
      titleText: context.l10n.editRowEWC(element.europeanWasteCode.value),
      builder: (p0) {
        return SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.4,
          width: 500,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedControl(
                      height: 200,
                      child: EmrTextFormField(
                        labelText: context.l10n.description,
                        binding: element.description,
                        maxLines: maxLines,
                      ),
                    ),
                    const SizedBox(
                      width: Insets.gutter / 2,
                    ),
                    SizedControl(
                      height: 200,
                      child: EmrTextFormField(
                        labelText: context.l10n.component,
                        binding: element.component,
                        maxLines: maxLines,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: Insets.gutter / 2,
                ),
                Row(
                  children: [
                    SizedControl(
                      child: EmrTextFormField(
                        labelText: context.l10n.quantity,
                        enabled: ValueNotifier(false),
                        binding: ValueNotifier(1),
                      ),
                    ),
                    const SizedBox(
                      width: Insets.gutter / 2,
                    ),
                    SizedControl(
                      child: EmrTextFormField(
                        labelText: context.l10n.ewcCode,
                        enabled: ValueNotifier(false),
                        binding: element.europeanWasteCode,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: Insets.gutter / 2,
                ),
                Row(
                  children: [
                    SizedControl(
                      height: 200,
                      child: EmrTextFormField(
                        labelText: context.l10n.concentration,
                        binding: element.concentration,
                        maxLines: maxLines,
                      ),
                    ),
                    const SizedBox(
                      width: Insets.gutter / 2,
                    ),
                    SizedControl(
                      height: 200,
                      child: EmrTextFormField(
                        enabled: ValueNotifier(false),
                        labelText: context.l10n.physicalForm,
                        binding: element.physicalForm,
                        maxLines: maxLines,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: Insets.gutter / 2,
                ),
                Row(
                  children: [
                    SizedControl(
                      height: 200,
                      child: EmrTextFormField(
                        labelText: context.l10n.hazardCodes,
                        binding: element.hazardCodes,
                        maxLines: maxLines,
                      ),
                    ),
                    const SizedBox(
                      width: Insets.gutter / 2,
                    ),
                    SizedControl(
                      height: 200,
                      child: EmrTextFormField(
                        labelText: context.l10n.containerType,
                        binding: element.containerType,
                        maxLines: maxLines,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      onAccept: () async {
        widget.controller.hwRequestData.value[index] = element;
        context.pop();
      },
      onCancel: () {
        context.pop();
      },
    );
  }

  List<TableRow> _buildEwcTable() {
    final tableRows = <TableRow>[];
    tableRows.add(
      TableRow(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Center(
              child: Text(
                context.l10n.ewcCode,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                    context.l10n.unIdentificationNumbers,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                    context.l10n.paperShippingName,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                    context.l10n.unClasses,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                    context.l10n.packagingGroups,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                    context.l10n.specialHandlingRequirements,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    for (final element in widget.controller.hwGrades.value) {
      tableRows.add(
        TableRow(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Center(
                    child: Text(element.europeanWasteCode),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Center(
                    child: Text(element.uniDnumber),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Center(
                    child: Text(
                      element.properShippingName,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Center(
                    child: Text(element.unClass),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Center(
                    child: Text(element.packingGroup),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Center(
                    child: Text(element.specialHandlingRequirements),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return tableRows;
  }

  List<DataColumn> _buildDataColumns() {
    if (widget.isInwardTicket) {
      return <DataColumn>[
        DataColumn(
          label: Text(context.l10n.ewcCode),
        ),
        DataColumn(
          label: Text(context.l10n.quantityKg),
        ),
        DataColumn(
          label: Text(context.l10n.wasteManagementOpRd),
        ),
      ];
    } else {
      return <DataColumn>[
        DataColumn(
          label: Text(context.l10n.ewcCode),
        ),
        DataColumn(
          label: Text(context.l10n.quantityKg),
        ),
      ];
    }
  }

  Widget _buildOperationsRdData() {
    return ValueListenableBuilder(
      valueListenable: widget.controller.hwRequestData,
      builder: (context, hwGrades, child) {
        final opRdCode = widget.controller.originalWasteManagementOperations;
        return SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
              child: hwGrades.isEmpty
                  ? Container()
                  : DataTable(
                      columns: _buildDataColumns(),
                      rows: List<DataRow>.generate(hwGrades.length, (index) {
                        final wMOpRdCode =
                            hwGrades[index].wasteManagementOperationRDCode;
                        return DataRow(
                          cells: widget.isInwardTicket
                              ? <DataCell>[
                                  DataCell(
                                    Text(
                                      hwGrades[index].europeanWasteCode.value,
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      hwGrades[index]
                                              .weight
                                              .value
                                              ?.toWeightString() ??
                                          '',
                                    ),
                                  ),
                                  DataCell(
                                    Builder(
                                      builder: (context) {
                                        final hazGradesOperations = opRdCode
                                                    .value[
                                                hwGrades[index].productCode] ??
                                            '';
                                        if (hazGradesOperations.contains(',')) {
                                          String? dropDownValue;
                                          final wasteManagementOperations =
                                              hazGradesOperations
                                                  .split(',')
                                                  .map(
                                                    (e) => e.trim(),
                                                  )
                                                  .toList();
                                          return DropdownButtonFormField<
                                              String>(
                                            items:
                                                wasteManagementOperations.map((
                                              String items,
                                            ) {
                                              return DropdownMenuItem(
                                                value: items,
                                                child: Text(items),
                                              );
                                            }).toList(),
                                            onChanged: (
                                              String? newValue,
                                            ) {
                                              wMOpRdCode.value = newValue;
                                            },
                                            onSaved: (
                                              String? newValue,
                                            ) {
                                              setState(
                                                () {
                                                  dropDownValue = newValue;
                                                },
                                              );
                                            },
                                            initialValue: dropDownValue,
                                            hint: Text(
                                              context.l10n.pleaseSelectRdCode,
                                              style: TextStyle(
                                                color: Theme.of(
                                                  context,
                                                ).colorScheme.error,
                                              ),
                                            ),
                                          );
                                        }
                                        return Text(
                                          hazGradesOperations,
                                        );
                                      },
                                    ),
                                  ),
                                ]
                              : <DataCell>[
                                  DataCell(
                                    Text(
                                      hwGrades[index].europeanWasteCode.value,
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      hwGrades[index]
                                              .weight
                                              .value
                                              ?.toWeightString() ??
                                          '',
                                    ),
                                  ),
                                ],
                        );
                      }),
                    ),
            ),
          ),
        );
      },
    );
  }
}
