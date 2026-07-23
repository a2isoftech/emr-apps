import 'package:emr_one_elv_core/widgets/flyout/elv_flyouts.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/flyouts/account_search/widgets/widgets.dart';

class FindLocationButton extends StatelessWidget {
  const FindLocationButton({
    required this.account,
    required this.activeTerritory,
    required this.locationChanged,
    required this.yardService,
    required this.accountService,
    required this.addressService,
    super.key,
  });

  final AccountModel account;
  final ElvTerritory activeTerritory;
  final void Function(AccountLocation selectedLocation) locationChanged;
  final YardService yardService;
  final ELVAccountService accountService;
  final AddressService addressService;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        context.pop();
        elvStandardFlyout(
          context: context,
          body: AddressSearchFlyout(
            onAddressSelected: (selectedAddress) async {
              if (account.locations.isNotEmpty) {
                final existingLocation = account.locations
                    .where(
                      (x) =>
                          x.address.line1.trim() ==
                              selectedAddress.line1.trim() &&
                          x.address.postCode.trim() ==
                              selectedAddress.postCode.trim(),
                    )
                    .firstOrNull;
                if (existingLocation != null) {
                  final selectedLocation = AccountLocation(
                    address: existingLocation.address,
                    code: existingLocation.code,
                    name: existingLocation.name,
                  );
                  locationChanged(selectedLocation);
                  return;
                }
              }

              final accountId =
                  'accounts/${activeTerritory.territoryCode()}/${account.code}';

              final locationCode = _getPostcodePrefix(selectedAddress.postCode);

              final primaryContact = account.contact
                  ?.where((x) => x.contactTypes!.any((x) => x == 'MAIN'))
                  .first;

              final response = await accountService.addOrUpdateAccountLocation(
                account: account,
                accountId: accountId,
                locationCode: locationCode,
                locationName: locationCode,
                primaryContactId: primaryContact?.id ?? '',
                address: selectedAddress,
                countryCode: activeTerritory.countryCode(),
              );
              if (response.isOk) {
                final selectedLocation = AccountLocation(
                  address: selectedAddress,
                  code: locationCode,
                  name: locationCode,
                );

                // Remove if location code exists
                account.locations.removeWhere((x) => x.code == locationCode);
                account.locations.add(selectedLocation);
                locationChanged(selectedLocation);
              }
            },
            yardService: yardService,
            addressService: addressService,
          ),
          heading: context.l10n.linkNewLocation,
        );
      },
      child: Text(context.l10n.linkNewLocation),
    );
  }

  String _getPostcodePrefix(String postcode) {
    final cleaned = postcode.replaceAll(' ', '').toUpperCase();
    return cleaned.substring(0, cleaned.length - 3);
  }

  String locationName(String accountName, Contact? contact) {
    final name = [
      contact?.firstName,
      contact?.middleName,
      contact?.lastName,
    ].where((e) => e?.trim().isNotEmpty ?? false).join(' ');

    return name.isNotEmpty ? name : accountName;
  }
}
