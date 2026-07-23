import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:flutter/material.dart';

class WeighbridgeScaleCards extends EmrTabBarVerticalViewCard {
  WeighbridgeScaleCards({
    required super.title,
    required ValueNotifier<List<WeighbridgeScaleData>> scaleCards,
    required void Function() addScale,
    required void Function(WeighbridgeScaleData) deleteScale,
    required void Function(WeighbridgeScaleData) addCamera,
    required void Function(WeighbridgeScaleCameraData) deleteCamera,
    super.key,
  }) : super(
          child: _WeighbridgeScaleCardsStateful(
            scaleCards: scaleCards,
            addScale: addScale,
            deleteScale: deleteScale,
            addCamera: addCamera,
            deleteCamera: deleteCamera,
            key: key,
          ),
        );
}

class _WeighbridgeScaleCardsStateful extends StatefulWidget {
  const _WeighbridgeScaleCardsStateful({
    required this.scaleCards,
    required this.addScale,
    required this.deleteScale,
    required this.addCamera,
    required this.deleteCamera,
    super.key,
  });
  final ValueNotifier<List<WeighbridgeScaleData>> scaleCards;
  final void Function() addScale;
  final void Function(WeighbridgeScaleData) deleteScale;
  final void Function(WeighbridgeScaleData) addCamera;
  final void Function(WeighbridgeScaleCameraData) deleteCamera;

  @override
  State<_WeighbridgeScaleCardsStateful> createState() =>
      _WeighbridgeScaleCardsState();
}

class _WeighbridgeScaleCardsState extends State<_WeighbridgeScaleCardsStateful>
    with TickerProviderStateMixin {
  late TabController _tabController;

  void _updateTabController(List<WeighbridgeScaleData> scales) {
    _tabController = TabController(length: scales.length + 1, vsync: this);
  }

  void _onCameraChange() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _updateTabController(widget.scaleCards.value);
    widget.scaleCards.addListener(() {
      setState(() {
        _updateTabController(widget.scaleCards.value);
        _tabController.animateTo(widget.scaleCards.value.length - 1);
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    if (_tabController.index < widget.scaleCards.value.length) {
      widget.scaleCards.value[_tabController.index].cameras
          .removeListener(_onCameraChange);
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<WeighbridgeScaleData>>(
      valueListenable: widget.scaleCards,
      builder: (context, scales, _) {
        if (_tabController.index < scales.length) {
          scales[_tabController.index].cameras.removeListener(_onCameraChange);
          scales[_tabController.index].cameras.addListener(_onCameraChange);
        }

        final tabHeight = scales.isNotEmpty ? 830.0 : 370.0;

        return Column(
          children: [
            TabBar(
              onTap: (value) {
                if (_tabController.length > 1 &&
                    value == _tabController.length - 1) {
                  _tabController.animateTo(_tabController.previousIndex);
                }
              },
              controller: _tabController,
              isScrollable: true,
              tabs: [
                for (var i = 0; i < scales.length; i++)
                  ValueListenableBuilder<String>(
                    valueListenable: scales[i].name,
                    builder: (context, name, _) {
                      return Tab(
                        text: name.isEmpty
                            ? '${context.l10n.scale} ${i + 1}'
                            : name,
                      );
                    },
                  ),
                OutlinedButton.icon(
                  onPressed: widget.addScale,
                  label: Text(context.l10n.addAScale),
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(
              height: tabHeight,
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  for (final scaleCard in scales)
                    SingleChildScrollView(
                      padding: const EdgeInsets.all(Insets.gutter),
                      child: IntrinsicHeight(
                        child: WeighbridgeScaleCard(
                          context: context,
                          title: scaleCard.name.value,
                          model: scaleCard,
                          deleteScale: widget.deleteScale,
                          addCamera: widget.addCamera,
                          deleteCamera: widget.deleteCamera,
                        ),
                      ),
                    ),
                  const SizedBox.shrink(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
