import 'dart:async';

import 'package:emr_core_api/graphql/queries/yard_app/yard_app.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/card_list_view.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:emr_one_yard_app/controllers/load_out_search_controller.dart';
import 'package:emr_one_yard_app/models/enums.dart';
import 'package:emr_one_yard_app/models/model.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class LoadOutTab extends StatefulWidget {
  const LoadOutTab({
    required LoadOutSearchController loadOutController,
    required LoadOutMode loadOutMode,
    super.key,
  })  : _loadOutController = loadOutController,
        _loadOutMode = loadOutMode;

  final LoadOutMode _loadOutMode;
  final LoadOutSearchController _loadOutController;

  @override
  State<StatefulWidget> createState() {
    return _LoadOutTabState();
  }
}

class _LoadOutTabState extends State<LoadOutTab> {
  late Timer _timer;
  final Signal<int> _pageCount = signal(1);

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  final _loadOuts =
      signal<AsyncState<List<Query$SearchLoadOuts$loadOuts$nodes>>>(
    AsyncState.loading(),
  );

  @override
  void initState() {
    unawaited(_loadLoadOuts());

    _timer = Timer.periodic(
      const Duration(seconds: 30),
      (timer) async => await _refreshIndicatorKey.currentState?.show(),
    );

    effect(() async {
      await _loadLoadOuts();
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Watch(
      (builder) => RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: _loadLoadOuts,
        child: Stack(
          children: [
            CardListView<Query$SearchLoadOuts$loadOuts$nodes>(
              items: _loadOuts,
              pageCount: _pageCount,
              onSelect: (item) {
                if (item != null) {
                  context.pushNamed(
                    YardAppNamedRoutes.yardAppLoadOutDetails,
                    queryParams: {'id': item.id},
                  );
                }
              },
            ),
            Positioned(
              right: Insets.gutter,
              bottom: Insets.gutter,
              child: FloatingActionButton(
                onPressed: () => context.pushNamed(
                  YardAppNamedRoutes.yardAppLoadOutDetails,
                ),
                child: const Icon(
                  Icons.add,
                  size: LayoutConstants.iconSizeSmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _loadLoadOuts() async {
    final data = await widget._loadOutController.getLoadOuts(
      widget._loadOutMode,
      pageCount: _pageCount.value,
    );

    _loadOuts.value = AsyncData(data);
  }
}
