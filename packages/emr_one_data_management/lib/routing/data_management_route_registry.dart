import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/controllers/base_settings_controller.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/controllers/filters/yard_search_filter_controller.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/company_bank_accounts/company_bank_account_form.dart';
import 'package:emr_one_data_management/screens/company_bank_accounts/company_bank_account_search.dart';
import 'package:emr_one_data_management/screens/example_editable_grid/example_editable_grid.dart';
import 'package:emr_one_data_management/screens/notification_test/notification_test_screen.dart';
import 'package:emr_one_data_management/screens/payments/yard_data_source.dart';
import 'package:emr_one_data_management/screens/query_layout_example/query_layout_explorer.dart';
import 'package:emr_one_data_management/screens/screens.dart';
import 'package:emr_one_data_management/screens/stock_take_configs/stock_take_config_form.dart';
import 'package:emr_one_data_management/screens/stock_take_configs/stock_take_config_search.dart';
import 'package:emr_one_data_management/screens/weighbridge_configurations/weighbridge_config_preferences.dart';
import 'package:emr_one_data_management/screens/weighbridge_configurations/weighbridge_configuration_form.dart';
import 'package:emr_one_data_management/screens/weighbridge_configurations/weighbridge_configuration_search.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridge_preferences.dart';
import 'package:emr_one_data_management/screens/yards/yard_data_source.dart';
import 'package:emr_one_data_management/screens/yards/yard_form.dart';
import 'package:emr_one_data_management/screens/yards/yard_search.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

EmrQueryLayoutController<Yard>? _yardSearchQueryLayoutController;
EmrQueryLayoutController<PaymentRules>?
_yardPaymentRulesSearchQueryLayoutController;

class DataManagementRouteRegistry {
  static Map<String, Widget Function(BuildContext, EoRouterState)>
  widgetBuilders = {
    EmrOneDataManagementConstants.kRouteJobRoles: (context, state) =>
        const JobRolesSearch(),
    EmrOneDataManagementConstants.kRouteJobRolesForm: (context, state) =>
        JobRoleForm(id: state.params['id']!),
    EmrOneDataManagementConstants.kRouteSystemRoles: (context, state) =>
        const SystemRolesSearch(),
    EmrOneDataManagementConstants.kRouteSystemRolesForm: (context, state) =>
        SystemRoleForm(id: state.params['id']!),
    EmrOneDataManagementConstants.kRouteUserSearch: (context, state) =>
        const UserSearch(),
    EmrOneDataManagementConstants.kRouteUserForm: (context, state) =>
        UserForm(userId: 'users/${state.params['id']}'),
    EmrOneDataManagementConstants.kRouteWeighbridgeProfilesSearch:
        (context, state) => WeighbridgeProfilesSearch(
          userInfoService: Provider.of<UserInfoService>(context),
          preferences: WeighbridgePreferences(),
        ),
    EmrOneDataManagementConstants.kRouteWeighbridgeProfileForm:
        (context, state) => WeighbridgeForm(
          profileId: state.params['id'] ?? '',
          clone: state.queryParams['clone']?.toLowerCase() == 'true',
          userInfoService: Provider.of<UserInfoService>(context),
        ),
    'companies': (context, state) => const CompanySearch(),
    'company-add': (context, state) => const CompanyForm(),
    'company-edit': (context, state) =>
        CompanyForm(code: state.params['code'].toString()),
    EmrOneDataManagementConstants.kRouteCompanyBankAccountSearch:
        (context, state) => const CompanyBankAccountSearch(),
    EmrOneDataManagementConstants.kRouteCompanyBankAccountForm:
        (context, state) =>
            CompanyBankAccountForm(code: '${state.params['code']}'),
    EmrOneDataManagementConstants.kRouteChequeBooks: (context, state) =>
        const ChequeBooksScreen(),
    EmrOneDataManagementConstants.kRouteTerritorySearch: (context, state) =>
        const TerritorySearch(),
    EmrOneDataManagementConstants.kRouteTerritoryForm: (context, state) =>
        TerritoryForm(code: '${state.params['code']}'),
    EmrOneDataManagementConstants.kRouteYardSearch: (context, state) {
      final httpClient = Provider.of<CoreApiClient>(context);

      Future<void> handleErrors(String errorMessage) async {
        await EmrModal.showMessageBar(
          context,
          errorMessage,
          messageType: MessageBarTypes.error,
        );
      }

      // Initialize once
      if (_yardSearchQueryLayoutController == null) {
        final referenceDataService = ReferenceDataService(
          httpClient: httpClient,
        );

        final yardSearchDataSource = YardsDataSource(
          referenceDataService: referenceDataService,
          errorHandler: handleErrors,
        );

        final yardSearchFilterController = YardSearchFilterController(
          referenceDataService: referenceDataService,
        );

        _yardSearchQueryLayoutController = EmrQueryLayoutController<Yard>(
          dataSource: yardSearchDataSource,
          filterController: yardSearchFilterController,
          supportedViewModes: {EmrQueryLayoutViewMode.grid},
        );
      }

      return YardSearch(
        queryLayoutController: _yardSearchQueryLayoutController!,
      );
    },
    EmrOneDataManagementConstants.kRouteYardForm: (context, state) =>
        YardForm(code: '${state.params['code']}'),
    EmrOneDataManagementConstants
        .kRouteYardPaymentRuleSearch: (context, state) {
      final httpClient = Provider.of<CoreApiClient>(context);

      Future<void> handleErrors(String errorMessage) async {
        await EmrModal.showMessageBar(
          context,
          errorMessage,
          messageType: MessageBarTypes.error,
        );
      }

      // Initialize once
      if (_yardPaymentRulesSearchQueryLayoutController == null) {
        final referenceDataService = ReferenceDataService(
          httpClient: httpClient,
        );

        final yardSearchDataSource = YardPaymentRulesDataSource(
          referenceDataService: referenceDataService,
          errorHandler: handleErrors,
        );

        final yardSearchFilterController = YardSearchFilterController(
          referenceDataService: referenceDataService,
        );

        _yardPaymentRulesSearchQueryLayoutController =
            EmrQueryLayoutController<PaymentRules>(
              dataSource: yardSearchDataSource,
              filterController: yardSearchFilterController,
              supportedViewModes: {EmrQueryLayoutViewMode.grid},
            );
      }

      return YardPaymentRuleSearch(
        queryLayoutController: _yardPaymentRulesSearchQueryLayoutController!,
      );
    },
    EmrOneDataManagementConstants.kRouteYardPaymentRuleForm: (context, state) =>
        YardPaymentRuleForm(
          yardCode: state.params['yardCode']!,
          territoryCode: state.params['territoryCode'] ?? '',
        ),
    EmrOneDataManagementConstants.kRouteWeighbridgeGroupsSearch:
        (context, state) => WeighbridgeGroupsSearch(),
    EmrOneDataManagementConstants.kRouteWeighbridgeGroupsForm:
        (context, state) => WeighbridgeGroupsForm(
          yardCode: '${state.params['code']}',
          userInfoService: Provider.of<UserInfoService>(context),
        ),
    'ExampleForm': (context, state) => const ExampleForm(),
    'QueryLayoutExample': (context, state) => QueryLayoutExplorer(),
    'ExampleForm2': (context, state) => const ExampleForm2(),
    'NotificationTest': (context, state) => const NotificationTestScreen(),
    EmrOneDataManagementConstants.kRouteWeighbridgeConfigurations:
        (context, state) => WeighbridgeConfigurationsSearch(
          userInfoService: Provider.of<UserInfoService>(context),
          preferences: WeighbridgeConfigPreferences(),
        ),
    EmrOneDataManagementConstants.kRouteWeighbridgeConfigForm:
        (context, state) => WeighbridgeConfigurationForm(
          id: state.params['id'] ?? '',
          clone: state.queryParams['clone']?.toLowerCase() == 'true',
          userInfoService: Provider.of<UserInfoService>(context),
        ),
    'workflows': (context, state) {
      final settingsController =
          Provider.of<BaseSettingsController>(context, listen: false)
              as SettingsController;
      return WorkflowsSearch(
        defaultTerritoryCode: settingsController.territory,
      );
    },
    'ExampleEditableGrid': (context, state) => const ExampleEditableGrid(),
    EmrOneDataManagementConstants.kRouteStockTakeConfigs: (context, state) =>
        const StockTakeConfigSearch(),
    EmrOneDataManagementConstants.kRouteStockTakeConfigsEdit: (context, state) {
      return StockTakeConfigForm(yardCode: state.params['yardCode'] ?? '');
    },
  };
}
