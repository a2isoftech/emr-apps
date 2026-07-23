import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/screens/welcome_graphic.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget with FullExtent {
  const LoginScreen({
    required this.loggedOutWidgetBuilder,
    super.key,
  });

  @override
  bool get hideFrameworkElements => true;

  final Widget Function() loggedOutWidgetBuilder;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _tree(context));
  }

  Widget _tree(BuildContext context) {
    final state = context.select((BaseLoginController n) => n.state);

    switch (state) {
      case LoginState.beginEmailLinkLogIn:
      case LoginState.completeEmailLinkLogIn:
      case LoginState.beginPhoneLogIn:
      case LoginState.completePhoneLogIn:
      case LoginState.error:
        return _alternativeLayout(context, AuthErrorPage.new);
      case LoginState.busy:
        return _alternativeLayout(context, WaitingIndicator.new);
      case LoginState.badgeLogIn:
        return _alternativeLayout(context, BadgeLogin.new);
      case LoginState.loggedIn:
        return const SizedBox.shrink();
      case LoginState.loggedOut:
        return _alternativeLayout(context, loggedOutWidgetBuilder);
    }
  }

  /// Show either the normal login screen, or if on large display show
  /// alternative login screen which features a branded sidebar to the left.
  Widget _alternativeLayout(
    BuildContext context,
    Widget Function() createWidget,
  ) {
    final windowType = getWindowType(context);
    return windowType >= EmrOneConstants.appDefaultSizeBreakpoint
        ? Row(
            children: [
              const SizedBox(
                width: EmrOneConstants.welcomeGraphicWidth,
                child: WelcomeGraphic(),
              ),
              Expanded(
                child: createWidget(),
              ),
            ],
          )
        : createWidget();
  }
}
