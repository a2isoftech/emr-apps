import 'package:collection/collection.dart';
import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';
import 'package:flutter/material.dart';

/// The [WorkspaceGridLayout] class is responsible for rendering Workspace
/// Elements in a gridded layout with drag and drop support for moving
/// elements around. This class shoul only ever be concerned with physical
/// layout, sizing and movement of elements.
class WorkspaceGridLayout extends StatefulWidget {
  const WorkspaceGridLayout({
    required this.screenLayout,
    required this.workspaceController,
    super.key,
  });

  @override
  State<WorkspaceGridLayout> createState() => _WorkspaceGridLayoutState();

  final WorkspaceLayout screenLayout;
  final WorkspaceController workspaceController;
}

class _WorkspaceGridLayoutState extends State<WorkspaceGridLayout> {
  // int dragging = -1;
  Offset moveTarget = Offset.zero;
  Size moveSize = Size.zero;
  bool isMoveAllowed = false;

  late final ScrollController horizontalScrollController;
  late final ScrollController verticalScrollController;

  @override
  void initState() {
    super.initState();

    horizontalScrollController = ScrollController();
    horizontalScrollController.addListener(() {
      widget.workspaceController.horizontalScrollOffset =
          horizontalScrollController.offset;
    });
    verticalScrollController = ScrollController();
    verticalScrollController.addListener(() {
      widget.workspaceController.verticalScrollOffset =
          verticalScrollController.offset;
    });
  }

  @override
  void dispose() {
    horizontalScrollController.dispose();
    verticalScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DragTarget<DragType>(
      onMove: (details) {
        final dragDetails = details.data;

        final targetSize = switch (dragDetails.isMove) {
          true => widget.screenLayout.elements[dragDetails.index].size,
          false => widget
              .workspaceController.registry.libraryItems[dragDetails.element]!
              .getSize(),
        };

        // The '-1' is to move the drag target up and left to make it easier
        // to move the element into position.
        final nx = ((details.offset.dx.toInt() +
                    widget.workspaceController.horizontalScrollOffset) ~/
                kGridSize) -
            1;
        final ny = ((details.offset.dy.toInt() +
                    widget.workspaceController.verticalScrollOffset) ~/
                kGridSize) -
            3;

        // determine if this collides with an existing element
        // except for the one being dragged
        final listOfExistingElements =
            widget.screenLayout.elements.whereIndexed((index, element) {
          return index != dragDetails.index;
        }).toList();

        final targetRect = Rect.fromLTWH(
          nx.toDouble() * kGridSize,
          ny.toDouble() * kGridSize,
          targetSize.width * kGridSize,
          targetSize.height * kGridSize,
        );

        final existingRects = listOfExistingElements
            .map(
              (e) => Rect.fromLTWH(
                kGridSize * e.position.dx,
                kGridSize * e.position.dy,
                kGridSize * e.size.width,
                kGridSize * e.size.height,
              ),
            )
            .toList();

        isMoveAllowed = !existingRects.any((r) => r.overlaps(targetRect));

        setState(() {
          moveTarget = Offset(nx.toDouble(), ny.toDouble());
          moveSize = Size(
            targetSize.width,
            targetSize.height,
          );
        });
      },
      onAcceptWithDetails: (details) {
        final dragDetails = details.data;

        if (isMoveAllowed == false) {
          widget.workspaceController.stopDragging();
          return;
        }

        final nx = ((details.offset.dx.toInt() +
                    widget.workspaceController.horizontalScrollOffset) ~/
                kGridSize) -
            1;
        final ny = ((details.offset.dy.toInt() +
                    widget.workspaceController.verticalScrollOffset) ~/
                kGridSize) -
            3;

        if (!dragDetails.isMove) {
          final libraryEntry = widget
              .workspaceController.registry.libraryItems[dragDetails.element];

          if (libraryEntry != null) {
            final type = widget.workspaceController.registry.getElementType(
              libraryEntry.elementType,
            );

            widget.screenLayout.elements.add(
              type.create(
                type: libraryEntry.elementType,
                kind: dragDetails.element!,
                libraryEntry: libraryEntry,
                offset: Offset(
                  double.parse(nx.toString()),
                  double.parse(ny.toString()),
                ),
                backgroundColour:
                    Theme.of(context).colorScheme.tertiaryContainer,
              ),
            );
          }
        } else {
          widget.screenLayout.elements[dragDetails.index].position = Offset(
            nx.toDouble(),
            ny.toDouble(),
          );
        }

        setState(() {
          moveTarget = Offset.zero;
          moveSize = Size.zero;
          isMoveAllowed = true;
        });

        widget.workspaceController.stopDragging();
      },
      builder: (context, candidateItems, rejectedItems) {
        return SingleChildScrollView(
          controller: verticalScrollController,
          child: SingleChildScrollView(
            controller: horizontalScrollController,
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: 3000,
              height: 2000,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: GestureDetector(
                      onTap: () {
                        widget.workspaceController.hideComponentFlyout();
                        widget.workspaceController
                            .hidePropertiesFlyout(cancelChanges: true);
                      },
                      child: GridSurface(
                        elements: widget.screenLayout.elements,
                        moveTarget: moveTarget,
                        moveSize: moveSize,
                        isMoveAllowed: isMoveAllowed,
                        editing: widget.workspaceController.isDragging ||
                            widget.workspaceController.showingComponentFlyout,
                      ),
                    ),
                  ),
                  ...getGridElements(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  List<Widget> getGridElements() {
    return widget.screenLayout.elements
        .map(
          (element) => Positioned.fromRect(
            rect: Rect.fromLTWH(
              kGridSize * element.position.dx,
              kGridSize * element.position.dy,
              kGridSize * element.size.width,
              kGridSize * element.size.height,
            ),
            child: _asDraggable(
              element,
              Visibility(
                visible: !widget.workspaceController.isDragging,
                child: ColoredBox(
                  color: Theme.of(context).canvasColor,
                  child: Padding(
                    padding: const EdgeInsets.all(kGridElementPadding),
                    child: element.elementBuilder(
                      context,
                      widget.workspaceController,
                      element,
                    ),
                  ),
                ),
              ),
              widget.screenLayout.elements.indexOf(element),
            ),
          ),
        )
        .toList();
  }

  Widget _asDraggable(WorkspaceElementBase element, Widget child, int index) {
    final dx = widget.screenLayout.elements[index].size.width;
    final dy = widget.screenLayout.elements[index].size.height;
    return Draggable<DragType>(
      data: DragType(isMove: true, index: index),
      dragAnchorStrategy:
          (Draggable<Object> d, BuildContext context, Offset point) {
        return Offset(
          d.feedbackOffset.dx + (kGridSize * dx) / 2,
          d.feedbackOffset.dy + (kGridSize * dy) / 2,
        );
      },
      onDragStarted: () => widget.workspaceController.startDragging(key: index),
      feedback: Transform.scale(
        scale: 0.75,
        child: SizedBox(
          width: kGridSize * dx,
          height: kGridSize * dy,
          child: Material(
            elevation: kGridElementElevation,
            child: element.elementBuilder(
              context,
              widget.workspaceController,
              element,
              isStatic: true,
            ),
          ),
        ),
      ),
      child: child,
    );
  }
}
