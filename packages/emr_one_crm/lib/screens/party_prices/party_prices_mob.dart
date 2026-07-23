import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_core/widgets/sort/emr_up_down_sort.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/screens/party_prices/party_prices_list.dart';
import 'package:emr_one_crm/screens/party_prices/prices_data_controller.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:emr_one_crm/widgets/party/add_fab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class PartyPricesMob extends StatefulWidget {
  const PartyPricesMob({
    required this.partyAccountNo,
    required this.sortController,
    required this.contractsProvider,
    super.key,
    this.tab,
  });

  final String? tab;
  final String partyAccountNo;
  final ContractsProvider contractsProvider;
  final PricesDataController sortController;

  @override
  State<PartyPricesMob> createState() => _PartyPricesMobState();
}

class _PartyPricesMobState extends State<PartyPricesMob> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    if (widget.tab == 'fixed') {
      _selectedIndex = 2;
      widget.sortController.setFilter(PricesFilterMode.fixed);
    } else if (widget.tab == 'spot') {
      _selectedIndex = 1;
      widget.sortController.setFilter(PricesFilterMode.spot);
    } else if (widget.tab == 'matrix') {
      _selectedIndex = 3;
      widget.sortController.setFilter(PricesFilterMode.gpl);
    } else if (widget.tab == 'all') {
      _selectedIndex = 0;
      widget.sortController.setFilter(PricesFilterMode.all);
    }
  }

  void _onItemTapped(int index) {
    context.trackEvent(
      EmrOneCrmTelemetry.kPartyPricesMobBottomNav,
      params: {
        'tab': index.toString(),
      },
    );

    setState(() {
      _selectedIndex = index;
      widget.sortController.setSearch('');
      final tabName = _getTabName(index);
      context.goNamed(
        NamedRoutes.traderPartyPrices,
        params: {'partyAccountNo': widget.partyAccountNo},
        queryParams: {'tab': tabName},
      );
    });
  }

  String _getTabName(int index) {
    switch (index) {
      case 1:
        return 'spot';
      case 2:
        return 'fixed';
      case 3:
        return 'matrix';
      default:
        return 'all';
    }
  }

  @override
  Widget build(BuildContext context) {
    final appConfig = Provider.of<AppConfig>(context, listen: false);

    return Scaffold(
      extendBody: true,
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: Insets.gutter / 2,
                      right: Insets.gutter,
                      left: Insets.gutter / 2,
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      autocorrect: false,
                      decoration: FormStyles.textFieldDecoration(context)
                          .copyWith(labelText: context.l10n.search),
                      onChanged: (query) {
                        widget.sortController.setSearch(query.trim());
                      },
                    ),
                  ),
                ),
                EmrUpDownSort(
                  onSortChange: (sortMode) => widget.sortController.setSort(
                    sortMode == UpDownSortMode.down
                        ? PricesSortMode.mostRecent
                        : PricesSortMode.leastRecent,
                  ),
                ),
              ],
            ),
            const SizedBox(height: Insets.gutter),
            Expanded(
              child: PartyPricesList(
                contractsProvider: widget.contractsProvider,
                partyAccountNo: widget.partyAccountNo,
                pricesDataController: widget.sortController,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: _fabAllowed(appConfig, _selectedIndex)
          ? Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 8),
              child: AddFab(
                onPressed: () {
                  context.trackEvent(
                    EmrOneCrmTelemetry.kPartyPricesMobFAB,
                    params: {
                      'action': _selectedIndex.toString(),
                    },
                  );
                  switch (_selectedIndex) {
                    case 0:
                      showDialog<void>(
                        context: context,
                        builder: (context) => SimpleDialog(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: Insets.gutter),
                              child: Text(
                                context.l10n.createContractPopupHeading,
                                style:
                                    EmrOneConstants.kSmallestHeadingTextStyle,
                              ),
                            ),
                            PopupMenuItem<String>(
                              onTap: () => context.goNamed(
                                NamedRoutes.traderPartyPricesNewSpot,
                                params: {
                                  'partyAccountNo': widget.partyAccountNo,
                                },
                              ),
                              value: context.namedLocation(
                                NamedRoutes.traderPartyPricesNewSpot,
                                params: {
                                  'partyAccountNo': widget.partyAccountNo,
                                },
                              ),
                              child: _buildContractMenu(
                                context,
                                FontAwesomeIcons.circleDot,
                                context.l10n.spot,
                              ),
                            ),
                            PopupMenuItem<String>(
                              onTap: () => context.goNamed(
                                NamedRoutes.traderPartyPricesNewFixed,
                                params: {
                                  'partyAccountNo': widget.partyAccountNo,
                                },
                              ),
                              value: context.namedLocation(
                                NamedRoutes.traderPartyPricesNewFixed,
                                params: {
                                  'partyAccountNo': widget.partyAccountNo,
                                },
                              ),
                              child: _buildContractMenu(
                                context,
                                FontAwesomeIcons.crosshairs,
                                context.l10n.fixed,
                              ),
                            ),
                            PopupMenuItem<String>(
                              onTap: () => context.goNamed(
                                NamedRoutes.traderPartyPricesNewPricelist,
                                params: {
                                  'partyAccountNo': widget.partyAccountNo,
                                },
                              ),
                              value: context.namedLocation(
                                NamedRoutes.traderPartyPricesNewPricelist,
                                params: {
                                  'partyAccountNo': widget.partyAccountNo,
                                },
                              ),
                              child: _buildContractMenu(
                                context,
                                FontAwesomeIcons.borderNone,
                                context.l10n.priceList,
                              ),
                            ),
                          ],
                        ),
                      );
                    case 1:
                      context.goNamed(
                        NamedRoutes.traderPartyPricesNewSpot,
                        params: {
                          'partyAccountNo': widget.partyAccountNo,
                        },
                      );
                    case 2:
                      context.goNamed(
                        NamedRoutes.traderPartyPricesNewFixed,
                        params: {
                          'partyAccountNo': widget.partyAccountNo,
                        },
                      );
                    case 3:
                      context.goNamed(
                        NamedRoutes.traderPartyPricesNewPricelist,
                        params: {
                          'partyAccountNo': widget.partyAccountNo,
                        },
                      );
                  }
                },
              ),
            )
          : null,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        //surfaceTintColor: Colors.red,
        color: EmrColours.primaryBlue,
        notchMargin: 6,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _getIconButton(context, context.l10n.all, FontAwesomeIcons.list, 0),
            _getIconButton(
              context,
              context.l10n.spot,
              FontAwesomeIcons.circleDot,
              1,
            ),
            _getIconButton(
              context,
              context.l10n.fixed,
              FontAwesomeIcons.crosshairs,
              2,
            ),
            _getIconButton(
              context,
              context.l10n.priceListAbbr,
              FontAwesomeIcons.borderNone,
              3,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContractMenu(
    BuildContext context,
    FaIconData menuIcon,
    String menuText,
  ) {
    return Row(
      children: [
        FaIcon(menuIcon),
        const SizedBox(width: Insets.gutter),
        Text(menuText),
      ],
    );
  }

  Widget _getIconButton(
    BuildContext context,
    String label,
    FaIconData icon,
    int index,
  ) {
    final selected = index == _selectedIndex;

    return SizedBox.fromSize(
      size: const Size(Insets.gutter * 2.5, Insets.gutter * 3),
      child: GestureDetector(
        onTap: () => _selectedIndex != index ? _onItemTapped(index) : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FaIcon(
              icon,
              color: selected
                  ? EmrColours.primaryWhite
                  : EmrColours.primaryWhite.withAlpha(128),
            ),
            Text(
              label,
              style: TextStyle(
                color: selected
                    ? EmrColours.primaryWhite
                    : EmrColours.primaryWhite.withAlpha(128),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _fabAllowed(AppConfig config, int tabIndex) {
    if (tabIndex != 2) {
      return true;
    }

    return config.ffExperiments
        .contains(EmrOneFFExperiments.kCreateFixedContract);
  }
}
