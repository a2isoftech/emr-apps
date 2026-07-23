import 'package:emr_one_eam/base/base_controller.dart';
import 'package:emr_one_eam/help/services/help_file_service.dart';
import 'package:flutter/material.dart';

abstract class IHelpFileController extends BaseController<IHelpFileService> {
  IHelpFileController({required super.service});
  ValueNotifier<bool> get isAdminTab;
}

class HelpFileController extends IHelpFileController {
  HelpFileController({required super.service});

  final ValueNotifier<bool> _isAdminTab = ValueNotifier(true);
  @override
  ValueNotifier<bool> get isAdminTab => _isAdminTab;
}
