import 'package:emr_one_core/models/user_dashboards/workspace_library_item.dart';
import 'package:flutter/material.dart';

class WorkspaceLibraryEntry {
  WorkspaceLibraryEntry(
    this.elementType,
    this.elementKind,
    this.getIcon,
    this.getDisplayName,
    this.defintion,
    this.getTitle,
    this.getSize,
    this.getDescription, {
    this.canDelete = true,
    this.canEdit = true,
    this.isHidden = false,
  });
  final String elementType;
  final String elementKind;
  final IconData Function() getIcon;
  final String Function() getTitle;
  final Function getDisplayName;
  final WorkspaceLibraryItem defintion;
  final Size Function() getSize;
  final String? Function()? getDescription;
  final bool canDelete;
  final bool canEdit;
  final bool isHidden;
}
