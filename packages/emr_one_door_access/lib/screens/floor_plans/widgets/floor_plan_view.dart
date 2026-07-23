import 'dart:typed_data';

import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class FloorPlanView extends StatelessWidget {
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

  ///Handles all combinations (asset/network + svg/image)
  Widget _buildImage() {
    if (!isAsset && source.isEmpty && imageBytes == null) {
      return const Center(child: Text('No image'));
    }
    if (isSvg) {
      return isAsset ? SvgPicture.asset(source) : SvgPicture.network(source);
    } else {
      return isAsset
          ? Image.asset(
              source,
              package: 'emr_one_door_access',
              fit: BoxFit.contain,
            )
          : imageBytes != null
          ? Image.memory(imageBytes!, fit: BoxFit.contain)
          : Image.network(
              source,
              fit: BoxFit.contain,
              errorBuilder: (_, __, st) {
                return const Center(child: Icon(Icons.error));
              },
            );
    }
  }

  @override
  Widget build(BuildContext context) {
    final realTimeSnapshotController = Provider.of<RealTimeSnapshotController>(
      context,
      listen: false,
    );
    realTimeSnapshotController.startRealtime(hotspots);
    return ChangeNotifierProvider.value(
      value: realTimeSnapshotController,
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
                    ...hotspots.map((h) {
                      return Positioned(
                        left: (h.x * width) - (hotspotSize / 2),
                        top: (h.y * height) - (hotspotSize / 2),
                        child: SizedBox(
                          width: hotspotSize,
                          height: hotspotSize,
                          child: AnimatedHotspot(
                            isInEditMode: controller.isInEditMode,
                            color: h.color,
                            label: h.orderIndex.toString(),
                            onTap: () {
                              onHotspotTap?.call(h);
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
