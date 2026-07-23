import 'package:emr_core_api/extensions/payment_methods_factory.dart';
import 'package:emr_core_api/graphql/fragments/inventory/ticket/ticket_fragment.graphql.dart';
import 'package:emr_core_api/graphql/fragments/payment/payment_approval.graphql.dart';
import 'package:emr_core_api/graphql/fragments/payment/payment_record.graphql.dart';
import 'package:emr_core_api/graphql/graphql.dart';
import 'package:emr_core_api/services/reference_data_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/common/utility.dart';
import 'package:emr_one_tickets/extensions/extensions.dart';
import 'package:emr_one_tickets/services/tickets_service.dart';
import 'package:emr_one_tickets/widgets/payment_approval/payment_record_details.dart';
import 'package:flutter/material.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:signals/signals_flutter.dart';

class PaymentApprovalDetails extends StatefulWidget {
  const PaymentApprovalDetails({
    required this.paymentApproval,
    required this.ticketsService,
    required this.isNowApproved,
    required this.isNowRejected,
    required this.referenceDataService,
    super.key,
  });

  final Fragment$PaymentApproval paymentApproval;
  final TicketsService ticketsService;
  final ReferenceDataService referenceDataService;
  final Signal<bool> isNowApproved;
  final Signal<bool> isNowRejected;
  @override
  State<PaymentApprovalDetails> createState() => _PaymentApprovalDetailsState();
}

class _PaymentApprovalDetailsState extends State<PaymentApprovalDetails> {
  late Future<Fragment$PaymentRecordFields> getPaymentRecord;
  late Future<Map<String, dynamic>> getPaymentMethodNames;
  late Signal<bool> _inProgressApprove;
  late Signal<bool> _inProgressReject;
  late Signal<bool> _isPending;
  late Computed<bool> _enableButtons;
  @override
  void initState() {
    super.initState();
    _inProgressApprove = Signal<bool>(false);
    _inProgressReject = Signal<bool>(false);
    _isPending = Signal<bool>(
      widget.paymentApproval.status == Enum$PaymentApprovalStatus.PENDING,
    );

    _enableButtons = Computed<bool>(
      () =>
          widget.paymentApproval.active &&
          (_inProgressApprove.value == false &&
              _inProgressReject.value == false) &&
          _isPending.value == true,
    );
    getPaymentRecord = widget.ticketsService.getPaymentRecordById(
      widget.paymentApproval.paymentRecordId,
    );
    getPaymentMethodNames = widget.referenceDataService.getPaymentMethodNames();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return FutureBuilder(
      future: Future.wait([getPaymentRecord, getPaymentMethodNames]),
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasError) {
          if (snapshot.error is GraphQLError) {
            final error = snapshot.error! as GraphQLError;
            return Text('Error: ${error.message}');
          }
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        final paymentRecord =
            snapshot.data?[0] as Fragment$PaymentRecordFields?;
        final paymentMethodNames =
            snapshot.data?[1] as Map<String, dynamic>? ?? {};
        if (paymentRecord == null) {
          return Center(child: Text(context.l10n.noDataFound));
        }
        final paymentMethod = mapFromGraphQLPaymentMethod(
          paymentRecord.paymentMethod,
        );
        final currency = paymentRecord.tickets.first.currency;
        return LimitedBox(
          child: Row(
            children: [
              Flexible(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Payment Approval Details',
                          style: textTheme.displaySmall,
                        ),
                      ],
                    ),
                    const SizedBox(height: Insets.gutter),
                    SizedBox(
                      width: 400,
                      child: EmrCard(
                        title:
                            widget.paymentApproval.status ==
                                Enum$PaymentApprovalStatus.APPROVED
                            ? 'Approved'
                            : widget.paymentApproval.status ==
                                  Enum$PaymentApprovalStatus.REJECTED
                            ? 'Rejected'
                            : !widget.paymentApproval.active
                            ? 'Cancelled'
                            : 'Waiting for Approval',
                        key: UniqueKey(),
                        child: Column(
                          children: [
                            PaymentRecordDetails(
                              paymentRecord: paymentRecord,
                              paymentMethod:
                                  paymentMethodNames.getIgnoreCase(
                                        paymentMethod.name,
                                      )
                                      as String? ??
                                  Enum$PaymentMethod.NONE.name,
                              onInfoTicketBtnPressed: () {
                                showPaymentTickets(
                                  paymentRecord.tickets,
                                  paymentRecord,
                                );
                              },
                            ),
                            const SizedBox(height: Insets.gutter),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total Amount',
                                  style: textTheme.titleLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  TicketsUtility.formatCurrency(
                                    context,
                                    currency ?? '',
                                    paymentRecord.payableAmount,
                                    2,
                                  ),
                                  style: textTheme.titleLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: Insets.gutter),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: FilledButton(
                                    onPressed:
                                        _enableButtons.watch(context) == false
                                        ? null
                                        : () async {
                                            _inProgressReject.value = true;

                                            await widget.ticketsService
                                                .approvePaymentApproval(
                                                  widget.paymentApproval.id,
                                                  isApproved: false,
                                                );

                                            batch(() {
                                              _isPending.value = false;
                                              _inProgressReject.value = false;
                                              widget.isNowRejected.value = true;
                                            });
                                          },
                                    style: EmrButtonStyles.danger(),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        if (_inProgressReject.watch(context))
                                          const SizedBox(
                                            width: 16,
                                            height: 16,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation(
                                                    Colors.white,
                                                  ),
                                            ),
                                          )
                                        else
                                          const Icon(
                                            Icons.close,
                                            color: Colors.white,
                                          ),
                                        const SizedBox(width: Insets.gutter),
                                        const Text('Reject'),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: Insets.gutter),
                                Expanded(
                                  child: FilledButton(
                                    onPressed:
                                        _enableButtons.watch(context) == false
                                        ? null
                                        : () async {
                                            _inProgressApprove.value = true;

                                            await widget.ticketsService
                                                .approvePaymentApproval(
                                                  widget.paymentApproval.id,
                                                  isApproved: true,
                                                );

                                            batch(() {
                                              _isPending.value = false;
                                              _inProgressApprove.value = false;
                                              widget.isNowApproved.value = true;
                                            });
                                          },
                                    style: EmrButtonStyles.cta(),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        if (_inProgressApprove.watch(context))
                                          const SizedBox(
                                            width: 16,
                                            height: 16,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation(
                                                    Colors.white,
                                                  ),
                                            ),
                                          )
                                        else
                                          const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                          ),
                                        const SizedBox(width: Insets.gutter),
                                        const Text('Approve'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void showPaymentTickets(
    List<Fragment$TicketFields?>? paymentTickets,
    Fragment$PaymentRecordFields paymentRecord,
  ) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(paymentTickets!.first!.account.name),
              IconButton(onPressed: context.pop, icon: const Icon(Icons.close)),
            ],
          ),
          content: paymentTicketWidget(paymentTickets, paymentRecord),
        );
      },
    );
  }

  Widget paymentTicketWidget(
    List<Fragment$TicketFields?> paymentTickets,
    Fragment$PaymentRecordFields paymentRecord,
  ) {
    final currency = paymentTickets.first?.currency ?? '';
    const decimalDigits = 2;
    final totalPayable = paymentRecord.payableAfterCostAndDeduction;
    return SizedBox(
      width: 400,
      height: 400,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Total Payable'),
              Text(
                TicketsUtility.formatCurrency(
                  context,
                  currency,
                  totalPayable,
                  decimalDigits,
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: paymentTickets
                    .map(
                      (x) => Padding(
                        padding: const EdgeInsets.all(Insets.gutter / 2),
                        child: Column(
                          children: [
                            EmrCard(
                              child: Padding(
                                padding: const EdgeInsets.all(
                                  Insets.gutter / 2,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('Ticket Number'),
                                        Text(x?.ticketNumber.toString() ?? ''),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('Total Payable'),
                                        Text(
                                          TicketsUtility.formatCurrency(
                                            context,
                                            currency,
                                            x?.price ?? 0,
                                            decimalDigits,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: Insets.gutter / 2),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
