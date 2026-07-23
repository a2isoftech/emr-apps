import 'package:emr_one_cashiersearch/screens/cashier_search/cashier_search_common.dart';
import 'package:flutter/material.dart';

class CashierSearchWeb extends CashierSearchCommon {
  CashierSearchWeb({
    required super.controller,
    super.key,
  });

  @override
  State<CashierSearchWeb> createState() => _CashierSearchWebState();
}

class _CashierSearchWebState
    extends CashierSearchCommonState<CashierSearchWeb> {}
