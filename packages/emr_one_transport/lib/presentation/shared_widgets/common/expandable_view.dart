import 'package:flutter/material.dart';

class ExpandableView extends StatefulWidget {
  const ExpandableView({
    required this.headerHeight,
    required this.header,
    required this.body,
    this.isExpanded = false,
    super.key,
  });

  final bool isExpanded;
  final double headerHeight;
  final Widget header;
  final Widget body;
  @override
  State<ExpandableView> createState() => _ExpandableViewState();
}

class _ExpandableViewState extends State<ExpandableView>
    with SingleTickerProviderStateMixin {
  late bool isViewExpanded;
  @override
  void initState() {
    super.initState();
    isViewExpanded = widget.isExpanded;
  }

  void toggleAccordion() {
    setState(() {
      isViewExpanded = !isViewExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Accordion Header
        GestureDetector(
          onTap: toggleAccordion,
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: SizedBox(
              height: widget.headerHeight,
              child: Row(
                children: [
                  Expanded(child: widget.header),
                ],
              ),
            ),
          ),
        ),
        // Accordion Body
        if (isViewExpanded)
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Theme.of(context).dividerColor,
              ),
            ),
            child: widget.body, // Display body content
          )
        else
          const SizedBox.shrink(),
      ],
    );
  }
}
