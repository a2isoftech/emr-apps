import 'dart:convert';
import 'dart:typed_data';

import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/widgets/user_dashboards/query_editing/controllers/controllers.dart';
import 'package:emr_one_core/src/widgets/user_dashboards/query_editing/direct_query_editor.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';
import 'package:emr_one_core/utilities/emr_dialog.dart';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/widgets.dart';

class WorkspaceController extends ChangeNotifier {
  WorkspaceController({
    required this.registry,
    this.showingPropertiesFlyout = false,
    this.showingComponentFlyout = false,
    this.isDragging = false,
    this.dragging = -1,
  });

  final WorkspaceRegistry registry;
  WorkspaceLayout layout = WorkspaceLayout();

  bool showingPropertiesFlyout;
  bool showingComponentFlyout;
  bool isDragging;
  int dragging;
  WorkspaceElementBase? propertiesFlyoutElement;
  double horizontalScrollOffset = 0;
  double verticalScrollOffset = 0;

  void editElementProperties(WorkspaceElementBase element) {
    element.controller.onActivatePropertiesFlyout();
    propertiesFlyoutElement = element;
    showingPropertiesFlyout = !showingPropertiesFlyout;
    showingComponentFlyout = false;
    notifyListeners();
  }

  void hidePropertiesFlyout({bool cancelChanges = false}) {
    if (cancelChanges) {
      propertiesFlyoutElement?.controller.onDiscardPropertyChanges();
    } else {
      propertiesFlyoutElement?.controller.onCommitPropertyChanges();
    }
    propertiesFlyoutElement = null;
    showingPropertiesFlyout = false;
    notifyListeners();
  }

  void hideComponentFlyout() {
    showingComponentFlyout = false;
    notifyListeners();
  }

  void showComponentFlyout() {
    showingComponentFlyout = true;
    notifyListeners();
  }

  void startDragging({int key = -1}) {
    isDragging = true;
    dragging = key;
    notifyListeners();
  }

  void stopDragging() {
    isDragging = false;
    dragging = -1;
    notifyListeners();
  }

  void reset() {
    layout.elements.clear();
    propertiesFlyoutElement = null;
    showingPropertiesFlyout = false;
    showingComponentFlyout = false;
    isDragging = false;
    dragging = -1;
    notifyListeners();
  }

  Future<void> loadFile() async {
    final file = await openFile(
      acceptedTypeGroups: [
        const XTypeGroup(
          extensions: ['json'],
          uniformTypeIdentifiers: ['public.json'],
        ),
      ],
    );

    if (file == null) {
      return;
    }

    final json = await file.readAsString();

    loadString(json);
  }

  void loadString(String json) {
    reset();

    final decodedJson = jsonDecode(json) as Map<String, dynamic>;

    _fromJson(decodedJson);
  }

  Future<void> saveFile() async {
    final suggestedFilename =
        'workspace_${DateTime.now().toIso8601String()}.json';
    final result = await getSaveLocation(
      suggestedName: suggestedFilename,
      acceptedTypeGroups: [
        const XTypeGroup(
          extensions: ['json'],
          uniformTypeIdentifiers: ['public.json'],
        ),
      ],
    );
    if (result == null) {
      // Operation was canceled by the user.
      return;
    }

    final encodedJson = _toJson();
    final jsonString = jsonEncode(encodedJson);

    final fileData = Uint8List.fromList(jsonString.codeUnits);
    const mimeType = 'application/json';
    final textFile =
        XFile.fromData(fileData, mimeType: mimeType, name: result.path);
    await textFile.saveTo(result.path);
  }

  void _fromJson(Map<String, dynamic> json) {
    layout = WorkspaceLayout.fromJson(json);

    final elements = json['elements'] as List<dynamic>;

    for (final elementJson in elements.whereType<Map<String, dynamic>>()) {
      final registration = registry.getLibraryEntry(
        elementJson['kind'] as String,
      );
      final type = registry.getElementType(
        elementJson['type'] as String,
      );
      final elementProperties = WorkspaceElementProperties.fromJson(
        elementJson,
      );
      layout.elements.add(
        type.create(
          type: elementJson['type'] as String,
          kind: elementJson['kind'] as String,
          libraryEntry: registration,
          offset: WorkspaceElementBase.offsetFromArray(
            elementJson['position'] as List<dynamic>,
          ),
          backgroundColour: elementProperties.backgroundColour.value,
          elementPropertiesJson:
              elementJson['properties'] as Map<String, dynamic>?,
          customPropertiesJson:
              elementJson['customProperties'] as Map<String, dynamic>?,
        ),
      );
    }

    notifyListeners();
  }

  Map<String, dynamic> _toJson() {
    final layoutJson = layout.toJson();

    final elementsJson = <Map<String, dynamic>>[];
    for (final element in layout.elements) {
      final elementJson = element.propertiesToJson();
      elementJson['customProperties'] =
          element.controller.customPropertiesToJson();
      elementJson['position'] =
          WorkspaceElementBase.offsetToArray(element.position);
      elementJson['size'] = WorkspaceElementBase.sizeToArray(element.size);
      elementJson['kind'] = element.getKind();
      elementJson['type'] = element.type;
      elementsJson.add(elementJson);
    }

    layoutJson['elements'] = elementsJson;

    return layoutJson;
  }

  Future<void> createQueryDefintion(BuildContext context) async {
    final controller = DirectQueryEditorController();

    controller.queryDefinition = DirectQueryDefinition(
      parameters: [],
    );

    final formKey = GlobalKey<FormState>();

    await EmrDialog.modal<bool>(
      context,
      titleText: 'Create Query Definition',
      builder: (context) => Form(
        key: formKey,
        child: DirectQueryEditor(
          controller: controller,
          directQueryService: registry.directQueryService,
        ),
      ),
      onAccept: () => _onCreateQueryDefinition(
        context,
        formKey,
        controller,
      ),
    );
  }

  // Handles the creation of a new query after validation.
  Future<void> _onCreateQueryDefinition(
    BuildContext context,
    GlobalKey<FormState> formKey,
    DirectQueryEditorController controller,
  ) async {
    final validationResult = formKey.currentState?.validate();
    if (validationResult == false) {
      return;
    }

    final theQuery =
        await registry.directQueryService.createDirectQueryDefinition(
      controller.queryDefinition!,
    );

    if (theQuery.id == null) {
      throw Exception(
        'Failed to create dynamic query',
      );
    }

    registry.registerDirectQueryDefinition(theQuery);

    if (context.mounted) {
      Navigator.of(context).pop(true);
    }
  }

  /// Launch a modal hosting the `DirectQueryEditor` to edit an existing query.
  Future<void> updateQueryDefintion(
    BuildContext context,
    DirectQueryDefinition directQueryDefinition,
  ) async {
    final controller = DirectQueryEditorController();

    controller.queryDefinition = directQueryDefinition;

    final formKey = GlobalKey<FormState>();

    await EmrDialog.modal<bool>(
      context,
      titleText: 'Edit Query Definition',
      builder: (context) => Form(
        key: formKey,
        child: DirectQueryEditor(
          controller: controller,
          directQueryService: registry.directQueryService,
        ),
      ),
      onAccept: () => _onUpdateQueryDefiniion(
        context,
        formKey,
        controller,
      ),
    );
  }

  /// Handles the completion of edit query.
  Future<void> _onUpdateQueryDefiniion(
    BuildContext context,
    GlobalKey<FormState> formKey,
    DirectQueryEditorController controller,
  ) async {
    final validationResult = formKey.currentState?.validate();
    if (validationResult == false) {
      return;
    }

    final theQuery =
        await registry.directQueryService.updateDirectQueryDefinition(
      controller.queryDefinition!,
    );

    if (theQuery.id == null) {
      throw Exception(
        'Failed to update dynamic query',
      );
    }

    if (context.mounted) {
      Navigator.of(context).pop(true);
    }
  }

  Future<void> deleteQueryDefinition(
    BuildContext context,
    String createKey,
  ) async {
    final entry = registry.getLibraryEntry(createKey);

    await EmrDialog.noYes(
      context,
      titleText: 'Delete Query Definition',
      contentText: 'Are you sure you want to delete this query definition?',
      onYes: () async {
        await registry.directQueryService
            .deleteDirectQueryDefinition(entry.elementKind);
        registry.libraryItems.remove(createKey);
        notifyListeners();
      },
      onNo: () => Navigator.of(context).pop(false),
    );
  }

  void deleteElement({
    required BuildContext context,
    required WorkspaceElementBase<Widget, Widget, Object,
            WorkspaceElementController>
        element,
  }) {
    EmrDialog.noYes(
      context,
      titleText: 'Delete Element',
      contentText: 'Are you sure you want to delete this element?',
      onYes: () {
        hidePropertiesFlyout(cancelChanges: true);
        layout.elements.remove(element);
        notifyListeners();
      },
    );
  }
}
