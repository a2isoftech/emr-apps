import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_core/widgets/sort/emr_up_down_sort.dart';
import 'package:emr_one_crm/screens/pricing-yard/components/yard_prices_filter_button.dart';
import 'package:emr_one_crm/screens/pricing-yard/components/yard_prices_list_header.dart';
import 'package:emr_one_crm/screens/pricing-yard/components/yard_prices_view_button.dart';
import 'package:emr_one_crm/screens/pricing-yard/yard_prices_data_controller.dart';
import 'package:emr_one_crm/screens/pricing-yard/yard_prices_list.dart';
import 'package:emr_one_crm/widgets/party/party_header.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';

class YardPricesWeb extends StatefulWidget {
  const YardPricesWeb({
    required this.client,
    required this.yardPricesDataController,
    super.key,
  });
  final BaseClient client;
  final YardPricesDataController yardPricesDataController;

  @override
  State<YardPricesWeb> createState() => YardPricesWebState();
}

class YardPricesWebState extends State<YardPricesWeb> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        children: [
          Row(
            children: [
              BackButton(
                onPressed: () {
                  context.pop();
                },
              ),
              PartyHeader(party: context.l10n.yardPricing),
            ],
          ),
          const Divider(
            thickness: 2,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: Insets.gutter / 2,
                    right: Insets.gutter,
                  ),
                  child: TextField(
                    autocorrect: false,
                    decoration: FormStyles.textFieldDecoration(context)
                        .copyWith(labelText: context.l10n.search),
                    onChanged: (query) {
                      widget.yardPricesDataController.setSearch(query.trim());
                    },
                  ),
                ),
              ),
              EmrUpDownSort(
                onSortChange: (sortMode) =>
                    widget.yardPricesDataController.setSort(
                  sortMode == UpDownSortMode.up
                      ? YardPricesSortMode.descending
                      : YardPricesSortMode.assending,
                ),
              ),
            ],
          ),
          Row(
            children: [
              YardPricesFilterButton(
                description: context.l10n.all,
                filter: YardPricesFilterMode.all,
                controller: widget.yardPricesDataController,
              ),
              YardPricesFilterButton(
                description: context.l10n.ferrous,
                filter: YardPricesFilterMode.ferrous,
                controller: widget.yardPricesDataController,
              ),
              YardPricesFilterButton(
                description: context.l10n.nonFerrous,
                filter: YardPricesFilterMode.nonfer,
                controller: widget.yardPricesDataController,
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () async {
                  final newYard = await _selectYardBook(context);
                  if (newYard != null &&
                      newYard.yardCode !=
                          widget.yardPricesDataController.currentYard) {
                    widget.yardPricesDataController.setYard(newYard.yardCode);
                  }
                },
                child: Row(
                  children: [
                    Text(
                      widget.yardPricesDataController.currentYard ?? '',
                      style: EmrOneConstants.kOpenSans18BoldTextStyle,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: Insets.gutter / 2,
                        right: Insets.gutter / 2,
                      ),
                      child: Icon(Icons.pin_drop),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (widget.yardPricesDataController.viewMode ==
              YardPricesViewMode.list)
            const YardPricesListHeader(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: Insets.gutter / 2,
              ),
              child: YardPricesList(
                client: widget.client,
                yardPricesDataController: widget.yardPricesDataController,
              ),
            ),
          ),
          BottomAppBar(
            color: EmrColours.primaryBlue,
            notchMargin: 6,
            elevation: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                YardPricesViewButton(
                  description: context.l10n.viewList,
                  icon: FontAwesomeIcons.list,
                  selected: () =>
                      widget.yardPricesDataController.viewMode ==
                      YardPricesViewMode.list,
                  onTap: () => widget.yardPricesDataController
                      .setViewMode(YardPricesViewMode.list),
                ),
                YardPricesViewButton(
                  description: context.l10n.viewGrid,
                  icon: FontAwesomeIcons.borderNone,
                  selected: () =>
                      widget.yardPricesDataController.viewMode ==
                      YardPricesViewMode.grid,
                  onTap: () => widget.yardPricesDataController
                      .setViewMode(YardPricesViewMode.grid),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<Yard?> _selectYardBook(BuildContext context) async {
    return Flyout.show<Yard>(
      context: context,
      builder: (context) => EOPickerDialog<Yard>(
        titleText: context.l10n.yardValidation,
        itemsFuture: (_) => widget.yardPricesDataController.getYards(''),
        getItemTitleText: (item) => item.yardCode,
        getItemSubTitleText: (item) => item.name,
        allowFilter: true,
        filterCallback: (item, filterTextLower) =>
            item.yardCode.toLowerCase().contains(filterTextLower) ||
            item.name.toLowerCase().contains(filterTextLower),
        compareCallback: (a, b) => a.yardCode.compareTo(b.yardCode),
      ),
    );
  }
}
