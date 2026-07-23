import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal/screens/scan_ticket/widgets/checkout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScanTicketScreen extends StatelessWidget {
  const ScanTicketScreen({
    this.ticketNo,
    this.depot,
    super.key,
  });

  final String? ticketNo;
  final String? depot;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var ticketAddedToBasket = false;
    final controller =
        Provider.of<ScanTicketController>(context, listen: false);
    final (isPhone, _) = context.getScreenFacts();
    final isInPortraitMode = context.isInPortraitMode();
    return FutureBuilder(
      future: controller.getModel(),
      builder: (BuildContext ctx, AsyncSnapshot<ScanTicketModel> snapshot) {
        if (ConnectionState.done == snapshot.connectionState) {
          return Consumer<ScanTicketController>(
            builder: (context, ctrlThatListens, child) {
              if (!ticketAddedToBasket &&
                  ticketNo != null &&
                  ticketNo!.isNotEmpty &&
                  depot != null &&
                  depot!.isNotEmpty) {
                ticketAddedToBasket = true;
                controller.toggleSubmitting(
                  value: true,
                );
                controller.addTicket(ticketNo!, depot!);
              }
              if (controller.isSubmitting()) {
                return processingIndicator();
              }
              final paNumber = controller
                  .customerUserInfoService.userInfo.partyAccountNumber;
              Widget widget;
              if (ctrlThatListens.showTicketDetail()) {
                widget = TicketDetail(controller: controller);
              } else if (ctrlThatListens.showCheckout()) {
                widget = Checkout(
                  controller: controller,
                  bankAccountNumber: snapshot.data?.bankAccountNumber,
                );
              } else if (ctrlThatListens.showSuccessMessage()) {
                widget = Center(
                  child: Text(
                    'Payment(s) requested successfully',
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.primaryColor,
                    ),
                  ),
                );
              } else {
                widget = StartWidget(
                  controller: controller,
                );
              }
              return Column(
                children: [
                  if (isPhone && !isInPortraitMode)
                    Container()
                  else
                    BlueHeader(
                      headingPrimary:
                          controller.customerUserInfoService.userInfo.name,
                      headingSecondary: 'Account # : '
                          '${paNumber ?? 'N/A'}',
                    ),
                  const BreadCrumb(
                    paths: ['HOME'],
                    currentPage: 'SCAN TICKET',
                  ),
                  BodyShell(
                    child: Stack(
                      children: [
                        SingleChildScrollView(
                          child: widget,
                        ),
                        FeedbackBar(
                          showMessage: controller.showFeedback(),
                          message: controller.feedbackModel.message ?? '',
                          feedbackType: controller.feedbackModel.feedbackType,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        } else {
          return processingIndicator();
        }
      },
    );
  }
}
