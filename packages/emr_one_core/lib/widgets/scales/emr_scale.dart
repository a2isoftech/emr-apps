import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/extensions/shortcut_activator.dart';
import 'package:emr_one_core/widgets/scales/actions/take_weight_action.dart';
import 'package:emr_one_core/widgets/scales/callbacks.dart';
import 'package:emr_one_core/widgets/scales/emr_scale_camera_placeholder.dart';
import 'package:emr_one_core/widgets/scales/emr_scale_controller.dart';
import 'package:emr_one_core/widgets/scales/intents/take_weight_intent.dart';
import 'package:emr_one_core/widgets/scales/labeled_box.dart';
import 'package:emr_one_core/widgets/scales/scale_key_binding.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class EmrScale extends StatefulWidget {
  const EmrScale({
    required this.controller,
    required this.onWeightTaken,
    this.keyBinding,
    this.uomsForManualWeight,
    this.cameraVideoFeedBuilder,
    this.emptyCamerasBuilder = _defaultEmptyCamerasBuilder,
    this.buttonTextBuilder,
    this.shouldInvokeShortcut,
    super.key,
  });

  final WeightTakenCallback onWeightTaken;
  final ScaleKeyBinding? keyBinding;
  final List<Uom>? uomsForManualWeight;
  final CameraVideoFeedBuilder? cameraVideoFeedBuilder;
  final EmptyCamerasBuilder emptyCamerasBuilder;
  final ButtonTextBuilder? buttonTextBuilder;
  final EmrScaleController controller;
  final bool Function()? shouldInvokeShortcut;

  @override
  State<EmrScale> createState() => _EmrScaleState();

  /// Default builder for the empty cameras widget.
  static Widget _defaultEmptyCamerasBuilder(BuildContext context) =>
      const Padding(
        padding: EdgeInsets.symmetric(vertical: Insets.gutter / 2),
        child: SizedBox.square(
          dimension: Insets.gutter,
          child: Icon(Icons.videocam_off_outlined),
        ),
      );
}

class _EmrScaleState extends State<EmrScale> {
  @override
  void initState() {
    super.initState();
    widget.controller.initialise();
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<EmrScaleTheme>()!;
    return UnifiedKeyboardListener(
      shouldPerformAction: widget.shouldInvokeShortcut ?? () => true,
      shortcuts: widget.keyBinding != null
          ? {
              widget.keyBinding!.binding.getKeys(): () =>
                  _invokeAction(context),
            }
          : null,
      child: LabeledBox(
        labelText: widget.keyBinding == null
            ? widget.controller.scale.name
            : '${widget.controller.scale.name} '
                '(${widget.keyBinding!.labelText})',
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildBackground(context, theme),
            SizedBox(height: theme.contentPadding),
            SizedBox(
              width: theme.cameraBoxWidth,
              child: ValueListenableBuilder(
                valueListenable: widget.controller.enabledNotifier,
                builder: (context, isEnabled, child) => Watch(
                  (context) => OutlinedButton(
                    style: ButtonStyle(
                      side: WidgetStateProperty.resolveWith(
                        (states) => BorderSide(
                          color: _getColor(states, theme),
                          width: theme.borderWidth,
                        ),
                      ),
                      backgroundColor: theme.buttonOutlined
                          ? null
                          : WidgetStateProperty.resolveWith(
                              (states) => _getColor(states, theme),
                            ),
                      foregroundColor: theme.buttonOutlined
                          ? WidgetStateProperty.resolveWith(
                              (states) => _getColor(states, theme),
                            )
                          : WidgetStateProperty.resolveWith(
                              (states) => Colors.white,
                            ),
                    ),
                    onPressed: isEnabled &&
                            widget.controller.isConnected.value &&
                            widget.controller.isSteady.value
                        ? () => _invokeAction(context)
                        : null,
                    child: Text(
                      widget.controller.manualWeightMode
                          ? context.l10n.takeManualWeight
                          : widget.controller.weightTaken.value == null
                              ? '---'
                              : _buildWeightString(context),
                      style: EmrOneConstants.kSmallTextStyle,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getColor(Set<WidgetState> states, EmrScaleTheme theme) {
    if (!widget.controller.enabled) return theme.disabledColor;
    if (states.contains(WidgetState.disabled)) {
      if (!widget.controller.isConnected.value ||
          (widget.controller.weightTaken.value?.value ?? 0) == 0) {
        return theme.disabledColor;
      }
      return theme.disconnectedColor;
    }

    return theme.connectedColor;
  }

  Widget _buildBackground(BuildContext context, EmrScaleTheme theme) {
    return widget.controller.scale.cameras.isEmpty
        ? widget.emptyCamerasBuilder(context)
        : Wrap(
            spacing: theme.contentPadding,
            children: widget.controller.scale.cameras
                .map(
                  (camera) => SizedBox(
                    width: theme.cameraBoxWidth,
                    height: theme.cameraBoxHeight,
                    child: widget.cameraVideoFeedBuilder
                            ?.call(widget.controller.scale, camera) ??
                        const EmrScaleCameraPlaceHolder(),
                  ),
                )
                .toList(),
          );
  }

  String _buildWeightString(BuildContext context) =>
      widget.buttonTextBuilder?.call(widget.controller.weightTaken.value) ??
      UomValue.fromValue(
        widget.controller.weightTaken.value?.value ?? 0,
        Uom.fromCode(widget.controller.weightTaken.value?.uomCode ?? 'mt'),
      ).toWeightString();

  void _invokeAction(BuildContext context) =>
      _buildAction().invoke(_getIntent(), context);

  TakeWeightAction _buildAction() => TakeWeightAction(
        preferredUom: widget.controller.preferredUom,
        onWeightTaken: widget.onWeightTaken,
        manualWeightMode: widget.controller.manualWeightMode,
        uomsForManualWeight: widget.uomsForManualWeight,
      );

  TakeWeightIntent _getIntent() =>
      TakeWeightIntent(scaleController: widget.controller);
}
