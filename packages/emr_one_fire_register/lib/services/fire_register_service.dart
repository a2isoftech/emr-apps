import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_fire_register/constants/punch_type_constants.dart';
import 'package:emr_one_fire_register/graphql/mutations/fire_register_mutations.dart';
import 'package:emr_one_fire_register/graphql/queries/fire_register_queries.dart';
import 'package:emr_one_fire_register/graphql/schema.graphql.dart';
import 'package:emr_one_fire_register/models/models.dart';
import 'package:http/http.dart';

class FireRegisterService {
  FireRegisterService({
    required this.httpClient,
    required AppConfig appConfig,
  }) {
    _url = Uri.parse(appConfig.fireRegisterUrl);
  }

  final Client httpClient;

  late final Uri _url;

  Future<List<PunchDevice>> getPunchDevices({
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = const Duration(
      minutes: 5,
    ),
    bool forceLoad = false,
  }) async {
    cacheProvider ??=
        await SharedPrefsCacheProvider.createFromDefaultInstance();

    final result = await documentNodeQueryGetPunchDevices.execute(
      httpClient,
      Query$GetPunchDevices.fromJson,
      cacheProvider: cacheProvider,
      cacheTtl: cacheTtl,
      forceLoad: forceLoad,
      url: _url,
    );

    if (result.hasErrors() || result.data?.punchDevices == null) {
      return [];
    }

    return result.data!.punchDevices
        .map(
          _mapPunchDevice,
        )
        .toList();
  }

  Future<List<String>> getYardAreas(
    String yardCode, {
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = const Duration(minutes: 5),
    bool forceLoad = false,
  }) async {
    cacheProvider ??=
        await SharedPrefsCacheProvider.createFromDefaultInstance();

    final result = await documentNodeQueryGetYardAreas.execute(
      httpClient,
      Query$GetYardAreas.fromJson,
      variables: Variables$Query$GetYardAreas(
        yardCode: yardCode,
      ),
      cacheProvider: cacheProvider,
      cacheTtl: cacheTtl,
      forceLoad: forceLoad,
      url: _url,
    );

    if (result.hasErrors() || result.data?.deviceAreas == null) {
      return [];
    }

    final areas = <String>[];

    for (final area in result.data!.deviceAreas) {
      areas.add(area.areaName);
    }

    return areas.toSet().toList();
  }

  Future<List<String>> getAreaZones(
    String areaName,
    String yardCode, {
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = const Duration(minutes: 5),
    bool forceLoad = false,
  }) async {
    cacheProvider ??=
        await SharedPrefsCacheProvider.createFromDefaultInstance();

    final result = await documentNodeQueryGetDeviceAreaZones.execute(
      httpClient,
      Query$GetDeviceAreaZones.fromJson,
      variables: Variables$Query$GetDeviceAreaZones(
        areaName: areaName,
        yardCode: yardCode,
      ),
      cacheProvider: cacheProvider,
      cacheTtl: cacheTtl,
      forceLoad: forceLoad,
      url: _url,
    );

    if (result.hasErrors() || result.data?.punchDevices == null) {
      return [];
    }

    final zones = result.data!.punchDevices
        .expand((device) => device.deviceAreas)
        .expand((area) => area.areaZones)
        .map((zone) => zone.zoneName)
        .toSet()
        .toList();

    return zones;
  }

  PunchDevice _mapPunchDevice(Query$GetPunchDevices$punchDevices data) =>
      PunchDevice(
        id: data.id,
        clockDevice: data.clockDevice,
        zone: data.zone ?? '',
        yardCode: data.yardCode,
        active: true,
        deviceAreas: _mapDeviceAreas(
          data.deviceAreas,
        ),
      );

  Future<List<PunchEvent>> getFireRegisterPunchEvents({
    required String yardCode,
    required String zone,
    required DateTime date,
    required String area,
  }) async {
    final result = await documentNodeQueryGetFireRegisterPunchEvents.execute(
      httpClient,
      Query$GetFireRegisterPunchEvents.fromJson,
      variables: Variables$Query$GetFireRegisterPunchEvents(
        yardCode: yardCode,
        zone: zone,
        date: date,
        area: area,
      ),
      url: _url,
    );

    if (result.hasErrors() || result.data?.fireRegisterPunchEvents == null) {
      return [];
    }

    return result.data!.fireRegisterPunchEvents
        .map(
          _mapPunchEvent,
        )
        .toList();
  }

  Future<List<GraphUser>> getGraphUsers(String pattern) async {
    final result = await documentNodeQuerySearchEmployee.execute(
      httpClient,
      Query$SearchEmployee.fromJson,
      variables: Variables$Query$SearchEmployee(
        pattern: pattern,
      ),
      url: _url,
    );

    if (result.hasErrors() || result.data!.searchEmployee == null) {
      return [];
    }

    return result.data!.searchEmployee!
        .map(
          _mapGraphUser,
        )
        .toList();
  }

  Future<List<FireRollCallLog>> getFireRollCallLogs({
    required String yardCode,
    required String area,
    required String zone,
    required String date,
  }) async {
    final input = Input$GetFireRollCallLogsInput(
      yardCode: yardCode,
      zone: zone,
      date: date,
      area: area,
    );

    final result = await documentNodeQueryGetFireRollCallLogs.execute(
      httpClient,
      Query$GetFireRollCallLogs.fromJson,
      variables: Variables$Query$GetFireRollCallLogs(
        input: input,
      ),
      url: _url,
    );

    if (result.hasErrors() || result.data?.fireRollCallLogs == null) {
      return [];
    }

    return result.data!.fireRollCallLogs
        .map(
          _mapFireRollCallLog,
        )
        .toList();
  }

  Future<List<MissingFromRollCall>> getMissingEmployees({
    required String yardCode,
    required DateTime date,
  }) async {
    final result = await documentNodeQueryGetMissingEmployees.execute(
      httpClient,
      Query$GetMissingEmployees.fromJson,
      variables: Variables$Query$GetMissingEmployees(
        yardCode: yardCode,
        missingOnDate: date,
      ),
      url: _url,
    );

    if (result.hasErrors() || result.data?.missingEmployees == null) {
      return [];
    }

    return result.data!.missingEmployees
        .map(
          _mapMissingEmployee,
        )
        .toList();
  }

  Future<void> createFireRollcall(
    Input$FireRollCallLogsInput input,
    String yardCode,
    DateTime date, {
    required List<PunchEvent> presentEmployees,
    required List<PunchEvent> missingEmployees,
  }) async {
    await updateMissingListFromRollCall(
      presentEmployees,
      missingEmployees,
      yardCode,
      date,
    );

    await documentNodeMutationCreateFireRollCall.execute(
      httpClient,
      Mutation$CreateFireRollCall.fromJson,
      variables: Variables$Mutation$CreateFireRollCall(
        input: input,
      ),
      url: _url,
    );

    return;
  }

  Future<bool> updateMissingListFromRollCall(
    List<PunchEvent> presentEmployees,
    List<PunchEvent> missingEmployees,
    String yardCode,
    DateTime date,
  ) async {
    final rollCall = <Input$UpdateOrCreateMissingEmployeesInput>[];

    for (final present in presentEmployees) {
      final atRollCall = Input$UpdateOrCreateMissingEmployeesInput(
        subjectName: present.subjectName,
        missingOnDate: date,
        yardCode: yardCode,
        isMissing: false,
        punchId:
            present.punchType != PunchTypeConstants.manual ? present.id : null,
      );

      rollCall.add(
        atRollCall,
      );
    }

    for (final missing in missingEmployees) {
      final missingFromRollCall = Input$UpdateOrCreateMissingEmployeesInput(
        subjectName: missing.subjectName,
        missingOnDate: date,
        yardCode: yardCode,
        isMissing: true,
        punchId:
            missing.punchType != PunchTypeConstants.manual ? missing.id : null,
      );

      rollCall.add(
        missingFromRollCall,
      );
    }

    if (rollCall.isNotEmpty) {
      final result =
          await documentNodeMutationupdateMissingFromRollCall.execute(
        httpClient,
        Mutation$updateMissingFromRollCall.fromJson,
        variables:
            Variables$Mutation$updateMissingFromRollCall(input: rollCall),
        url: _url,
      );

      if (result.data?.updateMissingFromRollCall != null &&
          result.data!.updateMissingFromRollCall.success &&
          !result.hasErrors()) {
        return true;
      }

      return false;
    }

    return true;
  }

  Future<bool> updateMissingListFromMissingGrid(
    List<MissingFromRollCall> foundEmployees,
  ) async {
    final rollCall = <Input$UpdateOrCreateMissingEmployeesInput>[];

    for (final foundEmp in foundEmployees) {
      final atRollCall = Input$UpdateOrCreateMissingEmployeesInput(
        id: foundEmp.id,
        subjectName: foundEmp.subjectName,
        missingOnDate: foundEmp.missingOnDate,
        yardCode: foundEmp.yardCode,
        isMissing: false,
        punchId: foundEmp.punchId,
      );

      rollCall.add(
        atRollCall,
      );
    }

    if (rollCall.isNotEmpty) {
      final result =
          await documentNodeMutationupdateMissingFromRollCall.execute(
        httpClient,
        Mutation$updateMissingFromRollCall.fromJson,
        variables:
            Variables$Mutation$updateMissingFromRollCall(input: rollCall),
        url: _url,
      );

      if (result.data?.updateMissingFromRollCall != null &&
          result.data!.updateMissingFromRollCall.success &&
          !result.hasErrors()) {
        return true;
      }

      return false;
    }

    return true;
  }

  PunchEvent _mapPunchEvent(
    Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents data,
  ) =>
      PunchEvent(
        id: data.id,
        subjectName: data.subjectName,
        subjectType: data.subjectType,
        punchTime: data.punchTime,
        punchType: data.punchType,
        badgeNo: data.badgeNo,
        visitorHost: data.visitorHost,
        visitorCmpName: data.visitorCmpName,
        visitorPhoneNo: data.visitorPhoneNo,
        visitorVehicleReg: data.visitorVehicleReg,
        note: data.note,
      );

  FireRollCallLog _mapFireRollCallLog(
    Query$GetFireRollCallLogs$fireRollCallLogs data,
  ) =>
      FireRollCallLog(
        id: data.id,
        loggedBy: data.loggedBy,
        loggedOn: data.loggedOn,
        punchData: FireRollCallLog.jsonToPunchEvent(
          data.punchData,
        ),
      );

  MissingFromRollCall _mapMissingEmployee(
    Query$GetMissingEmployees$missingEmployees data,
  ) =>
      MissingFromRollCall(
        id: data.id,
        punchId: data.punchId,
        subjectName: data.employeeName,
        yardCode: data.yardCode,
        missingOnDate: data.missingOnDate,
        subjectType: data.subjectType,
        visitorHost: data.visitorHost,
        visitorPhoneNo: data.visitorPhoneNo,
        isMissing: true,
      );

  GraphUser _mapGraphUser(
    Query$SearchEmployee$searchEmployee data,
  ) =>
      GraphUser(
        id: data.id,
        firstName: data.firstName,
        surname: data.surname,
        email: data.email,
        cardId: data.cardId,
      );

  Future<void> updateNote(int id, String note) async {
    await documentNodeMutationUpdatePunchNote.execute(
      httpClient,
      Mutation$UpdatePunchNote$updateNote.fromJson,
      variables: Variables$Mutation$UpdatePunchNote(
        id: id,
        note: note,
      ),
      url: _url,
    );
  }

  List<DeviceArea> _mapDeviceAreas(
    List<Query$GetPunchDevices$punchDevices$deviceAreas> data,
  ) {
    final areas = <DeviceArea>[];

    for (final area in data) {
      final deviceArea = DeviceArea(
        areaGuid: area.areaGuid,
        areaName: area.areaName,
        areaZones: _mapAreaZones(
          area.areaZones,
        ),
        active: area.active,
      );

      areas.add(
        deviceArea,
      );
    }

    return areas;
  }

  List<AreaZone> _mapAreaZones(
    List<Query$GetPunchDevices$punchDevices$deviceAreas$areaZones> data,
  ) {
    final zones = <AreaZone>[];

    for (final zone in data) {
      final areaZone = AreaZone(
        zoneGuid: zone.zoneGuid,
        zoneName: zone.zoneName,
        musterPoint: zone.musterPoint,
        active: zone.active,
      );

      zones.add(
        areaZone,
      );
    }

    return zones;
  }
}
