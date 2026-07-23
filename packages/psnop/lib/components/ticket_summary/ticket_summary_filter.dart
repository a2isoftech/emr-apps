import 'package:emr_one_core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:psnop/components/filters/filter_utils.dart';
import 'package:psnop/components/filters/type_ahead_multi_select_filter_widget.dart';
import 'package:psnop/models/filter_response_models/active_parties_model.dart';
import 'package:psnop/models/filter_response_models/depot_response_model.dart';
import 'package:psnop/models/ticket_summary/ticket_summary_search.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/providers/ticket_summary_controller.dart';
import 'package:psnop/repository/filters/depot_repository.dart';
import 'package:psnop/repository/filters/grade_repository.dart';
import 'package:psnop/repository/filters/party_repository.dart';
import 'package:psnop/repository/ticket_summary_repository.dart';

class TicketSummaryFilter extends StatefulWidget {
  TicketSummaryFilter({
    required this.apiHelper,
    super.key,
  });

  final PsnopApiHelper apiHelper;
  final ValueNotifier<String> refreshTicketDirectionDropDown =
      ValueNotifier<String>('');

  @override
  State<TicketSummaryFilter> createState() => _TicketSummaryFilterState();
}

class _TicketSummaryFilterState extends State<TicketSummaryFilter> {
  final _ticketSummaryFormKey = GlobalKey<FormState>();

  late TextEditingController typeAheadDepotController;
  late TextEditingController typeAheadGradeController;
  late TextEditingController typeAheadPartyController;
  late TicketSummaryController ticketSummaryController;

  @override
  Widget build(BuildContext context) {
    ticketSummaryController = Provider.of<TicketSummaryController>(context);

    return SizedBox(
      height: 100,
      child: Form(
        key: _ticketSummaryFormKey,
        child: Row(
          children: [
            TypeAheadMultiSelectFilter<DepotResponseModel>(
              context: context,
              controller: typeAheadDepotController,
              deselectItem: (depot) {
                FilterUtils.remove(
                  list: ticketSummaryController.depotNumbers,
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
                      list: ticketSummaryController.depotNumbers,
                      item: depot,
                    ) >=
                    0;
              },
              noItemsFoundMessage: context.l10n.psnopDepotNotFoundMessage,
              onChanged: (depot) {
                ticketSummaryController.notifyTicketSummaryListeners();
              },
              selectedItems: ticketSummaryController.depotNumbers,
              selectItem: (depot) {
                ticketSummaryController.depotNumbers.add(
                  depot,
                );
              },
              selectedTitle: () {
                return ticketSummaryController.depotNumbers.isEmpty
                    ? ''
                    : ticketSummaryController.depotNumbers.first.depotNumber;
              },
              suggestionCallback: (pattern) {
                final q = pattern.isNotEmpty ? pattern : '*';
                return DepotRepository.fetchDepotList(
                  filter: q,
                  selected: ticketSummaryController.depotNumbers,
                  apiHelper: widget.apiHelper,
                );
              },
              title: context.l10n.psnopDepotTitle,
              validator: (value) {
                {
                  if (ticketSummaryController.depotNumbers.isEmpty) {
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
                ticketSummaryController.grades.remove(grade);
              },
              itemName: (grade) {
                return grade;
              },
              itemSelected: (grade) {
                return ticketSummaryController.grades.contains(grade);
              },
              noItemsFoundMessage: context.l10n.psnopGradeNotFoundMessage,
              onChanged: (grade) {
                setState(() {});
              },
              selectedItems: ticketSummaryController.grades,
              selectItem: (grade) {
                ticketSummaryController.grades.add(
                  grade,
                );
              },
              selectedTitle: () {
                return ticketSummaryController.grades.isEmpty
                    ? ''
                    : ticketSummaryController.grades.first;
              },
              suggestionCallback: (pattern) {
                final q = pattern.isNotEmpty ? pattern : '';
                return GradeRepository.fetchGradesList(
                  filter: q,
                  selected: ticketSummaryController.grades,
                  apiHelper: widget.apiHelper,
                );
              },
              title: context.l10n.psnopGradeTitle,
            ),
            TypeAheadMultiSelectFilter<ActivePartiesModel>(
              context: context,
              controller: typeAheadPartyController,
              deselectItem: (party) {
                FilterUtils.remove(
                  list: ticketSummaryController.parties,
                  item: party,
                );
              },
              itemName: (party) {
                final partyAccountNo = party.partyAccountNo;
                final partyName = party.partyName;
                if (partyName != null) {
                  return '$partyName ($partyAccountNo)';
                } else {
                  return '$partyAccountNo ($partyAccountNo)';
                }
              },
              itemSelected: (party) {
                return FilterUtils.getIndex(
                      list: ticketSummaryController.parties,
                      item: party,
                    ) >=
                    0;
              },
              noItemsFoundMessage: context.l10n.psnopPartyNotFoundMessage,
              onChanged: (party) {
                setState(() {});
              },
              selectedItems: ticketSummaryController.parties,
              selectItem: (party) {
                ticketSummaryController.parties.add(
                  party,
                );
              },
              selectedTitle: () {
                return ticketSummaryController.parties.isEmpty
                    ? ''
                    : ticketSummaryController.parties.first.partyName ??
                        ticketSummaryController.parties.first.partyAccountNo;
              },
              suggestionCallback: (pattern) {
                final q = pattern.isNotEmpty ? pattern : '';
                return PartyRepository.fetchActiveParties(
                  filter: q,
                  selected: ticketSummaryController.parties,
                  apiHelper: widget.apiHelper,
                );
              },
              title: context.l10n.psnopPartyTitle,
            ),
            Expanded(
              child: TextFormField(
                readOnly: true,
                onTap: () async {
                  final pickedDateRange = await showDateRangePicker(
                    context: context,
                    firstDate: DateTime.now().add(
                      const Duration(
                        days: -365,
                      ),
                    ),
                    cancelText: context.l10n.psnopClear,
                    initialDateRange: ticketSummaryController.dateTimeRange ??
                        DateTimeRange(
                          start: DateTime.now(),
                          end: DateTime.now(),
                        ),
                    initialEntryMode: DatePickerEntryMode.input,
                    lastDate: DateTime(9999),
                  );
                  ticketSummaryController.updateDateRange(pickedDateRange);
                },
                controller: TextEditingController(
                  text: _ticketSummaryDateRange(
                    context: context,
                    ticketSummaryController: ticketSummaryController,
                  ),
                ),
              ),
            ),
            ValueListenableBuilder(
              valueListenable: widget.refreshTicketDirectionDropDown,
              builder: (BuildContext context, dynamic value, Widget? child) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: DropdownButton<String>(
                      value: ticketSummaryController.ticketDirection,
                      isExpanded: true,
                      items: [
                        DropdownMenuItem(
                          value: 'I',
                          child: Text(
                            context.l10n.psnopTicketDirectionInwards,
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'O',
                          child: Text(
                            context.l10n.psnopTicketDirectionOutwards,
                          ),
                        ),
                        DropdownMenuItem(
                          value: '',
                          child: Text(
                            context.l10n.psnopTicketDirectionBoth,
                          ),
                        ),
                      ],
                      onChanged: (value) {
                        ticketSummaryController.changeDirection(value!);
                      },
                    ),
                  ),
                );
              },
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
                    _onSearchTicketsPressed(
                      ticketSummaryController,
                      TicketSummaryRepository(apiHelper: widget.apiHelper),
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
  void dispose() {
    typeAheadDepotController.dispose();
    typeAheadGradeController.dispose();
    typeAheadPartyController.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    typeAheadDepotController = TextEditingController();
    typeAheadGradeController = TextEditingController();
    typeAheadPartyController = TextEditingController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (ticketSummaryController.depotNumbers.isNotEmpty) {
        _onSearchTicketsPressed(
          ticketSummaryController,
          TicketSummaryRepository(apiHelper: widget.apiHelper),
        );
      }
    });
  }

  void _onSearchTicketsPressed(
    TicketSummaryController ticketSummaryController,
    TicketSummaryRepository ticketSummaryRepository,
  ) {
    if (_ticketSummaryFormKey.currentState!.validate()) {
      ticketSummaryController.getTicketSummaries(
        searchModel: TicketSummarySearchModel(
          depotNos: ticketSummaryController.depotNumbers
              .map((e) => e.depotNumber)
              .toList(),
          grades: ticketSummaryController.grades,
          parties: ticketSummaryController.parties
              .map((e) => e.partyAccountNo)
              .toList(),
          ticketDateFrom: ticketSummaryController.dateTimeRange?.start,
          ticketDateTo: ticketSummaryController.dateTimeRange?.end,
          ticketDirection: ticketSummaryController.ticketDirection,
        ),
        repository: ticketSummaryRepository,
      );
    }
  }

  String _ticketSummaryDateRange({
    required BuildContext context,
    required TicketSummaryController ticketSummaryController,
  }) {
    if (ticketSummaryController.dateTimeRange == null) {
      return context.l10n.dateRange;
    }
    final shortDateFormatter = DateFormat.yMd(
      Localizations.localeOf(context).toLanguageTag(),
    );
    final start =
        shortDateFormatter.format(ticketSummaryController.dateTimeRange!.start);
    final end =
        shortDateFormatter.format(ticketSummaryController.dateTimeRange!.end);
    return '$start - $end';
  }
}
