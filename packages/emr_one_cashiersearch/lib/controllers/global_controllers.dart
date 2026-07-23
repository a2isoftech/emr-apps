import 'package:emr_one_cashiersearch/controllers/controllers.dart';
import 'package:emr_one_cashiersearch/models/advance.dart';
import 'package:emr_one_cashiersearch/models/ticket.dart';

class GlobalControllers {
  static final ticketBasketController = PaymentBasketController<Ticket>(
    getItemPrice: (ticket) =>
        ticket.paymentDeduction?.encashmentValues?.encashValue ??
        ticket.price ??
        0,
    isSameItem: (a, b) => a.id == b.id,
    getCurrencyCode: (item) => item?.currency,
  );

  static final advanceBasketController = PaymentBasketController<Advance>(
    getItemPrice: (advance) => advance.paymentAmount.amount,
    isSameItem: (a, b) => a.id == b.id,
    getCurrencyCode: (advance) => advance?.paymentAmount.currencyCode,
  );

  static final splitPaymentController = SplitPaymentController();

  static final advanceFlexiPayController = AdvanceFlexiPayController();
}
