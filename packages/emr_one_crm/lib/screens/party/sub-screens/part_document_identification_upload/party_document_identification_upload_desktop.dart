import 'dart:typed_data';

import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/services/user_info/user_info_service.dart';
import 'package:emr_one_crm/models/upload_party_document.dart';
import 'package:emr_one_crm/screens/party/sub-screens/party_document_identification_upload_controller.dart';
import 'package:emr_one_crm/screens/party/widgets/party_document_identification_upload_dropzone.dart';
import 'package:emr_one_crm/screens/party/widgets/party_document_identification_upload_form.dart';
import 'package:emr_one_crm/services/party_info_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class PartyDocumentIdentificationUploadDesktop extends StatefulWidget {
  const PartyDocumentIdentificationUploadDesktop({
    required this.config,
    required this.locale,
    required this.partyAccountNo,
    super.key,
  });

  final String partyAccountNo;
  final Locale locale;
  final AppConfig config;

  @override
  State<PartyDocumentIdentificationUploadDesktop> createState() =>
      _PartyDocumentIdentificationUploadDesktopState();
}

class _PartyDocumentIdentificationUploadDesktopState
    extends State<PartyDocumentIdentificationUploadDesktop> {
  late final PartyDocumentUploadController partyDocumentUploadController;
  late DropzoneViewController controller;
  final List<DocumentModel> files = [];
  final ValueNotifier<bool> isFileValid = ValueNotifier(true);
  final ValueNotifier<Uint8List?> imageUploadNotifier = ValueNotifier(null);

  @override
  void initState() {
    super.initState();

    final userData = context.read<UserInfoService>();
    final httpClient = context.read<BaseClient>();

    partyDocumentUploadController = PartyDocumentUploadController(
      httpClient: httpClient,
      accountNumber: widget.partyAccountNo,
      territoryTypeCode: userData.userInfo.defaultTerritory,
      partyInfoService: PartyInfoService(
        httpClient,
        widget.config,
      ),
      config: widget.config,
    );
  }

  void _clearFormField() {
    setState(() {
      imageUploadNotifier.value = null;
      isFileValid.value = true;
      files.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: PartyDocumentIdentificationUploadDropZone(
            imageUploadNotifier: imageUploadNotifier,
            isFileValid: isFileValid,
            onFileUpload: (file) {
              files.clear();
              files.add(
                DocumentModel(fileBytes: file.byteData, fileName: file.name),
              );
            },
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                PartyDocumentIdentificationUploadForm(
                  partyDocumentUploadController: partyDocumentUploadController,
                  onClear: _clearFormField,
                  onFormValidationCheck: () {
                    isFileValid.value = files.isNotEmpty;
                  },
                  onSave: (data) {
                    if (files.isEmpty) {
                      isFileValid.value = false;
                      return;
                    }
                    partyDocumentUploadController.isSaveProcessing.value = true;
                    partyDocumentUploadController
                        .saveImage(
                          UploadPartyDocumentModel(
                            contactId: data.contactId,
                            documentNumber: data.documentNumber,
                            documentSubTypeId: data.documentSubTypeId,
                            documentType: data.documentTypeId,
                            documents: files,
                            expirationDate: data.expiryDate,
                          ),
                        )
                        .then(
                          (value) => {
                            partyDocumentUploadController
                                .isSaveProcessing.value = false,
                            if (!value.$1)
                              {
                                if (context.mounted)
                                  {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        backgroundColor: Colors.red,
                                        content: Text(value.$2),
                                      ),
                                    ),
                                  },
                              }
                            else
                              {
                                if (context.mounted)
                                  {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        backgroundColor: Colors.green,
                                        content: Text(value.$2),
                                      ),
                                    ),
                                    Navigator.of(context).pop(),
                                  },
                              },
                          },
                        )
                        .onError(
                          (error, stackTrace) => {
                            partyDocumentUploadController
                                .isSaveProcessing.value = false,
                          },
                        );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
