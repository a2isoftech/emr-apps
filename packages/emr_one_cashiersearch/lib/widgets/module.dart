import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:flutter/material.dart';

class Module extends StatefulWidget {
  const Module({
    required this.sectionContent,
    this.leadingActions,
    this.trailingActions,
    this.isReadOnly = false,
    this.isVisible = true,
    this.needDivider = false,
    this.needBorder = true,
    super.key,
    this.title,
  });

  final String? title;
  final bool isReadOnly;
  final bool isVisible;
  final bool? needDivider;
  final bool? needBorder;
  final List<Widget>? leadingActions;
  final List<Widget>? trailingActions;
  final Widget sectionContent;

  @override
  State<Module> createState() => _TicketDetailSectionState();
}

class _TicketDetailSectionState extends State<Module> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              if (widget.title != null && widget.title!.isNotEmpty) ...[
                Text(
                  widget.title!,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
              if (widget.leadingActions != null &&
                  widget.leadingActions!.isNotEmpty)
                ...widget.leadingActions!,
              const Spacer(),
              if (widget.trailingActions != null &&
                  widget.trailingActions!.isNotEmpty)
                ...widget.trailingActions!,
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: (widget.needBorder ?? false)
                ? BoxDecoration(
                    color: EmrColours.primaryWhite,
                    border: Border.all(
                      color: Colors.grey.shade400,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withAlpha(128),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  )
                : null,
            child: Row(children: [widget.sectionContent]),
          ),
          if (widget.needDivider ?? false)
            const Padding(
              padding: EdgeInsets.all(10),
              child: Divider(),
            ),
        ],
      ),
    );
  }
}
