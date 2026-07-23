import 'package:emr_one_door_access/emr_one_door_access.dart';

class ManageAccessPointController extends DoorAccessBaseController {
  ManageAccessPointController({required this.doorAccessService});

  final DoorAccessService doorAccessService;
  String _accessControllerId = '';
  String _entity = '';
  int numberOfSeconds = 15;

  @override
  void reset() {
    processing = false;
  }

  void init(String accessControllerId, String entity) {
    _accessControllerId = accessControllerId;
    _entity = entity;
  }

  void setSeconds(String val) {
    numberOfSeconds = int.parse(val);
    notifyListeners();
  }

  @override
  Future<(bool, String)> update() async {
    if (_accessControllerId.isEmpty || _entity.isEmpty) {
      toggleProcessing();
      return (false, 'Invalid data supplied to unlock');
    }
    final response = await doorAccessService.accessPointsService
        .unlockAccessPoint(
          accessControllerId: _accessControllerId,
          accessPointToken: _entity,
          numberOfSeconds: numberOfSeconds,
          //TODO: Get it from screen
          reason: 'Unlocked from detail page.',
        );
    if (response) {
      return (true, '');
    }
    return (false, 'Schedule could not be saved.');
  }
}
