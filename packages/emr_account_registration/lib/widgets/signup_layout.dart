import 'package:collection/collection.dart';
import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupLayout extends StatelessWidget {
  const SignupLayout({
    required this.runContext,
    required this.widgets,
    required this.formKey,
    required this.onGoBack,
    this.title,
    this.titleStyle,
    this.subTitle = '',
    this.toolTip,
    this.widgetsPlacement = CrossAxisAlignment.center,
    this.icon,
    super.key,
  });

  final RunContext runContext;
  final String? title;
  final TextStyle? titleStyle;
  final String subTitle;
  final String? toolTip;
  final IconData? icon;
  final List<Widget> widgets;
  final CrossAxisAlignment widgetsPlacement;
  final GlobalKey<FormState> formKey;
  final void Function()? onGoBack;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final windowType = getWindowType(context);
    final (isPhone, _) = context.getScreenFacts();
    final isPhoneInPortraitMode = context.isInPortraitMode();
    final localisedTitle = title ?? context.l10n.registerMyAccount;
    final pageWidgets = List<Widget>.of(widgets);

    if (!runContext.isPortal) {
      final goBack = Padding(
        padding: EdgeInsetsGeometry.all(Insets.gutter),
        child: CircleAvatar(
          radius: 20,
          backgroundColor: theme.primaryColor.withAlpha(102),
          child: IconButton(
            icon: Image.asset(
              'assets/images/back.png',
              package: 'emr_account_registration',
              color: Colors.amber[50],
            ),
            onPressed: onGoBack,
          ),
        ),
      );
      final routeRegistry = Provider.of<RouteRegistry>(context);
      var routes =
          (routeRegistry
                      .getRoutes()
                      .firstWhereOrNull((r) => r.name == 'Accounts')
                      ?.routes ??
                  [])
              .map((r) => r as EORoute);

      final addResetRegistration = routes.any(
        (r) =>
            r.name ==
            AccountRegistrationNamedRoutes.customerPortalResetRegister,
      );

      final resetRegistration = Padding(
        padding: EdgeInsetsGeometry.all(Insets.gutter),
        child: CircleAvatar(
          radius: 20,
          backgroundColor: theme.primaryColor.withAlpha(102),
          child: IconButton(
            icon: Icon(Icons.restart_alt_sharp),
            onPressed: () {
              context.goToResetRegistration();
            },
          ),
        ),
      );

      if (onGoBack != null && addResetRegistration) {
        pageWidgets.insert(0, Row(children: [goBack, resetRegistration]));
      } else if (onGoBack != null) {
        pageWidgets.insert(0, goBack);
      } else if (addResetRegistration) {
        pageWidgets.insert(0, resetRegistration);
      }
    }

    return !runContext.isPortal
        ? SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsGeometry.all(Insets.gutter),
              child: Column(
                crossAxisAlignment: widgetsPlacement,
                children: pageWidgets,
              ),
            ),
          )
        : Scaffold(
            body: Stack(
              children: [
                Image.asset(
                  color: Colors.white.withAlpha(153),
                  colorBlendMode: BlendMode.modulate,
                  isPhone && isPhoneInPortraitMode
                      ? 'assets/images/signup_bg.jpg'
                      : 'assets/images/signup_bg_landscape.jpg',
                  package: 'emr_account_registration',
                ),
                _getLayoutBasedOnScreenSize(isPhone, isPhoneInPortraitMode, [
                  Padding(
                    padding: const EdgeInsets.all(Insets.gutter),
                    child: _getbackControlAndLogoContainer(isPhone, [
                      if (onGoBack != null) ...{
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: theme.primaryColor.withAlpha(102),
                          child: IconButton(
                            icon: Image.asset(
                              'assets/images/back.png',
                              package: 'emr_account_registration',
                              color: Colors.amber[50],
                            ),
                            onPressed: onGoBack,
                          ),
                        ),
                      },
                      Image.asset(
                        'assets/images/emrlogo.png',
                        width: 50,
                        package: 'emr_account_registration',
                      ),
                    ]),
                  ),

                  if (isPhone)
                    const SizedBox(
                      height: AccountRegistrationInsets.gutterTimes5,
                    ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(Insets.gutter * 2),
                          topRight: isPhone && isPhoneInPortraitMode
                              ? const Radius.circular(Insets.gutter * 2)
                              : Radius.zero,
                          bottomLeft: isPhone && isPhoneInPortraitMode
                              ? Radius.zero
                              : const Radius.circular(Insets.gutter * 2),
                        ),
                        color: Theme.of(context).colorScheme.surface,
                      ),
                      child: Padding(
                        padding: isPhone
                            ? const EdgeInsets.all(Insets.gutter / 2)
                            : windowType.widthRangeValues.start >=
                                  EmrOneConstants
                                          .appDefaultSizeBreakpoint
                                          .widthRangeValues
                                          .start +
                                      150
                            ? const EdgeInsets.fromLTRB(
                                AccountRegistrationInsets.gutterTimes15,
                                AccountRegistrationInsets.gutterTimes5,
                                AccountRegistrationInsets.gutterTimes15,
                                AccountRegistrationInsets.gutterTimes5,
                              )
                            : const EdgeInsets.all(
                                AccountRegistrationInsets.gutterTimes5,
                              ),
                        child: Column(
                          children: [
                            ...[
                              if (localisedTitle.isNotEmpty) ...{
                                Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: Insets.gutter,
                                      ),
                                      child: Text(
                                        localisedTitle,
                                        style:
                                            titleStyle ??
                                            theme.textTheme.headlineLarge,
                                      ),
                                    ),
                                    if (toolTip != null &&
                                        toolTip!.isNotEmpty) ...{
                                      Tooltip(
                                        triggerMode: TooltipTriggerMode.manual,
                                        showDuration: Duration.zero,
                                        message: toolTip,
                                        child: const Icon(Icons.info),
                                      ),
                                    },
                                  ],
                                ),
                                verticalSpacer(),
                              },
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: widgetsPlacement,
                                    children: pageWidgets,
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),
                  //),
                ]),
              ],
            ),
          );
  }

  Widget _getLayoutBasedOnScreenSize(
    bool isPhone,
    bool isPhoneInPortraitMode,
    List<Widget> children,
  ) {
    if (isPhone && isPhoneInPortraitMode) {
      return Column(children: children);
    } else {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      );
    }
  }

  Widget _getbackControlAndLogoContainer(bool isPhone, List<Widget> children) {
    if (isPhone) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      );
    } else {
      return SizedBox(
        width: Insets.gutter * 17,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      );
    }
  }
}
