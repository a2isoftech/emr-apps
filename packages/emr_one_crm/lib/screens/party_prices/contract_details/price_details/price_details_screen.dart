import 'package:async/async.dart';
import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/contract_details_error.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/fixed_spot/delivered_vs_target.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/price_details/contract_details_info.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/price_details/contract_title_with_action.dart';
import 'package:emr_one_crm/screens/party_prices/contract_details/price_details/price_grades_view.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:emr_one_crm/temp/grade_list_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PriceDetailsScreen extends StatefulWidget with AppBarExtender {
  const PriceDetailsScreen({
    required this.contract,
    required this.contractId,
    required this.contractsProvider,
    super.key,
  });
  final Contract contract;
  final ContractsProvider contractsProvider;
  final int contractId;

  @override
  State<PriceDetailsScreen> createState() => _PriceDetailScreenState();
}

class _PriceDetailScreenState extends State<PriceDetailsScreen> {
  late Contract _contract;
  late CancelableOperation<Contract>? _operation;
  late bool _error;
  DateTime? _selectedEndDate;

  @override
  void initState() {
    super.initState();
    _error = false;
    _contract = widget.contract;

    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    if (_contract.lines.isEmpty || _error) {
      return ContractDetailsError(
        contract: _contract,
        partyAccountNo: _contract.party,
      );
    }

    final showDeliveredPrices = _contract.isDelivered;
    final showCollectedPrices = _contract.isCollected;

    final isGpl = _contract.ref.contains('GPL');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        leading: BackButton(
          onPressed: context.pop,
        ),
        title: Text(
          _getTitle(context, isGpl),
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Insets.gutter / 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContractTitleWithAction(
                contract: _contract,
                onExtended: (endDate) {
                  setState(() {
                    _selectedEndDate = endDate;
                  });
                  _fetchData();
                },
              ),
              ContractDetailsInfo(
                heading: '${context.l10n.orderBook}: ',
                info: _contract.orderbook,
              ),
              ContractDetailsInfo(
                heading: '${context.l10n.yard}: ',
                info: _getYardName(_contract.lines.first, context),
              ),
              ContractDetailsInfo(
                heading: '${context.l10n.startDate}: ',
                info: _contract.startDate?.toString().substring(0, 10) ??
                    context.l10n.notSet,
              ),
              ContractDetailsInfo(
                heading: '${context.l10n.endDate}: ',
                info: (_selectedEndDate ?? _contract.endDate)
                        ?.toString()
                        .substring(0, 10) ??
                    context.l10n.notSet,
              ),
              ContractDetailsInfo(
                heading: '${_getContractLineText(isGpl)}: ',
                info: _contract.lines.length.toString(),
              ),
              if (!isGpl)
                DeliveredVsTarget(
                  contract: _contract,
                ),
              PriceGradesView(
                contract: _contract,
                showCollectedPrices: showCollectedPrices,
                showDeliveredPrices: showDeliveredPrices,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    if (_operation != null) {
      _operation!.cancel();
      _operation = null;
    }
    super.dispose();
  }

  void _fetchData() {
    try {
      final future = widget.contractsProvider.getContract(
        widget.contractId,
        widget.contract.party,
      );

      _operation = CancelableOperation.fromFuture(future);

      _operation!.then((value) {
        if (mounted) {
          setState(() {
            _contract = value;
          });
          Provider.of<GradesListProvider>(context, listen: false).loadGrades(
            value.lines,
            isGpl: widget.contract.ref.contains('GPL'),
          );
        }
      });
    } catch (e) {
      if (kDebugMode) {
        print('error --> $e');
      }
      if (mounted) {
        setState(() {
          _error = true;
        });
      }
    }
  }

  String _getTitle(BuildContext context, bool isGpl) {
    return '${_getContractType(
      isGpl,
      _contract.lines.firstOrNull?.isSpot ?? false,
      context,
    )} #: ${_contractRef(isGpl, _contract.ref)}';
  }

  String _getContractLineText(bool isGpl) {
    return isGpl ? context.l10n.gplLines : context.l10n.contractLines;
  }

  String _getContractType(bool isGpl, bool isSpot, BuildContext context) {
    if (isGpl) {
      return context.l10n.priceList;
    } else if (isSpot) {
      return context.l10n.spotContract;
    }

    return context.l10n.fixedContract;
  }

  String _contractRef(bool isGpl, String ref) {
    if (isGpl) {
      return ref.substring(3);
    } else {
      return ref;
    }
  }

  String _getYardName(ContractLine line, BuildContext context) {
    final uniqueDepots = line.depotPremiums
        .map((dp) => dp.depot.code)
        .where((code) => code.isNotEmpty)
        .toSet();

    if (uniqueDepots.isEmpty) {
      return 'ANY';
    } else if (uniqueDepots.length == 1) {
      return uniqueDepots.first;
    } else {
      return context.l10n.psnopMulti;
    }
  }
}
