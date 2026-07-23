import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class WorkflowLevelCell extends StatefulWidget {
  const WorkflowLevelCell({
    required this.children,
    required this.onTap,
    super.key,
  });

  final void Function() onTap;
  final List<Widget> children;

  @override
  State<WorkflowLevelCell> createState() => _WorkflowLevelCellState();
}

class _WorkflowLevelCellState extends State<WorkflowLevelCell> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.onTap,
          borderRadius: BorderRadius.circular(Insets.gutter),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...widget.children,
                if (isHovering && widget.children.isEmpty)
                  const Center(
                    child: Icon(Icons.add, size: Insets.gutter),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
