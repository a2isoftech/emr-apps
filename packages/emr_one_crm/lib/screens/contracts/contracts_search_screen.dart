import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_core/widgets/grid/emr_grid_column.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_controller.dart';
import 'package:emr_one_core/widgets/layouts/query_layout/emr_query_layout_hybrid.dart';
import 'package:emr_one_crm/screens/contracts/contracts_datasource.dart';
import 'package:emr_one_crm/screens/contracts/contracts_filter_controller.dart';
import 'package:emr_sharedtypes/models/contract.dart';
import 'package:flutter/material.dart';

class ContractSearchScreen extends StatefulWidget {
  const ContractSearchScreen({
    required this.datasource,
    required this.filterController,
    super.key,
  });
  final ContractsDataSource datasource;
  final ContractsFilterController filterController;
  @override
  State<StatefulWidget> createState() => _ContractSearchScreen();
}

class _ContractSearchScreen extends State<ContractSearchScreen> {
  late EmrQueryLayoutController<Contract> _queryLayoutController;
  @override
  void initState() {
    super.initState();

    _queryLayoutController = EmrQueryLayoutController<Contract>(
      dataSource: widget.datasource,
      filterController: widget.filterController,
      supportedViewModes: {EmrQueryLayoutViewMode.grid},
    );
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayoutHybrid<Contract>(
      controller: _queryLayoutController,
      columns: [
        EmrGridColumn<Contract>(
          headerBuilder: () => _getBoldText(context.l10n.accountName),
          width: 50,
          cellBuilder: (rowItem) => Tooltip(
            message: rowItem.accountCode,
            child: SelectableText(rowItem.accountName!),
          ),
        ),
        EmrGridColumn<Contract>(
          headerBuilder: () => _getBoldText(context.l10n.internalReference),
          width: 50,
          cellBuilder: (rowItem) => Text(rowItem.internalReference!),
        ),
        EmrGridColumn<Contract>(
          headerBuilder: () => _getBoldText(context.l10n.customerReference),
          width: 50,
          cellBuilder: (rowItem) => Text(rowItem.customerReference!),
        ),
        EmrGridColumn<Contract>(
          headerBuilder: () => _getBoldText(context.l10n.orderBook),
          width: 50,
          cellBuilder: (rowItem) => Text(rowItem.contractOrderBookTypeName!),
        ),
        EmrGridColumn<Contract>(
          headerBuilder: () => _getBoldText(context.l10n.status),
          width: 50,
          cellBuilder: (rowItem) => Text(rowItem.status!),
        ),
        EmrGridColumn<Contract>(
          headerBuilder: () => _getBoldText(context.l10n.pricingBasis),
          width: 50,
          cellBuilder: (rowItem) => Text(rowItem.pricingBasis!),
        ),
        EmrGridColumn<Contract>(
          headerBuilder: () => _getBoldText(context.l10n.noOfLines),
          width: 50,
          cellBuilder: (rowItem) => Text(rowItem.noOfLines!),
        ),
        EmrGridColumn<Contract>(
          headerBuilder: () => _getBoldText(context.l10n.products),
          width: 50,
          cellBuilder: (rowItem) => Text(rowItem.products!.join(',')),
        ),
        EmrGridColumn<Contract>(
          headerBuilder: () => _getBoldText(context.l10n.contractType),
          width: 50,
          cellBuilder: (rowItem) => Text(rowItem.contractType!),
        ),
        EmrGridColumn<Contract>(
          headerBuilder: () => _getBoldText(context.l10n.deliveryMethod),
          width: 50,
          cellBuilder: (rowItem) => Text(rowItem.deliveryMethod!),
        ),
      ],
    );
  }

  static Text _getBoldText(String content) => Text(
    content,
    style: const TextStyle(fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}
