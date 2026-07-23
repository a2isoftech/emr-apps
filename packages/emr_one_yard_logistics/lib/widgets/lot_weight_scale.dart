import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/models/scale_info.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/scale_view.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:signals/signals_flutter.dart';

class LotWeightScale extends StatefulWidget {
  const LotWeightScale({
    required this.scales,
    required this.service,
    super.key,
    this.defaultScaleAlias,
  });

  final List<ScaleInfo> scales;
  final String? defaultScaleAlias;
  final YardLogisticsService service;

  @override
  State<LotWeightScale> createState() => _LotWeightScaleState();
}

class _LotWeightScaleState extends State<LotWeightScale> {
  final Signal<String> comment = signal<String>('');
  final Signal<UomValue> uom = signal<UomValue>(
    UomValue()
      ..value = 0
      ..uom = Uom.mt,
  );
  late TextEditingController _controller;

  final FlutterSignal<ScaleInfo?> selectedScale = signal<ScaleInfo?>(null);
  final GlobalKey<PopupMenuButtonState<ScaleInfo>> _popUpKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController();
    _controller.addListener(() {
      comment.value = _controller.text;
    });

    // Attempt to set the default scale from shared preferences
    if (widget.defaultScaleAlias != null) {
      selectedScale.value = widget.scales.firstWhereOrNull(
        (element) => element.alias == widget.defaultScaleAlias,
      );
    } else {
      selectedScale.value = widget.scales.firstOrNull;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(2),
                child: TextButton(
                  child: Text(
                    'Selected Scale - '
                    '${selectedScale.value?.alias ?? '<None>'}',
                  ),
                  onPressed: () {
                    _popUpKey.currentState?.showButtonMenu();
                  },
                ),
              ),
              PopupMenuButton<ScaleInfo>(
                key: _popUpKey,
                initialValue: selectedScale.value,
                onSelected: (ScaleInfo item) async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('defaultScaleAlias', item.alias);

                  setState(() {
                    selectedScale.value = item;
                  });
                },
                itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<ScaleInfo>>[
                  ...widget.scales.map(
                    (e) => PopupMenuItem<ScaleInfo>(
                      value: e,
                      child: Text('${e.alias} (${e.name})'),
                    ),
                  ),
                ],
              ),
            ],
          ),
          ValueListenableBuilder(
            valueListenable: selectedScale,
            builder: (context, value, child) {
              if (value != null) {
                return FutureBuilder(
                  future: FirebaseLogin.getToken(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    }

                    if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    }

                    return Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: Insets.gutter),
                      child: Row(
                        children: [
                          Expanded(
                            child: ScaleView(
                              key: UniqueKey(),
                              service: widget.service,
                              scale: Scale(
                                name: value.alias,
                                assetCode: value.assetCode ?? '',
                                url: '${value.url}&token=${snapshot.data}',
                                scaleNumber: 1,
                                cameras: [],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }

              return const Text('No scale selected');
            },
          ),
        ],
      ),
    );
  }
}
