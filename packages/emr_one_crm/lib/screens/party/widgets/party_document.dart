import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/party_document_identification.dart';
import 'package:emr_one_crm/screens/party/widgets/party_document_image_card.dart';
import 'package:flutter/material.dart';

class PartyDocument extends StatelessWidget {
  const PartyDocument({
    required this.documentStatus,
    required this.documents,
    super.key,
  });

  final String documentStatus;
  final List<PartyDocumentIdentificationModel> documents;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            documentStatus,
            style: EmrOneConstants.kSmallestHeadingTextStyle,
          ),
          const SizedBox(height: Insets.gutter),
          if (documents.isNotEmpty)
            Wrap(
              spacing: Insets.gutter,
              runSpacing: Insets.gutter,
              children: List.generate(
                documents.length,
                (index) => PartyDocumentImageCard(document: documents[index]),
              ),
            ),
        ],
      ),
    );
  }
}
