import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:json_annotation/json_annotation.dart';

part 'workspace_layout.g.dart';

enum LayoutType {
  grid,
  single,
  wrap,
}

@JsonSerializable()
class WorkspaceLayout {
  WorkspaceLayout({
    this.layoutType = LayoutType.grid,
    this.title = 'Blank',
  });

  factory WorkspaceLayout.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceLayoutFromJson(json);

  LayoutType layoutType;
  String title;

  @JsonKey(includeFromJson: false, includeToJson: false)
  List<WorkspaceElementBase> elements = [];

  Map<String, dynamic> toJson() => _$WorkspaceLayoutToJson(this);
}
