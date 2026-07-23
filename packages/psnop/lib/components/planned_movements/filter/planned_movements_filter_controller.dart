import 'package:emr_flutter_theme/controls/emr_button.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:psnop/enums/movement_type.dart';
import 'package:psnop/enums/transport_status.dart';
import 'package:psnop/models/filter_response_models/active_parties_model.dart';
import 'package:psnop/models/filter_response_models/depot_response_model.dart';
import 'package:psnop/models/filter_response_models/destination_response_model.dart';
import 'package:psnop/models/filter_response_models/heap_response_model.dart';
import 'package:psnop/models/planned_movements/planned_movements_search.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/repository/filters/depot_repository.dart';
import 'package:psnop/repository/filters/grade_repository.dart';
import 'package:psnop/repository/filters/heap_repository.dart';
import 'package:psnop/repository/filters/party_repository.dart';
import 'package:psnop/repository/planned_movements_repository.dart';

class PlannedMovementsFilterController extends EmrFilterController {
  PlannedMovementsFilterController(
    this.apiHelper,
  ) : super(
          filters: [
            EmrFilterModel<String>(
              key: kDepotKey,
              name: 'Depot',
              enableDelete: false,
            ),
          ],
          filterContentBuilder: (context, filter, controller) {
            // Determine the widget to show for each filter.
            switch (filter.key) {
              case kDepotKey:
                return EmrFilterAutoComplete<DepotResponseModel, String>(
                  const Key(kDepotKey),
                  filter,
                  controller,
                  (pattern, filterController) => DepotRepository.fetchDepotList(
                    apiHelper: apiHelper,
                    filter: pattern,
                  ),
                  close: () {
                    //Remove all other filters when depot is changed
                    final f = [...controller.filters.value];
                    f.removeWhere((element) => element.key != filter.key);
                    _setDefaultTransportStatusFilter(context, f);
                    controller.filters.value = f;
                    Navigator.of(context).pop();
                  },
                  getTitle: (suggestion) =>
                      '${suggestion.depotNumber} - ${suggestion.depotName}',
                  getValue: (suggestion) {
                    _depotCode = suggestion.depotNumber;
                    return suggestion.depotNumber;
                  },
                );
              case kGradeKey:
                return EmrFilterAutoComplete<String, String>(
                  const Key(kGradeKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      GradeRepository.fetchGradesList(
                    apiHelper: apiHelper,
                    filter: pattern,
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                  multi: true,
                );
              case kHeapKey:
                return EmrFilterAutoComplete<HeapResponseModel, String>(
                  const Key(kHeapKey),
                  filter,
                  controller,
                  (pattern, filterController) => HeapRepository.fetchHeaps(
                    apiHelper: apiHelper,
                    filter: pattern,
                    depotCode: _depotCode,
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion.heapDisplayName,
                  getValue: (suggestion) => suggestion.heapShortName,
                  multi: true,
                );
              case kDestinationKey:
                return EmrFilterAutoComplete<DestinationResponseModel, String>(
                  const Key(kDestinationKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      PlannedMovementsRepository.fetchDestinations(
                    apiHelper: apiHelper,
                    filter: pattern,
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion.name,
                  getValue: (suggestion) => suggestion.id,
                  multi: true,
                );
              case kPartyKey:
                return EmrFilterAutoComplete<ActivePartiesModel, String>(
                  const Key(kPartyKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      PartyRepository.fetchActiveParties(
                    apiHelper: apiHelper,
                    filter: pattern,
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) =>
                      '${suggestion.partyAccountNo} - ${suggestion.partyName}',
                  getValue: (suggestion) => suggestion.partyAccountNo,
                  multi: true,
                );
              case kContractKey:
                return EmrFilterAutoComplete<String, String>(
                  const Key(kContractKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      PlannedMovementsRepository.fetchContractRefs(
                    apiHelper: apiHelper,
                    filter: pattern,
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                  multi: true,
                );
              case kTransportKey:
                return EmrPicker<String>(
                  items: (_) => Future.value(['Container', 'Rail', 'Truck']),
                  itemTitleText: (transportMode) {
                    return transportMode;
                  },
                  onItemSelected: (p0) {
                    controller.addOrUpdateFilter(
                      filter: filter,
                      text: 'Transport: $p0',
                      value: p0,
                    );
                    Navigator.pop(context);
                  },
                  mode: EmrPickerMode.search,
                );
              case kRefKey:
                var refValue = '';
                return Column(
                  children: [
                    TextField(
                      onChanged: (String value) async {
                        refValue = value;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    EmrButton(
                      label: context.l10n.confirm,
                      onPressed: () {
                        if (refValue.isNotEmpty) {
                          controller.addOrUpdateFilter(
                            filter: filter,
                            text: 'Ref: $refValue',
                            value: refValue,
                          );
                        }
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              case kPriorityKey:
                var priorityValue = '';
                return Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (String value) async {
                        priorityValue = value;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    EmrButton(
                      label: context.l10n.confirm,
                      onPressed: () {
                        if (priorityValue.isNotEmpty) {
                          controller.addOrUpdateFilter(
                            filter: filter,
                            text: 'Priority: $priorityValue',
                            value: priorityValue,
                          );
                        }
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              case kWeightKey:
                var weightValue = '';
                return Column(
                  children: [
                    TextField(
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^\d+\.?\d{0,2}'),
                        ),
                      ],
                      onChanged: (String value) async {
                        weightValue = value;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    EmrButton(
                      label: context.l10n.confirm,
                      onPressed: () {
                        if (weightValue.isNotEmpty) {
                          controller.addOrUpdateFilter(
                            filter: filter,
                            text: 'Weight: $weightValue',
                            value: weightValue,
                          );
                        }
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              case kTransportStatusKey:
                return EmrFilterAutoComplete<String, String>(
                  const Key(kTransportStatusKey),
                  filter,
                  controller,
                  (pattern, filterController) {
                    final suggestions = <String>[];

                    if (pattern.isEmpty ||
                        context.l10n.psnopTransportStatusRequired
                            .startsWith(pattern) ||
                        pattern == TransportStatus.required.name) {
                      suggestions
                          .add(context.l10n.psnopTransportStatusRequired);
                    }

                    if (pattern.isEmpty ||
                        context.l10n.psnopTransportStatusAwaitingConfirmation
                            .startsWith(pattern) ||
                        pattern == TransportStatus.awaitingConfirmation.name) {
                      suggestions.add(
                        context.l10n.psnopTransportStatusAwaitingConfirmation,
                      );
                    }

                    if (pattern.isEmpty ||
                        context.l10n.psnopTransportStatusConfirmed
                            .startsWith(pattern) ||
                        pattern == TransportStatus.confirmed.name) {
                      suggestions
                          .add(context.l10n.psnopTransportStatusConfirmed);
                    }

                    if (pattern.isEmpty ||
                        context.l10n.psnopTransportStatusCancelled
                            .startsWith(pattern) ||
                        pattern == TransportStatus.cancelled.name) {
                      suggestions
                          .add(context.l10n.psnopTransportStatusCancelled);
                    }

                    if (pattern.isEmpty ||
                        context.l10n.psnopTransportStatusOngoing
                            .startsWith(pattern) ||
                        pattern == TransportStatus.ongoing.name) {
                      suggestions.add(context.l10n.psnopTransportStatusOngoing);
                    }

                    if (pattern.isEmpty ||
                        context.l10n.psnopTransportStatusCompleted
                            .startsWith(pattern) ||
                        pattern == TransportStatus.completed.name) {
                      suggestions
                          .add(context.l10n.psnopTransportStatusCompleted);
                    }

                    return Future.value(suggestions);
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) {
                    if (suggestion ==
                        context.l10n.psnopTransportStatusRequired) {
                      return TransportStatus.required.name;
                    } else if (suggestion ==
                        context.l10n.psnopTransportStatusAwaitingConfirmation) {
                      return TransportStatus.awaitingConfirmation.name;
                    } else if (suggestion ==
                        context.l10n.psnopTransportStatusConfirmed) {
                      return TransportStatus.confirmed.name;
                    } else if (suggestion ==
                        context.l10n.psnopTransportStatusCancelled) {
                      return TransportStatus.cancelled.name;
                    } else if (suggestion ==
                        context.l10n.psnopTransportStatusOngoing) {
                      return TransportStatus.ongoing.name;
                    } else if (suggestion ==
                        context.l10n.psnopTransportStatusCompleted) {
                      return TransportStatus.completed.name;
                    }
                    return '';
                  },
                  multi: true,
                );
              case kMovementTypeKey:
                return EmrFilterAutoComplete<String, String>(
                  const Key(kMovementTypeKey),
                  filter,
                  controller,
                  (pattern, filterController) {
                    final suggestions = <String>[];

                    if (pattern.isEmpty ||
                        context.l10n.psnopMovementTypeDirectSales
                            .startsWith(pattern) ||
                        pattern == MovementType.directSales.name) {
                      suggestions
                          .add(context.l10n.psnopMovementTypeDirectSales);
                    }

                    if (pattern.isEmpty ||
                        context.l10n.psnopMovementTypeInstructionsToMove
                            .startsWith(pattern) ||
                        pattern == MovementType.instructionsToMove.name) {
                      suggestions.add(
                        context.l10n.psnopMovementTypeInstructionsToMove,
                      );
                    }

                    if (pattern.isEmpty ||
                        context.l10n.psnopMovementTypeRouteToMarket
                            .startsWith(pattern) ||
                        pattern == MovementType.route.name) {
                      suggestions
                          .add(context.l10n.psnopMovementTypeRouteToMarket);
                    }

                    return Future.value(suggestions);
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) {
                    if (suggestion ==
                        context.l10n.psnopMovementTypeDirectSales) {
                      return MovementType.directSales.name;
                    } else if (suggestion ==
                        context.l10n.psnopMovementTypeInstructionsToMove) {
                      return MovementType.instructionsToMove.name;
                    } else if (suggestion ==
                        context.l10n.psnopMovementTypeRouteToMarket) {
                      return MovementType.route.name;
                    }
                    return '';
                  },
                  multi: true,
                );
              case kTransportPlanIdKey:
                var transportPlanIdValue = '';
                return Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (String value) async {
                        transportPlanIdValue = value;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    EmrButton(
                      label: context.l10n.confirm,
                      onPressed: () {
                        if (transportPlanIdValue.isNotEmpty) {
                          controller.addOrUpdateFilter(
                            filter: filter,
                            text: 'Transport Plan Id: $transportPlanIdValue',
                            value: transportPlanIdValue,
                          );
                        }
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              case kDateRangeKey:
                DateTimeRange? pickedDateRange;
                return TextFormField(
                  decoration: InputDecoration(hintText: context.l10n.dateRange),
                  readOnly: true,
                  onTap: () async {
                    pickedDateRange = await showDateRangePicker(
                      context: context,
                      firstDate: DateTime.now().add(
                        const Duration(
                          days: -365,
                        ),
                      ),
                      cancelText: context.l10n.psnopClose,
                      initialDateRange: _dueFromAndDueByDates,
                      initialEntryMode: DatePickerEntryMode.input,
                      lastDate: DateTime(9999),
                    );
                    if (context.mounted) {
                      if (pickedDateRange != null) {
                        _dueFromAndDueByDates = pickedDateRange;
                        controller.addOrUpdateFilter(
                          filter: filter,
                          text: _plannedMovementsDateRange(
                            context,
                            pickedDateRange,
                          ),
                          value: pickedDateRange,
                        );
                      }
                      Navigator.pop(context);
                    }
                  },
                  controller: TextEditingController(
                    text: controller.containsFilter(key: kDateRangeKey)
                        ? _plannedMovementsDateRange(
                            context,
                            _dueFromAndDueByDates,
                          )
                        : '',
                  ),
                  validator: Validators.required,
                );
              case kRequestedDateKey:
                DateTime? pickedDate;
                return TextFormField(
                  decoration: InputDecoration(
                    hintText: context.l10n.psnopPlannedMovementsRequestedDate,
                  ),
                  readOnly: true,
                  onTap: () async {
                    pickedDate = await showDatePicker(
                      context: context,
                      initialDate: _requestedDate ?? DateTime.now(),
                      firstDate: DateTime.now().add(
                        const Duration(
                          days: -365,
                        ),
                      ),
                      lastDate: DateTime(9999),
                    );
                    if (context.mounted) {
                      if (pickedDate != null) {
                        _requestedDate = pickedDate;
                        controller.addOrUpdateFilter(
                          filter: filter,
                          text: _plannedMovementsRequestedDate(
                            context,
                            pickedDate,
                          ),
                          value: pickedDate,
                        );
                      }
                      Navigator.pop(context);
                    }
                  },
                  controller: TextEditingController(
                    text: controller.containsFilter(key: kRequestedDateKey)
                        ? _plannedMovementsRequestedDate(
                            context,
                            _requestedDate,
                          )
                        : '',
                  ),
                  validator: Validators.required,
                );
            }

            throw Exception(
              'filterContentBuilder should return a Widget for ${filter.key}',
            );
          },
        );

  final PsnopApiHelper apiHelper;

  // Required filters.
  static const kDepotKey = 'depot';

  // Optional filters.
  static const kRefKey = 'ref';
  static const kGradeKey = 'gradeCode';
  static const kHeapKey = 'heap';
  static const kDestinationKey = 'destination';
  static const kPartyKey = 'party';
  static const kContractKey = 'contract';
  static const kTransportKey = 'transport';
  static const kPriorityKey = 'priority';
  static const kWeightKey = 'weight';
  static const kTransportStatusKey = 'transportStatus';
  static const kMovementTypeKey = 'movementType';
  static const kTransportPlanIdKey = 'transportPlanId';
  static const kDateRangeKey = 'dateRange';
  static const kRequestedDateKey = 'requestedDate';

  static late String _depotCode;
  static DateTimeRange? _dueFromAndDueByDates;
  static DateTime? _requestedDate;
  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    final depotSelected = tryGetFilter<String>(
          key: PlannedMovementsFilterController.kDepotKey,
        )?.value !=
        null;

    if (!depotSelected) {
      return [];
    }
    return [
      if (!containsFilter(key: PlannedMovementsFilterController.kGradeKey))
        EmrFilterModel<List<String>>(
          key: PlannedMovementsFilterController.kGradeKey,
          name: 'Grade',
        ),
      if (!containsFilter(
        key: PlannedMovementsFilterController.kHeapKey,
      ))
        EmrFilterModel<List<String>>(
          key: PlannedMovementsFilterController.kHeapKey,
          name: 'Heap',
        ),
      if (!containsFilter(
        key: PlannedMovementsFilterController.kDestinationKey,
      ))
        EmrFilterModel<List<String>>(
          key: PlannedMovementsFilterController.kDestinationKey,
          name: 'Destination',
        ),
      if (!containsFilter(
        key: PlannedMovementsFilterController.kPartyKey,
      ))
        EmrFilterModel<List<String>>(
          key: PlannedMovementsFilterController.kPartyKey,
          name: 'Party',
        ),
      if (!containsFilter(
        key: PlannedMovementsFilterController.kContractKey,
      ))
        EmrFilterModel<List<String>>(
          key: PlannedMovementsFilterController.kContractKey,
          name: 'Contract',
        ),
      if (!containsFilter(key: PlannedMovementsFilterController.kTransportKey))
        EmrFilterModel<String>(
          key: PlannedMovementsFilterController.kTransportKey,
          name: 'Transport',
        ),
      if (!containsFilter(key: PlannedMovementsFilterController.kRefKey))
        EmrFilterModel<String>(
          key: PlannedMovementsFilterController.kRefKey,
          name: 'Ref',
        ),
      if (!containsFilter(key: PlannedMovementsFilterController.kPriorityKey))
        EmrFilterModel<String>(
          key: PlannedMovementsFilterController.kPriorityKey,
          name: 'Priority',
        ),
      if (!containsFilter(key: PlannedMovementsFilterController.kWeightKey))
        EmrFilterModel<String>(
          key: PlannedMovementsFilterController.kWeightKey,
          name: 'Weight',
        ),
      if (!containsFilter(
        key: PlannedMovementsFilterController.kTransportStatusKey,
      ))
        EmrFilterModel<List<String>>(
          key: PlannedMovementsFilterController.kTransportStatusKey,
          name: 'Transport Status',
        ),
      if (!containsFilter(
        key: PlannedMovementsFilterController.kMovementTypeKey,
      ))
        EmrFilterModel<List<String>>(
          key: PlannedMovementsFilterController.kMovementTypeKey,
          name: 'Movement Type',
        ),
      if (!containsFilter(
        key: PlannedMovementsFilterController.kTransportPlanIdKey,
      ))
        EmrFilterModel<String>(
          key: PlannedMovementsFilterController.kTransportPlanIdKey,
          name: 'Transport Plan Id',
        ),
      if (!containsFilter(key: PlannedMovementsFilterController.kDateRangeKey))
        EmrFilterModel<DateTimeRange>(
          key: PlannedMovementsFilterController.kDateRangeKey,
          name: 'Due From and Due By',
        ),
      if (!containsFilter(
        key: PlannedMovementsFilterController.kRequestedDateKey,
      ))
        EmrFilterModel<DateTime>(
          key: PlannedMovementsFilterController.kRequestedDateKey,
          name: 'Requested Date',
        ),
    ];
  }

  @override
  String? validator() {
    // Valid if a publication and managed buyer or party are chosen.
    if (containsFilter(key: kDepotKey, withValue: true)) {
      return null;
    }

    // Invalid.
    return 'Select a Depot, and then extra filters';
  }

  Future<PlannedMovementsSearchModel?> getCurrentFilters() async {
    final depotSelected = tryGetFilter<String>(
      key: PlannedMovementsFilterController.kDepotKey,
    )?.value;
    if (depotSelected == null) {
      return null;
    }
    final gradesSelected = tryGetFilter<List<String>>(
      key: PlannedMovementsFilterController.kGradeKey,
    )?.value;
    final heapsSelected = tryGetFilter<List<String>>(
      key: PlannedMovementsFilterController.kHeapKey,
    )?.value;
    final destinationsSelected = tryGetFilter<List<String>>(
      key: PlannedMovementsFilterController.kDestinationKey,
    )?.value;
    final partiesSelected = tryGetFilter<List<String>>(
      key: PlannedMovementsFilterController.kPartyKey,
    )?.value;
    final contractsSelected = tryGetFilter<List<String>>(
      key: PlannedMovementsFilterController.kContractKey,
    )?.value;
    final transportSelected = tryGetFilter<String>(
      key: PlannedMovementsFilterController.kTransportKey,
    )?.value;
    final refsSelected = tryGetFilter<String>(
      key: PlannedMovementsFilterController.kRefKey,
    )?.value;
    final prioritySelected = tryGetFilter<String>(
      key: PlannedMovementsFilterController.kPriorityKey,
    )?.value;
    final weightSelected = tryGetFilter<String>(
      key: PlannedMovementsFilterController.kWeightKey,
    )?.value;
    final transportStatusesSelected = tryGetFilter<List<String>>(
      key: PlannedMovementsFilterController.kTransportStatusKey,
    )?.value;
    final movementTypesSelected = tryGetFilter<List<String>>(
      key: PlannedMovementsFilterController.kMovementTypeKey,
    )?.value;
    final transportPlanIdSelected = tryGetFilter<String>(
      key: PlannedMovementsFilterController.kTransportPlanIdKey,
    )?.value;
    final dateRangeSelected = tryGetFilter<DateTimeRange>(
      key: PlannedMovementsFilterController.kDateRangeKey,
    )?.value;
    final requestedDateSelected = tryGetFilter<DateTime>(
      key: PlannedMovementsFilterController.kRequestedDateKey,
    )?.value;
    return PlannedMovementsSearchModel(
      contract: contractsSelected,
      destinations: destinationsSelected,
      parties: partiesSelected,
      transport: transportSelected,
      refs: refsSelected?.split(',').map(int.parse).toList(),
      depotRegionNames: [],
      depotNos: [depotSelected],
      gradeGroups: [],
      grades: gradesSelected,
      gradeTypes: [],
      dueTo: dateRangeSelected?.end,
      dueFrom: dateRangeSelected?.start,
      ignoreZeroHeaps: false,
      movementType: movementTypesSelected,
      transportStatus: transportStatusesSelected,
      weeks: 2,
      priority: int.tryParse(prioritySelected ?? ''),
      weight: double.tryParse(weightSelected ?? ''),
      heaps: heapsSelected,
      transportPlanId: int.tryParse(transportPlanIdSelected ?? ''),
      requestedDate: requestedDateSelected,
    );
  }

  static String _plannedMovementsDateRange(
    BuildContext context,
    DateTimeRange? dateTimeRange,
  ) {
    if (dateTimeRange == null) {
      return '';
    }
    final shortDateFormatter = DateFormat.yMd(
      Localizations.localeOf(context).toLanguageTag(),
    );
    final start = shortDateFormatter.format(dateTimeRange.start);
    final end = shortDateFormatter.format(dateTimeRange.end);
    return '$start - $end';
  }

  static String _plannedMovementsRequestedDate(
    BuildContext context,
    DateTime? dateTime,
  ) {
    if (dateTime == null) {
      return '';
    }

    final shortDateFormatter = DateFormat.yMd(
      Localizations.localeOf(context).toLanguageTag(),
    );
    return shortDateFormatter.format(dateTime);
  }

  static void _setDefaultTransportStatusFilter(
    BuildContext context,
    List<EmrFilterModel<dynamic>> f,
  ) {
    final statusFilter = EmrFilterModel<List<String>>(
      key: kTransportStatusKey,
      name: 'Transport Status',
      text: '${context.l10n.psnopTransportStatusRequired} (+3)',
      value: [
        TransportStatus.required.name,
        TransportStatus.awaitingConfirmation.name,
        TransportStatus.cancelled.name,
        TransportStatus.confirmed.name,
      ],
    );
    f.add(statusFilter);
  }
}
