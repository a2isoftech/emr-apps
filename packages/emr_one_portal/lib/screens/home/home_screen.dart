import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PortalHomeScreen extends StatelessWidget {
  const PortalHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final (isPhone, _) = context.getScreenFacts();
    final controller = Provider.of<HomePageController>(context);

    return FutureBuilder(
      future: controller.getModel(
        onAccountNotSignedUp: () async {          
          await controller.customerUserInfoService.signOut();
          if (context.mounted) {
            context.goToRegister();
          }
        },
        onAccountIsProspect: () {          
          if (context.mounted) {
            context.goToAlmostDone();
          }
        },
        onAccountIsRetail: () {          
        },
      ),
      builder: (BuildContext ctx, AsyncSnapshot<HomePageModel?> snapshot) {
        if (ConnectionState.done == snapshot.connectionState) {
          final model = snapshot.data;
          if (model == null) {
            return InvalidOperation(
              customerUserInfoService: controller.customerUserInfoService,
              message: context.l10n.errAccountInformation,
              buttonText: null,
            );
          }

          Widget? child;
          if (controller.customerUserInfoService.userInfo.isRetail ||
              (controller.customerUserInfoService.userInfo.isProspect)) {
            child = RetailPortalWidget(
              model: model,
              userInfo: controller.customerUserInfoService.userInfo,
            );
          } else if (controller.customerUserInfoService.userInfo.isSupplier) {
            child = SupplierPortalWidget();
          } else if (controller.customerUserInfoService.userInfo.isBusiness) {
            return TraderPortalWidget(
              userInfo: controller.customerUserInfoService.userInfo,
            );
          } else {
            child = PlaceHolderScreen(
              title: context.l10n.comingSoon,
              subtitle: 'This screen is not currently available',
            );
          }
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                top: Insets.gutter * 2,
                left: isPhone ? Insets.gutter : Insets.gutter * 2,
                right: isPhone ? Insets.gutter : Insets.gutter * 2,
              ),
              child: child,
            ),
          );
        } else {
          return processingIndicator();
        }
      },
    );
  }
}
