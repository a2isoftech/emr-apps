import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';

extension TicketExtensions on Ticket {
  double get totalFee =>
      paymentRecord?.totalFee ?? paymentDeduction?.totalFee ?? 0;

  double get advanceOffset =>
      paymentRecord?.advanceOffset ??
      paymentDeduction?.advanceDetails?.totalOffset ??
      0;

  double get totalAmount =>
      paymentRecord?.totalAmount ?? paymentDeduction?.grossAmount ?? 0;

  double get payableAmount =>
      paymentRecord?.payableAmount ?? paymentDeduction?.netPaid ?? 0;

  List<MediaAsset> get grossAndTareImages => [
    ...lines!.expand((line) => line.mediaAssets),
    ...lines!.expand(
      (line) => line.deductions.expand((deduction) => deduction.mediaAssets),
    ),
  ].where((x) => x.url != '').toList();
}
