import 'package:emr_one_yard_app/controllers/load_out_search_controller.dart';
import 'package:emr_one_yard_app/models/enums.dart';
import 'package:emr_one_yard_app/screens/load_outs/load_out_tab.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class LoadOutTabsScreen extends StatelessWidget {
  const LoadOutTabsScreen({
    required LoadOutSearchController loadOutController,
    super.key,
  }) : _loadOutController = loadOutController;

  final LoadOutSearchController _loadOutController;

  @override
  Widget build(BuildContext context) {
    return Watch(
      (context) => LoadOutTab(
        loadOutController: _loadOutController,
        //Hardcode load out mode for now, we will likely have to
        // add filtering or re-implement tabs based on feedback
        // from first deployment.
        loadOutMode: LoadOutMode.all,
      ),
    );
  }
}
