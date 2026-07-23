import 'dart:async';

import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/controllers/base_settings_controller.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/app_constants.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/constants/stock_take_named_routes.dart';
import 'package:emr_one_stock_take/models/enums.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_one_stock_take/screens/start_stock_take/manual_update/bulk_edit_action.dart';
import 'package:emr_one_stock_take/screens/start_stock_take/manual_update/manual_update_data_source.dart';
import 'package:emr_one_stock_take/screens/start_stock_take/manual_update/manual_web_location_filter_controller.dart';
import 'package:emr_one_stock_take/widgets/column_builder.dart';
import 'package:emr_one_stock_take/widgets/loader_wrapper.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class StocktakeManualWeb extends StatefulWidget {
  const StocktakeManualWeb({
    required this.stockTake,
    required this.userAccessService,
    required this.controller,
    super.key,
  });
  final StockTake stockTake;
  final UserAccessService userAccessService;
  final LocationWeightController controller;

  @override
  State<StocktakeManualWeb> createState() => _StocktakeManualWebState();
}

class _StocktakeManualWebState extends State<StocktakeManualWeb> {
  late final EmrQueryLayoutController<EditableStockLocations>
  _emrQueryLayoutController;
  late final ManualUpdateDataSource _dataSource;
  final isRowSelected = signal(false);
  ValueNotifier<bool> strictValidationEnabled = ValueNotifier(false);

  @override
  void dispose() {
    _emrQueryLayoutController.dispose();
    _dataSource.selection.removeListener(_onSelectionChanged);
    isRowSelected.dispose();
    strictValidationEnabled.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _dataSource = ManualUpdateDataSource(
      allLocations: widget.stockTake.locations
          .map(
            (loc) => EditableStockLocations(
              id: loc.id,
              locationCode: loc.code,
              productCode: loc.productCode,
              productClass: loc.productClass,
              productLine: loc.productLine,
              description: loc.description,
              weighedById: loc.takenWeights.lastOrNull?.weighedById
                  ?.replaceFirst('userInfos', 'users'),
              weighedByName: loc.takenWeights.lastOrNull?.weighedByName,
              weighedDate: loc.takenWeights.lastOrNull?.weighedDateTime
                  ?.toLocal(),
              weighedTime: loc.takenWeights.lastOrNull?.weighedDateTime
                  ?.toLocal(),
              weight: loc.takenWeights.isEmpty
                  ? null
                  : loc.getTotalNetWeight(
                      loc.takenWeights.last.grossWeight?.uom ?? loc.defaultUom,
                    ),
              productDesc: loc.productDesc,
              defaultUom: loc.defaultUom,
              snapshotAt: loc.snapshot?.snapshotDate,
            ),
          )
          .toList(),
    );
    _dataSource.selectionMode = RowSelectionMode.multiple;
    _emrQueryLayoutController = EmrQueryLayoutController(
      dataSource: _dataSource,
      supportedViewModes: const {EmrQueryLayoutViewMode.grid},
      filterController: ManualWebLocationFilterController(
        manualUpdateDataSource: _dataSource,
      ),
    );
    _dataSource.selection.addListener(_onSelectionChanged);
  }

  bool _isRowValid(EditableStockLocations item) {
    return item.weight.value != null &&
        item.weighedBy.value != null &&
        item.weighedDate.value != null &&
        item.weighedTime.value != null;
  }

  void _onSelectionChanged() {
    isRowSelected.value = _dataSource.selection.value.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final uomService = Provider.of<UomService>(context, listen: false);
    final settingsController =
        Provider.of<BaseSettingsController>(context) as SettingsController;
    final uoms = uomService.getUoms(settingsController.territory);

    final loggedInUserId = UserInfoService.instance?.userInfo.id;
    final isEnableFinishButton =
        widget.stockTake.conductedBy.split('/').last == loggedInUserId ||
        widget.stockTake.originatorId.split('/').last == loggedInUserId;

    uoms.remove(Enum$Uom.EA.toUomModel());
    final locations = ValueNotifier<List<StocktakeLocation>>(
      widget.stockTake.locations,
    );

    return LoaderWrapper(
      showLoader: widget.controller.showLoader,
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter / 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderDetails(
              productFamily: widget.stockTake.productFamily,
              name: widget.stockTake.name,
              yard: widget.stockTake.yardCode,
              conductedBy: widget.stockTake.conductor ?? '',
            ),
            const SizedBox(height: Insets.gutter / 2),
            const Divider(height: 1),
            Expanded(child: _buildGridView(theme, uoms, locations)),
            const SizedBox(height: Insets.gutter / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: Insets.gutter),
                  child: ElevatedButton(
                    onPressed: () async {
                      await manualUpdateStockTakeLocations(
                        locations: locations,
                        isSaveCall: true,
                      );
                    },
                    child: Text(context.l10n.save),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: Insets.gutter),
                  child: FilledButton(
                    onPressed: isEnableFinishButton
                        ? () async {
                            await manualUpdateLocations(context);
                          }
                        : null,
                    style: EmrButtonStyles.cta(),
                    child: Text(
                      widget.stockTake.isRoutineCheck
                          ? context.l10n.completeStocktake
                          : context.l10n.submitForApproval,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridView(
    ThemeData theme,
    List<Uom> uoms,
    ValueNotifier<List<StocktakeLocation>> locations,
  ) {
    return EmrForm(
      autovalidateMode: AutovalidateMode.always,
      key: widget.controller.formKey,
      mode: EmrFormMode.grid,
      builder: (context) => EmrQueryLayoutHybrid<EditableStockLocations>(
        actions: {
          EditIntent: EditAction(
            controller: _emrQueryLayoutController,
            stockTake: widget.stockTake,
            userAccessService: widget.userAccessService,
            weightController: widget.controller,
            createIntent: (context) => EditIntent(context: context),
            enabled: isRowSelected.watch(context),
          ),
        },
        controller: _emrQueryLayoutController,
        columns: [
          EmrGridColumn(
            width: 30,
            headerBuilder: SizedBox.shrink,
            cellBuilder: (rowItem) =>
                EmrValidationGroupSummary(groupId: rowItem.id),
          ),
          EmrGridColumn(
            headerBuilder: () => EmrGridHeader(text: context.l10n.location),
            width: 70,
            cellBuilder: (item) => Tooltip(
              message: '${item.locationCode} - ${item.description}',
              child: getColumnText(item.locationCode, theme),
            ),
          ),
          EmrGridColumn(
            headerBuilder: () => EmrGridHeader(text: context.l10n.product),
            width: 70,
            cellBuilder: (item) => Tooltip(
              message:
                  '${item.productCode} - '
                  '${item.productDesc ?? ''}',
              child: getColumnText(item.productCode, theme),
            ),
          ),
          EmrGridColumn(
            headerBuilder: () => EmrGridHeader(text: context.l10n.productLine),
            width: 70,
            cellBuilder: (item) => Text(item.productLine),
          ),
          EmrGridColumn(
            headerBuilder: () => EmrGridHeader(text: context.l10n.productClass),
            width: 70,
            cellBuilder: (item) => Text(item.productClass),
          ),
          EmrGridColumn(
            headerBuilder: () =>
                EmrGridHeader(text: context.l10n.snapshotDateTime),
            cellBuilder: (rowItem) {
              return Text(
                rowItem.snapshotAt?.asyMMdtime(
                      Localizations.localeOf(context),
                    ) ??
                    '-',
              );
            },
          ),
          EmrGridColumn(
            headerBuilder: () => EmrGridHeader(text: context.l10n.weight),
            cellBuilder: (item) {
              return EmrUomFormField(
                key: Key('${item.id}_weight'),
                binding: item.weight,
                defaultUom: item.weight.value?.uom ?? item.defaultUom,
                uomList: uoms,
                validator: (value) => Validators.forValidationGroup(
                  context,
                  groupId: item.id,
                  label: context.l10n.weight,
                  validators: [
                    _rowValidator(context, item, LocationGridColumns.weight),
                  ],
                ),
              );
            },
          ),
          EmrGridColumn(
            width: 150,
            headerBuilder: () => EmrGridHeader(text: context.l10n.weighedBy),
            cellBuilder: (item) {
              return EmrPickerFormField<SelectOption>(
                key: Key('${item.id}_weighedBy'),
                items: (query) async {
                  final users = await widget.userAccessService.searchUsers(
                    query: query,
                  );
                  return users.data?.$1
                          .map(
                            (s) => SelectOption(
                              key: s.id,
                              name: s.name,
                              subTitle: s.emailAddress,
                            ),
                          )
                          .toList() ??
                      [];
                },
                itemTitleText: (item) => item.name,
                itemSubtitleText: (item) => item.subTitle ?? '',
                binding: item.weighedBy,
                validator: (value) => Validators.forValidationGroup(
                  context,
                  groupId: item.id,
                  label: context.l10n.weighedBy,
                  validators: [
                    _rowValidator(context, item, LocationGridColumns.weighedBy),
                  ],
                ),
              );
            },
          ),
          EmrGridColumn(
            headerBuilder: () => EmrGridHeader(text: context.l10n.weighedDate),
            cellBuilder: (item) {
              return EmrDateFormField(
                key: Key('${item.id}_weighedDate'),
                binding: item.weighedDate,
                firstDate: item.snapshotAt.dateOnly,
                lastDate: DateTime.now().dateOnly,
                hintText: '',
                validator: (_) => Validators.forValidationGroup(
                  context,
                  groupId: item.id,
                  label: context.l10n.weighedDate,
                  validators: [
                    _rowValidator(
                      context,
                      item,
                      LocationGridColumns.weighedDate,
                    ),
                  ],
                ),
              );
            },
          ),
          EmrGridColumn(
            headerBuilder: () => EmrGridHeader(text: context.l10n.weighedTime),
            cellBuilder: (item) {
              return EmrTimeFormField(
                key: Key('${item.id}_weighedTime'),
                binding: item.weighedTime,
                hintText: '',
                validator: (_) => Validators.forValidationGroup(
                  context,
                  groupId: item.id,
                  label: context.l10n.weighedTime,
                  validators: [
                    _rowValidator(
                      context,
                      item,
                      LocationGridColumns.weighedTime,
                    ),
                  ],
                ),
              );
            },
          ),
          EmrGridColumn(
            headerBuilder: () => const EmrGridHeader(text: ''),
            width: 40,
            cellBuilder: (item) {
              return ValueListenableBuilder(
                valueListenable: locations,
                builder: (context, value, child) {
                  final location = value.firstWhere((s) => s.id == item.id);
                  return Align(
                    child: IconButton(
                      icon: const Icon(Icons.comment_outlined),
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        HelperMethods.openCommentsDialog(
                          context,
                          widget.stockTake.id!,
                          location,
                          widget.controller.stocktakeService,
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),
        ],
        rowHeight: (rowIndex) => rowIndex < 0 ? 40 : 64,
      ),
    );
  }

  String? _rowValidator(
    BuildContext context,
    EditableStockLocations item,
    LocationGridColumns fieldName,
  ) {
    final anyFieldsFilledIn =
        item.weight.value != null ||
        item.weighedBy.value != null ||
        item.weighedTime.value != null ||
        item.weighedDate.value != null;

    if (!anyFieldsFilledIn && !strictValidationEnabled.value) {
      return null;
    }

    switch (fieldName) {
      case LocationGridColumns.weight:
        if (item.weight.value == null) {
          return context.l10n.required;
        } else if ((item.weight.value?.value ?? 0) >
            AppConstants.maxWeightValue) {
          return context.l10n.mustBeLessOrMax(AppConstants.maxWeightValue);
        }
      case LocationGridColumns.weighedDate:
        if (item.weighedDate.value == null) {
          return context.l10n.required;
        }
      case LocationGridColumns.weighedTime:
        if (item.weighedTime.value == null) {
          return context.l10n.required;
        }

        // Only validate datetime logic if both are present
        if (item.weighedDate.value != null && item.weighedTime.value != null) {
          final weighedDate = item.weighedDate.value!;
          final weighedTime = item.weighedTime.value!;

          final weighedDateTime = DateTime(
            weighedDate.year,
            weighedDate.month,
            weighedDate.day,
            weighedTime.hour,
            weighedTime.minute,
          );

          final now = DateTime.now();

          if (weighedDateTime.isAfter(now)) {
            return context.l10n.validateTimeMessage;
          }
          final snapshotLocal = item.snapshotAt!.toLocal();

          if (weighedDateTime.isBefore(snapshotLocal)) {
            final locale = Localizations.localeOf(context);
            return context.l10n.stockTakeWeighedTimeValidation(
              item.snapshotAt!.asTime(locale),
            );
          }
        }
      case LocationGridColumns.weighedBy:
        if (item.weighedBy.value == null) {
          return context.l10n.required;
        }
    }

    return null;
  }

  Future<void> manualUpdateLocations(BuildContext context) async {
    strictValidationEnabled.value = true;
    final isInvalid = await validateForm();
    if (isInvalid) {
      return;
    }

    final validRows = _dataSource.data.value.where(_isRowValid);
    final remainingCount =
        (widget.stockTake.locations.length) - validRows.length;
    if (!context.mounted) {
      return;
    }

    await widget.controller.showSubmitForApprovalConfirmation(
      context,
      remainingCount,
      () async {
        final updated = await manualUpdateStockTakeLocations();
        if (!updated) return;

        final updatedDeltaWeight = await updateDeltaWeight();
        if (!updatedDeltaWeight || !context.mounted) return;

        if (widget.stockTake.isRoutineCheck) {
          await completeStockTake();
        } else {
          await sendStocktakeToWorkflow(context);
        }
      },
      isWeb: true,
      isRoutineCheck: widget.stockTake.isRoutineCheck,
    );
  }

  Future<void> completeStockTake() async {
    final result = await widget.controller.stocktakeService.completeStockTake(
      id: widget.stockTake.id!,
    );
    if (!mounted) return;
    Navigator.of(context).pop();

    if (!result.success) {
      await EmrModal.showMessageBar(
        context,
        HelperMethods.getErrorMessage(context, result),
        messageType: MessageBarTypes.error,
      );
    } else {
      context.goNamed(StockTakeNamedRoutes.stockTakeHome);
      unawaited(
        EmrModal.showMessageBar(context, context.l10n.completeStockTakeSuccess),
      );
    }
  }

  Future<bool> validateForm() async {
    if (widget.stockTake.locations.isEmpty) {
      unawaited(
        EmrModal.showMessageBar(
          context,
          context.l10n.noLocationsHaveBeenSelected,
          messageType: MessageBarTypes.error,
        ),
      );
      return true;
    }

    var hasErrors = false;

    for (final item in _dataSource.data.value) {
      if (Validators.forValidationGroup(
                context,
                groupId: item.id,
                label: context.l10n.weight,
                validators: [
                  _rowValidator(context, item, LocationGridColumns.weight),
                ],
              ) !=
              null ||
          Validators.forValidationGroup(
                context,
                groupId: item.id,
                label: context.l10n.weighedBy,
                validators: [
                  _rowValidator(context, item, LocationGridColumns.weighedBy),
                ],
              ) !=
              null ||
          Validators.forValidationGroup(
                context,
                groupId: item.id,
                label: context.l10n.weighedDate,
                validators: [
                  _rowValidator(context, item, LocationGridColumns.weighedDate),
                ],
              ) !=
              null ||
          Validators.forValidationGroup(
                context,
                groupId: item.id,
                label: context.l10n.weighedTime,
                validators: [
                  _rowValidator(context, item, LocationGridColumns.weighedTime),
                ],
              ) !=
              null) {
        hasErrors = true;
        break;
      }
    }

    widget.controller.formKey.currentState?.validate();

    if (hasErrors) {
      await EmrModal.showMessageBar(
        context,
        context.l10n.correctTheValidationErrors,
        messageType: MessageBarTypes.error,
      );
    }
    return hasErrors;
  }

  Future<bool> manualUpdateStockTakeLocations({
    bool isSaveCall = false,
    ValueNotifier<List<StocktakeLocation>>? locations,
  }) async {
    strictValidationEnabled.value = !isSaveCall;
    final isInvalid = await validateForm();
    if (!isInvalid) {
      final input = mapManualUpdatesToInput();
      if (input.locations.isEmpty) return true;
      widget.controller.showLoader.value = isSaveCall;
      final result = await widget.controller.stocktakeService
          .manualUpdateStockTake(input);
      if (!mounted) return result.success;
      if (!result.success) {
        widget.controller.showLoader.value = false;
        if (!isSaveCall) Navigator.of(context).pop();
        await EmrModal.showMessageBar(
          context,
          HelperMethods.getErrorMessage(context, result),
          messageType: MessageBarTypes.error,
        );
        return false;
      } else if (isSaveCall) {
        await EmrModal.showMessageBar(context, context.l10n.successfullySaved);
        if (result.data != null) {
          locations!.value = result.data!;
        }
        widget.controller.showLoader.value = false;
        return true;
      }
      widget.controller.showLoader.value = false;
      return true;
    }
    return false;
  }

  Future<bool> updateDeltaWeight() async {
    final response = await widget.controller.stocktakeService.updateDeltaWeight(
      widget.stockTake.id!,
    );

    if (response.success) {
      return true;
    } else {
      if (!mounted) return false;
      await EmrModal.showMessageBar(
        context,
        HelperMethods.getErrorMessage(context, response),
        messageType: MessageBarTypes.error,
      );
      return false;
    }
  }

  Future<void> sendStocktakeToWorkflow(BuildContext context) async {
    final result = await widget.controller.stocktakeService
        .sendStocktakeToWorkflow(widget.stockTake.id!);
    if (!context.mounted) return;
    Navigator.of(context).pop();

    if (result.success) {
      context.goNamed(StockTakeNamedRoutes.stockTakeHome);
      unawaited(
        EmrModal.showMessageBar(context, context.l10n.stockTakeSentToWorkflow),
      );
    } else {
      if (!context.mounted) return;
      await EmrModal.showMessageBar(
        context,
        HelperMethods.getErrorMessage(context, result),
        messageType: MessageBarTypes.error,
      );
    }
  }

  Input$StockTakeManualUpdateInput mapManualUpdatesToInput() {
    final entries = _dataSource.data.value.where(_isRowValid);

    return Input$StockTakeManualUpdateInput(
      stocktakeId: widget.stockTake.id!,
      locations: entries.map((entry) {
        return Input$ManualLocationUpdateInput(
          locationId: entry.id,
          weight: Input$ManualWeightInput(
            id: 0,
            title: 'Manual Entry',
            grossWeight: entry.weight.value != null
                ? Input$UomValueInput(
                    value: entry.weight.value!.value,
                    isRate: false,
                    uom: Enum$Uom.fromJson(entry.weight.value!.uom.uomCode),
                  )
                : null,
            created: Input$AuditedInput(
              userInfoId: entry.weighedBy.value!.key.replaceFirst(
                'users',
                'userInfos',
              ),
              at: DateTime(
                entry.weighedDate.value!.year,
                entry.weighedDate.value!.month,
                entry.weighedDate.value!.day,
                entry.weighedTime.value?.hour ?? 0,
                entry.weighedTime.value?.minute ?? 0,
              ).toUtc(),
              userName: entry.weighedBy.value!.name.isNotEmpty
                  ? entry.weighedBy.value!.name
                  : widget.stockTake.conductor!,
            ),
          ),
        );
      }).toList(),
    );
  }
}
