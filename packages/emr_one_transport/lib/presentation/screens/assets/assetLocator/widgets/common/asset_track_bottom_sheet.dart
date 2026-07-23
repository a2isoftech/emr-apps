import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/data/controllers/tracking/base_asset_locator_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/datetime_range_bottom_sheet.dart';
import 'package:flutter/material.dart';

/// Bottom sheet for tracking an asset (container or trailer) over a date range.
///
/// This is a wrapper around [DateTimeRangeBottomSheet] that provides
/// asset-tracking-specific configuration.
class AssetTrackBottomSheet extends StatefulWidget {
  const AssetTrackBottomSheet({
    required this.assetNumber,
    required this.assetType,
    required this.onTrackClick,
    this.initialStartDate,
    this.initialEndDate,
    this.controller,
    super.key,
  });

  final String assetNumber;
  final AssetType assetType;
  final Future<void> Function({
    required DateTime startDateTime,
    required DateTime endDateTime,
  }) onTrackClick;
  final DateTime? initialStartDate;
  final DateTime? initialEndDate;
  final BaseAssetLocatorController? controller;

  @override
  State<AssetTrackBottomSheet> createState() => _AssetTrackBottomSheetState();
}

class _AssetTrackBottomSheetState extends State<AssetTrackBottomSheet> {
  late ValueNotifier<DateTime?> _startDate;
  late ValueNotifier<DateTime?> _endDate;
  ValueNotifier<String?>? _localErrorNotifier;

  ValueNotifier<String?> get _errorNotifier =>
      widget.controller?.trackingErrorNotifier ?? _localErrorNotifier!;

  @override
  void initState() {
    super.initState();
    _startDate = ValueNotifier<DateTime?>(
      widget.initialStartDate ??
          DateTime.now().subtract(const Duration(days: 1)),
    );
    _endDate = ValueNotifier<DateTime?>(
      widget.initialEndDate ?? DateTime.now(),
    );
    // Create local error notifier if controller doesn't provide one
    if (widget.controller?.trackingErrorNotifier == null) {
      _localErrorNotifier = ValueNotifier<String?>(null);
    }
  }

  @override
  void dispose() {
    _startDate.dispose();
    _endDate.dispose();
    _localErrorNotifier?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DateTimeRangeBottomSheet(
      title: '${context.l10n.track} ${widget.assetNumber}',
      startDate: _startDate,
      endDate: _endDate,
      buttonText: context.l10n.track,
      errorNotifier: _errorNotifier,
      loadingNotifier: widget.controller?.trackingLoadingNotifier,
      onApply: (from, to) async {
        await widget.onTrackClick(
          startDateTime: from,
          endDateTime: to,
        );
      },
    );
  }
}
