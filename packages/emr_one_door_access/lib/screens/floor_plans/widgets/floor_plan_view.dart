import 'dart:typed_data';

import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class FloorPlanView extends StatefulWidget {
  const FloorPlanView({
    required this.source,
    required this.isSvg,
    required this.isAsset,
    required this.hotspots,
    required this.controller,
    this.onHotspotTap,
    this.imageBytes,
    super.key,
  });

  final String source;
  final Uint8List? imageBytes;
  final bool isSvg;
  final bool isAsset;
  final List<Hotspot> hotspots;
  final FloorPlanController controller;
  final void Function(Hotspot)? onHotspotTap;

  @override
  State<FloorPlanView> createState() => _FloorPlanViewState();
}

class _FloorPlanViewState extends State<FloorPlanView> {
  late final RealTimeSnapshotController _realTimeSnapshotController;

  @override
  void initState() {
    super.initState();
    _realTimeSnapshotController = Provider.of<RealTimeSnapshotController>(
      context,
      listen: false,
    );
    _realTimeSnapshotController.startRealtime(widget.hotspots);
  }

  @override
  void didUpdateWidget(covariant FloorPlanView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.hotspots, widget.hotspots)) {
      _realTimeSnapshotController.startRealtime(widget.hotspots);
    }
  }

  @override
  void dispose() {
    _realTimeSnapshotController.stopRealtime();
    super.dispose();
  }

  ///Handles all combinations (asset/network + svg/image)
  Widget _buildImage() {
    if (!widget.isAsset && widget.source.isEmpty && widget.imageBytes == null) {
      return const Center(child: Text('No image'));
    }
    if (widget.isSvg) {
      return widget.isAsset
          ? SvgPicture.asset(widget.source)
          : SvgPicture.network(widget.source);
    } else {
      return widget.isAsset
          ? Image.asset(
              widget.source,
              package: 'emr_one_door_access',
              fit: BoxFit.contain,
            )
          : widget.imageBytes != null
          ? Image.memory(widget.imageBytes!, fit: BoxFit.contain)
          : Image.network(
              widget.source,
              fit: BoxFit.contain,
              errorBuilder: (_, __, st) {
                return const Center(child: Icon(Icons.error));
              },
            );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _realTimeSnapshotController,
      child: Consumer<RealTimeSnapshotController>(
        builder: (context, realTimeSnapshotController, child) {
          return InteractiveViewer(
            minScale: 0.5,
            maxScale: 4,
            child: LayoutBuilder(
              builder: (context, constraints) {
                final width = constraints.maxWidth;
                final height = constraints.maxHeight;
                const hotspotSize = 50.0;
                const imageSize = 250.0;

                return Stack(
                  children: [
                    ///Floor plan
                    Positioned.fill(child: _buildImage()),

                    ///Hotspots
                    ...widget.hotspots.map((h) {
                      return Positioned(
                        left: (h.x * width) - (hotspotSize / 2),
                        top: (h.y * height) - (hotspotSize / 2),
                        child: SizedBox(
                          width: hotspotSize,
                          height: hotspotSize,
                          child: AnimatedHotspot(
                            isInEditMode: widget.controller.isInEditMode,
                            color: h.color,
                            label: h.orderIndex.toString(),
                            onTap: () {
                              widget.onHotspotTap?.call(h);
                            },
                          ),
                        ),
                      );
                    }),

                    if (realTimeSnapshotController.snapshots.isNotEmpty) ...[
                      ...realTimeSnapshotController.snapshots.map((snapshot) {
                        return Positioned(
                          left: (snapshot.hotspotX * width) - (hotspotSize / 2),
                          top:
                              (snapshot.hotspotY * height + 50) -
                              (hotspotSize / 2),
                          child: SizedBox(
                            width: imageSize,
                            height: imageSize,
                            child: snapshot.imageUrl.isEmpty
                                ? const Text('No Image')
                                : FutureBuilder(
                                    builder:
                                        (
                                          BuildContext ctx,
                                          AsyncSnapshot<Uint8List?> snapshot,
                                        ) {
                                          if (ConnectionState.done ==
                                              snapshot.connectionState) {
                                            if (snapshot.data != null) {
                                              return Builder(
                                                builder: (contextBuilder) {
                                                  return Image.memory(
                                                    snapshot.data!,
                                                  );
                                                },
                                              );
                                            } else if (snapshot.data == null) {
                                              return const Text('Image N/A');
                                            }
                                          }
                                          return processingIndicator();
                                        },
                                    future: realTimeSnapshotController.getImage(
                                      snapshot.imageUrl,
                                    ),
                                  ),
                          ),
                        );
                      }),
                    ],
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
