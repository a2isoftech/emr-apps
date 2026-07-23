import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/emr_one_elv_core.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/datasources/tech_cat_search_datasource_raven.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/techemat_manual_cat.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/controller/inspection_controller.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/widgets/modular/cat_selection/cat_uk_screens/manual_cat_lookup_card_subscreen.dart';
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
  late final TechCatSearchDatasource _dataSource;
  late EmrQueryLayoutController<TechemetManualCat> _queryLayoutController;
  late EmrGridController<TechemetManualCat> _gridController;

  @override
  void initState() {
    super.initState();
    _pageNumberNotifier = ValueNotifier(0);

    final controller = Provider.of<InspectionController>(
      context,
      listen: false,
    );

    _dataSource = TechCatSearchDatasource(
      yardCode: controller.yardCode,
      service: controller.service,
    );

    _queryLayoutController = EmrQueryLayoutController<TechemetManualCat>(
      dataSource: _dataSource,
    );

    _gridController = EmrGridController<TechemetManualCat>(
      data: _queryLayoutController.dataSource.data,
      rowSelectionMode: RowSelectionMode.single,
      showLoader: _queryLayoutController.dataSource.loading,
      onSelectedRowsChanged: (selectedRows) {
        _pageNumberNotifier.value = 1;
      },
    );
  }

  @override
  void dispose() {
    _pageNumberNotifier.dispose();
    _queryLayoutController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<InspectionController>(context);

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
                          controller.state.isSealNumberUsed.value = false;
                          if (Navigator.of(context).canPop()) {
                            context.pop();
                          }
                        },
                        child: Text(context.l10n.cancel),
                      ),
                      Watch((watchContext) {
                        return TextButton(
                          onPressed: () async {
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
                            final errorMessage = await controller
                                .addCatalyticConverter(
                                  selectedCat.classification,
                                  selectedCat.partLocation,
                                  techemetCatId: selectedCat.id,
                                  file: file,
                                );
                            controller.state.loadingNotifier.value = false;

                            if (errorMessage.isNotEmpty) {
                              if (errorMessage.contains(selectedCat.sealNo)) {
                                controller.state.isSealNumberUsed.value = true;
                              }
                              return;
                            }

                            if (context.mounted &&
                                Navigator.of(context).canPop()) {
                              context.pop();
                            }
                          },
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
    return EmrQueryLayout<TechemetManualCat>.grid(
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
          cellBuilder: (var rowItem) {
            return Text(rowItem.fill.toString());
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
          cellBuilder: (var rowItem) {
            return Text(rowItem.make);
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
          cellBuilder: (var rowItem) {
            return Text(rowItem.model);
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
          cellBuilder: (var rowItem) {
            return Text(rowItem.sealNo);
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
          cellBuilder: (var rowItem) {
            return Text(rowItem.serial);
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
          cellBuilder: (var rowItem) {
            return Text(rowItem.unitCost.toString());
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
          cellBuilder: (var rowItem) {
            return Text(rowItem.unitCostPaid.toString());
          },
        ),
      ],
    );
  }

  Widget _modifyManualList(BuildContext context) {
    final controller = Provider.of<InspectionController>(context);
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
              final catalyticConverter =
                  _gridController.selectedRows.value[index];
              catalyticConverter.isSelected.value = true;
              return SizedBox(
                width: LayoutBuilderTechemetCATWidthConstants.size(
                  constraints.maxWidth,
                ),
                child: ManualCatLookupCardSubScreen(
                  catalyticConverter: _gridController.selectedRows.value[index],
                  isSealNumberUsed: controller.state.isSealNumberUsed,
                  currencyCode: controller.activeTerritory.currencyCode(),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
