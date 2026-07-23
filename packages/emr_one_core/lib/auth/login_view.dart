import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: EmrCard(
        child: Padding(
          padding: const EdgeInsets.all(Insets.gutter),
          child: SizedBox(
            width: 300,
            height: 300,
            child: Column(
              children: [
                Text(
                  'Welcome back to',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(fontStyle: FontStyle.normal),
                ),
                const SizedBox(height: Insets.gutter),
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
                const Spacer(),
                const Text(
                  'Enter your credentials to access your account',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: Insets.gutter),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(Insets.gutter / 2),
                        child: FilledButton(
                          onPressed: () => Provider.of<BaseLoginController>(
                            context,
                            listen: false,
                          ).startUsernamePasswordLogin(),
                          child: const Text('User name & password'),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(Insets.gutter / 2),
                        child: FilledButton(
                          onPressed: () => context
                              .read<BaseLoginController>()
                              .startBadgeLogin(),
                          child: const Text('Badge & PIN'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
