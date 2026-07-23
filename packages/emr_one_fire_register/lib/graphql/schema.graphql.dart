class Input$PunchDeviceDataFilterInput {
  factory Input$PunchDeviceDataFilterInput({
    List<Input$PunchDeviceDataFilterInput>? and,
    List<Input$PunchDeviceDataFilterInput>? or,
    Input$ComparableInt32OperationFilterInput? id,
    Input$StringOperationFilterInput? zone,
    Input$StringOperationFilterInput? yardCode,
    Input$StringOperationFilterInput? deviceId,
    Input$StringOperationFilterInput? clockDevice,
    Input$StringOperationFilterInput? adminEmail,
    Input$BooleanOperationFilterInput? active,
    Input$StringOperationFilterInput? musterPoint,
    Input$ListFilterInputTypeOfDeviceAreaInputFilterInput? deviceAreas,
  }) =>
      Input$PunchDeviceDataFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (zone != null) r'zone': zone,
        if (yardCode != null) r'yardCode': yardCode,
        if (deviceId != null) r'deviceId': deviceId,
        if (clockDevice != null) r'clockDevice': clockDevice,
        if (adminEmail != null) r'adminEmail': adminEmail,
        if (active != null) r'active': active,
        if (musterPoint != null) r'musterPoint': musterPoint,
        if (deviceAreas != null) r'deviceAreas': deviceAreas,
      });

  Input$PunchDeviceDataFilterInput._(this._$data);

  factory Input$PunchDeviceDataFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$PunchDeviceDataFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$PunchDeviceDataFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$ComparableInt32OperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('zone')) {
      final l$zone = data['zone'];
      result$data['zone'] = l$zone == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$zone as Map<String, dynamic>));
    }
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = l$yardCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$yardCode as Map<String, dynamic>));
    }
    if (data.containsKey('deviceId')) {
      final l$deviceId = data['deviceId'];
      result$data['deviceId'] = l$deviceId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$deviceId as Map<String, dynamic>));
    }
    if (data.containsKey('clockDevice')) {
      final l$clockDevice = data['clockDevice'];
      result$data['clockDevice'] = l$clockDevice == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$clockDevice as Map<String, dynamic>));
    }
    if (data.containsKey('adminEmail')) {
      final l$adminEmail = data['adminEmail'];
      result$data['adminEmail'] = l$adminEmail == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$adminEmail as Map<String, dynamic>));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>));
    }
    if (data.containsKey('musterPoint')) {
      final l$musterPoint = data['musterPoint'];
      result$data['musterPoint'] = l$musterPoint == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$musterPoint as Map<String, dynamic>));
    }
    if (data.containsKey('deviceAreas')) {
      final l$deviceAreas = data['deviceAreas'];
      result$data['deviceAreas'] = l$deviceAreas == null
          ? null
          : Input$ListFilterInputTypeOfDeviceAreaInputFilterInput.fromJson(
              (l$deviceAreas as Map<String, dynamic>));
    }
    return Input$PunchDeviceDataFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PunchDeviceDataFilterInput>? get and =>
      (_$data['and'] as List<Input$PunchDeviceDataFilterInput>?);

  List<Input$PunchDeviceDataFilterInput>? get or =>
      (_$data['or'] as List<Input$PunchDeviceDataFilterInput>?);

  Input$ComparableInt32OperationFilterInput? get id =>
      (_$data['id'] as Input$ComparableInt32OperationFilterInput?);

  Input$StringOperationFilterInput? get zone =>
      (_$data['zone'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get yardCode =>
      (_$data['yardCode'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get deviceId =>
      (_$data['deviceId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get clockDevice =>
      (_$data['clockDevice'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get adminEmail =>
      (_$data['adminEmail'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Input$StringOperationFilterInput? get musterPoint =>
      (_$data['musterPoint'] as Input$StringOperationFilterInput?);

  Input$ListFilterInputTypeOfDeviceAreaInputFilterInput? get deviceAreas =>
      (_$data['deviceAreas']
          as Input$ListFilterInputTypeOfDeviceAreaInputFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('zone')) {
      final l$zone = zone;
      result$data['zone'] = l$zone?.toJson();
    }
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] = l$yardCode?.toJson();
    }
    if (_$data.containsKey('deviceId')) {
      final l$deviceId = deviceId;
      result$data['deviceId'] = l$deviceId?.toJson();
    }
    if (_$data.containsKey('clockDevice')) {
      final l$clockDevice = clockDevice;
      result$data['clockDevice'] = l$clockDevice?.toJson();
    }
    if (_$data.containsKey('adminEmail')) {
      final l$adminEmail = adminEmail;
      result$data['adminEmail'] = l$adminEmail?.toJson();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    if (_$data.containsKey('musterPoint')) {
      final l$musterPoint = musterPoint;
      result$data['musterPoint'] = l$musterPoint?.toJson();
    }
    if (_$data.containsKey('deviceAreas')) {
      final l$deviceAreas = deviceAreas;
      result$data['deviceAreas'] = l$deviceAreas?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PunchDeviceDataFilterInput<Input$PunchDeviceDataFilterInput>
      get copyWith => CopyWith$Input$PunchDeviceDataFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PunchDeviceDataFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$zone = zone;
    final lOther$zone = other.zone;
    if (_$data.containsKey('zone') != other._$data.containsKey('zone')) {
      return false;
    }
    if (l$zone != lOther$zone) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (_$data.containsKey('yardCode') !=
        other._$data.containsKey('yardCode')) {
      return false;
    }
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$deviceId = deviceId;
    final lOther$deviceId = other.deviceId;
    if (_$data.containsKey('deviceId') !=
        other._$data.containsKey('deviceId')) {
      return false;
    }
    if (l$deviceId != lOther$deviceId) {
      return false;
    }
    final l$clockDevice = clockDevice;
    final lOther$clockDevice = other.clockDevice;
    if (_$data.containsKey('clockDevice') !=
        other._$data.containsKey('clockDevice')) {
      return false;
    }
    if (l$clockDevice != lOther$clockDevice) {
      return false;
    }
    final l$adminEmail = adminEmail;
    final lOther$adminEmail = other.adminEmail;
    if (_$data.containsKey('adminEmail') !=
        other._$data.containsKey('adminEmail')) {
      return false;
    }
    if (l$adminEmail != lOther$adminEmail) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$musterPoint = musterPoint;
    final lOther$musterPoint = other.musterPoint;
    if (_$data.containsKey('musterPoint') !=
        other._$data.containsKey('musterPoint')) {
      return false;
    }
    if (l$musterPoint != lOther$musterPoint) {
      return false;
    }
    final l$deviceAreas = deviceAreas;
    final lOther$deviceAreas = other.deviceAreas;
    if (_$data.containsKey('deviceAreas') !=
        other._$data.containsKey('deviceAreas')) {
      return false;
    }
    if (l$deviceAreas != lOther$deviceAreas) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$zone = zone;
    final l$yardCode = yardCode;
    final l$deviceId = deviceId;
    final l$clockDevice = clockDevice;
    final l$adminEmail = adminEmail;
    final l$active = active;
    final l$musterPoint = musterPoint;
    final l$deviceAreas = deviceAreas;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('zone') ? l$zone : const {},
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('deviceId') ? l$deviceId : const {},
      _$data.containsKey('clockDevice') ? l$clockDevice : const {},
      _$data.containsKey('adminEmail') ? l$adminEmail : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('musterPoint') ? l$musterPoint : const {},
      _$data.containsKey('deviceAreas') ? l$deviceAreas : const {},
    ]);
  }
}

abstract class CopyWith$Input$PunchDeviceDataFilterInput<TRes> {
  factory CopyWith$Input$PunchDeviceDataFilterInput(
    Input$PunchDeviceDataFilterInput instance,
    TRes Function(Input$PunchDeviceDataFilterInput) then,
  ) = _CopyWithImpl$Input$PunchDeviceDataFilterInput;

  factory CopyWith$Input$PunchDeviceDataFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PunchDeviceDataFilterInput;

  TRes call({
    List<Input$PunchDeviceDataFilterInput>? and,
    List<Input$PunchDeviceDataFilterInput>? or,
    Input$ComparableInt32OperationFilterInput? id,
    Input$StringOperationFilterInput? zone,
    Input$StringOperationFilterInput? yardCode,
    Input$StringOperationFilterInput? deviceId,
    Input$StringOperationFilterInput? clockDevice,
    Input$StringOperationFilterInput? adminEmail,
    Input$BooleanOperationFilterInput? active,
    Input$StringOperationFilterInput? musterPoint,
    Input$ListFilterInputTypeOfDeviceAreaInputFilterInput? deviceAreas,
  });
  TRes and(
      Iterable<Input$PunchDeviceDataFilterInput>? Function(
              Iterable<
                  CopyWith$Input$PunchDeviceDataFilterInput<
                      Input$PunchDeviceDataFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$PunchDeviceDataFilterInput>? Function(
              Iterable<
                  CopyWith$Input$PunchDeviceDataFilterInput<
                      Input$PunchDeviceDataFilterInput>>?)
          _fn);
  CopyWith$Input$ComparableInt32OperationFilterInput<TRes> get id;
  CopyWith$Input$StringOperationFilterInput<TRes> get zone;
  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode;
  CopyWith$Input$StringOperationFilterInput<TRes> get deviceId;
  CopyWith$Input$StringOperationFilterInput<TRes> get clockDevice;
  CopyWith$Input$StringOperationFilterInput<TRes> get adminEmail;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
  CopyWith$Input$StringOperationFilterInput<TRes> get musterPoint;
  CopyWith$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput<TRes>
      get deviceAreas;
}

class _CopyWithImpl$Input$PunchDeviceDataFilterInput<TRes>
    implements CopyWith$Input$PunchDeviceDataFilterInput<TRes> {
  _CopyWithImpl$Input$PunchDeviceDataFilterInput(
    this._instance,
    this._then,
  );

  final Input$PunchDeviceDataFilterInput _instance;

  final TRes Function(Input$PunchDeviceDataFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? zone = _undefined,
    Object? yardCode = _undefined,
    Object? deviceId = _undefined,
    Object? clockDevice = _undefined,
    Object? adminEmail = _undefined,
    Object? active = _undefined,
    Object? musterPoint = _undefined,
    Object? deviceAreas = _undefined,
  }) =>
      _then(Input$PunchDeviceDataFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$PunchDeviceDataFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$PunchDeviceDataFilterInput>?),
        if (id != _undefined)
          'id': (id as Input$ComparableInt32OperationFilterInput?),
        if (zone != _undefined)
          'zone': (zone as Input$StringOperationFilterInput?),
        if (yardCode != _undefined)
          'yardCode': (yardCode as Input$StringOperationFilterInput?),
        if (deviceId != _undefined)
          'deviceId': (deviceId as Input$StringOperationFilterInput?),
        if (clockDevice != _undefined)
          'clockDevice': (clockDevice as Input$StringOperationFilterInput?),
        if (adminEmail != _undefined)
          'adminEmail': (adminEmail as Input$StringOperationFilterInput?),
        if (active != _undefined)
          'active': (active as Input$BooleanOperationFilterInput?),
        if (musterPoint != _undefined)
          'musterPoint': (musterPoint as Input$StringOperationFilterInput?),
        if (deviceAreas != _undefined)
          'deviceAreas': (deviceAreas
              as Input$ListFilterInputTypeOfDeviceAreaInputFilterInput?),
      }));

  TRes and(
          Iterable<Input$PunchDeviceDataFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$PunchDeviceDataFilterInput<
                          Input$PunchDeviceDataFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$PunchDeviceDataFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$PunchDeviceDataFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$PunchDeviceDataFilterInput<
                          Input$PunchDeviceDataFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$PunchDeviceDataFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$ComparableInt32OperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$ComparableInt32OperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$ComparableInt32OperationFilterInput(
            local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get zone {
    final local$zone = _instance.zone;
    return local$zone == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$zone, (e) => call(zone: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode {
    final local$yardCode = _instance.yardCode;
    return local$yardCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$yardCode, (e) => call(yardCode: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get deviceId {
    final local$deviceId = _instance.deviceId;
    return local$deviceId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$deviceId, (e) => call(deviceId: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get clockDevice {
    final local$clockDevice = _instance.clockDevice;
    return local$clockDevice == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$clockDevice, (e) => call(clockDevice: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get adminEmail {
    final local$adminEmail = _instance.adminEmail;
    return local$adminEmail == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$adminEmail, (e) => call(adminEmail: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active, (e) => call(active: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get musterPoint {
    final local$musterPoint = _instance.musterPoint;
    return local$musterPoint == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$musterPoint, (e) => call(musterPoint: e));
  }

  CopyWith$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput<TRes>
      get deviceAreas {
    final local$deviceAreas = _instance.deviceAreas;
    return local$deviceAreas == null
        ? CopyWith$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput(
            local$deviceAreas, (e) => call(deviceAreas: e));
  }
}

class _CopyWithStubImpl$Input$PunchDeviceDataFilterInput<TRes>
    implements CopyWith$Input$PunchDeviceDataFilterInput<TRes> {
  _CopyWithStubImpl$Input$PunchDeviceDataFilterInput(this._res);

  TRes _res;

  call({
    List<Input$PunchDeviceDataFilterInput>? and,
    List<Input$PunchDeviceDataFilterInput>? or,
    Input$ComparableInt32OperationFilterInput? id,
    Input$StringOperationFilterInput? zone,
    Input$StringOperationFilterInput? yardCode,
    Input$StringOperationFilterInput? deviceId,
    Input$StringOperationFilterInput? clockDevice,
    Input$StringOperationFilterInput? adminEmail,
    Input$BooleanOperationFilterInput? active,
    Input$StringOperationFilterInput? musterPoint,
    Input$ListFilterInputTypeOfDeviceAreaInputFilterInput? deviceAreas,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$ComparableInt32OperationFilterInput<TRes> get id =>
      CopyWith$Input$ComparableInt32OperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get zone =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get deviceId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get clockDevice =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get adminEmail =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get musterPoint =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput<TRes>
      get deviceAreas =>
          CopyWith$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput.stub(
              _res);
}

class Input$PunchDeviceDataSortInput {
  factory Input$PunchDeviceDataSortInput({
    Enum$SortEnumType? id,
    Enum$SortEnumType? zone,
    Enum$SortEnumType? yardCode,
    Enum$SortEnumType? deviceId,
    Enum$SortEnumType? clockDevice,
    Enum$SortEnumType? adminEmail,
    Enum$SortEnumType? active,
    Enum$SortEnumType? musterPoint,
  }) =>
      Input$PunchDeviceDataSortInput._({
        if (id != null) r'id': id,
        if (zone != null) r'zone': zone,
        if (yardCode != null) r'yardCode': yardCode,
        if (deviceId != null) r'deviceId': deviceId,
        if (clockDevice != null) r'clockDevice': clockDevice,
        if (adminEmail != null) r'adminEmail': adminEmail,
        if (active != null) r'active': active,
        if (musterPoint != null) r'musterPoint': musterPoint,
      });

  Input$PunchDeviceDataSortInput._(this._$data);

  factory Input$PunchDeviceDataSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortEnumType((l$id as String));
    }
    if (data.containsKey('zone')) {
      final l$zone = data['zone'];
      result$data['zone'] = l$zone == null
          ? null
          : fromJson$Enum$SortEnumType((l$zone as String));
    }
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = l$yardCode == null
          ? null
          : fromJson$Enum$SortEnumType((l$yardCode as String));
    }
    if (data.containsKey('deviceId')) {
      final l$deviceId = data['deviceId'];
      result$data['deviceId'] = l$deviceId == null
          ? null
          : fromJson$Enum$SortEnumType((l$deviceId as String));
    }
    if (data.containsKey('clockDevice')) {
      final l$clockDevice = data['clockDevice'];
      result$data['clockDevice'] = l$clockDevice == null
          ? null
          : fromJson$Enum$SortEnumType((l$clockDevice as String));
    }
    if (data.containsKey('adminEmail')) {
      final l$adminEmail = data['adminEmail'];
      result$data['adminEmail'] = l$adminEmail == null
          ? null
          : fromJson$Enum$SortEnumType((l$adminEmail as String));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : fromJson$Enum$SortEnumType((l$active as String));
    }
    if (data.containsKey('musterPoint')) {
      final l$musterPoint = data['musterPoint'];
      result$data['musterPoint'] = l$musterPoint == null
          ? null
          : fromJson$Enum$SortEnumType((l$musterPoint as String));
    }
    return Input$PunchDeviceDataSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get id => (_$data['id'] as Enum$SortEnumType?);

  Enum$SortEnumType? get zone => (_$data['zone'] as Enum$SortEnumType?);

  Enum$SortEnumType? get yardCode => (_$data['yardCode'] as Enum$SortEnumType?);

  Enum$SortEnumType? get deviceId => (_$data['deviceId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get clockDevice =>
      (_$data['clockDevice'] as Enum$SortEnumType?);

  Enum$SortEnumType? get adminEmail =>
      (_$data['adminEmail'] as Enum$SortEnumType?);

  Enum$SortEnumType? get active => (_$data['active'] as Enum$SortEnumType?);

  Enum$SortEnumType? get musterPoint =>
      (_$data['musterPoint'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortEnumType(l$id);
    }
    if (_$data.containsKey('zone')) {
      final l$zone = zone;
      result$data['zone'] =
          l$zone == null ? null : toJson$Enum$SortEnumType(l$zone);
    }
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] =
          l$yardCode == null ? null : toJson$Enum$SortEnumType(l$yardCode);
    }
    if (_$data.containsKey('deviceId')) {
      final l$deviceId = deviceId;
      result$data['deviceId'] =
          l$deviceId == null ? null : toJson$Enum$SortEnumType(l$deviceId);
    }
    if (_$data.containsKey('clockDevice')) {
      final l$clockDevice = clockDevice;
      result$data['clockDevice'] = l$clockDevice == null
          ? null
          : toJson$Enum$SortEnumType(l$clockDevice);
    }
    if (_$data.containsKey('adminEmail')) {
      final l$adminEmail = adminEmail;
      result$data['adminEmail'] =
          l$adminEmail == null ? null : toJson$Enum$SortEnumType(l$adminEmail);
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] =
          l$active == null ? null : toJson$Enum$SortEnumType(l$active);
    }
    if (_$data.containsKey('musterPoint')) {
      final l$musterPoint = musterPoint;
      result$data['musterPoint'] = l$musterPoint == null
          ? null
          : toJson$Enum$SortEnumType(l$musterPoint);
    }
    return result$data;
  }

  CopyWith$Input$PunchDeviceDataSortInput<Input$PunchDeviceDataSortInput>
      get copyWith => CopyWith$Input$PunchDeviceDataSortInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PunchDeviceDataSortInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$zone = zone;
    final lOther$zone = other.zone;
    if (_$data.containsKey('zone') != other._$data.containsKey('zone')) {
      return false;
    }
    if (l$zone != lOther$zone) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (_$data.containsKey('yardCode') !=
        other._$data.containsKey('yardCode')) {
      return false;
    }
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$deviceId = deviceId;
    final lOther$deviceId = other.deviceId;
    if (_$data.containsKey('deviceId') !=
        other._$data.containsKey('deviceId')) {
      return false;
    }
    if (l$deviceId != lOther$deviceId) {
      return false;
    }
    final l$clockDevice = clockDevice;
    final lOther$clockDevice = other.clockDevice;
    if (_$data.containsKey('clockDevice') !=
        other._$data.containsKey('clockDevice')) {
      return false;
    }
    if (l$clockDevice != lOther$clockDevice) {
      return false;
    }
    final l$adminEmail = adminEmail;
    final lOther$adminEmail = other.adminEmail;
    if (_$data.containsKey('adminEmail') !=
        other._$data.containsKey('adminEmail')) {
      return false;
    }
    if (l$adminEmail != lOther$adminEmail) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$musterPoint = musterPoint;
    final lOther$musterPoint = other.musterPoint;
    if (_$data.containsKey('musterPoint') !=
        other._$data.containsKey('musterPoint')) {
      return false;
    }
    if (l$musterPoint != lOther$musterPoint) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$zone = zone;
    final l$yardCode = yardCode;
    final l$deviceId = deviceId;
    final l$clockDevice = clockDevice;
    final l$adminEmail = adminEmail;
    final l$active = active;
    final l$musterPoint = musterPoint;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('zone') ? l$zone : const {},
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('deviceId') ? l$deviceId : const {},
      _$data.containsKey('clockDevice') ? l$clockDevice : const {},
      _$data.containsKey('adminEmail') ? l$adminEmail : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('musterPoint') ? l$musterPoint : const {},
    ]);
  }
}

abstract class CopyWith$Input$PunchDeviceDataSortInput<TRes> {
  factory CopyWith$Input$PunchDeviceDataSortInput(
    Input$PunchDeviceDataSortInput instance,
    TRes Function(Input$PunchDeviceDataSortInput) then,
  ) = _CopyWithImpl$Input$PunchDeviceDataSortInput;

  factory CopyWith$Input$PunchDeviceDataSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PunchDeviceDataSortInput;

  TRes call({
    Enum$SortEnumType? id,
    Enum$SortEnumType? zone,
    Enum$SortEnumType? yardCode,
    Enum$SortEnumType? deviceId,
    Enum$SortEnumType? clockDevice,
    Enum$SortEnumType? adminEmail,
    Enum$SortEnumType? active,
    Enum$SortEnumType? musterPoint,
  });
}

class _CopyWithImpl$Input$PunchDeviceDataSortInput<TRes>
    implements CopyWith$Input$PunchDeviceDataSortInput<TRes> {
  _CopyWithImpl$Input$PunchDeviceDataSortInput(
    this._instance,
    this._then,
  );

  final Input$PunchDeviceDataSortInput _instance;

  final TRes Function(Input$PunchDeviceDataSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? zone = _undefined,
    Object? yardCode = _undefined,
    Object? deviceId = _undefined,
    Object? clockDevice = _undefined,
    Object? adminEmail = _undefined,
    Object? active = _undefined,
    Object? musterPoint = _undefined,
  }) =>
      _then(Input$PunchDeviceDataSortInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortEnumType?),
        if (zone != _undefined) 'zone': (zone as Enum$SortEnumType?),
        if (yardCode != _undefined)
          'yardCode': (yardCode as Enum$SortEnumType?),
        if (deviceId != _undefined)
          'deviceId': (deviceId as Enum$SortEnumType?),
        if (clockDevice != _undefined)
          'clockDevice': (clockDevice as Enum$SortEnumType?),
        if (adminEmail != _undefined)
          'adminEmail': (adminEmail as Enum$SortEnumType?),
        if (active != _undefined) 'active': (active as Enum$SortEnumType?),
        if (musterPoint != _undefined)
          'musterPoint': (musterPoint as Enum$SortEnumType?),
      }));
}

class _CopyWithStubImpl$Input$PunchDeviceDataSortInput<TRes>
    implements CopyWith$Input$PunchDeviceDataSortInput<TRes> {
  _CopyWithStubImpl$Input$PunchDeviceDataSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? id,
    Enum$SortEnumType? zone,
    Enum$SortEnumType? yardCode,
    Enum$SortEnumType? deviceId,
    Enum$SortEnumType? clockDevice,
    Enum$SortEnumType? adminEmail,
    Enum$SortEnumType? active,
    Enum$SortEnumType? musterPoint,
  }) =>
      _res;
}

class Input$YardAreasFilterInput {
  factory Input$YardAreasFilterInput({
    List<Input$YardAreasFilterInput>? and,
    List<Input$YardAreasFilterInput>? or,
    Input$StringOperationFilterInput? areaGuid,
    Input$StringOperationFilterInput? areaName,
    Input$BooleanOperationFilterInput? active,
    Input$ListFilterInputTypeOfAreaZoneInputFilterInput? areaZones,
    Input$StringOperationFilterInput? yardCode,
  }) =>
      Input$YardAreasFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (areaGuid != null) r'areaGuid': areaGuid,
        if (areaName != null) r'areaName': areaName,
        if (active != null) r'active': active,
        if (areaZones != null) r'areaZones': areaZones,
        if (yardCode != null) r'yardCode': yardCode,
      });

  Input$YardAreasFilterInput._(this._$data);

  factory Input$YardAreasFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$YardAreasFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$YardAreasFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('areaGuid')) {
      final l$areaGuid = data['areaGuid'];
      result$data['areaGuid'] = l$areaGuid == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$areaGuid as Map<String, dynamic>));
    }
    if (data.containsKey('areaName')) {
      final l$areaName = data['areaName'];
      result$data['areaName'] = l$areaName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$areaName as Map<String, dynamic>));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>));
    }
    if (data.containsKey('areaZones')) {
      final l$areaZones = data['areaZones'];
      result$data['areaZones'] = l$areaZones == null
          ? null
          : Input$ListFilterInputTypeOfAreaZoneInputFilterInput.fromJson(
              (l$areaZones as Map<String, dynamic>));
    }
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = l$yardCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$yardCode as Map<String, dynamic>));
    }
    return Input$YardAreasFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$YardAreasFilterInput>? get and =>
      (_$data['and'] as List<Input$YardAreasFilterInput>?);

  List<Input$YardAreasFilterInput>? get or =>
      (_$data['or'] as List<Input$YardAreasFilterInput>?);

  Input$StringOperationFilterInput? get areaGuid =>
      (_$data['areaGuid'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get areaName =>
      (_$data['areaName'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Input$ListFilterInputTypeOfAreaZoneInputFilterInput? get areaZones =>
      (_$data['areaZones']
          as Input$ListFilterInputTypeOfAreaZoneInputFilterInput?);

  Input$StringOperationFilterInput? get yardCode =>
      (_$data['yardCode'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('areaGuid')) {
      final l$areaGuid = areaGuid;
      result$data['areaGuid'] = l$areaGuid?.toJson();
    }
    if (_$data.containsKey('areaName')) {
      final l$areaName = areaName;
      result$data['areaName'] = l$areaName?.toJson();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    if (_$data.containsKey('areaZones')) {
      final l$areaZones = areaZones;
      result$data['areaZones'] = l$areaZones?.toJson();
    }
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] = l$yardCode?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$YardAreasFilterInput<Input$YardAreasFilterInput>
      get copyWith => CopyWith$Input$YardAreasFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$YardAreasFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$areaGuid = areaGuid;
    final lOther$areaGuid = other.areaGuid;
    if (_$data.containsKey('areaGuid') !=
        other._$data.containsKey('areaGuid')) {
      return false;
    }
    if (l$areaGuid != lOther$areaGuid) {
      return false;
    }
    final l$areaName = areaName;
    final lOther$areaName = other.areaName;
    if (_$data.containsKey('areaName') !=
        other._$data.containsKey('areaName')) {
      return false;
    }
    if (l$areaName != lOther$areaName) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$areaZones = areaZones;
    final lOther$areaZones = other.areaZones;
    if (_$data.containsKey('areaZones') !=
        other._$data.containsKey('areaZones')) {
      return false;
    }
    if (l$areaZones != lOther$areaZones) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (_$data.containsKey('yardCode') !=
        other._$data.containsKey('yardCode')) {
      return false;
    }
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$areaGuid = areaGuid;
    final l$areaName = areaName;
    final l$active = active;
    final l$areaZones = areaZones;
    final l$yardCode = yardCode;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('areaGuid') ? l$areaGuid : const {},
      _$data.containsKey('areaName') ? l$areaName : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('areaZones') ? l$areaZones : const {},
      _$data.containsKey('yardCode') ? l$yardCode : const {},
    ]);
  }
}

abstract class CopyWith$Input$YardAreasFilterInput<TRes> {
  factory CopyWith$Input$YardAreasFilterInput(
    Input$YardAreasFilterInput instance,
    TRes Function(Input$YardAreasFilterInput) then,
  ) = _CopyWithImpl$Input$YardAreasFilterInput;

  factory CopyWith$Input$YardAreasFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$YardAreasFilterInput;

  TRes call({
    List<Input$YardAreasFilterInput>? and,
    List<Input$YardAreasFilterInput>? or,
    Input$StringOperationFilterInput? areaGuid,
    Input$StringOperationFilterInput? areaName,
    Input$BooleanOperationFilterInput? active,
    Input$ListFilterInputTypeOfAreaZoneInputFilterInput? areaZones,
    Input$StringOperationFilterInput? yardCode,
  });
  TRes and(
      Iterable<Input$YardAreasFilterInput>? Function(
              Iterable<
                  CopyWith$Input$YardAreasFilterInput<
                      Input$YardAreasFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$YardAreasFilterInput>? Function(
              Iterable<
                  CopyWith$Input$YardAreasFilterInput<
                      Input$YardAreasFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get areaGuid;
  CopyWith$Input$StringOperationFilterInput<TRes> get areaName;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
  CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput<TRes>
      get areaZones;
  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode;
}

class _CopyWithImpl$Input$YardAreasFilterInput<TRes>
    implements CopyWith$Input$YardAreasFilterInput<TRes> {
  _CopyWithImpl$Input$YardAreasFilterInput(
    this._instance,
    this._then,
  );

  final Input$YardAreasFilterInput _instance;

  final TRes Function(Input$YardAreasFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? areaGuid = _undefined,
    Object? areaName = _undefined,
    Object? active = _undefined,
    Object? areaZones = _undefined,
    Object? yardCode = _undefined,
  }) =>
      _then(Input$YardAreasFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$YardAreasFilterInput>?),
        if (or != _undefined) 'or': (or as List<Input$YardAreasFilterInput>?),
        if (areaGuid != _undefined)
          'areaGuid': (areaGuid as Input$StringOperationFilterInput?),
        if (areaName != _undefined)
          'areaName': (areaName as Input$StringOperationFilterInput?),
        if (active != _undefined)
          'active': (active as Input$BooleanOperationFilterInput?),
        if (areaZones != _undefined)
          'areaZones': (areaZones
              as Input$ListFilterInputTypeOfAreaZoneInputFilterInput?),
        if (yardCode != _undefined)
          'yardCode': (yardCode as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$YardAreasFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$YardAreasFilterInput<
                          Input$YardAreasFilterInput>>?)
              _fn) =>
      call(
          and:
              _fn(_instance.and?.map((e) => CopyWith$Input$YardAreasFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$YardAreasFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$YardAreasFilterInput<
                          Input$YardAreasFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$YardAreasFilterInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get areaGuid {
    final local$areaGuid = _instance.areaGuid;
    return local$areaGuid == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$areaGuid, (e) => call(areaGuid: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get areaName {
    final local$areaName = _instance.areaName;
    return local$areaName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$areaName, (e) => call(areaName: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active, (e) => call(active: e));
  }

  CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput<TRes>
      get areaZones {
    final local$areaZones = _instance.areaZones;
    return local$areaZones == null
        ? CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput(
            local$areaZones, (e) => call(areaZones: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode {
    final local$yardCode = _instance.yardCode;
    return local$yardCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$yardCode, (e) => call(yardCode: e));
  }
}

class _CopyWithStubImpl$Input$YardAreasFilterInput<TRes>
    implements CopyWith$Input$YardAreasFilterInput<TRes> {
  _CopyWithStubImpl$Input$YardAreasFilterInput(this._res);

  TRes _res;

  call({
    List<Input$YardAreasFilterInput>? and,
    List<Input$YardAreasFilterInput>? or,
    Input$StringOperationFilterInput? areaGuid,
    Input$StringOperationFilterInput? areaName,
    Input$BooleanOperationFilterInput? active,
    Input$ListFilterInputTypeOfAreaZoneInputFilterInput? areaZones,
    Input$StringOperationFilterInput? yardCode,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get areaGuid =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get areaName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput<TRes>
      get areaZones =>
          CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput.stub(
              _res);

  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$YardAreasSortInput {
  factory Input$YardAreasSortInput({
    Enum$SortEnumType? areaGuid,
    Enum$SortEnumType? areaName,
    Enum$SortEnumType? active,
    Enum$SortEnumType? yardCode,
  }) =>
      Input$YardAreasSortInput._({
        if (areaGuid != null) r'areaGuid': areaGuid,
        if (areaName != null) r'areaName': areaName,
        if (active != null) r'active': active,
        if (yardCode != null) r'yardCode': yardCode,
      });

  Input$YardAreasSortInput._(this._$data);

  factory Input$YardAreasSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('areaGuid')) {
      final l$areaGuid = data['areaGuid'];
      result$data['areaGuid'] = l$areaGuid == null
          ? null
          : fromJson$Enum$SortEnumType((l$areaGuid as String));
    }
    if (data.containsKey('areaName')) {
      final l$areaName = data['areaName'];
      result$data['areaName'] = l$areaName == null
          ? null
          : fromJson$Enum$SortEnumType((l$areaName as String));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : fromJson$Enum$SortEnumType((l$active as String));
    }
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = l$yardCode == null
          ? null
          : fromJson$Enum$SortEnumType((l$yardCode as String));
    }
    return Input$YardAreasSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get areaGuid => (_$data['areaGuid'] as Enum$SortEnumType?);

  Enum$SortEnumType? get areaName => (_$data['areaName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get active => (_$data['active'] as Enum$SortEnumType?);

  Enum$SortEnumType? get yardCode => (_$data['yardCode'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('areaGuid')) {
      final l$areaGuid = areaGuid;
      result$data['areaGuid'] =
          l$areaGuid == null ? null : toJson$Enum$SortEnumType(l$areaGuid);
    }
    if (_$data.containsKey('areaName')) {
      final l$areaName = areaName;
      result$data['areaName'] =
          l$areaName == null ? null : toJson$Enum$SortEnumType(l$areaName);
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] =
          l$active == null ? null : toJson$Enum$SortEnumType(l$active);
    }
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] =
          l$yardCode == null ? null : toJson$Enum$SortEnumType(l$yardCode);
    }
    return result$data;
  }

  CopyWith$Input$YardAreasSortInput<Input$YardAreasSortInput> get copyWith =>
      CopyWith$Input$YardAreasSortInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$YardAreasSortInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$areaGuid = areaGuid;
    final lOther$areaGuid = other.areaGuid;
    if (_$data.containsKey('areaGuid') !=
        other._$data.containsKey('areaGuid')) {
      return false;
    }
    if (l$areaGuid != lOther$areaGuid) {
      return false;
    }
    final l$areaName = areaName;
    final lOther$areaName = other.areaName;
    if (_$data.containsKey('areaName') !=
        other._$data.containsKey('areaName')) {
      return false;
    }
    if (l$areaName != lOther$areaName) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (_$data.containsKey('yardCode') !=
        other._$data.containsKey('yardCode')) {
      return false;
    }
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$areaGuid = areaGuid;
    final l$areaName = areaName;
    final l$active = active;
    final l$yardCode = yardCode;
    return Object.hashAll([
      _$data.containsKey('areaGuid') ? l$areaGuid : const {},
      _$data.containsKey('areaName') ? l$areaName : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('yardCode') ? l$yardCode : const {},
    ]);
  }
}

abstract class CopyWith$Input$YardAreasSortInput<TRes> {
  factory CopyWith$Input$YardAreasSortInput(
    Input$YardAreasSortInput instance,
    TRes Function(Input$YardAreasSortInput) then,
  ) = _CopyWithImpl$Input$YardAreasSortInput;

  factory CopyWith$Input$YardAreasSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$YardAreasSortInput;

  TRes call({
    Enum$SortEnumType? areaGuid,
    Enum$SortEnumType? areaName,
    Enum$SortEnumType? active,
    Enum$SortEnumType? yardCode,
  });
}

class _CopyWithImpl$Input$YardAreasSortInput<TRes>
    implements CopyWith$Input$YardAreasSortInput<TRes> {
  _CopyWithImpl$Input$YardAreasSortInput(
    this._instance,
    this._then,
  );

  final Input$YardAreasSortInput _instance;

  final TRes Function(Input$YardAreasSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? areaGuid = _undefined,
    Object? areaName = _undefined,
    Object? active = _undefined,
    Object? yardCode = _undefined,
  }) =>
      _then(Input$YardAreasSortInput._({
        ..._instance._$data,
        if (areaGuid != _undefined)
          'areaGuid': (areaGuid as Enum$SortEnumType?),
        if (areaName != _undefined)
          'areaName': (areaName as Enum$SortEnumType?),
        if (active != _undefined) 'active': (active as Enum$SortEnumType?),
        if (yardCode != _undefined)
          'yardCode': (yardCode as Enum$SortEnumType?),
      }));
}

class _CopyWithStubImpl$Input$YardAreasSortInput<TRes>
    implements CopyWith$Input$YardAreasSortInput<TRes> {
  _CopyWithStubImpl$Input$YardAreasSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? areaGuid,
    Enum$SortEnumType? areaName,
    Enum$SortEnumType? active,
    Enum$SortEnumType? yardCode,
  }) =>
      _res;
}

class Input$AreaZoneFilterInput {
  factory Input$AreaZoneFilterInput({
    List<Input$AreaZoneFilterInput>? and,
    List<Input$AreaZoneFilterInput>? or,
    Input$ComparableInt32OperationFilterInput? id,
    Input$StringOperationFilterInput? zoneGuid,
    Input$StringOperationFilterInput? zoneName,
    Input$StringOperationFilterInput? areaGuid,
    Input$StringOperationFilterInput? musterPoint,
    Input$BooleanOperationFilterInput? active,
  }) =>
      Input$AreaZoneFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (zoneGuid != null) r'zoneGuid': zoneGuid,
        if (zoneName != null) r'zoneName': zoneName,
        if (areaGuid != null) r'areaGuid': areaGuid,
        if (musterPoint != null) r'musterPoint': musterPoint,
        if (active != null) r'active': active,
      });

  Input$AreaZoneFilterInput._(this._$data);

  factory Input$AreaZoneFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$AreaZoneFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$AreaZoneFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$ComparableInt32OperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('zoneGuid')) {
      final l$zoneGuid = data['zoneGuid'];
      result$data['zoneGuid'] = l$zoneGuid == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$zoneGuid as Map<String, dynamic>));
    }
    if (data.containsKey('zoneName')) {
      final l$zoneName = data['zoneName'];
      result$data['zoneName'] = l$zoneName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$zoneName as Map<String, dynamic>));
    }
    if (data.containsKey('areaGuid')) {
      final l$areaGuid = data['areaGuid'];
      result$data['areaGuid'] = l$areaGuid == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$areaGuid as Map<String, dynamic>));
    }
    if (data.containsKey('musterPoint')) {
      final l$musterPoint = data['musterPoint'];
      result$data['musterPoint'] = l$musterPoint == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$musterPoint as Map<String, dynamic>));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>));
    }
    return Input$AreaZoneFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AreaZoneFilterInput>? get and =>
      (_$data['and'] as List<Input$AreaZoneFilterInput>?);

  List<Input$AreaZoneFilterInput>? get or =>
      (_$data['or'] as List<Input$AreaZoneFilterInput>?);

  Input$ComparableInt32OperationFilterInput? get id =>
      (_$data['id'] as Input$ComparableInt32OperationFilterInput?);

  Input$StringOperationFilterInput? get zoneGuid =>
      (_$data['zoneGuid'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get zoneName =>
      (_$data['zoneName'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get areaGuid =>
      (_$data['areaGuid'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get musterPoint =>
      (_$data['musterPoint'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('zoneGuid')) {
      final l$zoneGuid = zoneGuid;
      result$data['zoneGuid'] = l$zoneGuid?.toJson();
    }
    if (_$data.containsKey('zoneName')) {
      final l$zoneName = zoneName;
      result$data['zoneName'] = l$zoneName?.toJson();
    }
    if (_$data.containsKey('areaGuid')) {
      final l$areaGuid = areaGuid;
      result$data['areaGuid'] = l$areaGuid?.toJson();
    }
    if (_$data.containsKey('musterPoint')) {
      final l$musterPoint = musterPoint;
      result$data['musterPoint'] = l$musterPoint?.toJson();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AreaZoneFilterInput<Input$AreaZoneFilterInput> get copyWith =>
      CopyWith$Input$AreaZoneFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AreaZoneFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$zoneGuid = zoneGuid;
    final lOther$zoneGuid = other.zoneGuid;
    if (_$data.containsKey('zoneGuid') !=
        other._$data.containsKey('zoneGuid')) {
      return false;
    }
    if (l$zoneGuid != lOther$zoneGuid) {
      return false;
    }
    final l$zoneName = zoneName;
    final lOther$zoneName = other.zoneName;
    if (_$data.containsKey('zoneName') !=
        other._$data.containsKey('zoneName')) {
      return false;
    }
    if (l$zoneName != lOther$zoneName) {
      return false;
    }
    final l$areaGuid = areaGuid;
    final lOther$areaGuid = other.areaGuid;
    if (_$data.containsKey('areaGuid') !=
        other._$data.containsKey('areaGuid')) {
      return false;
    }
    if (l$areaGuid != lOther$areaGuid) {
      return false;
    }
    final l$musterPoint = musterPoint;
    final lOther$musterPoint = other.musterPoint;
    if (_$data.containsKey('musterPoint') !=
        other._$data.containsKey('musterPoint')) {
      return false;
    }
    if (l$musterPoint != lOther$musterPoint) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$zoneGuid = zoneGuid;
    final l$zoneName = zoneName;
    final l$areaGuid = areaGuid;
    final l$musterPoint = musterPoint;
    final l$active = active;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('zoneGuid') ? l$zoneGuid : const {},
      _$data.containsKey('zoneName') ? l$zoneName : const {},
      _$data.containsKey('areaGuid') ? l$areaGuid : const {},
      _$data.containsKey('musterPoint') ? l$musterPoint : const {},
      _$data.containsKey('active') ? l$active : const {},
    ]);
  }
}

abstract class CopyWith$Input$AreaZoneFilterInput<TRes> {
  factory CopyWith$Input$AreaZoneFilterInput(
    Input$AreaZoneFilterInput instance,
    TRes Function(Input$AreaZoneFilterInput) then,
  ) = _CopyWithImpl$Input$AreaZoneFilterInput;

  factory CopyWith$Input$AreaZoneFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AreaZoneFilterInput;

  TRes call({
    List<Input$AreaZoneFilterInput>? and,
    List<Input$AreaZoneFilterInput>? or,
    Input$ComparableInt32OperationFilterInput? id,
    Input$StringOperationFilterInput? zoneGuid,
    Input$StringOperationFilterInput? zoneName,
    Input$StringOperationFilterInput? areaGuid,
    Input$StringOperationFilterInput? musterPoint,
    Input$BooleanOperationFilterInput? active,
  });
  TRes and(
      Iterable<Input$AreaZoneFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AreaZoneFilterInput<
                      Input$AreaZoneFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$AreaZoneFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AreaZoneFilterInput<
                      Input$AreaZoneFilterInput>>?)
          _fn);
  CopyWith$Input$ComparableInt32OperationFilterInput<TRes> get id;
  CopyWith$Input$StringOperationFilterInput<TRes> get zoneGuid;
  CopyWith$Input$StringOperationFilterInput<TRes> get zoneName;
  CopyWith$Input$StringOperationFilterInput<TRes> get areaGuid;
  CopyWith$Input$StringOperationFilterInput<TRes> get musterPoint;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
}

class _CopyWithImpl$Input$AreaZoneFilterInput<TRes>
    implements CopyWith$Input$AreaZoneFilterInput<TRes> {
  _CopyWithImpl$Input$AreaZoneFilterInput(
    this._instance,
    this._then,
  );

  final Input$AreaZoneFilterInput _instance;

  final TRes Function(Input$AreaZoneFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? zoneGuid = _undefined,
    Object? zoneName = _undefined,
    Object? areaGuid = _undefined,
    Object? musterPoint = _undefined,
    Object? active = _undefined,
  }) =>
      _then(Input$AreaZoneFilterInput._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$AreaZoneFilterInput>?),
        if (or != _undefined) 'or': (or as List<Input$AreaZoneFilterInput>?),
        if (id != _undefined)
          'id': (id as Input$ComparableInt32OperationFilterInput?),
        if (zoneGuid != _undefined)
          'zoneGuid': (zoneGuid as Input$StringOperationFilterInput?),
        if (zoneName != _undefined)
          'zoneName': (zoneName as Input$StringOperationFilterInput?),
        if (areaGuid != _undefined)
          'areaGuid': (areaGuid as Input$StringOperationFilterInput?),
        if (musterPoint != _undefined)
          'musterPoint': (musterPoint as Input$StringOperationFilterInput?),
        if (active != _undefined)
          'active': (active as Input$BooleanOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$AreaZoneFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AreaZoneFilterInput<
                          Input$AreaZoneFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$AreaZoneFilterInput(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$AreaZoneFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AreaZoneFilterInput<
                          Input$AreaZoneFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$AreaZoneFilterInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$ComparableInt32OperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$ComparableInt32OperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$ComparableInt32OperationFilterInput(
            local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get zoneGuid {
    final local$zoneGuid = _instance.zoneGuid;
    return local$zoneGuid == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$zoneGuid, (e) => call(zoneGuid: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get zoneName {
    final local$zoneName = _instance.zoneName;
    return local$zoneName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$zoneName, (e) => call(zoneName: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get areaGuid {
    final local$areaGuid = _instance.areaGuid;
    return local$areaGuid == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$areaGuid, (e) => call(areaGuid: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get musterPoint {
    final local$musterPoint = _instance.musterPoint;
    return local$musterPoint == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$musterPoint, (e) => call(musterPoint: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active, (e) => call(active: e));
  }
}

class _CopyWithStubImpl$Input$AreaZoneFilterInput<TRes>
    implements CopyWith$Input$AreaZoneFilterInput<TRes> {
  _CopyWithStubImpl$Input$AreaZoneFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AreaZoneFilterInput>? and,
    List<Input$AreaZoneFilterInput>? or,
    Input$ComparableInt32OperationFilterInput? id,
    Input$StringOperationFilterInput? zoneGuid,
    Input$StringOperationFilterInput? zoneName,
    Input$StringOperationFilterInput? areaGuid,
    Input$StringOperationFilterInput? musterPoint,
    Input$BooleanOperationFilterInput? active,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$ComparableInt32OperationFilterInput<TRes> get id =>
      CopyWith$Input$ComparableInt32OperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get zoneGuid =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get zoneName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get areaGuid =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get musterPoint =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);
}

class Input$AreaZoneSortInput {
  factory Input$AreaZoneSortInput({
    Enum$SortEnumType? id,
    Enum$SortEnumType? zoneGuid,
    Enum$SortEnumType? zoneName,
    Enum$SortEnumType? areaGuid,
    Enum$SortEnumType? musterPoint,
    Enum$SortEnumType? active,
  }) =>
      Input$AreaZoneSortInput._({
        if (id != null) r'id': id,
        if (zoneGuid != null) r'zoneGuid': zoneGuid,
        if (zoneName != null) r'zoneName': zoneName,
        if (areaGuid != null) r'areaGuid': areaGuid,
        if (musterPoint != null) r'musterPoint': musterPoint,
        if (active != null) r'active': active,
      });

  Input$AreaZoneSortInput._(this._$data);

  factory Input$AreaZoneSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortEnumType((l$id as String));
    }
    if (data.containsKey('zoneGuid')) {
      final l$zoneGuid = data['zoneGuid'];
      result$data['zoneGuid'] = l$zoneGuid == null
          ? null
          : fromJson$Enum$SortEnumType((l$zoneGuid as String));
    }
    if (data.containsKey('zoneName')) {
      final l$zoneName = data['zoneName'];
      result$data['zoneName'] = l$zoneName == null
          ? null
          : fromJson$Enum$SortEnumType((l$zoneName as String));
    }
    if (data.containsKey('areaGuid')) {
      final l$areaGuid = data['areaGuid'];
      result$data['areaGuid'] = l$areaGuid == null
          ? null
          : fromJson$Enum$SortEnumType((l$areaGuid as String));
    }
    if (data.containsKey('musterPoint')) {
      final l$musterPoint = data['musterPoint'];
      result$data['musterPoint'] = l$musterPoint == null
          ? null
          : fromJson$Enum$SortEnumType((l$musterPoint as String));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : fromJson$Enum$SortEnumType((l$active as String));
    }
    return Input$AreaZoneSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get id => (_$data['id'] as Enum$SortEnumType?);

  Enum$SortEnumType? get zoneGuid => (_$data['zoneGuid'] as Enum$SortEnumType?);

  Enum$SortEnumType? get zoneName => (_$data['zoneName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get areaGuid => (_$data['areaGuid'] as Enum$SortEnumType?);

  Enum$SortEnumType? get musterPoint =>
      (_$data['musterPoint'] as Enum$SortEnumType?);

  Enum$SortEnumType? get active => (_$data['active'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortEnumType(l$id);
    }
    if (_$data.containsKey('zoneGuid')) {
      final l$zoneGuid = zoneGuid;
      result$data['zoneGuid'] =
          l$zoneGuid == null ? null : toJson$Enum$SortEnumType(l$zoneGuid);
    }
    if (_$data.containsKey('zoneName')) {
      final l$zoneName = zoneName;
      result$data['zoneName'] =
          l$zoneName == null ? null : toJson$Enum$SortEnumType(l$zoneName);
    }
    if (_$data.containsKey('areaGuid')) {
      final l$areaGuid = areaGuid;
      result$data['areaGuid'] =
          l$areaGuid == null ? null : toJson$Enum$SortEnumType(l$areaGuid);
    }
    if (_$data.containsKey('musterPoint')) {
      final l$musterPoint = musterPoint;
      result$data['musterPoint'] = l$musterPoint == null
          ? null
          : toJson$Enum$SortEnumType(l$musterPoint);
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] =
          l$active == null ? null : toJson$Enum$SortEnumType(l$active);
    }
    return result$data;
  }

  CopyWith$Input$AreaZoneSortInput<Input$AreaZoneSortInput> get copyWith =>
      CopyWith$Input$AreaZoneSortInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AreaZoneSortInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$zoneGuid = zoneGuid;
    final lOther$zoneGuid = other.zoneGuid;
    if (_$data.containsKey('zoneGuid') !=
        other._$data.containsKey('zoneGuid')) {
      return false;
    }
    if (l$zoneGuid != lOther$zoneGuid) {
      return false;
    }
    final l$zoneName = zoneName;
    final lOther$zoneName = other.zoneName;
    if (_$data.containsKey('zoneName') !=
        other._$data.containsKey('zoneName')) {
      return false;
    }
    if (l$zoneName != lOther$zoneName) {
      return false;
    }
    final l$areaGuid = areaGuid;
    final lOther$areaGuid = other.areaGuid;
    if (_$data.containsKey('areaGuid') !=
        other._$data.containsKey('areaGuid')) {
      return false;
    }
    if (l$areaGuid != lOther$areaGuid) {
      return false;
    }
    final l$musterPoint = musterPoint;
    final lOther$musterPoint = other.musterPoint;
    if (_$data.containsKey('musterPoint') !=
        other._$data.containsKey('musterPoint')) {
      return false;
    }
    if (l$musterPoint != lOther$musterPoint) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$zoneGuid = zoneGuid;
    final l$zoneName = zoneName;
    final l$areaGuid = areaGuid;
    final l$musterPoint = musterPoint;
    final l$active = active;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('zoneGuid') ? l$zoneGuid : const {},
      _$data.containsKey('zoneName') ? l$zoneName : const {},
      _$data.containsKey('areaGuid') ? l$areaGuid : const {},
      _$data.containsKey('musterPoint') ? l$musterPoint : const {},
      _$data.containsKey('active') ? l$active : const {},
    ]);
  }
}

abstract class CopyWith$Input$AreaZoneSortInput<TRes> {
  factory CopyWith$Input$AreaZoneSortInput(
    Input$AreaZoneSortInput instance,
    TRes Function(Input$AreaZoneSortInput) then,
  ) = _CopyWithImpl$Input$AreaZoneSortInput;

  factory CopyWith$Input$AreaZoneSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AreaZoneSortInput;

  TRes call({
    Enum$SortEnumType? id,
    Enum$SortEnumType? zoneGuid,
    Enum$SortEnumType? zoneName,
    Enum$SortEnumType? areaGuid,
    Enum$SortEnumType? musterPoint,
    Enum$SortEnumType? active,
  });
}

class _CopyWithImpl$Input$AreaZoneSortInput<TRes>
    implements CopyWith$Input$AreaZoneSortInput<TRes> {
  _CopyWithImpl$Input$AreaZoneSortInput(
    this._instance,
    this._then,
  );

  final Input$AreaZoneSortInput _instance;

  final TRes Function(Input$AreaZoneSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? zoneGuid = _undefined,
    Object? zoneName = _undefined,
    Object? areaGuid = _undefined,
    Object? musterPoint = _undefined,
    Object? active = _undefined,
  }) =>
      _then(Input$AreaZoneSortInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortEnumType?),
        if (zoneGuid != _undefined)
          'zoneGuid': (zoneGuid as Enum$SortEnumType?),
        if (zoneName != _undefined)
          'zoneName': (zoneName as Enum$SortEnumType?),
        if (areaGuid != _undefined)
          'areaGuid': (areaGuid as Enum$SortEnumType?),
        if (musterPoint != _undefined)
          'musterPoint': (musterPoint as Enum$SortEnumType?),
        if (active != _undefined) 'active': (active as Enum$SortEnumType?),
      }));
}

class _CopyWithStubImpl$Input$AreaZoneSortInput<TRes>
    implements CopyWith$Input$AreaZoneSortInput<TRes> {
  _CopyWithStubImpl$Input$AreaZoneSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? id,
    Enum$SortEnumType? zoneGuid,
    Enum$SortEnumType? zoneName,
    Enum$SortEnumType? areaGuid,
    Enum$SortEnumType? musterPoint,
    Enum$SortEnumType? active,
  }) =>
      _res;
}

class Input$ComparableInt32OperationFilterInput {
  factory Input$ComparableInt32OperationFilterInput({
    int? eq,
    int? neq,
    List<int>? $in,
    List<int>? nin,
    int? gt,
    int? ngt,
    int? gte,
    int? ngte,
    int? lt,
    int? nlt,
    int? lte,
    int? nlte,
  }) =>
      Input$ComparableInt32OperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
        if (gt != null) r'gt': gt,
        if (ngt != null) r'ngt': ngt,
        if (gte != null) r'gte': gte,
        if (ngte != null) r'ngte': ngte,
        if (lt != null) r'lt': lt,
        if (nlt != null) r'nlt': nlt,
        if (lte != null) r'lte': lte,
        if (nlte != null) r'nlte': nlte,
      });

  Input$ComparableInt32OperationFilterInput._(this._$data);

  factory Input$ComparableInt32OperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as int?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as int?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] =
          (l$nin as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as int?);
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] = (l$ngt as int?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as int?);
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] = (l$ngte as int?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as int?);
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] = (l$nlt as int?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as int?);
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] = (l$nlte as int?);
    }
    return Input$ComparableInt32OperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get eq => (_$data['eq'] as int?);

  int? get neq => (_$data['neq'] as int?);

  List<int>? get $in => (_$data['in'] as List<int>?);

  List<int>? get nin => (_$data['nin'] as List<int>?);

  int? get gt => (_$data['gt'] as int?);

  int? get ngt => (_$data['ngt'] as int?);

  int? get gte => (_$data['gte'] as int?);

  int? get ngte => (_$data['ngte'] as int?);

  int? get lt => (_$data['lt'] as int?);

  int? get nlt => (_$data['nlt'] as int?);

  int? get lte => (_$data['lte'] as int?);

  int? get nlte => (_$data['nlte'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('ngt')) {
      final l$ngt = ngt;
      result$data['ngt'] = l$ngt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('ngte')) {
      final l$ngte = ngte;
      result$data['ngte'] = l$ngte;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('nlt')) {
      final l$nlt = nlt;
      result$data['nlt'] = l$nlt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('nlte')) {
      final l$nlte = nlte;
      result$data['nlte'] = l$nlte;
    }
    return result$data;
  }

  CopyWith$Input$ComparableInt32OperationFilterInput<
          Input$ComparableInt32OperationFilterInput>
      get copyWith => CopyWith$Input$ComparableInt32OperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ComparableInt32OperationFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$ngt = ngt;
    final lOther$ngt = other.ngt;
    if (_$data.containsKey('ngt') != other._$data.containsKey('ngt')) {
      return false;
    }
    if (l$ngt != lOther$ngt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$ngte = ngte;
    final lOther$ngte = other.ngte;
    if (_$data.containsKey('ngte') != other._$data.containsKey('ngte')) {
      return false;
    }
    if (l$ngte != lOther$ngte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$nlt = nlt;
    final lOther$nlt = other.nlt;
    if (_$data.containsKey('nlt') != other._$data.containsKey('nlt')) {
      return false;
    }
    if (l$nlt != lOther$nlt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$nlte = nlte;
    final lOther$nlte = other.nlte;
    if (_$data.containsKey('nlte') != other._$data.containsKey('nlte')) {
      return false;
    }
    if (l$nlte != lOther$nlte) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    final l$gt = gt;
    final l$ngt = ngt;
    final l$gte = gte;
    final l$ngte = ngte;
    final l$lt = lt;
    final l$nlt = nlt;
    final l$lte = lte;
    final l$nlte = nlte;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('ngt') ? l$ngt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('ngte') ? l$ngte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('nlt') ? l$nlt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('nlte') ? l$nlte : const {},
    ]);
  }
}

abstract class CopyWith$Input$ComparableInt32OperationFilterInput<TRes> {
  factory CopyWith$Input$ComparableInt32OperationFilterInput(
    Input$ComparableInt32OperationFilterInput instance,
    TRes Function(Input$ComparableInt32OperationFilterInput) then,
  ) = _CopyWithImpl$Input$ComparableInt32OperationFilterInput;

  factory CopyWith$Input$ComparableInt32OperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ComparableInt32OperationFilterInput;

  TRes call({
    int? eq,
    int? neq,
    List<int>? $in,
    List<int>? nin,
    int? gt,
    int? ngt,
    int? gte,
    int? ngte,
    int? lt,
    int? nlt,
    int? lte,
    int? nlte,
  });
}

class _CopyWithImpl$Input$ComparableInt32OperationFilterInput<TRes>
    implements CopyWith$Input$ComparableInt32OperationFilterInput<TRes> {
  _CopyWithImpl$Input$ComparableInt32OperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$ComparableInt32OperationFilterInput _instance;

  final TRes Function(Input$ComparableInt32OperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? gt = _undefined,
    Object? ngt = _undefined,
    Object? gte = _undefined,
    Object? ngte = _undefined,
    Object? lt = _undefined,
    Object? nlt = _undefined,
    Object? lte = _undefined,
    Object? nlte = _undefined,
  }) =>
      _then(Input$ComparableInt32OperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as int?),
        if (neq != _undefined) 'neq': (neq as int?),
        if ($in != _undefined) 'in': ($in as List<int>?),
        if (nin != _undefined) 'nin': (nin as List<int>?),
        if (gt != _undefined) 'gt': (gt as int?),
        if (ngt != _undefined) 'ngt': (ngt as int?),
        if (gte != _undefined) 'gte': (gte as int?),
        if (ngte != _undefined) 'ngte': (ngte as int?),
        if (lt != _undefined) 'lt': (lt as int?),
        if (nlt != _undefined) 'nlt': (nlt as int?),
        if (lte != _undefined) 'lte': (lte as int?),
        if (nlte != _undefined) 'nlte': (nlte as int?),
      }));
}

class _CopyWithStubImpl$Input$ComparableInt32OperationFilterInput<TRes>
    implements CopyWith$Input$ComparableInt32OperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$ComparableInt32OperationFilterInput(this._res);

  TRes _res;

  call({
    int? eq,
    int? neq,
    List<int>? $in,
    List<int>? nin,
    int? gt,
    int? ngt,
    int? gte,
    int? ngte,
    int? lt,
    int? nlt,
    int? lte,
    int? nlte,
  }) =>
      _res;
}

class Input$StringOperationFilterInput {
  factory Input$StringOperationFilterInput({
    List<Input$StringOperationFilterInput>? and,
    List<Input$StringOperationFilterInput>? or,
    String? eq,
    String? neq,
    String? contains,
    String? ncontains,
    List<String?>? $in,
    List<String?>? nin,
    String? startsWith,
    String? nstartsWith,
    String? endsWith,
    String? nendsWith,
  }) =>
      Input$StringOperationFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if (contains != null) r'contains': contains,
        if (ncontains != null) r'ncontains': ncontains,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
        if (startsWith != null) r'startsWith': startsWith,
        if (nstartsWith != null) r'nstartsWith': nstartsWith,
        if (endsWith != null) r'endsWith': endsWith,
        if (nendsWith != null) r'nendsWith': nendsWith,
      });

  Input$StringOperationFilterInput._(this._$data);

  factory Input$StringOperationFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$StringOperationFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$StringOperationFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('ncontains')) {
      final l$ncontains = data['ncontains'];
      result$data['ncontains'] = (l$ncontains as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] =
          (l$nin as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('startsWith')) {
      final l$startsWith = data['startsWith'];
      result$data['startsWith'] = (l$startsWith as String?);
    }
    if (data.containsKey('nstartsWith')) {
      final l$nstartsWith = data['nstartsWith'];
      result$data['nstartsWith'] = (l$nstartsWith as String?);
    }
    if (data.containsKey('endsWith')) {
      final l$endsWith = data['endsWith'];
      result$data['endsWith'] = (l$endsWith as String?);
    }
    if (data.containsKey('nendsWith')) {
      final l$nendsWith = data['nendsWith'];
      result$data['nendsWith'] = (l$nendsWith as String?);
    }
    return Input$StringOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$StringOperationFilterInput>? get and =>
      (_$data['and'] as List<Input$StringOperationFilterInput>?);

  List<Input$StringOperationFilterInput>? get or =>
      (_$data['or'] as List<Input$StringOperationFilterInput>?);

  String? get eq => (_$data['eq'] as String?);

  String? get neq => (_$data['neq'] as String?);

  String? get contains => (_$data['contains'] as String?);

  String? get ncontains => (_$data['ncontains'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

  List<String?>? get nin => (_$data['nin'] as List<String?>?);

  String? get startsWith => (_$data['startsWith'] as String?);

  String? get nstartsWith => (_$data['nstartsWith'] as String?);

  String? get endsWith => (_$data['endsWith'] as String?);

  String? get nendsWith => (_$data['nendsWith'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('ncontains')) {
      final l$ncontains = ncontains;
      result$data['ncontains'] = l$ncontains;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('startsWith')) {
      final l$startsWith = startsWith;
      result$data['startsWith'] = l$startsWith;
    }
    if (_$data.containsKey('nstartsWith')) {
      final l$nstartsWith = nstartsWith;
      result$data['nstartsWith'] = l$nstartsWith;
    }
    if (_$data.containsKey('endsWith')) {
      final l$endsWith = endsWith;
      result$data['endsWith'] = l$endsWith;
    }
    if (_$data.containsKey('nendsWith')) {
      final l$nendsWith = nendsWith;
      result$data['nendsWith'] = l$nendsWith;
    }
    return result$data;
  }

  CopyWith$Input$StringOperationFilterInput<Input$StringOperationFilterInput>
      get copyWith => CopyWith$Input$StringOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$StringOperationFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$ncontains = ncontains;
    final lOther$ncontains = other.ncontains;
    if (_$data.containsKey('ncontains') !=
        other._$data.containsKey('ncontains')) {
      return false;
    }
    if (l$ncontains != lOther$ncontains) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$startsWith = startsWith;
    final lOther$startsWith = other.startsWith;
    if (_$data.containsKey('startsWith') !=
        other._$data.containsKey('startsWith')) {
      return false;
    }
    if (l$startsWith != lOther$startsWith) {
      return false;
    }
    final l$nstartsWith = nstartsWith;
    final lOther$nstartsWith = other.nstartsWith;
    if (_$data.containsKey('nstartsWith') !=
        other._$data.containsKey('nstartsWith')) {
      return false;
    }
    if (l$nstartsWith != lOther$nstartsWith) {
      return false;
    }
    final l$endsWith = endsWith;
    final lOther$endsWith = other.endsWith;
    if (_$data.containsKey('endsWith') !=
        other._$data.containsKey('endsWith')) {
      return false;
    }
    if (l$endsWith != lOther$endsWith) {
      return false;
    }
    final l$nendsWith = nendsWith;
    final lOther$nendsWith = other.nendsWith;
    if (_$data.containsKey('nendsWith') !=
        other._$data.containsKey('nendsWith')) {
      return false;
    }
    if (l$nendsWith != lOther$nendsWith) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$eq = eq;
    final l$neq = neq;
    final l$contains = contains;
    final l$ncontains = ncontains;
    final l$$in = $in;
    final l$nin = nin;
    final l$startsWith = startsWith;
    final l$nstartsWith = nstartsWith;
    final l$endsWith = endsWith;
    final l$nendsWith = nendsWith;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('ncontains') ? l$ncontains : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('startsWith') ? l$startsWith : const {},
      _$data.containsKey('nstartsWith') ? l$nstartsWith : const {},
      _$data.containsKey('endsWith') ? l$endsWith : const {},
      _$data.containsKey('nendsWith') ? l$nendsWith : const {},
    ]);
  }
}

abstract class CopyWith$Input$StringOperationFilterInput<TRes> {
  factory CopyWith$Input$StringOperationFilterInput(
    Input$StringOperationFilterInput instance,
    TRes Function(Input$StringOperationFilterInput) then,
  ) = _CopyWithImpl$Input$StringOperationFilterInput;

  factory CopyWith$Input$StringOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$StringOperationFilterInput;

  TRes call({
    List<Input$StringOperationFilterInput>? and,
    List<Input$StringOperationFilterInput>? or,
    String? eq,
    String? neq,
    String? contains,
    String? ncontains,
    List<String?>? $in,
    List<String?>? nin,
    String? startsWith,
    String? nstartsWith,
    String? endsWith,
    String? nendsWith,
  });
  TRes and(
      Iterable<Input$StringOperationFilterInput>? Function(
              Iterable<
                  CopyWith$Input$StringOperationFilterInput<
                      Input$StringOperationFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$StringOperationFilterInput>? Function(
              Iterable<
                  CopyWith$Input$StringOperationFilterInput<
                      Input$StringOperationFilterInput>>?)
          _fn);
}

class _CopyWithImpl$Input$StringOperationFilterInput<TRes>
    implements CopyWith$Input$StringOperationFilterInput<TRes> {
  _CopyWithImpl$Input$StringOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$StringOperationFilterInput _instance;

  final TRes Function(Input$StringOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? contains = _undefined,
    Object? ncontains = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? startsWith = _undefined,
    Object? nstartsWith = _undefined,
    Object? endsWith = _undefined,
    Object? nendsWith = _undefined,
  }) =>
      _then(Input$StringOperationFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$StringOperationFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$StringOperationFilterInput>?),
        if (eq != _undefined) 'eq': (eq as String?),
        if (neq != _undefined) 'neq': (neq as String?),
        if (contains != _undefined) 'contains': (contains as String?),
        if (ncontains != _undefined) 'ncontains': (ncontains as String?),
        if ($in != _undefined) 'in': ($in as List<String?>?),
        if (nin != _undefined) 'nin': (nin as List<String?>?),
        if (startsWith != _undefined) 'startsWith': (startsWith as String?),
        if (nstartsWith != _undefined) 'nstartsWith': (nstartsWith as String?),
        if (endsWith != _undefined) 'endsWith': (endsWith as String?),
        if (nendsWith != _undefined) 'nendsWith': (nendsWith as String?),
      }));

  TRes and(
          Iterable<Input$StringOperationFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$StringOperationFilterInput<
                          Input$StringOperationFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$StringOperationFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$StringOperationFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$StringOperationFilterInput<
                          Input$StringOperationFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$StringOperationFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$StringOperationFilterInput<TRes>
    implements CopyWith$Input$StringOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$StringOperationFilterInput(this._res);

  TRes _res;

  call({
    List<Input$StringOperationFilterInput>? and,
    List<Input$StringOperationFilterInput>? or,
    String? eq,
    String? neq,
    String? contains,
    String? ncontains,
    List<String?>? $in,
    List<String?>? nin,
    String? startsWith,
    String? nstartsWith,
    String? endsWith,
    String? nendsWith,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;
}

class Input$BooleanOperationFilterInput {
  factory Input$BooleanOperationFilterInput({
    bool? eq,
    bool? neq,
  }) =>
      Input$BooleanOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
      });

  Input$BooleanOperationFilterInput._(this._$data);

  factory Input$BooleanOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as bool?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as bool?);
    }
    return Input$BooleanOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get eq => (_$data['eq'] as bool?);

  bool? get neq => (_$data['neq'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    return result$data;
  }

  CopyWith$Input$BooleanOperationFilterInput<Input$BooleanOperationFilterInput>
      get copyWith => CopyWith$Input$BooleanOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$BooleanOperationFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
    ]);
  }
}

abstract class CopyWith$Input$BooleanOperationFilterInput<TRes> {
  factory CopyWith$Input$BooleanOperationFilterInput(
    Input$BooleanOperationFilterInput instance,
    TRes Function(Input$BooleanOperationFilterInput) then,
  ) = _CopyWithImpl$Input$BooleanOperationFilterInput;

  factory CopyWith$Input$BooleanOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BooleanOperationFilterInput;

  TRes call({
    bool? eq,
    bool? neq,
  });
}

class _CopyWithImpl$Input$BooleanOperationFilterInput<TRes>
    implements CopyWith$Input$BooleanOperationFilterInput<TRes> {
  _CopyWithImpl$Input$BooleanOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$BooleanOperationFilterInput _instance;

  final TRes Function(Input$BooleanOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
  }) =>
      _then(Input$BooleanOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as bool?),
        if (neq != _undefined) 'neq': (neq as bool?),
      }));
}

class _CopyWithStubImpl$Input$BooleanOperationFilterInput<TRes>
    implements CopyWith$Input$BooleanOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$BooleanOperationFilterInput(this._res);

  TRes _res;

  call({
    bool? eq,
    bool? neq,
  }) =>
      _res;
}

class Input$ListFilterInputTypeOfDeviceAreaInputFilterInput {
  factory Input$ListFilterInputTypeOfDeviceAreaInputFilterInput({
    Input$DeviceAreasFilterInput? all,
    Input$DeviceAreasFilterInput? none,
    Input$DeviceAreasFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfDeviceAreaInputFilterInput._({
        if (all != null) r'all': all,
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfDeviceAreaInputFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfDeviceAreaInputFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$DeviceAreasFilterInput.fromJson(
              (l$all as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$DeviceAreasFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$DeviceAreasFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfDeviceAreaInputFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DeviceAreasFilterInput? get all =>
      (_$data['all'] as Input$DeviceAreasFilterInput?);

  Input$DeviceAreasFilterInput? get none =>
      (_$data['none'] as Input$DeviceAreasFilterInput?);

  Input$DeviceAreasFilterInput? get some =>
      (_$data['some'] as Input$DeviceAreasFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput<
          Input$ListFilterInputTypeOfDeviceAreaInputFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ListFilterInputTypeOfDeviceAreaInputFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput(
    Input$ListFilterInputTypeOfDeviceAreaInputFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfDeviceAreaInputFilterInput) then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput;

  TRes call({
    Input$DeviceAreasFilterInput? all,
    Input$DeviceAreasFilterInput? none,
    Input$DeviceAreasFilterInput? some,
    bool? any,
  });
  CopyWith$Input$DeviceAreasFilterInput<TRes> get all;
  CopyWith$Input$DeviceAreasFilterInput<TRes> get none;
  CopyWith$Input$DeviceAreasFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput<TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput<TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfDeviceAreaInputFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfDeviceAreaInputFilterInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfDeviceAreaInputFilterInput._({
        ..._instance._$data,
        if (all != _undefined) 'all': (all as Input$DeviceAreasFilterInput?),
        if (none != _undefined) 'none': (none as Input$DeviceAreasFilterInput?),
        if (some != _undefined) 'some': (some as Input$DeviceAreasFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$DeviceAreasFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$DeviceAreasFilterInput.stub(_then(_instance))
        : CopyWith$Input$DeviceAreasFilterInput(local$all, (e) => call(all: e));
  }

  CopyWith$Input$DeviceAreasFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$DeviceAreasFilterInput.stub(_then(_instance))
        : CopyWith$Input$DeviceAreasFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$DeviceAreasFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$DeviceAreasFilterInput.stub(_then(_instance))
        : CopyWith$Input$DeviceAreasFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfDeviceAreaInputFilterInput(
      this._res);

  TRes _res;

  call({
    Input$DeviceAreasFilterInput? all,
    Input$DeviceAreasFilterInput? none,
    Input$DeviceAreasFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$DeviceAreasFilterInput<TRes> get all =>
      CopyWith$Input$DeviceAreasFilterInput.stub(_res);

  CopyWith$Input$DeviceAreasFilterInput<TRes> get none =>
      CopyWith$Input$DeviceAreasFilterInput.stub(_res);

  CopyWith$Input$DeviceAreasFilterInput<TRes> get some =>
      CopyWith$Input$DeviceAreasFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfAreaZoneInputFilterInput {
  factory Input$ListFilterInputTypeOfAreaZoneInputFilterInput({
    Input$AreaZonesFilterInput? all,
    Input$AreaZonesFilterInput? none,
    Input$AreaZonesFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfAreaZoneInputFilterInput._({
        if (all != null) r'all': all,
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfAreaZoneInputFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfAreaZoneInputFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$AreaZonesFilterInput.fromJson(
              (l$all as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$AreaZonesFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$AreaZonesFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfAreaZoneInputFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AreaZonesFilterInput? get all =>
      (_$data['all'] as Input$AreaZonesFilterInput?);

  Input$AreaZonesFilterInput? get none =>
      (_$data['none'] as Input$AreaZonesFilterInput?);

  Input$AreaZonesFilterInput? get some =>
      (_$data['some'] as Input$AreaZonesFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput<
          Input$ListFilterInputTypeOfAreaZoneInputFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ListFilterInputTypeOfAreaZoneInputFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput(
    Input$ListFilterInputTypeOfAreaZoneInputFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfAreaZoneInputFilterInput) then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfAreaZoneInputFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfAreaZoneInputFilterInput;

  TRes call({
    Input$AreaZonesFilterInput? all,
    Input$AreaZonesFilterInput? none,
    Input$AreaZonesFilterInput? some,
    bool? any,
  });
  CopyWith$Input$AreaZonesFilterInput<TRes> get all;
  CopyWith$Input$AreaZonesFilterInput<TRes> get none;
  CopyWith$Input$AreaZonesFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfAreaZoneInputFilterInput<TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput<TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfAreaZoneInputFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfAreaZoneInputFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfAreaZoneInputFilterInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfAreaZoneInputFilterInput._({
        ..._instance._$data,
        if (all != _undefined) 'all': (all as Input$AreaZonesFilterInput?),
        if (none != _undefined) 'none': (none as Input$AreaZonesFilterInput?),
        if (some != _undefined) 'some': (some as Input$AreaZonesFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$AreaZonesFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$AreaZonesFilterInput.stub(_then(_instance))
        : CopyWith$Input$AreaZonesFilterInput(local$all, (e) => call(all: e));
  }

  CopyWith$Input$AreaZonesFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$AreaZonesFilterInput.stub(_then(_instance))
        : CopyWith$Input$AreaZonesFilterInput(local$none, (e) => call(none: e));
  }

  CopyWith$Input$AreaZonesFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$AreaZonesFilterInput.stub(_then(_instance))
        : CopyWith$Input$AreaZonesFilterInput(local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfAreaZoneInputFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfAreaZoneInputFilterInput(
      this._res);

  TRes _res;

  call({
    Input$AreaZonesFilterInput? all,
    Input$AreaZonesFilterInput? none,
    Input$AreaZonesFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$AreaZonesFilterInput<TRes> get all =>
      CopyWith$Input$AreaZonesFilterInput.stub(_res);

  CopyWith$Input$AreaZonesFilterInput<TRes> get none =>
      CopyWith$Input$AreaZonesFilterInput.stub(_res);

  CopyWith$Input$AreaZonesFilterInput<TRes> get some =>
      CopyWith$Input$AreaZonesFilterInput.stub(_res);
}

class Input$DeviceAreasFilterInput {
  factory Input$DeviceAreasFilterInput({
    List<Input$DeviceAreasFilterInput>? and,
    List<Input$DeviceAreasFilterInput>? or,
    Input$StringOperationFilterInput? areaGuid,
    Input$StringOperationFilterInput? areaName,
    Input$BooleanOperationFilterInput? active,
    Input$ListFilterInputTypeOfAreaZoneInputFilterInput? areaZones,
  }) =>
      Input$DeviceAreasFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (areaGuid != null) r'areaGuid': areaGuid,
        if (areaName != null) r'areaName': areaName,
        if (active != null) r'active': active,
        if (areaZones != null) r'areaZones': areaZones,
      });

  Input$DeviceAreasFilterInput._(this._$data);

  factory Input$DeviceAreasFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$DeviceAreasFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$DeviceAreasFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('areaGuid')) {
      final l$areaGuid = data['areaGuid'];
      result$data['areaGuid'] = l$areaGuid == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$areaGuid as Map<String, dynamic>));
    }
    if (data.containsKey('areaName')) {
      final l$areaName = data['areaName'];
      result$data['areaName'] = l$areaName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$areaName as Map<String, dynamic>));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>));
    }
    if (data.containsKey('areaZones')) {
      final l$areaZones = data['areaZones'];
      result$data['areaZones'] = l$areaZones == null
          ? null
          : Input$ListFilterInputTypeOfAreaZoneInputFilterInput.fromJson(
              (l$areaZones as Map<String, dynamic>));
    }
    return Input$DeviceAreasFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$DeviceAreasFilterInput>? get and =>
      (_$data['and'] as List<Input$DeviceAreasFilterInput>?);

  List<Input$DeviceAreasFilterInput>? get or =>
      (_$data['or'] as List<Input$DeviceAreasFilterInput>?);

  Input$StringOperationFilterInput? get areaGuid =>
      (_$data['areaGuid'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get areaName =>
      (_$data['areaName'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Input$ListFilterInputTypeOfAreaZoneInputFilterInput? get areaZones =>
      (_$data['areaZones']
          as Input$ListFilterInputTypeOfAreaZoneInputFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('areaGuid')) {
      final l$areaGuid = areaGuid;
      result$data['areaGuid'] = l$areaGuid?.toJson();
    }
    if (_$data.containsKey('areaName')) {
      final l$areaName = areaName;
      result$data['areaName'] = l$areaName?.toJson();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    if (_$data.containsKey('areaZones')) {
      final l$areaZones = areaZones;
      result$data['areaZones'] = l$areaZones?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DeviceAreasFilterInput<Input$DeviceAreasFilterInput>
      get copyWith => CopyWith$Input$DeviceAreasFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DeviceAreasFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$areaGuid = areaGuid;
    final lOther$areaGuid = other.areaGuid;
    if (_$data.containsKey('areaGuid') !=
        other._$data.containsKey('areaGuid')) {
      return false;
    }
    if (l$areaGuid != lOther$areaGuid) {
      return false;
    }
    final l$areaName = areaName;
    final lOther$areaName = other.areaName;
    if (_$data.containsKey('areaName') !=
        other._$data.containsKey('areaName')) {
      return false;
    }
    if (l$areaName != lOther$areaName) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    final l$areaZones = areaZones;
    final lOther$areaZones = other.areaZones;
    if (_$data.containsKey('areaZones') !=
        other._$data.containsKey('areaZones')) {
      return false;
    }
    if (l$areaZones != lOther$areaZones) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$areaGuid = areaGuid;
    final l$areaName = areaName;
    final l$active = active;
    final l$areaZones = areaZones;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('areaGuid') ? l$areaGuid : const {},
      _$data.containsKey('areaName') ? l$areaName : const {},
      _$data.containsKey('active') ? l$active : const {},
      _$data.containsKey('areaZones') ? l$areaZones : const {},
    ]);
  }
}

abstract class CopyWith$Input$DeviceAreasFilterInput<TRes> {
  factory CopyWith$Input$DeviceAreasFilterInput(
    Input$DeviceAreasFilterInput instance,
    TRes Function(Input$DeviceAreasFilterInput) then,
  ) = _CopyWithImpl$Input$DeviceAreasFilterInput;

  factory CopyWith$Input$DeviceAreasFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DeviceAreasFilterInput;

  TRes call({
    List<Input$DeviceAreasFilterInput>? and,
    List<Input$DeviceAreasFilterInput>? or,
    Input$StringOperationFilterInput? areaGuid,
    Input$StringOperationFilterInput? areaName,
    Input$BooleanOperationFilterInput? active,
    Input$ListFilterInputTypeOfAreaZoneInputFilterInput? areaZones,
  });
  TRes and(
      Iterable<Input$DeviceAreasFilterInput>? Function(
              Iterable<
                  CopyWith$Input$DeviceAreasFilterInput<
                      Input$DeviceAreasFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$DeviceAreasFilterInput>? Function(
              Iterable<
                  CopyWith$Input$DeviceAreasFilterInput<
                      Input$DeviceAreasFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get areaGuid;
  CopyWith$Input$StringOperationFilterInput<TRes> get areaName;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
  CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput<TRes>
      get areaZones;
}

class _CopyWithImpl$Input$DeviceAreasFilterInput<TRes>
    implements CopyWith$Input$DeviceAreasFilterInput<TRes> {
  _CopyWithImpl$Input$DeviceAreasFilterInput(
    this._instance,
    this._then,
  );

  final Input$DeviceAreasFilterInput _instance;

  final TRes Function(Input$DeviceAreasFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? areaGuid = _undefined,
    Object? areaName = _undefined,
    Object? active = _undefined,
    Object? areaZones = _undefined,
  }) =>
      _then(Input$DeviceAreasFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$DeviceAreasFilterInput>?),
        if (or != _undefined) 'or': (or as List<Input$DeviceAreasFilterInput>?),
        if (areaGuid != _undefined)
          'areaGuid': (areaGuid as Input$StringOperationFilterInput?),
        if (areaName != _undefined)
          'areaName': (areaName as Input$StringOperationFilterInput?),
        if (active != _undefined)
          'active': (active as Input$BooleanOperationFilterInput?),
        if (areaZones != _undefined)
          'areaZones': (areaZones
              as Input$ListFilterInputTypeOfAreaZoneInputFilterInput?),
      }));

  TRes and(
          Iterable<Input$DeviceAreasFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$DeviceAreasFilterInput<
                          Input$DeviceAreasFilterInput>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$DeviceAreasFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$DeviceAreasFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$DeviceAreasFilterInput<
                          Input$DeviceAreasFilterInput>>?)
              _fn) =>
      call(
          or: _fn(
              _instance.or?.map((e) => CopyWith$Input$DeviceAreasFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get areaGuid {
    final local$areaGuid = _instance.areaGuid;
    return local$areaGuid == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$areaGuid, (e) => call(areaGuid: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get areaName {
    final local$areaName = _instance.areaName;
    return local$areaName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$areaName, (e) => call(areaName: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active, (e) => call(active: e));
  }

  CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput<TRes>
      get areaZones {
    final local$areaZones = _instance.areaZones;
    return local$areaZones == null
        ? CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput(
            local$areaZones, (e) => call(areaZones: e));
  }
}

class _CopyWithStubImpl$Input$DeviceAreasFilterInput<TRes>
    implements CopyWith$Input$DeviceAreasFilterInput<TRes> {
  _CopyWithStubImpl$Input$DeviceAreasFilterInput(this._res);

  TRes _res;

  call({
    List<Input$DeviceAreasFilterInput>? and,
    List<Input$DeviceAreasFilterInput>? or,
    Input$StringOperationFilterInput? areaGuid,
    Input$StringOperationFilterInput? areaName,
    Input$BooleanOperationFilterInput? active,
    Input$ListFilterInputTypeOfAreaZoneInputFilterInput? areaZones,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get areaGuid =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get areaName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput<TRes>
      get areaZones =>
          CopyWith$Input$ListFilterInputTypeOfAreaZoneInputFilterInput.stub(
              _res);
}

class Input$AreaZonesFilterInput {
  factory Input$AreaZonesFilterInput({
    List<Input$AreaZonesFilterInput>? and,
    List<Input$AreaZonesFilterInput>? or,
    Input$StringOperationFilterInput? zoneGuid,
    Input$StringOperationFilterInput? zoneName,
    Input$StringOperationFilterInput? musterPoint,
    Input$BooleanOperationFilterInput? active,
  }) =>
      Input$AreaZonesFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (zoneGuid != null) r'zoneGuid': zoneGuid,
        if (zoneName != null) r'zoneName': zoneName,
        if (musterPoint != null) r'musterPoint': musterPoint,
        if (active != null) r'active': active,
      });

  Input$AreaZonesFilterInput._(this._$data);

  factory Input$AreaZonesFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$AreaZonesFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$AreaZonesFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('zoneGuid')) {
      final l$zoneGuid = data['zoneGuid'];
      result$data['zoneGuid'] = l$zoneGuid == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$zoneGuid as Map<String, dynamic>));
    }
    if (data.containsKey('zoneName')) {
      final l$zoneName = data['zoneName'];
      result$data['zoneName'] = l$zoneName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$zoneName as Map<String, dynamic>));
    }
    if (data.containsKey('musterPoint')) {
      final l$musterPoint = data['musterPoint'];
      result$data['musterPoint'] = l$musterPoint == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$musterPoint as Map<String, dynamic>));
    }
    if (data.containsKey('active')) {
      final l$active = data['active'];
      result$data['active'] = l$active == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$active as Map<String, dynamic>));
    }
    return Input$AreaZonesFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AreaZonesFilterInput>? get and =>
      (_$data['and'] as List<Input$AreaZonesFilterInput>?);

  List<Input$AreaZonesFilterInput>? get or =>
      (_$data['or'] as List<Input$AreaZonesFilterInput>?);

  Input$StringOperationFilterInput? get zoneGuid =>
      (_$data['zoneGuid'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get zoneName =>
      (_$data['zoneName'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get musterPoint =>
      (_$data['musterPoint'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get active =>
      (_$data['active'] as Input$BooleanOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('zoneGuid')) {
      final l$zoneGuid = zoneGuid;
      result$data['zoneGuid'] = l$zoneGuid?.toJson();
    }
    if (_$data.containsKey('zoneName')) {
      final l$zoneName = zoneName;
      result$data['zoneName'] = l$zoneName?.toJson();
    }
    if (_$data.containsKey('musterPoint')) {
      final l$musterPoint = musterPoint;
      result$data['musterPoint'] = l$musterPoint?.toJson();
    }
    if (_$data.containsKey('active')) {
      final l$active = active;
      result$data['active'] = l$active?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AreaZonesFilterInput<Input$AreaZonesFilterInput>
      get copyWith => CopyWith$Input$AreaZonesFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AreaZonesFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$zoneGuid = zoneGuid;
    final lOther$zoneGuid = other.zoneGuid;
    if (_$data.containsKey('zoneGuid') !=
        other._$data.containsKey('zoneGuid')) {
      return false;
    }
    if (l$zoneGuid != lOther$zoneGuid) {
      return false;
    }
    final l$zoneName = zoneName;
    final lOther$zoneName = other.zoneName;
    if (_$data.containsKey('zoneName') !=
        other._$data.containsKey('zoneName')) {
      return false;
    }
    if (l$zoneName != lOther$zoneName) {
      return false;
    }
    final l$musterPoint = musterPoint;
    final lOther$musterPoint = other.musterPoint;
    if (_$data.containsKey('musterPoint') !=
        other._$data.containsKey('musterPoint')) {
      return false;
    }
    if (l$musterPoint != lOther$musterPoint) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (_$data.containsKey('active') != other._$data.containsKey('active')) {
      return false;
    }
    if (l$active != lOther$active) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$zoneGuid = zoneGuid;
    final l$zoneName = zoneName;
    final l$musterPoint = musterPoint;
    final l$active = active;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('zoneGuid') ? l$zoneGuid : const {},
      _$data.containsKey('zoneName') ? l$zoneName : const {},
      _$data.containsKey('musterPoint') ? l$musterPoint : const {},
      _$data.containsKey('active') ? l$active : const {},
    ]);
  }
}

abstract class CopyWith$Input$AreaZonesFilterInput<TRes> {
  factory CopyWith$Input$AreaZonesFilterInput(
    Input$AreaZonesFilterInput instance,
    TRes Function(Input$AreaZonesFilterInput) then,
  ) = _CopyWithImpl$Input$AreaZonesFilterInput;

  factory CopyWith$Input$AreaZonesFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AreaZonesFilterInput;

  TRes call({
    List<Input$AreaZonesFilterInput>? and,
    List<Input$AreaZonesFilterInput>? or,
    Input$StringOperationFilterInput? zoneGuid,
    Input$StringOperationFilterInput? zoneName,
    Input$StringOperationFilterInput? musterPoint,
    Input$BooleanOperationFilterInput? active,
  });
  TRes and(
      Iterable<Input$AreaZonesFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AreaZonesFilterInput<
                      Input$AreaZonesFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$AreaZonesFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AreaZonesFilterInput<
                      Input$AreaZonesFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get zoneGuid;
  CopyWith$Input$StringOperationFilterInput<TRes> get zoneName;
  CopyWith$Input$StringOperationFilterInput<TRes> get musterPoint;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get active;
}

class _CopyWithImpl$Input$AreaZonesFilterInput<TRes>
    implements CopyWith$Input$AreaZonesFilterInput<TRes> {
  _CopyWithImpl$Input$AreaZonesFilterInput(
    this._instance,
    this._then,
  );

  final Input$AreaZonesFilterInput _instance;

  final TRes Function(Input$AreaZonesFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? zoneGuid = _undefined,
    Object? zoneName = _undefined,
    Object? musterPoint = _undefined,
    Object? active = _undefined,
  }) =>
      _then(Input$AreaZonesFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$AreaZonesFilterInput>?),
        if (or != _undefined) 'or': (or as List<Input$AreaZonesFilterInput>?),
        if (zoneGuid != _undefined)
          'zoneGuid': (zoneGuid as Input$StringOperationFilterInput?),
        if (zoneName != _undefined)
          'zoneName': (zoneName as Input$StringOperationFilterInput?),
        if (musterPoint != _undefined)
          'musterPoint': (musterPoint as Input$StringOperationFilterInput?),
        if (active != _undefined)
          'active': (active as Input$BooleanOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$AreaZonesFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AreaZonesFilterInput<
                          Input$AreaZonesFilterInput>>?)
              _fn) =>
      call(
          and:
              _fn(_instance.and?.map((e) => CopyWith$Input$AreaZonesFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$AreaZonesFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AreaZonesFilterInput<
                          Input$AreaZonesFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$AreaZonesFilterInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get zoneGuid {
    final local$zoneGuid = _instance.zoneGuid;
    return local$zoneGuid == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$zoneGuid, (e) => call(zoneGuid: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get zoneName {
    final local$zoneName = _instance.zoneName;
    return local$zoneName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$zoneName, (e) => call(zoneName: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get musterPoint {
    final local$musterPoint = _instance.musterPoint;
    return local$musterPoint == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$musterPoint, (e) => call(musterPoint: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$active, (e) => call(active: e));
  }
}

class _CopyWithStubImpl$Input$AreaZonesFilterInput<TRes>
    implements CopyWith$Input$AreaZonesFilterInput<TRes> {
  _CopyWithStubImpl$Input$AreaZonesFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AreaZonesFilterInput>? and,
    List<Input$AreaZonesFilterInput>? or,
    Input$StringOperationFilterInput? zoneGuid,
    Input$StringOperationFilterInput? zoneName,
    Input$StringOperationFilterInput? musterPoint,
    Input$BooleanOperationFilterInput? active,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get zoneGuid =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get zoneName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get musterPoint =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get active =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);
}

class Input$GetFireRollCallLogsInput {
  factory Input$GetFireRollCallLogsInput({
    required String yardCode,
    String? area,
    required String zone,
    required String date,
  }) =>
      Input$GetFireRollCallLogsInput._({
        r'yardCode': yardCode,
        if (area != null) r'area': area,
        r'zone': zone,
        r'date': date,
      });

  Input$GetFireRollCallLogsInput._(this._$data);

  factory Input$GetFireRollCallLogsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    if (data.containsKey('area')) {
      final l$area = data['area'];
      result$data['area'] = (l$area as String?);
    }
    final l$zone = data['zone'];
    result$data['zone'] = (l$zone as String);
    final l$date = data['date'];
    result$data['date'] = (l$date as String);
    return Input$GetFireRollCallLogsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get yardCode => (_$data['yardCode'] as String);

  String? get area => (_$data['area'] as String?);

  String get zone => (_$data['zone'] as String);

  String get date => (_$data['date'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$yardCode = yardCode;
    result$data['yardCode'] = l$yardCode;
    if (_$data.containsKey('area')) {
      final l$area = area;
      result$data['area'] = l$area;
    }
    final l$zone = zone;
    result$data['zone'] = l$zone;
    final l$date = date;
    result$data['date'] = l$date;
    return result$data;
  }

  CopyWith$Input$GetFireRollCallLogsInput<Input$GetFireRollCallLogsInput>
      get copyWith => CopyWith$Input$GetFireRollCallLogsInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GetFireRollCallLogsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$area = area;
    final lOther$area = other.area;
    if (_$data.containsKey('area') != other._$data.containsKey('area')) {
      return false;
    }
    if (l$area != lOther$area) {
      return false;
    }
    final l$zone = zone;
    final lOther$zone = other.zone;
    if (l$zone != lOther$zone) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$area = area;
    final l$zone = zone;
    final l$date = date;
    return Object.hashAll([
      l$yardCode,
      _$data.containsKey('area') ? l$area : const {},
      l$zone,
      l$date,
    ]);
  }
}

abstract class CopyWith$Input$GetFireRollCallLogsInput<TRes> {
  factory CopyWith$Input$GetFireRollCallLogsInput(
    Input$GetFireRollCallLogsInput instance,
    TRes Function(Input$GetFireRollCallLogsInput) then,
  ) = _CopyWithImpl$Input$GetFireRollCallLogsInput;

  factory CopyWith$Input$GetFireRollCallLogsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GetFireRollCallLogsInput;

  TRes call({
    String? yardCode,
    String? area,
    String? zone,
    String? date,
  });
}

class _CopyWithImpl$Input$GetFireRollCallLogsInput<TRes>
    implements CopyWith$Input$GetFireRollCallLogsInput<TRes> {
  _CopyWithImpl$Input$GetFireRollCallLogsInput(
    this._instance,
    this._then,
  );

  final Input$GetFireRollCallLogsInput _instance;

  final TRes Function(Input$GetFireRollCallLogsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? area = _undefined,
    Object? zone = _undefined,
    Object? date = _undefined,
  }) =>
      _then(Input$GetFireRollCallLogsInput._({
        ..._instance._$data,
        if (yardCode != _undefined && yardCode != null)
          'yardCode': (yardCode as String),
        if (area != _undefined) 'area': (area as String?),
        if (zone != _undefined && zone != null) 'zone': (zone as String),
        if (date != _undefined && date != null) 'date': (date as String),
      }));
}

class _CopyWithStubImpl$Input$GetFireRollCallLogsInput<TRes>
    implements CopyWith$Input$GetFireRollCallLogsInput<TRes> {
  _CopyWithStubImpl$Input$GetFireRollCallLogsInput(this._res);

  TRes _res;

  call({
    String? yardCode,
    String? area,
    String? zone,
    String? date,
  }) =>
      _res;
}

class Input$GetMissingEmployeesInput {
  factory Input$GetMissingEmployeesInput({
    required String yardCode,
    required DateTime missingOnDate,
  }) =>
      Input$GetMissingEmployeesInput._({
        r'yardCode': yardCode,
        r'missingOnDate': missingOnDate,
      });

  Input$GetMissingEmployeesInput._(this._$data);

  factory Input$GetMissingEmployeesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    final l$missingOnDate = data['missingOnDate'];
    result$data['missingOnDate'] = DateTime.parse((l$missingOnDate as String));
    return Input$GetMissingEmployeesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get yardCode => (_$data['yardCode'] as String);

  DateTime get missingOnDate => (_$data['missingOnDate'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$yardCode = yardCode;
    result$data['yardCode'] = l$yardCode;
    final l$missingOnDate = missingOnDate;
    result$data['missingOnDate'] = l$missingOnDate.toIso8601String();
    return result$data;
  }

  CopyWith$Input$GetMissingEmployeesInput<Input$GetMissingEmployeesInput>
      get copyWith => CopyWith$Input$GetMissingEmployeesInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GetMissingEmployeesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$missingOnDate = missingOnDate;
    final lOther$missingOnDate = other.missingOnDate;
    if (l$missingOnDate != lOther$missingOnDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$missingOnDate = missingOnDate;
    return Object.hashAll([
      l$yardCode,
      l$missingOnDate,
    ]);
  }
}

abstract class CopyWith$Input$GetMissingEmployeesInput<TRes> {
  factory CopyWith$Input$GetMissingEmployeesInput(
    Input$GetMissingEmployeesInput instance,
    TRes Function(Input$GetMissingEmployeesInput) then,
  ) = _CopyWithImpl$Input$GetMissingEmployeesInput;

  factory CopyWith$Input$GetMissingEmployeesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GetMissingEmployeesInput;

  TRes call({
    String? yardCode,
    DateTime? missingOnDate,
  });
}

class _CopyWithImpl$Input$GetMissingEmployeesInput<TRes>
    implements CopyWith$Input$GetMissingEmployeesInput<TRes> {
  _CopyWithImpl$Input$GetMissingEmployeesInput(
    this._instance,
    this._then,
  );

  final Input$GetMissingEmployeesInput _instance;

  final TRes Function(Input$GetMissingEmployeesInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? missingOnDate = _undefined,
  }) =>
      _then(Input$GetMissingEmployeesInput._({
        ..._instance._$data,
        if (yardCode != _undefined && yardCode != null)
          'yardCode': (yardCode as String),
        if (missingOnDate != _undefined && missingOnDate != null)
          'missingOnDate': (missingOnDate as DateTime),
      }));
}

class _CopyWithStubImpl$Input$GetMissingEmployeesInput<TRes>
    implements CopyWith$Input$GetMissingEmployeesInput<TRes> {
  _CopyWithStubImpl$Input$GetMissingEmployeesInput(this._res);

  TRes _res;

  call({
    String? yardCode,
    DateTime? missingOnDate,
  }) =>
      _res;
}

class Input$GetFireRegisterPunchEventsInput {
  factory Input$GetFireRegisterPunchEventsInput({
    required String yardCode,
    required String zone,
    required DateTime date,
    required String area,
  }) =>
      Input$GetFireRegisterPunchEventsInput._({
        r'yardCode': yardCode,
        r'zone': zone,
        r'date': date,
        r'area': area,
      });

  Input$GetFireRegisterPunchEventsInput._(this._$data);

  factory Input$GetFireRegisterPunchEventsInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    final l$zone = data['zone'];
    result$data['zone'] = (l$zone as String);
    final l$date = data['date'];
    result$data['date'] = DateTime.parse((l$date as String));
    final l$area = data['area'];
    result$data['area'] = (l$area as String);
    return Input$GetFireRegisterPunchEventsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get yardCode => (_$data['yardCode'] as String);

  String get zone => (_$data['zone'] as String);

  DateTime get date => (_$data['date'] as DateTime);

  String get area => (_$data['area'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$yardCode = yardCode;
    result$data['yardCode'] = l$yardCode;
    final l$zone = zone;
    result$data['zone'] = l$zone;
    final l$date = date;
    result$data['date'] = l$date.toIso8601String();
    final l$area = area;
    result$data['area'] = l$area;
    return result$data;
  }

  CopyWith$Input$GetFireRegisterPunchEventsInput<
          Input$GetFireRegisterPunchEventsInput>
      get copyWith => CopyWith$Input$GetFireRegisterPunchEventsInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GetFireRegisterPunchEventsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$zone = zone;
    final lOther$zone = other.zone;
    if (l$zone != lOther$zone) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$area = area;
    final lOther$area = other.area;
    if (l$area != lOther$area) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$zone = zone;
    final l$date = date;
    final l$area = area;
    return Object.hashAll([
      l$yardCode,
      l$zone,
      l$date,
      l$area,
    ]);
  }
}

abstract class CopyWith$Input$GetFireRegisterPunchEventsInput<TRes> {
  factory CopyWith$Input$GetFireRegisterPunchEventsInput(
    Input$GetFireRegisterPunchEventsInput instance,
    TRes Function(Input$GetFireRegisterPunchEventsInput) then,
  ) = _CopyWithImpl$Input$GetFireRegisterPunchEventsInput;

  factory CopyWith$Input$GetFireRegisterPunchEventsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GetFireRegisterPunchEventsInput;

  TRes call({
    String? yardCode,
    String? zone,
    DateTime? date,
    String? area,
  });
}

class _CopyWithImpl$Input$GetFireRegisterPunchEventsInput<TRes>
    implements CopyWith$Input$GetFireRegisterPunchEventsInput<TRes> {
  _CopyWithImpl$Input$GetFireRegisterPunchEventsInput(
    this._instance,
    this._then,
  );

  final Input$GetFireRegisterPunchEventsInput _instance;

  final TRes Function(Input$GetFireRegisterPunchEventsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? zone = _undefined,
    Object? date = _undefined,
    Object? area = _undefined,
  }) =>
      _then(Input$GetFireRegisterPunchEventsInput._({
        ..._instance._$data,
        if (yardCode != _undefined && yardCode != null)
          'yardCode': (yardCode as String),
        if (zone != _undefined && zone != null) 'zone': (zone as String),
        if (date != _undefined && date != null) 'date': (date as DateTime),
        if (area != _undefined && area != null) 'area': (area as String),
      }));
}

class _CopyWithStubImpl$Input$GetFireRegisterPunchEventsInput<TRes>
    implements CopyWith$Input$GetFireRegisterPunchEventsInput<TRes> {
  _CopyWithStubImpl$Input$GetFireRegisterPunchEventsInput(this._res);

  TRes _res;

  call({
    String? yardCode,
    String? zone,
    DateTime? date,
    String? area,
  }) =>
      _res;
}

class Input$CreatePunchEventInput {
  factory Input$CreatePunchEventInput({
    required int punchDevice,
    required String badgeNo,
    required Enum$PunchType punchType,
    required DateTime punchTime,
    required String subjectName,
    required Enum$SubjectType subjectType,
    String? visitorHost,
    String? zoneGuid,
    String? visitorCmpName,
    String? visitorVehicleReg,
    String? visitorPhoneNo,
  }) =>
      Input$CreatePunchEventInput._({
        r'punchDevice': punchDevice,
        r'badgeNo': badgeNo,
        r'punchType': punchType,
        r'punchTime': punchTime,
        r'subjectName': subjectName,
        r'subjectType': subjectType,
        if (visitorHost != null) r'visitorHost': visitorHost,
        if (zoneGuid != null) r'zoneGuid': zoneGuid,
        if (visitorCmpName != null) r'visitorCmpName': visitorCmpName,
        if (visitorVehicleReg != null) r'visitorVehicleReg': visitorVehicleReg,
        if (visitorPhoneNo != null) r'visitorPhoneNo': visitorPhoneNo,
      });

  Input$CreatePunchEventInput._(this._$data);

  factory Input$CreatePunchEventInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$punchDevice = data['punchDevice'];
    result$data['punchDevice'] = (l$punchDevice as int);
    final l$badgeNo = data['badgeNo'];
    result$data['badgeNo'] = (l$badgeNo as String);
    final l$punchType = data['punchType'];
    result$data['punchType'] = fromJson$Enum$PunchType((l$punchType as String));
    final l$punchTime = data['punchTime'];
    result$data['punchTime'] = DateTime.parse((l$punchTime as String));
    final l$subjectName = data['subjectName'];
    result$data['subjectName'] = (l$subjectName as String);
    final l$subjectType = data['subjectType'];
    result$data['subjectType'] =
        fromJson$Enum$SubjectType((l$subjectType as String));
    if (data.containsKey('visitorHost')) {
      final l$visitorHost = data['visitorHost'];
      result$data['visitorHost'] = (l$visitorHost as String?);
    }
    if (data.containsKey('zoneGuid')) {
      final l$zoneGuid = data['zoneGuid'];
      result$data['zoneGuid'] = (l$zoneGuid as String?);
    }
    if (data.containsKey('visitorCmpName')) {
      final l$visitorCmpName = data['visitorCmpName'];
      result$data['visitorCmpName'] = (l$visitorCmpName as String?);
    }
    if (data.containsKey('visitorVehicleReg')) {
      final l$visitorVehicleReg = data['visitorVehicleReg'];
      result$data['visitorVehicleReg'] = (l$visitorVehicleReg as String?);
    }
    if (data.containsKey('visitorPhoneNo')) {
      final l$visitorPhoneNo = data['visitorPhoneNo'];
      result$data['visitorPhoneNo'] = (l$visitorPhoneNo as String?);
    }
    return Input$CreatePunchEventInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get punchDevice => (_$data['punchDevice'] as int);

  String get badgeNo => (_$data['badgeNo'] as String);

  Enum$PunchType get punchType => (_$data['punchType'] as Enum$PunchType);

  DateTime get punchTime => (_$data['punchTime'] as DateTime);

  String get subjectName => (_$data['subjectName'] as String);

  Enum$SubjectType get subjectType =>
      (_$data['subjectType'] as Enum$SubjectType);

  String? get visitorHost => (_$data['visitorHost'] as String?);

  String? get zoneGuid => (_$data['zoneGuid'] as String?);

  String? get visitorCmpName => (_$data['visitorCmpName'] as String?);

  String? get visitorVehicleReg => (_$data['visitorVehicleReg'] as String?);

  String? get visitorPhoneNo => (_$data['visitorPhoneNo'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$punchDevice = punchDevice;
    result$data['punchDevice'] = l$punchDevice;
    final l$badgeNo = badgeNo;
    result$data['badgeNo'] = l$badgeNo;
    final l$punchType = punchType;
    result$data['punchType'] = toJson$Enum$PunchType(l$punchType);
    final l$punchTime = punchTime;
    result$data['punchTime'] = l$punchTime.toIso8601String();
    final l$subjectName = subjectName;
    result$data['subjectName'] = l$subjectName;
    final l$subjectType = subjectType;
    result$data['subjectType'] = toJson$Enum$SubjectType(l$subjectType);
    if (_$data.containsKey('visitorHost')) {
      final l$visitorHost = visitorHost;
      result$data['visitorHost'] = l$visitorHost;
    }
    if (_$data.containsKey('zoneGuid')) {
      final l$zoneGuid = zoneGuid;
      result$data['zoneGuid'] = l$zoneGuid;
    }
    if (_$data.containsKey('visitorCmpName')) {
      final l$visitorCmpName = visitorCmpName;
      result$data['visitorCmpName'] = l$visitorCmpName;
    }
    if (_$data.containsKey('visitorVehicleReg')) {
      final l$visitorVehicleReg = visitorVehicleReg;
      result$data['visitorVehicleReg'] = l$visitorVehicleReg;
    }
    if (_$data.containsKey('visitorPhoneNo')) {
      final l$visitorPhoneNo = visitorPhoneNo;
      result$data['visitorPhoneNo'] = l$visitorPhoneNo;
    }
    return result$data;
  }

  CopyWith$Input$CreatePunchEventInput<Input$CreatePunchEventInput>
      get copyWith => CopyWith$Input$CreatePunchEventInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreatePunchEventInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$punchDevice = punchDevice;
    final lOther$punchDevice = other.punchDevice;
    if (l$punchDevice != lOther$punchDevice) {
      return false;
    }
    final l$badgeNo = badgeNo;
    final lOther$badgeNo = other.badgeNo;
    if (l$badgeNo != lOther$badgeNo) {
      return false;
    }
    final l$punchType = punchType;
    final lOther$punchType = other.punchType;
    if (l$punchType != lOther$punchType) {
      return false;
    }
    final l$punchTime = punchTime;
    final lOther$punchTime = other.punchTime;
    if (l$punchTime != lOther$punchTime) {
      return false;
    }
    final l$subjectName = subjectName;
    final lOther$subjectName = other.subjectName;
    if (l$subjectName != lOther$subjectName) {
      return false;
    }
    final l$subjectType = subjectType;
    final lOther$subjectType = other.subjectType;
    if (l$subjectType != lOther$subjectType) {
      return false;
    }
    final l$visitorHost = visitorHost;
    final lOther$visitorHost = other.visitorHost;
    if (_$data.containsKey('visitorHost') !=
        other._$data.containsKey('visitorHost')) {
      return false;
    }
    if (l$visitorHost != lOther$visitorHost) {
      return false;
    }
    final l$zoneGuid = zoneGuid;
    final lOther$zoneGuid = other.zoneGuid;
    if (_$data.containsKey('zoneGuid') !=
        other._$data.containsKey('zoneGuid')) {
      return false;
    }
    if (l$zoneGuid != lOther$zoneGuid) {
      return false;
    }
    final l$visitorCmpName = visitorCmpName;
    final lOther$visitorCmpName = other.visitorCmpName;
    if (_$data.containsKey('visitorCmpName') !=
        other._$data.containsKey('visitorCmpName')) {
      return false;
    }
    if (l$visitorCmpName != lOther$visitorCmpName) {
      return false;
    }
    final l$visitorVehicleReg = visitorVehicleReg;
    final lOther$visitorVehicleReg = other.visitorVehicleReg;
    if (_$data.containsKey('visitorVehicleReg') !=
        other._$data.containsKey('visitorVehicleReg')) {
      return false;
    }
    if (l$visitorVehicleReg != lOther$visitorVehicleReg) {
      return false;
    }
    final l$visitorPhoneNo = visitorPhoneNo;
    final lOther$visitorPhoneNo = other.visitorPhoneNo;
    if (_$data.containsKey('visitorPhoneNo') !=
        other._$data.containsKey('visitorPhoneNo')) {
      return false;
    }
    if (l$visitorPhoneNo != lOther$visitorPhoneNo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$punchDevice = punchDevice;
    final l$badgeNo = badgeNo;
    final l$punchType = punchType;
    final l$punchTime = punchTime;
    final l$subjectName = subjectName;
    final l$subjectType = subjectType;
    final l$visitorHost = visitorHost;
    final l$zoneGuid = zoneGuid;
    final l$visitorCmpName = visitorCmpName;
    final l$visitorVehicleReg = visitorVehicleReg;
    final l$visitorPhoneNo = visitorPhoneNo;
    return Object.hashAll([
      l$punchDevice,
      l$badgeNo,
      l$punchType,
      l$punchTime,
      l$subjectName,
      l$subjectType,
      _$data.containsKey('visitorHost') ? l$visitorHost : const {},
      _$data.containsKey('zoneGuid') ? l$zoneGuid : const {},
      _$data.containsKey('visitorCmpName') ? l$visitorCmpName : const {},
      _$data.containsKey('visitorVehicleReg') ? l$visitorVehicleReg : const {},
      _$data.containsKey('visitorPhoneNo') ? l$visitorPhoneNo : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreatePunchEventInput<TRes> {
  factory CopyWith$Input$CreatePunchEventInput(
    Input$CreatePunchEventInput instance,
    TRes Function(Input$CreatePunchEventInput) then,
  ) = _CopyWithImpl$Input$CreatePunchEventInput;

  factory CopyWith$Input$CreatePunchEventInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreatePunchEventInput;

  TRes call({
    int? punchDevice,
    String? badgeNo,
    Enum$PunchType? punchType,
    DateTime? punchTime,
    String? subjectName,
    Enum$SubjectType? subjectType,
    String? visitorHost,
    String? zoneGuid,
    String? visitorCmpName,
    String? visitorVehicleReg,
    String? visitorPhoneNo,
  });
}

class _CopyWithImpl$Input$CreatePunchEventInput<TRes>
    implements CopyWith$Input$CreatePunchEventInput<TRes> {
  _CopyWithImpl$Input$CreatePunchEventInput(
    this._instance,
    this._then,
  );

  final Input$CreatePunchEventInput _instance;

  final TRes Function(Input$CreatePunchEventInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? punchDevice = _undefined,
    Object? badgeNo = _undefined,
    Object? punchType = _undefined,
    Object? punchTime = _undefined,
    Object? subjectName = _undefined,
    Object? subjectType = _undefined,
    Object? visitorHost = _undefined,
    Object? zoneGuid = _undefined,
    Object? visitorCmpName = _undefined,
    Object? visitorVehicleReg = _undefined,
    Object? visitorPhoneNo = _undefined,
  }) =>
      _then(Input$CreatePunchEventInput._({
        ..._instance._$data,
        if (punchDevice != _undefined && punchDevice != null)
          'punchDevice': (punchDevice as int),
        if (badgeNo != _undefined && badgeNo != null)
          'badgeNo': (badgeNo as String),
        if (punchType != _undefined && punchType != null)
          'punchType': (punchType as Enum$PunchType),
        if (punchTime != _undefined && punchTime != null)
          'punchTime': (punchTime as DateTime),
        if (subjectName != _undefined && subjectName != null)
          'subjectName': (subjectName as String),
        if (subjectType != _undefined && subjectType != null)
          'subjectType': (subjectType as Enum$SubjectType),
        if (visitorHost != _undefined) 'visitorHost': (visitorHost as String?),
        if (zoneGuid != _undefined) 'zoneGuid': (zoneGuid as String?),
        if (visitorCmpName != _undefined)
          'visitorCmpName': (visitorCmpName as String?),
        if (visitorVehicleReg != _undefined)
          'visitorVehicleReg': (visitorVehicleReg as String?),
        if (visitorPhoneNo != _undefined)
          'visitorPhoneNo': (visitorPhoneNo as String?),
      }));
}

class _CopyWithStubImpl$Input$CreatePunchEventInput<TRes>
    implements CopyWith$Input$CreatePunchEventInput<TRes> {
  _CopyWithStubImpl$Input$CreatePunchEventInput(this._res);

  TRes _res;

  call({
    int? punchDevice,
    String? badgeNo,
    Enum$PunchType? punchType,
    DateTime? punchTime,
    String? subjectName,
    Enum$SubjectType? subjectType,
    String? visitorHost,
    String? zoneGuid,
    String? visitorCmpName,
    String? visitorVehicleReg,
    String? visitorPhoneNo,
  }) =>
      _res;
}

class Input$PunchDeviceDataInput {
  factory Input$PunchDeviceDataInput({
    required int id,
    String? zone,
    required String yardCode,
    required String deviceId,
    required String clockDevice,
    required String adminEmail,
    required bool active,
    String? musterPoint,
    required List<Input$DeviceAreasInput> deviceAreas,
  }) =>
      Input$PunchDeviceDataInput._({
        r'id': id,
        if (zone != null) r'zone': zone,
        r'yardCode': yardCode,
        r'deviceId': deviceId,
        r'clockDevice': clockDevice,
        r'adminEmail': adminEmail,
        r'active': active,
        if (musterPoint != null) r'musterPoint': musterPoint,
        r'deviceAreas': deviceAreas,
      });

  Input$PunchDeviceDataInput._(this._$data);

  factory Input$PunchDeviceDataInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('zone')) {
      final l$zone = data['zone'];
      result$data['zone'] = (l$zone as String?);
    }
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    final l$deviceId = data['deviceId'];
    result$data['deviceId'] = (l$deviceId as String);
    final l$clockDevice = data['clockDevice'];
    result$data['clockDevice'] = (l$clockDevice as String);
    final l$adminEmail = data['adminEmail'];
    result$data['adminEmail'] = (l$adminEmail as String);
    final l$active = data['active'];
    result$data['active'] = (l$active as bool);
    if (data.containsKey('musterPoint')) {
      final l$musterPoint = data['musterPoint'];
      result$data['musterPoint'] = (l$musterPoint as String?);
    }
    final l$deviceAreas = data['deviceAreas'];
    result$data['deviceAreas'] = (l$deviceAreas as List<dynamic>)
        .map(
            (e) => Input$DeviceAreasInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Input$PunchDeviceDataInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  String? get zone => (_$data['zone'] as String?);

  String get yardCode => (_$data['yardCode'] as String);

  String get deviceId => (_$data['deviceId'] as String);

  String get clockDevice => (_$data['clockDevice'] as String);

  String get adminEmail => (_$data['adminEmail'] as String);

  bool get active => (_$data['active'] as bool);

  String? get musterPoint => (_$data['musterPoint'] as String?);

  List<Input$DeviceAreasInput> get deviceAreas =>
      (_$data['deviceAreas'] as List<Input$DeviceAreasInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('zone')) {
      final l$zone = zone;
      result$data['zone'] = l$zone;
    }
    final l$yardCode = yardCode;
    result$data['yardCode'] = l$yardCode;
    final l$deviceId = deviceId;
    result$data['deviceId'] = l$deviceId;
    final l$clockDevice = clockDevice;
    result$data['clockDevice'] = l$clockDevice;
    final l$adminEmail = adminEmail;
    result$data['adminEmail'] = l$adminEmail;
    final l$active = active;
    result$data['active'] = l$active;
    if (_$data.containsKey('musterPoint')) {
      final l$musterPoint = musterPoint;
      result$data['musterPoint'] = l$musterPoint;
    }
    final l$deviceAreas = deviceAreas;
    result$data['deviceAreas'] = l$deviceAreas.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Input$PunchDeviceDataInput<Input$PunchDeviceDataInput>
      get copyWith => CopyWith$Input$PunchDeviceDataInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PunchDeviceDataInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$zone = zone;
    final lOther$zone = other.zone;
    if (_$data.containsKey('zone') != other._$data.containsKey('zone')) {
      return false;
    }
    if (l$zone != lOther$zone) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$deviceId = deviceId;
    final lOther$deviceId = other.deviceId;
    if (l$deviceId != lOther$deviceId) {
      return false;
    }
    final l$clockDevice = clockDevice;
    final lOther$clockDevice = other.clockDevice;
    if (l$clockDevice != lOther$clockDevice) {
      return false;
    }
    final l$adminEmail = adminEmail;
    final lOther$adminEmail = other.adminEmail;
    if (l$adminEmail != lOther$adminEmail) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$musterPoint = musterPoint;
    final lOther$musterPoint = other.musterPoint;
    if (_$data.containsKey('musterPoint') !=
        other._$data.containsKey('musterPoint')) {
      return false;
    }
    if (l$musterPoint != lOther$musterPoint) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$zone = zone;
    final l$yardCode = yardCode;
    final l$deviceId = deviceId;
    final l$clockDevice = clockDevice;
    final l$adminEmail = adminEmail;
    final l$active = active;
    final l$musterPoint = musterPoint;
    final l$deviceAreas = deviceAreas;
    return Object.hashAll([
      l$id,
      _$data.containsKey('zone') ? l$zone : const {},
      l$yardCode,
      l$deviceId,
      l$clockDevice,
      l$adminEmail,
      l$active,
      _$data.containsKey('musterPoint') ? l$musterPoint : const {},
      Object.hashAll(l$deviceAreas.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$PunchDeviceDataInput<TRes> {
  factory CopyWith$Input$PunchDeviceDataInput(
    Input$PunchDeviceDataInput instance,
    TRes Function(Input$PunchDeviceDataInput) then,
  ) = _CopyWithImpl$Input$PunchDeviceDataInput;

  factory CopyWith$Input$PunchDeviceDataInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PunchDeviceDataInput;

  TRes call({
    int? id,
    String? zone,
    String? yardCode,
    String? deviceId,
    String? clockDevice,
    String? adminEmail,
    bool? active,
    String? musterPoint,
    List<Input$DeviceAreasInput>? deviceAreas,
  });
  TRes deviceAreas(
      Iterable<Input$DeviceAreasInput> Function(
              Iterable<CopyWith$Input$DeviceAreasInput<Input$DeviceAreasInput>>)
          _fn);
}

class _CopyWithImpl$Input$PunchDeviceDataInput<TRes>
    implements CopyWith$Input$PunchDeviceDataInput<TRes> {
  _CopyWithImpl$Input$PunchDeviceDataInput(
    this._instance,
    this._then,
  );

  final Input$PunchDeviceDataInput _instance;

  final TRes Function(Input$PunchDeviceDataInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? zone = _undefined,
    Object? yardCode = _undefined,
    Object? deviceId = _undefined,
    Object? clockDevice = _undefined,
    Object? adminEmail = _undefined,
    Object? active = _undefined,
    Object? musterPoint = _undefined,
    Object? deviceAreas = _undefined,
  }) =>
      _then(Input$PunchDeviceDataInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (zone != _undefined) 'zone': (zone as String?),
        if (yardCode != _undefined && yardCode != null)
          'yardCode': (yardCode as String),
        if (deviceId != _undefined && deviceId != null)
          'deviceId': (deviceId as String),
        if (clockDevice != _undefined && clockDevice != null)
          'clockDevice': (clockDevice as String),
        if (adminEmail != _undefined && adminEmail != null)
          'adminEmail': (adminEmail as String),
        if (active != _undefined && active != null) 'active': (active as bool),
        if (musterPoint != _undefined) 'musterPoint': (musterPoint as String?),
        if (deviceAreas != _undefined && deviceAreas != null)
          'deviceAreas': (deviceAreas as List<Input$DeviceAreasInput>),
      }));

  TRes deviceAreas(
          Iterable<Input$DeviceAreasInput> Function(
                  Iterable<
                      CopyWith$Input$DeviceAreasInput<Input$DeviceAreasInput>>)
              _fn) =>
      call(
          deviceAreas: _fn(
              _instance.deviceAreas.map((e) => CopyWith$Input$DeviceAreasInput(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Input$PunchDeviceDataInput<TRes>
    implements CopyWith$Input$PunchDeviceDataInput<TRes> {
  _CopyWithStubImpl$Input$PunchDeviceDataInput(this._res);

  TRes _res;

  call({
    int? id,
    String? zone,
    String? yardCode,
    String? deviceId,
    String? clockDevice,
    String? adminEmail,
    bool? active,
    String? musterPoint,
    List<Input$DeviceAreasInput>? deviceAreas,
  }) =>
      _res;

  deviceAreas(_fn) => _res;
}

class Input$FireRollCallLogsInput {
  factory Input$FireRollCallLogsInput({
    required int id,
    required String loggedBy,
    required DateTime loggedOn,
    required String punchData,
  }) =>
      Input$FireRollCallLogsInput._({
        r'id': id,
        r'loggedBy': loggedBy,
        r'loggedOn': loggedOn,
        r'punchData': punchData,
      });

  Input$FireRollCallLogsInput._(this._$data);

  factory Input$FireRollCallLogsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$loggedBy = data['loggedBy'];
    result$data['loggedBy'] = (l$loggedBy as String);
    final l$loggedOn = data['loggedOn'];
    result$data['loggedOn'] = DateTime.parse((l$loggedOn as String));
    final l$punchData = data['punchData'];
    result$data['punchData'] = (l$punchData as String);
    return Input$FireRollCallLogsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  String get loggedBy => (_$data['loggedBy'] as String);

  DateTime get loggedOn => (_$data['loggedOn'] as DateTime);

  String get punchData => (_$data['punchData'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$loggedBy = loggedBy;
    result$data['loggedBy'] = l$loggedBy;
    final l$loggedOn = loggedOn;
    result$data['loggedOn'] = l$loggedOn.toIso8601String();
    final l$punchData = punchData;
    result$data['punchData'] = l$punchData;
    return result$data;
  }

  CopyWith$Input$FireRollCallLogsInput<Input$FireRollCallLogsInput>
      get copyWith => CopyWith$Input$FireRollCallLogsInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FireRollCallLogsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$loggedBy = loggedBy;
    final lOther$loggedBy = other.loggedBy;
    if (l$loggedBy != lOther$loggedBy) {
      return false;
    }
    final l$loggedOn = loggedOn;
    final lOther$loggedOn = other.loggedOn;
    if (l$loggedOn != lOther$loggedOn) {
      return false;
    }
    final l$punchData = punchData;
    final lOther$punchData = other.punchData;
    if (l$punchData != lOther$punchData) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$loggedBy = loggedBy;
    final l$loggedOn = loggedOn;
    final l$punchData = punchData;
    return Object.hashAll([
      l$id,
      l$loggedBy,
      l$loggedOn,
      l$punchData,
    ]);
  }
}

abstract class CopyWith$Input$FireRollCallLogsInput<TRes> {
  factory CopyWith$Input$FireRollCallLogsInput(
    Input$FireRollCallLogsInput instance,
    TRes Function(Input$FireRollCallLogsInput) then,
  ) = _CopyWithImpl$Input$FireRollCallLogsInput;

  factory CopyWith$Input$FireRollCallLogsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FireRollCallLogsInput;

  TRes call({
    int? id,
    String? loggedBy,
    DateTime? loggedOn,
    String? punchData,
  });
}

class _CopyWithImpl$Input$FireRollCallLogsInput<TRes>
    implements CopyWith$Input$FireRollCallLogsInput<TRes> {
  _CopyWithImpl$Input$FireRollCallLogsInput(
    this._instance,
    this._then,
  );

  final Input$FireRollCallLogsInput _instance;

  final TRes Function(Input$FireRollCallLogsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? loggedBy = _undefined,
    Object? loggedOn = _undefined,
    Object? punchData = _undefined,
  }) =>
      _then(Input$FireRollCallLogsInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (loggedBy != _undefined && loggedBy != null)
          'loggedBy': (loggedBy as String),
        if (loggedOn != _undefined && loggedOn != null)
          'loggedOn': (loggedOn as DateTime),
        if (punchData != _undefined && punchData != null)
          'punchData': (punchData as String),
      }));
}

class _CopyWithStubImpl$Input$FireRollCallLogsInput<TRes>
    implements CopyWith$Input$FireRollCallLogsInput<TRes> {
  _CopyWithStubImpl$Input$FireRollCallLogsInput(this._res);

  TRes _res;

  call({
    int? id,
    String? loggedBy,
    DateTime? loggedOn,
    String? punchData,
  }) =>
      _res;
}

class Input$UpdateOrCreateMissingEmployeesInput {
  factory Input$UpdateOrCreateMissingEmployeesInput({
    int? id,
    required String subjectName,
    int? punchId,
    required String yardCode,
    required DateTime missingOnDate,
    required bool isMissing,
  }) =>
      Input$UpdateOrCreateMissingEmployeesInput._({
        if (id != null) r'id': id,
        r'subjectName': subjectName,
        if (punchId != null) r'punchId': punchId,
        r'yardCode': yardCode,
        r'missingOnDate': missingOnDate,
        r'isMissing': isMissing,
      });

  Input$UpdateOrCreateMissingEmployeesInput._(this._$data);

  factory Input$UpdateOrCreateMissingEmployeesInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    final l$subjectName = data['subjectName'];
    result$data['subjectName'] = (l$subjectName as String);
    if (data.containsKey('punchId')) {
      final l$punchId = data['punchId'];
      result$data['punchId'] = (l$punchId as int?);
    }
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    final l$missingOnDate = data['missingOnDate'];
    result$data['missingOnDate'] = DateTime.parse((l$missingOnDate as String));
    final l$isMissing = data['isMissing'];
    result$data['isMissing'] = (l$isMissing as bool);
    return Input$UpdateOrCreateMissingEmployeesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  String get subjectName => (_$data['subjectName'] as String);

  int? get punchId => (_$data['punchId'] as int?);

  String get yardCode => (_$data['yardCode'] as String);

  DateTime get missingOnDate => (_$data['missingOnDate'] as DateTime);

  bool get isMissing => (_$data['isMissing'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    final l$subjectName = subjectName;
    result$data['subjectName'] = l$subjectName;
    if (_$data.containsKey('punchId')) {
      final l$punchId = punchId;
      result$data['punchId'] = l$punchId;
    }
    final l$yardCode = yardCode;
    result$data['yardCode'] = l$yardCode;
    final l$missingOnDate = missingOnDate;
    result$data['missingOnDate'] = l$missingOnDate.toIso8601String();
    final l$isMissing = isMissing;
    result$data['isMissing'] = l$isMissing;
    return result$data;
  }

  CopyWith$Input$UpdateOrCreateMissingEmployeesInput<
          Input$UpdateOrCreateMissingEmployeesInput>
      get copyWith => CopyWith$Input$UpdateOrCreateMissingEmployeesInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateOrCreateMissingEmployeesInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$subjectName = subjectName;
    final lOther$subjectName = other.subjectName;
    if (l$subjectName != lOther$subjectName) {
      return false;
    }
    final l$punchId = punchId;
    final lOther$punchId = other.punchId;
    if (_$data.containsKey('punchId') != other._$data.containsKey('punchId')) {
      return false;
    }
    if (l$punchId != lOther$punchId) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$missingOnDate = missingOnDate;
    final lOther$missingOnDate = other.missingOnDate;
    if (l$missingOnDate != lOther$missingOnDate) {
      return false;
    }
    final l$isMissing = isMissing;
    final lOther$isMissing = other.isMissing;
    if (l$isMissing != lOther$isMissing) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$subjectName = subjectName;
    final l$punchId = punchId;
    final l$yardCode = yardCode;
    final l$missingOnDate = missingOnDate;
    final l$isMissing = isMissing;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      l$subjectName,
      _$data.containsKey('punchId') ? l$punchId : const {},
      l$yardCode,
      l$missingOnDate,
      l$isMissing,
    ]);
  }
}

abstract class CopyWith$Input$UpdateOrCreateMissingEmployeesInput<TRes> {
  factory CopyWith$Input$UpdateOrCreateMissingEmployeesInput(
    Input$UpdateOrCreateMissingEmployeesInput instance,
    TRes Function(Input$UpdateOrCreateMissingEmployeesInput) then,
  ) = _CopyWithImpl$Input$UpdateOrCreateMissingEmployeesInput;

  factory CopyWith$Input$UpdateOrCreateMissingEmployeesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateOrCreateMissingEmployeesInput;

  TRes call({
    int? id,
    String? subjectName,
    int? punchId,
    String? yardCode,
    DateTime? missingOnDate,
    bool? isMissing,
  });
}

class _CopyWithImpl$Input$UpdateOrCreateMissingEmployeesInput<TRes>
    implements CopyWith$Input$UpdateOrCreateMissingEmployeesInput<TRes> {
  _CopyWithImpl$Input$UpdateOrCreateMissingEmployeesInput(
    this._instance,
    this._then,
  );

  final Input$UpdateOrCreateMissingEmployeesInput _instance;

  final TRes Function(Input$UpdateOrCreateMissingEmployeesInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? subjectName = _undefined,
    Object? punchId = _undefined,
    Object? yardCode = _undefined,
    Object? missingOnDate = _undefined,
    Object? isMissing = _undefined,
  }) =>
      _then(Input$UpdateOrCreateMissingEmployeesInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (subjectName != _undefined && subjectName != null)
          'subjectName': (subjectName as String),
        if (punchId != _undefined) 'punchId': (punchId as int?),
        if (yardCode != _undefined && yardCode != null)
          'yardCode': (yardCode as String),
        if (missingOnDate != _undefined && missingOnDate != null)
          'missingOnDate': (missingOnDate as DateTime),
        if (isMissing != _undefined && isMissing != null)
          'isMissing': (isMissing as bool),
      }));
}

class _CopyWithStubImpl$Input$UpdateOrCreateMissingEmployeesInput<TRes>
    implements CopyWith$Input$UpdateOrCreateMissingEmployeesInput<TRes> {
  _CopyWithStubImpl$Input$UpdateOrCreateMissingEmployeesInput(this._res);

  TRes _res;

  call({
    int? id,
    String? subjectName,
    int? punchId,
    String? yardCode,
    DateTime? missingOnDate,
    bool? isMissing,
  }) =>
      _res;
}

class Input$VisitorAndTempCardsInput {
  factory Input$VisitorAndTempCardsInput({
    required int id,
    required String name,
    required String badgeNumber,
    required int type,
    String? tempBadge,
    String? visitorHost,
    required String yard,
    required DateTime createdOn,
    required bool isActive,
    required bool isRemoved,
    required int deviceId,
    String? visitorCmpName,
    String? visitorVehicleReg,
    String? visitorPhoneNo,
  }) =>
      Input$VisitorAndTempCardsInput._({
        r'id': id,
        r'name': name,
        r'badgeNumber': badgeNumber,
        r'type': type,
        if (tempBadge != null) r'tempBadge': tempBadge,
        if (visitorHost != null) r'visitorHost': visitorHost,
        r'yard': yard,
        r'createdOn': createdOn,
        r'isActive': isActive,
        r'isRemoved': isRemoved,
        r'deviceId': deviceId,
        if (visitorCmpName != null) r'visitorCmpName': visitorCmpName,
        if (visitorVehicleReg != null) r'visitorVehicleReg': visitorVehicleReg,
        if (visitorPhoneNo != null) r'visitorPhoneNo': visitorPhoneNo,
      });

  Input$VisitorAndTempCardsInput._(this._$data);

  factory Input$VisitorAndTempCardsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$badgeNumber = data['badgeNumber'];
    result$data['badgeNumber'] = (l$badgeNumber as String);
    final l$type = data['type'];
    result$data['type'] = (l$type as int);
    if (data.containsKey('tempBadge')) {
      final l$tempBadge = data['tempBadge'];
      result$data['tempBadge'] = (l$tempBadge as String?);
    }
    if (data.containsKey('visitorHost')) {
      final l$visitorHost = data['visitorHost'];
      result$data['visitorHost'] = (l$visitorHost as String?);
    }
    final l$yard = data['yard'];
    result$data['yard'] = (l$yard as String);
    final l$createdOn = data['createdOn'];
    result$data['createdOn'] = DateTime.parse((l$createdOn as String));
    final l$isActive = data['isActive'];
    result$data['isActive'] = (l$isActive as bool);
    final l$isRemoved = data['isRemoved'];
    result$data['isRemoved'] = (l$isRemoved as bool);
    final l$deviceId = data['deviceId'];
    result$data['deviceId'] = (l$deviceId as int);
    if (data.containsKey('visitorCmpName')) {
      final l$visitorCmpName = data['visitorCmpName'];
      result$data['visitorCmpName'] = (l$visitorCmpName as String?);
    }
    if (data.containsKey('visitorVehicleReg')) {
      final l$visitorVehicleReg = data['visitorVehicleReg'];
      result$data['visitorVehicleReg'] = (l$visitorVehicleReg as String?);
    }
    if (data.containsKey('visitorPhoneNo')) {
      final l$visitorPhoneNo = data['visitorPhoneNo'];
      result$data['visitorPhoneNo'] = (l$visitorPhoneNo as String?);
    }
    return Input$VisitorAndTempCardsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  String get name => (_$data['name'] as String);

  String get badgeNumber => (_$data['badgeNumber'] as String);

  int get type => (_$data['type'] as int);

  String? get tempBadge => (_$data['tempBadge'] as String?);

  String? get visitorHost => (_$data['visitorHost'] as String?);

  String get yard => (_$data['yard'] as String);

  DateTime get createdOn => (_$data['createdOn'] as DateTime);

  bool get isActive => (_$data['isActive'] as bool);

  bool get isRemoved => (_$data['isRemoved'] as bool);

  int get deviceId => (_$data['deviceId'] as int);

  String? get visitorCmpName => (_$data['visitorCmpName'] as String?);

  String? get visitorVehicleReg => (_$data['visitorVehicleReg'] as String?);

  String? get visitorPhoneNo => (_$data['visitorPhoneNo'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$name = name;
    result$data['name'] = l$name;
    final l$badgeNumber = badgeNumber;
    result$data['badgeNumber'] = l$badgeNumber;
    final l$type = type;
    result$data['type'] = l$type;
    if (_$data.containsKey('tempBadge')) {
      final l$tempBadge = tempBadge;
      result$data['tempBadge'] = l$tempBadge;
    }
    if (_$data.containsKey('visitorHost')) {
      final l$visitorHost = visitorHost;
      result$data['visitorHost'] = l$visitorHost;
    }
    final l$yard = yard;
    result$data['yard'] = l$yard;
    final l$createdOn = createdOn;
    result$data['createdOn'] = l$createdOn.toIso8601String();
    final l$isActive = isActive;
    result$data['isActive'] = l$isActive;
    final l$isRemoved = isRemoved;
    result$data['isRemoved'] = l$isRemoved;
    final l$deviceId = deviceId;
    result$data['deviceId'] = l$deviceId;
    if (_$data.containsKey('visitorCmpName')) {
      final l$visitorCmpName = visitorCmpName;
      result$data['visitorCmpName'] = l$visitorCmpName;
    }
    if (_$data.containsKey('visitorVehicleReg')) {
      final l$visitorVehicleReg = visitorVehicleReg;
      result$data['visitorVehicleReg'] = l$visitorVehicleReg;
    }
    if (_$data.containsKey('visitorPhoneNo')) {
      final l$visitorPhoneNo = visitorPhoneNo;
      result$data['visitorPhoneNo'] = l$visitorPhoneNo;
    }
    return result$data;
  }

  CopyWith$Input$VisitorAndTempCardsInput<Input$VisitorAndTempCardsInput>
      get copyWith => CopyWith$Input$VisitorAndTempCardsInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$VisitorAndTempCardsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$badgeNumber = badgeNumber;
    final lOther$badgeNumber = other.badgeNumber;
    if (l$badgeNumber != lOther$badgeNumber) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$tempBadge = tempBadge;
    final lOther$tempBadge = other.tempBadge;
    if (_$data.containsKey('tempBadge') !=
        other._$data.containsKey('tempBadge')) {
      return false;
    }
    if (l$tempBadge != lOther$tempBadge) {
      return false;
    }
    final l$visitorHost = visitorHost;
    final lOther$visitorHost = other.visitorHost;
    if (_$data.containsKey('visitorHost') !=
        other._$data.containsKey('visitorHost')) {
      return false;
    }
    if (l$visitorHost != lOther$visitorHost) {
      return false;
    }
    final l$yard = yard;
    final lOther$yard = other.yard;
    if (l$yard != lOther$yard) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$isRemoved = isRemoved;
    final lOther$isRemoved = other.isRemoved;
    if (l$isRemoved != lOther$isRemoved) {
      return false;
    }
    final l$deviceId = deviceId;
    final lOther$deviceId = other.deviceId;
    if (l$deviceId != lOther$deviceId) {
      return false;
    }
    final l$visitorCmpName = visitorCmpName;
    final lOther$visitorCmpName = other.visitorCmpName;
    if (_$data.containsKey('visitorCmpName') !=
        other._$data.containsKey('visitorCmpName')) {
      return false;
    }
    if (l$visitorCmpName != lOther$visitorCmpName) {
      return false;
    }
    final l$visitorVehicleReg = visitorVehicleReg;
    final lOther$visitorVehicleReg = other.visitorVehicleReg;
    if (_$data.containsKey('visitorVehicleReg') !=
        other._$data.containsKey('visitorVehicleReg')) {
      return false;
    }
    if (l$visitorVehicleReg != lOther$visitorVehicleReg) {
      return false;
    }
    final l$visitorPhoneNo = visitorPhoneNo;
    final lOther$visitorPhoneNo = other.visitorPhoneNo;
    if (_$data.containsKey('visitorPhoneNo') !=
        other._$data.containsKey('visitorPhoneNo')) {
      return false;
    }
    if (l$visitorPhoneNo != lOther$visitorPhoneNo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$badgeNumber = badgeNumber;
    final l$type = type;
    final l$tempBadge = tempBadge;
    final l$visitorHost = visitorHost;
    final l$yard = yard;
    final l$createdOn = createdOn;
    final l$isActive = isActive;
    final l$isRemoved = isRemoved;
    final l$deviceId = deviceId;
    final l$visitorCmpName = visitorCmpName;
    final l$visitorVehicleReg = visitorVehicleReg;
    final l$visitorPhoneNo = visitorPhoneNo;
    return Object.hashAll([
      l$id,
      l$name,
      l$badgeNumber,
      l$type,
      _$data.containsKey('tempBadge') ? l$tempBadge : const {},
      _$data.containsKey('visitorHost') ? l$visitorHost : const {},
      l$yard,
      l$createdOn,
      l$isActive,
      l$isRemoved,
      l$deviceId,
      _$data.containsKey('visitorCmpName') ? l$visitorCmpName : const {},
      _$data.containsKey('visitorVehicleReg') ? l$visitorVehicleReg : const {},
      _$data.containsKey('visitorPhoneNo') ? l$visitorPhoneNo : const {},
    ]);
  }
}

abstract class CopyWith$Input$VisitorAndTempCardsInput<TRes> {
  factory CopyWith$Input$VisitorAndTempCardsInput(
    Input$VisitorAndTempCardsInput instance,
    TRes Function(Input$VisitorAndTempCardsInput) then,
  ) = _CopyWithImpl$Input$VisitorAndTempCardsInput;

  factory CopyWith$Input$VisitorAndTempCardsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$VisitorAndTempCardsInput;

  TRes call({
    int? id,
    String? name,
    String? badgeNumber,
    int? type,
    String? tempBadge,
    String? visitorHost,
    String? yard,
    DateTime? createdOn,
    bool? isActive,
    bool? isRemoved,
    int? deviceId,
    String? visitorCmpName,
    String? visitorVehicleReg,
    String? visitorPhoneNo,
  });
}

class _CopyWithImpl$Input$VisitorAndTempCardsInput<TRes>
    implements CopyWith$Input$VisitorAndTempCardsInput<TRes> {
  _CopyWithImpl$Input$VisitorAndTempCardsInput(
    this._instance,
    this._then,
  );

  final Input$VisitorAndTempCardsInput _instance;

  final TRes Function(Input$VisitorAndTempCardsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? badgeNumber = _undefined,
    Object? type = _undefined,
    Object? tempBadge = _undefined,
    Object? visitorHost = _undefined,
    Object? yard = _undefined,
    Object? createdOn = _undefined,
    Object? isActive = _undefined,
    Object? isRemoved = _undefined,
    Object? deviceId = _undefined,
    Object? visitorCmpName = _undefined,
    Object? visitorVehicleReg = _undefined,
    Object? visitorPhoneNo = _undefined,
  }) =>
      _then(Input$VisitorAndTempCardsInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (name != _undefined && name != null) 'name': (name as String),
        if (badgeNumber != _undefined && badgeNumber != null)
          'badgeNumber': (badgeNumber as String),
        if (type != _undefined && type != null) 'type': (type as int),
        if (tempBadge != _undefined) 'tempBadge': (tempBadge as String?),
        if (visitorHost != _undefined) 'visitorHost': (visitorHost as String?),
        if (yard != _undefined && yard != null) 'yard': (yard as String),
        if (createdOn != _undefined && createdOn != null)
          'createdOn': (createdOn as DateTime),
        if (isActive != _undefined && isActive != null)
          'isActive': (isActive as bool),
        if (isRemoved != _undefined && isRemoved != null)
          'isRemoved': (isRemoved as bool),
        if (deviceId != _undefined && deviceId != null)
          'deviceId': (deviceId as int),
        if (visitorCmpName != _undefined)
          'visitorCmpName': (visitorCmpName as String?),
        if (visitorVehicleReg != _undefined)
          'visitorVehicleReg': (visitorVehicleReg as String?),
        if (visitorPhoneNo != _undefined)
          'visitorPhoneNo': (visitorPhoneNo as String?),
      }));
}

class _CopyWithStubImpl$Input$VisitorAndTempCardsInput<TRes>
    implements CopyWith$Input$VisitorAndTempCardsInput<TRes> {
  _CopyWithStubImpl$Input$VisitorAndTempCardsInput(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? badgeNumber,
    int? type,
    String? tempBadge,
    String? visitorHost,
    String? yard,
    DateTime? createdOn,
    bool? isActive,
    bool? isRemoved,
    int? deviceId,
    String? visitorCmpName,
    String? visitorVehicleReg,
    String? visitorPhoneNo,
  }) =>
      _res;
}

class Input$EmployeeBadgeRequestInput {
  factory Input$EmployeeBadgeRequestInput({
    required Input$BadgeInput badge,
    required Input$EmployeeUpdateRequestInput employee,
    required bool isDeleted,
  }) =>
      Input$EmployeeBadgeRequestInput._({
        r'badge': badge,
        r'employee': employee,
        r'isDeleted': isDeleted,
      });

  Input$EmployeeBadgeRequestInput._(this._$data);

  factory Input$EmployeeBadgeRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$badge = data['badge'];
    result$data['badge'] =
        Input$BadgeInput.fromJson((l$badge as Map<String, dynamic>));
    final l$employee = data['employee'];
    result$data['employee'] = Input$EmployeeUpdateRequestInput.fromJson(
        (l$employee as Map<String, dynamic>));
    final l$isDeleted = data['isDeleted'];
    result$data['isDeleted'] = (l$isDeleted as bool);
    return Input$EmployeeBadgeRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BadgeInput get badge => (_$data['badge'] as Input$BadgeInput);

  Input$EmployeeUpdateRequestInput get employee =>
      (_$data['employee'] as Input$EmployeeUpdateRequestInput);

  bool get isDeleted => (_$data['isDeleted'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$badge = badge;
    result$data['badge'] = l$badge.toJson();
    final l$employee = employee;
    result$data['employee'] = l$employee.toJson();
    final l$isDeleted = isDeleted;
    result$data['isDeleted'] = l$isDeleted;
    return result$data;
  }

  CopyWith$Input$EmployeeBadgeRequestInput<Input$EmployeeBadgeRequestInput>
      get copyWith => CopyWith$Input$EmployeeBadgeRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$EmployeeBadgeRequestInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$badge = badge;
    final lOther$badge = other.badge;
    if (l$badge != lOther$badge) {
      return false;
    }
    final l$employee = employee;
    final lOther$employee = other.employee;
    if (l$employee != lOther$employee) {
      return false;
    }
    final l$isDeleted = isDeleted;
    final lOther$isDeleted = other.isDeleted;
    if (l$isDeleted != lOther$isDeleted) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$badge = badge;
    final l$employee = employee;
    final l$isDeleted = isDeleted;
    return Object.hashAll([
      l$badge,
      l$employee,
      l$isDeleted,
    ]);
  }
}

abstract class CopyWith$Input$EmployeeBadgeRequestInput<TRes> {
  factory CopyWith$Input$EmployeeBadgeRequestInput(
    Input$EmployeeBadgeRequestInput instance,
    TRes Function(Input$EmployeeBadgeRequestInput) then,
  ) = _CopyWithImpl$Input$EmployeeBadgeRequestInput;

  factory CopyWith$Input$EmployeeBadgeRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$EmployeeBadgeRequestInput;

  TRes call({
    Input$BadgeInput? badge,
    Input$EmployeeUpdateRequestInput? employee,
    bool? isDeleted,
  });
  CopyWith$Input$BadgeInput<TRes> get badge;
  CopyWith$Input$EmployeeUpdateRequestInput<TRes> get employee;
}

class _CopyWithImpl$Input$EmployeeBadgeRequestInput<TRes>
    implements CopyWith$Input$EmployeeBadgeRequestInput<TRes> {
  _CopyWithImpl$Input$EmployeeBadgeRequestInput(
    this._instance,
    this._then,
  );

  final Input$EmployeeBadgeRequestInput _instance;

  final TRes Function(Input$EmployeeBadgeRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? badge = _undefined,
    Object? employee = _undefined,
    Object? isDeleted = _undefined,
  }) =>
      _then(Input$EmployeeBadgeRequestInput._({
        ..._instance._$data,
        if (badge != _undefined && badge != null)
          'badge': (badge as Input$BadgeInput),
        if (employee != _undefined && employee != null)
          'employee': (employee as Input$EmployeeUpdateRequestInput),
        if (isDeleted != _undefined && isDeleted != null)
          'isDeleted': (isDeleted as bool),
      }));

  CopyWith$Input$BadgeInput<TRes> get badge {
    final local$badge = _instance.badge;
    return CopyWith$Input$BadgeInput(local$badge, (e) => call(badge: e));
  }

  CopyWith$Input$EmployeeUpdateRequestInput<TRes> get employee {
    final local$employee = _instance.employee;
    return CopyWith$Input$EmployeeUpdateRequestInput(
        local$employee, (e) => call(employee: e));
  }
}

class _CopyWithStubImpl$Input$EmployeeBadgeRequestInput<TRes>
    implements CopyWith$Input$EmployeeBadgeRequestInput<TRes> {
  _CopyWithStubImpl$Input$EmployeeBadgeRequestInput(this._res);

  TRes _res;

  call({
    Input$BadgeInput? badge,
    Input$EmployeeUpdateRequestInput? employee,
    bool? isDeleted,
  }) =>
      _res;

  CopyWith$Input$BadgeInput<TRes> get badge =>
      CopyWith$Input$BadgeInput.stub(_res);

  CopyWith$Input$EmployeeUpdateRequestInput<TRes> get employee =>
      CopyWith$Input$EmployeeUpdateRequestInput.stub(_res);
}

class Input$EmployeeDefaultZoneRequestInput {
  factory Input$EmployeeDefaultZoneRequestInput({
    required Input$EmployeeUpdateRequestInput employee,
    required String defaultZoneGuid,
  }) =>
      Input$EmployeeDefaultZoneRequestInput._({
        r'employee': employee,
        r'defaultZoneGuid': defaultZoneGuid,
      });

  Input$EmployeeDefaultZoneRequestInput._(this._$data);

  factory Input$EmployeeDefaultZoneRequestInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$employee = data['employee'];
    result$data['employee'] = Input$EmployeeUpdateRequestInput.fromJson(
        (l$employee as Map<String, dynamic>));
    final l$defaultZoneGuid = data['defaultZoneGuid'];
    result$data['defaultZoneGuid'] = (l$defaultZoneGuid as String);
    return Input$EmployeeDefaultZoneRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$EmployeeUpdateRequestInput get employee =>
      (_$data['employee'] as Input$EmployeeUpdateRequestInput);

  String get defaultZoneGuid => (_$data['defaultZoneGuid'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$employee = employee;
    result$data['employee'] = l$employee.toJson();
    final l$defaultZoneGuid = defaultZoneGuid;
    result$data['defaultZoneGuid'] = l$defaultZoneGuid;
    return result$data;
  }

  CopyWith$Input$EmployeeDefaultZoneRequestInput<
          Input$EmployeeDefaultZoneRequestInput>
      get copyWith => CopyWith$Input$EmployeeDefaultZoneRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$EmployeeDefaultZoneRequestInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$employee = employee;
    final lOther$employee = other.employee;
    if (l$employee != lOther$employee) {
      return false;
    }
    final l$defaultZoneGuid = defaultZoneGuid;
    final lOther$defaultZoneGuid = other.defaultZoneGuid;
    if (l$defaultZoneGuid != lOther$defaultZoneGuid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$employee = employee;
    final l$defaultZoneGuid = defaultZoneGuid;
    return Object.hashAll([
      l$employee,
      l$defaultZoneGuid,
    ]);
  }
}

abstract class CopyWith$Input$EmployeeDefaultZoneRequestInput<TRes> {
  factory CopyWith$Input$EmployeeDefaultZoneRequestInput(
    Input$EmployeeDefaultZoneRequestInput instance,
    TRes Function(Input$EmployeeDefaultZoneRequestInput) then,
  ) = _CopyWithImpl$Input$EmployeeDefaultZoneRequestInput;

  factory CopyWith$Input$EmployeeDefaultZoneRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$EmployeeDefaultZoneRequestInput;

  TRes call({
    Input$EmployeeUpdateRequestInput? employee,
    String? defaultZoneGuid,
  });
  CopyWith$Input$EmployeeUpdateRequestInput<TRes> get employee;
}

class _CopyWithImpl$Input$EmployeeDefaultZoneRequestInput<TRes>
    implements CopyWith$Input$EmployeeDefaultZoneRequestInput<TRes> {
  _CopyWithImpl$Input$EmployeeDefaultZoneRequestInput(
    this._instance,
    this._then,
  );

  final Input$EmployeeDefaultZoneRequestInput _instance;

  final TRes Function(Input$EmployeeDefaultZoneRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? employee = _undefined,
    Object? defaultZoneGuid = _undefined,
  }) =>
      _then(Input$EmployeeDefaultZoneRequestInput._({
        ..._instance._$data,
        if (employee != _undefined && employee != null)
          'employee': (employee as Input$EmployeeUpdateRequestInput),
        if (defaultZoneGuid != _undefined && defaultZoneGuid != null)
          'defaultZoneGuid': (defaultZoneGuid as String),
      }));

  CopyWith$Input$EmployeeUpdateRequestInput<TRes> get employee {
    final local$employee = _instance.employee;
    return CopyWith$Input$EmployeeUpdateRequestInput(
        local$employee, (e) => call(employee: e));
  }
}

class _CopyWithStubImpl$Input$EmployeeDefaultZoneRequestInput<TRes>
    implements CopyWith$Input$EmployeeDefaultZoneRequestInput<TRes> {
  _CopyWithStubImpl$Input$EmployeeDefaultZoneRequestInput(this._res);

  TRes _res;

  call({
    Input$EmployeeUpdateRequestInput? employee,
    String? defaultZoneGuid,
  }) =>
      _res;

  CopyWith$Input$EmployeeUpdateRequestInput<TRes> get employee =>
      CopyWith$Input$EmployeeUpdateRequestInput.stub(_res);
}

class Input$EmployeeUpdateRequestInput {
  factory Input$EmployeeUpdateRequestInput({
    required String name,
    required String email,
    required String badgeNumber,
    required String adUserId,
    required DateTime createdOn,
    required String createdBy,
    required int deviceId,
    String? updatedZoneGuid,
  }) =>
      Input$EmployeeUpdateRequestInput._({
        r'name': name,
        r'email': email,
        r'badgeNumber': badgeNumber,
        r'adUserId': adUserId,
        r'createdOn': createdOn,
        r'createdBy': createdBy,
        r'deviceId': deviceId,
        if (updatedZoneGuid != null) r'updatedZoneGuid': updatedZoneGuid,
      });

  Input$EmployeeUpdateRequestInput._(this._$data);

  factory Input$EmployeeUpdateRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$badgeNumber = data['badgeNumber'];
    result$data['badgeNumber'] = (l$badgeNumber as String);
    final l$adUserId = data['adUserId'];
    result$data['adUserId'] = (l$adUserId as String);
    final l$createdOn = data['createdOn'];
    result$data['createdOn'] = DateTime.parse((l$createdOn as String));
    final l$createdBy = data['createdBy'];
    result$data['createdBy'] = (l$createdBy as String);
    final l$deviceId = data['deviceId'];
    result$data['deviceId'] = (l$deviceId as int);
    if (data.containsKey('updatedZoneGuid')) {
      final l$updatedZoneGuid = data['updatedZoneGuid'];
      result$data['updatedZoneGuid'] = (l$updatedZoneGuid as String?);
    }
    return Input$EmployeeUpdateRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get email => (_$data['email'] as String);

  String get badgeNumber => (_$data['badgeNumber'] as String);

  String get adUserId => (_$data['adUserId'] as String);

  DateTime get createdOn => (_$data['createdOn'] as DateTime);

  String get createdBy => (_$data['createdBy'] as String);

  int get deviceId => (_$data['deviceId'] as int);

  String? get updatedZoneGuid => (_$data['updatedZoneGuid'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$email = email;
    result$data['email'] = l$email;
    final l$badgeNumber = badgeNumber;
    result$data['badgeNumber'] = l$badgeNumber;
    final l$adUserId = adUserId;
    result$data['adUserId'] = l$adUserId;
    final l$createdOn = createdOn;
    result$data['createdOn'] = l$createdOn.toIso8601String();
    final l$createdBy = createdBy;
    result$data['createdBy'] = l$createdBy;
    final l$deviceId = deviceId;
    result$data['deviceId'] = l$deviceId;
    if (_$data.containsKey('updatedZoneGuid')) {
      final l$updatedZoneGuid = updatedZoneGuid;
      result$data['updatedZoneGuid'] = l$updatedZoneGuid;
    }
    return result$data;
  }

  CopyWith$Input$EmployeeUpdateRequestInput<Input$EmployeeUpdateRequestInput>
      get copyWith => CopyWith$Input$EmployeeUpdateRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$EmployeeUpdateRequestInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$badgeNumber = badgeNumber;
    final lOther$badgeNumber = other.badgeNumber;
    if (l$badgeNumber != lOther$badgeNumber) {
      return false;
    }
    final l$adUserId = adUserId;
    final lOther$adUserId = other.adUserId;
    if (l$adUserId != lOther$adUserId) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$deviceId = deviceId;
    final lOther$deviceId = other.deviceId;
    if (l$deviceId != lOther$deviceId) {
      return false;
    }
    final l$updatedZoneGuid = updatedZoneGuid;
    final lOther$updatedZoneGuid = other.updatedZoneGuid;
    if (_$data.containsKey('updatedZoneGuid') !=
        other._$data.containsKey('updatedZoneGuid')) {
      return false;
    }
    if (l$updatedZoneGuid != lOther$updatedZoneGuid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$badgeNumber = badgeNumber;
    final l$adUserId = adUserId;
    final l$createdOn = createdOn;
    final l$createdBy = createdBy;
    final l$deviceId = deviceId;
    final l$updatedZoneGuid = updatedZoneGuid;
    return Object.hashAll([
      l$name,
      l$email,
      l$badgeNumber,
      l$adUserId,
      l$createdOn,
      l$createdBy,
      l$deviceId,
      _$data.containsKey('updatedZoneGuid') ? l$updatedZoneGuid : const {},
    ]);
  }
}

abstract class CopyWith$Input$EmployeeUpdateRequestInput<TRes> {
  factory CopyWith$Input$EmployeeUpdateRequestInput(
    Input$EmployeeUpdateRequestInput instance,
    TRes Function(Input$EmployeeUpdateRequestInput) then,
  ) = _CopyWithImpl$Input$EmployeeUpdateRequestInput;

  factory CopyWith$Input$EmployeeUpdateRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$EmployeeUpdateRequestInput;

  TRes call({
    String? name,
    String? email,
    String? badgeNumber,
    String? adUserId,
    DateTime? createdOn,
    String? createdBy,
    int? deviceId,
    String? updatedZoneGuid,
  });
}

class _CopyWithImpl$Input$EmployeeUpdateRequestInput<TRes>
    implements CopyWith$Input$EmployeeUpdateRequestInput<TRes> {
  _CopyWithImpl$Input$EmployeeUpdateRequestInput(
    this._instance,
    this._then,
  );

  final Input$EmployeeUpdateRequestInput _instance;

  final TRes Function(Input$EmployeeUpdateRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? badgeNumber = _undefined,
    Object? adUserId = _undefined,
    Object? createdOn = _undefined,
    Object? createdBy = _undefined,
    Object? deviceId = _undefined,
    Object? updatedZoneGuid = _undefined,
  }) =>
      _then(Input$EmployeeUpdateRequestInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (email != _undefined && email != null) 'email': (email as String),
        if (badgeNumber != _undefined && badgeNumber != null)
          'badgeNumber': (badgeNumber as String),
        if (adUserId != _undefined && adUserId != null)
          'adUserId': (adUserId as String),
        if (createdOn != _undefined && createdOn != null)
          'createdOn': (createdOn as DateTime),
        if (createdBy != _undefined && createdBy != null)
          'createdBy': (createdBy as String),
        if (deviceId != _undefined && deviceId != null)
          'deviceId': (deviceId as int),
        if (updatedZoneGuid != _undefined)
          'updatedZoneGuid': (updatedZoneGuid as String?),
      }));
}

class _CopyWithStubImpl$Input$EmployeeUpdateRequestInput<TRes>
    implements CopyWith$Input$EmployeeUpdateRequestInput<TRes> {
  _CopyWithStubImpl$Input$EmployeeUpdateRequestInput(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    String? badgeNumber,
    String? adUserId,
    DateTime? createdOn,
    String? createdBy,
    int? deviceId,
    String? updatedZoneGuid,
  }) =>
      _res;
}

class Input$BadgeInput {
  factory Input$BadgeInput({
    required String badgeNumber,
    required DateTime effectiveStart,
    required DateTime effectiveEnd,
    required DateTime lastModifiedTimestamp,
  }) =>
      Input$BadgeInput._({
        r'badgeNumber': badgeNumber,
        r'effectiveStart': effectiveStart,
        r'effectiveEnd': effectiveEnd,
        r'lastModifiedTimestamp': lastModifiedTimestamp,
      });

  Input$BadgeInput._(this._$data);

  factory Input$BadgeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$badgeNumber = data['badgeNumber'];
    result$data['badgeNumber'] = (l$badgeNumber as String);
    final l$effectiveStart = data['effectiveStart'];
    result$data['effectiveStart'] =
        DateTime.parse((l$effectiveStart as String));
    final l$effectiveEnd = data['effectiveEnd'];
    result$data['effectiveEnd'] = DateTime.parse((l$effectiveEnd as String));
    final l$lastModifiedTimestamp = data['lastModifiedTimestamp'];
    result$data['lastModifiedTimestamp'] =
        DateTime.parse((l$lastModifiedTimestamp as String));
    return Input$BadgeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get badgeNumber => (_$data['badgeNumber'] as String);

  DateTime get effectiveStart => (_$data['effectiveStart'] as DateTime);

  DateTime get effectiveEnd => (_$data['effectiveEnd'] as DateTime);

  DateTime get lastModifiedTimestamp =>
      (_$data['lastModifiedTimestamp'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$badgeNumber = badgeNumber;
    result$data['badgeNumber'] = l$badgeNumber;
    final l$effectiveStart = effectiveStart;
    result$data['effectiveStart'] = l$effectiveStart.toIso8601String();
    final l$effectiveEnd = effectiveEnd;
    result$data['effectiveEnd'] = l$effectiveEnd.toIso8601String();
    final l$lastModifiedTimestamp = lastModifiedTimestamp;
    result$data['lastModifiedTimestamp'] =
        l$lastModifiedTimestamp.toIso8601String();
    return result$data;
  }

  CopyWith$Input$BadgeInput<Input$BadgeInput> get copyWith =>
      CopyWith$Input$BadgeInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$BadgeInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$badgeNumber = badgeNumber;
    final lOther$badgeNumber = other.badgeNumber;
    if (l$badgeNumber != lOther$badgeNumber) {
      return false;
    }
    final l$effectiveStart = effectiveStart;
    final lOther$effectiveStart = other.effectiveStart;
    if (l$effectiveStart != lOther$effectiveStart) {
      return false;
    }
    final l$effectiveEnd = effectiveEnd;
    final lOther$effectiveEnd = other.effectiveEnd;
    if (l$effectiveEnd != lOther$effectiveEnd) {
      return false;
    }
    final l$lastModifiedTimestamp = lastModifiedTimestamp;
    final lOther$lastModifiedTimestamp = other.lastModifiedTimestamp;
    if (l$lastModifiedTimestamp != lOther$lastModifiedTimestamp) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$badgeNumber = badgeNumber;
    final l$effectiveStart = effectiveStart;
    final l$effectiveEnd = effectiveEnd;
    final l$lastModifiedTimestamp = lastModifiedTimestamp;
    return Object.hashAll([
      l$badgeNumber,
      l$effectiveStart,
      l$effectiveEnd,
      l$lastModifiedTimestamp,
    ]);
  }
}

abstract class CopyWith$Input$BadgeInput<TRes> {
  factory CopyWith$Input$BadgeInput(
    Input$BadgeInput instance,
    TRes Function(Input$BadgeInput) then,
  ) = _CopyWithImpl$Input$BadgeInput;

  factory CopyWith$Input$BadgeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BadgeInput;

  TRes call({
    String? badgeNumber,
    DateTime? effectiveStart,
    DateTime? effectiveEnd,
    DateTime? lastModifiedTimestamp,
  });
}

class _CopyWithImpl$Input$BadgeInput<TRes>
    implements CopyWith$Input$BadgeInput<TRes> {
  _CopyWithImpl$Input$BadgeInput(
    this._instance,
    this._then,
  );

  final Input$BadgeInput _instance;

  final TRes Function(Input$BadgeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? badgeNumber = _undefined,
    Object? effectiveStart = _undefined,
    Object? effectiveEnd = _undefined,
    Object? lastModifiedTimestamp = _undefined,
  }) =>
      _then(Input$BadgeInput._({
        ..._instance._$data,
        if (badgeNumber != _undefined && badgeNumber != null)
          'badgeNumber': (badgeNumber as String),
        if (effectiveStart != _undefined && effectiveStart != null)
          'effectiveStart': (effectiveStart as DateTime),
        if (effectiveEnd != _undefined && effectiveEnd != null)
          'effectiveEnd': (effectiveEnd as DateTime),
        if (lastModifiedTimestamp != _undefined &&
            lastModifiedTimestamp != null)
          'lastModifiedTimestamp': (lastModifiedTimestamp as DateTime),
      }));
}

class _CopyWithStubImpl$Input$BadgeInput<TRes>
    implements CopyWith$Input$BadgeInput<TRes> {
  _CopyWithStubImpl$Input$BadgeInput(this._res);

  TRes _res;

  call({
    String? badgeNumber,
    DateTime? effectiveStart,
    DateTime? effectiveEnd,
    DateTime? lastModifiedTimestamp,
  }) =>
      _res;
}

class Input$DeviceAreasInput {
  factory Input$DeviceAreasInput({
    required String areaGuid,
    required String areaName,
    required bool active,
    required List<Input$AreaZonesInput> areaZones,
  }) =>
      Input$DeviceAreasInput._({
        r'areaGuid': areaGuid,
        r'areaName': areaName,
        r'active': active,
        r'areaZones': areaZones,
      });

  Input$DeviceAreasInput._(this._$data);

  factory Input$DeviceAreasInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$areaGuid = data['areaGuid'];
    result$data['areaGuid'] = (l$areaGuid as String);
    final l$areaName = data['areaName'];
    result$data['areaName'] = (l$areaName as String);
    final l$active = data['active'];
    result$data['active'] = (l$active as bool);
    final l$areaZones = data['areaZones'];
    result$data['areaZones'] = (l$areaZones as List<dynamic>)
        .map((e) => Input$AreaZonesInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Input$DeviceAreasInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get areaGuid => (_$data['areaGuid'] as String);

  String get areaName => (_$data['areaName'] as String);

  bool get active => (_$data['active'] as bool);

  List<Input$AreaZonesInput> get areaZones =>
      (_$data['areaZones'] as List<Input$AreaZonesInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$areaGuid = areaGuid;
    result$data['areaGuid'] = l$areaGuid;
    final l$areaName = areaName;
    result$data['areaName'] = l$areaName;
    final l$active = active;
    result$data['active'] = l$active;
    final l$areaZones = areaZones;
    result$data['areaZones'] = l$areaZones.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Input$DeviceAreasInput<Input$DeviceAreasInput> get copyWith =>
      CopyWith$Input$DeviceAreasInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DeviceAreasInput) ||
        runtimeType != other.runtimeType) {
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
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$areaGuid = areaGuid;
    final l$areaName = areaName;
    final l$active = active;
    final l$areaZones = areaZones;
    return Object.hashAll([
      l$areaGuid,
      l$areaName,
      l$active,
      Object.hashAll(l$areaZones.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$DeviceAreasInput<TRes> {
  factory CopyWith$Input$DeviceAreasInput(
    Input$DeviceAreasInput instance,
    TRes Function(Input$DeviceAreasInput) then,
  ) = _CopyWithImpl$Input$DeviceAreasInput;

  factory CopyWith$Input$DeviceAreasInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DeviceAreasInput;

  TRes call({
    String? areaGuid,
    String? areaName,
    bool? active,
    List<Input$AreaZonesInput>? areaZones,
  });
  TRes areaZones(
      Iterable<Input$AreaZonesInput> Function(
              Iterable<CopyWith$Input$AreaZonesInput<Input$AreaZonesInput>>)
          _fn);
}

class _CopyWithImpl$Input$DeviceAreasInput<TRes>
    implements CopyWith$Input$DeviceAreasInput<TRes> {
  _CopyWithImpl$Input$DeviceAreasInput(
    this._instance,
    this._then,
  );

  final Input$DeviceAreasInput _instance;

  final TRes Function(Input$DeviceAreasInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? areaGuid = _undefined,
    Object? areaName = _undefined,
    Object? active = _undefined,
    Object? areaZones = _undefined,
  }) =>
      _then(Input$DeviceAreasInput._({
        ..._instance._$data,
        if (areaGuid != _undefined && areaGuid != null)
          'areaGuid': (areaGuid as String),
        if (areaName != _undefined && areaName != null)
          'areaName': (areaName as String),
        if (active != _undefined && active != null) 'active': (active as bool),
        if (areaZones != _undefined && areaZones != null)
          'areaZones': (areaZones as List<Input$AreaZonesInput>),
      }));

  TRes areaZones(
          Iterable<Input$AreaZonesInput> Function(
                  Iterable<CopyWith$Input$AreaZonesInput<Input$AreaZonesInput>>)
              _fn) =>
      call(
          areaZones:
              _fn(_instance.areaZones.map((e) => CopyWith$Input$AreaZonesInput(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Input$DeviceAreasInput<TRes>
    implements CopyWith$Input$DeviceAreasInput<TRes> {
  _CopyWithStubImpl$Input$DeviceAreasInput(this._res);

  TRes _res;

  call({
    String? areaGuid,
    String? areaName,
    bool? active,
    List<Input$AreaZonesInput>? areaZones,
  }) =>
      _res;

  areaZones(_fn) => _res;
}

class Input$AreaZonesInput {
  factory Input$AreaZonesInput({
    required String zoneGuid,
    required String zoneName,
    required String musterPoint,
    required bool active,
  }) =>
      Input$AreaZonesInput._({
        r'zoneGuid': zoneGuid,
        r'zoneName': zoneName,
        r'musterPoint': musterPoint,
        r'active': active,
      });

  Input$AreaZonesInput._(this._$data);

  factory Input$AreaZonesInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$zoneGuid = data['zoneGuid'];
    result$data['zoneGuid'] = (l$zoneGuid as String);
    final l$zoneName = data['zoneName'];
    result$data['zoneName'] = (l$zoneName as String);
    final l$musterPoint = data['musterPoint'];
    result$data['musterPoint'] = (l$musterPoint as String);
    final l$active = data['active'];
    result$data['active'] = (l$active as bool);
    return Input$AreaZonesInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get zoneGuid => (_$data['zoneGuid'] as String);

  String get zoneName => (_$data['zoneName'] as String);

  String get musterPoint => (_$data['musterPoint'] as String);

  bool get active => (_$data['active'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$zoneGuid = zoneGuid;
    result$data['zoneGuid'] = l$zoneGuid;
    final l$zoneName = zoneName;
    result$data['zoneName'] = l$zoneName;
    final l$musterPoint = musterPoint;
    result$data['musterPoint'] = l$musterPoint;
    final l$active = active;
    result$data['active'] = l$active;
    return result$data;
  }

  CopyWith$Input$AreaZonesInput<Input$AreaZonesInput> get copyWith =>
      CopyWith$Input$AreaZonesInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AreaZonesInput) || runtimeType != other.runtimeType) {
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
    final l$musterPoint = musterPoint;
    final lOther$musterPoint = other.musterPoint;
    if (l$musterPoint != lOther$musterPoint) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$zoneGuid = zoneGuid;
    final l$zoneName = zoneName;
    final l$musterPoint = musterPoint;
    final l$active = active;
    return Object.hashAll([
      l$zoneGuid,
      l$zoneName,
      l$musterPoint,
      l$active,
    ]);
  }
}

abstract class CopyWith$Input$AreaZonesInput<TRes> {
  factory CopyWith$Input$AreaZonesInput(
    Input$AreaZonesInput instance,
    TRes Function(Input$AreaZonesInput) then,
  ) = _CopyWithImpl$Input$AreaZonesInput;

  factory CopyWith$Input$AreaZonesInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AreaZonesInput;

  TRes call({
    String? zoneGuid,
    String? zoneName,
    String? musterPoint,
    bool? active,
  });
}

class _CopyWithImpl$Input$AreaZonesInput<TRes>
    implements CopyWith$Input$AreaZonesInput<TRes> {
  _CopyWithImpl$Input$AreaZonesInput(
    this._instance,
    this._then,
  );

  final Input$AreaZonesInput _instance;

  final TRes Function(Input$AreaZonesInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? zoneGuid = _undefined,
    Object? zoneName = _undefined,
    Object? musterPoint = _undefined,
    Object? active = _undefined,
  }) =>
      _then(Input$AreaZonesInput._({
        ..._instance._$data,
        if (zoneGuid != _undefined && zoneGuid != null)
          'zoneGuid': (zoneGuid as String),
        if (zoneName != _undefined && zoneName != null)
          'zoneName': (zoneName as String),
        if (musterPoint != _undefined && musterPoint != null)
          'musterPoint': (musterPoint as String),
        if (active != _undefined && active != null) 'active': (active as bool),
      }));
}

class _CopyWithStubImpl$Input$AreaZonesInput<TRes>
    implements CopyWith$Input$AreaZonesInput<TRes> {
  _CopyWithStubImpl$Input$AreaZonesInput(this._res);

  TRes _res;

  call({
    String? zoneGuid,
    String? zoneName,
    String? musterPoint,
    bool? active,
  }) =>
      _res;
}

enum Enum$SortEnumType {
  ASC,
  DESC,
  $unknown;

  factory Enum$SortEnumType.fromJson(String value) =>
      fromJson$Enum$SortEnumType(value);

  String toJson() => toJson$Enum$SortEnumType(this);
}

String toJson$Enum$SortEnumType(Enum$SortEnumType e) {
  switch (e) {
    case Enum$SortEnumType.ASC:
      return r'ASC';
    case Enum$SortEnumType.DESC:
      return r'DESC';
    case Enum$SortEnumType.$unknown:
      return r'$unknown';
  }
}

Enum$SortEnumType fromJson$Enum$SortEnumType(String value) {
  switch (value) {
    case r'ASC':
      return Enum$SortEnumType.ASC;
    case r'DESC':
      return Enum$SortEnumType.DESC;
    default:
      return Enum$SortEnumType.$unknown;
  }
}

enum Enum$SubjectType {
  EMPLOYEE,
  VISITOR,
  $unknown;

  factory Enum$SubjectType.fromJson(String value) =>
      fromJson$Enum$SubjectType(value);

  String toJson() => toJson$Enum$SubjectType(this);
}

String toJson$Enum$SubjectType(Enum$SubjectType e) {
  switch (e) {
    case Enum$SubjectType.EMPLOYEE:
      return r'EMPLOYEE';
    case Enum$SubjectType.VISITOR:
      return r'VISITOR';
    case Enum$SubjectType.$unknown:
      return r'$unknown';
  }
}

Enum$SubjectType fromJson$Enum$SubjectType(String value) {
  switch (value) {
    case r'EMPLOYEE':
      return Enum$SubjectType.EMPLOYEE;
    case r'VISITOR':
      return Enum$SubjectType.VISITOR;
    default:
      return Enum$SubjectType.$unknown;
  }
}

enum Enum$PunchType {
  PUNCH_IN,
  PUNCH_OUT,
  MEAL_START,
  MEAL_END,
  ENTER_SITE,
  LEAVE_SITE,
  $unknown;

  factory Enum$PunchType.fromJson(String value) =>
      fromJson$Enum$PunchType(value);

  String toJson() => toJson$Enum$PunchType(this);
}

String toJson$Enum$PunchType(Enum$PunchType e) {
  switch (e) {
    case Enum$PunchType.PUNCH_IN:
      return r'PUNCH_IN';
    case Enum$PunchType.PUNCH_OUT:
      return r'PUNCH_OUT';
    case Enum$PunchType.MEAL_START:
      return r'MEAL_START';
    case Enum$PunchType.MEAL_END:
      return r'MEAL_END';
    case Enum$PunchType.ENTER_SITE:
      return r'ENTER_SITE';
    case Enum$PunchType.LEAVE_SITE:
      return r'LEAVE_SITE';
    case Enum$PunchType.$unknown:
      return r'$unknown';
  }
}

Enum$PunchType fromJson$Enum$PunchType(String value) {
  switch (value) {
    case r'PUNCH_IN':
      return Enum$PunchType.PUNCH_IN;
    case r'PUNCH_OUT':
      return Enum$PunchType.PUNCH_OUT;
    case r'MEAL_START':
      return Enum$PunchType.MEAL_START;
    case r'MEAL_END':
      return Enum$PunchType.MEAL_END;
    case r'ENTER_SITE':
      return Enum$PunchType.ENTER_SITE;
    case r'LEAVE_SITE':
      return Enum$PunchType.LEAVE_SITE;
    default:
      return Enum$PunchType.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
