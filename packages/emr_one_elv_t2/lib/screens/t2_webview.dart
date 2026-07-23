import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class T2WebView extends StatefulWidget {
  const T2WebView({super.key});

  @override
  State<T2WebView> createState() => _T2WebViewState();
}

class _T2WebViewState extends State<T2WebView> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    final appConfig = Provider.of<AppConfig>(context, listen: false);
    final baseUrl = appConfig.t2baseUrl;
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('$baseUrl/Mobile/ProcessELV'),
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Insets.gutter / 2),
        child: Column(
          children: [
            Expanded(
              child: WebViewWidget(
                controller: controller,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Insets.gutter / 2),
              child: ElevatedButton(
                onPressed: () => context.goNamed(NamedRoutes.dashboard),
                child: Text(
                  context.l10n.done.toUpperCase(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
