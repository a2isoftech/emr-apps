import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/quote_models/quote_models.dart';
import 'package:emr_one_elv_quotes/elv_quotes.dart';
import 'package:flutter/material.dart';

class ElvVehicleDetailWidget extends StatefulWidget {
  const ElvVehicleDetailWidget({super.key});

  @override
  State<ElvVehicleDetailWidget> createState() => _ElvVehicleDetailWidgetState();
}

class _ElvVehicleDetailWidgetState extends State<ElvVehicleDetailWidget> {
  late final EmrQueryLayoutController<VehicleQuoteModel> _queryLayoutController;
  late final EmrGridController<VehicleQuoteModel> _gridController;
  late final QuickQuoteDataSource gridDataSource;

  @override
  void initState() {
    super.initState();

    _queryLayoutController = EmrQueryLayoutController(
      dataSource: QuickQuoteDataSource(),
    );
    
    //TODO: Values are static here. Will change in next PR

    _queryLayoutController.dataSource.data.value = [
      VehicleQuoteModel(
        detail: VehicleDetail(
          id: 1,
          fuelType: 'Petrol',
          make: 'MG',
          model: 'Hector',
          doors: 5,
          vin: '12345678901234567',
          year: 2023,
        ),
        configuration: VehicleConfiguration(
          alloyWheels: 0,
          steelWheels: 0,
          chromeWheels: 0,
          hasOriginalCat: true,
          hasBattery: true,
          hasEngine: true,
          numOfPreCats: 1,
          numOfPipeCats: 1,
        ),
      ),
    ];

    _gridController = EmrGridController<VehicleQuoteModel>(
      data: _queryLayoutController.dataSource.data,
      showLoader: _queryLayoutController.dataSource.loading,
    );
  }

  @override
  void dispose() {
    _queryLayoutController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayout<VehicleQuoteModel>.grid(
      gridController: _gridController,
      queryLayoutController: _queryLayoutController,
      columns: [
        EmrGridColumn<VehicleQuoteModel>(
          headerBuilder: () {
            return const Text('');
          },
          cellBuilder: (rowItem) {
            return Row(
              children: [
                IconButton(
                  onPressed: () async {
                    await EmrDialog.modal<void>(
                      context,
                      titleText: context.l10n.editVehicle,
                      builder: (context) => const SizedBox(
                        width: 500,
                        child: ElvEditVehicleWidget(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.edit_outlined),
                ),
                IconButton(
                  onPressed: () async {
                    await EmrDialog.modal<void>(
                      context,
                      titleText: context.l10n.deleteVehicle,
                      builder: (context) => SizedBox(
                        width: 400,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(Insets.gutter),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.onError,
                                borderRadius: BorderRadius.circular(
                                  Insets.gutter * 2,
                                ),
                              ),
                              child: Icon(
                                Icons.delete_outline_outlined,
                                color: Theme.of(context).colorScheme.error,
                              ),
                            ),
                            const SizedBox(height: Insets.gutter),
                            SizedBox(
                              width: 280,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              '''${context.l10n.areYouSureYouWant} ''',
                                        ),
                                        TextSpan(
                                          text: context.l10n.delete
                                              .toUpperCase(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(
                                                  context,
                                                ).colorScheme.error,
                                              ),
                                        ),
                                        const TextSpan(text: ' '),
                                        TextSpan(
                                          text:
                                              '''${context.l10n.vin.toUpperCase()} ''',
                                        ),
                                        const TextSpan(text: '[VIN NUMBER]'),
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: Insets.gutter),
                                  Text(context.l10n.thisActionCannotBeUndone),
                                  const SizedBox(height: Insets.gutter),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.delete_outline_rounded),
                ),
              ],
            );
          },
          alignment: Alignment.center,
        ),
        EmrGridColumn<VehicleQuoteModel>(
          headerBuilder: () {
            return Text(context.l10n.vin);
          },
          cellBuilder: (rowItem) {
            return Column(
              children: [
                Text(
                  rowItem.detail.vin ??
                      (rowItem.detail.vehicleReg ?? ''),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: (rowItem.detail.year ?? 0).toString(),
                      ),
                      const TextSpan(text: ' '),
                      TextSpan(text: rowItem.detail.make),
                      const TextSpan(text: ' '),
                      TextSpan(text: rowItem.detail.model),
                      const TextSpan(text: ' '),
                      TextSpan(text: '(${rowItem.detail.fuelType})'),
                    ],
                  ),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            );
          },
          alignment: Alignment.center,
        ),
        EmrGridColumn<VehicleQuoteModel>(
          headerBuilder: () {
            return Text(context.l10n.chromeWheels);
          },
          cellBuilder: (rowItem) {
            return Text(rowItem.configuration.chromeWheels.toString());
          },
          alignment: Alignment.center,
        ),
        EmrGridColumn<VehicleQuoteModel>(
          headerBuilder: () {
            return Text(context.l10n.alloyWheels);
          },
          cellBuilder: (rowItem) {
            return Text(rowItem.configuration.alloyWheels.toString());
          },
          alignment: Alignment.center,
        ),
        EmrGridColumn<VehicleQuoteModel>(
          headerBuilder: () {
            return Text(context.l10n.steelWheels);
          },
          cellBuilder: (rowItem) {
            return Text(rowItem.configuration.steelWheels.toString());
          },
          alignment: Alignment.center,
        ),
        EmrGridColumn<VehicleQuoteModel>(
          headerBuilder: () {
            return Text(context.l10n.battery);
          },
          cellBuilder: (rowItem) {
            return Text(
              _yesNoConverter(rowItem.configuration.hasBattery ?? false),
            );
          },
          alignment: Alignment.center,
        ),

        EmrGridColumn<VehicleQuoteModel>(
          headerBuilder: () {
            return Text(context.l10n.cats);
          },
          cellBuilder: (rowItem) {
            return Text(
              (rowItem.configuration.numOfPreCats +
                      rowItem.configuration.numOfPipeCats)
                  .toString(),
            );
          },
          alignment: Alignment.center,
        ),
        EmrGridColumn<VehicleQuoteModel>(
          headerBuilder: () {
            return Text(
              context.l10n.priceAdjustment,
              overflow: TextOverflow.ellipsis,
            );
          },
          cellBuilder: (rowItem) {
            return const Text('-');
          },
          alignment: Alignment.center,
        ),

        EmrGridColumn<VehicleQuoteModel>(
          headerBuilder: () {
            return Text(context.l10n.valueOffered);
          },
          cellBuilder: (rowItem) {
            return const Text('-');
          },
          alignment: Alignment.center,
        ),
      ],
    );
  }

  String _yesNoConverter(bool value) {
    return value ? context.l10n.yes : context.l10n.no;
  }
}
