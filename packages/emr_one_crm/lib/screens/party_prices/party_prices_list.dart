import 'package:async/async.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_crm/models/pagedlist.dart';
import 'package:emr_one_crm/screens/party_prices/contract_list_item.dart';
import 'package:emr_one_crm/screens/party_prices/prices_data_controller.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum ContractTypeFilter { any, spot, fixed, matrix }

class PartyPricesList extends StatefulWidget {
  const PartyPricesList({
    required this.partyAccountNo,
    required this.contractsProvider,
    required this.pricesDataController,
    super.key,
    this.searchFilter,
    this.contractTypeFilter = ContractTypeFilter.any,
  });

  final String partyAccountNo;
  final String? searchFilter;
  final ContractTypeFilter contractTypeFilter;
  final ContractsProvider contractsProvider;
  final PricesDataController pricesDataController;

  @override
  State<PartyPricesList> createState() => _PartyPricesListState();
}

class _PartyPricesListState extends State<PartyPricesList> {
  late bool _isLastPage;
  late bool _error;
  late bool _loading;
  bool _fetching = false;
  final int _numberOfItemsPerRequest = 10;
  late List<Contract> _items;
  final int _nextPageTrigger = 3;
  CancelableOperation<PagedList<Contract>>? _operation;
  String? _cursor;

  @override
  void initState() {
    super.initState();

    _items = [];
    _isLastPage = false;
    _loading = true;
    _error = false;

    widget.pricesDataController.addListener(_handleSortChange);

    fetchData();
  }

  @override
  void dispose() {
    widget.pricesDataController.removeListener(_handleSortChange);

    if (_operation != null) {
      _operation!.cancel();
      _operation = null;
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return buildItemsView();
  }

  void _handleSortChange() {
    if (mounted) {
      if (_operation != null) {
        _operation!.cancel();
        _operation = null;
      }

      setState(() {
        _items.clear();
        _isLastPage = false;
        _cursor = null;
        _error = false;
        _loading = true;
        fetchData();
      });
    }
  }

  Future<void> fetchData() async {
    if (_isLastPage || _fetching) return;
    _fetching = true;
    setState(() {
      _loading = true;
      _error = false;
    });

    try {
      await _operation?.cancel();
      final future = widget.contractsProvider.getContractsForParty(
        widget.partyAccountNo,
        _cursor,
        take: _numberOfItemsPerRequest,
        leastRecent:
            widget.pricesDataController.sortMode == PricesSortMode.leastRecent,
        filterMode: widget.pricesDataController.filterMode,
      );

      _operation = CancelableOperation.fromFuture(future);
      final value = await _operation!.value;

      if (!mounted) return;

      final itemsToAdd = (widget.pricesDataController.search?.isEmpty ?? true)
          ? (value.items)
          : value.items
              .where(
                (i) => i.ref.contains(widget.pricesDataController.search!),
              )
              .toList();

      setState(() {
        _cursor = value.cursor;
        _isLastPage = !value.hasNextPage;
        _loading = false;
        _items.addAll(itemsToAdd);
      });
    } catch (e, st) {
      if (kDebugMode) {
        print('error --> $e\n$st');
      }
      if (mounted) {
        setState(() {
          _loading = false;
          _error = true;
        });
      }
    } finally {
      _operation = null;
      _fetching = false;
    }
  }

  Widget buildItemsView() {
    if (_items.isEmpty) {
      if (_loading) {
        return const Center(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: CircularProgressIndicator(),
          ),
        );
      } else if (_error) {
        return Center(child: errorDialog(size: 15));
      } else if (!_isLastPage) {
        fetchData();
      }

      return Center(
        child: Text(context.l10n.noResults),
      );
    }
    final showLoader = !_isLastPage &&
        !(widget.pricesDataController.search?.isNotEmpty ?? false);
    final itemCount = _items.length + (showLoader ? 1 : 0);

    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        if (index >= _items.length) {
          if (_error) return Center(child: errorDialog(size: 15));
          if (!_fetching) fetchData();
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: CircularProgressIndicator(),
            ),
          );
        }

        if (index >= (_items.length - _nextPageTrigger) &&
            !_isLastPage &&
            !_fetching &&
            !_error) {
          fetchData();
        }

        final contract = _items[index];
        return ContractListItem(
          contract: contract,
          partyAccountNo: widget.partyAccountNo,
          pricesDataController: widget.pricesDataController,
        );
      },
    );
  }

  Widget errorDialog({required double size}) {
    return SizedBox(
      height: 180,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.l10n.couldNotLoadContractDetailsBecauseThereWasAnError,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: size,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _loading = true;
                _error = false;
                fetchData();
              });
            },
            child: Text(
              context.l10n.retry.toUpperCase(),
            ),
          ),
        ],
      ),
    );
  }
}
