import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/controllers/base_settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserDetailsInline extends StatefulWidget {
  const UserDetailsInline({super.key, this.scrollController});

  final ScrollController? scrollController;

  @override
  State<UserDetailsInline> createState() => _UserDetailsInlineState();
}

class _UserDetailsInlineState extends State<UserDetailsInline> {
  @override
  Widget build(BuildContext context) {
    // We can't show the user's details, if UserInfo isn't available.
    final userService = Provider.of<UserService>(context);
    if (!userService.hasUser) {
      return const SizedBox();
    }

    final settingsController = Provider.of<BaseSettingsController>(context);
    final currentThemeMode = settingsController.themeMode;
    final enabledColour = Theme.of(context).colorScheme.onSurface;
    final disabledColour = Color.fromARGB(
      80,
      (enabledColour.r * 255).toInt(),
      (enabledColour.g * 255).toInt(),
      (enabledColour.b * 255).toInt(),
    );

    final appConfig = Provider.of<AppConfig>(context);

    return ListView(
      shrinkWrap:
          true, // Yes, this is expensive, but we will avoid nesting more lists
      controller: widget.scrollController,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              context.l10n.signOut,
              style: EmrOneConstants.kSmallestHeadingTextStyle
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            const Spacer(),
            IconButton(
              onPressed: () async {
                await EmrDialog.noYes(
                  context,
                  titleText: context.l10n.signOut,
                  onYes: () async {
                    context.trackEvent(EmrOneCoreTelemetry.kSignOut);

                    // Pop any dialogs until we're at the root.
                    Navigator.popUntil(
                      context,
                      (route) => !Navigator.canPop(context),
                    );

                    // Sign out of Firebase.
                    await FirebaseLogin.beginSignOut().then((value) async {
                      // Clean up cached data.
                      userService.clear();
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.clear().then((value) {
                        if (!context.mounted) {
                          return;
                        }

                        // Reset the RouteRegistry if we're in staff mode so we
                        // don't end up with duplicates when logging back in.
                        final routeRegistry =
                            Provider.of<RouteRegistry>(context, listen: false);

                        if (routeRegistry.mode == RouteRegistryMode.staff) {
                          routeRegistry.clearRoutes();

                          CoreRoutes.register(routeRegistry);
                        }

                        // Redirect to the home page, so if a subsequent person
                        // signs in, then they're not taken to a page they may
                        // not have permission to access.
                        context.go('/');
                      });
                      // await Hive.deleteFromDisk();
                    });
                  },
                );
              },
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        const Divider(),
        if (context.userHasPermission('debugUserAllowCopyToken')) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.l10n.debugCopyToken,
                style: EmrOneConstants.kSmallestHeadingTextStyle
                    .copyWith(color: Theme.of(context).colorScheme.error),
              ),
              const Spacer(),
              IconButton(
                onPressed: () async {
                  final userToken = await FirebaseLogin.getToken();

                  await Clipboard.setData(
                    ClipboardData(
                      text: userToken,
                    ),
                  );
                },
                icon: Icon(
                  Icons.copy,
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            ],
          ),
          const Divider(),
        ],
        if (!appConfig.isWeb &&
            context.userHasPermission(
              'permissions/uploads/view',
            )) ...[
          _row(context.l10n.uploads, Icons.upload, NamedRoutes.uploads),
          const SizedBox(height: Insets.gutter),
        ],
        _themeRow(
          settingsController,
          enabledColour,
          disabledColour,
          currentThemeMode,
        ),
        const SizedBox(height: Insets.gutter),
        _row(context.l10n.settings, Icons.settings, NamedRoutes.settings),
      ],
    );
  }

  Row _row(String text, IconData icon, String namedRoute) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: EmrOneConstants.kSmallestHeadingTextStyle,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            context.pop();
            context.goNamed(namedRoute);
          },
          icon: Icon(icon),
        ),
      ],
    );
  }

  Row _themeRow(
    BaseSettingsController settingsController,
    Color enabledColour,
    Color disabledColour,
    ThemeMode currentThemeMode,
  ) {
    return Row(
      children: [
        Text(
          context.l10n.theme,
          style: EmrOneConstants.kSmallestHeadingTextStyle,
        ),
        const Spacer(),
        IconButton(
          onPressed: () async {
            _trackThemeChange(context, 'system');
            await settingsController.updateThemeMode(ThemeMode.system);

            setState(() {});
          },
          icon: const Icon(Icons.contrast),
          color: currentThemeMode == ThemeMode.system
              ? enabledColour
              : disabledColour,
        ),
        IconButton(
          onPressed: () async {
            _trackThemeChange(context, 'light');
            await settingsController.updateThemeMode(ThemeMode.light);

            setState(() {});
          },
          icon: const Icon(Icons.light_mode_sharp),
          color: currentThemeMode == ThemeMode.light
              ? enabledColour
              : disabledColour,
        ),
        IconButton(
          onPressed: () async {
            _trackThemeChange(context, 'dark');
            await settingsController.updateThemeMode(ThemeMode.dark);

            setState(() {});
          },
          icon: const Icon(Icons.dark_mode_outlined),
          color: currentThemeMode == ThemeMode.dark
              ? enabledColour
              : disabledColour,
        ),
      ],
    );
  }

  void _trackThemeChange(BuildContext context, String mode) {
    context.trackEvent(
      EmrOneCoreTelemetry.kThemeChange,
      params: {
        'mode': mode,
      },
    );
  }
}
