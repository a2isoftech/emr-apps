import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/party/sub-screens/part_document_identification_upload/party_document_identification_upload_desktop.dart';
import 'package:emr_one_crm/screens/party/sub-screens/part_document_identification_upload/party_document_identification_upload_mobile.dart';
import 'package:flutter/material.dart';

class PartyDocumentIdentificationUpload extends StatefulWidget {
  const PartyDocumentIdentificationUpload({
    required this.config,
    required this.partyAccountNo,
    required this.locale,
    super.key,
  });

  final String partyAccountNo;
  final Locale locale;
  final AppConfig config;

  @override
  State<PartyDocumentIdentificationUpload> createState() =>
      _PartyDocumentIdentificationUploadState();
}

class _PartyDocumentIdentificationUploadState
    extends State<PartyDocumentIdentificationUpload> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Text(
                    context.l10n.uploadDocumentIdentificationHeader,
                    style: EmrOneConstants.kMediumHeadingTextStyle,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 500) {
                  return PartyDocumentIdentificationUploadDesktop(
                    config: widget.config,
                    locale: widget.locale,
                    partyAccountNo: widget.partyAccountNo,
                  );
                } else {
                  return PartyDocumentIdentificationUploadMobile(
                    config: widget.config,
                    locale: widget.locale,
                    partyAccountNo: widget.partyAccountNo,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
