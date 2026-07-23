import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal_tickets/graphql/mutations/submit_account_details_change_request.graphql.dart';
import 'package:emr_one_portal_tickets/graphql/queries/get_pending_account_change_requests.graphql.dart';
import 'package:http/http.dart';

class AccountChangeRequestService {
  AccountChangeRequestService({
    required this.httpClient,
    required this.userInfoService,
    required AppConfig appConfig,
  }) {
    try {
      _url = Uri.parse('${appConfig.customerPortalApiUrl}/graphql');
    } catch (_) {}
  }

  final Client httpClient;
  final CustomerUserInfoService userInfoService;
  late final Uri _url;

  Future<ChangeRequestSummary> hasPendingChangeRequest() async {
    final token = await userInfoService.getIdToken(true);
    final response =
        await documentNodeQueryGetPendingAccountChangeRequests.execute(
      httpClient,
      Query$GetPendingAccountChangeRequests.fromJson,
      url: _url,
      headers: <String, String>{
        'Authorization': 'Bearer $token',
      },
    );

    var toolTip = '';
    final hasPending = response.data?.accountChangeRequests.isNotEmpty ?? false;
    final lastRequestTime =
        hasPending ? response.data?.accountChangeRequests[0].createdOn : null;
    final canSubmitAfter24Hours = lastRequestTime != null &&
        DateTime.now().difference(lastRequestTime).inHours < 24;

    if (hasPending && canSubmitAfter24Hours) {
      toolTip = 'A change request was submitted by '
          '${response.data?.accountChangeRequests[0].requestedBy ?? ''} on '
          '${response.data?.accountChangeRequests[0].createdOn ?? ''}.'
          ' You can submit another request 24 hours after the previous one.';
    }

    return ChangeRequestSummary(
      hasPendingChangeRequest: hasPending && canSubmitAfter24Hours,
      tooltip: toolTip,
    );
  }

  Future<bool> requestChangeInAccountDetails(
    AccountDetailsModel? oldModel,
    AccountDetailsModel? newModel,
  ) async {
    final token = await userInfoService.getIdToken(true);
    final response =
        await documentNodeMutationSubmitAccountDetailsChangeRequest.execute(
      variables: Variables$Mutation$SubmitAccountDetailsChangeRequest(
        accountChangeRequest: oldModel!.toAccountChangeRequestInput(
          userInfoService.userInfo.name,
          newModel!,
        ),
      ),
      httpClient,
      Mutation$SubmitAccountDetailsChangeRequest.fromJson,
      url: _url,
      headers: <String, String>{
        'Authorization': 'Bearer $token',
      },
    );

    return response.data?.result ?? false;
  }
}
