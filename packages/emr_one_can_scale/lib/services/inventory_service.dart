import 'package:emr_one_can_scale/graphql/mutations/mutations.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:http/http.dart';

class InventoryService {
  InventoryService({
    required this.httpClient,
    required this.userInfoService,
  });

  final BaseClient httpClient;

  final UserInfoService userInfoService;

  Future<void> createCanScaleTicket() async {
    final createdBy = userInfoService.userInfo.emailAddress;
    final response = await documentNodeMutationCreateCanScaleTicket.execute(
      httpClient,
      Mutation$CreateCanScaleTicket.fromJson,
      variables: Variables$Mutation$CreateCanScaleTicket(createdBy: createdBy),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }
  }
}
