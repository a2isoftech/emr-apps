import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_transport/data/controllers/reports/reports_controller.dart'
    show ReportsController;
import 'package:emr_one_transport/presentation/shared_widgets/common/loading_indicator.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/tableau_report_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReportsViewWidget extends StatefulWidget {
  const ReportsViewWidget({required this.reportName, super.key});

  final String reportName;

  @override
  State<ReportsViewWidget> createState() => _ReportsViewWidgetState();
}

class _ReportsViewWidgetState extends State<ReportsViewWidget> {
  late ReportsController controller;

  @override
  void initState() {
    controller = Provider.of<ReportsController>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(
      future: controller.getReportHtmlContent(widget.reportName),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingIndicator();
        } else if (snapshot.hasData &&
            snapshot.data != null &&
            snapshot.data != '') {
          return TableauReportView(
            htmlContent: controller.reportHtmlContent.value!,
          );
        } else if (snapshot.hasData && snapshot.data != null) {
          return Center(child: Text(context.l10n.noDataFound));
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
}
