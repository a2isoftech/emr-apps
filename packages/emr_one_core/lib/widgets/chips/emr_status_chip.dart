import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

enum StatusType {
  information,
  positive,
  negative,
  warning,
}

class EmrStatusChip extends StatelessWidget {
  const EmrStatusChip({
    required this.text,
    super.key,
    this.statusType = StatusType.information,
  });

  static const Color positiveColor = Color(0xFF5DAF0F); //Plastic Pines
  static const Color negativeColor = Color(0xFFF00028); //Red Savina Pepper
  static const Color warningColor = Color(0xFFFF874F); //Naranja Caqui
  static const Color borderColor = Color(0xFFAEA0AA); //Aluminium Powder

  final StatusType statusType;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.gutter / 2,
        vertical: Insets.gutter / 4,
      ),
      decoration: BoxDecoration(
        // As per guideline status chip will remain white with theme change
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: statusType != StatusType.information,
            child: Padding(
              padding: const EdgeInsets.only(right: Insets.gutter / 4),
              child: Icon(
                Icons.circle,
                size: 12,
                color: switch (statusType) {
                  StatusType.information => Colors.white,
                  StatusType.positive => positiveColor,
                  StatusType.negative => negativeColor,
                  StatusType.warning => warningColor,
                },
              ),
            ),
          ),
          Flexible(
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
