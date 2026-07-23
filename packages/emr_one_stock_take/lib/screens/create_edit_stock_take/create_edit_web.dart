import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/models/stock_take_model.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/controller/create_stock_take_controller.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/create_edit_stocktake_mixin.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/widgets/basic_details/header_details.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/widgets/location_widgets/selected_locations.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class CreateEditStockTakeScreenWeb extends StatefulWidget {
  const CreateEditStockTakeScreenWeb({
    required this.controller,
    required this.stockTake,
    this.cloneCreate = false,
    this.isEdit = false,
    super.key,
  });
  final StockTake stockTake;
  final bool cloneCreate;
  final CreateStockTakeController controller;
  final bool isEdit;

  @override
  State<CreateEditStockTakeScreenWeb> createState() =>
      _CreateEditStockTakeScreenWebState();
}

class _CreateEditStockTakeScreenWebState
    extends State<CreateEditStockTakeScreenWeb>
    with CreateEditStockTakeMixin<CreateEditStockTakeScreenWeb> {
  @override
  CreateStockTakeController get controller => widget.controller;

  @override
  StockTake get stockTake => widget.stockTake;

  @override
  void initState() {
    super.initState();
    initStockTake(isCreateRequest: !widget.isEdit);

    if (widget.cloneCreate) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showEditDialog(
          onAfterSave: () {
            controller.locationDataSource.refresh();
          },
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Watch(
            (context) => HeaderDetails(
              productFamily: productFamily.value,
              name: stockTakeName.value,
              yard: yardCode.value,
              conductedBy: conductor.value,
              onEditClick: () {
                showEditDialog(
                  onAfterSave: () {
                    controller.locationDataSource.refresh();
                  },
                );
              },
            ),
          ),
          const SizedBox(height: Insets.gutter),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: theme.colorScheme.outlineVariant),
                      borderRadius: BorderRadius.circular(Insets.gutter / 2),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: Insets.gutter,
                            right: Insets.gutter,
                            top: Insets.gutter,
                          ),
                          child: Text(
                            context.l10n.addNewLocations,
                            style: theme.textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: YardLocationsWeb(
                            emrQueryLayoutController:
                                controller.locationsLayoutController,
                            createStockTakeController: controller,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: Insets.gutter),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(Insets.gutter),
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: theme.colorScheme.outlineVariant),
                      borderRadius: BorderRadius.circular(Insets.gutter / 2),
                    ),
                    child: ValueListenableBuilder(
                      valueListenable:
                          controller.locationDataSource.allSelectedLocations,
                      builder: (context, value, child) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${context.l10n.selectedLocations} '
                              '(${value.length})',
                              style: theme.textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: Insets.gutter / 2),
                            if (value.isEmpty)
                              Text(
                                context.l10n.noLocationsHaveBeenSelected,
                                style: theme.textTheme.titleSmall,
                              ),
                            Expanded(
                              child: SelectedLocations(
                                locations: value,
                                onRemove: removeLocation,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: Insets.gutter),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter),
                child: ValueListenableBuilder(
                  valueListenable:
                      controller.locationDataSource.allSelectedLocations,
                  builder: (context, value, child) {
                    return FilledButton(
                      onPressed: value.isNotEmpty
                          ? () => submitStockTake(
                                context,
                                isEdit: widget.isEdit,
                                isClone: widget.cloneCreate,
                              )
                          : () => EmrModal.showMessageBar(
                                context,
                                context.l10n.selectLocationsProceed,
                                messageType: MessageBarTypes.error,
                              ),
                      style: EmrButtonStyles.cta(),
                      child: Text(
                        widget.isEdit
                            ? context.l10n.save
                            : context.l10n.createStockTake,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
