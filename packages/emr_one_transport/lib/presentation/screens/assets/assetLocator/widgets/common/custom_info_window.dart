import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/data/controllers/tracking/base_asset_locator_controller.dart';
import 'package:emr_one_transport/data/models/tracking/asset_location.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/map_event_blocker.dart';
import 'package:flutter/material.dart';

class CustomInfoWindow<T extends BaseAssetLocatorController>
    extends StatelessWidget {
  const CustomInfoWindow({
    required this.asset,
    required this.onClose,
    required this.onTrack,
    required this.controller,
    super.key,
  });

  final AssetLocation asset;
  final VoidCallback onClose;
  final VoidCallback onTrack;
  final T controller;

  @override
  Widget build(BuildContext context) {
    return MapEventBlockerOnHover(
      registry: controller.eventBlockerRegistry,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Container(
          width: 220,
          decoration: const BoxDecoration(
            color: TransportAppColors.infoWindowBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            boxShadow: [
              BoxShadow(
                color: TransportAppColors.infoWindowShadowColor,
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with title and close button
              Padding(
                padding: const EdgeInsets.all(Insets.gutter/2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        asset.assetNumber,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: TransportAppColors.infoWindowTextColor,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: onClose,
                        child: Icon(
                          Icons.close,
                          size: 20,
                          color: TransportAppColors.infoWindowCloseIconColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(height: 1, thickness: 1),
              // Body with type and yard
              Padding(
                padding: const EdgeInsets.all(Insets.gutter/2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (asset.assetTypeName?.isNotEmpty ?? false)
                      Padding(
                        padding: const EdgeInsets.only(bottom: Insets.gutter/2),
                        child: Text(
                          asset.assetTypeName!,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                color:
                                    TransportAppColors.infoWindowTextColor,
                              ),
                        ),
                      ),
                    if (asset.yardCode?.isNotEmpty ?? false)
                      Text(
                        '${context.l10n.yard}: ${asset.yardCode!}',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(
                              color: TransportAppColors.infoWindowTextColor,
                            ),
                      ),
                    if (asset.accountCode?.isNotEmpty ?? false)
                      Text(
                        '${context.l10n.accountCode}: ${asset.accountCode!}',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(
                              color: TransportAppColors.infoWindowTextColor,
                            ),
                      ),
                    if (asset.locationCode?.isNotEmpty ?? false)
                      Text(
                        '${context.l10n.locationCode}: ${asset.locationCode!}',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(
                              color: TransportAppColors.infoWindowTextColor,
                            ),
                      ),
                  ],
                ),
              ),
              // Track button
              Padding(
                padding: const EdgeInsets.all(Insets.gutter/2),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: onTrack,
                    icon: const Icon(Icons.route, size: 16),
                    label: Text(context.l10n.track),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: TransportAppColors.yardStatBgColor,
                      padding: 
                        const EdgeInsets.symmetric(vertical: Insets.gutter/2),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
          height: 10,
          child: CustomPaint(
            painter: _ArrowPainter(),
          ),
        ),
      ],
      ),
    );
  }
}

class _ArrowPainter extends CustomPainter {
  const _ArrowPainter();

  @override
  void paint(Canvas canvas, Size size) {
    // Draw arrow fill (same as info window background)
    final paint = Paint()
      ..color = TransportAppColors.infoWindowBackgroundColor
      ..style = PaintingStyle.fill;

    final path = Path();
    // Arrow pointing down (tip 1px up to merge with window)
    path.moveTo(size.width / 2, size.height - 1); // tip 1px up
    path.lineTo(0, 0); // left base corner
    path.lineTo(size.width, 0); // right base corner
    path.close();

    canvas.drawPath(path, paint);

    // Draw shadow only on the sides and bottom (not the top edge)
    // This keeps the top edge clean to merge with info window
    final shadowPaint = Paint()
      ..color = TransportAppColors.infoWindowArrowShadowColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    final shadowPath = Path();
    shadowPath.moveTo(0, 0); // left base corner
    shadowPath.lineTo(size.width / 2, size.height - 1); // tip 1px up
    shadowPath.lineTo(size.width, 0); // right base corner

    canvas.drawPath(shadowPath, shadowPaint);
  }

  @override
  bool shouldRepaint(_ArrowPainter oldDelegate) => false;
}
