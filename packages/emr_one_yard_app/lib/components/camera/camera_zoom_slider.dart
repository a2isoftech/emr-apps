import 'dart:io';

import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class CameraZoomSlider extends StatelessWidget {
  const CameraZoomSlider({
    required this.sensorConfig, super.key,
  });

  final SensorConfig sensorConfig;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(bottom: Insets.gutter * 2),
      child: StreamBuilder<double>(
        stream: sensorConfig.zoom$,
        builder: (context, snapshot) {
          return Container(
            height: 50,
            margin: const EdgeInsets.all(Insets.gutter / 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: Colors.grey[350],
                    activeTrackColor: Colors.white,
                    thumbColor: Colors.white,
                    overlayColor: Colors.grey[350],
                  ),
                  child: Slider(
                    onChanged: (value) {
                      if (Platform.isIOS) {
                        sensorConfig.setZoom(value / 2);
                      } else {
                        sensorConfig.setZoom(value);
                      }
                    },
                    value: Platform.isIOS
                        ? sensorConfig.zoom / 2
                        : sensorConfig.zoom,
                    max: Platform.isIOS ? 0.5 : 1.0,
                  ),
                ),
                AwesomeOrientedWidget(
                  child: Center(
                    child: Text(
                      '${((Platform.isIOS
                          ? sensorConfig.zoom / 2
                          : sensorConfig.zoom) * 10).toStringAsFixed(1)} x',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
