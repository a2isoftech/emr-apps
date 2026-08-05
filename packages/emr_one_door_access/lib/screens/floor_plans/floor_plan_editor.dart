import 'dart:async';

import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/screens/floor_plans/widgets/_alert_panel.dart';
import 'package:emr_one_door_access/screens/floor_plans/widgets/_assign_access_point_dialog.dart';
import 'package:emr_one_door_access/screens/floor_plans/widgets/_hotspot_list.dart';
import 'package:emr_one_door_access/screens/floor_plans/widgets/_live_stream_dialog.dart';
import 'package:emr_one_door_access/screens/floor_plans/widgets/_unlock_access_point_dialog.dart';
import 'package:emr_one_door_access/widgets/base_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FloorPlanEditor extends StatefulWidget {
  const FloorPlanEditor({
    required this.controller,
    required this.appConfig,
    required this.floorPlan,
    required this.siteId,
    required this.formKey,
    required this.isInEditMode,
    this.pollingSeconds = 3000,
    super.key,
  });

  final FloorPlanController controller;
  final FloorPlan? floorPlan;
  final String siteId;
  final AppConfig appConfig;
  final GlobalKey<FormState> formKey;
  final bool isInEditMode;
  final int pollingSeconds;
  bool get pollForAlerts => floorPlan != null && !isInEditMode;

  String get title {
    if (floorPlan == null) return 'Add New Floor Plan';
    return isInEditMode ? 'Edit Floor Plan' : 'View Floor Plan';
  }

  @override
  State<FloorPlanEditor> createState() => _FloorPlanEditorState();
}

class _FloorPlanEditorState extends State<FloorPlanEditor> {
  late int _pollingSeconds;
  Timer? _timer;
  Future<FloorPlan?>? _initialLoad;
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    _pollingSeconds = widget.pollingSeconds;

    _initialLoad = _load();

    // only start polling for alerts when its in VIEW mode
    if (widget.pollForAlerts) {
      _startPolling();
    }
  }

  Future<FloorPlan?> _load() async {
    try {
      await widget.controller.loadAccessPoints(widget.siteId);
      if (widget.floorPlan != null) {
        await widget.controller.setFloorPlan(
          widget.floorPlan!,
          isInEditMode: widget.isInEditMode,
        );
      } else {
        widget.controller.reset(widget.siteId);
      }
    } catch (err) {
      debugPrint(err.toString());
    }
    return widget.floorPlan;
  }

  void _startPolling() {
    _timer?.cancel();
    _timer = Timer.periodic(
      Duration(seconds: _pollingSeconds),
      (_) => widget.controller.pollAccessEvents(widget.siteId, _pollingSeconds),
    );
  }

  void _updatePolling(int seconds) {
    if (seconds <= 0) return;

    _pollingSeconds = seconds;

    _startPolling(); // restart timer with new interval
  }

  @override
  void dispose() {
    _timer?.cancel();
    widget.controller.disposeTimers();
    super.dispose();
  }

  Future<void> _handleCancel() async {
    context.pop();
  }

  Future<void> _handleSave() async {
    if (widget.formKey.currentState?.validate() ?? true) {
      widget.formKey.currentState!.save();

      if ((widget.controller.name.value ?? '').isEmpty) {
        await EmrModal.showMessageBar(
          context,
          'Please enter a name for floor plan.',
          messageType: MessageBarTypes.error,
        );
        return;
      }

      setState(() => _isSaving = true);
      final (success, error) = await widget.controller.update();

      if (!mounted) return;
      setState(() => _isSaving = false);

      if (!success) {
        await EmrModal.showMessageBar(
          context,
          'Floor plan could not be saved: $error',
          messageType: MessageBarTypes.error,
        );
        return;
      }

      if (mounted) {
        context.pop(true);
      }
    } else {
      debugPrint('form is invalid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialLoad,
      builder: (BuildContext ctx, AsyncSnapshot<FloorPlan?> snapshot) {
        if (ConnectionState.done == snapshot.connectionState) {
          return ChangeNotifierProvider.value(
            value: widget.controller,
            child: Consumer<FloorPlanController>(
              builder: (context, controller, child) {
                return _EditorView(
                  controller: controller,
                  floorPlan: snapshot.data,
                  siteId: widget.siteId,
                  appConfig: widget.appConfig,
                  formKey: widget.formKey,
                  pollingSeconds: _pollingSeconds,
                  updatePolling: _updatePolling,
                  pollForAlerts: widget.pollForAlerts,
                  title: widget.title,
                  isInEditMode: widget.isInEditMode,
                  isSaving: _isSaving,
                  onSave: _handleSave,
                  onCancel: _handleCancel,
                );
              },
            ),
          );
        }
        return processingIndicator();
      },
    );
  }
}

class _EditorView extends StatelessWidget {
  const _EditorView({
    required this.controller,
    required this.floorPlan,
    required this.siteId,
    required this.appConfig,
    required this.formKey,
    required this.pollingSeconds,
    required this.updatePolling,
    required this.pollForAlerts,
    required this.title,
    required this.isInEditMode,
    required this.isSaving,
    required this.onSave,
    required this.onCancel,
  });

  final FloorPlanController controller;
  final String siteId;
  final FloorPlan? floorPlan;
  final AppConfig appConfig;
  final GlobalKey<FormState> formKey;
  final int pollingSeconds;
  final bool pollForAlerts;
  final void Function(int seconds) updatePolling;
  final String title;
  final bool isInEditMode;
  final bool isSaving;
  final Future<void> Function() onSave;
  final Future<void> Function() onCancel;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      signalRService: DoorAccessRealtime.instance.service,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Row(
              children: [
                Text(title, style: Theme.of(context).textTheme.headlineSmall),
              ],
            ),
          ),
          Expanded(
            child: controller.isLoading
                ? const Center(child: CircularProgressIndicator())
                : controller.imageUrl == null && controller.imageBytes == null
                ? Center(
                    child: Wrap(
                      children: [
                        const Text('Upload floor plan'),
                        IconButton(
                          icon: const Icon(Icons.upload),
                          onPressed: () => controller.pickImage(siteId),
                        ),
                      ],
                    ),
                  )
                : Row(
                    children: [
                      /// LEFT SIDE → NAME + HOTSPOT LIST
                      Container(
                        width: 320,
                        padding: const EdgeInsets.all(Insets.gutter / 2),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// NAME FIELD
                            EmrTextFormField(
                              labelText: 'Name',
                              binding: controller.name,
                              validator: Validators.required,
                            ),

                            const SizedBox(height: Insets.gutter),

                            /// HOTSPOT LIST
                            HotspotList(controller: controller),
                          ],
                        ),
                      ),

                      /// NEW ALERT PANEL
                      AlertPanel(
                        controller: controller,
                        pollForAlerts: pollForAlerts,
                        pollingSeconds: pollingSeconds,
                        updatePolling: updatePolling,
                      ),

                      Expanded(
                        child: Form(
                          key: formKey,
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return GestureDetector(
                                onTapDown: (details) {
                                  if (controller.isInEditMode) {
                                    final x =
                                        details.localPosition.dx /
                                        constraints.maxWidth;
                                    final y =
                                        details.localPosition.dy /
                                        constraints.maxHeight;

                                    controller.addHotspot(x, y);
                                  }
                                },
                                child: FloorPlanView(
                                  controller: controller,
                                  source: controller.imageUrl ?? '',
                                  imageBytes: controller.imageBytes,
                                  isSvg: controller.isSvg,
                                  isAsset: false,
                                  //constraints: constraints,
                                  hotspots: controller.hotspots,
                                  onHotspotTap: (h) {
                                    _handleHotspotTap(
                                      context,
                                      controller,
                                      h,
                                      constraints,
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey.shade300)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: isSaving ? null : onCancel,
                    child: Text(
                      isInEditMode ? context.l10n.cancel : context.l10n.ok,
                    ),
                  ),
                  if (isInEditMode) ...[
                    const SizedBox(width: Insets.gutter),
                    FilledButton(
                      onPressed: isSaving ? null : onSave,
                      child: isSaving
                          ? const SizedBox(
                              height: 18,
                              width: 18,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : Text(context.l10n.save),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _handleHotspotTap(
    BuildContext context,
    FloorPlanController controller,
    Hotspot hotspot,
    BoxConstraints constraints,
  ) {
    if (controller.isInEditMode) {
      showDialog<void>(
        context: context,
        builder: (_) =>
            AssignAccessPointDialog(controller: controller, hotspot: hotspot),
      );
    } else {
      _showHotspotMenu(context, controller, hotspot, constraints);
    }
  }

  void _showHotspotMenu(
    BuildContext context,
    FloorPlanController controller,
    Hotspot hotspot,
    BoxConstraints constraints,
  ) {
    final hasCamera = controller.cameraFor(hotspot) != null;
    final items = <PopupMenuEntry<String>>[
      if (hotspot.status != HotspotStatus.restricted)
        const PopupMenuItem<String>(value: 'unlock', child: Text('Unlock')),
      if (hasCamera)
        const PopupMenuItem<String>(
          value: 'startLiveStream',
          child: Text('Start Live Stream'),
        ),
    ];

    if (items.isEmpty) return;

    // Calculate the screen position of the hotspot
    final hotspotScreenX = hotspot.x * constraints.maxWidth;
    final hotspotScreenY = hotspot.y * constraints.maxHeight;

    // Find the render object of the nearest Scaffold to get absolute position
    final renderBox = context.findRenderObject() as RenderBox?;
    if (renderBox == null) return;

    final offset = renderBox.localToGlobal(Offset.zero);
    final absoluteX = offset.dx + hotspotScreenX;
    final absoluteY = offset.dy + hotspotScreenY;

    // Get the overlay size for relative positioning
    final overlay = Overlay.of(context);
    final overlayRenderBox = overlay.context.findRenderObject() as RenderBox?;
    if (overlayRenderBox == null) return;

    final position = RelativeRect.fromLTRB(
      absoluteX,
      absoluteY,
      overlayRenderBox.size.width - absoluteX,
      overlayRenderBox.size.height - absoluteY,
    );

    showMenu<String>(context: context, position: position, items: items).then((
      value,
    ) {
      if (!context.mounted) return;
      if (value == 'unlock') {
        showDialog<void>(
          context: context,
          builder: (_) =>
              UnlockAccessPointDialog(controller: controller, hotspot: hotspot),
        );
      } else if (value == 'startLiveStream') {
        showDialog<void>(
          context: context,
          builder: (_) =>
              LiveStreamDialog(controller: controller, hotspot: hotspot),
        );
      }
    });
  }
}
