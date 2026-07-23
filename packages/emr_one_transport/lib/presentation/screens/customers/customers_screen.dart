import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/customers/customer_detail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomersScreen extends StatefulWidget with OmniSearch {
  const CustomersScreen({super.key});

  @override
  State<CustomersScreen> createState() => _CustomersScreenState();
}

class _CustomersScreenState extends State<CustomersScreen> {
  late EmrQueryLayoutController<CustomerDetail> _queryLayoutController;
  late EmrGridController<CustomerDetail> _gridController;

  @override
  void initState() {
    super.initState();
    _configureControllers();
  }

  void _configureControllers() {
    _queryLayoutController =
        Provider.of<EmrQueryLayoutController<CustomerDetail>>(
          context,
          listen: false,
        );
    _gridController = EmrGridController<CustomerDetail>(
      data: _queryLayoutController.dataSource.data,
      showLoader: _queryLayoutController.dataSource.loading,
    );
    _queryLayoutController.dataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
    };
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [_buildGridView()],
    );
  }

  Widget _buildGridView() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          top: Insets.gutter,
          left: Insets.gutter,
          right: Insets.gutter,
          bottom: Insets.gutter * 2,
        ),
        child: SelectionArea(
          child: EmrQueryLayout<CustomerDetail>.grid(
            queryLayoutController: _queryLayoutController,
            gridController: _gridController,
            columns: _getColumns,
          ),
        ),
      ),
    );
  }

  List<EmrGridColumn<CustomerDetail>> get _getColumns => [
    _buildGridColumn(
      context.l10n.locationCode,
      (CustomerDetail rowItem) => _buildCellValue(rowItem.locationCode ?? '-'),
      80,
    ),
    _buildGridColumn(
      context.l10n.customerCode,
      (CustomerDetail rowItem) => _buildCellValue(rowItem.customerCode),
      80,
    ),
    _buildGridColumn(
      context.l10n.customer,
      (CustomerDetail rowItem) => _buildCellValue(rowItem.customerName),
      140,
    ),
    _buildGridColumn(
      context.l10n.address,
      (CustomerDetail rowItem) =>
          _buildCellValue(StringHelper.formatAddress(rowItem.address)),
      320,
    ),
    _buildGridColumn(
      context.l10n.postCode,
      (CustomerDetail rowItem) =>
          _buildCellValue(rowItem.address?.postCode ?? '-'),
      100,
    ),
    _buildGridColumn(
      context.l10n.country,
      (CustomerDetail rowItem) =>
          _buildCellValue(rowItem.address?.countryCode ?? '-'),
      50,
    ),
  ];

  Widget _buildCellValue(String? value) {
    return Row(
      children: [
        Expanded(child: Text(value ?? '', overflow: TextOverflow.ellipsis)),
      ],
    );
  }

  EmrGridColumn<CustomerDetail> _buildGridColumn(
    String header,
    Widget Function(CustomerDetail) cellBuilder,
    double width,
  ) {
    return EmrGridColumn(
      width: width,
      headerBuilder: () =>
          Text(header, style: const TextStyle(fontWeight: FontWeight.bold)),
      cellBuilder: cellBuilder,
    );
  }
}
