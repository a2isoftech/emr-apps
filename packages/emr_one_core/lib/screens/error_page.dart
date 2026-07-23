import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class ErrorPage extends MaterialPage<void> {
  ErrorPage(
    BuildContext context, {
    required int errorCode,
    required String errorMessage,
  }) : super(child: _pageBuilder(context, errorCode, errorMessage));

  static Widget _pageBuilder(
    BuildContext context,
    int errorCode,
    String errorMessage,
  ) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _text(errorCode.toString(), context),
            _text(errorMessage, context),
            _text('', context),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: Text(context.l10n.routeDisplayNameHome),
            ),
          ],
        ),
      ),
    );
  }

  static Text _text(String text, BuildContext context) => Text(
        text,
        style: Theme.of(context).textTheme.headlineMedium,
      );
}
