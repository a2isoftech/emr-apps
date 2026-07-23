import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/flyouts/account_search/widgets/widgets.dart';
import 'package:emr_sharedtypes/enums/enums.dart';
import 'package:signals/signals_flutter.dart';

class CollectionSearchFlyout extends StatefulWidget {
  const CollectionSearchFlyout({
    required this.account,
    required this.activeTerritory,
    required this.locationChanged,
    required this.yardService,
    required this.accountService,
    required this.addressService,
    required this.selectedLocationCode,
    super.key,
  });

  final AccountModel account;
  final ElvTerritory activeTerritory;
  final Future<void> Function(AccountLocation selectedLocation) locationChanged;
  final YardService yardService;
  final ELVAccountService accountService;
  final AddressService addressService;
  final String? selectedLocationCode;

  @override
  State<CollectionSearchFlyout> createState() => _CollectionSearchFlyoutState();
}

class _CollectionSearchFlyoutState extends State<CollectionSearchFlyout> {
  late final TextEditingController accountController;
  late final Signal<List<AccountLocation>> locations;

  @override
  void initState() {
    super.initState();
    accountController = TextEditingController();
    locations = Signal([...widget.account.locations]);
  }

  void searchLocation(String location) {
    final filteredLocation = widget.account.locations
        .where(
          (x) =>
              x.name.toLowerCase().contains(location.toLowerCase()) ||
              x.code.toLowerCase().contains(location.toLowerCase()),
        )
        .toList();

    locations.value = [...filteredLocation];
  }

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Column(
          children: [
            AccountSearchBox(
              accountController: accountController,
              isSearching: false,
              onChanged: searchLocation,
              label: context.l10n.location,
            ),
            if (locations.value.isNotEmpty)
              Expanded(
                child: Watch((_) {
                  return ListView.builder(
                    itemCount: locations.value.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final selectedLocation = locations.value[index];
                      final isSelected = _isAccountSelected(
                        selectedLocation.code,
                      );

                      final colorScheme = Theme.of(context).colorScheme;
                      final textColor = isSelected
                          ? colorScheme.onTertiary
                          : colorScheme.onSurface;

                      TextSpan coloredSpan(String? text) => TextSpan(
                        text: text,
                        style: TextStyle(color: textColor),
                      );

                      return ListTile(
                        selected: isSelected,
                        selectedColor: colorScheme.onSurface,
                        selectedTileColor: colorScheme.tertiary,
                        onTap: () async {
                          await widget.locationChanged(selectedLocation);
                          if (context.mounted) {
                            context.pop();
                          }
                        },
                        title: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: context.l10n.location,
                                style: Theme.of(context).textTheme.bodyLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: textColor,
                                    ),
                              ),
                              coloredSpan(': '),
                              coloredSpan(selectedLocation.code),
                              coloredSpan('-'),
                              coloredSpan(selectedLocation.name),
                            ],
                          ),
                        ),
                        subtitle: Text.rich(
                          TextSpan(
                            children: [
                              coloredSpan(selectedLocation.address.line1),
                              coloredSpan(','),
                              coloredSpan(selectedLocation.address.line2),
                              coloredSpan(','),
                              coloredSpan(selectedLocation.address.line3),
                              coloredSpan(','),
                              coloredSpan(selectedLocation.address.line4),
                              coloredSpan(','),
                              coloredSpan(selectedLocation.address.line5),
                              coloredSpan(','),
                              coloredSpan(selectedLocation.address.line6),
                              coloredSpan(','),
                              coloredSpan(selectedLocation.address.country),
                              coloredSpan('-'),
                              coloredSpan(selectedLocation.address.postCode),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }),
              ),
            if (widget.account.accountType == AccountTypeEnum.retail) ...[
              Padding(
                padding: const EdgeInsets.all(Insets.gutter / 2),
                child: Text(context.l10n.or),
              ),

              FindLocationButton(
                account: widget.account,
                activeTerritory: widget.activeTerritory,
                locationChanged: widget.locationChanged,
                yardService: widget.yardService,
                accountService: widget.accountService,
                addressService: widget.addressService,
              ),
            ],
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    accountController.dispose();
    super.dispose();
  }

  bool _isAccountSelected(String locationCode) {
    return (widget.selectedLocationCode ?? '') == locationCode;
  }
}
