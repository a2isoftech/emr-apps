import 'package:emr_one_cashiersearch/models/payment_record_ticket.dart';
import 'package:emr_one_cashiersearch/screens/ticket_payments/payment_records_data_source.dart';
import 'package:emr_one_cashiersearch/screens/ticket_payments/ticket_payments_common.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class TicketPaymentsNative extends TicketPaymentsCommon {
  TicketPaymentsNative({super.key});

  @override
  State<TicketPaymentsNative> createState() => _TicketPaymentsNativeState();
}

class _TicketPaymentsNativeState
    extends TicketPaymentsCommonState<TicketPaymentsNative> {
  @override
  void initState() {
    super.initState();
    final gridDataSource = controller.dataSource as PaymentRecordsDataSource;
    gridDataSource.supportsPaging = false;
  }

  @override
  void showPaymentTickets(
    List<PaymentRecordTicket> paymentTickets,
    String partyName,
  ) {
    final textTheme = Theme.of(context).textTheme;
    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(Insets.gutter / 2),
          child: Column(
            children: [
              Text(
                partyName,
                style: textTheme.bodyLarge,
              ),
              paymentTicketWidget(paymentTickets),
            ],
          ),
        );
      },
    );
  }
}
