// ignore_for_file: avoid_dynamic_calls

import 'dart:ui';

import 'package:emr_one_securitymgmt/models/layout_item.dart';

class SmLayout {
  SmLayout(this.offsets, this.items);

  factory SmLayout.fromJson(Map<String, dynamic> json) {
    final offsetList = json['offsets'] as List<dynamic>;
    final items = json['items'] as List<dynamic>;

    return SmLayout(
      offsetList
          .map(
            (offsetDict) => Offset(
              offsetDict['dx'] as double,
              offsetDict['dy'] as double,
            ),
          )
          .toList(),
      items
          .map(
            (e) => SmLayoutItem(
              e['name'] as String,
              e['isHeightAdjustable'] as bool,
              e['reserved'] as bool,
            ),
          )
          .toList(),
    );
  }

  final List<Offset> offsets;
  final List<SmLayoutItem> items;
}
