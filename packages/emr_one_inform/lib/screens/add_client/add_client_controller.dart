import 'package:emr_one_inform/models/category.dart';
import 'package:emr_one_inform/screens/add_client/add_client_model.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/services/client_service.dart';

class AddClientController extends BaseController {
  AddClientController({
    required this.clientService,
  });

  final ClientService clientService;

  bool isBusy = false;
  bool isValid = false;

  // data fields
  int id = 0;
  String clientName = '';
  String? defaultWorkRequestType;
  String? defaultLifeCycleState;
  bool isEditable = true;
  bool isD365 = false;
  bool isActive = true;
  bool isSaved = false;
  bool canSchedule = true;
  List<String>? lifeCycleStates;

  Category? client;

  bool isFormValid() {
    return clientName != '';
  }

  void setClientName(String? newClientName) {
    clientName = newClientName ?? '';
    notifyListeners();
  }

  void setDefaultWorkRequestType(String? value) {
    defaultWorkRequestType = value;
    notifyListeners();
  }

void setDefaultLifeCycleState(String? value) {
    defaultLifeCycleState = value;
    notifyListeners();
  }

  void setClientIsD365({required bool clientD365}) {
    isD365 = clientD365;
    isEditable = !clientD365;
    notifyListeners();
  }

  void setClientIsActive({required bool clientIsActive}) {
    isActive = clientIsActive;
    notifyListeners();
  }

  void setClientCanBeScheduled({required bool clientCanSchedule}) {
    canSchedule = clientCanSchedule;
    notifyListeners();
  }  

  Future<bool> saveClient() async {
    isBusy = true;
    notifyListeners();

    final result = await clientService.createOrUpdateClient(
      SaveClientRequest(
        id: id,
        title: clientName,
        isEditable: !isD365,
        isD365: isD365,
        isActive: isActive,
        defaultWorkRequestType: defaultWorkRequestType,
        defaultLifeCycleState: defaultLifeCycleState,
        canSchedule: canSchedule,
      ),
    );

    isBusy = false;
    // notifyListeners();
    if (result?.message == null) {
      isSaved = true;
    }
    return isSaved;
  }

  Future<void> getClientById({required int clientId}) async {
    isBusy = true;
    notifyListeners();

    client = await clientService.getClientById(clientId: clientId);

    id = client!.id;
    setClientName(client?.title);
    setDefaultWorkRequestType(client?.defaultWorkRequestType);
    setClientIsD365(clientD365: client?.isD365 ?? false);
    setClientIsActive(clientIsActive: client?.isActive ?? false);
    setClientCanBeScheduled(clientCanSchedule: client?.canSchedule ?? true);
    
    if(lifeCycleStates != null 
    && lifeCycleStates!.contains(client?.defaultLifeCycleState)) {
      setDefaultLifeCycleState(client?.defaultLifeCycleState);
    }

    isBusy = false;
    notifyListeners();
  }

  Future<List<String>> getLifeCycleStates() async {
     return lifeCycleStates = await clientService.getLifeCycleStates();
  }
}
