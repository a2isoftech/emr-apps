import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management_constants.dart';
import 'package:emr_one_data_management/screens/payments/yard_data_source.dart';
import 'package:emr_sharedtypes/models/payment_rules.dart';
import 'package:flutter/material.dart';

class YardPaymentRuleSearch extends StatefulWidget
    with AppBarExtender, OmniSearch {
  const YardPaymentRuleSearch({required this.queryLayoutController, super.key});

  final EmrQueryLayoutController<PaymentRules> queryLayoutController;
  @override
  List<Widget> getActions(BuildContext context) => [
    if (context.userHasPermission(
      'data-management/yard-payment-rules/create/action',
    ))
      IconButton.filled(
        tooltip: 'Add Payment Rule',
        onPressed: () => context.goNamed(
          EmrOneDataManagementConstants.kRouteYardPaymentRuleForm,
          params: {
            'yardCode': EmrOneDataManagementConstants.kRouteNewYardCode,
            'territoryCode':
                EmrOneDataManagementConstants.kRouteNewYardTerritoryCode,
          },
        ),
        icon: const Icon(Icons.add_circle),
      ),
  ];

  @override
  State<YardPaymentRuleSearch> createState() => _YardPaymentRuleSearchState();
}

class _YardPaymentRuleSearchState extends State<YardPaymentRuleSearch> {
  late final YardPaymentRulesDataSource _dataSource;
  late final EmrQueryLayoutController<PaymentRules> _queryLayoutController;

  Future<void> handleErrors(String errorMessage) async {
    await EmrModal.showMessageBar(
      context,
      errorMessage,
      messageType: MessageBarTypes.error,
    );
  }

  @override
  void initState() {
    super.initState();

    _dataSource = YardPaymentRulesDataSource(
      referenceDataService: context.coreApi.referenceData,
      errorHandler: handleErrors,
    );

    _dataSource.sortBy('id');

    _queryLayoutController = widget.queryLayoutController;
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayoutHybrid<PaymentRules>(
      controller: _queryLayoutController,
      columns: [
        EmrGridColumn(
          headerBuilder: () => EmrSortableGridHeader(
            field: 'id',
            dataSource: _queryLayoutController.dataSource,
            child: const EmrGridHeader(text: 'Code'),
          ),
          cellBuilder: (paymentRule) => Text(paymentRule.id.split('/').last),
        ),
        EmrGridColumn(
          headerBuilder: () =>
              const EmrGridHeader(text: 'Authority Reportable'),
          cellBuilder: (row) =>
              iconForCheckboxState(value: row.authorityReportable),
        ),
        EmrGridColumn(
          headerBuilder: () => const EmrGridHeader(text: 'Driving Licence'),
          cellBuilder: (row) =>
              iconForCheckboxState(value: row.drivingLicenceRequired),
        ),
        EmrGridColumn(
          headerBuilder: () => const EmrGridHeader(text: 'Cash Card'),
          cellBuilder: (row) =>
              iconForCheckboxState(value: row.cashCardRequired),
        ),
        EmrGridColumn(
          headerBuilder: () =>
              const EmrGridHeader(text: 'Copper Sellers License'),
          cellBuilder: (row) =>
              iconForCheckboxState(value: row.copperSellersLicenseRequired),
        ),
        EmrGridColumn(
          headerBuilder: () =>
              const EmrGridHeader(text: 'Exempted Seller Status'),
          cellBuilder: (row) =>
              iconForCheckboxState(value: row.exemptedSellerStatusRequired),
        ),
        EmrGridColumn(
          headerBuilder: () =>
              const EmrGridHeader(text: 'Prevent Cash Payment'),
          cellBuilder: (row) =>
              iconForCheckboxState(value: row.preventCashPayment),
        ),
        EmrGridColumn(
          headerBuilder: () => const EmrGridHeader(text: 'Proof Of Ownership'),
          cellBuilder: (row) =>
              iconForCheckboxState(value: row.proofOfOwnershipRequired),
        ),
        EmrGridColumn(
          headerBuilder: () => const EmrGridHeader(text: 'Vehicle Details'),
          cellBuilder: (row) =>
              iconForCheckboxState(value: row.vehicleDetailsRequired),
        ),
        EmrGridColumn(
          headerBuilder: () =>
              const EmrGridHeader(text: 'Executed Affidavit Document'),
          cellBuilder: (row) => iconForCheckboxState(
            value: row.executedAffidavitDocumentRequired,
          ),
        ),
        EmrGridColumn(
          headerBuilder: () =>
              const EmrGridHeader(text: 'Allowed For Auto Confirm'),
          cellBuilder: (row) =>
              iconForCheckboxState(value: row.allowedForAutoConfirm),
        ),
      ],
      onItemTapped: (paymentRule) {
        final parts = paymentRule.id.split('/');
        final territoryCode = parts[1];
        final yardCode = parts.last;

        context.goNamed(
          EmrOneDataManagementConstants.kRouteYardPaymentRuleForm,
          params: {'yardCode': yardCode, 'territoryCode': territoryCode},
        );
      },
    );
  }

  IconData _iconFor(bool? value) {
    if (true == value) return Icons.check_box;
    if (value == false) return Icons.check_box_outline_blank;
    return Icons.remove_circle;
  }

  Color _colorFor(bool? value) {
    if (value == null) return Colors.grey;
    return Colors.grey;
  }

  double _opacityFor(bool? value) {
    if (value == null) return 0.4;
    return 1;
  }

  Widget iconForCheckboxState({required bool value}) {
    return Opacity(
      opacity: _opacityFor(value),
      child: Icon(_iconFor(value), color: _colorFor(value)),
    );
  }
}
