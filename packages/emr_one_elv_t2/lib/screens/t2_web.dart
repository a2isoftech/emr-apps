import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class T2Web extends StatefulWidget {
  const T2Web({super.key});

  @override
  State<T2Web> createState() => _T2WebState();
}

class _T2WebState extends State<T2Web> {
  @override
  void initState() {
    super.initState();
    final appConfig = Provider.of<AppConfig>(
      context,
      listen: false,
    );
    final baseUrl = appConfig.t2baseUrl;
    _launchUrl(baseUrl);
  }

  Future<void> _launchUrl(String url) async {
    final url0 = Uri.parse('$url/Mobile/ProcessELV');
    if (!await launchUrl(url0)) {
      throw Exception('Could not launch $url0');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Trade 2 Will be Opened in a new Window.'),
          Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: ElevatedButton(
              onPressed: () {
                context.goNamed(NamedRoutes.dashboard);
              },
              child: Text(context.l10n.home),
            ),
          ),
        ],
      ),
    );
  }
}
