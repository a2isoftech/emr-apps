import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/quick_quotes_controller.dart';
import 'package:emr_sharedtypes/enums/account_type_enum.dart';

class AccountList extends StatelessWidget {
  const AccountList({
    required this.controller,
    required this.accountController,
    required this.setState,
    required this.scrollController,
    super.key,
  });

  final QuickQuoteController controller;
  final TextEditingController accountController;
  final void Function(void Function()) setState;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 290,
      child: ListView.builder(
        controller: scrollController,
        itemCount: controller.baseState.existingAccountState.accounts?.length,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemBuilder: (context, accountIndex) {
          final account =
              controller.baseState.existingAccountState.accounts?[accountIndex];

          if (account != null &&
              account.accountType == AccountTypeEnum.retail) {
            account.locations = account.locations
                .whereNot(
                  (location) => location.code.toUpperCase().startsWith(
                    account.code?.toUpperCase() ?? '',
                  ),
                )
                .toList();
          }

          final showAccountLocations =
              controller.activeTerritory == ElvTerritory.uk &&
              account != null &&
              account.locations.any(
                (l) => l.code.toUpperCase() != account.code?.toUpperCase(),
              ) &&
              account.locations.isNotEmpty;

          if (showAccountLocations) {
            return _accountWithLocationTile(account, accountIndex, context);
          }
          if (account != null) {
            return _accountTile(account, accountIndex, context);
          }
          return null;
        },
      ),
    );
  }

  Padding _accountWithLocationTile(
    AccountModel account,
    int accountIndex,
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.gutter / 2,
        vertical: Insets.gutter / 4,
      ),
      child: ExpansionTile(
        key: ValueKey(account.code),
        initiallyExpanded: _isAccountSelected(accountIndex),
        controlAffinity: ListTileControlAffinity.leading,
        trailing: const SizedBox(),
        collapsedBackgroundColor: Theme.of(context).primaryColor.withAlpha(25),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _accountInfoText(context, account, false),
        ),
        childrenPadding: const EdgeInsets.only(left: 80),
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: account.locations.length,
            itemBuilder: (context, locationIndex) {
              final location = account.locations[locationIndex];
              return Padding(
                padding: const EdgeInsets.all(Insets.gutter / 2),
                child: InkWell(
                  onTap: () => _onAccountOrLocationTap(
                    context,
                    accountIndex,
                    locationIndex: locationIndex,
                  ),
                  child: _constrainedBox(
                    selected: _isAccountLocationSelected(
                      account,
                      locationIndex,
                    ),
                    context,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _infoText(
                          context.l10n.location,
                          '${location.code} -'
                          '${location.name.replaceAll('.', ' ')}',
                          context,
                          _isAccountLocationSelected(account, locationIndex),
                        ),
                        Text(
                          _addressToString(location.address),
                          overflow: TextOverflow.clip,
                          softWrap: true,
                          maxLines: 2,
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color:
                                    _isAccountLocationSelected(
                                      account,
                                      locationIndex,
                                    )
                                    ? Theme.of(
                                        context,
                                      ).colorScheme.onTertiaryContainer
                                    : null,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _accountTile(
    AccountModel account,
    int accountIndex,
    BuildContext context,
  ) {
    return InkWell(
      onTap: () => _onAccountOrLocationTap(context, accountIndex),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Insets.gutter / 2,
          vertical: Insets.gutter / 4,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withAlpha(25),
          ),
          child: SizedBox(
            child: _constrainedBox(
              selected: _isAccountSelected(accountIndex),
              context,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _accountInfoText(
                  context,
                  account,
                  _isAccountSelected(accountIndex),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _constrainedBox(
    BuildContext context, {
    required bool selected,
    Widget? child,
  }) {
    return Container(
      padding: const EdgeInsets.all(Insets.gutter * 0.75),
      color: selected ? Theme.of(context).colorScheme.tertiary : null,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: context.elvFlyoutWidth() - 250),
        child: child,
      ),
    );
  }

  Future<void> _onAccountOrLocationTap(
    BuildContext context,
    int accountIndex, {
    int? locationIndex,
  }) async {
    unawaited(EmrDialog.busy(context, titleText: context.l10n.loading));

    if (controller.activeTerritory == ElvTerritory.uk &&
        locationIndex == null) {
      await controller.addPostCodePrefixBasedLocationToAccount(
        accountIndex: accountIndex,
      );
    }

    await controller.setAccountAndReQuote(
      accountIndex: accountIndex,
      locationIndex: locationIndex,
    );

    if (controller.activeTerritory == ElvTerritory.uk &&
        !controller.isPostCodeValid &&
        context.mounted) {
      await EmrDialog.ok(
        context,
        titleText: context.l10n.validationFailed,
        contentText: context.l10n.invalidPostcode,
      );
    }

    if (context.mounted) {
      Navigator.of(
        context,
      ).popUntil((route) => route.settings.name == NamedRoutes.elvQuickQuote);
    }
  }

  List<Widget> _accountInfoText(
    BuildContext context,
    AccountModel account,
    bool isSelected,
  ) {
    return [
      _infoText(
        context.l10n.accountNumber,
        account.code ?? '-',
        context,
        isSelected,
      ),
      _infoText(
        context.l10n.name,
        account.name?.replaceAll('.', ' ').toUpperCase() ?? '-',
        context,
        isSelected,
      ),
      Text(
        _addressToString(account.address),
        overflow: TextOverflow.clip,
        softWrap: true,
        maxLines: 2,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: isSelected
              ? Theme.of(context).colorScheme.onTertiaryContainer
              : null,
        ),
      ),
    ];
  }

  Row _infoText(
    String header,
    String body,
    BuildContext context,
    bool isSelected,
  ) {
    return Row(
      children: [
        Text(
          '$header: ',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontWeight: FontWeight.bold,
            color: isSelected
                ? Theme.of(context).colorScheme.onTertiaryContainer
                : null,
          ),
        ),
        Text(
          body,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: isSelected
                ? Theme.of(context).colorScheme.onTertiaryContainer
                : null,
          ),
        ),
      ],
    );
  }

  bool _isAccountSelected(int index) {
    return (controller.baseState.temporaryAccountStore?.code ?? '') ==
        controller.baseState.existingAccountState.accounts?[index].code;
  }

  bool _isAccountLocationSelected(AccountModel account, int locationIndex) {
    return (controller.baseState.temporaryAccountLocation?.code ?? '') ==
        account.locations[locationIndex].code;
  }

  String _addressToString(Address address) {
    final addressList = [
      address.line1,
      address.line2,
      address.line3,
      address.line4,
      address.line5,
      address.line6,
      address.postCode,
    ];

    addressList.removeWhere((element) => element == null);

    return addressList
        .where((element) => (element ?? '').isNotEmpty)
        .join(', ');
  }
}
