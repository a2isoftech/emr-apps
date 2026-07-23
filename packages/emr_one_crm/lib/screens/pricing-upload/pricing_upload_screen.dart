import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/pricing-upload/pricing_upload_controller.dart';
import 'package:flutter/material.dart';

class PricingUploadScreen extends StatelessWidget {
  const PricingUploadScreen({
    required this.controller,
    super.key,
  });

  final PricingUploadController controller;

  static const double kIconSize = 64;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _heading(context),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
            child: ValueListenableBuilder(
              valueListenable: controller.screenMode,
              builder: (context, screenMode, child) {
                switch (screenMode) {
                  case PricingUploadScreenMode.selectFile:
                    return _selectFile(context);
                  case PricingUploadScreenMode.uploading:
                    return _uploading(context);
                  case PricingUploadScreenMode.success:
                    return _success(context);
                }
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _heading(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 2),
      child: Row(
        children: [
          const BackButton(),
          Expanded(
            child: Text(
              context.l10n.upload,
              style: EmrOneConstants.kMediumHeadingTextStyle,
            ),
          ),
        ],
      ),
    );
  }

  Widget _selectFile(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${context.l10n.selectAPriceFileToUpload}:'),
        const SizedBox(height: Insets.gutter),
        ElevatedButton(
          onPressed: () async {
            final file = await controller.selectFile();

            if (file != null) {
              await controller.uploadFile(file);
            }
          },
          child: Text(context.l10n.selectAFile),
        ),
        const SizedBox(height: Insets.gutter),
        if (controller.hasError)
          Text(
            context.l10n.anErrorOccurredTryAgain,
            style: TextStyle(color: Theme.of(context).colorScheme.error),
          ),
      ],
    );
  }

  Widget _uploading(BuildContext context) =>
      const Center(child: CircularProgressIndicator());

  Widget _success(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: kIconSize),
          const Icon(
            Icons.check_circle,
            size: 96,
          ),
          Text('${context.l10n.great}!'),
          const SizedBox(height: kIconSize),
          Text(context.l10n.successfullyUploadedThePriceFile),
        ],
      ),
    );
  }
}
