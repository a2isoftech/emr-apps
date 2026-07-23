import 'dart:typed_data';

import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/services/user_info/user_info_service.dart';
import 'package:emr_one_crm/models/upload_party_document.dart';
import 'package:emr_one_crm/screens/party/sub-screens/party_document_identification_upload_controller.dart';
import 'package:emr_one_crm/screens/party/widgets/image_picker_widget.dart';
import 'package:emr_one_crm/screens/party/widgets/party_document_identification_upload_form.dart';
import 'package:emr_one_crm/services/party_info_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class PartyDocumentIdentificationUploadMobile extends StatefulWidget {
  const PartyDocumentIdentificationUploadMobile({
    required this.partyAccountNo,
    required this.config,
    required this.locale,
    super.key,
  });

  final String partyAccountNo;
  final Locale locale;
  final AppConfig config;

  @override
  State<PartyDocumentIdentificationUploadMobile> createState() =>
      _PartyDocumentIdentificationUploadMobileState();
}

class _PartyDocumentIdentificationUploadMobileState
    extends State<PartyDocumentIdentificationUploadMobile> {
  late final PartyDocumentUploadController partyDocumentUploadController;
  final ValueNotifier<bool> isFileUploadErrorMessage = ValueNotifier(true);
  final ValueNotifier<Uint8List?> imageUploadNotifier = ValueNotifier(null);
  final List<DocumentModel> files = [];

  @override
  void initState() {
    super.initState();

    final userData = context.read<UserInfoService>();
    partyDocumentUploadController = PartyDocumentUploadController(
      httpClient: Provider.of<BaseClient>(
        context,
        listen: false,
      ),
      accountNumber: widget.partyAccountNo,
      territoryTypeCode: userData.userInfo.defaultTerritory,
      partyInfoService: PartyInfoService(
        Provider.of<BaseClient>(
          context,
          listen: false,
        ),
        widget.config,
      ),
      config: widget.config,
    );
  }

  void clearFormField() {
    setState(() {
      imageUploadNotifier.value = null;
      isFileUploadErrorMessage.value = true;
      files.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Mobile Image picker Upload
          ValueListenableBuilder(
            valueListenable: isFileUploadErrorMessage,
            builder: (context, value, child) {
              return ImagePickerWidget(
                imageUploadNotifier: imageUploadNotifier,
                isFileValid: isFileUploadErrorMessage,
                hasError: !value,
                onFileUpload: (data) {
                  files.clear();
                  files.add(
                    DocumentModel(
                      fileBytes: data.fileBytes,
                      fileName: data.fileName,
                    ),
                  );
                },
                onError: (errorMessage) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(errorMessage),
                    ),
                  );
                },
              );
            },
          ),

          PartyDocumentIdentificationUploadForm(
            partyDocumentUploadController: partyDocumentUploadController,
            onClear: clearFormField,
            onFormValidationCheck: () {
              isFileUploadErrorMessage.value = files.isNotEmpty;
            },
            onSave: (data) {
              if (files.isEmpty) {
                isFileUploadErrorMessage.value = false;
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
                      partyDocumentUploadController.isSaveProcessing.value =
                          false,
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
                      partyDocumentUploadController.isSaveProcessing.value =
                          false,
                    },
                  );
            },
          ),
        ],
      ),
    );
  }
}
