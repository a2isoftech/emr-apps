import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Unified tooltip widget for polyline hover.
/// Supports optional extra content (job number, asset info, etc.)
class PolylineHoverTooltipWidget extends StatelessWidget {
  const PolylineHoverTooltipWidget({
    required this.timestamp,
    this.extraLabel,
    this.extraValue,
    super.key,
  });

  /// Factory for basic timestamp-only tooltip
  factory PolylineHoverTooltipWidget.timestampOnly({
    required DateTime timestamp,
    Key? key,
  }) {
    return PolylineHoverTooltipWidget(
      timestamp: timestamp,
      key: key,
    );
  }

  /// Factory for truck tracking tooltip with job number
  factory PolylineHoverTooltipWidget.withJobNumber({
    required DateTime timestamp,
    required String jobPrefix,
    int? jobNumber,
    Key? key,
  }) {
    return PolylineHoverTooltipWidget(
      timestamp: timestamp,
      extraLabel: jobNumber != null ? jobPrefix : null,
      extraValue: jobNumber?.toString(),
      key: key,
    );
  }

  final DateTime timestamp;

  /// Optional label for extra info (e.g., "Job #")
  final String? extraLabel;

  /// Optional value for extra info (e.g., "12345")
  final String? extraValue;

  @override
  Widget build(BuildContext context) {
    final formattedTime = DateFormat(StringConstants.ymdTimeFormat)
        .format(timestamp.toLocal());

    return Container(
      padding: 
        const EdgeInsets
                .symmetric(horizontal: Insets.gutter, 
                          vertical: Insets.gutter/2),
      decoration: BoxDecoration(
        color: TransportAppColors.tooltipBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [
          BoxShadow(
            color: TransportAppColors.polylineTooltipShadowColor,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (extraLabel != null && extraValue != null)
            Text(
              '$extraLabel$extraValue',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: TransportAppColors.whiteTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          Text(
            formattedTime,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: TransportAppColors.whiteTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
