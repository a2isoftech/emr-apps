import 'package:emr_one_inform/screens/base/base_controller.dart';

class MediaSearchController extends BaseController {
  String requestId = '';
  String cmpCode = '101';
  bool searchDisabled = true;

  void setCompanyCode(String value) {
    cmpCode = value;
    reload();
  }

  void setrequestId(String value) {
    requestId = value;
    reload();
  }

  @override
  void reload() {
    final disabled = cmpCode.isEmpty || requestId.isEmpty;
    if (disabled != searchDisabled) {
      searchDisabled = disabled;
    }
    super.reload();
  }
}
