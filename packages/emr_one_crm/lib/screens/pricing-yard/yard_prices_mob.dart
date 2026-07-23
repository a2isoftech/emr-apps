import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_core/widgets/sort/emr_up_down_sort.dart';
import 'package:emr_one_crm/screens/pricing-yard/components/yard_prices_filter_button.dart';
import 'package:emr_one_crm/screens/pricing-yard/components/yard_prices_list_header.dart';
import 'package:emr_one_crm/screens/pricing-yard/components/yard_prices_view_button.dart';
import 'package:emr_one_crm/screens/pricing-yard/yard_prices_data_controller.dart';
import 'package:emr_one_crm/screens/pricing-yard/yard_prices_list.dart';
import 'package:emr_sharedtypes/models/models.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';

class YardPricesMob extends StatefulWidget {
  const YardPricesMob({
    required this.client,
    required this.yardPricesDataController,
    super.key,
  });

  final BaseClient client;
  final YardPricesDataController yardPricesDataController;

  @override
  State<YardPricesMob> createState() => YardPricesMobState();
}

class YardPricesMobState extends State<YardPricesMob> {
  @override
  Widget build(BuildContext context) {
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
                      right: Insets.gutter / 3,
                      left: Insets.gutter / 3,
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
                Padding(
                  padding: const EdgeInsets.only(
                    right: Insets.gutter / 3,
                  ),
                  child: EmrUpDownSort(
                    onSortChange: (sortMode) =>
                        widget.yardPricesDataController.setSort(
                      sortMode == UpDownSortMode.up
                          ? YardPricesSortMode.descending
                          : YardPricesSortMode.assending,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: Insets.gutter / 3,
                  ),
                  child: YardPricesFilterButton(
                    description: context.l10n.all,
                    filter: YardPricesFilterMode.all,
                    controller: widget.yardPricesDataController,
                  ),
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
                Padding(
                  padding: const EdgeInsets.only(
                    right: Insets.gutter / 3,
                  ),
                  child: GestureDetector(
                    onTap: () async {
                      final newYard = await _selectYardBook(context);
                      if (newYard != null &&
                          newYard.yardCode !=
                              widget.yardPricesDataController.currentYard) {
                        widget.yardPricesDataController
                            .setYard(newYard.yardCode);
                      }
                    },
                    child: Row(
                      children: [
                        Text(
                          widget.yardPricesDataController.currentYard ?? '',
                          style: EmrOneConstants.kOpenSans18TextStyle,
                        ),
                        const Icon(Icons.pin_drop),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (widget.yardPricesDataController.viewMode ==
                YardPricesViewMode.list)
              const Padding(
                padding: EdgeInsets.only(
                  right: Insets.gutter / 3,
                  left: Insets.gutter / 3,
                ),
                child: YardPricesListHeader(),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: Insets.gutter / 3,
                  left: Insets.gutter / 3,
                ),
                child: YardPricesList(
                  client: widget.client,
                  yardPricesDataController: widget.yardPricesDataController,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
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
    );
  }

  Future<Yard?> _selectYardBook(BuildContext context) async {
    return showSearch<Yard?>(
      context: context,
      delegate: EmrModalSearchDelegate(
        (query) async => widget.yardPricesDataController.getYards(query),
        (item) => ListTile(title: Text(item.yardCode)),
      ),
      query: widget.yardPricesDataController.currentYard,
    );
  }
}
