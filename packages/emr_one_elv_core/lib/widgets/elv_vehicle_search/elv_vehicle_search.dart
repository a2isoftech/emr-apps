import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/models.dart';
import 'package:flutter/material.dart';

class ElvVehicleSearch<T> extends StatefulWidget {
  const ElvVehicleSearch({
    required this.vehicles,
    required this.onTap,
    required this.onRefresh,
    this.selectedYardName,
    this.onSearchChanged,
    this.onSearchSubmitted,
    this.onSearchLoading = false,
    this.subtitle,
    this.actionWidget,
    super.key,
  });

  final List<ElvVehicleSearchModel<T>> vehicles;
  final void Function(T)? onTap;
  final Future<void> Function() onRefresh;
  final String? selectedYardName;
  final void Function(String)? onSearchChanged;
  final void Function(String)? onSearchSubmitted;
  final bool onSearchLoading;
  final Widget? subtitle;
  final Widget? actionWidget;

  @override
  State<ElvVehicleSearch<T>> createState() => _ElvVehicleSearchState();
}

class _ElvVehicleSearchState<T> extends State<ElvVehicleSearch<T>> {
  late ScrollController scrollController;
  late final ValueNotifier<String?> textSearchNotifier;

  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    textSearchNotifier = ValueNotifier(null);
    textSearchNotifier.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    _debounce?.cancel();

    _debounce = Timer(const Duration(milliseconds: 300), () {
      if (!mounted) return;
      widget.onSearchChanged?.call(textSearchNotifier.value ?? '');
      widget.onSearchSubmitted?.call(textSearchNotifier.value ?? '');
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    textSearchNotifier.removeListener(_onSearchChanged);
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: context.l10n.vehicles),
                        if (widget.selectedYardName != null) ...[
                          const TextSpan(text: ' @ '),
                          TextSpan(text: widget.selectedYardName),
                        ],
                      ],
                    ),
                    style: EmrOneConstants.kOpenSans18TextStyle,
                  ),
                  if (widget.subtitle != null) ...{widget.subtitle!},
                  const SizedBox(height: Insets.gutter / 2),
                ],
              ),
            ),
            if (widget.actionWidget != null) ...{widget.actionWidget!},
          ],
        ),
        EmrTextFormField(
          binding: textSearchNotifier,
          hintText: context.l10n.search,

          suffix: widget.onSearchLoading
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 3),
                )
              : const Icon(Icons.search),
        ),
        Expanded(
          child: RefreshIndicator(
            onRefresh: widget.onRefresh,
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              controller: scrollController,
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    widget.vehicles
                        .map(
                          (e) => EmrCard(
                            onSelected: ({bool selected = false}) {
                              widget.onTap?.call(e.data);
                            },
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${e.year} '
                                        '${e.make} '
                                        '${e.model}',
                                        style: EmrOneConstants
                                            .kOpenSans16BoldTextStyle,
                                      ),
                                      const SizedBox(height: Insets.gutter / 6),
                                      Text(
                                        e.vehicleIdentifier,
                                        style: EmrOneConstants
                                            .kOpenSans16TextStyle,
                                      ),
                                      const SizedBox(height: Insets.gutter / 2),
                                    ],
                                  ),
                                ),
                                if (e.inProgress) ...{
                                  EmrStatusChip(text: context.l10n.inProgress),
                                },
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
