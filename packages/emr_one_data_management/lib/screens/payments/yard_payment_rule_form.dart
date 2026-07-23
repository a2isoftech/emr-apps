import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_data_management/emr_one_data_management_constants.dart';
import 'package:emr_one_data_management/screens/payments/cards/basic_yard_payment_rule_card.dart';
import 'package:emr_one_data_management/screens/payments/yard_payment_rule_form_data.dart';
import 'package:emr_sharedtypes/models/payment_rules.dart';
import 'package:flutter/material.dart';

class YardPaymentRuleForm extends StatefulWidget {
  const YardPaymentRuleForm({
    required this.yardCode,
    required this.territoryCode,
    super.key,
  });

  final String yardCode;
  final String territoryCode;

  @override
  State<YardPaymentRuleForm> createState() => _YardPaymentRuleFormState();
}

class _YardPaymentRuleFormState extends State<YardPaymentRuleForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  PaymentRules? yardPaymentRule;
  late final Future<void> _future;
  YardPaymentRuleFormData? _model;

  @override
  void initState() {
    super.initState();

    _future = _loadYardPaymentRule();
  }

  Future<void> _loadYardPaymentRule() async {
    if (widget.yardCode == EmrOneDataManagementConstants.kRouteNewYardCode) {
      _model = YardPaymentRuleFormData(
        id: 'yards/${widget.yardCode}',
      );

      return;
    }

    final paymentRule = await context.coreApi.referenceData.getPaymentRuleById(
      'paymentRules/${widget.territoryCode}/${widget.yardCode}',
    );

    _model = YardPaymentRuleFormData.fromYardPaymentRule(paymentRule);
  }

  @override
  Widget build(BuildContext _) {
    return FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
        return Form(
          key: _formKey,
          child: (snapshot.connectionState != ConnectionState.done)
              // Loading.
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : (_model == null)
                  // Yard not found.
                  ? const Center(
                      child: Text('Yard Payment Rule not found.'),
                    )
                  // Form.
                  : YardPaymentRuleCard(
                      model: _model!,
                    ),
        );
      },
    );
  }
}
