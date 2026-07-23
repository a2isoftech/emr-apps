import 'package:emr_one_portal/screens/scan_ticket/scan_ticket.dart';

class TicketViewModel {
  TicketViewModel({
    required this.legacyTicketNumber,
    required this.currency,
    required this.ticketStatus,
    required this.ticketNo,
    required this.depot,
    required this.ticketLines,
    required this.ticketDate,
    required this.yard,
  });

  final int legacyTicketNumber;
  final String currency;
  final String ticketStatus;
  final String ticketNo;
  final String depot;
  final List<TicketLineModel> ticketLines;
  final DateTime ticketDate;
  final YardModel yard;

  String totalPayable() {
    double? result = 0;
    if (ticketLines.isNotEmpty) {
      result = ticketLines
          .map((e) => e.provCommValue)
          .reduce((value, element) => value + element);
    }
    return result.toStringAsFixed(2);
  }

  bool showEwcCode() {
    if (ticketLines.isEmpty) {
      return false;
    }
    // Check if any line has an EWC code.
    return ticketLines
        .where((x) => x.ewcCode != null && x.ewcCode!.trim() != '')
        .isNotEmpty;
  }

  String uomFromProvTonnes() {
    if (ticketLines.isNotEmpty) {
      return _uomFromField(
        ticketLines[0].provTonnesUomString ?? '',
      );
    }
    return '';
  }

  String uomFromProvRate() {
    if (ticketLines.isNotEmpty) {
      return _uomFromField(
        ticketLines[0].provRateUomString ?? '',
      );
    }
    return '';
  }

  String _uomFromField(String val) {
    try {
      if (val == '') {
        return '';
      }
      // Match the letters at the end of the string
      // to get the UOM for the first commodity.
      final exp = RegExp(r'[A-Z]{1,}$');
      return exp.stringMatch(val)!;
    } catch (ex) {
      return '';
    }
  }

  double? totalPayableAsDouble() {
    double? result = 0;
    if (ticketLines.isNotEmpty) {
      result = ticketLines
          .map((e) => e.provCommValue)
          .reduce((value, element) => value + element);
    }
    return result;
  }

  String getCurrencySymbol() {
    switch (currency) {
      case 'GBP':
        return '£';
      case 'USD':
        return r'$';
      default:
        return currency;
    }
  }

  bool isPaid() =>
      ticketStatus == 'IP' || ticketStatus == 'DP' || ticketStatus == 'PC';
}
