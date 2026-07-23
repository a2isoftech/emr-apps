import 'package:emr_core_api/graphql/fragments/payment/payment_record.graphql.dart';
import 'package:emr_one_tickets/common/utility.dart';
import 'package:emr_one_tickets/widgets/row_with_title_value.dart';
import 'package:flutter/material.dart';

class PaymentRecordDetails extends StatelessWidget {
  const PaymentRecordDetails({
    required this.paymentRecord,
    required this.onInfoTicketBtnPressed,
    required this.paymentMethod,
    super.key,
  });

  final Fragment$PaymentRecordFields paymentRecord;
  final String paymentMethod;
  final void Function() onInfoTicketBtnPressed;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final currency = paymentRecord.tickets.first.currency;
    return Column(
      children: [
        if (paymentRecord.ticketIds.length > 1) ...[
          RowWithTitleValue(
            label: 'No of Tickets',
            value: '''${paymentRecord.ticketIds.length}''',
            showIcon: true,
            icon: const Icon(Icons.info),
            valueStyle: textTheme.titleSmall,
            onIconPressed: onInfoTicketBtnPressed,
          ),
        ] else
          RowWithTitleValue(
            label: 'Ticket No',
            value: '''${paymentRecord.tickets.first.ticketNumber}''',
            valueStyle: textTheme.titleSmall,
          ),
        RowWithTitleValue(
          label: 'Party Name',
          value: paymentRecord.tickets.first.account.name,
          valueStyle: textTheme.titleSmall,
        ),
        RowWithTitleValue(
          label: 'Party AccountNo',
          value: paymentRecord.tickets.first.account.accountNumber,
          valueStyle: textTheme.titleSmall,
        ),
        RowWithTitleValue(
          label: 'Handling Fee',
          value: TicketsUtility.formatCurrency(
            context,
            currency ?? '',
            paymentRecord.totalFee,
            2,
          ),
          valueStyle: textTheme.titleSmall,
        ),
        RowWithTitleValue(
          label: 'Payment Method',
          value: paymentMethod,
          valueStyle: textTheme.titleSmall,
        ),
        // if (paymentRecord.encashment != null) ...[
        //   Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Text(
        //         'Encash Value',
        //         style: textTheme.bodyMedium,
        //       ),
        //       Text(
        //         TicketsUtility.formatCurrency(
        //           context,
        //           currency ?? '',
        //           paymentRecord.encashment!.encashValue,
        //           2,
        //         ),
        //         style: textTheme.bodyMedium,
        //       ),
        //     ],
        //   ),
        //   Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Text(
        //         'Commision Value',
        //         style: textTheme.bodyMedium,
        //       ),
        //       Text(
        //         TicketsUtility.formatCurrency(
        //           context,
        //           currency ?? '',
        //           paymentRecord.encashment!.commissionValue,
        //           2,
        //         ),
        //         style: textTheme.bodyMedium,
        //       ),
        //     ],
        //   ),
        //   Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Text(
        //         'Rounding Value',
        //         style: textTheme.bodyMedium,
        //       ),
        //       Text(
        //         TicketsUtility.formatCurrency(
        //           context,
        //           currency ?? '',
        //           paymentRecord.encashment!.roundingAdjustment,
        //           2,
        //         ),
        //         style: textTheme.bodyMedium,
        //       ),
        //     ],
        //   ),
        //   const SizedBox(
        //     height: Insets.gutter,
        //   ),
        // ],
      ],
    );
  }
}
