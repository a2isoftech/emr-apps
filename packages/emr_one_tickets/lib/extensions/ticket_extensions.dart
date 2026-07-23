import 'package:emr_core_api/emr_core_api.dart';

extension TicketCategoryExtension on String {
  Enum$Trade2TicketCategory facetTermToEnum$Trade2TicketCategory() =>
      switch (toLowerCase()) {
        ('interdepot') => Enum$Trade2TicketCategory.INTER_DEPOT,
        ('normal') => Enum$Trade2TicketCategory.NORMAL,
        ('interyardtransfer') => Enum$Trade2TicketCategory.INTER_YARD_TRANSFER,
        ('merchanttrucktrade') =>
          Enum$Trade2TicketCategory.MERCHANT_TRUCK_TRADE,
        ('truetrucktrade') => Enum$Trade2TicketCategory.TRUE_TRUCK_TRADE,
        _ => throw ArgumentError.value(
            this,
            'categoryString',
            'Invalid category string',
          ),
      };
}

extension TicketStatusExtension on String {
  Enum$Trade2TicketStatus facetTermToEnum$Trade2TicketStatus() =>
      switch (toLowerCase()) {
        ('closed') => Enum$Trade2TicketStatus.CLOSED,
        ('open') => Enum$Trade2TicketStatus.OPEN,
        ('finished') => Enum$Trade2TicketStatus.FINISHED,
        _ => throw ArgumentError.value(
            this,
            'statusString',
            'Invalid status string',
          ),
      };
}

extension TicketTypeExtension on String {
  Enum$Trade2TicketType facetTermToEnum$Trade2TicketType() =>
      switch (toLowerCase()) {
        ('inwards') => Enum$Trade2TicketType.INWARDS,
        ('outwards') => Enum$Trade2TicketType.OUTWARDS,
        _ => throw ArgumentError.value(
            this,
            'typeString',
            'Invalid type string',
          ),
      };
}
