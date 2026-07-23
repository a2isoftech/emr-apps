import 'package:emr_one_inform/client_diagnostic/views/client_diagnostic.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ClientDiagnosticWeb extends ClientDiagnosticView {
  ClientDiagnosticWeb({
    super.key,
  });

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  List<Widget> getActions(BuildContext context) {
    return [
      IconButton(
        onPressed: onSearch,
        icon: Icon(Icons.search, color: FormAppColors.white),
      ),
      IconButton(
        onPressed: onRefresh,
        icon: Icon(Icons.refresh, color: FormAppColors.white),
      ),
    ];
  }

  @override
  Widget showJobs(
    BuildContext context,
  ) {
    return ResponsiveGridRow(
      children: controller.jobs!
          .map(
            (job) => ResponsiveGridCol(
              xl: 4,
              md: 6,
              child: jobCell(
                context: context,
                job: job,
              ),
            ),
          )
          .toList(),
    );
  }
}
