import 'package:gql/ast.dart';

class Query$GetPunchDevices {
  Query$GetPunchDevices({
    required this.punchDevices,
    this.$__typename = 'Query',
  });

  factory Query$GetPunchDevices.fromJson(Map<String, dynamic> json) {
    final l$punchDevices = json['punchDevices'];
    final l$$__typename = json['__typename'];
    return Query$GetPunchDevices(
      punchDevices: (l$punchDevices as List<dynamic>)
          .map((e) => Query$GetPunchDevices$punchDevices.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetPunchDevices$punchDevices> punchDevices;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$punchDevices = punchDevices;
    _resultData['punchDevices'] =
        l$punchDevices.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$punchDevices = punchDevices;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$punchDevices.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetPunchDevices) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$punchDevices = punchDevices;
    final lOther$punchDevices = other.punchDevices;
    if (l$punchDevices.length != lOther$punchDevices.length) {
      return false;
    }
    for (int i = 0; i < l$punchDevices.length; i++) {
      final l$punchDevices$entry = l$punchDevices[i];
      final lOther$punchDevices$entry = lOther$punchDevices[i];
      if (l$punchDevices$entry != lOther$punchDevices$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPunchDevices on Query$GetPunchDevices {
  CopyWith$Query$GetPunchDevices<Query$GetPunchDevices> get copyWith =>
      CopyWith$Query$GetPunchDevices(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPunchDevices<TRes> {
  factory CopyWith$Query$GetPunchDevices(
    Query$GetPunchDevices instance,
    TRes Function(Query$GetPunchDevices) then,
  ) = _CopyWithImpl$Query$GetPunchDevices;

  factory CopyWith$Query$GetPunchDevices.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPunchDevices;

  TRes call({
    List<Query$GetPunchDevices$punchDevices>? punchDevices,
    String? $__typename,
  });
  TRes punchDevices(
      Iterable<Query$GetPunchDevices$punchDevices> Function(
              Iterable<
                  CopyWith$Query$GetPunchDevices$punchDevices<
                      Query$GetPunchDevices$punchDevices>>)
          _fn);
}

class _CopyWithImpl$Query$GetPunchDevices<TRes>
    implements CopyWith$Query$GetPunchDevices<TRes> {
  _CopyWithImpl$Query$GetPunchDevices(
    this._instance,
    this._then,
  );

  final Query$GetPunchDevices _instance;

  final TRes Function(Query$GetPunchDevices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? punchDevices = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPunchDevices(
        punchDevices: punchDevices == _undefined || punchDevices == null
            ? _instance.punchDevices
            : (punchDevices as List<Query$GetPunchDevices$punchDevices>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes punchDevices(
          Iterable<Query$GetPunchDevices$punchDevices> Function(
                  Iterable<
                      CopyWith$Query$GetPunchDevices$punchDevices<
                          Query$GetPunchDevices$punchDevices>>)
              _fn) =>
      call(
          punchDevices: _fn(_instance.punchDevices
              .map((e) => CopyWith$Query$GetPunchDevices$punchDevices(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetPunchDevices<TRes>
    implements CopyWith$Query$GetPunchDevices<TRes> {
  _CopyWithStubImpl$Query$GetPunchDevices(this._res);

  TRes _res;

  call({
    List<Query$GetPunchDevices$punchDevices>? punchDevices,
    String? $__typename,
  }) =>
      _res;

  punchDevices(_fn) => _res;
}

const documentNodeQueryGetPunchDevices = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPunchDevices'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'punchDevices'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'active'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'eq'),
                    value: BooleanValueNode(value: true),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'clockDevice'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'zone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'yardCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'deviceAreas'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'active'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'areaGuid'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'areaName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'areaZones'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'active'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'musterPoint'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'zoneGuid'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'zoneName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$GetPunchDevices$punchDevices {
  Query$GetPunchDevices$punchDevices({
    required this.id,
    required this.clockDevice,
    this.zone,
    required this.yardCode,
    required this.deviceAreas,
    this.$__typename = 'PunchDeviceData',
  });

  factory Query$GetPunchDevices$punchDevices.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$clockDevice = json['clockDevice'];
    final l$zone = json['zone'];
    final l$yardCode = json['yardCode'];
    final l$deviceAreas = json['deviceAreas'];
    final l$$__typename = json['__typename'];
    return Query$GetPunchDevices$punchDevices(
      id: (l$id as int),
      clockDevice: (l$clockDevice as String),
      zone: (l$zone as String?),
      yardCode: (l$yardCode as String),
      deviceAreas: (l$deviceAreas as List<dynamic>)
          .map((e) => Query$GetPunchDevices$punchDevices$deviceAreas.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String clockDevice;

  final String? zone;

  final String yardCode;

  final List<Query$GetPunchDevices$punchDevices$deviceAreas> deviceAreas;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$clockDevice = clockDevice;
    _resultData['clockDevice'] = l$clockDevice;
    final l$zone = zone;
    _resultData['zone'] = l$zone;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$deviceAreas = deviceAreas;
    _resultData['deviceAreas'] = l$deviceAreas.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$clockDevice = clockDevice;
    final l$zone = zone;
    final l$yardCode = yardCode;
    final l$deviceAreas = deviceAreas;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$clockDevice,
      l$zone,
      l$yardCode,
      Object.hashAll(l$deviceAreas.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetPunchDevices$punchDevices) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$clockDevice = clockDevice;
    final lOther$clockDevice = other.clockDevice;
    if (l$clockDevice != lOther$clockDevice) {
      return false;
    }
    final l$zone = zone;
    final lOther$zone = other.zone;
    if (l$zone != lOther$zone) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$deviceAreas = deviceAreas;
    final lOther$deviceAreas = other.deviceAreas;
    if (l$deviceAreas.length != lOther$deviceAreas.length) {
      return false;
    }
    for (int i = 0; i < l$deviceAreas.length; i++) {
      final l$deviceAreas$entry = l$deviceAreas[i];
      final lOther$deviceAreas$entry = lOther$deviceAreas[i];
      if (l$deviceAreas$entry != lOther$deviceAreas$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPunchDevices$punchDevices
    on Query$GetPunchDevices$punchDevices {
  CopyWith$Query$GetPunchDevices$punchDevices<
          Query$GetPunchDevices$punchDevices>
      get copyWith => CopyWith$Query$GetPunchDevices$punchDevices(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPunchDevices$punchDevices<TRes> {
  factory CopyWith$Query$GetPunchDevices$punchDevices(
    Query$GetPunchDevices$punchDevices instance,
    TRes Function(Query$GetPunchDevices$punchDevices) then,
  ) = _CopyWithImpl$Query$GetPunchDevices$punchDevices;

  factory CopyWith$Query$GetPunchDevices$punchDevices.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPunchDevices$punchDevices;

  TRes call({
    int? id,
    String? clockDevice,
    String? zone,
    String? yardCode,
    List<Query$GetPunchDevices$punchDevices$deviceAreas>? deviceAreas,
    String? $__typename,
  });
  TRes deviceAreas(
      Iterable<Query$GetPunchDevices$punchDevices$deviceAreas> Function(
              Iterable<
                  CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas<
                      Query$GetPunchDevices$punchDevices$deviceAreas>>)
          _fn);
}

class _CopyWithImpl$Query$GetPunchDevices$punchDevices<TRes>
    implements CopyWith$Query$GetPunchDevices$punchDevices<TRes> {
  _CopyWithImpl$Query$GetPunchDevices$punchDevices(
    this._instance,
    this._then,
  );

  final Query$GetPunchDevices$punchDevices _instance;

  final TRes Function(Query$GetPunchDevices$punchDevices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? clockDevice = _undefined,
    Object? zone = _undefined,
    Object? yardCode = _undefined,
    Object? deviceAreas = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPunchDevices$punchDevices(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        clockDevice: clockDevice == _undefined || clockDevice == null
            ? _instance.clockDevice
            : (clockDevice as String),
        zone: zone == _undefined ? _instance.zone : (zone as String?),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        deviceAreas: deviceAreas == _undefined || deviceAreas == null
            ? _instance.deviceAreas
            : (deviceAreas
                as List<Query$GetPunchDevices$punchDevices$deviceAreas>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes deviceAreas(
          Iterable<Query$GetPunchDevices$punchDevices$deviceAreas> Function(
                  Iterable<
                      CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas<
                          Query$GetPunchDevices$punchDevices$deviceAreas>>)
              _fn) =>
      call(
          deviceAreas: _fn(_instance.deviceAreas.map(
              (e) => CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetPunchDevices$punchDevices<TRes>
    implements CopyWith$Query$GetPunchDevices$punchDevices<TRes> {
  _CopyWithStubImpl$Query$GetPunchDevices$punchDevices(this._res);

  TRes _res;

  call({
    int? id,
    String? clockDevice,
    String? zone,
    String? yardCode,
    List<Query$GetPunchDevices$punchDevices$deviceAreas>? deviceAreas,
    String? $__typename,
  }) =>
      _res;

  deviceAreas(_fn) => _res;
}

class Query$GetPunchDevices$punchDevices$deviceAreas {
  Query$GetPunchDevices$punchDevices$deviceAreas({
    required this.active,
    required this.areaGuid,
    required this.areaName,
    required this.areaZones,
    this.$__typename = 'DeviceAreas',
  });

  factory Query$GetPunchDevices$punchDevices$deviceAreas.fromJson(
      Map<String, dynamic> json) {
    final l$active = json['active'];
    final l$areaGuid = json['areaGuid'];
    final l$areaName = json['areaName'];
    final l$areaZones = json['areaZones'];
    final l$$__typename = json['__typename'];
    return Query$GetPunchDevices$punchDevices$deviceAreas(
      active: (l$active as bool),
      areaGuid: (l$areaGuid as String),
      areaName: (l$areaName as String),
      areaZones: (l$areaZones as List<dynamic>)
          .map((e) =>
              Query$GetPunchDevices$punchDevices$deviceAreas$areaZones.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool active;

  final String areaGuid;

  final String areaName;

  final List<Query$GetPunchDevices$punchDevices$deviceAreas$areaZones>
      areaZones;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$active = active;
    _resultData['active'] = l$active;
    final l$areaGuid = areaGuid;
    _resultData['areaGuid'] = l$areaGuid;
    final l$areaName = areaName;
    _resultData['areaName'] = l$areaName;
    final l$areaZones = areaZones;
    _resultData['areaZones'] = l$areaZones.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$active = active;
    final l$areaGuid = areaGuid;
    final l$areaName = areaName;
    final l$areaZones = areaZones;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$active,
      l$areaGuid,
      l$areaName,
      Object.hashAll(l$areaZones.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetPunchDevices$punchDevices$deviceAreas) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$areaGuid = areaGuid;
    final lOther$areaGuid = other.areaGuid;
    if (l$areaGuid != lOther$areaGuid) {
      return false;
    }
    final l$areaName = areaName;
    final lOther$areaName = other.areaName;
    if (l$areaName != lOther$areaName) {
      return false;
    }
    final l$areaZones = areaZones;
    final lOther$areaZones = other.areaZones;
    if (l$areaZones.length != lOther$areaZones.length) {
      return false;
    }
    for (int i = 0; i < l$areaZones.length; i++) {
      final l$areaZones$entry = l$areaZones[i];
      final lOther$areaZones$entry = lOther$areaZones[i];
      if (l$areaZones$entry != lOther$areaZones$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPunchDevices$punchDevices$deviceAreas
    on Query$GetPunchDevices$punchDevices$deviceAreas {
  CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas<
          Query$GetPunchDevices$punchDevices$deviceAreas>
      get copyWith => CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas<TRes> {
  factory CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas(
    Query$GetPunchDevices$punchDevices$deviceAreas instance,
    TRes Function(Query$GetPunchDevices$punchDevices$deviceAreas) then,
  ) = _CopyWithImpl$Query$GetPunchDevices$punchDevices$deviceAreas;

  factory CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPunchDevices$punchDevices$deviceAreas;

  TRes call({
    bool? active,
    String? areaGuid,
    String? areaName,
    List<Query$GetPunchDevices$punchDevices$deviceAreas$areaZones>? areaZones,
    String? $__typename,
  });
  TRes areaZones(
      Iterable<Query$GetPunchDevices$punchDevices$deviceAreas$areaZones> Function(
              Iterable<
                  CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas$areaZones<
                      Query$GetPunchDevices$punchDevices$deviceAreas$areaZones>>)
          _fn);
}

class _CopyWithImpl$Query$GetPunchDevices$punchDevices$deviceAreas<TRes>
    implements CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas<TRes> {
  _CopyWithImpl$Query$GetPunchDevices$punchDevices$deviceAreas(
    this._instance,
    this._then,
  );

  final Query$GetPunchDevices$punchDevices$deviceAreas _instance;

  final TRes Function(Query$GetPunchDevices$punchDevices$deviceAreas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? active = _undefined,
    Object? areaGuid = _undefined,
    Object? areaName = _undefined,
    Object? areaZones = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPunchDevices$punchDevices$deviceAreas(
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        areaGuid: areaGuid == _undefined || areaGuid == null
            ? _instance.areaGuid
            : (areaGuid as String),
        areaName: areaName == _undefined || areaName == null
            ? _instance.areaName
            : (areaName as String),
        areaZones: areaZones == _undefined || areaZones == null
            ? _instance.areaZones
            : (areaZones as List<
                Query$GetPunchDevices$punchDevices$deviceAreas$areaZones>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes areaZones(
          Iterable<Query$GetPunchDevices$punchDevices$deviceAreas$areaZones> Function(
                  Iterable<
                      CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas$areaZones<
                          Query$GetPunchDevices$punchDevices$deviceAreas$areaZones>>)
              _fn) =>
      call(
          areaZones: _fn(_instance.areaZones.map((e) =>
              CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas$areaZones(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetPunchDevices$punchDevices$deviceAreas<TRes>
    implements CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas<TRes> {
  _CopyWithStubImpl$Query$GetPunchDevices$punchDevices$deviceAreas(this._res);

  TRes _res;

  call({
    bool? active,
    String? areaGuid,
    String? areaName,
    List<Query$GetPunchDevices$punchDevices$deviceAreas$areaZones>? areaZones,
    String? $__typename,
  }) =>
      _res;

  areaZones(_fn) => _res;
}

class Query$GetPunchDevices$punchDevices$deviceAreas$areaZones {
  Query$GetPunchDevices$punchDevices$deviceAreas$areaZones({
    required this.active,
    required this.musterPoint,
    required this.zoneGuid,
    required this.zoneName,
    this.$__typename = 'AreaZones',
  });

  factory Query$GetPunchDevices$punchDevices$deviceAreas$areaZones.fromJson(
      Map<String, dynamic> json) {
    final l$active = json['active'];
    final l$musterPoint = json['musterPoint'];
    final l$zoneGuid = json['zoneGuid'];
    final l$zoneName = json['zoneName'];
    final l$$__typename = json['__typename'];
    return Query$GetPunchDevices$punchDevices$deviceAreas$areaZones(
      active: (l$active as bool),
      musterPoint: (l$musterPoint as String),
      zoneGuid: (l$zoneGuid as String),
      zoneName: (l$zoneName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool active;

  final String musterPoint;

  final String zoneGuid;

  final String zoneName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$active = active;
    _resultData['active'] = l$active;
    final l$musterPoint = musterPoint;
    _resultData['musterPoint'] = l$musterPoint;
    final l$zoneGuid = zoneGuid;
    _resultData['zoneGuid'] = l$zoneGuid;
    final l$zoneName = zoneName;
    _resultData['zoneName'] = l$zoneName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$active = active;
    final l$musterPoint = musterPoint;
    final l$zoneGuid = zoneGuid;
    final l$zoneName = zoneName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$active,
      l$musterPoint,
      l$zoneGuid,
      l$zoneName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetPunchDevices$punchDevices$deviceAreas$areaZones) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$musterPoint = musterPoint;
    final lOther$musterPoint = other.musterPoint;
    if (l$musterPoint != lOther$musterPoint) {
      return false;
    }
    final l$zoneGuid = zoneGuid;
    final lOther$zoneGuid = other.zoneGuid;
    if (l$zoneGuid != lOther$zoneGuid) {
      return false;
    }
    final l$zoneName = zoneName;
    final lOther$zoneName = other.zoneName;
    if (l$zoneName != lOther$zoneName) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPunchDevices$punchDevices$deviceAreas$areaZones
    on Query$GetPunchDevices$punchDevices$deviceAreas$areaZones {
  CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas$areaZones<
          Query$GetPunchDevices$punchDevices$deviceAreas$areaZones>
      get copyWith =>
          CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas$areaZones(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas$areaZones<
    TRes> {
  factory CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas$areaZones(
    Query$GetPunchDevices$punchDevices$deviceAreas$areaZones instance,
    TRes Function(Query$GetPunchDevices$punchDevices$deviceAreas$areaZones)
        then,
  ) = _CopyWithImpl$Query$GetPunchDevices$punchDevices$deviceAreas$areaZones;

  factory CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas$areaZones.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPunchDevices$punchDevices$deviceAreas$areaZones;

  TRes call({
    bool? active,
    String? musterPoint,
    String? zoneGuid,
    String? zoneName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPunchDevices$punchDevices$deviceAreas$areaZones<
        TRes>
    implements
        CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas$areaZones<
            TRes> {
  _CopyWithImpl$Query$GetPunchDevices$punchDevices$deviceAreas$areaZones(
    this._instance,
    this._then,
  );

  final Query$GetPunchDevices$punchDevices$deviceAreas$areaZones _instance;

  final TRes Function(Query$GetPunchDevices$punchDevices$deviceAreas$areaZones)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? active = _undefined,
    Object? musterPoint = _undefined,
    Object? zoneGuid = _undefined,
    Object? zoneName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPunchDevices$punchDevices$deviceAreas$areaZones(
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        musterPoint: musterPoint == _undefined || musterPoint == null
            ? _instance.musterPoint
            : (musterPoint as String),
        zoneGuid: zoneGuid == _undefined || zoneGuid == null
            ? _instance.zoneGuid
            : (zoneGuid as String),
        zoneName: zoneName == _undefined || zoneName == null
            ? _instance.zoneName
            : (zoneName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPunchDevices$punchDevices$deviceAreas$areaZones<
        TRes>
    implements
        CopyWith$Query$GetPunchDevices$punchDevices$deviceAreas$areaZones<
            TRes> {
  _CopyWithStubImpl$Query$GetPunchDevices$punchDevices$deviceAreas$areaZones(
      this._res);

  TRes _res;

  call({
    bool? active,
    String? musterPoint,
    String? zoneGuid,
    String? zoneName,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetYardAreas {
  factory Variables$Query$GetYardAreas({required String yardCode}) =>
      Variables$Query$GetYardAreas._({
        r'yardCode': yardCode,
      });

  Variables$Query$GetYardAreas._(this._$data);

  factory Variables$Query$GetYardAreas.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    return Variables$Query$GetYardAreas._(result$data);
  }

  Map<String, dynamic> _$data;

  String get yardCode => (_$data['yardCode'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$yardCode = yardCode;
    result$data['yardCode'] = l$yardCode;
    return result$data;
  }

  CopyWith$Variables$Query$GetYardAreas<Variables$Query$GetYardAreas>
      get copyWith => CopyWith$Variables$Query$GetYardAreas(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetYardAreas) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    return Object.hashAll([l$yardCode]);
  }
}

abstract class CopyWith$Variables$Query$GetYardAreas<TRes> {
  factory CopyWith$Variables$Query$GetYardAreas(
    Variables$Query$GetYardAreas instance,
    TRes Function(Variables$Query$GetYardAreas) then,
  ) = _CopyWithImpl$Variables$Query$GetYardAreas;

  factory CopyWith$Variables$Query$GetYardAreas.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetYardAreas;

  TRes call({String? yardCode});
}

class _CopyWithImpl$Variables$Query$GetYardAreas<TRes>
    implements CopyWith$Variables$Query$GetYardAreas<TRes> {
  _CopyWithImpl$Variables$Query$GetYardAreas(
    this._instance,
    this._then,
  );

  final Variables$Query$GetYardAreas _instance;

  final TRes Function(Variables$Query$GetYardAreas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? yardCode = _undefined}) =>
      _then(Variables$Query$GetYardAreas._({
        ..._instance._$data,
        if (yardCode != _undefined && yardCode != null)
          'yardCode': (yardCode as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetYardAreas<TRes>
    implements CopyWith$Variables$Query$GetYardAreas<TRes> {
  _CopyWithStubImpl$Variables$Query$GetYardAreas(this._res);

  TRes _res;

  call({String? yardCode}) => _res;
}

class Query$GetYardAreas {
  Query$GetYardAreas({
    required this.deviceAreas,
    this.$__typename = 'Query',
  });

  factory Query$GetYardAreas.fromJson(Map<String, dynamic> json) {
    final l$deviceAreas = json['deviceAreas'];
    final l$$__typename = json['__typename'];
    return Query$GetYardAreas(
      deviceAreas: (l$deviceAreas as List<dynamic>)
          .map((e) => Query$GetYardAreas$deviceAreas.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetYardAreas$deviceAreas> deviceAreas;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deviceAreas = deviceAreas;
    _resultData['deviceAreas'] = l$deviceAreas.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deviceAreas = deviceAreas;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$deviceAreas.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetYardAreas) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deviceAreas = deviceAreas;
    final lOther$deviceAreas = other.deviceAreas;
    if (l$deviceAreas.length != lOther$deviceAreas.length) {
      return false;
    }
    for (int i = 0; i < l$deviceAreas.length; i++) {
      final l$deviceAreas$entry = l$deviceAreas[i];
      final lOther$deviceAreas$entry = lOther$deviceAreas[i];
      if (l$deviceAreas$entry != lOther$deviceAreas$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetYardAreas on Query$GetYardAreas {
  CopyWith$Query$GetYardAreas<Query$GetYardAreas> get copyWith =>
      CopyWith$Query$GetYardAreas(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetYardAreas<TRes> {
  factory CopyWith$Query$GetYardAreas(
    Query$GetYardAreas instance,
    TRes Function(Query$GetYardAreas) then,
  ) = _CopyWithImpl$Query$GetYardAreas;

  factory CopyWith$Query$GetYardAreas.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYardAreas;

  TRes call({
    List<Query$GetYardAreas$deviceAreas>? deviceAreas,
    String? $__typename,
  });
  TRes deviceAreas(
      Iterable<Query$GetYardAreas$deviceAreas> Function(
              Iterable<
                  CopyWith$Query$GetYardAreas$deviceAreas<
                      Query$GetYardAreas$deviceAreas>>)
          _fn);
}

class _CopyWithImpl$Query$GetYardAreas<TRes>
    implements CopyWith$Query$GetYardAreas<TRes> {
  _CopyWithImpl$Query$GetYardAreas(
    this._instance,
    this._then,
  );

  final Query$GetYardAreas _instance;

  final TRes Function(Query$GetYardAreas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deviceAreas = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetYardAreas(
        deviceAreas: deviceAreas == _undefined || deviceAreas == null
            ? _instance.deviceAreas
            : (deviceAreas as List<Query$GetYardAreas$deviceAreas>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes deviceAreas(
          Iterable<Query$GetYardAreas$deviceAreas> Function(
                  Iterable<
                      CopyWith$Query$GetYardAreas$deviceAreas<
                          Query$GetYardAreas$deviceAreas>>)
              _fn) =>
      call(
          deviceAreas: _fn(_instance.deviceAreas
              .map((e) => CopyWith$Query$GetYardAreas$deviceAreas(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetYardAreas<TRes>
    implements CopyWith$Query$GetYardAreas<TRes> {
  _CopyWithStubImpl$Query$GetYardAreas(this._res);

  TRes _res;

  call({
    List<Query$GetYardAreas$deviceAreas>? deviceAreas,
    String? $__typename,
  }) =>
      _res;

  deviceAreas(_fn) => _res;
}

const documentNodeQueryGetYardAreas = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetYardAreas'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'yardCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deviceAreas'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'yardCode'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'eq'),
                    value: VariableNode(name: NameNode(value: 'yardCode')),
                  )
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'areaZones'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'some'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'active'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'eq'),
                            value: BooleanValueNode(value: true),
                          )
                        ]),
                      )
                    ]),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'active'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'areaGuid'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'areaName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$GetYardAreas$deviceAreas {
  Query$GetYardAreas$deviceAreas({
    required this.active,
    required this.areaGuid,
    required this.areaName,
    this.$__typename = 'YardAreas',
  });

  factory Query$GetYardAreas$deviceAreas.fromJson(Map<String, dynamic> json) {
    final l$active = json['active'];
    final l$areaGuid = json['areaGuid'];
    final l$areaName = json['areaName'];
    final l$$__typename = json['__typename'];
    return Query$GetYardAreas$deviceAreas(
      active: (l$active as bool),
      areaGuid: (l$areaGuid as String),
      areaName: (l$areaName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool active;

  final String areaGuid;

  final String areaName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$active = active;
    _resultData['active'] = l$active;
    final l$areaGuid = areaGuid;
    _resultData['areaGuid'] = l$areaGuid;
    final l$areaName = areaName;
    _resultData['areaName'] = l$areaName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$active = active;
    final l$areaGuid = areaGuid;
    final l$areaName = areaName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$active,
      l$areaGuid,
      l$areaName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetYardAreas$deviceAreas) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$areaGuid = areaGuid;
    final lOther$areaGuid = other.areaGuid;
    if (l$areaGuid != lOther$areaGuid) {
      return false;
    }
    final l$areaName = areaName;
    final lOther$areaName = other.areaName;
    if (l$areaName != lOther$areaName) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetYardAreas$deviceAreas
    on Query$GetYardAreas$deviceAreas {
  CopyWith$Query$GetYardAreas$deviceAreas<Query$GetYardAreas$deviceAreas>
      get copyWith => CopyWith$Query$GetYardAreas$deviceAreas(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetYardAreas$deviceAreas<TRes> {
  factory CopyWith$Query$GetYardAreas$deviceAreas(
    Query$GetYardAreas$deviceAreas instance,
    TRes Function(Query$GetYardAreas$deviceAreas) then,
  ) = _CopyWithImpl$Query$GetYardAreas$deviceAreas;

  factory CopyWith$Query$GetYardAreas$deviceAreas.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYardAreas$deviceAreas;

  TRes call({
    bool? active,
    String? areaGuid,
    String? areaName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetYardAreas$deviceAreas<TRes>
    implements CopyWith$Query$GetYardAreas$deviceAreas<TRes> {
  _CopyWithImpl$Query$GetYardAreas$deviceAreas(
    this._instance,
    this._then,
  );

  final Query$GetYardAreas$deviceAreas _instance;

  final TRes Function(Query$GetYardAreas$deviceAreas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? active = _undefined,
    Object? areaGuid = _undefined,
    Object? areaName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetYardAreas$deviceAreas(
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        areaGuid: areaGuid == _undefined || areaGuid == null
            ? _instance.areaGuid
            : (areaGuid as String),
        areaName: areaName == _undefined || areaName == null
            ? _instance.areaName
            : (areaName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetYardAreas$deviceAreas<TRes>
    implements CopyWith$Query$GetYardAreas$deviceAreas<TRes> {
  _CopyWithStubImpl$Query$GetYardAreas$deviceAreas(this._res);

  TRes _res;

  call({
    bool? active,
    String? areaGuid,
    String? areaName,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetDeviceAreaZones {
  factory Variables$Query$GetDeviceAreaZones({
    required String areaName,
    required String yardCode,
  }) =>
      Variables$Query$GetDeviceAreaZones._({
        r'areaName': areaName,
        r'yardCode': yardCode,
      });

  Variables$Query$GetDeviceAreaZones._(this._$data);

  factory Variables$Query$GetDeviceAreaZones.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$areaName = data['areaName'];
    result$data['areaName'] = (l$areaName as String);
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    return Variables$Query$GetDeviceAreaZones._(result$data);
  }

  Map<String, dynamic> _$data;

  String get areaName => (_$data['areaName'] as String);

  String get yardCode => (_$data['yardCode'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$areaName = areaName;
    result$data['areaName'] = l$areaName;
    final l$yardCode = yardCode;
    result$data['yardCode'] = l$yardCode;
    return result$data;
  }

  CopyWith$Variables$Query$GetDeviceAreaZones<
          Variables$Query$GetDeviceAreaZones>
      get copyWith => CopyWith$Variables$Query$GetDeviceAreaZones(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetDeviceAreaZones) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$areaName = areaName;
    final lOther$areaName = other.areaName;
    if (l$areaName != lOther$areaName) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$areaName = areaName;
    final l$yardCode = yardCode;
    return Object.hashAll([
      l$areaName,
      l$yardCode,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetDeviceAreaZones<TRes> {
  factory CopyWith$Variables$Query$GetDeviceAreaZones(
    Variables$Query$GetDeviceAreaZones instance,
    TRes Function(Variables$Query$GetDeviceAreaZones) then,
  ) = _CopyWithImpl$Variables$Query$GetDeviceAreaZones;

  factory CopyWith$Variables$Query$GetDeviceAreaZones.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetDeviceAreaZones;

  TRes call({
    String? areaName,
    String? yardCode,
  });
}

class _CopyWithImpl$Variables$Query$GetDeviceAreaZones<TRes>
    implements CopyWith$Variables$Query$GetDeviceAreaZones<TRes> {
  _CopyWithImpl$Variables$Query$GetDeviceAreaZones(
    this._instance,
    this._then,
  );

  final Variables$Query$GetDeviceAreaZones _instance;

  final TRes Function(Variables$Query$GetDeviceAreaZones) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? areaName = _undefined,
    Object? yardCode = _undefined,
  }) =>
      _then(Variables$Query$GetDeviceAreaZones._({
        ..._instance._$data,
        if (areaName != _undefined && areaName != null)
          'areaName': (areaName as String),
        if (yardCode != _undefined && yardCode != null)
          'yardCode': (yardCode as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetDeviceAreaZones<TRes>
    implements CopyWith$Variables$Query$GetDeviceAreaZones<TRes> {
  _CopyWithStubImpl$Variables$Query$GetDeviceAreaZones(this._res);

  TRes _res;

  call({
    String? areaName,
    String? yardCode,
  }) =>
      _res;
}

class Query$GetDeviceAreaZones {
  Query$GetDeviceAreaZones({
    required this.punchDevices,
    this.$__typename = 'Query',
  });

  factory Query$GetDeviceAreaZones.fromJson(Map<String, dynamic> json) {
    final l$punchDevices = json['punchDevices'];
    final l$$__typename = json['__typename'];
    return Query$GetDeviceAreaZones(
      punchDevices: (l$punchDevices as List<dynamic>)
          .map((e) => Query$GetDeviceAreaZones$punchDevices.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetDeviceAreaZones$punchDevices> punchDevices;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$punchDevices = punchDevices;
    _resultData['punchDevices'] =
        l$punchDevices.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$punchDevices = punchDevices;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$punchDevices.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetDeviceAreaZones) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$punchDevices = punchDevices;
    final lOther$punchDevices = other.punchDevices;
    if (l$punchDevices.length != lOther$punchDevices.length) {
      return false;
    }
    for (int i = 0; i < l$punchDevices.length; i++) {
      final l$punchDevices$entry = l$punchDevices[i];
      final lOther$punchDevices$entry = lOther$punchDevices[i];
      if (l$punchDevices$entry != lOther$punchDevices$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetDeviceAreaZones
    on Query$GetDeviceAreaZones {
  CopyWith$Query$GetDeviceAreaZones<Query$GetDeviceAreaZones> get copyWith =>
      CopyWith$Query$GetDeviceAreaZones(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDeviceAreaZones<TRes> {
  factory CopyWith$Query$GetDeviceAreaZones(
    Query$GetDeviceAreaZones instance,
    TRes Function(Query$GetDeviceAreaZones) then,
  ) = _CopyWithImpl$Query$GetDeviceAreaZones;

  factory CopyWith$Query$GetDeviceAreaZones.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDeviceAreaZones;

  TRes call({
    List<Query$GetDeviceAreaZones$punchDevices>? punchDevices,
    String? $__typename,
  });
  TRes punchDevices(
      Iterable<Query$GetDeviceAreaZones$punchDevices> Function(
              Iterable<
                  CopyWith$Query$GetDeviceAreaZones$punchDevices<
                      Query$GetDeviceAreaZones$punchDevices>>)
          _fn);
}

class _CopyWithImpl$Query$GetDeviceAreaZones<TRes>
    implements CopyWith$Query$GetDeviceAreaZones<TRes> {
  _CopyWithImpl$Query$GetDeviceAreaZones(
    this._instance,
    this._then,
  );

  final Query$GetDeviceAreaZones _instance;

  final TRes Function(Query$GetDeviceAreaZones) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? punchDevices = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDeviceAreaZones(
        punchDevices: punchDevices == _undefined || punchDevices == null
            ? _instance.punchDevices
            : (punchDevices as List<Query$GetDeviceAreaZones$punchDevices>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes punchDevices(
          Iterable<Query$GetDeviceAreaZones$punchDevices> Function(
                  Iterable<
                      CopyWith$Query$GetDeviceAreaZones$punchDevices<
                          Query$GetDeviceAreaZones$punchDevices>>)
              _fn) =>
      call(
          punchDevices: _fn(_instance.punchDevices
              .map((e) => CopyWith$Query$GetDeviceAreaZones$punchDevices(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetDeviceAreaZones<TRes>
    implements CopyWith$Query$GetDeviceAreaZones<TRes> {
  _CopyWithStubImpl$Query$GetDeviceAreaZones(this._res);

  TRes _res;

  call({
    List<Query$GetDeviceAreaZones$punchDevices>? punchDevices,
    String? $__typename,
  }) =>
      _res;

  punchDevices(_fn) => _res;
}

const documentNodeQueryGetDeviceAreaZones = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetDeviceAreaZones'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'areaName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'yardCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'punchDevices'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'yardCode'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'eq'),
                    value: VariableNode(name: NameNode(value: 'yardCode')),
                  )
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'active'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'eq'),
                    value: BooleanValueNode(value: true),
                  )
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'deviceAreas'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'some'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'active'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'eq'),
                            value: BooleanValueNode(value: true),
                          )
                        ]),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'areaName'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'eq'),
                            value:
                                VariableNode(name: NameNode(value: 'areaName')),
                          )
                        ]),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'areaZones'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'some'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'active'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                    name: NameNode(value: 'eq'),
                                    value: BooleanValueNode(value: true),
                                  )
                                ]),
                              )
                            ]),
                          )
                        ]),
                      ),
                    ]),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'deviceAreas'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'areaZones'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'active'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'musterPoint'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'zoneGuid'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'zoneName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$GetDeviceAreaZones$punchDevices {
  Query$GetDeviceAreaZones$punchDevices({
    required this.deviceAreas,
    this.$__typename = 'PunchDeviceData',
  });

  factory Query$GetDeviceAreaZones$punchDevices.fromJson(
      Map<String, dynamic> json) {
    final l$deviceAreas = json['deviceAreas'];
    final l$$__typename = json['__typename'];
    return Query$GetDeviceAreaZones$punchDevices(
      deviceAreas: (l$deviceAreas as List<dynamic>)
          .map((e) =>
              Query$GetDeviceAreaZones$punchDevices$deviceAreas.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetDeviceAreaZones$punchDevices$deviceAreas> deviceAreas;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deviceAreas = deviceAreas;
    _resultData['deviceAreas'] = l$deviceAreas.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deviceAreas = deviceAreas;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$deviceAreas.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetDeviceAreaZones$punchDevices) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deviceAreas = deviceAreas;
    final lOther$deviceAreas = other.deviceAreas;
    if (l$deviceAreas.length != lOther$deviceAreas.length) {
      return false;
    }
    for (int i = 0; i < l$deviceAreas.length; i++) {
      final l$deviceAreas$entry = l$deviceAreas[i];
      final lOther$deviceAreas$entry = lOther$deviceAreas[i];
      if (l$deviceAreas$entry != lOther$deviceAreas$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetDeviceAreaZones$punchDevices
    on Query$GetDeviceAreaZones$punchDevices {
  CopyWith$Query$GetDeviceAreaZones$punchDevices<
          Query$GetDeviceAreaZones$punchDevices>
      get copyWith => CopyWith$Query$GetDeviceAreaZones$punchDevices(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetDeviceAreaZones$punchDevices<TRes> {
  factory CopyWith$Query$GetDeviceAreaZones$punchDevices(
    Query$GetDeviceAreaZones$punchDevices instance,
    TRes Function(Query$GetDeviceAreaZones$punchDevices) then,
  ) = _CopyWithImpl$Query$GetDeviceAreaZones$punchDevices;

  factory CopyWith$Query$GetDeviceAreaZones$punchDevices.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDeviceAreaZones$punchDevices;

  TRes call({
    List<Query$GetDeviceAreaZones$punchDevices$deviceAreas>? deviceAreas,
    String? $__typename,
  });
  TRes deviceAreas(
      Iterable<Query$GetDeviceAreaZones$punchDevices$deviceAreas> Function(
              Iterable<
                  CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas<
                      Query$GetDeviceAreaZones$punchDevices$deviceAreas>>)
          _fn);
}

class _CopyWithImpl$Query$GetDeviceAreaZones$punchDevices<TRes>
    implements CopyWith$Query$GetDeviceAreaZones$punchDevices<TRes> {
  _CopyWithImpl$Query$GetDeviceAreaZones$punchDevices(
    this._instance,
    this._then,
  );

  final Query$GetDeviceAreaZones$punchDevices _instance;

  final TRes Function(Query$GetDeviceAreaZones$punchDevices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deviceAreas = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDeviceAreaZones$punchDevices(
        deviceAreas: deviceAreas == _undefined || deviceAreas == null
            ? _instance.deviceAreas
            : (deviceAreas
                as List<Query$GetDeviceAreaZones$punchDevices$deviceAreas>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes deviceAreas(
          Iterable<Query$GetDeviceAreaZones$punchDevices$deviceAreas> Function(
                  Iterable<
                      CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas<
                          Query$GetDeviceAreaZones$punchDevices$deviceAreas>>)
              _fn) =>
      call(
          deviceAreas: _fn(_instance.deviceAreas.map(
              (e) => CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetDeviceAreaZones$punchDevices<TRes>
    implements CopyWith$Query$GetDeviceAreaZones$punchDevices<TRes> {
  _CopyWithStubImpl$Query$GetDeviceAreaZones$punchDevices(this._res);

  TRes _res;

  call({
    List<Query$GetDeviceAreaZones$punchDevices$deviceAreas>? deviceAreas,
    String? $__typename,
  }) =>
      _res;

  deviceAreas(_fn) => _res;
}

class Query$GetDeviceAreaZones$punchDevices$deviceAreas {
  Query$GetDeviceAreaZones$punchDevices$deviceAreas({
    required this.areaZones,
    this.$__typename = 'DeviceAreas',
  });

  factory Query$GetDeviceAreaZones$punchDevices$deviceAreas.fromJson(
      Map<String, dynamic> json) {
    final l$areaZones = json['areaZones'];
    final l$$__typename = json['__typename'];
    return Query$GetDeviceAreaZones$punchDevices$deviceAreas(
      areaZones: (l$areaZones as List<dynamic>)
          .map((e) =>
              Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones>
      areaZones;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$areaZones = areaZones;
    _resultData['areaZones'] = l$areaZones.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$areaZones = areaZones;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$areaZones.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetDeviceAreaZones$punchDevices$deviceAreas) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$areaZones = areaZones;
    final lOther$areaZones = other.areaZones;
    if (l$areaZones.length != lOther$areaZones.length) {
      return false;
    }
    for (int i = 0; i < l$areaZones.length; i++) {
      final l$areaZones$entry = l$areaZones[i];
      final lOther$areaZones$entry = lOther$areaZones[i];
      if (l$areaZones$entry != lOther$areaZones$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetDeviceAreaZones$punchDevices$deviceAreas
    on Query$GetDeviceAreaZones$punchDevices$deviceAreas {
  CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas<
          Query$GetDeviceAreaZones$punchDevices$deviceAreas>
      get copyWith =>
          CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas<
    TRes> {
  factory CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas(
    Query$GetDeviceAreaZones$punchDevices$deviceAreas instance,
    TRes Function(Query$GetDeviceAreaZones$punchDevices$deviceAreas) then,
  ) = _CopyWithImpl$Query$GetDeviceAreaZones$punchDevices$deviceAreas;

  factory CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetDeviceAreaZones$punchDevices$deviceAreas;

  TRes call({
    List<Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones>?
        areaZones,
    String? $__typename,
  });
  TRes areaZones(
      Iterable<Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones> Function(
              Iterable<
                  CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones<
                      Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones>>)
          _fn);
}

class _CopyWithImpl$Query$GetDeviceAreaZones$punchDevices$deviceAreas<TRes>
    implements
        CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas<TRes> {
  _CopyWithImpl$Query$GetDeviceAreaZones$punchDevices$deviceAreas(
    this._instance,
    this._then,
  );

  final Query$GetDeviceAreaZones$punchDevices$deviceAreas _instance;

  final TRes Function(Query$GetDeviceAreaZones$punchDevices$deviceAreas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? areaZones = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDeviceAreaZones$punchDevices$deviceAreas(
        areaZones: areaZones == _undefined || areaZones == null
            ? _instance.areaZones
            : (areaZones as List<
                Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes areaZones(
          Iterable<Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones> Function(
                  Iterable<
                      CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones<
                          Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones>>)
              _fn) =>
      call(
          areaZones: _fn(_instance.areaZones.map((e) =>
              CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetDeviceAreaZones$punchDevices$deviceAreas<TRes>
    implements
        CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas<TRes> {
  _CopyWithStubImpl$Query$GetDeviceAreaZones$punchDevices$deviceAreas(
      this._res);

  TRes _res;

  call({
    List<Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones>?
        areaZones,
    String? $__typename,
  }) =>
      _res;

  areaZones(_fn) => _res;
}

class Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones {
  Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones({
    required this.active,
    required this.musterPoint,
    required this.zoneGuid,
    required this.zoneName,
    this.$__typename = 'AreaZones',
  });

  factory Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones.fromJson(
      Map<String, dynamic> json) {
    final l$active = json['active'];
    final l$musterPoint = json['musterPoint'];
    final l$zoneGuid = json['zoneGuid'];
    final l$zoneName = json['zoneName'];
    final l$$__typename = json['__typename'];
    return Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones(
      active: (l$active as bool),
      musterPoint: (l$musterPoint as String),
      zoneGuid: (l$zoneGuid as String),
      zoneName: (l$zoneName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool active;

  final String musterPoint;

  final String zoneGuid;

  final String zoneName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$active = active;
    _resultData['active'] = l$active;
    final l$musterPoint = musterPoint;
    _resultData['musterPoint'] = l$musterPoint;
    final l$zoneGuid = zoneGuid;
    _resultData['zoneGuid'] = l$zoneGuid;
    final l$zoneName = zoneName;
    _resultData['zoneName'] = l$zoneName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$active = active;
    final l$musterPoint = musterPoint;
    final l$zoneGuid = zoneGuid;
    final l$zoneName = zoneName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$active,
      l$musterPoint,
      l$zoneGuid,
      l$zoneName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$musterPoint = musterPoint;
    final lOther$musterPoint = other.musterPoint;
    if (l$musterPoint != lOther$musterPoint) {
      return false;
    }
    final l$zoneGuid = zoneGuid;
    final lOther$zoneGuid = other.zoneGuid;
    if (l$zoneGuid != lOther$zoneGuid) {
      return false;
    }
    final l$zoneName = zoneName;
    final lOther$zoneName = other.zoneName;
    if (l$zoneName != lOther$zoneName) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones
    on Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones {
  CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones<
          Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones>
      get copyWith =>
          CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones<
    TRes> {
  factory CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones(
    Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones instance,
    TRes Function(Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones)
        then,
  ) = _CopyWithImpl$Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones;

  factory CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones;

  TRes call({
    bool? active,
    String? musterPoint,
    String? zoneGuid,
    String? zoneName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones<
        TRes>
    implements
        CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones<
            TRes> {
  _CopyWithImpl$Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones(
    this._instance,
    this._then,
  );

  final Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones _instance;

  final TRes Function(
      Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? active = _undefined,
    Object? musterPoint = _undefined,
    Object? zoneGuid = _undefined,
    Object? zoneName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones(
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        musterPoint: musterPoint == _undefined || musterPoint == null
            ? _instance.musterPoint
            : (musterPoint as String),
        zoneGuid: zoneGuid == _undefined || zoneGuid == null
            ? _instance.zoneGuid
            : (zoneGuid as String),
        zoneName: zoneName == _undefined || zoneName == null
            ? _instance.zoneName
            : (zoneName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones<
        TRes>
    implements
        CopyWith$Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones<
            TRes> {
  _CopyWithStubImpl$Query$GetDeviceAreaZones$punchDevices$deviceAreas$areaZones(
      this._res);

  TRes _res;

  call({
    bool? active,
    String? musterPoint,
    String? zoneGuid,
    String? zoneName,
    String? $__typename,
  }) =>
      _res;
}
