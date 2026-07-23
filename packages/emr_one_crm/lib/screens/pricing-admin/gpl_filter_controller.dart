import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/user_info/managed_buyer.dart';
import 'package:emr_one_crm/graphql/trader/queries/tagging/get_active_tag_templates.graphql.dart';
import 'package:emr_one_crm/models/expiration_date.dart';
import 'package:emr_one_crm/models/models.dart' hide Publication;
import 'package:emr_one_crm/services/gpl_service.dart';
import 'package:emr_one_crm/temp/managed_buyers_data.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/pricing/publication.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class GplFilterController extends EmrFilterController {
  GplFilterController(
    this.httpClient,
    this.gplService,
    this.coreApi,
    this.appConfig,
  ) : super(
          filters: [],
          filterContentBuilder: (context, filter, controller) {
            final buyerIdFilter = controller.tryGetFilter<String>(
              key: GplFilterController.kManagedBuyerKey,
            );
            final userInfoService = Provider.of<UserInfoService>(context);
            switch (filter.key) {
              case kManagedBuyerKey:
                return EmrFilterAutoComplete<ManagedBuyer, String>(
                  const Key(kManagedBuyerKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      ManagedBuyersData.getSuggestions(
                    httpClient,
                    userInfoService,
                    appConfig,
                    pattern,
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion.username,
                  getValue: (suggestion) => suggestion.azureId,
                );
              case kPartyAccountNoKey:
                return EmrFilterAutoComplete<Account, String>(
                  const Key(kPartyAccountNoKey),
                  filter,
                  controller,
                  (pattern, filterController) => coreApi.accountService
                      .searchAccountsWithFilters(
                        pattern,
                        accountManagerFilter: buyerIdFilter,
                        primaryManagerOnly: true,
                      )
                      .then((value) => value.items),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion.name ?? '',
                  getSubtitle: (suggestion) => suggestion.code ?? '',
                  getValue: (suggestion) => suggestion.code ?? '',
                  multi: true,
                );
              case kGradeCodeKey:
                return EmrFilterAutoComplete<Grade, String>(
                  const Key(kGradeCodeKey),
                  filter,
                  controller,
                  (pattern, filterController) {
                    final gradeTypes = filterController
                        .tryGetFilter<List<String>>(
                          key: GplFilterController.kGradeTypeKey,
                        )
                        ?.value;
                    return gplService.getGrades(
                      gradeTypes,
                      pattern,
                    );
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion.description,
                  getSubtitle: (suggestion) => suggestion.gradeCode,
                  getValue: (suggestion) => suggestion.gradeCode,
                  multi: true,
                );
              case kYardCode:
                return EmrFilterAutoComplete<Yard, String>(
                  const Key(kYardCode),
                  filter,
                  controller,
                  (pattern, filterController) => Future<Iterable<Yard>>.value(
                    userInfoService.userInfo.yards.where(
                      (e) =>
                          e.yardCode
                              .toLowerCase()
                              .contains(pattern.toLowerCase()) ||
                          e.name.toLowerCase().contains(pattern.toLowerCase()),
                    ),
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion.name,
                  getSubtitle: (suggestion) => suggestion.yardCode,
                  getValue: (suggestion) => suggestion.yardCode,
                  multi: true,
                );
              case kTagsKey:
                return EmrFilterAutoComplete<
                    Query$GetTagNames$tagTemplates$nodes, String>(
                  const Key(kTagsKey),
                  filter,
                  controller,
                  (pattern, filterController) => Future<
                      Iterable<Query$GetTagNames$tagTemplates$nodes>>.value(
                    gplService.getTagTemplates(),
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion.reason,
                  getValue: (suggestion) => suggestion.reason,
                  multi: true,
                );
              case kGradeTypeKey:
                return EmrFilterAutoComplete<String, String>(
                  const Key(kGradeTypeKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      gplService.getGradeTypes(pattern),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                  multi: true,
                );
              case kExpiration:
                return EmrFilterAutoComplete<ExpirationDate, DateTime>(
                  const Key(kExpiration),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      Future<Iterable<ExpirationDate>>.value(
                    gplService.getExpirationDates(context),
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion.desc,
                  getValue: (suggestion) => suggestion.endDate,
                );
              case kPublicationIdKey:
                return EmrFilterAutoComplete<Publication, String>(
                  const Key(kPublicationIdKey),
                  filter,
                  controller,
                  (_, filterController) =>
                      coreApi.accountService.getAllPublications(),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion.name,
                  getValue: (suggestion) => suggestion.id,
                );
            }

            throw Exception(
              'filterContentBuilder should return a Widget for ${filter.key}',
            );
          },
        );

  final BaseClient httpClient;
  final GplService gplService;
  final CoreApiService coreApi;
  final AppConfig appConfig;

  // Required filters.
  static const kManagedBuyerKey = 'Manager';
  static const kPartyAccountNoKey = 'AccountNo';

  // Optional filters.
  static const kGradeTypeKey = 'gradeType';
  static const kGradeCodeKey = 'ProductCode';
  static const kPublicationIdKey = 'PublicationId';
  static const kTagsKey = 'tags';
  static const kYardCode = 'Yard';
  static const kExpiration = 'expirationDate';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    if (!containsFilter(key: kPartyAccountNoKey, withValue: true) &&
        !containsFilter(key: kManagedBuyerKey, withValue: true)) {
      return [
        EmrFilterModel<String>(
          key: kManagedBuyerKey,
          name: 'Buyer',
        ),
        EmrFilterModel<List<String>>(
          key: GplFilterController.kPartyAccountNoKey,
          name: 'Party',
        ),
      ];
    }
    if (!containsFilter(key: kGradeTypeKey, withValue: true)) {
      return [
        EmrFilterModel<List<String>>(
          key: kGradeTypeKey,
          name: 'Grade Type',
        ),
      ];
    }
    return [
      if (containsFilter(key: kManagedBuyerKey, withValue: true) &&
          !containsFilter(key: kPartyAccountNoKey, withValue: true))
        EmrFilterModel<List<String>>(
          key: GplFilterController.kPartyAccountNoKey,
          name: 'Party',
        ),
      if (!containsFilter(key: GplFilterController.kPublicationIdKey))
        EmrFilterModel<String>(
          key: GplFilterController.kPublicationIdKey,
          name: 'Price List',
        ),
      if (!containsFilter(key: GplFilterController.kGradeCodeKey))
        EmrFilterModel<List<String>>(
          key: GplFilterController.kGradeCodeKey,
          name: 'Grade',
        ),
      if (!containsFilter(key: GplFilterController.kYardCode))
        EmrFilterModel<List<String>>(
          key: GplFilterController.kYardCode,
          name: 'Yard',
        ),
      if (!containsFilter(key: GplFilterController.kTagsKey))
        EmrFilterModel<List<String>>(
          key: GplFilterController.kTagsKey,
          name: 'Tag',
        ),
      if (!containsFilter(key: GplFilterController.kExpiration))
        EmrFilterModel<DateTime>(
          key: GplFilterController.kExpiration,
          name: 'Expiration Date',
        ),
    ];
  }
}
