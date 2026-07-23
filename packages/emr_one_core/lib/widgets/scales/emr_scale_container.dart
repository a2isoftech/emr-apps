import 'package:collection/collection.dart';
import 'package:emr_one_core/widgets/scales/callbacks.dart';
import 'package:emr_one_core/widgets/scales/emr_scale.dart';
import 'package:emr_one_core/widgets/scales/emr_scale_container_controller.dart';
import 'package:emr_one_core/widgets/scales/emr_scale_controller.dart';
import 'package:flutter/material.dart';

class EmrScaleContainer extends StatefulWidget {
  const EmrScaleContainer({
    required this.controller,
    required this.onWeightTaken,
    this.buttonTextBuilder,
    this.cameraVideoFeedBuilder,
    this.keyBindingBuilder,
    this.shouldInvokeShortcut,
    super.key,
  });

  final EmrScaleContainerController controller;
  final WeightTakenCallback onWeightTaken;
  final ButtonTextBuilder? buttonTextBuilder;
  final CameraVideoFeedBuilder? cameraVideoFeedBuilder;
  final KeyBindingBuilder? keyBindingBuilder;
  final bool Function()? shouldInvokeShortcut;

  @override
  State<EmrScaleContainer> createState() => _EmrScaleContainerState();
}

class _EmrScaleContainerState extends State<EmrScaleContainer> {
  final List<EmrScaleController> controllers = [];

  @override
  void initState() {
    super.initState();
    widget.controller.enabledNotifier.addListener(enabledUpdated);
  }

  @override
  void dispose() {
    for (final controller in controllers) {
      controller.dispose();
    }
    controllers.clear();

    widget.controller.enabledNotifier.removeListener(enabledUpdated);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      key: UniqueKey(),
      children: widget.controller.scales.mapIndexed(
        (i, scale) {
          final ctrl = EmrScaleController(
            scale: scale,
            manualWeightMode: widget.controller.enableManualWeight,
            preferredUom: widget.controller.preferredUom,
            enabled: widget.controller.enabled,
          );

          controllers.add(ctrl);

          return EmrScale(
            key: UniqueKey(),
            controller: ctrl,
            uomsForManualWeight: widget.controller.uomsForManualWeight,
            keyBinding: widget.keyBindingBuilder?.call(i, scale),
            onWeightTaken: widget.onWeightTaken,
            buttonTextBuilder: widget.buttonTextBuilder,
            cameraVideoFeedBuilder: widget.cameraVideoFeedBuilder,
            shouldInvokeShortcut: widget.shouldInvokeShortcut,
          );
        },
      ).toList(),
    );
  }

  void enabledUpdated() {
    for (final controller in controllers) {
      controller.enabled = widget.controller.enabled;
    }
  }
}
