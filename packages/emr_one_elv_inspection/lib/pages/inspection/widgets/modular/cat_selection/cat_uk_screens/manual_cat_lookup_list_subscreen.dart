import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/datasources/datasources.dart';
import 'package:emr_one_elv_inspection/extensions/mod10_validator_extension.dart';
import 'package:emr_one_elv_inspection/functions/currency_symbol.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/inspection_modular_widgets.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class ManualCatLookupListSubScreen extends StatefulWidget {
  const ManualCatLookupListSubScreen({this.isImageRequired = false, super.key});

  final bool isImageRequired;

  @override
  State<ManualCatLookupListSubScreen> createState() =>
      _ManualCatLookupListSubScreenState();
}

class _ManualCatLookupListSubScreenState
    extends State<ManualCatLookupListSubScreen> {
  late ValueNotifier<int> _pageNumberNotifier;
  late EmrGridController<TechCatSearchModel> _gridController;
  late EmrQueryLayoutController<TechCatSearchModel> _queryLayoutController;
  late final TechCatSearchDatasource _dataSource;

  late final String mediaApi;

  @override
  void initState() {
    super.initState();
    _pageNumberNotifier = ValueNotifier(0);

    final controller = Provider.of<InspectionScreenController>(
      context,
      listen: false,
    );

    _dataSource = TechCatSearchDatasource(
      yardCode: controller.selectedYard,
      catService: controller.catService,
    );
    _queryLayoutController = EmrQueryLayoutController<TechCatSearchModel>(
      dataSource: _dataSource,
    );

    _gridController = EmrGridController<TechCatSearchModel>(
      data: _queryLayoutController.dataSource.data,
      rowSelectionMode: RowSelectionMode.single,
      showLoader: _queryLayoutController.dataSource.loading,
      onSelectedRowsChanged: (selectedRows) {
        _pageNumberNotifier.value = 1;

        final selectedCat = selectedRows.firstOrNull;
        final isValid = selectedCat?.sealNo?.isValidMod10Value() ?? false;
        controller.isSealNumberValid.value = isValid;
      },
    );

    final appConfig = Provider.of<AppConfig>(context, listen: false);

    mediaApi = appConfig.mediaApi;

    _dataSource.refresh();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionScreenController>(context);
    return ValueListenableBuilder(
      valueListenable: controller.state.loadingNotifier,
      builder: (context, loader, child) {
        if (loader) {
          return const SizedBox(
            width: 30,
            height: 30,
            child: Center(child: CircularProgressIndicator()),
          );
        }
        return ValueListenableBuilder(
          valueListenable: _pageNumberNotifier,
          builder: (ctx, page, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: page == 0
                      ? _selectManualList(context)
                      : _modifyManualList(context),
                ),
                if (page != 0) ...{
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          controller.isSealNumberUsed.value = false;
                          if (Navigator.of(context).canPop()) {
                            context.pop();
                          }
                        },
                        child: Text(context.l10n.cancel),
                      ),
                      Watch((watchContext) {
                        return TextButton(
                          onPressed: controller.isSealNumberValid.value
                              ? () async {
                                  final selectedCat = _gridController.data.value
                                      .where((x) => x.isSelected.value)
                                      .firstOrNull;

                                  if (selectedCat == null) {
                                    if (context.mounted) {
                                      await EmrModal.showMessageBar(
                                        context,
                                        context.l10n.pleaseSelectCAT,
                                        messageType: MessageBarTypes.error,
                                      );
                                    }
                                    return;
                                  }

                                  XFile? file;

                                  if (widget.isImageRequired) {
                                    file = await ImagePicker().pickImage(
                                      source: ImageSource.camera,
                                    );
                                    if (file == null) {
                                      return; // User cancelled image capture
                                    }
                                  }

                                  controller.state.loadingNotifier.value = true;
                                  final error = await controller.selectUKCats(
                                    selectedCat: selectedCat,
                                    imageBaseUrl: mediaApi,
                                    file: file,
                                  );
                                  controller.state.loadingNotifier.value =
                                      false;

                                  if (error.isNotEmpty) {
                                    if (error.contains('SEAL_NUMBER_IS_USED')) {
                                      controller.isSealNumberUsed.value = true;
                                    }
                                    return;
                                  }

                                  if (context.mounted &&
                                      Navigator.of(context).canPop()) {
                                    context.pop();
                                  }
                                }
                              : null,
                          child: Text(
                            widget.isImageRequired
                                ? context.l10n.takePhotoAndSave
                                : context.l10n.save,
                          ),
                        );
                      }),
                    ],
                  ),
                },
              ],
            );
          },
        );
      },
    );
  }

  Widget _selectManualList(BuildContext context) {
    return EmrQueryLayout.grid(
      gridController: _gridController,
      queryLayoutController: _queryLayoutController,
      columns: [
        EmrGridColumn(
          headerBuilder: () {
            return Text(
              context.l10n.fill,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            );
          },
          cellBuilder: (TechCatSearchModel rowItem) {
            return Text(rowItem.catalyticFill.toString());
          },
        ),
        EmrGridColumn(
          headerBuilder: () {
            return Text(
              context.l10n.make,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            );
          },
          cellBuilder: (TechCatSearchModel rowItem) {
            return Text(rowItem.make.toString());
          },
        ),
        EmrGridColumn(
          headerBuilder: () {
            return Text(
              context.l10n.model,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            );
          },
          cellBuilder: (TechCatSearchModel rowItem) {
            return Text(rowItem.model.toString());
          },
        ),
        EmrGridColumn(
          headerBuilder: () {
            return Text(
              context.l10n.seal,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            );
          },
          cellBuilder: (TechCatSearchModel rowItem) {
            return Text(rowItem.sealNo ?? '');
          },
        ),
        EmrGridColumn(
          headerBuilder: () {
            return Text(
              context.l10n.serialNo,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            );
          },
          cellBuilder: (TechCatSearchModel rowItem) {
            return Text(rowItem.serialNumber);
          },
        ),
        EmrGridColumn(
          headerBuilder: () {
            return Text(
              context.l10n.unitCost,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            );
          },
          cellBuilder: (TechCatSearchModel rowItem) {
            return Text((rowItem.unitCost ?? 0).toString());
          },
        ),
        EmrGridColumn(
          headerBuilder: () {
            return Text(
              context.l10n.unitCostPaid,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            );
          },
          cellBuilder: (TechCatSearchModel rowItem) {
            return Text((rowItem.unitCostPaid ?? 0).toString());
          },
        ),
      ],
    );
  }

  Widget _modifyManualList(BuildContext context) {
    final controller = Provider.of<InspectionScreenController>(context);
    return SingleChildScrollView(
      child: Wrap(
        runSpacing: Insets.gutter,
        spacing: Insets.gutter,
        alignment: WrapAlignment.spaceBetween,
        children: List.generate(_gridController.selectedRows.value.length, (
          index,
        ) {
          return LayoutBuilder(
            builder: (context, constraints) {
              return SizedBox(
                width: LayoutBuilderTechemetCATWidthConstants.size(
                  constraints.maxWidth,
                ),
                child: ManualCatLookupCardSubScreen(
                  currencyShort: getCurrencySymbol(TerritoryCodes.uk),
                  make:
                      controller
                          .state
                          .quoteToInspect
                          ?.vehicleDescription
                          .make ??
                      '',
                  model:
                      controller
                          .state
                          .quoteToInspect
                          ?.vehicleDescription
                          .model ??
                      '',
                  selectedCat: _gridController.selectedRows.value[index],
                  catClassificationList: controller.state.catClassificationList,
                  catLocationList: controller.state.catLocationList,
                  onSelectionChanged: () {
                    for (final x in controller.state.cats.value) {
                      x.isSelected.value = false;
                    }
                  },
                  isSealNumberValid: controller.isSealNumberValid,
                  isSealNumberUsed: controller.isSealNumberUsed,
                ),
              );
            },
          );
        }),
      ),
    );
  }

  @override
  void dispose() {
    _pageNumberNotifier.dispose();
    _queryLayoutController.dispose();
    super.dispose();
  }
}
