import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/controllers/base_settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/helpers/fullscreen.dart'
    if (dart.library.io) 'package:emr_one_core/helpers/fullscreen_mobile.dart'
    if (dart.library.js) 'package:emr_one_core/helpers/fullscreen_web.dart';
import 'package:emr_one_core/menu/eo_app_drawer.dart';
import 'package:emr_one_core/menu/eo_app_menu.dart';
import 'package:emr_one_core/menu/eo_app_menu_userdisplay.dart';
import 'package:emr_one_core/widgets/user/user_details_inline.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

class PortalSharedScaffold extends StatelessWidget {
  PortalSharedScaffold({
    required this.body,
    super.key,
    this.bannerMessage = '',
  });

  final Widget body;
  final String bannerMessage;
  final GlobalKey<ScaffoldState> _mobileScaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // We can't listen for changes on AppConfig here as it would cause the
    // whole scaffold to rebuild.
    final windowType = getWindowType(context);
    final isPhone = windowType < EmrOneConstants.appDefaultSizeBreakpoint;
    final userInfoSvc = Provider.of<UserInfoService>(context, listen: false)
        as CustomerUserInfoService;
    final parentRoute = ModalRoute.of(context);
    final canPop = parentRoute?.canPop ?? false;

    if (body is FullExtent) {
      final fullExtent = body as FullExtent;

      if (fullExtent.enterFullScreen) {
        EOFullScreenSupport.goFullScreen();
      }
      if (fullExtent.hideFrameworkElements) {
        return body;
      }
    }

    final settingsController = Provider.of<BaseSettingsController>(context);

    return Scaffold(
      key: _mobileScaffoldKey,
      drawer: const EOAppDrawer(),
      body: Column(
        children: [
          if (bannerMessage.isNotEmpty) _bannerWidget(),
          SizedBox(
            height: EmrOneConstants.kBreadcrumbContainerHeight,
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Theme.of(context).dividerColor,
                  ),
                ),
              ),
              child: ColoredBox(
                color: Theme.of(context)
                    .extension<EOBrandTheme>()!
                    .appBarBackgroundColour!,
                child: Theme(
                  data: ThemeData(
                    brightness: Brightness.dark,
                  ),
                  child: Row(
                    children: [
                      if (isPhone)
                        Padding(
                          padding: const EdgeInsets.only(left: Insets.gutter),
                          child: _scaffoldActionButtons(canPop),
                        ),
                      SvgPicture.asset(
                        width: 200,
                        'assets/logo/SemiBold Dark Metal Recycled.svg',
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.topLeft,
                        package: 'emr_one_core',
                      ),
                      const Spacer(),
                      if (isPhone)
                        Padding(
                          padding: const EdgeInsets.only(right: Insets.gutter),
                          child: InkWell(
                            onTap: () => _showUserInfoOverlay(context),
                            child: CircleAvatar(
                              backgroundColor: Theme.of(context)
                                  .extension<EOBrandTheme>()!
                                  .brandColour,
                              radius: 25,
                              child: userInfoSvc.userInfo.initials.isEmpty
                                  ? const Icon(
                                      Icons.supervised_user_circle_sharp,
                                      size: 25,
                                    )
                                  : Text(
                                      userInfoSvc.userInfo.initials,
                                      style: const TextStyle(
                                        fontSize: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      if (!isPhone) ...[
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: Insets.gutter),
                          child: VerticalDivider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                        ),
                        InkWell(
                          onTap: () => _showUserInfoOverlay(context),
                          child: FittedBox(
                            child: Theme(
                              data: Theme.of(context),
                              child: EODrawUserDisplay(
                                textColour: Theme.of(context)
                                    .extension<EOBrandTheme>()!
                                    .appBarForegroundColour!,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!isPhone)
                  EoAppMenu(
                    mode: settingsController.menuMode,
                  ),
                Expanded(child: body),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget withMultiProvider(List<SingleChildWidget> providers) =>
      providers.isEmpty
          ? this
          : MultiProvider(providers: providers, child: this);

  Widget _scaffoldActionButtons(bool canPop) => canPop
      ? const BackButton()
      : IconButton(
          icon: const Icon(Icons.menu),
          iconSize: 24,
          onPressed: () => _mobileScaffoldKey.currentState!.openDrawer(),
        );

  Widget _bannerWidget() {
    return Row(
      children: [
        Expanded(
          child: ColoredBox(
            color: Colors.red,
            child: Text(
              bannerMessage,
              textAlign: TextAlign.center,
              style: EmrOneConstants.kBannerTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  void _showUserInfoOverlay(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierColor: Colors.transparent,
      builder: (context) => const Stack(
        children: <Widget>[
          Positioned(
            right: EmrOneConstants.kUserInfoDesktopOffsetX,
            top: EmrOneConstants.kUserInfoDesktopOffsetY,
            width: EmrOneConstants.kUserInfoDesktopWidth,
            //height: 400,
            child: Material(
              elevation: EmrOneConstants.kUserInfoDesktopElevation,
              child: Padding(
                padding: EdgeInsets.all(Insets.gutter),
                child: UserDetailsInline(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
