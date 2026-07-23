import 'package:emr_one_eam/base/base.dart';
import 'package:flutter/material.dart';

abstract class BaseController<T extends BaseService> extends ChangeNotifier {
  BaseController({required this.service});

  final T service;
  void reload() {
    notifyListeners();
  }
}
