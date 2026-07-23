// This policy will loop through a list of URLs, advancing to the next
// one each time there is a failure.
import 'package:emr_one_core/networking/networking.dart';

class RoundRobinPolicy extends Policy {
  RoundRobinPolicy(this.urls) {
    uri = Uri.parse(urls[index]);
  }

  final List<String> urls;

  int index = 0;

  @override
  Uri getUri({Uri? uri}) {
    if (uri == null) {
      return this.uri!;
    }

    return this.uri!.resolveUri(uri);
  }

  @override
  void willRetry(RetryContext retryContext) {
    if (retryContext.containsFailure()) {
      index++;
    }

    if (index >= urls.length) {
      index = 0;
    }

    uri = Uri.parse(urls[index]);
  }
}
