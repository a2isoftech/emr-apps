import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/services/inventory_services/location_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/screens/ticket_details/ticket_details.dart';
import 'package:flutter/material.dart';

class TicketLineDetailsScreen extends StatefulWidget {
  const TicketLineDetailsScreen({
    required this.model,
    required this.lineModel,
    super.key,
  });

  final TicketDetailsFormData model;

  final TicketLineFormData lineModel;

  @override
  State<TicketLineDetailsScreen> createState() =>
      _TicketLineDetailsScreenState();
}

class _TicketLineDetailsScreenState extends State<TicketLineDetailsScreen> {
  @override
  void initState() {
    super.initState();

    // When adding a new line.
    if (widget.lineModel.created.value == null) {
      widget.lineModel.product.addListener(_onProductChanged);
    }
  }

  @override
  void dispose() {
    widget.lineModel.product.removeListener(_onProductChanged);

    super.dispose();
  }

  void _onProductChanged() {
    // Keep `stockAsProduct` in sync with `product`.
    widget.lineModel.stockAsProduct.value = widget.lineModel.product.value;

    // Clear the `location` when the `product` changes.
    widget.lineModel.location.value = PickerItem.empty();

    // Query inventory locations for the selected product and if there's only
    // one result pick it.
    context.coreApi.inventoryService
        .pickerInventoryLocations(
          widget.model.yardCode.value ?? '',
          '',
          widget.lineModel.product.value.value,
        )
        .then((results) {
          if (results.length == 1) {
            widget.lineModel.location.value = results.single;
          }
        });
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) => Column(
    children: [
      Row(
        children: [
          Expanded(
            child: TicketLineDetailsHeader(
              model: widget.model,
              lineModel: widget.lineModel,
            ),
          ),
        ],
      ),
      Expanded(
        child: Form(
          key: _formKey,
          child: EmrTabBarVerticalView(
            onCancel: Navigator.of(context).pop,
            onSave: widget.model.canEdit.value
                ? () async {
                    if (_formKey.currentState?.validate() == false) {
                      await EmrModal.showMessageBar(
                        context,
                        context.l10n.correctTheValidationErrors,
                        messageType: MessageBarTypes.error,
                      );

                      return;
                    }

                    Navigator.of(context).pop(widget.lineModel);
                  }
                : null,
            saveButtonText: .ok,
            children: [
              TicketLineDetailsCard(
                context,
                title: context.l10n.details,
                model: widget.model,
                lineModel: widget.lineModel,
                canEdit: widget.model.canEdit,
              ),
              DeductionsCard(
                context,
                title: 'Deductions',
                deductions: widget.lineModel.deductions,
                showWeights: true,
              ),
              TicketLineCostsCard(
                context,
                title: 'Costs',
                model: widget.lineModel,
              ),
              // History only shows after the ticket exists in the database.
              if (widget.lineModel.created.value != null &&
                  widget.lineModel.modified.value != null)
                TicketLineHistoryCard(
                  context,
                  title: context.l10n.history,
                  model: widget.lineModel,
                ),
            ],
          ),
        ),
      ),
    ],
  );
}
