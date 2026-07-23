import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/pricing-yard/yard_grade_grid_item.dart';
import 'package:emr_one_crm/screens/pricing-yard/yard_grade_list_item.dart';
import 'package:emr_one_crm/screens/pricing-yard/yard_prices_data_controller.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class YardPricesList extends StatefulWidget {
  const YardPricesList({
    required this.client,
    required this.yardPricesDataController,
    super.key,
  });

  final BaseClient client;
  final YardPricesDataController yardPricesDataController;

  @override
  State<YardPricesList> createState() => _YardPricesListState();
}

class _YardPricesListState extends State<YardPricesList> {
  @override
  Widget build(BuildContext context) {
    return buildItemsView();
  }

  Widget buildItemsView() {
    final settingsController =
        Provider.of<BaseSettingsController>(context) as SettingsController;
    final uomService = Provider.of<UomService>(context);
    final localUom = uomService
        .getUoms(
          settingsController.territory,
        )
        .first;

    return ListenableBuilder(
      listenable: widget.yardPricesDataController,
      builder: (context, child) {
        if (widget.yardPricesDataController.currentYard == null) {
          return progressIndicator();
        }

        if (!widget.yardPricesDataController.started) {
          widget.yardPricesDataController.fetchData();
          return progressIndicator();
        }

        if (widget.yardPricesDataController.loadedGradePrices.isEmpty) {
          if (widget.yardPricesDataController.loading) {
            return progressIndicator();
          } else if (widget.yardPricesDataController.error) {
            return Center(child: errorDialog(size: 15));
          }

          return Center(
            child: Text(context.l10n.noResults),
          );
        }

        if (widget.yardPricesDataController.visibleGradePrices.isEmpty) {
          if (widget.yardPricesDataController.morePages) {
            widget.yardPricesDataController.fetchData();
            return progressIndicator();
          }
          return Center(
            child: Text(context.l10n.noResults),
          );
        }

        return GridView.builder(
          itemCount: widget.yardPricesDataController.visibleGradePrices.length +
              (widget.yardPricesDataController.morePages ? 1 : 0),
          itemBuilder: (context, index) {
            if (index ==
                    (widget
                        .yardPricesDataController.visibleGradePrices.length) &&
                widget.yardPricesDataController.morePages &&
                !widget.yardPricesDataController.error) {
              widget.yardPricesDataController.fetchData();
              return progressIndicator();
            }

            final grade =
                widget.yardPricesDataController.visibleGradePrices[index];
            return widget.yardPricesDataController.viewMode ==
                    YardPricesViewMode.list
                ? YardGradeListItem(
                    grade: grade,
                    uom: localUom,
                  )
                : YardGradeGridItem(
                    grade: grade,
                    uom: localUom,
                  );
          },
          gridDelegate: widget.yardPricesDataController.viewMode ==
                  YardPricesViewMode.grid
              ? const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  mainAxisExtent: 100,
                  crossAxisSpacing: Insets.gutter / 3,
                  mainAxisSpacing: Insets.gutter / 3,
                )
              : const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisExtent: 40,
                ),
        );
      },
    );
  }

  Widget progressIndicator() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget errorDialog({required double size}) {
    return SizedBox(
      height: 180,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.l10n.couldNotLoadContractDetailsBecauseThereWasAnError,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: size,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                widget.yardPricesDataController.fetchData();
              });
            },
            child: Text(
              context.l10n.retry.toUpperCase(),
            ),
          ),
        ],
      ),
    );
  }
}
