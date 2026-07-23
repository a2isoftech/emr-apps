import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/mixins/emr_filled_button.dart';
import 'package:flutter/material.dart';

class ShowUserAgreements extends StatelessWidget {
  const ShowUserAgreements({
    required this.onUploadAgreement,
    required this.validationFlags,
    required this.onViewAgreement,
    this.celAgreement,
    this.secoreAgreement,
    super.key,
  });

  final Agreement? celAgreement;
  final Agreement? secoreAgreement;
  final ValidationFlags validationFlags;
  final VoidCallback onUploadAgreement;
  final void Function(Agreement agreement, AgreementType type) onViewAgreement;

  @override
  Widget build(BuildContext context) {
    final requiredDocs =
        validationFlags.agreements.where((doc) => doc.isRequired).toList();

    if (requiredDocs.isEmpty) {
      return SizedBox(
        width: 300,
        child: Center(
          child: Text(context.l10n.noAgreementsRequired),
        ),
      );
    }

    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: requiredDocs.map((doc) {
          final model = _getDocument(doc.type);

          return Padding(
            padding: const EdgeInsets.only(bottom: Insets.gutter),
            child: _buildDocSection(
              context,
              model,
              doc,
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildDocSection(
    BuildContext context,
    Agreement? model,
    DocumentRequirement<AgreementType> doc,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          doc.type.displayName(context),
        ),
        FilledButton(
          onPressed: model != null
              ? () => onViewAgreement.call(model, doc.type)
              : onUploadAgreement,
          style:
              model != null ? EmrButtonStyles.cta() : EmrButtonStyles.danger(),
          child: Text(model != null ? context.l10n.view : context.l10n.upload),
        ),
      ],
    );
  }

  Agreement? _getDocument(AgreementType type) {
    if (type == AgreementType.celAgreement) {
      return celAgreement;
    } else if (type == AgreementType.secoreAgreement) {
      return secoreAgreement;
    }
    return null;
  }
}
