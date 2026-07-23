import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class InspectionLoadingScreen extends StatelessWidget {
  const InspectionLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(Insets.gutter),
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(),
            ),
          ),
          Text(
            context.l10n.loading,
            style: EmrOneConstants.kSmallHeadingTextStyle,
          ),
        ],
      ),
    );
  }
}
