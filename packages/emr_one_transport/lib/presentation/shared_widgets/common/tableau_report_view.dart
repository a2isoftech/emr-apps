import 'package:flutter/material.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';
import 'package:webview_flutter_web/webview_flutter_web.dart';

class TableauReportView extends StatelessWidget {
  TableauReportView({
    required this.htmlContent,
    super.key,
  }) {
    // Set the platform to use the web implementation
    WebViewPlatform.instance = WebWebViewPlatform();
    // Initialize the controller and load the HTML content
    _controller = PlatformWebViewController(
      const PlatformWebViewControllerCreationParams(),
    )..loadHtmlString(htmlContent);
  }
  final String htmlContent;
  late final PlatformWebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PlatformWebViewWidget(
        PlatformWebViewWidgetCreationParams(controller: _controller),
      ).build(context),
    );
  }
}
