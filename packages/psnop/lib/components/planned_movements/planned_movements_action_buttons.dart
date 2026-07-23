import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:psnop/components/planned_movements/planned_movements_grid_controller.dart';
import 'package:psnop/components/planned_movements/route_to_market_fields.dart';
import 'package:psnop/networking/psnop_api_helper.dart';

class PlannedMovementsActionButtons extends StatelessWidget {
  const PlannedMovementsActionButtons({
    required this.controller,
    required this.apiHelper,
    super.key,
  });
  final PlannedMovementsGridController controller;
  final PsnopApiHelper apiHelper;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller.rowSelected,
      builder: (BuildContext context, value, Widget? child) {
        return Row(
          children: [
            const Spacer(
              flex: 2,
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: _getRow(context: context),
              ),
            ),
          ],
        );
      },
    );
  }

  Wrap _getRow({required BuildContext context}) {
    return Wrap(
      spacing: 25,
      children: [
        ActionChip(
          backgroundColor: EmrColours.primaryBlue,
          onPressed: () {
            showDialog<void>(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return _addRouteToMarket(
                  context: context,
                );
              },
            );
          },
          label: Text(
            context.l10n.psnopPlannedMovementsAddRouteToMarket,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        ActionChip(
          backgroundColor: EmrColours.primaryBlue,
          onPressed: controller.rowSelected.value && !controller.busy.value
              ? () async {
                  await controller.changeSelectedDates(context);
                }
              : null,
          label: Text(
            context.l10n.psnopPlannedMovementsChangeSelectedDatesButton,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        ActionChip(
          backgroundColor: EmrColours.primaryBlue,
          onPressed: controller.rowSelected.value && !controller.busy.value
              ? () async {
                  await controller.submitTransportRequests(context);
                }
              : null,
          label: Text(
            context.l10n.psnopPlannedMovementsSubmitTransportRequestsButton,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        ActionChip(
          backgroundColor: EmrColours.primaryBlue,
          onPressed: () => Navigator.pop(context),
          label: Text(
            context.l10n.back,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  AlertDialog _addRouteToMarket({
    required BuildContext context,
  }) {
    final key = GlobalKey<RouteToMarketFieldsState>();
    final isSaving = ValueNotifier<bool>(false);
    return AlertDialog(
      actions: [
        ValueListenableBuilder(
          valueListenable: isSaving,
          builder: (context, value, child) {
            if (isSaving.value) {
              return const SizedBox(
                child: CircularProgressIndicator(),
              );
            } else {
              return ElevatedButton(
                autofocus: true,
                onPressed: () async {
                  final isFormValid = key.currentState!.isFormValid();
                  if (!isFormValid) return;
                  isSaving.value = true;
                  final isSuccessful =
                      await controller.addRouteToMarketMovement(
                    key.currentState!.routeToMarketModel,
                  );
                  isSaving.value = false;
                  if (context.mounted) {
                    controller.showSnackBarResponse(
                      context: context,
                      message: isSuccessful
                          ? context
                              .l10n.psnopPlannedMovementsRouteToMarketSuccess
                          : context
                              .l10n.psnopPlannedMovementsRouteToMarketFailure,
                      color: isSuccessful
                          ? null
                          : Theme.of(context).colorScheme.error,
                    );
                  }
                  if (isSuccessful) {
                    var count = 0;
                    if (context.mounted) {
                      Navigator.popUntil(context, (route) {
                        return count++ == 1;
                      });
                    }
                    await controller.searchChanged();
                  }
                },
                child: Text(context.l10n.create),
              );
            }
          },
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(context.l10n.cancel),
        ),
      ],
      content: RouteToMarketFields(
        apiHelper: apiHelper,
        key: key,
      ),
      scrollable: true,
      title: Center(
        child: Text(context.l10n.psnopPlannedMovementsAddRouteToMarket),
      ),
    );
  }
}
