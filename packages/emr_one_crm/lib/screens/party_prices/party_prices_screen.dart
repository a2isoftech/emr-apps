import 'package:emr_one_crm/screens/party_prices/party_prices_mob.dart';
import 'package:emr_one_crm/screens/party_prices/prices_data_controller.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PartyPricesScreen extends StatelessWidget {
  const PartyPricesScreen({
    required this.partyAccountNo,
    required this.contractsProvider,
    super.key,
    this.tab,
  });

  final String partyAccountNo;
  final String? tab;
  final ContractsProvider contractsProvider;

  @override
  Widget build(BuildContext context) {
    final pricesDataController = Provider.of<PricesDataController>(context);

    return PartyPricesMob(
      contractsProvider: contractsProvider,
      partyAccountNo: partyAccountNo,
      tab: tab,
      sortController: pricesDataController,
    );
  }
}
