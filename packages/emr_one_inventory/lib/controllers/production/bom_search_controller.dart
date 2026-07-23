import 'package:emr_core_api/graphql/graphql.dart' show Input$CloneBomInput;
import 'package:emr_one_inventory/services/production/bom_service.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class BomSearchController {
  BomSearchController({required this.bomService});

  final BomService bomService;
  final showLoader = signal(false);
  final ValueNotifier<String> bomName = ValueNotifier('');
  final formKey = GlobalKey<FormState>();

  Future<(bool success, String errorMessage)> cloneBom({
    required String id,
    required String title,
  }) async {
    final result = await bomService.cloneBom(
      Input$CloneBomInput(id: id, title: title),
    );

    return (result.success, result.message);
  }
}
