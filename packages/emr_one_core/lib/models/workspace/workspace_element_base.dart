import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';
import 'package:flutter/widgets.dart';

/// Represents a base workspace element which can participate in a workspace.
abstract class WorkspaceElementBase<
    TElement extends Widget,
    TEditor extends Widget,
    TProperties extends Object,
    TController extends WorkspaceElementController> {
  WorkspaceElementBase({
    required this.type,
    required this.getController,
    required this.position,
    required this.size,
    required this.kind,
    required this.elementProperties,
    required this.customProperties,
  });

  TController? _controller;
  TController get controller {
    _controller ??= getController(this);
    return _controller!;
  }

  Size size;
  Offset position;
  final String kind;
  final String type;
  final WorkspaceElementProperties elementProperties;
  final TProperties customProperties;

  final TController Function(WorkspaceElementBase element) getController;

  static Size sizeFromArray(List<dynamic> arr) {
    return Size(
      double.parse(arr[0].toString()),
      double.parse(arr[1].toString()),
    );
  }

  static List<int> sizeToArray(Size size) {
    return [size.width.toInt(), size.height.toInt()];
  }

  static Offset offsetFromArray(List<dynamic> arr) {
    return Offset(
      double.parse(arr[0].toString()),
      double.parse(arr[1].toString()),
    );
  }

  static List<int> offsetToArray(Offset size) {
    return [size.dx.toInt(), size.dy.toInt()];
  }

  TElement elementBuilder(
    BuildContext context,
    WorkspaceController controller,
    WorkspaceElementBase element, {
    bool isStatic = false,
  });

  TEditor editElement(
    BuildContext context,
    WorkspaceController controller,
    WorkspaceElementBase element,
  );

  String getKind() => kind;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'position': WorkspaceElementBase.offsetToArray(position),
      'size': WorkspaceElementBase.sizeToArray(size),
      'kind': getKind(),
      'properties': propertiesToJson(),
    };
  }

  WorkspaceElementProperties propertiesFromJson(Map<String, dynamic> json) =>
      WorkspaceElementProperties.fromJson(
        json['properties'] as Map<String, dynamic>,
      );

  Map<String, dynamic> propertiesToJson() => elementProperties.toJson();
}
