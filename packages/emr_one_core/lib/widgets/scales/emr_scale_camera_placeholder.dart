import 'package:emr_one_core/emr_one_core_theme.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

class EmrScaleCameraPlaceHolder extends StatelessWidget {
  const EmrScaleCameraPlaceHolder({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<EmrScaleTheme>()!;

    return Container(
      margin: EdgeInsets.only(top: theme.contentPadding),
      decoration: BoxDecoration(
        border: Border.all(
          color: EmrOneCoreTheme.kDarkBackground,
          width: theme.borderWidth,
        ),
      ),
      child: Icon(
        Icons.videocam_off,
        size: theme.cameraIconSize,
      ),
    );
  }
}
