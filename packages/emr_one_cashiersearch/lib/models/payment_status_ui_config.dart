import 'package:emr_one_core/widgets/chips/emr_status_chip.dart';

class PaymentStatusUiConfig {
  const PaymentStatusUiConfig({
    required this.text,
    required this.statusType,
    required this.showPayButton,
    required this.enableCancelButton,
  });

  final String text;
  final StatusType statusType;
  final bool showPayButton;
  final bool enableCancelButton;
}
