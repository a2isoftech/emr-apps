import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_core/widgets/sort/emr_up_down_sort.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/screens/party_prices/party_prices_list.dart';
import 'package:emr_one_crm/screens/party_prices/prices_data_controller.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:emr_one_crm/widgets/party/party_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class PartyPricesWeb extends StatefulWidget {
  const PartyPricesWeb({
    required this.partyAccountNo,
    required this.sortController,
    required this.contractsProvider,
    super.key,
  });
  final String partyAccountNo;
  final PricesDataController sortController;
  final ContractsProvider contractsProvider;

  @override
  State<PartyPricesWeb> createState() => PartyPricesWebState();
}

class PartyPricesWebState extends State<PartyPricesWeb> {
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
                  context.trackEvent(EmrOneCrmTelemetry.kPartyPricesPop);
                  context.pop();
                },
              ),
              PartyHeader(party: widget.partyAccountNo),
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
              pricesDataController: Provider.of<PricesDataController>(context),
            ),
          ),
        ],
      ),
    );
  }
}
