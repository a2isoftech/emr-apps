import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:flutter/material.dart';

class WeighbridgeScaleCameraCards extends EmrTabBarVerticalViewCard {
  WeighbridgeScaleCameraCards({
    required super.title,
    required WeighbridgeScaleData model,
    required void Function(WeighbridgeScaleData) addCamera,
    required void Function(WeighbridgeScaleCameraData) deleteCamera,
    super.key,
  }) : super(
          child: _WeighbridgeCameraCardStateful(
            model: model,
            addCamera: addCamera,
            deleteCamera: deleteCamera,
            key: key,
          ),
        );
}

class _WeighbridgeCameraCardStateful extends StatefulWidget {
  const _WeighbridgeCameraCardStateful({
    required this.model,
    required this.addCamera,
    required this.deleteCamera,
    super.key,
  });
  final WeighbridgeScaleData model;
  final void Function(WeighbridgeScaleData) addCamera;
  final void Function(WeighbridgeScaleCameraData) deleteCamera;

  @override
  State<_WeighbridgeCameraCardStateful> createState() =>
      _WeighbridgeCameraCardState();
}

class _WeighbridgeCameraCardState extends State<_WeighbridgeCameraCardStateful>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _updateTabController(widget.model.cameras.value);
    widget.model.cameras.addListener(() {
      setState(() {
        _updateTabController(widget.model.cameras.value);
        _tabController.animateTo(widget.model.cameras.value.length - 1);
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<WeighbridgeScaleCameraData>>(
      valueListenable: widget.model.cameras,
      builder: (context, cameras, _) {
        const height = 430.0;

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
                for (var i = 0; i < cameras.length; i++)
                  ValueListenableBuilder<String>(
                    valueListenable: cameras[i].name,
                    builder: (context, name, _) {
                      return Tab(
                        text: name.isEmpty
                            ? '${context.l10n.camera} ${i + 1}'
                            : name,
                      );
                    },
                  ),
                OutlinedButton.icon(
                  onPressed: () {
                    widget.addCamera(widget.model);
                    _updateTabController(widget.model.cameras.value);
                    _tabController
                        .animateTo(widget.model.cameras.value.length - 1);
                  },
                  label: Text(context.l10n.addACamera),
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(
              height: height,
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  for (final camera in cameras)
                    SingleChildScrollView(
                      padding: const EdgeInsets.all(Insets.gutter),
                      child: IntrinsicHeight(
                        child: WeighbridgeScaleCameraCard(
                          title: camera.name.value,
                          context: context,
                          model: camera,
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

  void _updateTabController(List<WeighbridgeScaleCameraData> cameras) {
    _tabController = TabController(length: cameras.length + 1, vsync: this);
  }

  void deleteCameras(WeighbridgeScaleCameraData camera) {
    widget.deleteCamera(camera);
    _updateTabController(widget.model.cameras.value);
  }
}
