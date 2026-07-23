import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class WeighbridgeProfileTicketPrintData {
  WeighbridgeProfileTicketPrintData({
    required String name,
    required String headerText,
    required WeighbridgeProfileTicketPrintPrinterData printer,
    required String templateName,
    PrintForTicketDirections? printForTicketDirections,
    TicketPrintType? ticketPrintType,
    int? numberOfCopies,
    ShowWeightMode showWeightMode = ShowWeightMode.tareAndWeightDeduction,
  }) {
    this.name = ValueNotifier(name);
    this.headerText = ValueNotifier(headerText);
    this.numberOfCopies = ValueNotifier(numberOfCopies);
    this.printer = ValueNotifier(printer);
    this.printForTicketDirections = ValueNotifier(printForTicketDirections);
    this.ticketPrintType = ValueNotifier(ticketPrintType);
    this.templateName = ValueNotifier(templateName);
    this.showWeightMode = ValueNotifier(showWeightMode);
  }
  WeighbridgeProfileTicketPrintData.fromTicketPrint(TicketPrint ticketPrint) {
    name = ValueNotifier(ticketPrint.name);
    headerText = ValueNotifier(ticketPrint.headerText);
    numberOfCopies = ValueNotifier(ticketPrint.numberOfCopies);
    printer = ValueNotifier(
      WeighbridgeProfileTicketPrintPrinterData.fromPrinter(ticketPrint.printer),
    );
    printForTicketDirections =
        ValueNotifier(ticketPrint.printForTicketDirections);
    ticketPrintType = ValueNotifier(ticketPrint.ticketPrintType);
    templateName = ValueNotifier(ticketPrint.templateName);
    showWeightMode = ValueNotifier(ticketPrint.showWeightMode);
  }

  TicketPrint toticketPrint() => TicketPrint(
        headerText: headerText.value,
        name: name.value,
        numberOfCopies: numberOfCopies.value ?? 1,
        printer: printer.value.toPrinter(),
        printForTicketDirections:
            printForTicketDirections.value ?? PrintForTicketDirections.inward,
        ticketPrintType: ticketPrintType.value ?? TicketPrintType.trader,
        templateName: templateName.value ?? '',
        showWeightMode: showWeightMode.value,
      );

  late final ValueNotifier<String> name;

  late final ValueNotifier<String> headerText;

  late final ValueNotifier<int?> numberOfCopies;

  late final ValueNotifier<WeighbridgeProfileTicketPrintPrinterData> printer;

  late final ValueNotifier<PrintForTicketDirections?> printForTicketDirections;

  late final ValueNotifier<TicketPrintType?> ticketPrintType;

  late final ValueNotifier<String?> templateName;

  late final ValueNotifier<ShowWeightMode> showWeightMode;
}
