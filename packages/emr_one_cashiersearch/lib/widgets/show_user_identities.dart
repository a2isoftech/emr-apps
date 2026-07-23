import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/mixins/emr_filled_button.dart';
import 'package:flutter/material.dart';

class ShowUserIdentities extends StatelessWidget {
  const ShowUserIdentities({
    required this.identities,
    required this.onUploadIdentity,
    required this.validationFlags,
    required this.onViewIdentity,
    super.key,
  });
  final List<ProofDocument> identities;
  final ValidationFlags validationFlags;
  final void Function({required bool isPhotoId}) onUploadIdentity;
  final void Function(ProofDocument identity, {required bool isPhotoId})
  onViewIdentity;

  @override
  Widget build(BuildContext context) {
    final requiredDocs = validationFlags.documents
        .where((doc) => doc.isRequired)
        .toList();

    if (requiredDocs.any((x) => x.type == DocumentType.drivingLicence)) {
      requiredDocs.removeWhere((x) => x.type == DocumentType.photoId);
    }

    if (requiredDocs.isEmpty) {
      return SizedBox(
        width: 300,
        child: Center(child: Text(context.l10n.noIdentitiesRequired)),
      );
    }

    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: requiredDocs.map((doc) {
          final model = _getDocument(doc);

          return Padding(
            padding: const EdgeInsets.only(bottom: Insets.gutter),
            child: _buildDocSection(context, model, doc),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildDocSection(
    BuildContext context,
    ProofDocument? model,
    DocumentRequirement<DocumentType> doc,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(doc.type.displayName(context)),
        FilledButton(
          onPressed: () => model != null
              ? onViewIdentity.call(
                  model,
                  isPhotoId: doc.type != DocumentType.utilityBill,
                )
              : onUploadIdentity.call(
                  isPhotoId: doc.type != DocumentType.utilityBill,
                ),
          style: model != null
              ? EmrButtonStyles.cta()
              : EmrButtonStyles.danger(),
          child: Text(model != null ? context.l10n.view : context.l10n.upload),
        ),
      ],
    );
  }

  ProofDocument? _getDocument(DocumentRequirement<DocumentType> doc) {
    final now = DateTime.now();
    final type = doc.type;
    if (type == DocumentType.photoId || type == DocumentType.drivingLicence) {
      final documentSubTypes = type == DocumentType.photoId
          ? TicketConstants.photoIdTypes
          : TicketConstants.drivingLicenceTypes;
      return identities
          .where(
            (document) =>
                document.type == 'PHOTO_ID' &&
                documentSubTypes.contains(document.subType) &&
                now.isAfter(document.validFrom) &&
                now.isBefore(document.validTo),
          )
          .firstOrNull;
    } else if (type == DocumentType.utilityBill) {
      return doc.isSatisfied
          ? identities
                .where(
                  (document) =>
                      document.type == 'ADDRESS_ID' &&
                      TicketConstants.utilityBillTypes.contains(
                        document.subType,
                      ),
                )
                .firstOrNull
          : null;
    }
    return null;
  }
}
