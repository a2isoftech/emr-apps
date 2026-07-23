import 'dart:async';

import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/graphql/queries/account/get_media_api_url_with_sas_token.graphql.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal/shared/models/new_credit_note_model.dart';
import 'package:emr_one_portal_tickets/graphql/queries/submit_payment_request.graphql.dart';
import 'package:http/http.dart';

class CreditNoteService {
  CreditNoteService({
    required this.httpClient,
    required this.userInfoSvc,
    required this.appConfig,
  }) {
    try {
      _url = Uri.parse('${appConfig.customerPortalApiUrl}/graphql');
    } catch (e) {
      LoggingService.logFailure(
        PortalStrings.remittance,
        e,
        partyAccountNo: userInfoSvc.getPartyAccountNumber(),
        userId: userInfoSvc.userInfo.id,
      );
    }
  }

  final Client httpClient;
  final CustomerUserInfoService userInfoSvc;
  final AppConfig appConfig;

  late final Uri _url;

  Future<bool> submitCreditNote(
    NewCreditNoteModel model,
    String filePath,
    String fileId,
  ) async {
    final token = await userInfoSvc.getIdToken(true);
    final response = await documentNodeMutationSubmitPaymentRequest.execute(
      httpClient,
      Mutation$SubmitPaymentRequest.fromJson,
      variables: Variables$Mutation$SubmitPaymentRequest(
        paymentRequest: model.toCreditNoteSubmissionInput(
          userInfoSvc.userInfo.partyAccountNumber!,
          filePath,
          fileId,
          userInfoSvc.userInfo.name,
        ),
      ),
      url: _url,
      headers: <String, String>{
        'Authorization': 'Bearer $token',
      },
    );

    return response.data?.result ?? false;
  }

  Future<String?> getMediaApiUrlWithToken({required String fileId}) async {
    final accessToken = await userInfoSvc.getIdToken();

    final response = await documentNodeQueryGetMediaApiSasToken.execute(
      httpClient,
      Query$GetMediaApiSasToken.fromJson,
      variables: Variables$Query$GetMediaApiSasToken(fname: fileId),
      url: _url,
      headers: <String, String>{
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.hasErrors() || response.data == null) {
      LoggingService.logGraphQlFailure(
        EmrOnePortalTelemetry.kGetMediaApiUrlWithToken,
        response,
        partyAccountNo: userInfoSvc.userInfo.partyAccountNumber,
        userId: userInfoSvc.userInfo.id,
      );
      return null;
    }

    return response.data!.mediaApiUrlWithToken;
  }
}
