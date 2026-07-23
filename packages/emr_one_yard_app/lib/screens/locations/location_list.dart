import 'dart:async';

import 'package:emr_core_api/graphql/queries/yard_app/yard_app.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/card_list_view.dart';
import 'package:emr_one_yard_app/components/locations/location_card.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:emr_one_yard_app/controllers/location_controller.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class LocationList extends StatefulWidget {
  const LocationList({required this.locationController, super.key});

  final LocationController locationController;

  @override
  State<StatefulWidget> createState() {
    return _LocationListState();
  }
}

class _LocationListState extends State<LocationList> {
  Timer? _debounce;
  final _searchQuery = ValueNotifier('');
  final Signal<int> _pageCount = signal(1);
  final _locations =
      signal<AsyncState<List<Query$Locations$inventoryLocations$nodes>>>(
        AsyncState.loading(),
      );
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();
  @override
  void initState() {
    super.initState();
    unawaited(_getLocations());
    _searchQuery.addListener(_getLocations);
    effect(_getLocations);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _searchQuery.removeListener(_getLocations);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: Insets.gutter,
            right: Insets.gutter,
            top: Insets.gutter / 2,
          ),
          child: EmrTextFormField(
            hintText: context.l10n.search,
            binding: _searchQuery,
          ),
        ),
        Watch(
          (builder) => Expanded(
            child: RefreshIndicator(
              key: _refreshIndicatorKey,
              onRefresh: _getLocations,
              child: CardListView<Query$Locations$inventoryLocations$nodes>(
                items: _locations,
                pageCount: _pageCount,
                onSelect: (location) {
                  if (location != null) {
                    context.pushNamed(
                      YardAppNamedRoutes.yardAppLocationDetails,
                      params: {'id': location.id},
                    );
                  }
                },
                customCardBuilder: (item) => LocationCard(
                  yardCode: widget
                      .locationController
                      .userInfoService
                      .userInfo
                      .defaultYard,
                  location: item,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _getLocations() async {
    if (_debounce?.isActive ?? false) {
      _debounce?.cancel();
    }
    _debounce = Timer(const Duration(milliseconds: 500), () async {
      _locations.value = await widget.locationController.searchLocations(
        _searchQuery.value,
        _pageCount.value,
      );
    });
  }
}
