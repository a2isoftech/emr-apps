import 'package:emr_core_api/graphql/fragments/payment/payment_approval.graphql.dart';
import 'package:emr_core_api/services/reference_data_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/services/services.dart';
import 'package:emr_one_tickets/widgets/payment_approval/payment_approval_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:signals/signals_flutter.dart';

class PaymentApproval extends StatefulWidget {
  const PaymentApproval({
    required this.ticketsService,
    required this.referenceDataService,
    required this.paymentApproval,
    super.key,
  });

  final TicketsService ticketsService;
  final ReferenceDataService referenceDataService;
  final Fragment$PaymentApproval paymentApproval;

  @override
  State<PaymentApproval> createState() => _PaymentApprovalState();
}

class _PaymentApprovalState extends State<PaymentApproval> {
  late Signal<bool> isNowApproved;
  late Signal<bool> isNowRejected;
  @override
  void initState() {
    super.initState();
    isNowApproved = Signal<bool>(false);
    isNowRejected = Signal<bool>(false);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 64,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.tertiaryContainer,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(30),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(2, 6),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(Insets.gutter),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Approve ticket payment for '
                            '${widget.paymentApproval.requestor}',
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onTertiaryContainer,
                                ),
                          ),
                          const Spacer(),
                          Text(
                            widget.paymentApproval.created.at
                                .asyMMMd(Localizations.localeOf(context)),
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onTertiaryContainer,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: Insets.gutter),
          Expanded(
            child: SizedBox(
              child: (isNowApproved.watch(context) ||
                      isNowRejected.watch(context))
                  ? isNowApproved.watch(context)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Accepted',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const Icon(
                              Icons.check,
                              color: Colors.green,
                            ).animate().shake(),
                          ],
                        )
                      : (isNowRejected.watch(context))
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Rejected',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                const Icon(
                                  Icons.cancel,
                                  color: Colors.red,
                                ).animate().shake(),
                              ],
                            )
                          : const SizedBox()
                  : PaymentApprovalDetails(
                      paymentApproval: widget.paymentApproval,
                      ticketsService: widget.ticketsService,
                      referenceDataService: widget.referenceDataService,
                      isNowApproved: isNowApproved,
                      isNowRejected: isNowRejected,
                    ),
            ),
          ),
        ].animate(interval: 80.ms).slideY(
              begin: 100,
              end: 0,
              duration: 300.ms,
              curve: Curves.easeInOut,
            ),
      ),
    );
  }
}
