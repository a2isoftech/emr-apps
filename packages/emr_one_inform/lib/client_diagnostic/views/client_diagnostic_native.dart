import 'package:emr_one_inform/client_diagnostic/views/client_diagnostic.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';

class ClientDiagnosticNative extends ClientDiagnosticView {
  ClientDiagnosticNative({
    super.key,
  });

  @override
  List<Widget> getActions(BuildContext context) {
    return [
      IconButton(
        onPressed: onSearch,
        icon: Icon(Icons.search, color: FormAppColors.white),
      ),
    ];
  }

  @override
  Widget? pageHeader(BuildContext context) => null;

  @override
  Widget showJobs(
    BuildContext context,
  ) {
    return ListView.separated(
      itemCount: controller.jobs!.length,
      itemBuilder: (BuildContext ctx, int index) {
        final instance = controller.jobs![index];
        return jobCell(
          context: context,
          job: instance,
        );
      },
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) => listViewDivider(),
      shrinkWrap: true,
    );
  }
}
