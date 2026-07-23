import 'package:emr_one_eam/base/base_service.dart';

abstract class IHelpFileService extends BaseService {
  IHelpFileService({required super.httpClient});
}

class HelpFileService extends IHelpFileService {
  HelpFileService({required super.httpClient});
}
