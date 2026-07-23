import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_inform/constants/styles.dart';
import 'package:flutter/material.dart';

class InformNoConnection extends StatelessWidget {
  const InformNoConnection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: FormAppIcons.noInternetConnection,
        ),
        Text(
          context.l10n.noInternet,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            context.l10n.noInternetDetails,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
