import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    required this.title,
    required this.note,
    required this.icon,
    required this.badgeBg,
    required this.iconColor,
    super.key,
  });

  final String title;
  final String? note;
  final IconData icon;
  final Color badgeBg;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Insets.gutter / 2),
      decoration: BoxDecoration(
        border: Border.all(color: TransportAppColors.greyCardBg),
        borderRadius: BorderRadius.circular(Insets.gutter / 4),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: Insets.gutter / 2,
        children: [
          Container(
            padding: const EdgeInsets.all(Insets.gutter / 4),
            color: badgeBg,
            child: Icon(icon, color: iconColor, size: Constants.iconSizeM),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                // Use SelectableText if you want copy support
                Text(
                  note ?? '',
                  softWrap: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
