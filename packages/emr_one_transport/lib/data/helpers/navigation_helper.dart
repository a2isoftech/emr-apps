import 'package:url_launcher/url_launcher.dart';

class NavigationHelper {
  static Future<void> openInNewTab(String url) async {
    final uri = Uri.parse(url);
    await launchUrl(
      uri,
      webOnlyWindowName: '_blank', // Opens in new tab
    );
  }
}
