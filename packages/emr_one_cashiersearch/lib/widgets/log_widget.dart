import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class LogWidget extends StatelessWidget {
  const LogWidget({
    required this.errors,
    required this.warnings,
    this.message,
    //required this.account,
    super.key,
  });

  final List<String> errors;
  final List<String> warnings;
  //final Account account;
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // if (account.accountStatus != AccountStatus.live)
        //   FilledButton(
        //     onPressed: () async => context.pushNamed(
        //       RoutingPathName.accountRegistration,
        //       extra: {
        //         'accountCode': account.code,
        //       },
        //     ),
        //     style: EmrButtonStyles.cta(),
        //     child: const Text('Complete Account signup'),
        //   ),
        if (message?.isNotEmpty ?? false) ...[
          Text(message!, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: Insets.gutter / 4),
        ],
        if (errors.isNotEmpty) ...[
          Row(
            spacing: Insets.gutter / 4,
            children: [
              const Icon(Icons.error, color: EmrColours.secondaryRed, size: 20),
              Text(
                context.l10n.errors,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          const SizedBox(height: Insets.gutter / 4),
          ...errors.map(
            (e) => Padding(
              padding: const EdgeInsets.only(
                left: Insets.gutter * 2,
                bottom: Insets.gutter / 8,
              ),
              child: Text(
                '- $e',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          const SizedBox(height: Insets.gutter),
        ],
        if (warnings.isNotEmpty) ...[
          Row(
            spacing: Insets.gutter / 4,
            children: [
              const Icon(
                Icons.warning,
                color: EmrColours.secondaryYellow,
                size: 20,
              ),
              Text(
                context.l10n.warnings,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          const SizedBox(height: Insets.gutter / 4),
          ...warnings.map(
            (w) => Padding(
              padding: const EdgeInsets.only(
                left: Insets.gutter * 2,
                bottom: Insets.gutter / 8,
              ),
              child: Text(
                '- $w',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ],
    );
  }
}
