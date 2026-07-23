import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/widgets/auth/basic_login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class AppleLoginView extends StatefulWidget {
  const AppleLoginView({super.key});

  @override
  State<AppleLoginView> createState() => _AppleLoginViewState();
}

class _AppleLoginViewState extends State<AppleLoginView> {
  final _gettingCredentials = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: EmrCard(
        child: Padding(
          padding: const EdgeInsets.all(Insets.gutter),
          child: SizedBox(
            width: 300,
            height: 320,
            child: ValueListenableBuilder<bool>(
              valueListenable: _gettingCredentials,
              builder: (context, gettingCredentials, child) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: gettingCredentials
                      ? BasicLoginForm(
                          onCancel: () => _gettingCredentials.value = false,
                        )
                      : Column(
                          key: const ValueKey('mainContent'),
                          children: [
                            Text(
                              'Welcome back to',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headlineMedium
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
                                    padding: const EdgeInsets.all(
                                      Insets.gutter / 2,
                                    ),
                                    child: FilledButton(
                                      onPressed: () {
                                        _gettingCredentials.value = true;
                                      },
                                      child: const Text('Email & password'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                      Insets.gutter / 2,
                                    ),
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
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
