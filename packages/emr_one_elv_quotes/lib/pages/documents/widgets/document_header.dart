import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class DocumentHeader extends StatelessWidget {
  const DocumentHeader({
    required this.identifierType,
    required this.vehicleIdentifier,
    super.key,
  });
  final String identifierType;
  final String vehicleIdentifier;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      color: Theme.of(context).colorScheme.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: Insets.gutter * 2),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.inspectionPhotos,
                    style: Theme.of(context).primaryTextTheme.headlineMedium,
                  ),
                  const SizedBox(height: Insets.gutter),
                  Row(
                    children: [
                      Text(
                        '$identifierType :',
                        style: Theme.of(context)
                            .primaryTextTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: Insets.gutter / 2,
                      ),
                      Text(
                        vehicleIdentifier,
                        style: Theme.of(context).primaryTextTheme.titleMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
