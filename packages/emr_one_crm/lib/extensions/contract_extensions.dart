import 'package:emr_one_crm/temp/contracts_provider.dart';

extension ContractExtensions on Contract {
  double maxDeliverable() {
    var maxDeliverable = 0.0;

    if (lines.first.isSpot) {
      maxDeliverable = targetLoads.toDouble();
    } else {
      for (final line in lines) {
        maxDeliverable = maxDeliverable + line.targetTonnage.value;
      }
    }

    return maxDeliverable;
  }

  double deliveredAmount() {
    var amountDelivered = 0.0;

    if (lines.first.isSpot) {
      for (final line in lines) {
        if (line.deliveredLoads != null) {
          amountDelivered = amountDelivered + line.deliveredLoads!.toDouble();
        }
      }
    } else {
      for (final line in lines) {
        if (line.deliveredTonnage != null) {
          amountDelivered = amountDelivered + line.deliveredTonnage!;
        }
      }
    }

    return amountDelivered;
  }
}
