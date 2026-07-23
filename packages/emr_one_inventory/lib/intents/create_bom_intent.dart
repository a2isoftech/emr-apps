import 'package:emr_one_core/widgets/layouts/query_layout/emr_action.dart';
import 'package:flutter/material.dart';

class CreateBomIntent extends Intent {
  const CreateBomIntent({required this.context});

  final BuildContext context;
}

class CreateBomAction extends EmrAction<CreateBomIntent> {
  CreateBomAction({
    required super.createIntent,
    required super.label,
    required this.onCreate,
    super.icon = Icons.add_box_rounded,
    super.controlType = EmrActionControlType.button,
    super.isPrimary = true,
  });

  void Function() onCreate;

  @override
  Object? invoke(CreateBomIntent intent, [BuildContext? context]) {
    onCreate();
    return null;
  }
}
