import 'package:emr_one_can_scale/services/inventory_service.dart';
import 'package:flutter/material.dart';

class CanScaleScreenController {
  CanScaleScreenController({required this.inventoryService});

  final InventoryService inventoryService;

  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);

  Future<bool> createTicket() async {
    isLoading.value = true;

    try {
      await inventoryService.createCanScaleTicket();

      return true;
    } catch (ex) {
      return false;
    } finally {
      isLoading.value = false;
    }
  }
}
