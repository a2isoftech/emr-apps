import 'package:emr_core_api/models/models.dart';
import 'package:emr_core_api/services/core_api_service.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/user_info/managed_buyer.dart';
import 'package:emr_one_crm/models/expiration_date.dart';
import 'package:emr_one_crm/screens/pricing-admin/admin_pricing_datasource.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class AdminPricingFilterController extends EmrFilterController {
  AdminPricingFilterController(
    this.httpClient,
    this.coreapiService,
    this.adminPricingDataSource,
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
              adminPricingDataSource,
              settingsController,
            ),
      );

  final BaseClient httpClient;
  final CoreApiService coreapiService;
  final AdminPricingDatasource adminPricingDataSource;
  final SettingsController settingsController;

  static Widget _buildFilterContents(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
    BaseClient httpClient,
    CoreApiService coreapiService,
    AdminPricingDatasource adminPricingDataSource,
    SettingsController settingsController,
  ) {
    final buyerFilter = controller.tryGetFilter<String>(
      key: AdminPricingFilterController.kManagedBuyerKey,
    );

    return switch (filter.key) {
      kManagedBuyerKey => _managedBuyerFilterWidget(
        context,
        filter,
        controller,
        httpClient,
      ),
      kAccountCodeKey => _accountCodeFilterWidget(
        context,
        filter,
        controller,
        buyerFilter,
        httpClient,
        coreapiService,
        adminPricingDataSource,
        settingsController,
      ),
      kProductFamilyKey => _productFamilyFilterWidget(
        context,
        filter,
        controller,
        httpClient,
        coreapiService,
        adminPricingDataSource,
      ),
      kProductCodeKey => _productCodeFilterWidget(
        context,
        filter,
        controller,
        httpClient,
        coreapiService,
        adminPricingDataSource,
      ),
      kPublicationNameKey => _publicationNameFilterWidget(
        context,
        filter,
        controller,
        httpClient,
        coreapiService,
        adminPricingDataSource,
      ),
      kYardCodeKey => _yardFilterWidget(
        context,
        filter,
        controller,
        httpClient,
        coreapiService,
        settingsController,
      ),
      kExpiration => _tagExpiryDateFilterWidget(
        context,
        filter,
        controller,
        httpClient,
        coreapiService,
      ),
      kTagsKey => _tagsNameFilterWidget(
        context,
        filter,
        controller,
        httpClient,
        coreapiService,
        settingsController,
      ),
      _ => throw ArgumentError.value(filter.key, 'filter.key'),
    };
  }

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    final filterKeys = [
      kManagedBuyerKey,
      kAccountCodeKey,
      kProductFamilyKey,
      kProductCodeKey,
      kYardCodeKey,
    ];

    return [
      if (!containsFilter(key: kAccountCodeKey, withValue: true))
        EmrFilterModel<List<String>>(key: kAccountCodeKey, name: 'Account'),
      if (!containsFilter(key: kManagedBuyerKey, withValue: true))
        EmrFilterModel<String>(key: kManagedBuyerKey, name: 'Manager'),
      if (!containsFilter(key: kProductFamilyKey, withValue: true))
        EmrFilterModel<List<String>>(
          key: kProductFamilyKey,
          name: 'Product Family',
        ),
      if (!containsFilter(key: kPublicationNameKey) &&
          anyFilterApplied(filterKeys))
        EmrFilterModel<String>(key: kPublicationNameKey, name: 'Price List'),
      if (!containsFilter(key: kProductCodeKey))
        EmrFilterModel<List<String>>(key: kProductCodeKey, name: 'Product'),
      if (!containsFilter(key: kYardCodeKey))
        EmrFilterModel<List<String>>(key: kYardCodeKey, name: 'Yard'),
      if (anyFilterApplied(filterKeys) &&
          !containsFilter(key: AdminPricingFilterController.kExpiration))
        EmrFilterModel<DateTime>(
          key: AdminPricingFilterController.kExpiration,
          name: 'Tag Expiration Date',
        ),
      if (anyFilterApplied(filterKeys) &&
          !containsFilter(key: AdminPricingFilterController.kTagsKey))
        EmrFilterModel<List<String>>(key: kTagsKey, name: 'Tag Reasons'),
    ];
  }

  bool anyFilterApplied(List<String> filterKeys) {
    for (final key in filterKeys) {
      if (containsFilter(key: key, withValue: true)) return true;
    }
    return false;
  }

  static Widget _tagExpiryDateFilterWidget(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
    BaseClient httpClient,
    CoreApiService coreapiService,
  ) {
    return EmrFilterAutoComplete<ExpirationDate, DateTime>(
      const Key(kExpiration),
      filter,
      controller,
      (pattern, controller) =>
          _getExpirationDates(context, pattern, controller),
      close: Navigator.of(context).pop,
      getTitle: (suggestion) => suggestion.desc,
      getValue: (suggestion) => suggestion.endDate,
    );
  }

  static Widget _productCodeFilterWidget(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
    BaseClient httpClient,
    CoreApiService coreapiService,
    AdminPricingDatasource adminPricingDataSource,
  ) {
    return EmrFilterAutoComplete<Product, String>(
      const Key(kProductCodeKey),
      filter,
      controller,
      (pattern, filterController) async {
        final productFamilies = filterController
            .tryGetFilter<List<String>>(
              key: AdminPricingFilterController.kProductFamilyKey,
            )
            ?.value;

        final products = await coreapiService.pricingService.getProducts(
          productFamilies,
          query: pattern,
        );

        return products;
      },
      close: Navigator.of(context).pop,
      getTitle: (suggestion) => suggestion.code,
      getSubtitle: (suggestion) => suggestion.description,
      getValue: (suggestion) => suggestion.code,
      multi: true,
    );
  }

  static Widget _managedBuyerFilterWidget(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
    BaseClient httpClient,
  ) {
    final userInfo = Provider.of<UserInfoService>(context).userInfo;
    return EmrFilterAutoComplete<ManagedBuyer, String>(
      const Key(kManagedBuyerKey),
      filter,
      controller,
      (pattern, filterController) {
        final regex = RegExp(pattern, caseSensitive: false);
        final results = userInfo.managedBuyers
            .where((b) => b.username.replaceAll('.', ' ').contains(regex))
            .toList();

        final sortedResults = results.toList()
          ..sort((a, b) => a.username.compareTo(b.username));

        return Future.value(sortedResults);
      },
      close: Navigator.of(context).pop,
      getTitle: (suggestion) => suggestion.username.replaceAll('.', ' '),
      getValue: (suggestion) => suggestion.username.replaceAll('.', ' '),
    );
  }

  static Widget _accountCodeFilterWidget(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
    EmrFilterModel<String>? buyerFilter,
    BaseClient httpClient,
    CoreApiService coreApiService,
    AdminPricingDatasource adminPricingDataSource,
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

  static Widget _productFamilyFilterWidget(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
    BaseClient httpClient,
    CoreApiService coreapiService,
    AdminPricingDatasource adminPricingDataSource,
  ) {
    return EmrFilterAutoComplete<String, String>(
      const Key(kProductFamilyKey),
      filter,
      controller,
      (pattern, filterController) =>
          coreapiService.pricingService.getProductFamilies(pattern),
      close: Navigator.of(context).pop,
      getTitle: (suggestion) => suggestion,
      getSubtitle: (suggestion) => suggestion,
      getValue: (suggestion) => suggestion,
      multi: true,
    );
  }

  static Widget _publicationNameFilterWidget(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
    BaseClient httpClient,
    CoreApiService coreapiService,
    AdminPricingDatasource adminPricingDataSource,
  ) {
    return EmrFilterAutoComplete<String, String>(
      const Key(kProductFamilyKey),
      filter,
      controller,
      (pattern, filterController) async {
        return pattern.isEmpty
              ? adminPricingDataSource.getPublications
              : adminPricingDataSource.getPublications
                    .where(
                      (publicationName) => publicationName
                          .toLowerCase()
                          .contains(pattern.toLowerCase()),
                    )
                    .toList()
          ..sort((a, b) => a.compareTo(b));
      },
      close: Navigator.of(context).pop,
      getTitle: (suggestion) => suggestion,
      getValue: (suggestion) => suggestion,
    );
  }

  static Widget _yardFilterWidget(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
    BaseClient httpClient,
    CoreApiService coreapiService,
    SettingsController settingsController,
  ) {
    final userInfo = Provider.of<UserInfoService>(context).userInfo;
    final territoryCodes = [settingsController.territory];

    return EmrFilterAutoComplete<Yard, String>(
      const Key(kYardCodeKey),
      filter,
      controller,
      (pattern, filterController) {
        final matches = coreapiService.pricingService.getYards(
          territoryCodes: territoryCodes,
          query: pattern,
          yardCodes: userInfo.yards.map((y) => y.yardCode).toList(),
        );

        return Future.value(matches);
      },
      close: Navigator.of(context).pop,
      getTitle: (suggestion) => suggestion.yardCode,
      getSubtitle: (suggestion) => suggestion.name,
      getValue: (suggestion) => suggestion.yardCode,
      multi: true,
    );
  }

  static Widget _tagsNameFilterWidget(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
    BaseClient httpClient,
    CoreApiService coreapiService,
    SettingsController settingsController,
  ) {
    return EmrFilterAutoComplete<TagTemplateOutput, String>(
      const Key(kTagsKey),
      filter,
      controller,
      (pattern, filterController) =>
          coreapiService.pricingService.getTagTemplates(
            territoryIds: ['territories/${settingsController.territory}'],
            query: pattern,
          ),
      close: Navigator.of(context).pop,
      getTitle: (suggestion) => suggestion.reason,
      getValue: (suggestion) => suggestion.reason,
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

  // Required filters.
  static const kManagedBuyerKey = 'Manager';
  static const kAccountCodeKey = 'AccountCode';

  static const kProductFamilyKey = 'ProductFamily';
  static const kProductCodeKey = 'ProductCode';
  static const kPublicationNameKey = 'PublicationName';
  static const kTagsKey = 'TagsReasons';
  static const kYardCodeKey = 'Yard';
  static const kExpiration = 'ExpirationDate';

  static Future<Iterable<ExpirationDate>> _getExpirationDates(
    BuildContext context,
    String pattern,
    EmrFilterController filterController,
  ) {
    final now = DateTime.now();
    final startDate = now.month == 12
        ? DateTime(now.year + 1)
        : DateTime(now.year, now.month + 1);
    final expirationDates = <ExpirationDate>[
      ExpirationDate(
        context.l10n.yardLiveLoadDateFilterThisWeek,
        DateTime.now().add(const Duration(days: 7)),
      ),
      ExpirationDate(
        context.l10n.yardLiveLoadDateFilterNextWeek,
        DateTime.now().add(const Duration(days: 14)),
      ),
      ExpirationDate(
        context.l10n.thisMonth,
        startDate.add(const Duration(days: -1)),
      ),
    ];

    return Future.value(expirationDates);
  }
}
