import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:flutter/material.dart';

class TicketSignBtn extends StatelessWidget {
  const TicketSignBtn({
    required this.label,
    required this.isSuccess,
    required this.onSelected,
    super.key,
  });

  final String label;
  final void Function({bool? selected})? onSelected;
  final bool isSuccess;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSelected?.call(),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isSuccess ? EmrColours.primaryGreen : EmrColours.secondaryRed,
          borderRadius: const BorderRadius.all(Radius.circular(4)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          child: Row(
            children: [
              Icon(
                isSuccess ? Icons.check : Icons.close,
                size: 15,
                color: Colors.white,
              ),
              const SizedBox(width: 4),
              Text(
                label.toUpperCase(),
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)
                        .copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
