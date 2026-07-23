import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class IdentificationCard extends StatelessWidget {
  const IdentificationCard({
    required this.identification,
    required this.heading,
    this.dateOfBirth,
    super.key,
  });

  final Identification? identification;
  final String heading;
  final DateTime? dateOfBirth;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = theme.textTheme.labelLarge;
    return Column(
      children: [
        Wrap(
          children: [
            Text(
              'License No : ',
              style: textStyle,
            ),
            Text(
              identification?.identificationNumber ?? '',
              style: textStyle,
            ),
          ],
        ),
        Wrap(
          children: [
            Text(
              'Type : ',
              style: textStyle,
            ),
            Text(
              identification?.type ?? '',
              style: textStyle,
            ),
          ],
        ),
        Wrap(
          children: [
            Text(
              'Sub Type : ',
              style: textStyle,
            ),
            Text(
              identification?.subType ?? '',
              style: textStyle,
            ),
          ],
        ),
        Wrap(
          children: [
            Text(
              'DOB : ',
              style: textStyle,
            ),
            Text(
              dateOfBirth != null ? dateOfBirth!.toString() : '',
              style: textStyle,
            ),
          ],
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: identification?.media?.sasUrl?.isNotEmpty ?? false
                ? () {
                    _showImageDialog(
                      context,
                      identification!.media!.sasUrl!,
                    );
                  }
                : null,
            child: SizedBox(
              height: 150,
              width: 310,
              child: Image.network(
                identification?.media?.sasUrl ?? '',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _showImageDialog(
    BuildContext context,
    String url,
  ) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Image.network(
              url, // replace with your larger image
              fit: BoxFit.contain,
            ),
          ),
        );
      },
    );
  }
}
