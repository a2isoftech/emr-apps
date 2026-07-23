import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/data/controllers/reports/reports_controller.dart';
import 'package:emr_one_transport/data/models/reports/report_details.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  late ReportsController controller;

  @override
  void initState() {
    controller = Provider.of<ReportsController>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ReportDetails>?>(
      future: controller.initialize(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingIndicator();
        } else if (snapshot.hasData &&
            snapshot.data != null &&
            snapshot.data!.isNotEmpty) {
          return _buildMenu(_getAssetsMenuItems);
        } else if (snapshot.hasData && snapshot.data != null) {
          return Center(child: Text(context.l10n.noReportsAvailable));
        } else {
          return Center(
            child: Text(
              '${snapshot.error}',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          );
        }
      },
    );
  }

  Widget _buildMenu(List<SimpleMenuItem> menuItems) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: menuItems.map(_buildMenuTile).toList(),
      ),
    );
  }

  List<SimpleMenuItem> get _getAssetsMenuItems {
    return <SimpleMenuItem>[
      if (context.userHasPermission(UserPermissions.reportsAction)) ...[
        for (final report in controller.reports)
          _buildMenuItem(
            '${report.displayName} ${StringConstants.report}',
            FontAwesomeIcons.box.data,
            report.reportName,
          ),
      ],
    ];
  }

  SimpleMenuItem _buildMenuItem(String name, IconData icon, String reportName) {
    return SimpleMenuItem(
      name,
      icon,
      () => context.goNamed(RoutingPathName.viewReport, extra: reportName),
    );
  }

  Widget _buildMenuTile(SimpleMenuItem item) {
    return Padding(
      padding: const EdgeInsets.only(right: Insets.gutter),
      child: EOHoverTile(
        onTap: item.function,
        child: EOHoverTileSimpleContent(icon: item.icon, label: item.name),
      ),
    );
  }
}
