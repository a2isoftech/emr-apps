import 'package:collection/collection.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class Identifications extends StatelessWidget {
  const Identifications({
    required this.heading,
    required this.account,
    super.key,
  });

  final Account? account;

  final String heading;

  @override
  Widget build(BuildContext context) {
    final mainContact = account?.contacts
        ?.firstWhereOrNull((c) => c.contactTypes?.contains('MAIN') ?? false);

    if (mainContact == null) {
      return const Text('No main contact found');
    }

    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Determine the number of columns based on screen width
          final columnsCount = (constraints.maxWidth / 300).floor().clamp(1, 4);

          return Padding(
            padding: const EdgeInsets.all(16),
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columnsCount,
              ),
              children: [
                if ((mainContact.proofOfIdentification ?? []).isNotEmpty) ...{
                  IdentificationCard(
                    identification: mainContact.proofOfIdentification?.first,
                    heading: 'Proof Of ID',
                  ),
                },
                if ((mainContact.proofOfAddress ?? []).isNotEmpty) ...{
                  IdentificationCard(
                    identification: mainContact.proofOfAddress?.first,
                    heading: 'Proof Of Address',
                  ),
                },
              ],
            ),
          );
        },
      ),
    );
  }
}
