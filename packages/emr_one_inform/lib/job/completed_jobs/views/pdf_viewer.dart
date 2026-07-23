import 'dart:typed_data';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/job/completed_jobs/controllers/pdf_viewer_controller.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';

class PdfViewerPage extends BasePage<PdfViewerPageController> {
  PdfViewerPage({
    required this.workOrderId,
    required this.companyCode,
    required this.isWeb,
    super.key,
  });

  final String workOrderId;
  final String companyCode;
  final bool isWeb;
  late final Future<Uint8List> pdfFileFuture;

  @override
  bool hideDefaultAppBar() => true;

  @override
  Widget? getActionButton(BuildContext context) => null;

  @override
  String getTitle(BuildContext context) {
    return workOrderId;
  }

  @override
  void initState(BuildContext context) {
    pdfFileFuture = controller.getPdfDocument(workOrderId, companyCode);
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    return FutureBuilder<Uint8List>(
      future: pdfFileFuture,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error?.toString() ?? 'Error'),
          );
        }

        if (!snapshot.hasData) return showSpinner();

        return EmrPdfViewer(data: snapshot.data);
      },
    );
  }

  @override
  Widget? pageHeader(BuildContext context) {
    return isWeb ? super.pageHeader(context) : null;
  }

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) {
    return isWeb ? null : super.getAppBar(context);
  }
}
