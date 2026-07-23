import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:emr_one_core/models/user_dashboards/workspace_library_item.dart';
import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/services/direct_query_service.dart';
import 'package:emr_one_core/services/services.dart';
import 'package:emr_one_core/src/workspace/components/data_tile/data_tile.dart';
import 'package:emr_one_core/src/workspace/components/label_tile/label_tile.dart';
import 'package:emr_one_core/src/workspace/components/menu_tile/menu_tile.dart';
import 'package:emr_one_core/src/workspace/workspace_element_entry.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';
import 'package:flutter/material.dart';

typedef WorkspaceElementCreate = WorkspaceElementBase Function({
  required String type,
  required String kind,
  required Offset offset,
  required Color backgroundColour,
  required WorkspaceLibraryEntry libraryEntry,
  Map<String, dynamic>? elementPropertiesJson,
  Map<String, dynamic>? customPropertiesJson,
});

class WorkspaceRegistry {
  WorkspaceRegistry({
    required this.directQueryService,
    required this.workspaceService,
  }) {
    registerMenuTileTypes();
    registerLabelTileType();
  }

  final DirectQueryService directQueryService;
  final WorkspaceService workspaceService;

  final _libraryItems = <String, WorkspaceLibraryEntry>{};
  final _elementTypes = <String, WorkspaceElementEntry>{};

  void registerLibraryItem(
    String elementType,
    String elementKind,
    IconData Function() getIcon,
    Function getDisplayName,
    Size Function() getSize,
    WorkspaceLibraryItem defintion,
    String? Function()? getDescription, {
    bool canDelete = true,
    bool canEdit = true,
    bool isHidden = false,
  }) {
    _libraryItems[elementKind] = WorkspaceLibraryEntry(
      elementType,
      elementKind,
      getIcon,
      getDisplayName,
      defintion,
      () => defintion.getTitle(),
      getSize,
      getDescription,
      canDelete: canDelete,
      canEdit: canEdit,
      isHidden: isHidden,
    );
  }

  Map<String, WorkspaceLibraryEntry> get libraryItems => _libraryItems;

  Future<Map<String, WorkspaceLibraryEntry>> fetchLibraryItems() async {
    final libraryItems = await workspaceService.librarySearch('');

    // The library can support many things in future but right
    // now it only supports Direct Queries (aka DirectQueryDefinition).
    for (final item in libraryItems) {
      if (item is! DirectQueryDefinition) {
        continue;
      }

      registerDirectQueryDefinition(item);
    }

    return _libraryItems;
  }

  void registerElementType<T>(WorkspaceElementCreate create) =>
      _elementTypes[(T).toString()] = WorkspaceElementEntry(create);

  WorkspaceElementEntry getElementType(String type) {
    return _elementTypes[type] ??
        (throw Exception('No registration found for type: $type'));
  }

  void registerDirectQueryDefinition(DirectQueryDefinition element) =>
      registerLibraryItem(
        (DirectQueryDefinition).toString(),
        element.id!,
        switch (element.kind.value) {
          DirectQueryKind.limitQuery => () => Icons.sixty_fps_select,
          DirectQueryKind.singleFacetValue => () => Icons.format_list_numbered,
        },
        () => element.title.value,
        () => Size(
          DataTile.kDefaultSize.width,
          DataTile.kDefaultSize.height,
        ),
        element,
        switch (element.kind.value) {
          DirectQueryKind.limitQuery => () => 'Count query (Direct Query)',
          DirectQueryKind.singleFacetValue => () =>
              'Facet query (Direct Query)',
        },
      );

  WorkspaceLibraryEntry getLibraryEntry(String kind) {
    return _libraryItems[kind] ??
        (throw Exception('No registration found for kind: $kind'));
  }

  void registerLabelTileType() {
    registerLibraryItem(
      (LabelTileProperties).toString(),
      'label',
      () => Icons.label,
      () => 'Label Tile',
      () => Size(
        LabelTile.kDefaultSize.width,
        LabelTile.kDefaultSize.height,
      ),
      LabelTileProperties('No label text'),
      () => 'A tile that displays a label.',
      canDelete: false,
      canEdit: false,
    );
  }

  void registerMenuTileTypes() {
    registerLibraryItem(
      (MenuTileProperties).toString(),
      'menu',
      () => Icons.apps,
      () => 'Menu Tile',
      () => Size(
        MenuTile.kDefaultSize.width,
        MenuTile.kDefaultSize.height,
      ),
      MenuTileProperties(),
      () => 'A tile that displays a menu.',
      isHidden: true,
    );
  }
}
