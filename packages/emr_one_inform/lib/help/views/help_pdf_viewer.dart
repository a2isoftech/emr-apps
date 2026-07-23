import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/help/controllers/help_pdf_controller.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:flutter/material.dart';

class HelpPdfViewerPage extends BasePage<HelpPdfController> {
  HelpPdfViewerPage({required this.isWeb, super.key});

  final bool isWeb;

  @override
  void initState(BuildContext context) {}

  @override
  bool hideDefaultAppBar() => true;

  @override
  Widget? getActionButton(BuildContext context) => null;

  @override
  String getTitle(BuildContext context) {
    return context.l10n.help;
  }

  @override
  Widget? pageHeader(BuildContext context) {
    return isWeb ? super.pageHeader(context) : null;
  }

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) {
    return isWeb ? null : super.getAppBar(context);
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    return const EmrPdfViewer(
      assetName: 'packages/emr_one_inform/assets/cmms.pdf',
    );
  }
}
