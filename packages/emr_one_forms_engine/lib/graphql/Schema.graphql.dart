class Input$CompletedFormInstanceQueryFilterInput {
  factory Input$CompletedFormInstanceQueryFilterInput({
    String? workOrderId,
    String? yardCode,
    DateTime? startDate,
    DateTime? endDate,
    String? jobDescription,
    String? jobType,
  }) =>
      Input$CompletedFormInstanceQueryFilterInput._({
        if (workOrderId != null) r'workOrderId': workOrderId,
        if (yardCode != null) r'yardCode': yardCode,
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
        if (jobDescription != null) r'jobDescription': jobDescription,
        if (jobType != null) r'jobType': jobType,
      });

  Input$CompletedFormInstanceQueryFilterInput._(this._$data);

  factory Input$CompletedFormInstanceQueryFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('workOrderId')) {
      final l$workOrderId = data['workOrderId'];
      result$data['workOrderId'] = (l$workOrderId as String?);
    }
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = (l$yardCode as String?);
    }
    if (data.containsKey('startDate')) {
      final l$startDate = data['startDate'];
      result$data['startDate'] =
          l$startDate == null ? null : DateTime.parse((l$startDate as String));
    }
    if (data.containsKey('endDate')) {
      final l$endDate = data['endDate'];
      result$data['endDate'] =
          l$endDate == null ? null : DateTime.parse((l$endDate as String));
    }
    if (data.containsKey('jobDescription')) {
      final l$jobDescription = data['jobDescription'];
      result$data['jobDescription'] = (l$jobDescription as String?);
    }
    if (data.containsKey('jobType')) {
      final l$jobType = data['jobType'];
      result$data['jobType'] = (l$jobType as String?);
    }
    return Input$CompletedFormInstanceQueryFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get workOrderId => (_$data['workOrderId'] as String?);

  String? get yardCode => (_$data['yardCode'] as String?);

  DateTime? get startDate => (_$data['startDate'] as DateTime?);

  DateTime? get endDate => (_$data['endDate'] as DateTime?);

  String? get jobDescription => (_$data['jobDescription'] as String?);

  String? get jobType => (_$data['jobType'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('workOrderId')) {
      final l$workOrderId = workOrderId;
      result$data['workOrderId'] = l$workOrderId;
    }
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] = l$yardCode;
    }
    if (_$data.containsKey('startDate')) {
      final l$startDate = startDate;
      result$data['startDate'] = l$startDate?.toIso8601String();
    }
    if (_$data.containsKey('endDate')) {
      final l$endDate = endDate;
      result$data['endDate'] = l$endDate?.toIso8601String();
    }
    if (_$data.containsKey('jobDescription')) {
      final l$jobDescription = jobDescription;
      result$data['jobDescription'] = l$jobDescription;
    }
    if (_$data.containsKey('jobType')) {
      final l$jobType = jobType;
      result$data['jobType'] = l$jobType;
    }
    return result$data;
  }

  CopyWith$Input$CompletedFormInstanceQueryFilterInput<
          Input$CompletedFormInstanceQueryFilterInput>
      get copyWith => CopyWith$Input$CompletedFormInstanceQueryFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CompletedFormInstanceQueryFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$workOrderId = workOrderId;
    final lOther$workOrderId = other.workOrderId;
    if (_$data.containsKey('workOrderId') !=
        other._$data.containsKey('workOrderId')) {
      return false;
    }
    if (l$workOrderId != lOther$workOrderId) {
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
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (_$data.containsKey('startDate') !=
        other._$data.containsKey('startDate')) {
      return false;
    }
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (_$data.containsKey('endDate') != other._$data.containsKey('endDate')) {
      return false;
    }
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$jobDescription = jobDescription;
    final lOther$jobDescription = other.jobDescription;
    if (_$data.containsKey('jobDescription') !=
        other._$data.containsKey('jobDescription')) {
      return false;
    }
    if (l$jobDescription != lOther$jobDescription) {
      return false;
    }
    final l$jobType = jobType;
    final lOther$jobType = other.jobType;
    if (_$data.containsKey('jobType') != other._$data.containsKey('jobType')) {
      return false;
    }
    if (l$jobType != lOther$jobType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$workOrderId = workOrderId;
    final l$yardCode = yardCode;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$jobDescription = jobDescription;
    final l$jobType = jobType;
    return Object.hashAll([
      _$data.containsKey('workOrderId') ? l$workOrderId : const {},
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
      _$data.containsKey('jobDescription') ? l$jobDescription : const {},
      _$data.containsKey('jobType') ? l$jobType : const {},
    ]);
  }
}

abstract class CopyWith$Input$CompletedFormInstanceQueryFilterInput<TRes> {
  factory CopyWith$Input$CompletedFormInstanceQueryFilterInput(
    Input$CompletedFormInstanceQueryFilterInput instance,
    TRes Function(Input$CompletedFormInstanceQueryFilterInput) then,
  ) = _CopyWithImpl$Input$CompletedFormInstanceQueryFilterInput;

  factory CopyWith$Input$CompletedFormInstanceQueryFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CompletedFormInstanceQueryFilterInput;

  TRes call({
    String? workOrderId,
    String? yardCode,
    DateTime? startDate,
    DateTime? endDate,
    String? jobDescription,
    String? jobType,
  });
}

class _CopyWithImpl$Input$CompletedFormInstanceQueryFilterInput<TRes>
    implements CopyWith$Input$CompletedFormInstanceQueryFilterInput<TRes> {
  _CopyWithImpl$Input$CompletedFormInstanceQueryFilterInput(
    this._instance,
    this._then,
  );

  final Input$CompletedFormInstanceQueryFilterInput _instance;

  final TRes Function(Input$CompletedFormInstanceQueryFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? workOrderId = _undefined,
    Object? yardCode = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? jobDescription = _undefined,
    Object? jobType = _undefined,
  }) =>
      _then(Input$CompletedFormInstanceQueryFilterInput._({
        ..._instance._$data,
        if (workOrderId != _undefined) 'workOrderId': (workOrderId as String?),
        if (yardCode != _undefined) 'yardCode': (yardCode as String?),
        if (startDate != _undefined) 'startDate': (startDate as DateTime?),
        if (endDate != _undefined) 'endDate': (endDate as DateTime?),
        if (jobDescription != _undefined)
          'jobDescription': (jobDescription as String?),
        if (jobType != _undefined) 'jobType': (jobType as String?),
      }));
}

class _CopyWithStubImpl$Input$CompletedFormInstanceQueryFilterInput<TRes>
    implements CopyWith$Input$CompletedFormInstanceQueryFilterInput<TRes> {
  _CopyWithStubImpl$Input$CompletedFormInstanceQueryFilterInput(this._res);

  TRes _res;

  call({
    String? workOrderId,
    String? yardCode,
    DateTime? startDate,
    DateTime? endDate,
    String? jobDescription,
    String? jobType,
  }) =>
      _res;
}

class Input$InstanceQueryFilterInput {
  factory Input$InstanceQueryFilterInput({
    String? yardCode,
    List<Input$FormQueryAssetFilterInput>? asset,
    List<String>? status,
    List<Enum$FormInstanceStatusId>? statusId,
    bool? forCurrentUser,
    DateTime? startDate,
    DateTime? endDate,
  }) =>
      Input$InstanceQueryFilterInput._({
        if (yardCode != null) r'yardCode': yardCode,
        if (asset != null) r'asset': asset,
        if (status != null) r'status': status,
        if (statusId != null) r'statusId': statusId,
        if (forCurrentUser != null) r'forCurrentUser': forCurrentUser,
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
      });

  Input$InstanceQueryFilterInput._(this._$data);

  factory Input$InstanceQueryFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = (l$yardCode as String?);
    }
    if (data.containsKey('asset')) {
      final l$asset = data['asset'];
      result$data['asset'] = (l$asset as List<dynamic>?)
          ?.map((e) => Input$FormQueryAssetFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] =
          (l$status as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('statusId')) {
      final l$statusId = data['statusId'];
      result$data['statusId'] = (l$statusId as List<dynamic>?)
          ?.map((e) => fromJson$Enum$FormInstanceStatusId((e as String)))
          .toList();
    }
    if (data.containsKey('forCurrentUser')) {
      final l$forCurrentUser = data['forCurrentUser'];
      result$data['forCurrentUser'] = (l$forCurrentUser as bool?);
    }
    if (data.containsKey('startDate')) {
      final l$startDate = data['startDate'];
      result$data['startDate'] =
          l$startDate == null ? null : DateTime.parse((l$startDate as String));
    }
    if (data.containsKey('endDate')) {
      final l$endDate = data['endDate'];
      result$data['endDate'] =
          l$endDate == null ? null : DateTime.parse((l$endDate as String));
    }
    return Input$InstanceQueryFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get yardCode => (_$data['yardCode'] as String?);

  List<Input$FormQueryAssetFilterInput>? get asset =>
      (_$data['asset'] as List<Input$FormQueryAssetFilterInput>?);

  List<String>? get status => (_$data['status'] as List<String>?);

  List<Enum$FormInstanceStatusId>? get statusId =>
      (_$data['statusId'] as List<Enum$FormInstanceStatusId>?);

  bool? get forCurrentUser => (_$data['forCurrentUser'] as bool?);

  DateTime? get startDate => (_$data['startDate'] as DateTime?);

  DateTime? get endDate => (_$data['endDate'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] = l$yardCode;
    }
    if (_$data.containsKey('asset')) {
      final l$asset = asset;
      result$data['asset'] = l$asset?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.map((e) => e).toList();
    }
    if (_$data.containsKey('statusId')) {
      final l$statusId = statusId;
      result$data['statusId'] =
          l$statusId?.map((e) => toJson$Enum$FormInstanceStatusId(e)).toList();
    }
    if (_$data.containsKey('forCurrentUser')) {
      final l$forCurrentUser = forCurrentUser;
      result$data['forCurrentUser'] = l$forCurrentUser;
    }
    if (_$data.containsKey('startDate')) {
      final l$startDate = startDate;
      result$data['startDate'] = l$startDate?.toIso8601String();
    }
    if (_$data.containsKey('endDate')) {
      final l$endDate = endDate;
      result$data['endDate'] = l$endDate?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$InstanceQueryFilterInput<Input$InstanceQueryFilterInput>
      get copyWith => CopyWith$Input$InstanceQueryFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$InstanceQueryFilterInput) ||
        runtimeType != other.runtimeType) {
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
    final l$asset = asset;
    final lOther$asset = other.asset;
    if (_$data.containsKey('asset') != other._$data.containsKey('asset')) {
      return false;
    }
    if (l$asset != null && lOther$asset != null) {
      if (l$asset.length != lOther$asset.length) {
        return false;
      }
      for (int i = 0; i < l$asset.length; i++) {
        final l$asset$entry = l$asset[i];
        final lOther$asset$entry = lOther$asset[i];
        if (l$asset$entry != lOther$asset$entry) {
          return false;
        }
      }
    } else if (l$asset != lOther$asset) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != null && lOther$status != null) {
      if (l$status.length != lOther$status.length) {
        return false;
      }
      for (int i = 0; i < l$status.length; i++) {
        final l$status$entry = l$status[i];
        final lOther$status$entry = lOther$status[i];
        if (l$status$entry != lOther$status$entry) {
          return false;
        }
      }
    } else if (l$status != lOther$status) {
      return false;
    }
    final l$statusId = statusId;
    final lOther$statusId = other.statusId;
    if (_$data.containsKey('statusId') !=
        other._$data.containsKey('statusId')) {
      return false;
    }
    if (l$statusId != null && lOther$statusId != null) {
      if (l$statusId.length != lOther$statusId.length) {
        return false;
      }
      for (int i = 0; i < l$statusId.length; i++) {
        final l$statusId$entry = l$statusId[i];
        final lOther$statusId$entry = lOther$statusId[i];
        if (l$statusId$entry != lOther$statusId$entry) {
          return false;
        }
      }
    } else if (l$statusId != lOther$statusId) {
      return false;
    }
    final l$forCurrentUser = forCurrentUser;
    final lOther$forCurrentUser = other.forCurrentUser;
    if (_$data.containsKey('forCurrentUser') !=
        other._$data.containsKey('forCurrentUser')) {
      return false;
    }
    if (l$forCurrentUser != lOther$forCurrentUser) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (_$data.containsKey('startDate') !=
        other._$data.containsKey('startDate')) {
      return false;
    }
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (_$data.containsKey('endDate') != other._$data.containsKey('endDate')) {
      return false;
    }
    if (l$endDate != lOther$endDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$asset = asset;
    final l$status = status;
    final l$statusId = statusId;
    final l$forCurrentUser = forCurrentUser;
    final l$startDate = startDate;
    final l$endDate = endDate;
    return Object.hashAll([
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('asset')
          ? l$asset == null
              ? null
              : Object.hashAll(l$asset.map((v) => v))
          : const {},
      _$data.containsKey('status')
          ? l$status == null
              ? null
              : Object.hashAll(l$status.map((v) => v))
          : const {},
      _$data.containsKey('statusId')
          ? l$statusId == null
              ? null
              : Object.hashAll(l$statusId.map((v) => v))
          : const {},
      _$data.containsKey('forCurrentUser') ? l$forCurrentUser : const {},
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
    ]);
  }
}

abstract class CopyWith$Input$InstanceQueryFilterInput<TRes> {
  factory CopyWith$Input$InstanceQueryFilterInput(
    Input$InstanceQueryFilterInput instance,
    TRes Function(Input$InstanceQueryFilterInput) then,
  ) = _CopyWithImpl$Input$InstanceQueryFilterInput;

  factory CopyWith$Input$InstanceQueryFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$InstanceQueryFilterInput;

  TRes call({
    String? yardCode,
    List<Input$FormQueryAssetFilterInput>? asset,
    List<String>? status,
    List<Enum$FormInstanceStatusId>? statusId,
    bool? forCurrentUser,
    DateTime? startDate,
    DateTime? endDate,
  });
  TRes asset(
      Iterable<Input$FormQueryAssetFilterInput>? Function(
              Iterable<
                  CopyWith$Input$FormQueryAssetFilterInput<
                      Input$FormQueryAssetFilterInput>>?)
          _fn);
}

class _CopyWithImpl$Input$InstanceQueryFilterInput<TRes>
    implements CopyWith$Input$InstanceQueryFilterInput<TRes> {
  _CopyWithImpl$Input$InstanceQueryFilterInput(
    this._instance,
    this._then,
  );

  final Input$InstanceQueryFilterInput _instance;

  final TRes Function(Input$InstanceQueryFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? asset = _undefined,
    Object? status = _undefined,
    Object? statusId = _undefined,
    Object? forCurrentUser = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
  }) =>
      _then(Input$InstanceQueryFilterInput._({
        ..._instance._$data,
        if (yardCode != _undefined) 'yardCode': (yardCode as String?),
        if (asset != _undefined)
          'asset': (asset as List<Input$FormQueryAssetFilterInput>?),
        if (status != _undefined) 'status': (status as List<String>?),
        if (statusId != _undefined)
          'statusId': (statusId as List<Enum$FormInstanceStatusId>?),
        if (forCurrentUser != _undefined)
          'forCurrentUser': (forCurrentUser as bool?),
        if (startDate != _undefined) 'startDate': (startDate as DateTime?),
        if (endDate != _undefined) 'endDate': (endDate as DateTime?),
      }));

  TRes asset(
          Iterable<Input$FormQueryAssetFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$FormQueryAssetFilterInput<
                          Input$FormQueryAssetFilterInput>>?)
              _fn) =>
      call(
          asset: _fn(_instance.asset
              ?.map((e) => CopyWith$Input$FormQueryAssetFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$InstanceQueryFilterInput<TRes>
    implements CopyWith$Input$InstanceQueryFilterInput<TRes> {
  _CopyWithStubImpl$Input$InstanceQueryFilterInput(this._res);

  TRes _res;

  call({
    String? yardCode,
    List<Input$FormQueryAssetFilterInput>? asset,
    List<String>? status,
    List<Enum$FormInstanceStatusId>? statusId,
    bool? forCurrentUser,
    DateTime? startDate,
    DateTime? endDate,
  }) =>
      _res;

  asset(_fn) => _res;
}

class Input$DepotQueryFilterInput {
  factory Input$DepotQueryFilterInput({
    List<String>? depotNos,
    List<String>? yardCodes,
    String? searchText,
  }) =>
      Input$DepotQueryFilterInput._({
        if (depotNos != null) r'depotNos': depotNos,
        if (yardCodes != null) r'yardCodes': yardCodes,
        if (searchText != null) r'searchText': searchText,
      });

  Input$DepotQueryFilterInput._(this._$data);

  factory Input$DepotQueryFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('depotNos')) {
      final l$depotNos = data['depotNos'];
      result$data['depotNos'] =
          (l$depotNos as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('yardCodes')) {
      final l$yardCodes = data['yardCodes'];
      result$data['yardCodes'] =
          (l$yardCodes as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = (l$searchText as String?);
    }
    return Input$DepotQueryFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get depotNos => (_$data['depotNos'] as List<String>?);

  List<String>? get yardCodes => (_$data['yardCodes'] as List<String>?);

  String? get searchText => (_$data['searchText'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('depotNos')) {
      final l$depotNos = depotNos;
      result$data['depotNos'] = l$depotNos?.map((e) => e).toList();
    }
    if (_$data.containsKey('yardCodes')) {
      final l$yardCodes = yardCodes;
      result$data['yardCodes'] = l$yardCodes?.map((e) => e).toList();
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText;
    }
    return result$data;
  }

  CopyWith$Input$DepotQueryFilterInput<Input$DepotQueryFilterInput>
      get copyWith => CopyWith$Input$DepotQueryFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DepotQueryFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$depotNos = depotNos;
    final lOther$depotNos = other.depotNos;
    if (_$data.containsKey('depotNos') !=
        other._$data.containsKey('depotNos')) {
      return false;
    }
    if (l$depotNos != null && lOther$depotNos != null) {
      if (l$depotNos.length != lOther$depotNos.length) {
        return false;
      }
      for (int i = 0; i < l$depotNos.length; i++) {
        final l$depotNos$entry = l$depotNos[i];
        final lOther$depotNos$entry = lOther$depotNos[i];
        if (l$depotNos$entry != lOther$depotNos$entry) {
          return false;
        }
      }
    } else if (l$depotNos != lOther$depotNos) {
      return false;
    }
    final l$yardCodes = yardCodes;
    final lOther$yardCodes = other.yardCodes;
    if (_$data.containsKey('yardCodes') !=
        other._$data.containsKey('yardCodes')) {
      return false;
    }
    if (l$yardCodes != null && lOther$yardCodes != null) {
      if (l$yardCodes.length != lOther$yardCodes.length) {
        return false;
      }
      for (int i = 0; i < l$yardCodes.length; i++) {
        final l$yardCodes$entry = l$yardCodes[i];
        final lOther$yardCodes$entry = lOther$yardCodes[i];
        if (l$yardCodes$entry != lOther$yardCodes$entry) {
          return false;
        }
      }
    } else if (l$yardCodes != lOther$yardCodes) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$depotNos = depotNos;
    final l$yardCodes = yardCodes;
    final l$searchText = searchText;
    return Object.hashAll([
      _$data.containsKey('depotNos')
          ? l$depotNos == null
              ? null
              : Object.hashAll(l$depotNos.map((v) => v))
          : const {},
      _$data.containsKey('yardCodes')
          ? l$yardCodes == null
              ? null
              : Object.hashAll(l$yardCodes.map((v) => v))
          : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
    ]);
  }
}

abstract class CopyWith$Input$DepotQueryFilterInput<TRes> {
  factory CopyWith$Input$DepotQueryFilterInput(
    Input$DepotQueryFilterInput instance,
    TRes Function(Input$DepotQueryFilterInput) then,
  ) = _CopyWithImpl$Input$DepotQueryFilterInput;

  factory CopyWith$Input$DepotQueryFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DepotQueryFilterInput;

  TRes call({
    List<String>? depotNos,
    List<String>? yardCodes,
    String? searchText,
  });
}

class _CopyWithImpl$Input$DepotQueryFilterInput<TRes>
    implements CopyWith$Input$DepotQueryFilterInput<TRes> {
  _CopyWithImpl$Input$DepotQueryFilterInput(
    this._instance,
    this._then,
  );

  final Input$DepotQueryFilterInput _instance;

  final TRes Function(Input$DepotQueryFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depotNos = _undefined,
    Object? yardCodes = _undefined,
    Object? searchText = _undefined,
  }) =>
      _then(Input$DepotQueryFilterInput._({
        ..._instance._$data,
        if (depotNos != _undefined) 'depotNos': (depotNos as List<String>?),
        if (yardCodes != _undefined) 'yardCodes': (yardCodes as List<String>?),
        if (searchText != _undefined) 'searchText': (searchText as String?),
      }));
}

class _CopyWithStubImpl$Input$DepotQueryFilterInput<TRes>
    implements CopyWith$Input$DepotQueryFilterInput<TRes> {
  _CopyWithStubImpl$Input$DepotQueryFilterInput(this._res);

  TRes _res;

  call({
    List<String>? depotNos,
    List<String>? yardCodes,
    String? searchText,
  }) =>
      _res;
}

class Input$AssetQueryFilterInput {
  factory Input$AssetQueryFilterInput({
    List<String>? assetCodes,
    List<String>? yardCodes,
    List<String>? depotNos,
    List<String>? assetTypes,
    String? searchText,
  }) =>
      Input$AssetQueryFilterInput._({
        if (assetCodes != null) r'assetCodes': assetCodes,
        if (yardCodes != null) r'yardCodes': yardCodes,
        if (depotNos != null) r'depotNos': depotNos,
        if (assetTypes != null) r'assetTypes': assetTypes,
        if (searchText != null) r'searchText': searchText,
      });

  Input$AssetQueryFilterInput._(this._$data);

  factory Input$AssetQueryFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('assetCodes')) {
      final l$assetCodes = data['assetCodes'];
      result$data['assetCodes'] =
          (l$assetCodes as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('yardCodes')) {
      final l$yardCodes = data['yardCodes'];
      result$data['yardCodes'] =
          (l$yardCodes as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('depotNos')) {
      final l$depotNos = data['depotNos'];
      result$data['depotNos'] =
          (l$depotNos as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('assetTypes')) {
      final l$assetTypes = data['assetTypes'];
      result$data['assetTypes'] =
          (l$assetTypes as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = (l$searchText as String?);
    }
    return Input$AssetQueryFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get assetCodes => (_$data['assetCodes'] as List<String>?);

  List<String>? get yardCodes => (_$data['yardCodes'] as List<String>?);

  List<String>? get depotNos => (_$data['depotNos'] as List<String>?);

  List<String>? get assetTypes => (_$data['assetTypes'] as List<String>?);

  String? get searchText => (_$data['searchText'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('assetCodes')) {
      final l$assetCodes = assetCodes;
      result$data['assetCodes'] = l$assetCodes?.map((e) => e).toList();
    }
    if (_$data.containsKey('yardCodes')) {
      final l$yardCodes = yardCodes;
      result$data['yardCodes'] = l$yardCodes?.map((e) => e).toList();
    }
    if (_$data.containsKey('depotNos')) {
      final l$depotNos = depotNos;
      result$data['depotNos'] = l$depotNos?.map((e) => e).toList();
    }
    if (_$data.containsKey('assetTypes')) {
      final l$assetTypes = assetTypes;
      result$data['assetTypes'] = l$assetTypes?.map((e) => e).toList();
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText;
    }
    return result$data;
  }

  CopyWith$Input$AssetQueryFilterInput<Input$AssetQueryFilterInput>
      get copyWith => CopyWith$Input$AssetQueryFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AssetQueryFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetCodes = assetCodes;
    final lOther$assetCodes = other.assetCodes;
    if (_$data.containsKey('assetCodes') !=
        other._$data.containsKey('assetCodes')) {
      return false;
    }
    if (l$assetCodes != null && lOther$assetCodes != null) {
      if (l$assetCodes.length != lOther$assetCodes.length) {
        return false;
      }
      for (int i = 0; i < l$assetCodes.length; i++) {
        final l$assetCodes$entry = l$assetCodes[i];
        final lOther$assetCodes$entry = lOther$assetCodes[i];
        if (l$assetCodes$entry != lOther$assetCodes$entry) {
          return false;
        }
      }
    } else if (l$assetCodes != lOther$assetCodes) {
      return false;
    }
    final l$yardCodes = yardCodes;
    final lOther$yardCodes = other.yardCodes;
    if (_$data.containsKey('yardCodes') !=
        other._$data.containsKey('yardCodes')) {
      return false;
    }
    if (l$yardCodes != null && lOther$yardCodes != null) {
      if (l$yardCodes.length != lOther$yardCodes.length) {
        return false;
      }
      for (int i = 0; i < l$yardCodes.length; i++) {
        final l$yardCodes$entry = l$yardCodes[i];
        final lOther$yardCodes$entry = lOther$yardCodes[i];
        if (l$yardCodes$entry != lOther$yardCodes$entry) {
          return false;
        }
      }
    } else if (l$yardCodes != lOther$yardCodes) {
      return false;
    }
    final l$depotNos = depotNos;
    final lOther$depotNos = other.depotNos;
    if (_$data.containsKey('depotNos') !=
        other._$data.containsKey('depotNos')) {
      return false;
    }
    if (l$depotNos != null && lOther$depotNos != null) {
      if (l$depotNos.length != lOther$depotNos.length) {
        return false;
      }
      for (int i = 0; i < l$depotNos.length; i++) {
        final l$depotNos$entry = l$depotNos[i];
        final lOther$depotNos$entry = lOther$depotNos[i];
        if (l$depotNos$entry != lOther$depotNos$entry) {
          return false;
        }
      }
    } else if (l$depotNos != lOther$depotNos) {
      return false;
    }
    final l$assetTypes = assetTypes;
    final lOther$assetTypes = other.assetTypes;
    if (_$data.containsKey('assetTypes') !=
        other._$data.containsKey('assetTypes')) {
      return false;
    }
    if (l$assetTypes != null && lOther$assetTypes != null) {
      if (l$assetTypes.length != lOther$assetTypes.length) {
        return false;
      }
      for (int i = 0; i < l$assetTypes.length; i++) {
        final l$assetTypes$entry = l$assetTypes[i];
        final lOther$assetTypes$entry = lOther$assetTypes[i];
        if (l$assetTypes$entry != lOther$assetTypes$entry) {
          return false;
        }
      }
    } else if (l$assetTypes != lOther$assetTypes) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$assetCodes = assetCodes;
    final l$yardCodes = yardCodes;
    final l$depotNos = depotNos;
    final l$assetTypes = assetTypes;
    final l$searchText = searchText;
    return Object.hashAll([
      _$data.containsKey('assetCodes')
          ? l$assetCodes == null
              ? null
              : Object.hashAll(l$assetCodes.map((v) => v))
          : const {},
      _$data.containsKey('yardCodes')
          ? l$yardCodes == null
              ? null
              : Object.hashAll(l$yardCodes.map((v) => v))
          : const {},
      _$data.containsKey('depotNos')
          ? l$depotNos == null
              ? null
              : Object.hashAll(l$depotNos.map((v) => v))
          : const {},
      _$data.containsKey('assetTypes')
          ? l$assetTypes == null
              ? null
              : Object.hashAll(l$assetTypes.map((v) => v))
          : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
    ]);
  }
}

abstract class CopyWith$Input$AssetQueryFilterInput<TRes> {
  factory CopyWith$Input$AssetQueryFilterInput(
    Input$AssetQueryFilterInput instance,
    TRes Function(Input$AssetQueryFilterInput) then,
  ) = _CopyWithImpl$Input$AssetQueryFilterInput;

  factory CopyWith$Input$AssetQueryFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssetQueryFilterInput;

  TRes call({
    List<String>? assetCodes,
    List<String>? yardCodes,
    List<String>? depotNos,
    List<String>? assetTypes,
    String? searchText,
  });
}

class _CopyWithImpl$Input$AssetQueryFilterInput<TRes>
    implements CopyWith$Input$AssetQueryFilterInput<TRes> {
  _CopyWithImpl$Input$AssetQueryFilterInput(
    this._instance,
    this._then,
  );

  final Input$AssetQueryFilterInput _instance;

  final TRes Function(Input$AssetQueryFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetCodes = _undefined,
    Object? yardCodes = _undefined,
    Object? depotNos = _undefined,
    Object? assetTypes = _undefined,
    Object? searchText = _undefined,
  }) =>
      _then(Input$AssetQueryFilterInput._({
        ..._instance._$data,
        if (assetCodes != _undefined)
          'assetCodes': (assetCodes as List<String>?),
        if (yardCodes != _undefined) 'yardCodes': (yardCodes as List<String>?),
        if (depotNos != _undefined) 'depotNos': (depotNos as List<String>?),
        if (assetTypes != _undefined)
          'assetTypes': (assetTypes as List<String>?),
        if (searchText != _undefined) 'searchText': (searchText as String?),
      }));
}

class _CopyWithStubImpl$Input$AssetQueryFilterInput<TRes>
    implements CopyWith$Input$AssetQueryFilterInput<TRes> {
  _CopyWithStubImpl$Input$AssetQueryFilterInput(this._res);

  TRes _res;

  call({
    List<String>? assetCodes,
    List<String>? yardCodes,
    List<String>? depotNos,
    List<String>? assetTypes,
    String? searchText,
  }) =>
      _res;
}

class Input$ExportPdfForCompletedJobsFilterInput {
  factory Input$ExportPdfForCompletedJobsFilterInput(
          {required List<String> workOrderIds}) =>
      Input$ExportPdfForCompletedJobsFilterInput._({
        r'workOrderIds': workOrderIds,
      });

  Input$ExportPdfForCompletedJobsFilterInput._(this._$data);

  factory Input$ExportPdfForCompletedJobsFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$workOrderIds = data['workOrderIds'];
    result$data['workOrderIds'] =
        (l$workOrderIds as List<dynamic>).map((e) => (e as String)).toList();
    return Input$ExportPdfForCompletedJobsFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get workOrderIds => (_$data['workOrderIds'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$workOrderIds = workOrderIds;
    result$data['workOrderIds'] = l$workOrderIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$ExportPdfForCompletedJobsFilterInput<
          Input$ExportPdfForCompletedJobsFilterInput>
      get copyWith => CopyWith$Input$ExportPdfForCompletedJobsFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ExportPdfForCompletedJobsFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$workOrderIds = workOrderIds;
    final lOther$workOrderIds = other.workOrderIds;
    if (l$workOrderIds.length != lOther$workOrderIds.length) {
      return false;
    }
    for (int i = 0; i < l$workOrderIds.length; i++) {
      final l$workOrderIds$entry = l$workOrderIds[i];
      final lOther$workOrderIds$entry = lOther$workOrderIds[i];
      if (l$workOrderIds$entry != lOther$workOrderIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$workOrderIds = workOrderIds;
    return Object.hashAll([Object.hashAll(l$workOrderIds.map((v) => v))]);
  }
}

abstract class CopyWith$Input$ExportPdfForCompletedJobsFilterInput<TRes> {
  factory CopyWith$Input$ExportPdfForCompletedJobsFilterInput(
    Input$ExportPdfForCompletedJobsFilterInput instance,
    TRes Function(Input$ExportPdfForCompletedJobsFilterInput) then,
  ) = _CopyWithImpl$Input$ExportPdfForCompletedJobsFilterInput;

  factory CopyWith$Input$ExportPdfForCompletedJobsFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ExportPdfForCompletedJobsFilterInput;

  TRes call({List<String>? workOrderIds});
}

class _CopyWithImpl$Input$ExportPdfForCompletedJobsFilterInput<TRes>
    implements CopyWith$Input$ExportPdfForCompletedJobsFilterInput<TRes> {
  _CopyWithImpl$Input$ExportPdfForCompletedJobsFilterInput(
    this._instance,
    this._then,
  );

  final Input$ExportPdfForCompletedJobsFilterInput _instance;

  final TRes Function(Input$ExportPdfForCompletedJobsFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? workOrderIds = _undefined}) =>
      _then(Input$ExportPdfForCompletedJobsFilterInput._({
        ..._instance._$data,
        if (workOrderIds != _undefined && workOrderIds != null)
          'workOrderIds': (workOrderIds as List<String>),
      }));
}

class _CopyWithStubImpl$Input$ExportPdfForCompletedJobsFilterInput<TRes>
    implements CopyWith$Input$ExportPdfForCompletedJobsFilterInput<TRes> {
  _CopyWithStubImpl$Input$ExportPdfForCompletedJobsFilterInput(this._res);

  TRes _res;

  call({List<String>? workOrderIds}) => _res;
}

class Input$CreateAdhocTemplateRequestInput {
  factory Input$CreateAdhocTemplateRequestInput({
    String? referenceId,
    String? description,
    required bool isQuickTemplate,
    required List<Input$TemplateSectionInput> sections,
  }) =>
      Input$CreateAdhocTemplateRequestInput._({
        if (referenceId != null) r'referenceId': referenceId,
        if (description != null) r'description': description,
        r'isQuickTemplate': isQuickTemplate,
        r'sections': sections,
      });

  Input$CreateAdhocTemplateRequestInput._(this._$data);

  factory Input$CreateAdhocTemplateRequestInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('referenceId')) {
      final l$referenceId = data['referenceId'];
      result$data['referenceId'] = (l$referenceId as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    final l$isQuickTemplate = data['isQuickTemplate'];
    result$data['isQuickTemplate'] = (l$isQuickTemplate as bool);
    final l$sections = data['sections'];
    result$data['sections'] = (l$sections as List<dynamic>)
        .map((e) =>
            Input$TemplateSectionInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Input$CreateAdhocTemplateRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get referenceId => (_$data['referenceId'] as String?);

  String? get description => (_$data['description'] as String?);

  bool get isQuickTemplate => (_$data['isQuickTemplate'] as bool);

  List<Input$TemplateSectionInput> get sections =>
      (_$data['sections'] as List<Input$TemplateSectionInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('referenceId')) {
      final l$referenceId = referenceId;
      result$data['referenceId'] = l$referenceId;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    final l$isQuickTemplate = isQuickTemplate;
    result$data['isQuickTemplate'] = l$isQuickTemplate;
    final l$sections = sections;
    result$data['sections'] = l$sections.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Input$CreateAdhocTemplateRequestInput<
          Input$CreateAdhocTemplateRequestInput>
      get copyWith => CopyWith$Input$CreateAdhocTemplateRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateAdhocTemplateRequestInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$referenceId = referenceId;
    final lOther$referenceId = other.referenceId;
    if (_$data.containsKey('referenceId') !=
        other._$data.containsKey('referenceId')) {
      return false;
    }
    if (l$referenceId != lOther$referenceId) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$isQuickTemplate = isQuickTemplate;
    final lOther$isQuickTemplate = other.isQuickTemplate;
    if (l$isQuickTemplate != lOther$isQuickTemplate) {
      return false;
    }
    final l$sections = sections;
    final lOther$sections = other.sections;
    if (l$sections.length != lOther$sections.length) {
      return false;
    }
    for (int i = 0; i < l$sections.length; i++) {
      final l$sections$entry = l$sections[i];
      final lOther$sections$entry = lOther$sections[i];
      if (l$sections$entry != lOther$sections$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$referenceId = referenceId;
    final l$description = description;
    final l$isQuickTemplate = isQuickTemplate;
    final l$sections = sections;
    return Object.hashAll([
      _$data.containsKey('referenceId') ? l$referenceId : const {},
      _$data.containsKey('description') ? l$description : const {},
      l$isQuickTemplate,
      Object.hashAll(l$sections.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$CreateAdhocTemplateRequestInput<TRes> {
  factory CopyWith$Input$CreateAdhocTemplateRequestInput(
    Input$CreateAdhocTemplateRequestInput instance,
    TRes Function(Input$CreateAdhocTemplateRequestInput) then,
  ) = _CopyWithImpl$Input$CreateAdhocTemplateRequestInput;

  factory CopyWith$Input$CreateAdhocTemplateRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateAdhocTemplateRequestInput;

  TRes call({
    String? referenceId,
    String? description,
    bool? isQuickTemplate,
    List<Input$TemplateSectionInput>? sections,
  });
  TRes sections(
      Iterable<Input$TemplateSectionInput> Function(
              Iterable<
                  CopyWith$Input$TemplateSectionInput<
                      Input$TemplateSectionInput>>)
          _fn);
}

class _CopyWithImpl$Input$CreateAdhocTemplateRequestInput<TRes>
    implements CopyWith$Input$CreateAdhocTemplateRequestInput<TRes> {
  _CopyWithImpl$Input$CreateAdhocTemplateRequestInput(
    this._instance,
    this._then,
  );

  final Input$CreateAdhocTemplateRequestInput _instance;

  final TRes Function(Input$CreateAdhocTemplateRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? referenceId = _undefined,
    Object? description = _undefined,
    Object? isQuickTemplate = _undefined,
    Object? sections = _undefined,
  }) =>
      _then(Input$CreateAdhocTemplateRequestInput._({
        ..._instance._$data,
        if (referenceId != _undefined) 'referenceId': (referenceId as String?),
        if (description != _undefined) 'description': (description as String?),
        if (isQuickTemplate != _undefined && isQuickTemplate != null)
          'isQuickTemplate': (isQuickTemplate as bool),
        if (sections != _undefined && sections != null)
          'sections': (sections as List<Input$TemplateSectionInput>),
      }));

  TRes sections(
          Iterable<Input$TemplateSectionInput> Function(
                  Iterable<
                      CopyWith$Input$TemplateSectionInput<
                          Input$TemplateSectionInput>>)
              _fn) =>
      call(
          sections: _fn(
              _instance.sections.map((e) => CopyWith$Input$TemplateSectionInput(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Input$CreateAdhocTemplateRequestInput<TRes>
    implements CopyWith$Input$CreateAdhocTemplateRequestInput<TRes> {
  _CopyWithStubImpl$Input$CreateAdhocTemplateRequestInput(this._res);

  TRes _res;

  call({
    String? referenceId,
    String? description,
    bool? isQuickTemplate,
    List<Input$TemplateSectionInput>? sections,
  }) =>
      _res;

  sections(_fn) => _res;
}

class Input$SearchQueryFilterInput {
  factory Input$SearchQueryFilterInput({
    String? searchText,
    required bool includeAll,
  }) =>
      Input$SearchQueryFilterInput._({
        if (searchText != null) r'searchText': searchText,
        r'includeAll': includeAll,
      });

  Input$SearchQueryFilterInput._(this._$data);

  factory Input$SearchQueryFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = (l$searchText as String?);
    }
    final l$includeAll = data['includeAll'];
    result$data['includeAll'] = (l$includeAll as bool);
    return Input$SearchQueryFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get searchText => (_$data['searchText'] as String?);

  bool get includeAll => (_$data['includeAll'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText;
    }
    final l$includeAll = includeAll;
    result$data['includeAll'] = l$includeAll;
    return result$data;
  }

  CopyWith$Input$SearchQueryFilterInput<Input$SearchQueryFilterInput>
      get copyWith => CopyWith$Input$SearchQueryFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SearchQueryFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    final l$includeAll = includeAll;
    final lOther$includeAll = other.includeAll;
    if (l$includeAll != lOther$includeAll) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$searchText = searchText;
    final l$includeAll = includeAll;
    return Object.hashAll([
      _$data.containsKey('searchText') ? l$searchText : const {},
      l$includeAll,
    ]);
  }
}

abstract class CopyWith$Input$SearchQueryFilterInput<TRes> {
  factory CopyWith$Input$SearchQueryFilterInput(
    Input$SearchQueryFilterInput instance,
    TRes Function(Input$SearchQueryFilterInput) then,
  ) = _CopyWithImpl$Input$SearchQueryFilterInput;

  factory CopyWith$Input$SearchQueryFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SearchQueryFilterInput;

  TRes call({
    String? searchText,
    bool? includeAll,
  });
}

class _CopyWithImpl$Input$SearchQueryFilterInput<TRes>
    implements CopyWith$Input$SearchQueryFilterInput<TRes> {
  _CopyWithImpl$Input$SearchQueryFilterInput(
    this._instance,
    this._then,
  );

  final Input$SearchQueryFilterInput _instance;

  final TRes Function(Input$SearchQueryFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchText = _undefined,
    Object? includeAll = _undefined,
  }) =>
      _then(Input$SearchQueryFilterInput._({
        ..._instance._$data,
        if (searchText != _undefined) 'searchText': (searchText as String?),
        if (includeAll != _undefined && includeAll != null)
          'includeAll': (includeAll as bool),
      }));
}

class _CopyWithStubImpl$Input$SearchQueryFilterInput<TRes>
    implements CopyWith$Input$SearchQueryFilterInput<TRes> {
  _CopyWithStubImpl$Input$SearchQueryFilterInput(this._res);

  TRes _res;

  call({
    String? searchText,
    bool? includeAll,
  }) =>
      _res;
}

class Input$WorkRequestInfoInput {
  factory Input$WorkRequestInfoInput({
    String? companyCode,
    String? description,
    String? requestType,
    String? userNotes,
    String? assetCode,
    required int serviceLevel,
    String? user,
    String? faultSymptom,
    String? cMMSId,
    required DateTime createdDate,
    List<Input$MediaItemInput>? attachments,
  }) =>
      Input$WorkRequestInfoInput._({
        if (companyCode != null) r'companyCode': companyCode,
        if (description != null) r'description': description,
        if (requestType != null) r'requestType': requestType,
        if (userNotes != null) r'userNotes': userNotes,
        if (assetCode != null) r'assetCode': assetCode,
        r'serviceLevel': serviceLevel,
        if (user != null) r'user': user,
        if (faultSymptom != null) r'faultSymptom': faultSymptom,
        if (cMMSId != null) r'cMMSId': cMMSId,
        r'createdDate': createdDate,
        if (attachments != null) r'attachments': attachments,
      });

  Input$WorkRequestInfoInput._(this._$data);

  factory Input$WorkRequestInfoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('companyCode')) {
      final l$companyCode = data['companyCode'];
      result$data['companyCode'] = (l$companyCode as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('requestType')) {
      final l$requestType = data['requestType'];
      result$data['requestType'] = (l$requestType as String?);
    }
    if (data.containsKey('userNotes')) {
      final l$userNotes = data['userNotes'];
      result$data['userNotes'] = (l$userNotes as String?);
    }
    if (data.containsKey('assetCode')) {
      final l$assetCode = data['assetCode'];
      result$data['assetCode'] = (l$assetCode as String?);
    }
    final l$serviceLevel = data['serviceLevel'];
    result$data['serviceLevel'] = (l$serviceLevel as int);
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = (l$user as String?);
    }
    if (data.containsKey('faultSymptom')) {
      final l$faultSymptom = data['faultSymptom'];
      result$data['faultSymptom'] = (l$faultSymptom as String?);
    }
    if (data.containsKey('cMMSId')) {
      final l$cMMSId = data['cMMSId'];
      result$data['cMMSId'] = (l$cMMSId as String?);
    }
    final l$createdDate = data['createdDate'];
    result$data['createdDate'] = DateTime.parse((l$createdDate as String));
    if (data.containsKey('attachments')) {
      final l$attachments = data['attachments'];
      result$data['attachments'] = (l$attachments as List<dynamic>?)
          ?.map(
              (e) => Input$MediaItemInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$WorkRequestInfoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get companyCode => (_$data['companyCode'] as String?);

  String? get description => (_$data['description'] as String?);

  String? get requestType => (_$data['requestType'] as String?);

  String? get userNotes => (_$data['userNotes'] as String?);

  String? get assetCode => (_$data['assetCode'] as String?);

  int get serviceLevel => (_$data['serviceLevel'] as int);

  String? get user => (_$data['user'] as String?);

  String? get faultSymptom => (_$data['faultSymptom'] as String?);

  String? get cMMSId => (_$data['cMMSId'] as String?);

  DateTime get createdDate => (_$data['createdDate'] as DateTime);

  List<Input$MediaItemInput>? get attachments =>
      (_$data['attachments'] as List<Input$MediaItemInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('companyCode')) {
      final l$companyCode = companyCode;
      result$data['companyCode'] = l$companyCode;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('requestType')) {
      final l$requestType = requestType;
      result$data['requestType'] = l$requestType;
    }
    if (_$data.containsKey('userNotes')) {
      final l$userNotes = userNotes;
      result$data['userNotes'] = l$userNotes;
    }
    if (_$data.containsKey('assetCode')) {
      final l$assetCode = assetCode;
      result$data['assetCode'] = l$assetCode;
    }
    final l$serviceLevel = serviceLevel;
    result$data['serviceLevel'] = l$serviceLevel;
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user;
    }
    if (_$data.containsKey('faultSymptom')) {
      final l$faultSymptom = faultSymptom;
      result$data['faultSymptom'] = l$faultSymptom;
    }
    if (_$data.containsKey('cMMSId')) {
      final l$cMMSId = cMMSId;
      result$data['cMMSId'] = l$cMMSId;
    }
    final l$createdDate = createdDate;
    result$data['createdDate'] = l$createdDate.toIso8601String();
    if (_$data.containsKey('attachments')) {
      final l$attachments = attachments;
      result$data['attachments'] =
          l$attachments?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$WorkRequestInfoInput<Input$WorkRequestInfoInput>
      get copyWith => CopyWith$Input$WorkRequestInfoInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$WorkRequestInfoInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (_$data.containsKey('companyCode') !=
        other._$data.containsKey('companyCode')) {
      return false;
    }
    if (l$companyCode != lOther$companyCode) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$requestType = requestType;
    final lOther$requestType = other.requestType;
    if (_$data.containsKey('requestType') !=
        other._$data.containsKey('requestType')) {
      return false;
    }
    if (l$requestType != lOther$requestType) {
      return false;
    }
    final l$userNotes = userNotes;
    final lOther$userNotes = other.userNotes;
    if (_$data.containsKey('userNotes') !=
        other._$data.containsKey('userNotes')) {
      return false;
    }
    if (l$userNotes != lOther$userNotes) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (_$data.containsKey('assetCode') !=
        other._$data.containsKey('assetCode')) {
      return false;
    }
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    final l$serviceLevel = serviceLevel;
    final lOther$serviceLevel = other.serviceLevel;
    if (l$serviceLevel != lOther$serviceLevel) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    final l$faultSymptom = faultSymptom;
    final lOther$faultSymptom = other.faultSymptom;
    if (_$data.containsKey('faultSymptom') !=
        other._$data.containsKey('faultSymptom')) {
      return false;
    }
    if (l$faultSymptom != lOther$faultSymptom) {
      return false;
    }
    final l$cMMSId = cMMSId;
    final lOther$cMMSId = other.cMMSId;
    if (_$data.containsKey('cMMSId') != other._$data.containsKey('cMMSId')) {
      return false;
    }
    if (l$cMMSId != lOther$cMMSId) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
      return false;
    }
    final l$attachments = attachments;
    final lOther$attachments = other.attachments;
    if (_$data.containsKey('attachments') !=
        other._$data.containsKey('attachments')) {
      return false;
    }
    if (l$attachments != null && lOther$attachments != null) {
      if (l$attachments.length != lOther$attachments.length) {
        return false;
      }
      for (int i = 0; i < l$attachments.length; i++) {
        final l$attachments$entry = l$attachments[i];
        final lOther$attachments$entry = lOther$attachments[i];
        if (l$attachments$entry != lOther$attachments$entry) {
          return false;
        }
      }
    } else if (l$attachments != lOther$attachments) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$companyCode = companyCode;
    final l$description = description;
    final l$requestType = requestType;
    final l$userNotes = userNotes;
    final l$assetCode = assetCode;
    final l$serviceLevel = serviceLevel;
    final l$user = user;
    final l$faultSymptom = faultSymptom;
    final l$cMMSId = cMMSId;
    final l$createdDate = createdDate;
    final l$attachments = attachments;
    return Object.hashAll([
      _$data.containsKey('companyCode') ? l$companyCode : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('requestType') ? l$requestType : const {},
      _$data.containsKey('userNotes') ? l$userNotes : const {},
      _$data.containsKey('assetCode') ? l$assetCode : const {},
      l$serviceLevel,
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('faultSymptom') ? l$faultSymptom : const {},
      _$data.containsKey('cMMSId') ? l$cMMSId : const {},
      l$createdDate,
      _$data.containsKey('attachments')
          ? l$attachments == null
              ? null
              : Object.hashAll(l$attachments.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$WorkRequestInfoInput<TRes> {
  factory CopyWith$Input$WorkRequestInfoInput(
    Input$WorkRequestInfoInput instance,
    TRes Function(Input$WorkRequestInfoInput) then,
  ) = _CopyWithImpl$Input$WorkRequestInfoInput;

  factory CopyWith$Input$WorkRequestInfoInput.stub(TRes res) =
      _CopyWithStubImpl$Input$WorkRequestInfoInput;

  TRes call({
    String? companyCode,
    String? description,
    String? requestType,
    String? userNotes,
    String? assetCode,
    int? serviceLevel,
    String? user,
    String? faultSymptom,
    String? cMMSId,
    DateTime? createdDate,
    List<Input$MediaItemInput>? attachments,
  });
  TRes attachments(
      Iterable<Input$MediaItemInput>? Function(
              Iterable<CopyWith$Input$MediaItemInput<Input$MediaItemInput>>?)
          _fn);
}

class _CopyWithImpl$Input$WorkRequestInfoInput<TRes>
    implements CopyWith$Input$WorkRequestInfoInput<TRes> {
  _CopyWithImpl$Input$WorkRequestInfoInput(
    this._instance,
    this._then,
  );

  final Input$WorkRequestInfoInput _instance;

  final TRes Function(Input$WorkRequestInfoInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? companyCode = _undefined,
    Object? description = _undefined,
    Object? requestType = _undefined,
    Object? userNotes = _undefined,
    Object? assetCode = _undefined,
    Object? serviceLevel = _undefined,
    Object? user = _undefined,
    Object? faultSymptom = _undefined,
    Object? cMMSId = _undefined,
    Object? createdDate = _undefined,
    Object? attachments = _undefined,
  }) =>
      _then(Input$WorkRequestInfoInput._({
        ..._instance._$data,
        if (companyCode != _undefined) 'companyCode': (companyCode as String?),
        if (description != _undefined) 'description': (description as String?),
        if (requestType != _undefined) 'requestType': (requestType as String?),
        if (userNotes != _undefined) 'userNotes': (userNotes as String?),
        if (assetCode != _undefined) 'assetCode': (assetCode as String?),
        if (serviceLevel != _undefined && serviceLevel != null)
          'serviceLevel': (serviceLevel as int),
        if (user != _undefined) 'user': (user as String?),
        if (faultSymptom != _undefined)
          'faultSymptom': (faultSymptom as String?),
        if (cMMSId != _undefined) 'cMMSId': (cMMSId as String?),
        if (createdDate != _undefined && createdDate != null)
          'createdDate': (createdDate as DateTime),
        if (attachments != _undefined)
          'attachments': (attachments as List<Input$MediaItemInput>?),
      }));

  TRes attachments(
          Iterable<Input$MediaItemInput>? Function(
                  Iterable<
                      CopyWith$Input$MediaItemInput<Input$MediaItemInput>>?)
              _fn) =>
      call(
          attachments: _fn(
              _instance.attachments?.map((e) => CopyWith$Input$MediaItemInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$WorkRequestInfoInput<TRes>
    implements CopyWith$Input$WorkRequestInfoInput<TRes> {
  _CopyWithStubImpl$Input$WorkRequestInfoInput(this._res);

  TRes _res;

  call({
    String? companyCode,
    String? description,
    String? requestType,
    String? userNotes,
    String? assetCode,
    int? serviceLevel,
    String? user,
    String? faultSymptom,
    String? cMMSId,
    DateTime? createdDate,
    List<Input$MediaItemInput>? attachments,
  }) =>
      _res;

  attachments(_fn) => _res;
}

class Input$InstanceSaveRequestInput {
  factory Input$InstanceSaveRequestInput({
    required String id,
    String? document,
    required String scheduledItemId,
  }) =>
      Input$InstanceSaveRequestInput._({
        r'id': id,
        if (document != null) r'document': document,
        r'scheduledItemId': scheduledItemId,
      });

  Input$InstanceSaveRequestInput._(this._$data);

  factory Input$InstanceSaveRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('document')) {
      final l$document = data['document'];
      result$data['document'] = (l$document as String?);
    }
    final l$scheduledItemId = data['scheduledItemId'];
    result$data['scheduledItemId'] = (l$scheduledItemId as String);
    return Input$InstanceSaveRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String? get document => (_$data['document'] as String?);

  String get scheduledItemId => (_$data['scheduledItemId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('document')) {
      final l$document = document;
      result$data['document'] = l$document;
    }
    final l$scheduledItemId = scheduledItemId;
    result$data['scheduledItemId'] = l$scheduledItemId;
    return result$data;
  }

  CopyWith$Input$InstanceSaveRequestInput<Input$InstanceSaveRequestInput>
      get copyWith => CopyWith$Input$InstanceSaveRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$InstanceSaveRequestInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$document = document;
    final lOther$document = other.document;
    if (_$data.containsKey('document') !=
        other._$data.containsKey('document')) {
      return false;
    }
    if (l$document != lOther$document) {
      return false;
    }
    final l$scheduledItemId = scheduledItemId;
    final lOther$scheduledItemId = other.scheduledItemId;
    if (l$scheduledItemId != lOther$scheduledItemId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$document = document;
    final l$scheduledItemId = scheduledItemId;
    return Object.hashAll([
      l$id,
      _$data.containsKey('document') ? l$document : const {},
      l$scheduledItemId,
    ]);
  }
}

abstract class CopyWith$Input$InstanceSaveRequestInput<TRes> {
  factory CopyWith$Input$InstanceSaveRequestInput(
    Input$InstanceSaveRequestInput instance,
    TRes Function(Input$InstanceSaveRequestInput) then,
  ) = _CopyWithImpl$Input$InstanceSaveRequestInput;

  factory CopyWith$Input$InstanceSaveRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$InstanceSaveRequestInput;

  TRes call({
    String? id,
    String? document,
    String? scheduledItemId,
  });
}

class _CopyWithImpl$Input$InstanceSaveRequestInput<TRes>
    implements CopyWith$Input$InstanceSaveRequestInput<TRes> {
  _CopyWithImpl$Input$InstanceSaveRequestInput(
    this._instance,
    this._then,
  );

  final Input$InstanceSaveRequestInput _instance;

  final TRes Function(Input$InstanceSaveRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? document = _undefined,
    Object? scheduledItemId = _undefined,
  }) =>
      _then(Input$InstanceSaveRequestInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (document != _undefined) 'document': (document as String?),
        if (scheduledItemId != _undefined && scheduledItemId != null)
          'scheduledItemId': (scheduledItemId as String),
      }));
}

class _CopyWithStubImpl$Input$InstanceSaveRequestInput<TRes>
    implements CopyWith$Input$InstanceSaveRequestInput<TRes> {
  _CopyWithStubImpl$Input$InstanceSaveRequestInput(this._res);

  TRes _res;

  call({
    String? id,
    String? document,
    String? scheduledItemId,
  }) =>
      _res;
}

class Input$MediaItemInput {
  factory Input$MediaItemInput({
    required String id,
    required Enum$MediaTypeId mediaType,
    String? mediaPath,
    String? thumbnailPath,
    required bool isUploaded,
    String? createdBy,
    required DateTime createdDate,
    DateTime? uploadDate,
  }) =>
      Input$MediaItemInput._({
        r'id': id,
        r'mediaType': mediaType,
        if (mediaPath != null) r'mediaPath': mediaPath,
        if (thumbnailPath != null) r'thumbnailPath': thumbnailPath,
        r'isUploaded': isUploaded,
        if (createdBy != null) r'createdBy': createdBy,
        r'createdDate': createdDate,
        if (uploadDate != null) r'uploadDate': uploadDate,
      });

  Input$MediaItemInput._(this._$data);

  factory Input$MediaItemInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$mediaType = data['mediaType'];
    result$data['mediaType'] =
        fromJson$Enum$MediaTypeId((l$mediaType as String));
    if (data.containsKey('mediaPath')) {
      final l$mediaPath = data['mediaPath'];
      result$data['mediaPath'] = (l$mediaPath as String?);
    }
    if (data.containsKey('thumbnailPath')) {
      final l$thumbnailPath = data['thumbnailPath'];
      result$data['thumbnailPath'] = (l$thumbnailPath as String?);
    }
    final l$isUploaded = data['isUploaded'];
    result$data['isUploaded'] = (l$isUploaded as bool);
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    final l$createdDate = data['createdDate'];
    result$data['createdDate'] = DateTime.parse((l$createdDate as String));
    if (data.containsKey('uploadDate')) {
      final l$uploadDate = data['uploadDate'];
      result$data['uploadDate'] = l$uploadDate == null
          ? null
          : DateTime.parse((l$uploadDate as String));
    }
    return Input$MediaItemInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Enum$MediaTypeId get mediaType => (_$data['mediaType'] as Enum$MediaTypeId);

  String? get mediaPath => (_$data['mediaPath'] as String?);

  String? get thumbnailPath => (_$data['thumbnailPath'] as String?);

  bool get isUploaded => (_$data['isUploaded'] as bool);

  String? get createdBy => (_$data['createdBy'] as String?);

  DateTime get createdDate => (_$data['createdDate'] as DateTime);

  DateTime? get uploadDate => (_$data['uploadDate'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$mediaType = mediaType;
    result$data['mediaType'] = toJson$Enum$MediaTypeId(l$mediaType);
    if (_$data.containsKey('mediaPath')) {
      final l$mediaPath = mediaPath;
      result$data['mediaPath'] = l$mediaPath;
    }
    if (_$data.containsKey('thumbnailPath')) {
      final l$thumbnailPath = thumbnailPath;
      result$data['thumbnailPath'] = l$thumbnailPath;
    }
    final l$isUploaded = isUploaded;
    result$data['isUploaded'] = l$isUploaded;
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    final l$createdDate = createdDate;
    result$data['createdDate'] = l$createdDate.toIso8601String();
    if (_$data.containsKey('uploadDate')) {
      final l$uploadDate = uploadDate;
      result$data['uploadDate'] = l$uploadDate?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$MediaItemInput<Input$MediaItemInput> get copyWith =>
      CopyWith$Input$MediaItemInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$MediaItemInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$mediaType = mediaType;
    final lOther$mediaType = other.mediaType;
    if (l$mediaType != lOther$mediaType) {
      return false;
    }
    final l$mediaPath = mediaPath;
    final lOther$mediaPath = other.mediaPath;
    if (_$data.containsKey('mediaPath') !=
        other._$data.containsKey('mediaPath')) {
      return false;
    }
    if (l$mediaPath != lOther$mediaPath) {
      return false;
    }
    final l$thumbnailPath = thumbnailPath;
    final lOther$thumbnailPath = other.thumbnailPath;
    if (_$data.containsKey('thumbnailPath') !=
        other._$data.containsKey('thumbnailPath')) {
      return false;
    }
    if (l$thumbnailPath != lOther$thumbnailPath) {
      return false;
    }
    final l$isUploaded = isUploaded;
    final lOther$isUploaded = other.isUploaded;
    if (l$isUploaded != lOther$isUploaded) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
      return false;
    }
    final l$uploadDate = uploadDate;
    final lOther$uploadDate = other.uploadDate;
    if (_$data.containsKey('uploadDate') !=
        other._$data.containsKey('uploadDate')) {
      return false;
    }
    if (l$uploadDate != lOther$uploadDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$mediaType = mediaType;
    final l$mediaPath = mediaPath;
    final l$thumbnailPath = thumbnailPath;
    final l$isUploaded = isUploaded;
    final l$createdBy = createdBy;
    final l$createdDate = createdDate;
    final l$uploadDate = uploadDate;
    return Object.hashAll([
      l$id,
      l$mediaType,
      _$data.containsKey('mediaPath') ? l$mediaPath : const {},
      _$data.containsKey('thumbnailPath') ? l$thumbnailPath : const {},
      l$isUploaded,
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      l$createdDate,
      _$data.containsKey('uploadDate') ? l$uploadDate : const {},
    ]);
  }
}

abstract class CopyWith$Input$MediaItemInput<TRes> {
  factory CopyWith$Input$MediaItemInput(
    Input$MediaItemInput instance,
    TRes Function(Input$MediaItemInput) then,
  ) = _CopyWithImpl$Input$MediaItemInput;

  factory CopyWith$Input$MediaItemInput.stub(TRes res) =
      _CopyWithStubImpl$Input$MediaItemInput;

  TRes call({
    String? id,
    Enum$MediaTypeId? mediaType,
    String? mediaPath,
    String? thumbnailPath,
    bool? isUploaded,
    String? createdBy,
    DateTime? createdDate,
    DateTime? uploadDate,
  });
}

class _CopyWithImpl$Input$MediaItemInput<TRes>
    implements CopyWith$Input$MediaItemInput<TRes> {
  _CopyWithImpl$Input$MediaItemInput(
    this._instance,
    this._then,
  );

  final Input$MediaItemInput _instance;

  final TRes Function(Input$MediaItemInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? mediaType = _undefined,
    Object? mediaPath = _undefined,
    Object? thumbnailPath = _undefined,
    Object? isUploaded = _undefined,
    Object? createdBy = _undefined,
    Object? createdDate = _undefined,
    Object? uploadDate = _undefined,
  }) =>
      _then(Input$MediaItemInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (mediaType != _undefined && mediaType != null)
          'mediaType': (mediaType as Enum$MediaTypeId),
        if (mediaPath != _undefined) 'mediaPath': (mediaPath as String?),
        if (thumbnailPath != _undefined)
          'thumbnailPath': (thumbnailPath as String?),
        if (isUploaded != _undefined && isUploaded != null)
          'isUploaded': (isUploaded as bool),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (createdDate != _undefined && createdDate != null)
          'createdDate': (createdDate as DateTime),
        if (uploadDate != _undefined) 'uploadDate': (uploadDate as DateTime?),
      }));
}

class _CopyWithStubImpl$Input$MediaItemInput<TRes>
    implements CopyWith$Input$MediaItemInput<TRes> {
  _CopyWithStubImpl$Input$MediaItemInput(this._res);

  TRes _res;

  call({
    String? id,
    Enum$MediaTypeId? mediaType,
    String? mediaPath,
    String? thumbnailPath,
    bool? isUploaded,
    String? createdBy,
    DateTime? createdDate,
    DateTime? uploadDate,
  }) =>
      _res;
}

class Input$TemplateSectionInput {
  factory Input$TemplateSectionInput({
    String? title,
    List<Input$TemplateQuestionsInput>? questions,
  }) =>
      Input$TemplateSectionInput._({
        if (title != null) r'title': title,
        if (questions != null) r'questions': questions,
      });

  Input$TemplateSectionInput._(this._$data);

  factory Input$TemplateSectionInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('questions')) {
      final l$questions = data['questions'];
      result$data['questions'] = (l$questions as List<dynamic>?)
          ?.map((e) => Input$TemplateQuestionsInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$TemplateSectionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get title => (_$data['title'] as String?);

  List<Input$TemplateQuestionsInput>? get questions =>
      (_$data['questions'] as List<Input$TemplateQuestionsInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('questions')) {
      final l$questions = questions;
      result$data['questions'] = l$questions?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$TemplateSectionInput<Input$TemplateSectionInput>
      get copyWith => CopyWith$Input$TemplateSectionInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TemplateSectionInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$questions = questions;
    final lOther$questions = other.questions;
    if (_$data.containsKey('questions') !=
        other._$data.containsKey('questions')) {
      return false;
    }
    if (l$questions != null && lOther$questions != null) {
      if (l$questions.length != lOther$questions.length) {
        return false;
      }
      for (int i = 0; i < l$questions.length; i++) {
        final l$questions$entry = l$questions[i];
        final lOther$questions$entry = lOther$questions[i];
        if (l$questions$entry != lOther$questions$entry) {
          return false;
        }
      }
    } else if (l$questions != lOther$questions) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$questions = questions;
    return Object.hashAll([
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('questions')
          ? l$questions == null
              ? null
              : Object.hashAll(l$questions.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$TemplateSectionInput<TRes> {
  factory CopyWith$Input$TemplateSectionInput(
    Input$TemplateSectionInput instance,
    TRes Function(Input$TemplateSectionInput) then,
  ) = _CopyWithImpl$Input$TemplateSectionInput;

  factory CopyWith$Input$TemplateSectionInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TemplateSectionInput;

  TRes call({
    String? title,
    List<Input$TemplateQuestionsInput>? questions,
  });
  TRes questions(
      Iterable<Input$TemplateQuestionsInput>? Function(
              Iterable<
                  CopyWith$Input$TemplateQuestionsInput<
                      Input$TemplateQuestionsInput>>?)
          _fn);
}

class _CopyWithImpl$Input$TemplateSectionInput<TRes>
    implements CopyWith$Input$TemplateSectionInput<TRes> {
  _CopyWithImpl$Input$TemplateSectionInput(
    this._instance,
    this._then,
  );

  final Input$TemplateSectionInput _instance;

  final TRes Function(Input$TemplateSectionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? questions = _undefined,
  }) =>
      _then(Input$TemplateSectionInput._({
        ..._instance._$data,
        if (title != _undefined) 'title': (title as String?),
        if (questions != _undefined)
          'questions': (questions as List<Input$TemplateQuestionsInput>?),
      }));

  TRes questions(
          Iterable<Input$TemplateQuestionsInput>? Function(
                  Iterable<
                      CopyWith$Input$TemplateQuestionsInput<
                          Input$TemplateQuestionsInput>>?)
              _fn) =>
      call(
          questions: _fn(_instance.questions
              ?.map((e) => CopyWith$Input$TemplateQuestionsInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$TemplateSectionInput<TRes>
    implements CopyWith$Input$TemplateSectionInput<TRes> {
  _CopyWithStubImpl$Input$TemplateSectionInput(this._res);

  TRes _res;

  call({
    String? title,
    List<Input$TemplateQuestionsInput>? questions,
  }) =>
      _res;

  questions(_fn) => _res;
}

class Input$FormQueryAssetFilterInput {
  factory Input$FormQueryAssetFilterInput({
    String? assetCode,
    String? jobType,
  }) =>
      Input$FormQueryAssetFilterInput._({
        if (assetCode != null) r'assetCode': assetCode,
        if (jobType != null) r'jobType': jobType,
      });

  Input$FormQueryAssetFilterInput._(this._$data);

  factory Input$FormQueryAssetFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('assetCode')) {
      final l$assetCode = data['assetCode'];
      result$data['assetCode'] = (l$assetCode as String?);
    }
    if (data.containsKey('jobType')) {
      final l$jobType = data['jobType'];
      result$data['jobType'] = (l$jobType as String?);
    }
    return Input$FormQueryAssetFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get assetCode => (_$data['assetCode'] as String?);

  String? get jobType => (_$data['jobType'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('assetCode')) {
      final l$assetCode = assetCode;
      result$data['assetCode'] = l$assetCode;
    }
    if (_$data.containsKey('jobType')) {
      final l$jobType = jobType;
      result$data['jobType'] = l$jobType;
    }
    return result$data;
  }

  CopyWith$Input$FormQueryAssetFilterInput<Input$FormQueryAssetFilterInput>
      get copyWith => CopyWith$Input$FormQueryAssetFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FormQueryAssetFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (_$data.containsKey('assetCode') !=
        other._$data.containsKey('assetCode')) {
      return false;
    }
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    final l$jobType = jobType;
    final lOther$jobType = other.jobType;
    if (_$data.containsKey('jobType') != other._$data.containsKey('jobType')) {
      return false;
    }
    if (l$jobType != lOther$jobType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$assetCode = assetCode;
    final l$jobType = jobType;
    return Object.hashAll([
      _$data.containsKey('assetCode') ? l$assetCode : const {},
      _$data.containsKey('jobType') ? l$jobType : const {},
    ]);
  }
}

abstract class CopyWith$Input$FormQueryAssetFilterInput<TRes> {
  factory CopyWith$Input$FormQueryAssetFilterInput(
    Input$FormQueryAssetFilterInput instance,
    TRes Function(Input$FormQueryAssetFilterInput) then,
  ) = _CopyWithImpl$Input$FormQueryAssetFilterInput;

  factory CopyWith$Input$FormQueryAssetFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FormQueryAssetFilterInput;

  TRes call({
    String? assetCode,
    String? jobType,
  });
}

class _CopyWithImpl$Input$FormQueryAssetFilterInput<TRes>
    implements CopyWith$Input$FormQueryAssetFilterInput<TRes> {
  _CopyWithImpl$Input$FormQueryAssetFilterInput(
    this._instance,
    this._then,
  );

  final Input$FormQueryAssetFilterInput _instance;

  final TRes Function(Input$FormQueryAssetFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetCode = _undefined,
    Object? jobType = _undefined,
  }) =>
      _then(Input$FormQueryAssetFilterInput._({
        ..._instance._$data,
        if (assetCode != _undefined) 'assetCode': (assetCode as String?),
        if (jobType != _undefined) 'jobType': (jobType as String?),
      }));
}

class _CopyWithStubImpl$Input$FormQueryAssetFilterInput<TRes>
    implements CopyWith$Input$FormQueryAssetFilterInput<TRes> {
  _CopyWithStubImpl$Input$FormQueryAssetFilterInput(this._res);

  TRes _res;

  call({
    String? assetCode,
    String? jobType,
  }) =>
      _res;
}

class Input$TemplateQuestionsInput {
  factory Input$TemplateQuestionsInput({
    String? question,
    String? questionType,
    String? validator,
    String? labelColourWarning,
  }) =>
      Input$TemplateQuestionsInput._({
        if (question != null) r'question': question,
        if (questionType != null) r'questionType': questionType,
        if (validator != null) r'validator': validator,
        if (labelColourWarning != null)
          r'labelColourWarning': labelColourWarning,
      });

  Input$TemplateQuestionsInput._(this._$data);

  factory Input$TemplateQuestionsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('question')) {
      final l$question = data['question'];
      result$data['question'] = (l$question as String?);
    }
    if (data.containsKey('questionType')) {
      final l$questionType = data['questionType'];
      result$data['questionType'] = (l$questionType as String?);
    }
    if (data.containsKey('validator')) {
      final l$validator = data['validator'];
      result$data['validator'] = (l$validator as String?);
    }
    if (data.containsKey('labelColourWarning')) {
      final l$labelColourWarning = data['labelColourWarning'];
      result$data['labelColourWarning'] = (l$labelColourWarning as String?);
    }
    return Input$TemplateQuestionsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get question => (_$data['question'] as String?);

  String? get questionType => (_$data['questionType'] as String?);

  String? get validator => (_$data['validator'] as String?);

  String? get labelColourWarning => (_$data['labelColourWarning'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('question')) {
      final l$question = question;
      result$data['question'] = l$question;
    }
    if (_$data.containsKey('questionType')) {
      final l$questionType = questionType;
      result$data['questionType'] = l$questionType;
    }
    if (_$data.containsKey('validator')) {
      final l$validator = validator;
      result$data['validator'] = l$validator;
    }
    if (_$data.containsKey('labelColourWarning')) {
      final l$labelColourWarning = labelColourWarning;
      result$data['labelColourWarning'] = l$labelColourWarning;
    }
    return result$data;
  }

  CopyWith$Input$TemplateQuestionsInput<Input$TemplateQuestionsInput>
      get copyWith => CopyWith$Input$TemplateQuestionsInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TemplateQuestionsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$question = question;
    final lOther$question = other.question;
    if (_$data.containsKey('question') !=
        other._$data.containsKey('question')) {
      return false;
    }
    if (l$question != lOther$question) {
      return false;
    }
    final l$questionType = questionType;
    final lOther$questionType = other.questionType;
    if (_$data.containsKey('questionType') !=
        other._$data.containsKey('questionType')) {
      return false;
    }
    if (l$questionType != lOther$questionType) {
      return false;
    }
    final l$validator = validator;
    final lOther$validator = other.validator;
    if (_$data.containsKey('validator') !=
        other._$data.containsKey('validator')) {
      return false;
    }
    if (l$validator != lOther$validator) {
      return false;
    }
    final l$labelColourWarning = labelColourWarning;
    final lOther$labelColourWarning = other.labelColourWarning;
    if (_$data.containsKey('labelColourWarning') !=
        other._$data.containsKey('labelColourWarning')) {
      return false;
    }
    if (l$labelColourWarning != lOther$labelColourWarning) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$question = question;
    final l$questionType = questionType;
    final l$validator = validator;
    final l$labelColourWarning = labelColourWarning;
    return Object.hashAll([
      _$data.containsKey('question') ? l$question : const {},
      _$data.containsKey('questionType') ? l$questionType : const {},
      _$data.containsKey('validator') ? l$validator : const {},
      _$data.containsKey('labelColourWarning')
          ? l$labelColourWarning
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$TemplateQuestionsInput<TRes> {
  factory CopyWith$Input$TemplateQuestionsInput(
    Input$TemplateQuestionsInput instance,
    TRes Function(Input$TemplateQuestionsInput) then,
  ) = _CopyWithImpl$Input$TemplateQuestionsInput;

  factory CopyWith$Input$TemplateQuestionsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TemplateQuestionsInput;

  TRes call({
    String? question,
    String? questionType,
    String? validator,
    String? labelColourWarning,
  });
}

class _CopyWithImpl$Input$TemplateQuestionsInput<TRes>
    implements CopyWith$Input$TemplateQuestionsInput<TRes> {
  _CopyWithImpl$Input$TemplateQuestionsInput(
    this._instance,
    this._then,
  );

  final Input$TemplateQuestionsInput _instance;

  final TRes Function(Input$TemplateQuestionsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? question = _undefined,
    Object? questionType = _undefined,
    Object? validator = _undefined,
    Object? labelColourWarning = _undefined,
  }) =>
      _then(Input$TemplateQuestionsInput._({
        ..._instance._$data,
        if (question != _undefined) 'question': (question as String?),
        if (questionType != _undefined)
          'questionType': (questionType as String?),
        if (validator != _undefined) 'validator': (validator as String?),
        if (labelColourWarning != _undefined)
          'labelColourWarning': (labelColourWarning as String?),
      }));
}

class _CopyWithStubImpl$Input$TemplateQuestionsInput<TRes>
    implements CopyWith$Input$TemplateQuestionsInput<TRes> {
  _CopyWithStubImpl$Input$TemplateQuestionsInput(this._res);

  TRes _res;

  call({
    String? question,
    String? questionType,
    String? validator,
    String? labelColourWarning,
  }) =>
      _res;
}

enum Enum$Codes {
  FORM_INSTANCE_SAVE_FAILED,
  FORM_INSTANCE_SAVE_BLOCKED,
  FORM_INSTANCE_HISTORY_SAVE_FAILED,
  FORM_INSTANCE_ALREADY_EXISTS_FOR_SCHEDULED_ITEM,
  FORM_INSTANCE_RESET_FAILED,
  FORM_INSTANCE_MEDIA_UPLOAD_FAILED,
  FORM_INSTANCE_MEDIA_DOWNLOAD_FAILED,
  WORK_REQUEST_MEDIA_UPLOAD_FAILED,
  WORK_REQUEST_MEDIA_DOWNLOAD_FAILED,
  MEDIA_RECORD_UPDATE_FAILED,
  MEDIA_STORAGE_FAILED,
  MEDIA_STORAGE_RETRIEVAL_FAILED,
  WORK_REQUEST_CREATE_REQUEST_FAILED,
  ASSET_COUNTER_UPDATE_FAILED,
  TEMPLATE_MAPPING_FAILED,
  TEMPLATE_VERSION_ARCHIVING_FAILED,
  TEMPLATE_UPDATING_FAILED,
  TEMPLATE_YARD_MAPPING_FAILED,
  TEMPLATE_YARD_MAPPING_DELETE_FAILED,
  SCHEDULE_SAVE_FAILED,
  PDF_GENERATION_FAILED,
  FORM_INSTANCE_RETRIEVAL_FAILED,
  FORM_INSTANCE_FOR_WORK_ORDER_FAILED,
  NEW_WORK_ORDER_CREATION_FAILED,
  ASSIGN_WORK_ORDER_TO_USER_FAILED,
  RE_ASSIGN_WORK_ORDER_TO_USER_WITH_RESET_FAILED,
  ADHOC_TEMPLATE_CREATION_FAILED,
  $unknown
}

String toJson$Enum$Codes(Enum$Codes e) {
  switch (e) {
    case Enum$Codes.FORM_INSTANCE_SAVE_FAILED:
      return r'FORM_INSTANCE_SAVE_FAILED';
    case Enum$Codes.FORM_INSTANCE_SAVE_BLOCKED:
      return r'FORM_INSTANCE_SAVE_BLOCKED';
    case Enum$Codes.FORM_INSTANCE_HISTORY_SAVE_FAILED:
      return r'FORM_INSTANCE_HISTORY_SAVE_FAILED';
    case Enum$Codes.FORM_INSTANCE_ALREADY_EXISTS_FOR_SCHEDULED_ITEM:
      return r'FORM_INSTANCE_ALREADY_EXISTS_FOR_SCHEDULED_ITEM';
    case Enum$Codes.FORM_INSTANCE_RESET_FAILED:
      return r'FORM_INSTANCE_RESET_FAILED';
    case Enum$Codes.FORM_INSTANCE_MEDIA_UPLOAD_FAILED:
      return r'FORM_INSTANCE_MEDIA_UPLOAD_FAILED';
    case Enum$Codes.FORM_INSTANCE_MEDIA_DOWNLOAD_FAILED:
      return r'FORM_INSTANCE_MEDIA_DOWNLOAD_FAILED';
    case Enum$Codes.WORK_REQUEST_MEDIA_UPLOAD_FAILED:
      return r'WORK_REQUEST_MEDIA_UPLOAD_FAILED';
    case Enum$Codes.WORK_REQUEST_MEDIA_DOWNLOAD_FAILED:
      return r'WORK_REQUEST_MEDIA_DOWNLOAD_FAILED';
    case Enum$Codes.MEDIA_RECORD_UPDATE_FAILED:
      return r'MEDIA_RECORD_UPDATE_FAILED';
    case Enum$Codes.MEDIA_STORAGE_FAILED:
      return r'MEDIA_STORAGE_FAILED';
    case Enum$Codes.MEDIA_STORAGE_RETRIEVAL_FAILED:
      return r'MEDIA_STORAGE_RETRIEVAL_FAILED';
    case Enum$Codes.WORK_REQUEST_CREATE_REQUEST_FAILED:
      return r'WORK_REQUEST_CREATE_REQUEST_FAILED';
    case Enum$Codes.ASSET_COUNTER_UPDATE_FAILED:
      return r'ASSET_COUNTER_UPDATE_FAILED';
    case Enum$Codes.TEMPLATE_MAPPING_FAILED:
      return r'TEMPLATE_MAPPING_FAILED';
    case Enum$Codes.TEMPLATE_VERSION_ARCHIVING_FAILED:
      return r'TEMPLATE_VERSION_ARCHIVING_FAILED';
    case Enum$Codes.TEMPLATE_UPDATING_FAILED:
      return r'TEMPLATE_UPDATING_FAILED';
    case Enum$Codes.TEMPLATE_YARD_MAPPING_FAILED:
      return r'TEMPLATE_YARD_MAPPING_FAILED';
    case Enum$Codes.TEMPLATE_YARD_MAPPING_DELETE_FAILED:
      return r'TEMPLATE_YARD_MAPPING_DELETE_FAILED';
    case Enum$Codes.SCHEDULE_SAVE_FAILED:
      return r'SCHEDULE_SAVE_FAILED';
    case Enum$Codes.PDF_GENERATION_FAILED:
      return r'PDF_GENERATION_FAILED';
    case Enum$Codes.FORM_INSTANCE_RETRIEVAL_FAILED:
      return r'FORM_INSTANCE_RETRIEVAL_FAILED';
    case Enum$Codes.FORM_INSTANCE_FOR_WORK_ORDER_FAILED:
      return r'FORM_INSTANCE_FOR_WORK_ORDER_FAILED';
    case Enum$Codes.NEW_WORK_ORDER_CREATION_FAILED:
      return r'NEW_WORK_ORDER_CREATION_FAILED';
    case Enum$Codes.ASSIGN_WORK_ORDER_TO_USER_FAILED:
      return r'ASSIGN_WORK_ORDER_TO_USER_FAILED';
    case Enum$Codes.RE_ASSIGN_WORK_ORDER_TO_USER_WITH_RESET_FAILED:
      return r'RE_ASSIGN_WORK_ORDER_TO_USER_WITH_RESET_FAILED';
    case Enum$Codes.ADHOC_TEMPLATE_CREATION_FAILED:
      return r'ADHOC_TEMPLATE_CREATION_FAILED';
    case Enum$Codes.$unknown:
      return r'$unknown';
  }
}

Enum$Codes fromJson$Enum$Codes(String value) {
  switch (value) {
    case r'FORM_INSTANCE_SAVE_FAILED':
      return Enum$Codes.FORM_INSTANCE_SAVE_FAILED;
    case r'FORM_INSTANCE_SAVE_BLOCKED':
      return Enum$Codes.FORM_INSTANCE_SAVE_BLOCKED;
    case r'FORM_INSTANCE_HISTORY_SAVE_FAILED':
      return Enum$Codes.FORM_INSTANCE_HISTORY_SAVE_FAILED;
    case r'FORM_INSTANCE_ALREADY_EXISTS_FOR_SCHEDULED_ITEM':
      return Enum$Codes.FORM_INSTANCE_ALREADY_EXISTS_FOR_SCHEDULED_ITEM;
    case r'FORM_INSTANCE_RESET_FAILED':
      return Enum$Codes.FORM_INSTANCE_RESET_FAILED;
    case r'FORM_INSTANCE_MEDIA_UPLOAD_FAILED':
      return Enum$Codes.FORM_INSTANCE_MEDIA_UPLOAD_FAILED;
    case r'FORM_INSTANCE_MEDIA_DOWNLOAD_FAILED':
      return Enum$Codes.FORM_INSTANCE_MEDIA_DOWNLOAD_FAILED;
    case r'WORK_REQUEST_MEDIA_UPLOAD_FAILED':
      return Enum$Codes.WORK_REQUEST_MEDIA_UPLOAD_FAILED;
    case r'WORK_REQUEST_MEDIA_DOWNLOAD_FAILED':
      return Enum$Codes.WORK_REQUEST_MEDIA_DOWNLOAD_FAILED;
    case r'MEDIA_RECORD_UPDATE_FAILED':
      return Enum$Codes.MEDIA_RECORD_UPDATE_FAILED;
    case r'MEDIA_STORAGE_FAILED':
      return Enum$Codes.MEDIA_STORAGE_FAILED;
    case r'MEDIA_STORAGE_RETRIEVAL_FAILED':
      return Enum$Codes.MEDIA_STORAGE_RETRIEVAL_FAILED;
    case r'WORK_REQUEST_CREATE_REQUEST_FAILED':
      return Enum$Codes.WORK_REQUEST_CREATE_REQUEST_FAILED;
    case r'ASSET_COUNTER_UPDATE_FAILED':
      return Enum$Codes.ASSET_COUNTER_UPDATE_FAILED;
    case r'TEMPLATE_MAPPING_FAILED':
      return Enum$Codes.TEMPLATE_MAPPING_FAILED;
    case r'TEMPLATE_VERSION_ARCHIVING_FAILED':
      return Enum$Codes.TEMPLATE_VERSION_ARCHIVING_FAILED;
    case r'TEMPLATE_UPDATING_FAILED':
      return Enum$Codes.TEMPLATE_UPDATING_FAILED;
    case r'TEMPLATE_YARD_MAPPING_FAILED':
      return Enum$Codes.TEMPLATE_YARD_MAPPING_FAILED;
    case r'TEMPLATE_YARD_MAPPING_DELETE_FAILED':
      return Enum$Codes.TEMPLATE_YARD_MAPPING_DELETE_FAILED;
    case r'SCHEDULE_SAVE_FAILED':
      return Enum$Codes.SCHEDULE_SAVE_FAILED;
    case r'PDF_GENERATION_FAILED':
      return Enum$Codes.PDF_GENERATION_FAILED;
    case r'FORM_INSTANCE_RETRIEVAL_FAILED':
      return Enum$Codes.FORM_INSTANCE_RETRIEVAL_FAILED;
    case r'FORM_INSTANCE_FOR_WORK_ORDER_FAILED':
      return Enum$Codes.FORM_INSTANCE_FOR_WORK_ORDER_FAILED;
    case r'NEW_WORK_ORDER_CREATION_FAILED':
      return Enum$Codes.NEW_WORK_ORDER_CREATION_FAILED;
    case r'ASSIGN_WORK_ORDER_TO_USER_FAILED':
      return Enum$Codes.ASSIGN_WORK_ORDER_TO_USER_FAILED;
    case r'RE_ASSIGN_WORK_ORDER_TO_USER_WITH_RESET_FAILED':
      return Enum$Codes.RE_ASSIGN_WORK_ORDER_TO_USER_WITH_RESET_FAILED;
    case r'ADHOC_TEMPLATE_CREATION_FAILED':
      return Enum$Codes.ADHOC_TEMPLATE_CREATION_FAILED;
    default:
      return Enum$Codes.$unknown;
  }
}

enum Enum$APIResultType { SUCCESS, WARNING, ERROR, $unknown }

String toJson$Enum$APIResultType(Enum$APIResultType e) {
  switch (e) {
    case Enum$APIResultType.SUCCESS:
      return r'SUCCESS';
    case Enum$APIResultType.WARNING:
      return r'WARNING';
    case Enum$APIResultType.ERROR:
      return r'ERROR';
    case Enum$APIResultType.$unknown:
      return r'$unknown';
  }
}

Enum$APIResultType fromJson$Enum$APIResultType(String value) {
  switch (value) {
    case r'SUCCESS':
      return Enum$APIResultType.SUCCESS;
    case r'WARNING':
      return Enum$APIResultType.WARNING;
    case r'ERROR':
      return Enum$APIResultType.ERROR;
    default:
      return Enum$APIResultType.$unknown;
  }
}

enum Enum$MediaTypeId { IMAGE, VIDEO, $unknown }

String toJson$Enum$MediaTypeId(Enum$MediaTypeId e) {
  switch (e) {
    case Enum$MediaTypeId.IMAGE:
      return r'IMAGE';
    case Enum$MediaTypeId.VIDEO:
      return r'VIDEO';
    case Enum$MediaTypeId.$unknown:
      return r'$unknown';
  }
}

Enum$MediaTypeId fromJson$Enum$MediaTypeId(String value) {
  switch (value) {
    case r'IMAGE':
      return Enum$MediaTypeId.IMAGE;
    case r'VIDEO':
      return Enum$MediaTypeId.VIDEO;
    default:
      return Enum$MediaTypeId.$unknown;
  }
}

enum Enum$FormInstanceStatusId {
  IN_PROGRESS,
  READY_TO_SUBMIT,
  SUBMITTED,
  SUBMIT_FAILED,
  CANCELED,
  $unknown
}

String toJson$Enum$FormInstanceStatusId(Enum$FormInstanceStatusId e) {
  switch (e) {
    case Enum$FormInstanceStatusId.IN_PROGRESS:
      return r'IN_PROGRESS';
    case Enum$FormInstanceStatusId.READY_TO_SUBMIT:
      return r'READY_TO_SUBMIT';
    case Enum$FormInstanceStatusId.SUBMITTED:
      return r'SUBMITTED';
    case Enum$FormInstanceStatusId.SUBMIT_FAILED:
      return r'SUBMIT_FAILED';
    case Enum$FormInstanceStatusId.CANCELED:
      return r'CANCELED';
    case Enum$FormInstanceStatusId.$unknown:
      return r'$unknown';
  }
}

Enum$FormInstanceStatusId fromJson$Enum$FormInstanceStatusId(String value) {
  switch (value) {
    case r'IN_PROGRESS':
      return Enum$FormInstanceStatusId.IN_PROGRESS;
    case r'READY_TO_SUBMIT':
      return Enum$FormInstanceStatusId.READY_TO_SUBMIT;
    case r'SUBMITTED':
      return Enum$FormInstanceStatusId.SUBMITTED;
    case r'SUBMIT_FAILED':
      return Enum$FormInstanceStatusId.SUBMIT_FAILED;
    case r'CANCELED':
      return Enum$FormInstanceStatusId.CANCELED;
    default:
      return Enum$FormInstanceStatusId.$unknown;
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
  $unknown
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
  $unknown
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
