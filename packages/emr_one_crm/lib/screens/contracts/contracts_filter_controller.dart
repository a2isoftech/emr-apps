import 'package:emr_core_api/services/core_api_service.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/expiration_date.dart';
import 'package:emr_one_crm/screens/contracts/contracts_datasource.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class ContractsFilterController extends EmrFilterController {
  ContractsFilterController(
    this.httpClient,
    this.coreapiService,
    this.contractsDataSource,
    this.settingsController,
  ) : super(
        filters: [],
        filterContentBuilder: (context, filter, controller) =>
            _buildFilterContents(
              context,
              filter,
              controller,
              httpClient,
              coreapiService,
              contractsDataSource,
              settingsController,
            ),
      );

  final BaseClient httpClient;
  final CoreApiService coreapiService;
  final ContractsDataSource contractsDataSource;
  final SettingsController settingsController;

  static Widget _buildFilterContents(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
    BaseClient httpClient,
    CoreApiService coreapiService,
    ContractsDataSource contractsDataSource,
    SettingsController settingsController,
  ) {
    final buyerFilter = controller.tryGetFilter<String>(
      key: ContractsFilterController.kAccountCodeKey,
    );

    return switch (filter.key) {
      kAccountCodeKey => _accountCodeFilterWidget(
        context,
        filter,
        controller,
        buyerFilter,
        httpClient,
        coreapiService,
        contractsDataSource,
        settingsController,
      ),
      kStatusKey => _statusFilterWidget(
        context,
        filter,
        controller,
        httpClient,
        coreapiService,
        contractsDataSource,
      ),
      kOrderBookKey => _orderBookFilterWidget(
        context,
        filter,
        controller,
        httpClient,
        coreapiService,
        contractsDataSource,
      ),

      kDeliveryMethodKey => _deliveryMethodFilterWidget(
        context,
        filter,
        controller,
        httpClient,
        coreapiService,
        settingsController,
      ),
      kProductsKey => _productsFilterWidget(
        context,
        filter,
        controller,
        httpClient,
        coreapiService,
      ),
      kPricingKey => _pricingFilterWidget(
        context,
        filter,
        controller,
        httpClient,
        coreapiService,
      ),
      _ => throw ArgumentError.value(filter.key, 'filter.key'),
    };
  }

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    final filterKeys = [
      kAccountCodeKey,
      kStatusKey,
      kOrderBookKey,
      kDeliveryMethodKey,
      kProductsKey,
      kPricingKey,
    ];

    return [
      if (!containsFilter(key: kAccountCodeKey, withValue: true))
        EmrFilterModel<List<String>>(key: kAccountCodeKey, name: 'Account'),
      if (!containsFilter(key: kStatusKey))
        EmrFilterModel<List<String>>(key: kStatusKey, name: 'Status'),
      if (!containsFilter(key: kOrderBookKey) && anyFilterApplied(filterKeys))
        EmrFilterModel<List<String>>(key: kOrderBookKey, name: 'Order Book'),
      if (!containsFilter(key: kDeliveryMethodKey))
        EmrFilterModel<List<String>>(
          key: kDeliveryMethodKey,
          name: 'Delivery Method',
        ),
      if (!containsFilter(key: kProductsKey))
        EmrFilterModel<List<String>>(key: kProductsKey, name: 'Product'),
      if (!containsFilter(key: kPricingKey))
        EmrFilterModel<List<String>>(key: kPricingKey, name: 'Pricing Basis'),
    ];
  }

  bool anyFilterApplied(List<String> filterKeys) {
    for (final key in filterKeys) {
      if (containsFilter(key: key, withValue: true)) return true;
    }
    return false;
  }

  static Widget _productsFilterWidget(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
    BaseClient httpClient,
    CoreApiService coreapiService,
  ) {
    return EmrFilterAutoComplete<ExpirationDate, DateTime>(
      const Key(kProductsKey),
      filter,
      controller,
      (pattern, controller) async {
        return [];
      },
      close: Navigator.of(context).pop,
      getTitle: (suggestion) => suggestion.desc,
      getValue: (suggestion) => suggestion.endDate,
    );
  }

  static Widget _orderBookFilterWidget(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
    BaseClient httpClient,
    CoreApiService coreapiService,
    ContractsDataSource contractsDataSource,
  ) {
    return EmrFilterAutoComplete<String, String>(
      const Key(kOrderBookKey),
      filter,
      controller,
      (pattern, filterController) async {
        return [];
      },
      close: Navigator.of(context).pop,
      getTitle: (suggestion) => suggestion,
      getSubtitle: (suggestion) => suggestion,
      getValue: (suggestion) => suggestion,
      multi: true,
    );
  }

  static Widget _accountCodeFilterWidget(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
    EmrFilterModel<String>? buyerFilter,
    BaseClient httpClient,
    CoreApiService coreApiService,
    ContractsDataSource contractsDataSource,
    SettingsController settingsController,
  ) {
    final userInfo = Provider.of<UserInfoService>(context).userInfo;
    final buyersFilter = userInfo.managedBuyers
        .map((m) => m.username.replaceAll('.', ' '))
        .toList();

    return EmrFilterAutoComplete<Account, String>(
      const Key(kAccountCodeKey),
      filter,
      controller,
      (pattern, filterController) => coreApiService.accountService
          .searchAccountsByManagers(
            pattern,
            accountManagerFilter: buyerFilter != null
                ? [toPascalCase(buyerFilter.value!)]
                : buyersFilter,
            territories: [settingsController.territory],
            primaryManagerOnly: true,
          )
          .then((value) => value.items),
      close: Navigator.of(context).pop,
      getTitle: (suggestion) => suggestion.code ?? '',
      getSubtitle: (suggestion) => suggestion.name ?? '',
      getValue: (suggestion) => suggestion.code ?? '',
      multi: true,
    );
  }

  static Widget _statusFilterWidget(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
    BaseClient httpClient,
    CoreApiService coreapiService,
    ContractsDataSource contractsDataSource,
  ) {
    return EmrFilterAutoComplete<String, String>(
      const Key(kStatusKey),
      filter,
      controller,
      (pattern, filterController) =>
          coreapiService.contractService.getContractStatuses(pattern, context),
      close: Navigator.of(context).pop,
      getTitle: (suggestion) => suggestion,
      getValue: (suggestion) => suggestion,
      multi: true,
    );
  }

  static Widget _deliveryMethodFilterWidget(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
    BaseClient httpClient,
    CoreApiService coreapiService,
    SettingsController settingsController,
  ) {
    return EmrFilterAutoComplete<String, String>(
      const Key(kDeliveryMethodKey),
      filter,
      controller,
      (pattern, filterController) {
        return coreapiService.contractService.getDeliveryMethod(
          pattern,
          context,
        );
      },
      close: Navigator.of(context).pop,
      getTitle: (suggestion) => suggestion,
      getValue: (suggestion) => suggestion,
      multi: true,
    );
  }

  static Widget _pricingFilterWidget(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
    BaseClient httpClient,
    CoreApiService coreapiService,
  ) {
    return EmrFilterAutoComplete<String, String>(
      const Key(kPricingKey),
      filter,
      controller,
      (pattern, filterController) => coreapiService.contractService
          .getContractPricingBasis(pattern, context),
      close: Navigator.of(context).pop,
      getTitle: (suggestion) => suggestion,
      getValue: (suggestion) => suggestion,
      multi: true,
    );
  }

  static String toPascalCase(String input) {
    // Split the string by spaces, then capitalize each word
    return input
        .split(' ')
        .map(
          (word) => word.isNotEmpty
              ? word[0].toUpperCase() + word.substring(1).toLowerCase()
              : '',
        )
        .join(' ');
  }

  static const kAccountCodeKey = 'AccountCode';
  static const kStatusKey = 'Status';
  static const kOrderBookKey = 'ContractOrderBookTypeName';
  static const kDeliveryMethodKey = 'DeliveryMethod';
  static const kProductsKey = 'Products';
  static const kPricingKey = 'PricingBasis';
}
