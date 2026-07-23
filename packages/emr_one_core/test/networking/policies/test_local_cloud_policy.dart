import 'package:emr_one_core/networking/networking.dart';

class TestLocalCloudPolicy extends Policy {
  TestLocalCloudPolicy(this.localAddress, this.cloudAddress);

  final String localAddress;

  final String cloudAddress;

  bool onWiFi = true;

  @override
  Uri getUri({Uri? uri}) => Uri.parse(onWiFi ? localAddress : cloudAddress);
}
