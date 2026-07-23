import 'package:emr_one_portal/portal.dart';

class HomePageController extends BaseController {
  HomePageController({
    required this.accountService,
    required super.customerUserInfoService,
  });

  final AccountServicePortal accountService;

  AccountModel? signupModel;
  Future<HomePageModel?> getModel({
    required void Function() onAccountNotSignedUp,
    required void Function() onAccountIsProspect,
    required void Function() onAccountIsRetail,
  }) async {
    await super.performChecks(
      onAccountNotSignedUp: onAccountNotSignedUp,
      onAccountIsProspect: onAccountIsProspect,
      onAccountIsRetail: onAccountIsRetail,
    );

    final hybridModel = await accountService.getHomePageModel();
    signupModel = hybridModel.accountModel;
    return hybridModel.homePageModel;
  }
}
