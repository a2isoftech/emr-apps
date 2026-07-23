import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_sharedtypes/enums/payment_system_enum.dart';

extension PaymentSystemExtension on PaymentSystemEnum {
  Enum$PaymentSystem toPaymentSystemEnum() => switch (this) {
    PaymentSystemEnum.oppra => Enum$PaymentSystem.OPPRA,
    PaymentSystemEnum.trade2 => Enum$PaymentSystem.TRADE2,
  };
}
