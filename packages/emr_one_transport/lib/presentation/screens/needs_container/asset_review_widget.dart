import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/data/helpers/navigation_helper.dart';
import 'package:emr_one_transport/data/models/containers/asset_review_skip_detail.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AssetImageReview extends StatefulWidget {
  const AssetImageReview({
    required this.jobNumber,
    required this.images,
    required this.assetNumberNotifier,
    this.assetNumberReviewSkipDetail,
    super.key,
  });

  final ValueNotifier<String?> assetNumberNotifier;
  final List<String> images;
  final String jobNumber;
  final AssetReviewSkipDetail? assetNumberReviewSkipDetail;

  @override
  State<AssetImageReview> createState() => _AssetImageReviewState();
}

class _AssetImageReviewState extends State<AssetImageReview> {
  late final TapGestureRecognizer _jobNumberTapRecognizer;

  @override
  void initState() {
    super.initState();
    _jobNumberTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        final url = context.namedLocation(
          RoutingPathName.jobTracking,
          params: {StringConstants.jobid: widget.jobNumber},
        );
        NavigationHelper.openInNewTab(url);
      };
  }

  @override
  void dispose() {
    _jobNumberTapRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: Insets.gutter,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.l10n.jobNo,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SelectableText.rich(
                      TextSpan(
                        text: widget.jobNumber,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: _jobNumberTapRecognizer,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: Insets.gutter),
                if (widget.assetNumberReviewSkipDetail != null)
                  Row(
                    spacing: Insets.gutter,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '${context.l10n.reason}: ',
                              style: Theme.of(context).textTheme.labelLarge
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: widget
                                  .assetNumberReviewSkipDetail!
                                  .reasonText,
                            ),
                          ],
                        ),
                      ),
                      if (widget.assetNumberReviewSkipDetail?.comments != null)
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '${context.l10n.comments}: ',
                                style: Theme.of(context).textTheme.labelLarge
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: widget
                                    .assetNumberReviewSkipDetail!
                                    .comments,
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                const SizedBox(height: Insets.gutter),
                SizedBox(
                  width: 400,

                  child: EmrTextFormField<String>(
                    labelText: '${context.l10n.updateAssetNumberMsg}:',
                    binding: widget.assetNumberNotifier,
                    hintText: context.l10n.assetNumberText,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => Validators.join([
                      Validators.length(value, max: 16),
                      Validators.required(value),
                    ]),
                  ),
                ),

                Expanded(
                  child: SingleChildScrollView(
                    child: Wrap(
                      spacing: Insets.gutter,
                      runSpacing: Insets.gutter,
                      children: List.generate(
                        widget.images.length,
                        (i) => SizedBox(
                          width: 300,
                          height: 300,

                          child: TappableImage(imagePath: widget.images[i]),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
