import 'package:emr_sharedtypes/models/weighbridge/weighbridge.dart';
import 'package:flutter/foundation.dart';

class WeighbridgeProfileTicketPrintPrinterData {
  WeighbridgeProfileTicketPrintPrinterData({
    required String name,
    required String url,
  }) {
    this.name = ValueNotifier(name);
    this.url = ValueNotifier(url);
  }

  WeighbridgeProfileTicketPrintPrinterData.fromPrinter(Printer printer)
      : name = ValueNotifier(printer.name),
        url = ValueNotifier(printer.url);

  Printer toPrinter() => Printer(name: name.value, url: url.value);

  late final ValueNotifier<String> name;

  late final ValueNotifier<String> url;
}
