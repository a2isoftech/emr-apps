import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class AccessDeniedScreen extends StatelessWidget {
  const AccessDeniedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.l10n.accessDenied,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}
