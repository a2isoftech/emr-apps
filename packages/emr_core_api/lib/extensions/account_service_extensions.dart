import 'package:emr_core_api/emr_core_api.dart';

extension AccountServiceExtensions on AccountService {
  Future<List<PickerItem<String, String>>> pickerAccountLocations(
    String query,
  ) async {
    final results = await searchAccounts(
      query: query,
      accountSubTypes: [
        Enum$AccountSubType.CUSTOMER,
        Enum$AccountSubType.TRADER,
      ],
    );

    return results.accounts
        .expand(
          (account) => account.locations.map(
            (location) => PickerItem(
              location.code ?? '',
              location.name ?? '',
              metadata: {
                PickerItemMetadataKeys.accountCode: account.code ?? '',
                PickerItemMetadataKeys.accountName: account.name ?? '',
              },
            ),
          ),
        )
        .where(
          (data) => (data.key.isNotEmpty) && (data.value.isNotEmpty),
        )
        .toList();
  }

  Future<List<PickerItem<String, String>>> pickerHauliers(
    String query,
  ) async {
    final results = await searchAccounts(
      query: query,
      accountSubTypes: [Enum$AccountSubType.HAULIER],
    );

    return results.accounts
        .where(
          (account) =>
              (account.code?.isNotEmpty ?? false) &&
              (account.name?.isNotEmpty ?? false),
        )
        .map(
          (account) => PickerItem(account.code!, account.name!),
        )
        .toList();
  }
}
