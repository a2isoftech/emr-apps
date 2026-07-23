import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/helpers/fullscreen.dart'
    if (dart.library.io) 'package:emr_one_core/helpers/fullscreen_mobile.dart'
    if (dart.library.js) 'package:emr_one_core/helpers/fullscreen_web.dart';
import 'package:emr_one_core/menu/eo_app_drawer.dart';
import 'package:emr_one_core/menu/eo_app_menu.dart';
import 'package:emr_one_core/menu/eo_app_menu_userdisplay.dart';
import 'package:emr_one_core/widgets/notification_button.dart';
import 'package:emr_one_core/widgets/user/user_details_inline.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SharedScaffold extends StatelessWidget {
  SharedScaffold({
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
    final appConfig = Provider.of<AppConfig>(context, listen: false);
    final windowType = getWindowType(context);
    final isPhone = windowType < EmrOneConstants.appDefaultSizeBreakpoint;

    /// App wide default actions go here, they will appear as trailing icons
    /// on the AppBar in mobile view or at the right of the header in desktop
    final defaultActions = <Widget>[];

    var hideDefaultAppBar = false;
    var extendedActions = List<Widget>.empty();

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

    /// If the contained Widget is an [AppBarExtender] then invoke
    /// the method to add extra items to the [AppBar]
    if (body is AppBarExtender) {
      final extender = body as AppBarExtender;

      if (windowType >= EmrOneConstants.appDefaultSizeBreakpoint) {
        extendedActions = extender.getActions(context);
      }
      if (windowType < EmrOneConstants.appDefaultSizeBreakpoint) {
        defaultActions.insertAll(0, extender.getActions(context));
      }
      hideDefaultAppBar = extender.hideDefaultAppBar();
    }

    /// For web a dynamic scaffold is shown, allowing a stationary sidebar
    /// depending on screen width and a full width app bar with optional
    /// navigation buttons depending again on screen size. This allows for
    /// web on mobile devices and small screen to display differently to native
    /// mobile while preserving state.
    if (appConfig.isWeb) {
      final scaffold = Scaffold(
        key: _mobileScaffoldKey,
        drawer: const EOAppDrawer(),
        body: Column(
          children: [
            if (bannerMessage.isNotEmpty) _bannerWidget(context),
            SizedBox(
              height: EmrOneConstants.kBreadcrumbContainerHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .extension<EOBrandTheme>()!
                      .appBarBackgroundColour,
                  border: Border(
                    top: BorderSide(
                      width: 4,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    if (isPhone)
                      Padding(
                        padding: const EdgeInsets.only(left: Insets.gutter),
                        child: _scaffoldActionButtons(context, canPop),
                      ),
                    if (!isPhone)
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 22,
                          right: 12,
                          top: 24,
                          bottom: 12,
                        ),
                        child: SizedBox(
                          width: 76,
                          child: SvgPicture.asset(
                            width: 200,
                            'assets/logo/wordmark.svg',
                            alignment: Alignment.topLeft,
                            package: 'emr_one_core',
                          ),
                        ),
                      ),
                    const Expanded(
                      child: EmrBreadCrumb(),
                    ),
                    ...extendedActions,
                    if (extendedActions.isNotEmpty)
                      const SizedBox(width: Insets.gutter / 2),
                    if (!isPhone) ...[
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: Insets.gutter),
                      ),
                      InkWell(
                        onTap: () => _showUserInfoOverlay(context),
                        child: FittedBox(
                          child: EODrawUserDisplay(
                            textColour: Theme.of(context)
                                .extension<EOBrandTheme>()!
                                .appBarForegroundColour!,
                          ),
                        ),
                      ),
                      ...defaultActions,
                    ],
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!isPhone)
                    const EoAppMenu(
                      mode: EoAppMenuMode.iconAndLabelVertical,
                    ),
                  Expanded(
                    child: body,
                  ),
                ],
              ),
            ),
          ],
        ),
      );

      return scaffold;
    }

    final mobileScaffold = Scaffold(
      key: _mobileScaffoldKey,
      appBar: hideDefaultAppBar
          ? null
          : AppBar(
              actions: [
                if (appConfig.enableNotifications == true)
                  NotificationButton(
                    canNavigate: ModalRoute.of(context)?.settings.name !=
                        'notifications',
                  )
                else
                  const SizedBox(),
                ...defaultActions,
              ],
              title: const Row(
                children: [
                  Expanded(child: EmrBreadCrumb()),
                ],
              ),
              bottom: bannerMessage.isEmpty
                  ? null
                  : PreferredSize(
                      preferredSize: const Size(double.infinity, 16),
                      child: _bannerWidget(context),
                    ),
              // automaticallyImplyLeading is ignored when leading is set.
              leading: _scaffoldActionButtons(context, canPop),
            ),
      drawer: const EOAppDrawer(),
      body: SafeArea(child: body),
    );

    /// On smaller screens return a simple Scaffold with an AppBar
    /// and place the navigation menu in the drawer to save space
    return mobileScaffold;
  }

  Widget _scaffoldActionButtons(BuildContext context, bool canPop) => canPop
      ? BackButton(
          color: Theme.of(context)
              .extension<EOBrandTheme>()!
              .appBarForegroundColour,
        )
      : IconButton(
          icon: Icon(
            Icons.menu,
            color: Theme.of(context)
                .extension<EOBrandTheme>()!
                .appBarForegroundColour,
          ),
          iconSize: 24,
          onPressed: () => _mobileScaffoldKey.currentState!.openDrawer(),
        );

  Widget _bannerWidget(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ColoredBox(
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              bannerMessage,
              textAlign: TextAlign.center,
              style: EmrOneConstants.kBannerTextStyle.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
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
