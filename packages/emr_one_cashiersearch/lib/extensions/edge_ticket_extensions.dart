import 'package:emr_core_api/emr_core_api.dart';

extension EdgeTicketCategoryExtension on String {
  Enum$TicketCategory facetTermToEnum$TicketCategory() =>
      switch (toLowerCase()) {
        ('interdepot') => Enum$TicketCategory.INTER_DEPOT,
        ('normal') => Enum$TicketCategory.NORMAL,
        ('interyardtransfer') => Enum$TicketCategory.INTER_YARD_TRANSFER,
        ('merchanttrucktrade') => Enum$TicketCategory.MERCHANT_TRUCK_TRADE,
        ('truetrucktrade') => Enum$TicketCategory.TRUE_TRUCK_TRADE,
        ('container') => Enum$TicketCategory.CONTAINER,
        _ => throw ArgumentError.value(
            this,
            'categoryString',
            'Invalid category string',
          ),
      };
}

extension TicketStatusExtension on String {
  Enum$TicketStatus facetTermToEnum$TicketStatus() => switch (toLowerCase()) {
        ('closed') => Enum$TicketStatus.CLOSED,
        ('draft') => Enum$TicketStatus.DRAFT,
        ('instantquickpaid') => Enum$TicketStatus.INSTANT_QUICK_PAID,
        ('finished') => Enum$TicketStatus.FINISHED,
        ('active') => Enum$TicketStatus.ACTIVE,
        ('deleted') => Enum$TicketStatus.DELETED,
        ('paymentinitiated') => Enum$TicketStatus.PAYMENT_INITIATED,
        ('paid') => Enum$TicketStatus.PAID,
        ('confirmed') => Enum$TicketStatus.CONFIRMED,
        ('deferredpaid') => Enum$TicketStatus.DEFERRED_PAID,
        ('posted') => Enum$TicketStatus.POSTED,
        ('selfbillverified') => Enum$TicketStatus.SELF_BILL_VERIFIED,
        ('registeredtraderinvoice') =>
          Enum$TicketStatus.REGISTERED_TRADER_INVOICE,
        ('reverse') => Enum$TicketStatus.REVERSE,
        ('stoppayment') => Enum$TicketStatus.STOP_PAYMENT,
        ('unclaimed') => Enum$TicketStatus.UNCLAIMED,
        _ => throw ArgumentError.value(
            this,
            'statusString',
            'Invalid status string',
          ),
      };
}

extension TicketTypeExtension on String {
  Enum$TicketType facetTermToEnum$TicketType() => switch (toLowerCase()) {
        ('inwards') => Enum$TicketType.INWARDS,
        ('outwards') => Enum$TicketType.OUTWARDS,
        _ => throw ArgumentError.value(
            this,
            'typeString',
            'Invalid type string',
          ),
      };
}

extension TicketExtension on Ticket {
  List<InventoryMediaAsset> get allMediaAssets => [
        ...mediaAssets,
        ...inspectionMedia,
        ...lines.expand((line) => line.mediaAssets),
        ...lines.expand(
          (line) =>
              line.deductions.expand((deduction) => deduction.mediaAssets),
        ),
        ...lines.expand(
          (line) =>
              line.inspectionDetails?.inspectionMedia ??
              <InventoryMediaAsset>[],
        ),
      ].where((x) => x.url != '').toList();
}
