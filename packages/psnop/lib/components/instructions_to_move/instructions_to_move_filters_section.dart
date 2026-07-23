import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:psnop/components/filters/filter_utils.dart';
import 'package:psnop/components/filters/type_ahead_multi_select_filter_widget.dart';
import 'package:psnop/models/filter_response_models/depot_response_model.dart';
import 'package:psnop/models/instructions_to_move/instructions_to_move_summary_request_model.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/providers/instructions_to_move_controller.dart';
import 'package:psnop/repository/filters/depot_repository.dart';
import 'package:psnop/repository/filters/grade_repository.dart';
import 'package:psnop/repository/instructions_to_move_repository.dart';

class InstructionsToMoveFiltersSection extends StatefulWidget {
  const InstructionsToMoveFiltersSection({
    required this.apiHelper,
    super.key,
  });

  final PsnopApiHelper apiHelper;

  @override
  State<InstructionsToMoveFiltersSection> createState() =>
      _InstructionsToMoveFiltersSectionState();
}

class _InstructionsToMoveFiltersSectionState
    extends State<InstructionsToMoveFiltersSection> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController typeAheadDepotController;
  late TextEditingController typeAheadGradeController;

  @override
  Widget build(BuildContext context) {
    final instructionsToMoveController =
        Provider.of<InstructionsToMoveController>(
      context,
    );

    return SizedBox(
      height: 100,
      child: Form(
        key: _formKey,
        child: Row(
          children: [
            TypeAheadMultiSelectFilter<DepotResponseModel>(
              context: context,
              controller: typeAheadDepotController,
              deselectItem: (depot) {
                FilterUtils.remove(
                  list: instructionsToMoveController.depotNumbers,
                  item: depot,
                );
              },
              itemName: (depot) {
                var itemName = depot.depotNumber;
                if (depot.depotName.isNotEmpty) {
                  itemName = '$itemName - ${depot.depotName}';
                }
                return itemName;
              },
              itemSelected: (depot) {
                return FilterUtils.getIndex(
                      list: instructionsToMoveController.depotNumbers,
                      item: depot,
                    ) >=
                    0;
              },
              noItemsFoundMessage: context.l10n.psnopDepotNotFoundMessage,
              onChanged: (depot) {
                setState(() {});
              },
              selectedItems: instructionsToMoveController.depotNumbers,
              selectItem: (depot) {
                instructionsToMoveController.depotNumbers.add(
                  depot,
                );
              },
              selectedTitle: () {
                return instructionsToMoveController.depotNumbers.isEmpty
                    ? ''
                    : instructionsToMoveController
                        .depotNumbers.first.depotNumber;
              },
              suggestionCallback: (pattern) {
                final q = pattern.isNotEmpty ? pattern : '*';
                return DepotRepository.fetchDepotList(
                  filter: q,
                  selected: instructionsToMoveController.depotNumbers,
                  apiHelper: widget.apiHelper,
                );
              },
              title: context.l10n.psnopDepotTitle,
              validator: (value) {
                {
                  if (instructionsToMoveController.depotNumbers.isEmpty) {
                    return context.l10n.psnopDepotMissingSelectionMessage;
                  }
                  return null;
                }
              },
            ),
            TypeAheadMultiSelectFilter<String>(
              context: context,
              controller: typeAheadGradeController,
              deselectItem: (grade) {
                instructionsToMoveController.grades.remove(grade);
              },
              itemName: (grade) {
                return grade;
              },
              itemSelected: (grade) {
                return instructionsToMoveController.grades.contains(grade);
              },
              noItemsFoundMessage: context.l10n.psnopGradeNotFoundMessage,
              onChanged: (grade) {
                setState(() {});
              },
              selectedItems: instructionsToMoveController.grades,
              selectItem: (grade) {
                instructionsToMoveController.grades.add(
                  grade,
                );
              },
              selectedTitle: () {
                return instructionsToMoveController.grades.isEmpty
                    ? ''
                    : instructionsToMoveController.grades.first;
              },
              suggestionCallback: (pattern) {
                final q = pattern.isNotEmpty ? pattern : '';
                return GradeRepository.fetchGradesList(
                  filter: q,
                  selected: instructionsToMoveController.grades,
                  apiHelper: widget.apiHelper,
                );
              },
              title: context.l10n.psnopGradeTitle,
            ),
            Expanded(
              child: TextFormField(
                readOnly: true,
                onTap: () async {
                  final pickedDateRange = await showDateRangePicker(
                    context: context,
                    initialDateRange: DateTimeRange(
                      start: instructionsToMoveController.dateTimeRange.start,
                      end: instructionsToMoveController.dateTimeRange.end,
                    ),
                    firstDate: DateTime.now().add(
                      const Duration(
                        days: -365,
                      ),
                    ),
                    lastDate: DateTime(9999),
                  );

                  if (instructionsToMoveController.dateTimeRange.start !=
                          pickedDateRange!.start ||
                      instructionsToMoveController.dateTimeRange.end !=
                          pickedDateRange.end) {
                    instructionsToMoveController
                        .updateDateRange(pickedDateRange);
                  }
                },
                controller: TextEditingController(
                  text: _instructionsToMoveDateRange(
                    context: context,
                    instructionsToMoveController: instructionsToMoveController,
                  ),
                ),
                validator: Validators.required,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: ElevatedButton(
                  child: Text(context.l10n.psnopSearchText),
                  onPressed: () => {
                    _onGetInstructionsToMovePressed(
                      instructionsToMoveController,
                      InstructionsToMoveRepository(apiHelper: widget.apiHelper),
                    ),
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    typeAheadDepotController = TextEditingController();
    typeAheadGradeController = TextEditingController();
  }

  @override
  void dispose() {
    typeAheadDepotController.dispose();
    typeAheadGradeController.dispose();
    super.dispose();
  }

  String _instructionsToMoveDateRange({
    required BuildContext context,
    required InstructionsToMoveController instructionsToMoveController,
  }) {
    final shortDateFormatter = DateFormat.yMd(
      Localizations.localeOf(context).toLanguageTag(),
    );
    final start = shortDateFormatter
        .format(instructionsToMoveController.dateTimeRange.start);
    final end = shortDateFormatter
        .format(instructionsToMoveController.dateTimeRange.end);
    return '$start - $end';
  }

  void _onGetInstructionsToMovePressed(
    InstructionsToMoveController instructionsToMoveController,
    InstructionsToMoveRepository instructionsToMoveRepository,
  ) {
    if (_formKey.currentState!.validate()) {
      instructionsToMoveController.getInstructionsToMove(
        filter: InstructionsToMoveSummaryRequestModel(
          depotNos: instructionsToMoveController.depotNumbers
              .map((e) => e.depotNumber)
              .toList(),
          grades: instructionsToMoveController.grades,
          startDate: instructionsToMoveController.dateTimeRange.start,
          endDate: instructionsToMoveController.dateTimeRange.end,
        ),
        repository: instructionsToMoveRepository,
      );
    }
  }
}
