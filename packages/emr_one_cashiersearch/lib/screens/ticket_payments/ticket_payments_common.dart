import 'dart:async';

import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_cashiersearch/screens/base/base_page.dart';
import 'package:emr_one_cashiersearch/services/listeners/graphql_subscription_listeners.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class TicketPaymentsCommon extends BasePage
    with AppBarExtender, OmniSearch {
  TicketPaymentsCommon({super.key});

  final ValueNotifier<bool> triggerNotifier = ValueNotifier(false);

  @override
  List<Widget> getActions(BuildContext context) => [
    InkWell(
      child: IconButton.filled(
        tooltip: context.l10n.refresh,
        onPressed: () => triggerNotifier.value = !triggerNotifier.value,
        icon: const Icon(Icons.refresh),
      ),
    ),
  ];
}

abstract class TicketPaymentsCommonState<TWidget extends BasePage>
    extends BasePageState<TWidget, EmrQueryLayoutController<PaymentRecord>> {
  late final ITicketPaymentController paymentController;
  late final EmrGridController<PaymentRecord> gridController;
  late final TextStyle bodyMediumBoldText;
  late final GraphQLSubscriptionListener<Map<String, dynamic>> _listener;
  @override
  void initState() {
    super.initState();
    paymentController = Provider.of<ITicketPaymentController>(
      context,
      listen: false,
    );

    (widget as TicketPaymentsCommon).triggerNotifier
      .addListener(controller.dataSource.refresh);

    gridController = EmrGridController<PaymentRecord>(
      data: controller.dataSource.data,
    );
    final gridDataSource = controller.dataSource as PaymentRecordsDataSource;
    gridDataSource.supportsPaging = true;
    controller.dataSource.refresh();

    final appConfig = Provider.of<AppConfig>(context, listen: false);
    _initializePaymentRecordApprovalListener(appConfig);
  }

  Future<void> _initializePaymentRecordApprovalListener
    (AppConfig appConfig) async {
    final token = await FirebaseLogin.getToken();
    _listener = paymentController.getPaymentRecordApprovalListener(
      url: appConfig.primaryApiUrl,
      getToken: () => token,
      onDataReceived: updateList,
    );
  }

    Future<void> updateList(GraphQLResponse<Map<String, dynamic>> response)
    async {
      if (response.hasErrors() || response.data == null) {
        return;
      }

      try {
        final res = response.data!;
        final currentRecords = controller.dataSource.data.value;
        final recordIndex =
            currentRecords
              .indexWhere((record) => record.id == res['id']);
        if (recordIndex != -1) {
          final mappedStatus = paymentStatusFromGraphql(
            res['status']?.toString() ?? '',
          );
          currentRecords[recordIndex].status = mappedStatus;
          controller.dataSource.data.value = List.from(currentRecords);
          await controller.dataSource.onRefresh.call();
        }
      } catch (e, trace) {
        EmrLogger.error(
            'TicketPaymentsCommon.updateList() - could not update records.',
            error: e as Exception,
            stackTrace: trace,
            source: 'TicketPaymentsCommon',
          );
      }
    }
  
    @override

  @override
  void dispose() {
    (widget as TicketPaymentsCommon).triggerNotifier
      .removeListener(controller.dataSource.refresh);
    super.dispose();
    _listener.dispose();
  }

  @override
  Widget body() {
    bodyMediumBoldText = Theme.of(
      context,
    ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: ValueListenableBuilder(
                valueListenable: controller.dataSource.data,
                builder: (context, value, child) {
                  return EmrQueryLayout<PaymentRecord>.card(
                    queryLayoutController: controller,
                    key: widget.key,
                    buildCard: (controller1, record, p2) {
                      return PaymentRecordCard(
                        record: record,
                        controller: paymentController,
                        onPayBtnPressed: () async {
                          await _payApprovedPayments(record);
                        },
                        onCancelBtnPressed: () async {
                          _cancelPaymentRequest(record);
                        },
                        onTicketDetailsPressed: (tickets) {
                          showPaymentTickets(
                            tickets,
                            record.tickets.first.account!.name ?? '',
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _payApprovedPayments(PaymentRecord record) async {
    unawaited(EmrDialog.busy(context, titleText: ''));
    final paymentResponse = await paymentController.proceedToPayments(
      record.id,
    );
    if (!mounted) return;
    context.pop();
    if (!paymentResponse.isSuccess) {
      if (paymentResponse.error!.details.isEmpty) {
        await TicketsUtility.errorDialogWidget(
          context,
          paymentResponse.error!.errorMessage,
        );
      } else {
        await EmrDialog.modal<void>(
          context,
          titleText: context.l10n.error,
          acceptLabel: context.l10n.ok,
          builder: (context) => LogWidget(
            errors: paymentResponse.error!.details.values.toList(),
            warnings: paymentResponse.warning?.details.values.toList() ?? [],
          ),
          onAccept: () => Navigator.maybePop(context),
        );
      }
      return;
    }

    if (!mounted) return;
    await EmrDialog.modal<void>(
      context,
      titleText: context.l10n.ticketValidationResultsTitle,
      acceptLabel: context.l10n.ok,
      builder: (context) => LogWidget(
        message: context.l10n.paymentSuccess(
          TicketsUtility.getPaymentMethodName(record.paymentMethod, context),
        ),
        errors: paymentResponse.error == null
            ? []
            : paymentResponse.error!.errorMessage == 'More than 1 error occured'
            ? paymentResponse.error!.details.values.toList()
            : [paymentResponse.error!.errorMessage],
        warnings: paymentResponse.warning == null
            ? []
            : paymentResponse.warning!.message == 'More than 1 warnings'
            ? paymentResponse.warning!.details.values.toList()
            : [paymentResponse.warning!.message],
      ),
    );
    await controller.dataSource.refresh();
  }

  void _cancelPaymentRequest(PaymentRecord record) {
    unawaited(EmrDialog.busy(context, titleText: ''));
    paymentController.cancelPaymentRequest(record.id).then((
      cancellationResult,
    ) {
      if (!mounted) return;
      context.pop();
      if (!cancellationResult.success) {
        TicketsUtility.infoDialogWidget(
          context,
          title: context.l10n.error,
          message: cancellationResult.message,
        );
        return;
      }
      if (cancellationResult.data!) {
        TicketsUtility.infoDialogWidget(
          context,
          title: context.l10n.success,
          message: context.l10n.cancelledSuccessfully,
        );
        controller.dataSource.refresh();
      } else {
        TicketsUtility.infoDialogWidget(
          context,
          title: context.l10n.error,
          message: context.l10n.errorInCancellation,
        );
      }
    });
  }

  Widget paymentTicketWidget(List<PaymentRecordTicket> paymentTickets) {
    final currency = paymentTickets.first.currency ?? '';
    final totalPayable = paymentController.getTotalPayable(paymentTickets);
    return SizedBox(
      width: 400,
      child: Column(
        spacing: Insets.gutter / 2,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(context.l10n.totalPayable, style: bodyMediumBoldText),
              Text(
                TicketsUtility.formatCurrency(context, currency, totalPayable),
                style: bodyMediumBoldText,
              ),
            ],
          ),
          ...paymentTickets.map(
            (x) => EmrCard(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        context.l10n.ticketNumber,
                        style: bodyMediumBoldText,
                      ),
                      Text(
                        '${x.yardCode}-${x.ticketNumber}',
                        style: bodyMediumBoldText,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        context.l10n.totalPayable,
                        style: bodyMediumBoldText,
                      ),
                      Text(
                        TicketsUtility.formatCurrency(
                          context,
                          currency,
                          x.price ?? 0,
                        ),
                        style: bodyMediumBoldText,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showPaymentTickets(
    List<PaymentRecordTicket> paymentTickets,
    String partyName,
  ) {
    EmrDialog.modal<void>(
      context,
      titleText: partyName,
      builder: (_) => paymentTicketWidget(paymentTickets),
      acceptLabel: context.l10n.ok,
      onAccept: () async => context.pop(),
    );
  }
}
