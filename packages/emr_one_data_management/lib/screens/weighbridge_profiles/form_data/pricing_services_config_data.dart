import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class PricingServicesConfigData {
  PricingServicesConfigData({
    bool? retailAccount,
    bool? businessAccount,
    bool? interDepot,
  })  : retailAccount = ValueNotifier(retailAccount ?? false),
        businessAccount = ValueNotifier(businessAccount ?? false),
        interDepot = ValueNotifier(interDepot ?? false);

  PricingServicesConfigData.fromPricingServicesConfig(
    PricingServicesConfig pricingServicesConfig,
  )   : retailAccount = ValueNotifier(pricingServicesConfig.retailAccount),
        businessAccount = ValueNotifier(pricingServicesConfig.businessAccount),
        interDepot = ValueNotifier(pricingServicesConfig.interDepot);

  PricingServicesConfig toPricingServicesConfig() {
    return PricingServicesConfig(
      retailAccount: retailAccount.value,
      businessAccount: businessAccount.value,
      interDepot: interDepot.value,
    );
  }

  late final ValueNotifier<bool> retailAccount;
  late final ValueNotifier<bool> businessAccount;
  late final ValueNotifier<bool> interDepot;
}
