import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_elv_inspection/enums/device_type_enum.dart';
import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({
    required this.children,
    this.title,
    this.deviceType = DeviceTypeEnum.desktop,
    this.gridItemHeight,
    super.key,
  });

  final List<Widget> children;
  final String? title;
  final DeviceTypeEnum deviceType;
  final double? gridItemHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (title != null) ...{
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Insets.gutter / 2,
              horizontal: Insets.gutter,
            ),
            child: Text(
              title ?? '',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        },
        Expanded(
          child: Wrap(
            spacing: Insets.gutter / 2,
            runSpacing: Insets.gutter / 2,
            children: children,
          ),
        ),
      ],
    );
  }
}
