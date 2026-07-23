import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/routing/routing.dart';
import 'package:flutter/material.dart';

class PlaceHolderScreen extends StatelessWidget {
  const PlaceHolderScreen({
    super.key,
    this.title,
    this.subtitle,
  });
  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        child: PlaceHolderWarning(
          title: title ?? '${context.l10n.comingSoon}!',
          subtitle: subtitle ?? context.l10n.sorryThisScreenIsntReadyYet,
        ),
      ),
    );
  }
}

class PlaceHolderWarning extends StatelessWidget {
  const PlaceHolderWarning({
    required this.title,
    required this.subtitle,
    super.key,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Icon(
          Icons.error,
          size: 128,
          color: Colors.amber,
        ),
        Text(title, style: const TextStyle(fontSize: 32)),
        Text(
          subtitle,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32),
          child: SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  context.pop();
                } else {
                  context.go(context.namedLocation(NamedRoutes.home));
                }
              },
              child: Text(context.l10n.back),
            ),
          ),
        ),
      ],
    );
  }
}
