import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/address_helper.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/address.dart';
import 'package:flutter/material.dart';

class ContactAddressSection extends EmrTabBarVerticalViewCard {
  ContactAddressSection({
    required super.title,
    required ManageContactController controller,
    super.key,
  }) : super(child: _ContactAddressSectionContent(controller: controller));
}

class _ContactAddressSectionContent extends StatefulWidget {
  const _ContactAddressSectionContent({required this.controller});

  final ManageContactController controller;

  @override
  State<_ContactAddressSectionContent> createState() =>
      _ContactAddressSectionContentState();
}

class _ContactAddressSectionContentState
    extends State<_ContactAddressSectionContent> {
  final _addressLookupBinding = ValueNotifier<AddressLookupResult?>(null);
  final _addressOptionsNotifier = ValueNotifier<Map<Address, String>>({});
  ValueNotifier<Address>? _radioBinding;
  VoidCallback? _radioListener;

  ManageContactController get controller => widget.controller;

  @override
  void initState() {
    super.initState();
    _refreshOptions();
    _initBinding();
  }

  @override
  void dispose() {
    if (_radioBinding != null && _radioListener != null) {
      _radioBinding!.removeListener(_radioListener!);
    }
    _radioBinding?.dispose();
    _addressLookupBinding.dispose();
    _addressOptionsNotifier.dispose();
    super.dispose();
  }

  void _refreshOptions() {
    final addresses = controller.account!.addresses
        .whereType<Address>()
        .toList();
    _addressOptionsNotifier.value = {
      for (final a in addresses) a: formatAddress(a),
    };
  }

  void _initBinding() {
    final existingAddresses = controller.account!.addresses
        .whereType<Address>()
        .toList();

    if (existingAddresses.isEmpty) return;

    final initialAddress = existingAddresses.firstWhere(
      (a) => a.toString() == controller.data.address.value?.toString(),
      orElse: () => existingAddresses.first,
    );

    _radioBinding = ValueNotifier<Address>(initialAddress);

    _radioListener = () {
      controller.setAddress(_radioBinding!.value);
    };

    _radioBinding!.addListener(_radioListener!);
    controller.setAddress(initialAddress);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (_radioBinding != null)
            EmrRadioListFormField<Address>(
              binding: _radioBinding!,
              options: _addressOptionsNotifier,
            ),
          ExpansionTileTheme(
            data: ExpansionTileThemeData(
              backgroundColor: Theme.of(context).colorScheme.surface,
              collapsedBackgroundColor: Theme.of(context).colorScheme.surface,
              iconColor: Theme.of(context).colorScheme.primary,
              collapsedIconColor: Theme.of(context).colorScheme.onSurface,
            ),
            child: EmrExpansionTile(
              title: Text(context.l10n.addNewAddress),
              backgroundColor: Theme.of(context).colorScheme.surface,
              collapsedBackgroundColor: Theme.of(context).colorScheme.surface,
              child: Padding(
                padding: const EdgeInsets.all(Insets.gutter),
                child: Row(
                  children: [
                    Expanded(
                      child: EmrPickerFormField<AddressLookupResult>(
                        labelText: context.l10n.addressSearch,
                        binding: _addressLookupBinding,
                        items: (query) async {
                          if (query.length < 4) {
                            return [];
                          }
                          return context.coreApi.accountService.getAddresses(
                            controller.data.country.value?.value ??
                                controller.account!.originatingCountry!,
                            query,
                          );
                        },
                        itemTitleText: (item) => item.toString(),
                      ),
                    ),
                    const SizedBox(width: Insets.gutter / 2),
                    IconButton(
                      tooltip: context.l10n.done,
                      icon: const Icon(Icons.done),
                      onPressed: () async {
                        final lookup = _addressLookupBinding.value;
                        if (lookup != null) {
                          final addressDetails = await context
                              .coreApi
                              .accountService
                              .getAddressDetails(lookup.id!);

                          final address = parseAddress(
                            lookup,
                            addressDetails.geoLocation,
                          );

                          controller.account!.addresses.add(address);
                          controller.setAddress(address);
                          setState(() {
                            _refreshOptions();
                            if (_radioBinding != null) {
                              _radioBinding!.removeListener(_radioListener!);
                              _radioBinding!.value = address;
                              _radioBinding!.addListener(_radioListener!);
                            } else {
                              _radioBinding = ValueNotifier<Address>(address);
                              _radioListener = () {
                                controller.setAddress(_radioBinding!.value);
                              };
                              _radioBinding!.addListener(_radioListener!);
                            }
                          });

                          _addressLookupBinding.value = null;
                        }
                      },
                    ),
                    IconButton(
                      tooltip: context.l10n.close,
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        _addressLookupBinding.value = null;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
