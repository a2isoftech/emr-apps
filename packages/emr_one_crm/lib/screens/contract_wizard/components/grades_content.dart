import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:flutter/material.dart';

class GradesContent extends StatefulWidget {
  const GradesContent({
    required this.controller,
    required this.index,
    required this.searchText,
    super.key,
  });

  final int index;
  final ContractController controller;
  final String searchText;

  @override
  State<GradesContent> createState() => _GradesContentState();
}

class _GradesContentState extends State<GradesContent> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isMobile = screenWidth < 600;
    final gradeCode =
        widget.controller.model!.gplGrades[widget.index].gradeCode;
    final description =
        widget.controller.model!.gplGrades[widget.index].description;

    final brokerReference =
        widget.controller.model!.gplGrades[widget.index].brokerReference ?? '';

    final isSelected =
        widget.controller.isGradeSelected(gradeCode, brokerReference);

    return Directionality(
      textDirection: TextDirection.ltr,
      child: TextButton(
        onPressed: () {
          setState(() {
            isSelected
                ? widget.controller.setGradeSelected(
                    gradeCode,
                    brokerReference,
                    selected: false,
                  )
                : widget.controller
                    .setGradeSelected(gradeCode, brokerReference);
          });
        },
        style: ButtonStyle(
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          padding:
              WidgetStateProperty.all(const EdgeInsets.all(Insets.gutter / 2)),
          minimumSize: WidgetStateProperty.all(Size.zero),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.ltr,
          children: [
            Text(
              gradeCode,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: isSelected
                        ? Theme.of(context).brightness == Brightness.dark
                            ? Theme.of(context).colorScheme.onPrimaryFixed
                            : Theme.of(context).colorScheme.onSecondary
                        : Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: Insets.gutter / 4),
            if (brokerReference.isNotEmpty)
              Text(
                brokerReference,
                maxLines: isMobile ? 1 : 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: isSelected
                          ? Theme.of(context).brightness == Brightness.dark
                              ? Theme.of(context).colorScheme.onPrimaryFixed
                              : Theme.of(context).colorScheme.onSecondary
                          : Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
              ),
            if (brokerReference.isEmpty)
              Text(
                description,
                maxLines: isMobile ? 1 : 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: isSelected
                          ? Theme.of(context).brightness == Brightness.dark
                              ? Theme.of(context).colorScheme.onPrimaryFixed
                              : Theme.of(context).colorScheme.onSecondary
                          : Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
