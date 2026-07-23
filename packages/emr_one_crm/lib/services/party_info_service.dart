import 'dart:core';
import 'dart:io';
import 'dart:typed_data';

import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/graphql/trader/mutations/mutations.dart';
import 'package:emr_one_crm/graphql/trader/queries/queries.dart';
import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';
import 'package:emr_one_crm/models/account_contact.dart';
import 'package:emr_one_crm/models/document_sub_type.dart';
import 'package:emr_one_crm/models/document_type.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:http/http.dart';
import 'package:uuid/uuid.dart';

class PartyInfoService {
  PartyInfoService(this.httpClient, AppConfig appConfig) {
    _url = appConfig.mediaApi;
    _partyAccountsPartition = appConfig.partyAccountsPartition;
  }
  final BaseClient httpClient;
  late final String _url;
  late final String _partyAccountsPartition;

  static bool isErrorAllowed(List<GraphQLError>? errors) {
    final allowedErrorMessages = ['User not found'];
    final allowedPathErrorMessages = [
      'accountManagers',
      'primaryAccountManager',
    ];

    var isAllowedToProceed = false;

    //some errors are returned from the UA api when Account managers and Primary
    // Account Managers are not set
    //we check these and are allowed to go through.
    for (final element in errors!) {
      final errorMessageExists = allowedErrorMessages.contains(element.message);

      if (errorMessageExists) {
        isAllowedToProceed = true;
      }

      if (!isAllowedToProceed) {
        //we check the path messages here to see if it's allowed to proceed
        if (element.path != null) {
          final pathErrorMessageExists =
              element.path!.any(allowedPathErrorMessages.contains);

          if (pathErrorMessageExists) {
            isAllowedToProceed = true;
          } else {
            return false;
          }
        }
      }
    }
    return isAllowedToProceed;
  }

  static String _mapDocumentType(Enum$DocumentTypeId documentTypeId) {
    switch (documentTypeId) {
      case Enum$DocumentTypeId.$unknown:
      case Enum$DocumentTypeId.NONE:
        {
          return 'None';
        }
      case Enum$DocumentTypeId.ADDRESS_ID:
        {
          return 'Address Id';
        }
      case Enum$DocumentTypeId.BUSINESS_DOCUMENT:
        {
          return 'Business Document';
        }
      case Enum$DocumentTypeId.PHOTO_ID:
        {
          return 'Photo Id';
        }
      case Enum$DocumentTypeId.SIGNATURE:
        {
          return 'Signature';
        }
    }
  }

  static String _mapDocumentSubType(Enum$DocumentSubTypeId documentSubTypeId) {
    switch (documentSubTypeId) {
      case Enum$DocumentSubTypeId.$unknown:
      case Enum$DocumentSubTypeId.NONE:
        {
          return 'None';
        }
      case Enum$DocumentSubTypeId.BANK_OR_BUILDING_SOCIETY_STATEMENT:
        {
          return 'Bank/Building Society Statement';
        }
      case Enum$DocumentSubTypeId.BIOMETRIC_IMMIGRATION_DOCUMENT:
        {
          return 'Biometric Immigration Document';
        }
      case Enum$DocumentSubTypeId.COUNCIL_RENT_BOOK:
        {
          return 'Council rent book';
        }
      case Enum$DocumentSubTypeId.COUNCIL_TAX_DEMAND_LETTER:
        {
          return 'Council tax demand letter';
        }
      case Enum$DocumentSubTypeId.CREDIT_OR_DEBIT_CARD_STATEMENT:
        {
          return 'Credit/Debit card statement';
        }
      case Enum$DocumentSubTypeId.EU_DRIVING_LICENSE:
        {
          return 'EU Driving License';
        }
      case Enum$DocumentSubTypeId.EU_NATIONAL_ID_CARD:
        {
          return 'EU national ID card';
        }
      case Enum$DocumentSubTypeId.HMRC_CORRESPONDANCE:
        {
          return 'HMRC Correspondance';
        }
      case Enum$DocumentSubTypeId.MORTGAGE_STATEMENT:
        {
          return 'Mortgage Statement';
        }
      case Enum$DocumentSubTypeId.OTHER:
        {
          return 'Other';
        }
      case Enum$DocumentSubTypeId.UKEUEEA_PASSPORT:
        {
          return 'UK/EU/EEA Passport';
        }
      case Enum$DocumentSubTypeId.UKEU_DRIVING_LICENSE:
        {
          return 'UK/EU Driving License';
        }
      case Enum$DocumentSubTypeId.UK_DRIVING_LICENSE:
        {
          return 'UK Driving License';
        }
      case Enum$DocumentSubTypeId.UK_FIREARM_LICENSE:
        {
          return 'UK Firearms License';
        }
      case Enum$DocumentSubTypeId.USA_DRIVER_LICENCE:
        {
          return 'USA Driving License';
        }
      case Enum$DocumentSubTypeId.UTILITY_BILL:
        {
          return 'Utility Bill';
        }
      case Enum$DocumentSubTypeId.WASTE_TRANSFER_NOTE:
        {
          return 'Waste Transfer Note';
        }
    }
  }

  Future<List<DocumentType>> getTerritoryDocumentTypes(
    Enum$TerritoryId territoryId,
  ) async {
    final result = await documentNodeQueryGetTerritoryDocumentTypes.execute(
      httpClient,
      Query$GetTerritoryDocumentTypes.fromJson,
      variables: Variables$Query$GetTerritoryDocumentTypes(
        territoryId: territoryId,
      ),
    );

    if (result.hasErrors()) {
      final exception = Exception(
        'Failed to load Territory Document Types: ${result.errors!.join()}',
      );
      return Future.error(exception);
    }

    if (result.data == null) {
      return [];
    }

    return result.data!.territoryDocumentType!
        .map(
          (e) => DocumentType(
            id: e?.documentType?.id ?? Enum$DocumentTypeId.$unknown,
            description: _mapDocumentType(
              e?.documentType?.id ?? Enum$DocumentTypeId.$unknown,
            ),
          ),
        )
        .toList();
  }

  Future<List<DocumentSubType>> getTerritoryDocumentSubTypes(
    Enum$TerritoryId territoryId,
  ) async {
    final result = await documentNodeQueryGetTerritoryDocumentSubTypes.execute(
      httpClient,
      Query$GetTerritoryDocumentSubTypes.fromJson,
      variables: Variables$Query$GetTerritoryDocumentSubTypes(
        territoryId: territoryId,
      ),
    );

    if (result.hasErrors()) {
      final exception = Exception(
        'Failed to load Territory Document Sub Types: ${result.errors!.join()}',
      );
      return Future.error(exception);
    }

    if (result.data == null) {
      return [];
    }

    return result.data!.territoryDocumentSubType!
        .map(
          (e) => DocumentSubType(
            id: e?.documentSubType?.id ?? Enum$DocumentSubTypeId.$unknown,
            description: _mapDocumentSubType(
              e?.documentSubType?.id ?? Enum$DocumentSubTypeId.$unknown,
            ),
          ),
        )
        .toList();
  }

  Future<List<AccountContact>> getAccountContact(
    String partyAccountNo,
  ) async {
    final result = await documentNodeQueryGetAccountContacts.execute(
      httpClient,
      Query$GetAccountContacts.fromJson,
      variables: Variables$Query$GetAccountContacts(
        partyAccountNo: partyAccountNo,
      ),
    );

    if (result.hasErrors()) {
      final exception = Exception(
        'Failed to load Party Account Contacts: ${result.errors!.join()}',
      );
      return Future.error(exception);
    }

    if (result.data == null) {
      return [];
    }

    final accountContacts =
        result.data?.accounts?.edges![0].node?.accountContacts;
    if (accountContacts != null) {
      return accountContacts
          .where((element) => element != null)
          .map(
            (e) => AccountContact(
              id: e!.contact?.id ?? 0,
              firstName: e.contact?.firstName ?? '',
              lastName: e.contact?.lastName ?? '',
              description: e.accountContactType?.description ?? '',
            ),
          )
          .toList();
    }
    return [];
  }

  //Upload party document to media store api
  Future<String?> uploadPartyDocument({
    required Uint8List data,
    required String fileName,
    required Map<String, String> fileMetaData,
  }) async {
    const uuid = Uuid();
    final fileName = uuid.v4();

    final urlWithMetadata =
        Uri.parse('$_url/i/$_partyAccountsPartition/$fileName');
    try {
      final request = MultipartRequest(
        'POST',
        urlWithMetadata,
      );

      final token = await FirebaseLogin.getToken();
      request.headers['accept'] = 'application/json';
      request.headers['content-type'] = 'multipart/form-data';
      request.headers['authorization'] = 'Bearer $token';

      final multipartFile = MultipartFile.fromBytes(
        'formFile',
        data,
        filename: fileName,
      );

      request.files.add(multipartFile);

      final response = await request.send();
      if (response.statusCode == 201) {
        return fileName;
      } else {
        throw HttpException(
          'Received status code ${response.statusCode} from server',
        );
      }
    } catch (e) {
      return null;
    }
  }

  Future<GraphQLResponse<Mutation$CreatePartyDocument>> savePartyDocumentData(
    Input$CreateOrUpdateDocumentsInput createOrUpdateDocumentsInput,
  ) {
    return documentNodeMutationCreatePartyDocument.execute(
      httpClient,
      Mutation$CreatePartyDocument.fromJson,
      variables: Variables$Mutation$CreatePartyDocument(
        input: createOrUpdateDocumentsInput,
      ),
    );
  }
}
