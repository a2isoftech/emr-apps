import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class ComponentPalette extends StatefulWidget {
  const ComponentPalette({
    required this.controller,
    super.key,
  });

  final WorkspaceController controller;

  @override
  State<ComponentPalette> createState() => _ComponentPaletteState();
}

class _ComponentPaletteState extends State<ComponentPalette> {
  late Future<Map<String, WorkspaceLibraryEntry>> _loadComponentsFuture;

  @override
  void initState() {
    super.initState();

    _loadComponentsFuture = widget.controller.registry.fetchLibraryItems();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, WorkspaceLibraryEntry>>(
      future: _loadComponentsFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        return Material(
          elevation: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: Insets.gutter,
                runSpacing: Insets.gutter,
                children: [
                  FilledButton(
                    onPressed: () async {
                      await widget.controller.saveFile();
                    },
                    child: const Text('Save Json'),
                  ),
                  FilledButton(
                    onPressed: () async {
                      await widget.controller.loadFile();
                    },
                    child: const Text('Load Json'),
                  ),
                  FilledButton(
                    onPressed: () {
                      widget.controller.createQueryDefintion(context);
                    },
                    child: const Text('New Query'),
                  ),
                ],
              ),
              const SizedBox(height: Insets.gutter),
              Expanded(
                child: ListView(
                  itemExtent: 76,
                  children: getPaletteElements(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<Widget> getPaletteElements() {
    return widget.controller.registry.libraryItems.keys
        .where((k) => !widget.controller.registry.libraryItems[k]!.isHidden)
        .map(
          (k) => _asDraggable(
            _getItem(k),
          ),
        )
        .toList();
  }

  ComponentListItem _getItem(String k, {bool dragging = false}) =>
      ComponentListItem(
        createKey: k,
        label: widget.controller.registry.libraryItems[k]!.getTitle(),
        icon: widget.controller.registry.libraryItems[k]!.getIcon(),
        subTitle: widget.controller.registry.libraryItems[k]!.getDescription
                ?.call() ??
            'No description available',
        backgroundColour: Theme.of(context).colorScheme.primaryContainer,
        foregroundColour: Theme.of(context).colorScheme.onPrimaryContainer,
        onEdit: (createKey) {
          widget.controller.updateQueryDefintion(
            context,
            widget.controller.registry.libraryItems[createKey]!.defintion
                as DirectQueryDefinition,
          );
        },
        onDelete: (createKey) {
          widget.controller.deleteQueryDefinition(context, createKey);
          setState(() {});
        },
        dragging: dragging,
        canDelete: widget.controller.registry.libraryItems[k]!.canDelete,
        canEdit: widget.controller.registry.libraryItems[k]!.canEdit,
      );

  Widget _asDraggable(ComponentListItem child) {
    return Draggable<DragType>(
      data: DragType(element: child.createKey),
      onDragStarted: widget.controller.startDragging,
      onDraggableCanceled: (_, __) => widget.controller.stopDragging,
      onDragEnd: (_) => widget.controller.stopDragging(),
      feedback: Transform.scale(
        scale: 0.75,
        child: _getItem(child.createKey, dragging: true),
      ),
      child: child,
    );
  }
}
