import 'package:emr_one_inform/audit/services/audit_service.dart';
import 'package:emr_one_inform/models/form_instance.dart';
import 'package:emr_one_inform/models/form_instance_status_log.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/services/interfaces/icommon_service.dart';

abstract class IAuditController extends BaseController {
  bool get isLoading;
  bool get isBusy;
  String get instanceId;
  List<FormInstanceStatusLog>? instanceLog = List.empty(growable: true);
  FormInstance? get instance;
  Future<void> loadLogs({bool? isRefresh});
  void setCurrentInstance(String? instanceId);
}

class AuditController extends IAuditController {
  AuditController({
    required this.auditService,
    required this.userPreferencesRepository,
    required this.commonService,});

  bool _isLoading = true;
  bool _isBusy = false;
  String _instanceId = '';
   FormInstance?  _instance;
  final ICommonService commonService;
  final IAuditService auditService;
  final IUserPreferencesRepository userPreferencesRepository;
  
  @override
  bool get isBusy => _isBusy;
  
  @override
  bool get isLoading => _isLoading;

   @override
  String get instanceId => _instanceId;
  
  @override
  Future<void> loadLogs({bool? isRefresh}) async {

    if(_instanceId.isNotEmpty)
    {
      _isBusy = true;
      _isLoading = true;
      reload();
      // instanceLog = await auditService
      //         .getLogs(_instanceId)
      //         .catchError((Object err) {
      //       return Future.value(
      //       <FormInstanceStatusLog>[],
            
      //       );
      //     });
       _instance = await auditService
              .getInstanceLogs(_instanceId)
              .catchError((Object err) {
            return null;
          });
      
        instanceLog = instance?.logs;
      _isBusy = false;
      _isLoading = false;
      reload();
    }
      
  }
  
  @override
  void setCurrentInstance(String? instanceId) {
    _instanceId = instanceId ?? '';
  }
  
  @override
  FormInstance? get instance =>  _instance;

}
