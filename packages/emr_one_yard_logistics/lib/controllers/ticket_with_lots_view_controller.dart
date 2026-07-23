import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:signals/signals_flutter.dart';

class TicketWithLotsViewController {
  TicketWithLotsViewController(TicketWithLots ticketWithLots) {
    this.ticketWithLots = signal<TicketWithLots>(ticketWithLots);
    loadingSplitTicket = signal<bool>(false);
  }

  late Signal<TicketWithLots> ticketWithLots;
  late Signal<bool> loadingSplitTicket;

  bool isSplitTicketAllowed() {
    final lots = ticketWithLots.value.lotList;
    if (lots.isEmpty) return false;

    final hasInvalidLot = lots.any(
      (lot) => lot.t2LotNumber == null || lot.isLotUsedForTicketSplitting,
    );
    return !hasInvalidLot;
  }

  bool isTicketSplitted() {
    final lots = ticketWithLots.value.lotList;
    if (lots.isEmpty) return false;

    final anyLotUsedForTicketSplitting = lots.any(
      (lot) => lot.isLotUsedForTicketSplitting,
    );
    return anyLotUsedForTicketSplitting;
  }

  String showToleranceWarningForTicketWeight() {
    final tolerance = ticketWithLots.value.ticketNetWeightMT.mtValue *
        (ticketWithLots.value.ticketSplitWeightTolerancePercent / 100);

    final upTicketWeightTolerance =
        ticketWithLots.value.ticketNetWeightMT.mtValue + tolerance;

    final downTicketWeightTolerance =
        ticketWithLots.value.ticketNetWeightMT.mtValue - tolerance;

    if (ticketWithLots.value.totalLotWeightMT.mtValue >
        upTicketWeightTolerance) {
      return 'Lot Weight is more than Ticket Weight '
          '${defaultToleranceWarning()}';
    } else if (ticketWithLots.value.totalLotWeightMT.mtValue <=
        downTicketWeightTolerance) {
      return 'Lot Weight is less than Ticket Weight '
          '${defaultToleranceWarning()}';
    }

    return '';
  }

  String defaultToleranceWarning() {
    return '(With Tolerance of '
        '${ticketWithLots.value.ticketSplitWeightTolerancePercent}'
        '%).\n';
  }
}
