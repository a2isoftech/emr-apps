import 'package:emr_account_registration/signup.dart';

abstract class BaseController {
  BaseController({
    required this.customerUserInfoService,
  });

  final CustomerUserInfoService customerUserInfoService;

  Future<void> performChecks({
    required void Function() onAccountNotSignedUp,
    required void Function() onAccountIsProspect,
    required void Function() onAccountIsRetail,
  }) async {
    if (customerUserInfoService.userInfo.isProspect) {      
      onAccountIsProspect();
    } else if (customerUserInfoService.userInfo.signedUp) {      
      onAccountIsRetail();
    } else {      
      onAccountNotSignedUp();
    }
  }
}
