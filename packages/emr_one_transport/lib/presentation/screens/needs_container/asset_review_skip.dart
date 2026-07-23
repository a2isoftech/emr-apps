import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/validators/validators.dart';
import 'package:emr_one_core/widgets/form_fields/emr_radio_list_form_field.dart';
import 'package:emr_one_core/widgets/form_fields/emr_text_form_field.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/services/common_service.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AssetReviewSkip extends StatefulWidget {
  const AssetReviewSkip({
    required this.commentNotifier,
    required this.formKey,
    required this.selectedReason,
    super.key,
  });
  final ValueNotifier<ListDetails?> selectedReason;
  final ValueNotifier<String?> commentNotifier;
  final GlobalKey<FormState> formKey;
  @override
  State<AssetReviewSkip> createState() => _AssetReviewSkipState();
}

class _AssetReviewSkipState extends State<AssetReviewSkip> {
  final ValueNotifier<Map<ListDetails?, String>> reasons =
      ValueNotifier<Map<ListDetails?, String>>({});
  late final Future<void> _skipReasonsFuture;

  void _validateForm() {
    widget.formKey.currentState?.validate();
  }

  @override
  void initState() {
    super.initState();
    _skipReasonsFuture = fetchAssetReviewSkipReasons();
    widget.selectedReason.addListener(_validateForm);
    widget.commentNotifier.addListener(_validateForm);
  }

  @override
  void dispose() {
    widget.selectedReason.removeListener(_validateForm);
    widget.commentNotifier.removeListener(_validateForm);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420,
      width: 500,
      child: FutureBuilder<void>(
        future: _skipReasonsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: LoadingIndicator());
          }

          if (snapshot.hasError) {
            return Text(context.l10n.errorAndTryAgainMsg);
          }

          return Form(
            key: widget.formKey,
            child: Column(
              children: [
                EmrRadioListFormField<ListDetails?>(
                  labelText: context.l10n.chooseAReasonToSkip,
                  options: reasons,
                  binding: widget.selectedReason,
                  validator: Validators.required,
                ),
                EmrTextFormField(
                  labelText: '${context.l10n.comments}:',
                  binding: widget.commentNotifier,
                  hintText: context.l10n.comments,
                  validator: (comment) {
                    final isOther = widget.selectedReason.value?.code == 'OTH';

                    if (isOther &&
                        (comment == null || comment.trim().isEmpty)) {
                      return context.l10n.required;
                    }

                    return null;
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> fetchAssetReviewSkipReasons() async {
    final commonService = context.read<CommonService>();
    final reasons = await commonService.getListByType(
      StringConstants.kAssetReviewSkipReasons,
    );
    reasons.sort((a, b) => (a.id ?? '').compareTo(b.id ?? ''));
    this.reasons.value = <ListDetails?, String>{
      for (final reason in reasons)
        if (reason.description != null) reason: reason.description!,
    };
  }
}
