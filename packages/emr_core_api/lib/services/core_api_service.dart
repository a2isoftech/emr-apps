import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/services/contract_service.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';

class CoreApiService {
  CoreApiService({
    required this.httpClient,
    required this.appConfig,
  });

  final CoreApiClient httpClient;

  final AppConfig appConfig;

  late final ReferenceDataService referenceData = ReferenceDataService(
    httpClient: httpClient,
  );

  late final UserAccessService userAccess = UserAccessService(
    httpClient: httpClient,
  );

  late final AccountService accountService = AccountService(
    httpClient: httpClient,
  );

  late final PricingService pricingService = PricingService(
    httpClient: httpClient,
  );

  late final ContractService contractService = ContractService(
    httpClient: httpClient,
  );

  late final AzureFormRecogniserService azureFormRecogniserService =
      AzureFormRecogniserService(
        appConfig: appConfig,
      );

  late final InventoryService inventoryService = InventoryService(
    httpClient: httpClient,
  );

  late final TicketService ticketService = TicketService(
    httpClient: httpClient,
  );
}
