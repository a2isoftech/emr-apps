import 'dart:ui';

import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/workspace/components/data_tile/data_tile.dart';
import 'package:emr_one_core/src/workspace/components/label_tile/label_tile.dart';
import 'package:emr_one_core/src/workspace/components/menu_tile/menu_tile.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';
import 'package:flutter/foundation.dart';

extension WorkspaceRegistryRegistrar on WorkspaceRegistry {
  void registerDefaultTypes() {
    registerElementType<LabelTileProperties>(
      ({
        required String type,
        required String kind,
        required Offset offset,
        required Color backgroundColour,
        required WorkspaceLibraryEntry libraryEntry,
        Map<String, dynamic>? elementPropertiesJson,
        Map<String, dynamic>? customPropertiesJson,
      }) =>
          LabelTile(
        type: type,
        kind: kind,
        getController: (WorkspaceElementBase element) => LabelTileController(
          directQueryService,
          element,
        ),
        position: offset,
        size: LabelTile.kDefaultSize,
        elementProperties: elementPropertiesJson != null
            ? WorkspaceElementProperties.fromJson(elementPropertiesJson)
            : WorkspaceElementProperties(
                backgroundColour: backgroundColour,
              ),
        customProperties: customPropertiesJson != null
            ? LabelTileProperties.fromJson(customPropertiesJson)
            : LabelTileProperties('No label text'),
      ),
    );

    registerElementType<MenuTileProperties>(
      ({
        required String type,
        required String kind,
        required Offset offset,
        required Color backgroundColour,
        required WorkspaceLibraryEntry libraryEntry,
        Map<String, dynamic>? elementPropertiesJson,
        Map<String, dynamic>? customPropertiesJson,
      }) =>
          MenuTile(
        type: type,
        kind: kind,
        getController: (WorkspaceElementBase element) => MenuTileController(
          directQueryService,
          element,
        ),
        position: offset,
        size: MenuTile.kDefaultSize,
        elementProperties: elementPropertiesJson != null
            ? WorkspaceElementProperties.fromJson(elementPropertiesJson)
            : WorkspaceElementProperties(
                backgroundColour: backgroundColour,
              ),
        customProperties: customPropertiesJson != null
            ? MenuTileProperties.fromJson(customPropertiesJson)
            : MenuTileProperties(),
      ),
    );

    // We need to register the DirectQueryDefinition type here
    // which tells the workspace how to manufacture these elements
    // when they are dropped onto a worspace or loaded from json.
    // This code is registering a "builder" for these elements.
    registerElementType<DirectQueryDefinition>(
      ({
        required String type,
        required String kind,
        required Offset offset,
        required Color backgroundColour,
        required WorkspaceLibraryEntry libraryEntry,
        Map<String, dynamic>? elementPropertiesJson,
        Map<String, dynamic>? customPropertiesJson,
      }) =>
          DataTile(
        type: type,
        kind: kind,
        getController: (WorkspaceElementBase element) => DataTileController(
          directQueryService,
          element,
        ),
        position: offset,
        size: DataTile.kDefaultSize,
        elementProperties: elementPropertiesJson != null
            ? WorkspaceElementProperties.fromJson(elementPropertiesJson)
            : WorkspaceElementProperties(
                backgroundColour: backgroundColour,
              ),
        customProperties: customPropertiesJson != null
            ? DirectQueryInstance.fromJson(customPropertiesJson)
            : DirectQueryInstance(
                queryDefinitionId: kind,
                title: (libraryEntry.defintion as DirectQueryDefinition)
                    .title
                    .value,
                rql: (libraryEntry.defintion as DirectQueryDefinition)
                    .queryText
                    .value,
                kind: (libraryEntry.defintion as DirectQueryDefinition)
                    .kind
                    .value,
                parameters: (libraryEntry.defintion as DirectQueryDefinition)
                    .parameters
                    .value
                    .map(
                      DirectQueryParameterDefinition.clone,
                    )
                    .toList(),
                parameterValues: (libraryEntry.defintion
                        as DirectQueryDefinition)
                    .parameters
                    .value
                    .map(
                      (e) => DirectQueryParameterValue(
                        name: ValueNotifier<String>(e.name.value),
                        value:
                            ValueNotifier<String>(e.defaultValue.value ?? ''),
                      ),
                    )
                    .toList(),
              ),
      ),
    );
  }
}
