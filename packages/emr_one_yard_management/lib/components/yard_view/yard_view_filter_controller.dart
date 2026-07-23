import 'package:emr_flutter_theme/controls/emr_button.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/enums/allocation_status.dart';
import 'package:emr_one_yard_management/enums/classification_status.dart';
import 'package:emr_one_yard_management/enums/request_status.dart';
import 'package:emr_one_yard_management/models/depot/depots_model.dart';
import 'package:emr_one_yard_management/models/filter/filter_model.dart';
import 'package:emr_one_yard_management/models/heap/heaps_model.dart';
import 'package:emr_one_yard_management/repository/filters/allocation_filters_repository.dart';
import 'package:emr_one_yard_management/repository/filters/container_sizes_repository.dart';
import 'package:emr_one_yard_management/repository/filters/depot_repository.dart';
import 'package:emr_one_yard_management/repository/filters/grade_repository.dart';
import 'package:emr_one_yard_management/repository/filters/heaps_repository.dart';
import 'package:emr_one_yard_management/repository/filters/kpi_filters_repository.dart';
import 'package:emr_one_yard_management/repository/filters/lifecycle_status_repository.dart';
import 'package:emr_one_yard_management/repository/filters/package_options_repository.dart';
import 'package:emr_one_yard_management/repository/filters/sales_grade_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class YardViewFilterController extends EmrFilterController {
  YardViewFilterController({required this.httpClient, required this.config})
      : super(
          filters: [
            EmrFilterModel<List<String>>(
              key: kDepotKey,
              name: 'Depot',
              enableDelete: false,
            ),
          ],
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case kDepotKey:
                return EmrFilterAutoComplete<DepotsModel, String>(
                  const Key(kDepotKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      DepotRepository.fetchDepots(pattern, httpClient, config),
                  close: () {
                    if (controller.filters.value.length > 1) {
                      final f = [...controller.filters.value];
                      f.removeWhere((element) => element.key != filter.key);
                      controller.filters.value = f;
                    }
                    Navigator.of(context).pop();
                  },
                  getTitle: (suggestion) =>
                      '${suggestion.depotNumber} - ${suggestion.depotName}',
                  getValue: (suggestion) {
                    _depotCodes.add(suggestion.depotNumber!);
                    return suggestion.depotNumber!;
                  },
                  multi: true,
                );
              case kGradeKey:
                return EmrFilterAutoComplete<String, String>(
                  const Key(kGradeKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      GradeRepository.fetchGrades(pattern, httpClient, config),
                  close: () {
                    Navigator.of(context).pop();
                  },
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) {
                    return suggestion;
                  },
                );
              case kGradeGroupKey:
                return EmrFilterAutoComplete<String, String>(
                  const Key(kGradeGroupKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      GradeRepository.fetchGradeGroup(
                    pattern,
                    httpClient,
                    config,
                  ),
                  close: () {
                    Navigator.of(context).pop();
                  },
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) {
                    return suggestion;
                  },
                );
              case kSalesGradeKey:
                return EmrFilterAutoComplete<String, String>(
                  const Key(kSalesGradeKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      SalesGradeRepository.fetchSalesGrade(
                    pattern,
                    httpClient,
                    config,
                  ),
                  close: () {
                    Navigator.of(context).pop();
                  },
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) {
                    return suggestion;
                  },
                );
              case kLifecycleStatusKey:
                return EmrFilterAutoComplete<String, String>(
                  const Key(kLifecycleStatusKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      LifecycleStatusRepository.fetchLifecycleStatuses(
                    httpClient,
                    config,
                  ),
                  close: () {
                    Navigator.of(context).pop();
                  },
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) {
                    return suggestion;
                  },
                );
              case kContainerSizesKey:
                return EmrFilterAutoComplete<String, String>(
                  const Key(kContainerSizesKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      ContainerSizesRepository.fetchContainerSizes(
                    httpClient,
                    config,
                  ),
                  close: () {
                    Navigator.of(context).pop();
                  },
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) {
                    return suggestion;
                  },
                );
              case kPackageOptionsKey:
                return EmrFilterAutoComplete<String, String>(
                  const Key(kPackageOptionsKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      PackageOptionsRepository.fetchPackageOptions(
                    httpClient,
                    config,
                  ),
                  close: () {
                    Navigator.of(context).pop();
                  },
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) {
                    return suggestion;
                  },
                );
              case kAllocationFiltersKey:
                return EmrFilterAutoComplete<FilterModel, String>(
                  const Key(kAllocationFiltersKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      AllocationFiltersRepository.fetchAllocationFilters(
                    httpClient,
                    config,
                  ),
                  close: () {
                    Navigator.of(context).pop();
                  },
                  getTitle: (suggestion) => suggestion.name,
                  getValue: (suggestion) {
                    return suggestion.id.toString();
                  },
                );
              case kKPIFiltersKey:
                return EmrFilterAutoComplete<FilterModel, String>(
                  const Key(kKPIFiltersKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      KpiFiltersRepository.fetchKPIFIlters(
                    httpClient,
                    config,
                  ),
                  close: () {
                    Navigator.of(context).pop();
                  },
                  getTitle: (suggestion) => suggestion.name,
                  getValue: (suggestion) {
                    return suggestion.id.toString();
                  },
                );
              case kHeapsKey:
                return EmrFilterAutoComplete<HeapsModel, String>(
                  const Key(kHeapsKey),
                  filter,
                  controller,
                  (pattern, filterController) => HeapsRepository.fetchHeaps(
                    [],
                    pattern,
                    httpClient,
                    config,
                  ),
                  close: () {
                    Navigator.of(context).pop();
                  },
                  getTitle: (suggestion) => suggestion.heapDisplayName,
                  getValue: (suggestion) {
                    return suggestion.heapNo.toString();
                  },
                );
              case kAllocationDateRangeKey:
                DateTimeRange? pickedDateRange;
                return TextFormField(
                  decoration: InputDecoration(hintText: context.l10n.dateRange),
                  readOnly: true,
                  onTap: () async {
                    pickedDateRange = await showDateRangePicker(
                      context: context,
                      firstDate: DateTime.now().add(const Duration(days: -365)),
                      cancelText: context.l10n.psnopClose,
                      initialDateRange: _allocationFromAndToDate,
                      initialEntryMode: DatePickerEntryMode.input,
                      lastDate: DateTime(9999),
                    );
                    if (context.mounted) {
                      if (pickedDateRange != null) {
                        _allocationFromAndToDate = pickedDateRange;
                        controller.addOrUpdateFilter(
                          filter: filter,
                          text: _allocationsDateRange(context, pickedDateRange),
                          value: pickedDateRange,
                        );
                      }
                      Navigator.pop(context);
                    }
                  },
                );
              case kPickupDateRangeKey:
                DateTimeRange? pickedDateRange;
                return TextFormField(
                  decoration: InputDecoration(hintText: context.l10n.dateRange),
                  readOnly: true,
                  onTap: () async {
                    pickedDateRange = await showDateRangePicker(
                      context: context,
                      firstDate: DateTime.now().add(const Duration(days: -365)),
                      cancelText: context.l10n.psnopClose,
                      initialDateRange: _pickupFromAndToDate,
                      initialEntryMode: DatePickerEntryMode.input,
                      lastDate: DateTime(9999),
                    );
                    if (context.mounted) {
                      if (pickedDateRange != null) {
                        _pickupFromAndToDate = pickedDateRange;
                        controller.addOrUpdateFilter(
                          filter: filter,
                          text: _allocationsDateRange(context, pickedDateRange),
                          value: pickedDateRange,
                        );
                      }
                      Navigator.pop(context);
                    }
                  },
                );
              case kAllocationNumberKey:
                var allocationNumberValue = '';
                return Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (String value) async {
                        allocationNumberValue = value;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    EmrButton(
                      label: context.l10n.confirm,
                      onPressed: () {
                        if (allocationNumberValue.isNotEmpty) {
                          controller.addOrUpdateFilter(
                            filter: filter,
                            text: 'Allocation Number: $allocationNumberValue',
                            value: allocationNumberValue,
                          );
                        }
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              case kTicketNumberKey:
                var ticketNumberValue = '';
                return Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (String value) async {
                        ticketNumberValue = value;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    EmrButton(
                      label: context.l10n.confirm,
                      onPressed: () {
                        if (ticketNumberValue.isNotEmpty) {
                          controller.addOrUpdateFilter(
                            filter: filter,
                            text: 'Ticket Number: $ticketNumberValue',
                            value: ticketNumberValue,
                          );
                        }
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              case kContractRefKey:
                var contractRefValue = '';
                return Column(
                  children: [
                    TextField(
                      onChanged: (String value) async {
                        contractRefValue = value;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    EmrButton(
                      label: context.l10n.confirm,
                      onPressed: () {
                        if (contractRefValue.isNotEmpty) {
                          controller.addOrUpdateFilter(
                            filter: filter,
                            text: 'Contract: $contractRefValue',
                            value: contractRefValue,
                          );
                        }
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              case kHaulierKey:
                var haulierValue = '';
                return Column(
                  children: [
                    TextField(
                      onChanged: (String value) async {
                        haulierValue = value;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    EmrButton(
                      label: context.l10n.confirm,
                      onPressed: () {
                        if (haulierValue.isNotEmpty) {
                          controller.addOrUpdateFilter(
                            filter: filter,
                            text: 'Haulier: $haulierValue',
                            value: haulierValue,
                          );
                        }
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              case kPartyKey:
                var partyValue = '';
                return Column(
                  children: [
                    TextField(
                      onChanged: (String value) async {
                        partyValue = value;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    EmrButton(
                      label: context.l10n.confirm,
                      onPressed: () {
                        if (partyValue.isNotEmpty) {
                          controller.addOrUpdateFilter(
                            filter: filter,
                            text: 'Party: $partyValue',
                            value: partyValue,
                          );
                        }
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              case kCommentKey:
                var commentValue = '';
                return Column(
                  children: [
                    TextField(
                      onChanged: (String value) async {
                        commentValue = value;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    EmrButton(
                      label: context.l10n.confirm,
                      onPressed: () {
                        if (commentValue.isNotEmpty) {
                          controller.addOrUpdateFilter(
                            filter: filter,
                            text: 'Comment: $commentValue',
                            value: commentValue,
                          );
                        }
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              case kAllocationStatusKey:
                return EmrFilterAutoComplete<String, String>(
                  const Key(kAllocationStatusKey),
                  filter,
                  controller,
                  (pattern, filterController) {
                    final suggestions = <String>[];
                    if (pattern.isEmpty) {
                      suggestions.add(context.l10n.yardAllocationStatusOpen);
                      suggestions.add(context.l10n.yardAllocationStatusClosed);
                      suggestions.add(context.l10n.yardAllocationStatusUsed);
                      suggestions.add(context.l10n.yardAllocationStatusDraft);
                    } else {
                      if (context.l10n.yardAllocationStatusOpen
                              .startsWith(pattern) ||
                          AllocationStatus.open.name.startsWith(pattern)) {
                        suggestions.add(context.l10n.yardAllocationStatusOpen);
                      }

                      if (context.l10n.yardAllocationStatusClosed
                              .startsWith(pattern) ||
                          AllocationStatus.closed.name.startsWith(pattern)) {
                        suggestions.add(
                          context.l10n.yardAllocationStatusClosed,
                        );
                      }

                      if (context.l10n.yardAllocationStatusUsed
                              .startsWith(pattern) ||
                          AllocationStatus.used.name.startsWith(pattern)) {
                        suggestions.add(context.l10n.yardAllocationStatusUsed);
                      }

                      if (context.l10n.yardAllocationStatusDraft
                              .startsWith(pattern) ||
                          AllocationStatus.draft.name.startsWith(pattern)) {
                        suggestions.add(context.l10n.yardAllocationStatusDraft);
                      }
                    }

                    return Future.value(suggestions);
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) {
                    if (suggestion == context.l10n.yardAllocationStatusOpen) {
                      return AllocationStatus.open.name;
                    } else if (suggestion ==
                        context.l10n.yardAllocationStatusClosed) {
                      return AllocationStatus.closed.name;
                    } else if (suggestion ==
                        context.l10n.yardAllocationStatusUsed) {
                      return AllocationStatus.used.name;
                    } else if (suggestion ==
                        context.l10n.yardAllocationStatusDraft) {
                      return AllocationStatus.draft.name;
                    }
                    return '';
                  },
                );
              case kRequestStatusKey:
                return EmrFilterAutoComplete<String, String>(
                  const Key(kRequestStatusKey),
                  filter,
                  controller,
                  (pattern, filterController) {
                    final suggestions = <String>[];
                    if (pattern.isEmpty) {
                      suggestions.add(context.l10n.yardRequestStatusOpen);
                      suggestions.add(
                        context.l10n.yardRequestStatusFullyAllocated,
                      );
                    } else {
                      if (context.l10n.yardRequestStatusOpen
                              .startsWith(pattern) ||
                          RequestStatus.open.name.startsWith(pattern)) {
                        suggestions.add(context.l10n.yardRequestStatusOpen);
                      }

                      if (context.l10n.yardRequestStatusFullyAllocated
                              .startsWith(pattern) ||
                          RequestStatus.fullyAllocated.name
                              .startsWith(pattern)) {
                        suggestions.add(
                          context.l10n.yardRequestStatusFullyAllocated,
                        );
                      }
                    }

                    return Future.value(suggestions);
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) {
                    if (suggestion == context.l10n.yardRequestStatusOpen) {
                      return RequestStatus.open.name;
                    } else if (suggestion ==
                        context.l10n.yardRequestStatusFullyAllocated) {
                      return RequestStatus.fullyAllocated.name;
                    }
                    return '';
                  },
                );
              case kClassificationStatusKey:
                return EmrFilterAutoComplete<String, String>(
                  const Key(kClassificationStatusKey),
                  filter,
                  controller,
                  (pattern, filterController) {
                    final suggestions = <String>[];
                    if (pattern.isEmpty) {
                      suggestions
                          .add(context.l10n.yardClassificationStatusDomestic);
                      suggestions.add(
                        context.l10n.yardClassificationStatusEuropean,
                      );
                      suggestions
                          .add(context.l10n.yardClassificationStatusExport);
                    } else {
                      
                      if (context.l10n.yardClassificationStatusDomestic
                              .startsWith(pattern) ||
                          ClassificationStatus.domestic.name
                              .startsWith(pattern)) {
                        suggestions
                            .add(context.l10n.yardClassificationStatusDomestic);
                      }

                      if (context.l10n.yardClassificationStatusEuropean
                              .startsWith(pattern) ||
                          ClassificationStatus.european.name
                              .startsWith(pattern)) {
                        suggestions.add(
                          context.l10n.yardClassificationStatusEuropean,
                        );
                      }

                      if (context.l10n.yardClassificationStatusExport
                              .startsWith(pattern) ||
                          ClassificationStatus.export.name
                              .startsWith(pattern)) {
                        suggestions
                            .add(context.l10n.yardClassificationStatusExport);
                      }
                    }
                    return Future.value(suggestions);
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) {
                    if (suggestion ==
                        context.l10n.yardClassificationStatusDomestic) {
                      return ClassificationStatus.domestic.name;
                    } else if (suggestion ==
                        context.l10n.yardClassificationStatusEuropean) {
                      return ClassificationStatus.european.name;
                    } else if (suggestion ==
                        context.l10n.yardClassificationStatusExport) {
                      return ClassificationStatus.export.name;
                    }
                    return '';
                  },
                );
            }

            return Container();
          },
        );

  static String _allocationsDateRange(
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

  static const kDepotKey = 'depot';
  static const kGradeKey = 'grade';
  static const kGradeGroupKey = 'gradeGroup';
  static const kSalesGradeKey = 'salesGrade';
  static const kLifecycleStatusKey = 'lifecycleStatus';
  static const kContainerSizesKey = 'containerSizes';
  static const kPackageOptionsKey = 'packageOptions';
  static const kAllocationFiltersKey = 'allocationFilters';
  static const kKPIFiltersKey = 'kPIFilters';
  static const kHeapsKey = 'heaps';
  static const kAllocationDateRangeKey = 'allocationDate';
  static const kPickupDateRangeKey = 'pickupDate';
  static const kAllocationNumberKey = 'allocationNumber';
  static const kAllocationStatusKey = 'allocationStatus';
  static const kRequestStatusKey = 'requestStatus';
  static const kClassificationStatusKey = 'classificationStatus';
  static const kContractRefKey = 'contractRef';
  static const kPartyKey = 'party';
  static const kCommentKey = 'comment';
  static const kTicketNumberKey = 'ticketNumber';
  static const kHaulierKey = 'haulier';

  static final List<String> _depotCodes = [];
  static DateTimeRange? _allocationFromAndToDate;
  static DateTimeRange? _pickupFromAndToDate;

  final BaseClient httpClient;
  final AppConfig config;

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    final depotSelected = tryGetFilter<List<String>>(
          key: YardViewFilterController.kDepotKey,
        )?.value !=
        null;

    if (!depotSelected) {
      return [];
    }

    return [
      if (!containsFilter(
        key: YardViewFilterController.kAllocationDateRangeKey,
      ))
        EmrFilterModel<DateTimeRange>(
          key: YardViewFilterController.kAllocationDateRangeKey,
          name: 'Allocation Date',
        ),
      EmrFilterModel<DateTimeRange>(
        key: YardViewFilterController.kPickupDateRangeKey,
        name: 'Pickup Date',
      ),
      if (!containsFilter(key: YardViewFilterController.kAllocationNumberKey))
        EmrFilterModel<String>(
          key: YardViewFilterController.kAllocationNumberKey,
          name: 'Allocation Number',
        ),
      if (!containsFilter(key: YardViewFilterController.kTicketNumberKey))
        EmrFilterModel<String>(
          key: YardViewFilterController.kTicketNumberKey,
          name: 'Ticket Number',
        ),
      if (!containsFilter(key: YardViewFilterController.kCommentKey))
        EmrFilterModel<String>(
          key: YardViewFilterController.kCommentKey,
          name: 'Comment',
        ),
      if (!containsFilter(key: YardViewFilterController.kContractRefKey))
        EmrFilterModel<String>(
          key: YardViewFilterController.kContractRefKey,
          name: 'Contract Reference',
        ),
      if (!containsFilter(key: YardViewFilterController.kHaulierKey))
        EmrFilterModel<String>(
          key: YardViewFilterController.kHaulierKey,
          name: 'Haulier',
        ),
      if (!containsFilter(key: YardViewFilterController.kPartyKey))
        EmrFilterModel<String>(
          key: YardViewFilterController.kPartyKey,
          name: 'Party',
        ),
      if (!containsFilter(key: YardViewFilterController.kAllocationStatusKey))
        EmrFilterModel<String>(
          key: YardViewFilterController.kAllocationStatusKey,
          name: 'Allocation Status',
        ),
      if (!containsFilter(key: YardViewFilterController.kRequestStatusKey))
        EmrFilterModel<String>(
          key: YardViewFilterController.kRequestStatusKey,
          name: 'Request Status',
        ),
      if (!containsFilter(
        key: YardViewFilterController.kClassificationStatusKey,
      ))
        EmrFilterModel<String>(
          key: YardViewFilterController.kClassificationStatusKey,
          name: 'Classification Status',
        ),
      if (!containsFilter(key: YardViewFilterController.kGradeKey))
        EmrFilterModel<String>(
          key: YardViewFilterController.kGradeKey,
          name: 'Grade',
        ),
      if (!containsFilter(key: YardViewFilterController.kGradeGroupKey))
        EmrFilterModel<String>(
          key: YardViewFilterController.kGradeGroupKey,
          name: 'Grade Group',
        ),
      if (!containsFilter(key: YardViewFilterController.kSalesGradeKey))
        EmrFilterModel<String>(
          key: YardViewFilterController.kSalesGradeKey,
          name: 'Sales Grade',
        ),
      if (!containsFilter(key: YardViewFilterController.kLifecycleStatusKey))
        EmrFilterModel<String>(
          key: YardViewFilterController.kLifecycleStatusKey,
          name: 'Lifecycle Status',
        ),
      if (!containsFilter(key: YardViewFilterController.kAllocationFiltersKey))
        EmrFilterModel<String>(
          key: YardViewFilterController.kAllocationFiltersKey,
          name: 'Filters',
        ),
      if (!containsFilter(key: YardViewFilterController.kKPIFiltersKey))
        EmrFilterModel<String>(
          key: YardViewFilterController.kKPIFiltersKey,
          name: 'KPI Type',
        ),
      if (!containsFilter(key: YardViewFilterController.kHeapsKey))
        EmrFilterModel<String>(
          key: YardViewFilterController.kHeapsKey,
          name: 'Heap',
        ),
      if (!containsFilter(key: YardViewFilterController.kContainerSizesKey))
        EmrFilterModel<String>(
          key: YardViewFilterController.kContainerSizesKey,
          name: 'Container Sizes',
        ),
      if (!containsFilter(key: YardViewFilterController.kPackageOptionsKey))
        EmrFilterModel<String>(
          key: YardViewFilterController.kPackageOptionsKey,
          name: 'Package Options',
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
}
