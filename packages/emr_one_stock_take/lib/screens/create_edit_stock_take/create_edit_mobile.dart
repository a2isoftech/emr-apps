import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/models/stock_take_model.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/controller/create_stock_take_controller.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/create_edit_stocktake_mixin.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/widgets/basic_details/header_details.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/widgets/location_widgets/selected_locations.dart';
import 'package:emr_one_stock_take/screens/create_edit_stock_take/widgets/location_widgets/yard_locations_mobile.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class CreateEditStockTakeScreenMobile extends StatefulWidget {
  const CreateEditStockTakeScreenMobile({
    required this.controller,
    required this.stockTake,
    this.cloneCreate = false,
    this.isEdit = false,
    super.key,
  });

  final StockTake stockTake;
  final CreateStockTakeController controller;
  final bool cloneCreate;
  final bool isEdit;

  @override
  State<CreateEditStockTakeScreenMobile> createState() =>
      _CreateEditStockTakeScreenMobileState();
}

class _CreateEditStockTakeScreenMobileState
    extends State<CreateEditStockTakeScreenMobile>
    with CreateEditStockTakeMixin<CreateEditStockTakeScreenMobile> {
  @override
  CreateStockTakeController get controller => widget.controller;

  @override
  StockTake get stockTake => widget.stockTake;

  @override
  void initState() {
    super.initState();
    initStockTake(isCreateRequest: !widget.isEdit);

    if (widget.stockTake.locations.isEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showAddNewLocations();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Watch(
          (context) => HeaderDetails(
            productFamily: productFamily.value,
            name: stockTakeName.value,
            yard: yardCode.value,
            conductedBy: conductor.value,
            onEditClick: showEditDialog,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: ValueListenableBuilder(
              valueListenable:
                  controller.locationDataSource.allSelectedLocations,
              builder: (context, value, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${context.l10n.locations} (${value.length})',
                      style: theme.textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
          child: Row(
            children: [
              Expanded(
                child: FilledButton(
                  onPressed: _showAddNewLocations,
                  child: Text(context.l10n.addLocations),
                ),
              ),
              const SizedBox(width: Insets.gutter),
              Expanded(
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
                        widget.isEdit ? context.l10n.save : context.l10n.create,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _showAddNewLocations() {
    Flyout.show<void>(
      padding: EdgeInsets.zero,
      width: MediaQuery.of(context).size.width,
      context: context,
      builder: (p0) => Material(
        child: YardLocationsMobile(
          controller: controller,
          stockTake: stockTake,
        ),
      ),
    );
  }
}
