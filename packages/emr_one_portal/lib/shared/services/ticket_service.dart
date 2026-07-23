import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal_tickets/emr_one_portal_tickets.dart';
import 'package:emr_one_portal_tickets/graphql/queries/get_companies_list.graphql.dart';
import 'package:http/http.dart';

class TicketService {
  TicketService({
    required this.httpClient,
    required this.userInfoSvc,
    required AppConfig appConfig,
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
  late final Uri _url;

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

  Future<bool> isValidTicket(
    String ticketNo,
    String depot,
  ) async {
    await Future<void>.delayed(
      const Duration(
        milliseconds: 1,
      ),
    );

    //TODO: Call the real api here to check if its valid to add ticket
    //final numericTicketNo = int.parse(ticketNo);
    return true; //numericTicketNo.isEven;
  }

  Future<TicketViewModel?> getTicket(
    String ticketNo,
    String depot,
  ) async {
    final token = await userInfoSvc.getIdToken(true);
    final response = await documentNodeQueryGetTicket.execute(
      httpClient,
      Query$GetTicket.fromJson,
      variables: Variables$Query$GetTicket(
        ticketNumber: int.parse(ticketNo),
        depotNumber: depot,
      ),
      url: _url,
      headers: <String, String>{
        'Authorization': 'Bearer $token',
      },
    );

    if (response.hasErrors() || response.data?.ticket == null) {
      LoggingService.logGraphQlFailure(
        EmrOnePortalTelemetry.kGetTicket,
        response,
        partyAccountNo: userInfoSvc.userInfo.partyAccountNumber,
        userId: userInfoSvc.userInfo.id,
      );
      return null;
    }
    return response.data!.ticket!.toTicketViewModel();
  }

  Future<bool> requestPayments(
    List<TicketViewModel> tickets,
  ) async {
    final token = await userInfoSvc.getIdToken(true);
    final response = await documentNodeMutationSubmitPaymentRequest.execute(
      httpClient,
      Mutation$SubmitPaymentRequest.fromJson,
      variables: Variables$Mutation$SubmitPaymentRequest(
        paymentRequest: tickets.toPaymentRequestInput(
          userInfoSvc.userInfo.partyAccountNumber!,
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

  Future<(bool, String?)> requestPaymentsLegacy(
    List<TicketViewModel> tickets,
    int paymentMethodId,
  ) async {
    final token = await userInfoSvc.getIdToken(true);
    final response =
        await documentNodeMutationSubmitPaymentRequestLegacy.execute(
      httpClient,
      Mutation$SubmitPaymentRequestLegacy.fromJson,
      variables: Variables$Mutation$SubmitPaymentRequestLegacy(
        paymentRequests: tickets.toPaymentRequestsLegacyInput(paymentMethodId),
      ),
      url: _url,
      headers: <String, String>{
        'Authorization': 'Bearer $token',
      },
    );

    if (response.errors != null && response.errors!.isNotEmpty) {
      return (false, response.errors![0].message);
    }

    return (response.data?.result.isNotEmpty ?? false, '');
  }

  Future<bool> submitInvoice(
    NewInvoiceModel model,
    String filePath,
    String fileId,
  ) async {
    final token = await userInfoSvc.getIdToken(true);
    final response = await documentNodeMutationSubmitPaymentRequest.execute(
      httpClient,
      Mutation$SubmitPaymentRequest.fromJson,
      variables: Variables$Mutation$SubmitPaymentRequest(
        paymentRequest: model.toInvoiceSubmissionInput(
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
    //Handling errors related to Purchase order numbers
    if (response.errors != null &&
        response.errors!.any(
          (element) => element.message.contains('Purchase order number'),
        )) {
      throw GraphQLException(response.errors!.first.message);
    }

    return response.data?.result ?? false;
  }

  Future<Company> getCompanyDetails(String companyId) async {
    final accessToken = await userInfoSvc.getIdToken();
    final response = await documentNodeQueryCompanyDetails.execute(
      httpClient,
      Query$CompanyDetails.fromJson,
      variables: Variables$Query$CompanyDetails(companyId: companyId),
      url: _url,
      headers: <String, String>{
        'Authorization': 'Bearer $accessToken',
      },
    );

    return Company(
      name: response.data?.company.fullName ?? '',
    );
  }

  Future<List<Company>> getCompaniesList() async {
    final accessToken = await userInfoSvc.getIdToken();
    final response = await documentNodeQueryCompanies.execute(
      httpClient,
      Query$Companies.fromJson,
      url: _url,
      headers: <String, String>{
        'Authorization': 'Bearer $accessToken',
      },
    );

    return response.data?.companies.map(CompanyMapper.companyMapper).toList() ??
        [];
  }

  Future<String?> downloadFile(
    String ticketNumber,
  ) async {
    final ticketNo = int.parse(ticketNumber);
    final accessToken = await userInfoSvc.getIdToken(true);
    final response = await documentNodeQueryticketRemittance.execute(
      httpClient,
      Query$ticketRemittance.fromJson,
      variables: Variables$Query$ticketRemittance(
        ticketNumber: ticketNo,
      ),
      url: _url,
      headers: <String, String>{
        'Authorization': 'Bearer $accessToken',
      },
    );

    return response.data?.remittanceForTicket;
  }
}
