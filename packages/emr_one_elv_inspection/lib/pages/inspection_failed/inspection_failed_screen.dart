import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/routing/named_routes.dart';
import 'package:flutter/material.dart';

class InspectionFailedScreen extends StatelessWidget {
  const InspectionFailedScreen({required this.errorMessage, super.key});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.warning,
            color: Theme.of(context).colorScheme.secondary,
            size: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Text(
              errorMessage,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              context.replaceNamed(NamedRoutesElv.elvInspectionHome);
            },
            child: Text(context.l10n.goBack),
          ),
        ],
      ),
    );
  }
}
