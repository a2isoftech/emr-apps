import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/workspace/painter/grid_surface_painter.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class GridSurface extends StatefulWidget {
  const GridSurface({
    super.key,
    this.elements = const [],
    this.editing = false,
    this.moveTarget = Offset.zero,
    this.moveSize = Size.zero,
    this.isMoveAllowed = false,
  });

  @override
  State<GridSurface> createState() => _GridSurfaceState();

  final List<WorkspaceElementBase> elements;
  final Offset moveTarget;
  final Size moveSize;
  final bool editing;
  final bool isMoveAllowed;
}

class _GridSurfaceState extends State<GridSurface> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: GridSurfacePainter(
        canvasColour: Theme.of(context).canvasColor,
        elements: widget.elements,
        moveTarget: widget.moveTarget,
        moveSize: widget.moveSize,
        dragging: widget.editing,
        isMoveAllowed: widget.isMoveAllowed,
      ),
    );
  }
}
