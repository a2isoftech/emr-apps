import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/networking/graphql/extensions.dart';
import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';
import 'package:emr_one_crm/models/account_contact.dart';
import 'package:emr_one_crm/models/document_sub_type.dart';
import 'package:emr_one_crm/models/document_type.dart';
import 'package:emr_one_crm/models/upload_party_document.dart';
import 'package:emr_one_crm/services/party_info_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class PartyDocumentUploadController {
  PartyDocumentUploadController({
    required this.httpClient,
    required this.accountNumber,
    required this.partyInfoService,
    required this.territoryTypeCode,
    required this.config,
  }) {
    _getDocumentTypes();
    _getDocumentSubTypes();
    _getAccountContact(accountNumber);
  }
  final ValueNotifier<List<DocumentType>> documentTypesNotifier =
      ValueNotifier([]);
  final ValueNotifier<List<DocumentSubType>> documentSubTypesNotifier =
      ValueNotifier([]);
  final ValueNotifier<List<AccountContact>> accountContactNotifier =
      ValueNotifier([]);
  final ValueNotifier<bool> isSaveProcessing = ValueNotifier(false);

  final BaseClient httpClient;
  final String accountNumber;
  final String territoryTypeCode;
  final AppConfig config;
  final PartyInfoService partyInfoService;

  Future<void> _getDocumentTypes() async {
    final territoryTypeId = Enum$TerritoryId.values.byName(territoryTypeCode);

    final response =
        await partyInfoService.getTerritoryDocumentTypes(territoryTypeId);
    documentTypesNotifier.value = response;
  }

  Future<void> _getDocumentSubTypes() async {
    final territoryTypeId = Enum$TerritoryId.values.byName(territoryTypeCode);

    final response =
        await partyInfoService.getTerritoryDocumentSubTypes(territoryTypeId);

    documentSubTypesNotifier.value = response;
  }

  Future<void> _getAccountContact(String partyAccountNo) async {
    final response = await partyInfoService.getAccountContact(partyAccountNo);
    accountContactNotifier.value = response;
  }

  Future<(bool, String)> saveImage(UploadPartyDocumentModel request) async {
    if (request.documents.isEmpty) {
      return (false, 'Please upload a document');
    }

    final upload = Input$CreateOrUpdateDocumentsInput(
      accountNumber: accountNumber,
      documents: [],
      skipPublishToQueue: false,
    );

    for (final element in request.documents) {
      final imageResponse = await partyInfoService.uploadPartyDocument(
        data: element.fileBytes,
        fileName: element.fileName,
        fileMetaData: {},
      );

      if (imageResponse == null) {
        continue;
      }

      upload.documents!.add(
        Input$CreateDocumentInput(
          documentSubTypeId: request.documentSubTypeId,
          documentType: request.documentType,
          expiration: request.expiration,
          contactId: request.contactId,
          documentNumber: request.documentNumber,
          fileId: imageResponse,
          fileName: element.fileName,
          filePath: config.partyAccountsPartition,
        ),
      );
    }

    if (upload.documents!.isEmpty) {
      return (false, 'Failed to upload party document');
    }

    final result = await partyInfoService.savePartyDocumentData(upload);
    if (result.hasErrors()) {
      return (
        false,
        'Failed to load Party upload'
            ' document data: ${result.errors!.join()}'
      );
    }

    return (true, 'File uploaded successfully');
  }
}
