import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/screens/welcome_graphic.dart';
import 'package:emr_one_core/src/logging/helpers/log_location_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PermissionsPromptScreen extends StatefulWidget {
  const PermissionsPromptScreen({required this.child, super.key});

  final Widget child;

  @override
  State<PermissionsPromptScreen> createState() =>
      _PermissionsPromptScreenState();
}

class _PermissionsPromptScreenState extends State<PermissionsPromptScreen> {
  final _continuePressed = ValueNotifier<bool>(false);

  @override
  void dispose() {
    _continuePressed.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: LogLocationHelper.init(),
      builder: (_, value) {
        // While loading the app
        // - it will wait for this value to come back
        // - causing a small flash on the screen.
        // - This is to minimise the impact
        // of that flash if this screen is not needed.
        if (value.connectionState != .done) {
          return const WelcomeGraphic();
        }

        // If true this screen can be skipped and the app opened as normal.
        if (value.data ?? false) return widget.child;

        return ValueListenableBuilder<bool>(
          valueListenable: _continuePressed,
          builder: (context, pressed, _) {
            if (pressed) {
              return widget.child;
            }
            return Scaffold(
              body: Center(
                child: Column(
                  spacing: Insets.gutter * 2,
                  mainAxisSize: .min,
                  children: [
                    SizedBox(
                      width: 180,
                      child: SvgPicture.asset(
                        width: 180,
                        'assets/logo/wordmark.svg',
                        alignment: Alignment.topLeft,
                        package: 'emr_one_core',
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.onSurface,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const .symmetric(
                        horizontal: Insets.gutter * 1.5,
                      ),
                      child: Text(
                        context.l10n.locationsPermissionRequest,
                        textAlign: .center,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                    FilledButton(
                      onPressed: () {
                        LogLocationHelper.markPrompted();
                        // This triggers the first run of this
                        // function which will also trigger the
                        // Permissions Dialogs on android and IOS
                        LogLocationHelper.getCurrentLocationLatLong();
                        if (_continuePressed.value) return;
                        _continuePressed.value = true;
                      },
                      child: Text(context.l10n.continueForm),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
