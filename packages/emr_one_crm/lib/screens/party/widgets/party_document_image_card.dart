import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/party_document_identification.dart';
import 'package:flutter/material.dart';

class PartyDocumentImageCard extends StatelessWidget {
  const PartyDocumentImageCard({
    required this.document,
    super.key,
  });

  final PartyDocumentIdentificationModel document;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Insets.gutter / 2),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              SizedBox(
                height: 200,
                width: 420,
                child: Image.network(
                  document.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              if (document.isTagRequired)
                Positioned(
                  right: 0,
                  child: Container(
                    margin: const EdgeInsets.all(Insets.gutter),
                    padding: const EdgeInsets.symmetric(
                      vertical: Insets.gutter,
                      horizontal: Insets.gutter,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: document.isExpired
                          ? const Color.fromRGBO(239, 56, 94, 1)
                          : const Color.fromRGBO(237, 139, 56, 1),
                    ),
                    child: Text(
                      document.tagMessage,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(
            height: Insets.gutter,
          ),
          Text(document.documentName),
        ],
      ),
    );
  }
}
