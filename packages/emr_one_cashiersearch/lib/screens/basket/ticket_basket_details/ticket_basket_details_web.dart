import 'package:emr_one_cashiersearch/models/ticket.dart';
import 'package:emr_one_cashiersearch/screens/basket/basket_detail_page.dart';
import 'package:emr_one_cashiersearch/screens/basket/ticket_basket_details/ticket_basket_details_common.dart';
import 'package:flutter/material.dart';

class TicketBasketDetailsWeb extends TicketBasketDetailsCommon {
  const TicketBasketDetailsWeb({super.key});

  @override
  State<PaymentBasketDetailsPage<Ticket>> createState() =>
      _TicketBasketDetailsWebState();
}

class _TicketBasketDetailsWebState
    extends TicketBasketDetailsCommonState<TicketBasketDetailsWeb> {}
