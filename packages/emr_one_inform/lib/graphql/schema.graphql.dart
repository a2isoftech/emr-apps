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

class Input$CompletedFormInstanceQueryFilterInput {
  factory Input$CompletedFormInstanceQueryFilterInput({
    String? workOrderId,
    String? yardCode,
    String? startDate,
    String? endDate,
    String? jobDescription,
    String? jobType,
    bool? filterForUser,
    String? assetCode,
    String? submittedBy,
  }) =>
      Input$CompletedFormInstanceQueryFilterInput._({
        if (workOrderId != null) r'workOrderId': workOrderId,
        if (yardCode != null) r'yardCode': yardCode,
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
        if (jobDescription != null) r'jobDescription': jobDescription,
        if (jobType != null) r'jobType': jobType,
        if (filterForUser != null) r'filterForUser': filterForUser,
        if (assetCode != null) r'assetCode': assetCode,
        if (submittedBy != null) r'submittedBy': submittedBy,
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
      result$data['startDate'] = (l$startDate as String?);
    }
    if (data.containsKey('endDate')) {
      final l$endDate = data['endDate'];
      result$data['endDate'] = (l$endDate as String?);
    }
    if (data.containsKey('jobDescription')) {
      final l$jobDescription = data['jobDescription'];
      result$data['jobDescription'] = (l$jobDescription as String?);
    }
    if (data.containsKey('jobType')) {
      final l$jobType = data['jobType'];
      result$data['jobType'] = (l$jobType as String?);
    }
    if (data.containsKey('filterForUser')) {
      final l$filterForUser = data['filterForUser'];
      result$data['filterForUser'] = (l$filterForUser as bool?);
    }
    if (data.containsKey('assetCode')) {
      final l$assetCode = data['assetCode'];
      result$data['assetCode'] = (l$assetCode as String?);
    }
    if (data.containsKey('submittedBy')) {
      final l$submittedBy = data['submittedBy'];
      result$data['submittedBy'] = (l$submittedBy as String?);
    }
    return Input$CompletedFormInstanceQueryFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get workOrderId => (_$data['workOrderId'] as String?);

  String? get yardCode => (_$data['yardCode'] as String?);

  String? get startDate => (_$data['startDate'] as String?);

  String? get endDate => (_$data['endDate'] as String?);

  String? get jobDescription => (_$data['jobDescription'] as String?);

  String? get jobType => (_$data['jobType'] as String?);

  bool? get filterForUser => (_$data['filterForUser'] as bool?);

  String? get assetCode => (_$data['assetCode'] as String?);

  String? get submittedBy => (_$data['submittedBy'] as String?);

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
      result$data['startDate'] = l$startDate;
    }
    if (_$data.containsKey('endDate')) {
      final l$endDate = endDate;
      result$data['endDate'] = l$endDate;
    }
    if (_$data.containsKey('jobDescription')) {
      final l$jobDescription = jobDescription;
      result$data['jobDescription'] = l$jobDescription;
    }
    if (_$data.containsKey('jobType')) {
      final l$jobType = jobType;
      result$data['jobType'] = l$jobType;
    }
    if (_$data.containsKey('filterForUser')) {
      final l$filterForUser = filterForUser;
      result$data['filterForUser'] = l$filterForUser;
    }
    if (_$data.containsKey('assetCode')) {
      final l$assetCode = assetCode;
      result$data['assetCode'] = l$assetCode;
    }
    if (_$data.containsKey('submittedBy')) {
      final l$submittedBy = submittedBy;
      result$data['submittedBy'] = l$submittedBy;
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
    final l$filterForUser = filterForUser;
    final lOther$filterForUser = other.filterForUser;
    if (_$data.containsKey('filterForUser') !=
        other._$data.containsKey('filterForUser')) {
      return false;
    }
    if (l$filterForUser != lOther$filterForUser) {
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
    final l$submittedBy = submittedBy;
    final lOther$submittedBy = other.submittedBy;
    if (_$data.containsKey('submittedBy') !=
        other._$data.containsKey('submittedBy')) {
      return false;
    }
    if (l$submittedBy != lOther$submittedBy) {
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
    final l$filterForUser = filterForUser;
    final l$assetCode = assetCode;
    final l$submittedBy = submittedBy;
    return Object.hashAll([
      _$data.containsKey('workOrderId') ? l$workOrderId : const {},
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
      _$data.containsKey('jobDescription') ? l$jobDescription : const {},
      _$data.containsKey('jobType') ? l$jobType : const {},
      _$data.containsKey('filterForUser') ? l$filterForUser : const {},
      _$data.containsKey('assetCode') ? l$assetCode : const {},
      _$data.containsKey('submittedBy') ? l$submittedBy : const {},
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
    String? startDate,
    String? endDate,
    String? jobDescription,
    String? jobType,
    bool? filterForUser,
    String? assetCode,
    String? submittedBy,
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
    Object? filterForUser = _undefined,
    Object? assetCode = _undefined,
    Object? submittedBy = _undefined,
  }) =>
      _then(Input$CompletedFormInstanceQueryFilterInput._({
        ..._instance._$data,
        if (workOrderId != _undefined) 'workOrderId': (workOrderId as String?),
        if (yardCode != _undefined) 'yardCode': (yardCode as String?),
        if (startDate != _undefined) 'startDate': (startDate as String?),
        if (endDate != _undefined) 'endDate': (endDate as String?),
        if (jobDescription != _undefined)
          'jobDescription': (jobDescription as String?),
        if (jobType != _undefined) 'jobType': (jobType as String?),
        if (filterForUser != _undefined)
          'filterForUser': (filterForUser as bool?),
        if (assetCode != _undefined) 'assetCode': (assetCode as String?),
        if (submittedBy != _undefined) 'submittedBy': (submittedBy as String?),
      }));
}

class _CopyWithStubImpl$Input$CompletedFormInstanceQueryFilterInput<TRes>
    implements CopyWith$Input$CompletedFormInstanceQueryFilterInput<TRes> {
  _CopyWithStubImpl$Input$CompletedFormInstanceQueryFilterInput(this._res);

  TRes _res;

  call({
    String? workOrderId,
    String? yardCode,
    String? startDate,
    String? endDate,
    String? jobDescription,
    String? jobType,
    bool? filterForUser,
    String? assetCode,
    String? submittedBy,
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
    String? startDate,
    String? endDate,
    String? assetCode,
    String? jobId,
  }) =>
      Input$InstanceQueryFilterInput._({
        if (yardCode != null) r'yardCode': yardCode,
        if (asset != null) r'asset': asset,
        if (status != null) r'status': status,
        if (statusId != null) r'statusId': statusId,
        if (forCurrentUser != null) r'forCurrentUser': forCurrentUser,
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
        if (assetCode != null) r'assetCode': assetCode,
        if (jobId != null) r'jobId': jobId,
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
      result$data['startDate'] = (l$startDate as String?);
    }
    if (data.containsKey('endDate')) {
      final l$endDate = data['endDate'];
      result$data['endDate'] = (l$endDate as String?);
    }
    if (data.containsKey('assetCode')) {
      final l$assetCode = data['assetCode'];
      result$data['assetCode'] = (l$assetCode as String?);
    }
    if (data.containsKey('jobId')) {
      final l$jobId = data['jobId'];
      result$data['jobId'] = (l$jobId as String?);
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

  String? get startDate => (_$data['startDate'] as String?);

  String? get endDate => (_$data['endDate'] as String?);

  String? get assetCode => (_$data['assetCode'] as String?);

  String? get jobId => (_$data['jobId'] as String?);

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
      result$data['startDate'] = l$startDate;
    }
    if (_$data.containsKey('endDate')) {
      final l$endDate = endDate;
      result$data['endDate'] = l$endDate;
    }
    if (_$data.containsKey('assetCode')) {
      final l$assetCode = assetCode;
      result$data['assetCode'] = l$assetCode;
    }
    if (_$data.containsKey('jobId')) {
      final l$jobId = jobId;
      result$data['jobId'] = l$jobId;
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
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (_$data.containsKey('assetCode') !=
        other._$data.containsKey('assetCode')) {
      return false;
    }
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    final l$jobId = jobId;
    final lOther$jobId = other.jobId;
    if (_$data.containsKey('jobId') != other._$data.containsKey('jobId')) {
      return false;
    }
    if (l$jobId != lOther$jobId) {
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
    final l$assetCode = assetCode;
    final l$jobId = jobId;
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
      _$data.containsKey('assetCode') ? l$assetCode : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
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
    String? startDate,
    String? endDate,
    String? assetCode,
    String? jobId,
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
    Object? assetCode = _undefined,
    Object? jobId = _undefined,
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
        if (startDate != _undefined) 'startDate': (startDate as String?),
        if (endDate != _undefined) 'endDate': (endDate as String?),
        if (assetCode != _undefined) 'assetCode': (assetCode as String?),
        if (jobId != _undefined) 'jobId': (jobId as String?),
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
    String? startDate,
    String? endDate,
    String? assetCode,
    String? jobId,
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

class Input$WorkRequestQueryFilterInput {
  factory Input$WorkRequestQueryFilterInput({
    String? workRequestId,
    String? yardCode,
    String? depotCode,
    String? assetCode,
    String? startDate,
    String? endDate,
    String? description,
    int? lifeCycleState,
    required bool refreshFromD365,
  }) =>
      Input$WorkRequestQueryFilterInput._({
        if (workRequestId != null) r'workRequestId': workRequestId,
        if (yardCode != null) r'yardCode': yardCode,
        if (depotCode != null) r'depotCode': depotCode,
        if (assetCode != null) r'assetCode': assetCode,
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
        if (description != null) r'description': description,
        if (lifeCycleState != null) r'lifeCycleState': lifeCycleState,
        r'refreshFromD365': refreshFromD365,
      });

  Input$WorkRequestQueryFilterInput._(this._$data);

  factory Input$WorkRequestQueryFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('workRequestId')) {
      final l$workRequestId = data['workRequestId'];
      result$data['workRequestId'] = (l$workRequestId as String?);
    }
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = (l$yardCode as String?);
    }
    if (data.containsKey('depotCode')) {
      final l$depotCode = data['depotCode'];
      result$data['depotCode'] = (l$depotCode as String?);
    }
    if (data.containsKey('assetCode')) {
      final l$assetCode = data['assetCode'];
      result$data['assetCode'] = (l$assetCode as String?);
    }
    if (data.containsKey('startDate')) {
      final l$startDate = data['startDate'];
      result$data['startDate'] = (l$startDate as String?);
    }
    if (data.containsKey('endDate')) {
      final l$endDate = data['endDate'];
      result$data['endDate'] = (l$endDate as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('lifeCycleState')) {
      final l$lifeCycleState = data['lifeCycleState'];
      result$data['lifeCycleState'] = (l$lifeCycleState as int?);
    }
    final l$refreshFromD365 = data['refreshFromD365'];
    result$data['refreshFromD365'] = (l$refreshFromD365 as bool);
    return Input$WorkRequestQueryFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get workRequestId => (_$data['workRequestId'] as String?);

  String? get yardCode => (_$data['yardCode'] as String?);

  String? get depotCode => (_$data['depotCode'] as String?);

  String? get assetCode => (_$data['assetCode'] as String?);

  String? get startDate => (_$data['startDate'] as String?);

  String? get endDate => (_$data['endDate'] as String?);

  String? get description => (_$data['description'] as String?);

  int? get lifeCycleState => (_$data['lifeCycleState'] as int?);

  bool get refreshFromD365 => (_$data['refreshFromD365'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('workRequestId')) {
      final l$workRequestId = workRequestId;
      result$data['workRequestId'] = l$workRequestId;
    }
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] = l$yardCode;
    }
    if (_$data.containsKey('depotCode')) {
      final l$depotCode = depotCode;
      result$data['depotCode'] = l$depotCode;
    }
    if (_$data.containsKey('assetCode')) {
      final l$assetCode = assetCode;
      result$data['assetCode'] = l$assetCode;
    }
    if (_$data.containsKey('startDate')) {
      final l$startDate = startDate;
      result$data['startDate'] = l$startDate;
    }
    if (_$data.containsKey('endDate')) {
      final l$endDate = endDate;
      result$data['endDate'] = l$endDate;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('lifeCycleState')) {
      final l$lifeCycleState = lifeCycleState;
      result$data['lifeCycleState'] = l$lifeCycleState;
    }
    final l$refreshFromD365 = refreshFromD365;
    result$data['refreshFromD365'] = l$refreshFromD365;
    return result$data;
  }

  CopyWith$Input$WorkRequestQueryFilterInput<Input$WorkRequestQueryFilterInput>
      get copyWith => CopyWith$Input$WorkRequestQueryFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$WorkRequestQueryFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$workRequestId = workRequestId;
    final lOther$workRequestId = other.workRequestId;
    if (_$data.containsKey('workRequestId') !=
        other._$data.containsKey('workRequestId')) {
      return false;
    }
    if (l$workRequestId != lOther$workRequestId) {
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
    final l$depotCode = depotCode;
    final lOther$depotCode = other.depotCode;
    if (_$data.containsKey('depotCode') !=
        other._$data.containsKey('depotCode')) {
      return false;
    }
    if (l$depotCode != lOther$depotCode) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$lifeCycleState = lifeCycleState;
    final lOther$lifeCycleState = other.lifeCycleState;
    if (_$data.containsKey('lifeCycleState') !=
        other._$data.containsKey('lifeCycleState')) {
      return false;
    }
    if (l$lifeCycleState != lOther$lifeCycleState) {
      return false;
    }
    final l$refreshFromD365 = refreshFromD365;
    final lOther$refreshFromD365 = other.refreshFromD365;
    if (l$refreshFromD365 != lOther$refreshFromD365) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$workRequestId = workRequestId;
    final l$yardCode = yardCode;
    final l$depotCode = depotCode;
    final l$assetCode = assetCode;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$description = description;
    final l$lifeCycleState = lifeCycleState;
    final l$refreshFromD365 = refreshFromD365;
    return Object.hashAll([
      _$data.containsKey('workRequestId') ? l$workRequestId : const {},
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('depotCode') ? l$depotCode : const {},
      _$data.containsKey('assetCode') ? l$assetCode : const {},
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('lifeCycleState') ? l$lifeCycleState : const {},
      l$refreshFromD365,
    ]);
  }
}

abstract class CopyWith$Input$WorkRequestQueryFilterInput<TRes> {
  factory CopyWith$Input$WorkRequestQueryFilterInput(
    Input$WorkRequestQueryFilterInput instance,
    TRes Function(Input$WorkRequestQueryFilterInput) then,
  ) = _CopyWithImpl$Input$WorkRequestQueryFilterInput;

  factory CopyWith$Input$WorkRequestQueryFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$WorkRequestQueryFilterInput;

  TRes call({
    String? workRequestId,
    String? yardCode,
    String? depotCode,
    String? assetCode,
    String? startDate,
    String? endDate,
    String? description,
    int? lifeCycleState,
    bool? refreshFromD365,
  });
}

class _CopyWithImpl$Input$WorkRequestQueryFilterInput<TRes>
    implements CopyWith$Input$WorkRequestQueryFilterInput<TRes> {
  _CopyWithImpl$Input$WorkRequestQueryFilterInput(
    this._instance,
    this._then,
  );

  final Input$WorkRequestQueryFilterInput _instance;

  final TRes Function(Input$WorkRequestQueryFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? workRequestId = _undefined,
    Object? yardCode = _undefined,
    Object? depotCode = _undefined,
    Object? assetCode = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? description = _undefined,
    Object? lifeCycleState = _undefined,
    Object? refreshFromD365 = _undefined,
  }) =>
      _then(Input$WorkRequestQueryFilterInput._({
        ..._instance._$data,
        if (workRequestId != _undefined)
          'workRequestId': (workRequestId as String?),
        if (yardCode != _undefined) 'yardCode': (yardCode as String?),
        if (depotCode != _undefined) 'depotCode': (depotCode as String?),
        if (assetCode != _undefined) 'assetCode': (assetCode as String?),
        if (startDate != _undefined) 'startDate': (startDate as String?),
        if (endDate != _undefined) 'endDate': (endDate as String?),
        if (description != _undefined) 'description': (description as String?),
        if (lifeCycleState != _undefined)
          'lifeCycleState': (lifeCycleState as int?),
        if (refreshFromD365 != _undefined && refreshFromD365 != null)
          'refreshFromD365': (refreshFromD365 as bool),
      }));
}

class _CopyWithStubImpl$Input$WorkRequestQueryFilterInput<TRes>
    implements CopyWith$Input$WorkRequestQueryFilterInput<TRes> {
  _CopyWithStubImpl$Input$WorkRequestQueryFilterInput(this._res);

  TRes _res;

  call({
    String? workRequestId,
    String? yardCode,
    String? depotCode,
    String? assetCode,
    String? startDate,
    String? endDate,
    String? description,
    int? lifeCycleState,
    bool? refreshFromD365,
  }) =>
      _res;
}

class Input$CreateEditFormTemplateInput {
  factory Input$CreateEditFormTemplateInput({
    required Input$CreateEditFormTemplateInfoInput template,
    required int id,
    required String uuid,
    required String title,
    required String referenceId,
    required int clientId,
    required bool isQuickTemplate,
    required bool isDigitalSignatureRequired,
    required bool validateBySignature,
    required bool validateByWorkOrder,
    String? validateFrom,
    required bool isEmailNotificationRequired,
    required bool sendEmailOnFailedQuestions,
    required bool isPublished,
    String? emailIds,
    String? assignFailedQuestionToTeam,
    String? assignFailedQuestionToTeamId,
  }) =>
      Input$CreateEditFormTemplateInput._({
        r'template': template,
        r'id': id,
        r'uuid': uuid,
        r'title': title,
        r'referenceId': referenceId,
        r'clientId': clientId,
        r'isQuickTemplate': isQuickTemplate,
        r'isDigitalSignatureRequired': isDigitalSignatureRequired,
        r'validateBySignature': validateBySignature,
        r'validateByWorkOrder': validateByWorkOrder,
        if (validateFrom != null) r'validateFrom': validateFrom,
        r'isEmailNotificationRequired': isEmailNotificationRequired,
        r'sendEmailOnFailedQuestions': sendEmailOnFailedQuestions,
        r'isPublished': isPublished,
        if (emailIds != null) r'emailIds': emailIds,
        if (assignFailedQuestionToTeam != null)
          r'assignFailedQuestionToTeam': assignFailedQuestionToTeam,
        if (assignFailedQuestionToTeamId != null)
          r'assignFailedQuestionToTeamId': assignFailedQuestionToTeamId,
      });

  Input$CreateEditFormTemplateInput._(this._$data);

  factory Input$CreateEditFormTemplateInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$template = data['template'];
    result$data['template'] = Input$CreateEditFormTemplateInfoInput.fromJson(
        (l$template as Map<String, dynamic>));
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$uuid = data['uuid'];
    result$data['uuid'] = (l$uuid as String);
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    final l$referenceId = data['referenceId'];
    result$data['referenceId'] = (l$referenceId as String);
    final l$clientId = data['clientId'];
    result$data['clientId'] = (l$clientId as int);
    final l$isQuickTemplate = data['isQuickTemplate'];
    result$data['isQuickTemplate'] = (l$isQuickTemplate as bool);
    final l$isDigitalSignatureRequired = data['isDigitalSignatureRequired'];
    result$data['isDigitalSignatureRequired'] =
        (l$isDigitalSignatureRequired as bool);
    final l$validateBySignature = data['validateBySignature'];
    result$data['validateBySignature'] = (l$validateBySignature as bool);
    final l$validateByWorkOrder = data['validateByWorkOrder'];
    result$data['validateByWorkOrder'] = (l$validateByWorkOrder as bool);
    if (data.containsKey('validateFrom')) {
      final l$validateFrom = data['validateFrom'];
      result$data['validateFrom'] = (l$validateFrom as String?);
    }
    final l$isEmailNotificationRequired = data['isEmailNotificationRequired'];
    result$data['isEmailNotificationRequired'] =
        (l$isEmailNotificationRequired as bool);
    final l$sendEmailOnFailedQuestions = data['sendEmailOnFailedQuestions'];
    result$data['sendEmailOnFailedQuestions'] =
        (l$sendEmailOnFailedQuestions as bool);
    final l$isPublished = data['isPublished'];
    result$data['isPublished'] = (l$isPublished as bool);
    if (data.containsKey('emailIds')) {
      final l$emailIds = data['emailIds'];
      result$data['emailIds'] = (l$emailIds as String?);
    }
    if (data.containsKey('assignFailedQuestionToTeam')) {
      final l$assignFailedQuestionToTeam = data['assignFailedQuestionToTeam'];
      result$data['assignFailedQuestionToTeam'] =
          (l$assignFailedQuestionToTeam as String?);
    }
    if (data.containsKey('assignFailedQuestionToTeamId')) {
      final l$assignFailedQuestionToTeamId =
          data['assignFailedQuestionToTeamId'];
      result$data['assignFailedQuestionToTeamId'] =
          (l$assignFailedQuestionToTeamId as String?);
    }
    return Input$CreateEditFormTemplateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateEditFormTemplateInfoInput get template =>
      (_$data['template'] as Input$CreateEditFormTemplateInfoInput);

  int get id => (_$data['id'] as int);

  String get uuid => (_$data['uuid'] as String);

  String get title => (_$data['title'] as String);

  String get referenceId => (_$data['referenceId'] as String);

  int get clientId => (_$data['clientId'] as int);

  bool get isQuickTemplate => (_$data['isQuickTemplate'] as bool);

  bool get isDigitalSignatureRequired =>
      (_$data['isDigitalSignatureRequired'] as bool);

  bool get validateBySignature => (_$data['validateBySignature'] as bool);

  bool get validateByWorkOrder => (_$data['validateByWorkOrder'] as bool);

  String? get validateFrom => (_$data['validateFrom'] as String?);

  bool get isEmailNotificationRequired =>
      (_$data['isEmailNotificationRequired'] as bool);

  bool get sendEmailOnFailedQuestions =>
      (_$data['sendEmailOnFailedQuestions'] as bool);

  bool get isPublished => (_$data['isPublished'] as bool);

  String? get emailIds => (_$data['emailIds'] as String?);

  String? get assignFailedQuestionToTeam =>
      (_$data['assignFailedQuestionToTeam'] as String?);

  String? get assignFailedQuestionToTeamId =>
      (_$data['assignFailedQuestionToTeamId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$template = template;
    result$data['template'] = l$template.toJson();
    final l$id = id;
    result$data['id'] = l$id;
    final l$uuid = uuid;
    result$data['uuid'] = l$uuid;
    final l$title = title;
    result$data['title'] = l$title;
    final l$referenceId = referenceId;
    result$data['referenceId'] = l$referenceId;
    final l$clientId = clientId;
    result$data['clientId'] = l$clientId;
    final l$isQuickTemplate = isQuickTemplate;
    result$data['isQuickTemplate'] = l$isQuickTemplate;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    result$data['isDigitalSignatureRequired'] = l$isDigitalSignatureRequired;
    final l$validateBySignature = validateBySignature;
    result$data['validateBySignature'] = l$validateBySignature;
    final l$validateByWorkOrder = validateByWorkOrder;
    result$data['validateByWorkOrder'] = l$validateByWorkOrder;
    if (_$data.containsKey('validateFrom')) {
      final l$validateFrom = validateFrom;
      result$data['validateFrom'] = l$validateFrom;
    }
    final l$isEmailNotificationRequired = isEmailNotificationRequired;
    result$data['isEmailNotificationRequired'] = l$isEmailNotificationRequired;
    final l$sendEmailOnFailedQuestions = sendEmailOnFailedQuestions;
    result$data['sendEmailOnFailedQuestions'] = l$sendEmailOnFailedQuestions;
    final l$isPublished = isPublished;
    result$data['isPublished'] = l$isPublished;
    if (_$data.containsKey('emailIds')) {
      final l$emailIds = emailIds;
      result$data['emailIds'] = l$emailIds;
    }
    if (_$data.containsKey('assignFailedQuestionToTeam')) {
      final l$assignFailedQuestionToTeam = assignFailedQuestionToTeam;
      result$data['assignFailedQuestionToTeam'] = l$assignFailedQuestionToTeam;
    }
    if (_$data.containsKey('assignFailedQuestionToTeamId')) {
      final l$assignFailedQuestionToTeamId = assignFailedQuestionToTeamId;
      result$data['assignFailedQuestionToTeamId'] =
          l$assignFailedQuestionToTeamId;
    }
    return result$data;
  }

  CopyWith$Input$CreateEditFormTemplateInput<Input$CreateEditFormTemplateInput>
      get copyWith => CopyWith$Input$CreateEditFormTemplateInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateEditFormTemplateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$template = template;
    final lOther$template = other.template;
    if (l$template != lOther$template) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (l$uuid != lOther$uuid) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$referenceId = referenceId;
    final lOther$referenceId = other.referenceId;
    if (l$referenceId != lOther$referenceId) {
      return false;
    }
    final l$clientId = clientId;
    final lOther$clientId = other.clientId;
    if (l$clientId != lOther$clientId) {
      return false;
    }
    final l$isQuickTemplate = isQuickTemplate;
    final lOther$isQuickTemplate = other.isQuickTemplate;
    if (l$isQuickTemplate != lOther$isQuickTemplate) {
      return false;
    }
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final lOther$isDigitalSignatureRequired = other.isDigitalSignatureRequired;
    if (l$isDigitalSignatureRequired != lOther$isDigitalSignatureRequired) {
      return false;
    }
    final l$validateBySignature = validateBySignature;
    final lOther$validateBySignature = other.validateBySignature;
    if (l$validateBySignature != lOther$validateBySignature) {
      return false;
    }
    final l$validateByWorkOrder = validateByWorkOrder;
    final lOther$validateByWorkOrder = other.validateByWorkOrder;
    if (l$validateByWorkOrder != lOther$validateByWorkOrder) {
      return false;
    }
    final l$validateFrom = validateFrom;
    final lOther$validateFrom = other.validateFrom;
    if (_$data.containsKey('validateFrom') !=
        other._$data.containsKey('validateFrom')) {
      return false;
    }
    if (l$validateFrom != lOther$validateFrom) {
      return false;
    }
    final l$isEmailNotificationRequired = isEmailNotificationRequired;
    final lOther$isEmailNotificationRequired =
        other.isEmailNotificationRequired;
    if (l$isEmailNotificationRequired != lOther$isEmailNotificationRequired) {
      return false;
    }
    final l$sendEmailOnFailedQuestions = sendEmailOnFailedQuestions;
    final lOther$sendEmailOnFailedQuestions = other.sendEmailOnFailedQuestions;
    if (l$sendEmailOnFailedQuestions != lOther$sendEmailOnFailedQuestions) {
      return false;
    }
    final l$isPublished = isPublished;
    final lOther$isPublished = other.isPublished;
    if (l$isPublished != lOther$isPublished) {
      return false;
    }
    final l$emailIds = emailIds;
    final lOther$emailIds = other.emailIds;
    if (_$data.containsKey('emailIds') !=
        other._$data.containsKey('emailIds')) {
      return false;
    }
    if (l$emailIds != lOther$emailIds) {
      return false;
    }
    final l$assignFailedQuestionToTeam = assignFailedQuestionToTeam;
    final lOther$assignFailedQuestionToTeam = other.assignFailedQuestionToTeam;
    if (_$data.containsKey('assignFailedQuestionToTeam') !=
        other._$data.containsKey('assignFailedQuestionToTeam')) {
      return false;
    }
    if (l$assignFailedQuestionToTeam != lOther$assignFailedQuestionToTeam) {
      return false;
    }
    final l$assignFailedQuestionToTeamId = assignFailedQuestionToTeamId;
    final lOther$assignFailedQuestionToTeamId =
        other.assignFailedQuestionToTeamId;
    if (_$data.containsKey('assignFailedQuestionToTeamId') !=
        other._$data.containsKey('assignFailedQuestionToTeamId')) {
      return false;
    }
    if (l$assignFailedQuestionToTeamId != lOther$assignFailedQuestionToTeamId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$template = template;
    final l$id = id;
    final l$uuid = uuid;
    final l$title = title;
    final l$referenceId = referenceId;
    final l$clientId = clientId;
    final l$isQuickTemplate = isQuickTemplate;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final l$validateBySignature = validateBySignature;
    final l$validateByWorkOrder = validateByWorkOrder;
    final l$validateFrom = validateFrom;
    final l$isEmailNotificationRequired = isEmailNotificationRequired;
    final l$sendEmailOnFailedQuestions = sendEmailOnFailedQuestions;
    final l$isPublished = isPublished;
    final l$emailIds = emailIds;
    final l$assignFailedQuestionToTeam = assignFailedQuestionToTeam;
    final l$assignFailedQuestionToTeamId = assignFailedQuestionToTeamId;
    return Object.hashAll([
      l$template,
      l$id,
      l$uuid,
      l$title,
      l$referenceId,
      l$clientId,
      l$isQuickTemplate,
      l$isDigitalSignatureRequired,
      l$validateBySignature,
      l$validateByWorkOrder,
      _$data.containsKey('validateFrom') ? l$validateFrom : const {},
      l$isEmailNotificationRequired,
      l$sendEmailOnFailedQuestions,
      l$isPublished,
      _$data.containsKey('emailIds') ? l$emailIds : const {},
      _$data.containsKey('assignFailedQuestionToTeam')
          ? l$assignFailedQuestionToTeam
          : const {},
      _$data.containsKey('assignFailedQuestionToTeamId')
          ? l$assignFailedQuestionToTeamId
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateEditFormTemplateInput<TRes> {
  factory CopyWith$Input$CreateEditFormTemplateInput(
    Input$CreateEditFormTemplateInput instance,
    TRes Function(Input$CreateEditFormTemplateInput) then,
  ) = _CopyWithImpl$Input$CreateEditFormTemplateInput;

  factory CopyWith$Input$CreateEditFormTemplateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateEditFormTemplateInput;

  TRes call({
    Input$CreateEditFormTemplateInfoInput? template,
    int? id,
    String? uuid,
    String? title,
    String? referenceId,
    int? clientId,
    bool? isQuickTemplate,
    bool? isDigitalSignatureRequired,
    bool? validateBySignature,
    bool? validateByWorkOrder,
    String? validateFrom,
    bool? isEmailNotificationRequired,
    bool? sendEmailOnFailedQuestions,
    bool? isPublished,
    String? emailIds,
    String? assignFailedQuestionToTeam,
    String? assignFailedQuestionToTeamId,
  });
  CopyWith$Input$CreateEditFormTemplateInfoInput<TRes> get template;
}

class _CopyWithImpl$Input$CreateEditFormTemplateInput<TRes>
    implements CopyWith$Input$CreateEditFormTemplateInput<TRes> {
  _CopyWithImpl$Input$CreateEditFormTemplateInput(
    this._instance,
    this._then,
  );

  final Input$CreateEditFormTemplateInput _instance;

  final TRes Function(Input$CreateEditFormTemplateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? template = _undefined,
    Object? id = _undefined,
    Object? uuid = _undefined,
    Object? title = _undefined,
    Object? referenceId = _undefined,
    Object? clientId = _undefined,
    Object? isQuickTemplate = _undefined,
    Object? isDigitalSignatureRequired = _undefined,
    Object? validateBySignature = _undefined,
    Object? validateByWorkOrder = _undefined,
    Object? validateFrom = _undefined,
    Object? isEmailNotificationRequired = _undefined,
    Object? sendEmailOnFailedQuestions = _undefined,
    Object? isPublished = _undefined,
    Object? emailIds = _undefined,
    Object? assignFailedQuestionToTeam = _undefined,
    Object? assignFailedQuestionToTeamId = _undefined,
  }) =>
      _then(Input$CreateEditFormTemplateInput._({
        ..._instance._$data,
        if (template != _undefined && template != null)
          'template': (template as Input$CreateEditFormTemplateInfoInput),
        if (id != _undefined && id != null) 'id': (id as int),
        if (uuid != _undefined && uuid != null) 'uuid': (uuid as String),
        if (title != _undefined && title != null) 'title': (title as String),
        if (referenceId != _undefined && referenceId != null)
          'referenceId': (referenceId as String),
        if (clientId != _undefined && clientId != null)
          'clientId': (clientId as int),
        if (isQuickTemplate != _undefined && isQuickTemplate != null)
          'isQuickTemplate': (isQuickTemplate as bool),
        if (isDigitalSignatureRequired != _undefined &&
            isDigitalSignatureRequired != null)
          'isDigitalSignatureRequired': (isDigitalSignatureRequired as bool),
        if (validateBySignature != _undefined && validateBySignature != null)
          'validateBySignature': (validateBySignature as bool),
        if (validateByWorkOrder != _undefined && validateByWorkOrder != null)
          'validateByWorkOrder': (validateByWorkOrder as bool),
        if (validateFrom != _undefined)
          'validateFrom': (validateFrom as String?),
        if (isEmailNotificationRequired != _undefined &&
            isEmailNotificationRequired != null)
          'isEmailNotificationRequired': (isEmailNotificationRequired as bool),
        if (sendEmailOnFailedQuestions != _undefined &&
            sendEmailOnFailedQuestions != null)
          'sendEmailOnFailedQuestions': (sendEmailOnFailedQuestions as bool),
        if (isPublished != _undefined && isPublished != null)
          'isPublished': (isPublished as bool),
        if (emailIds != _undefined) 'emailIds': (emailIds as String?),
        if (assignFailedQuestionToTeam != _undefined)
          'assignFailedQuestionToTeam': (assignFailedQuestionToTeam as String?),
        if (assignFailedQuestionToTeamId != _undefined)
          'assignFailedQuestionToTeamId':
              (assignFailedQuestionToTeamId as String?),
      }));

  CopyWith$Input$CreateEditFormTemplateInfoInput<TRes> get template {
    final local$template = _instance.template;
    return CopyWith$Input$CreateEditFormTemplateInfoInput(
        local$template, (e) => call(template: e));
  }
}

class _CopyWithStubImpl$Input$CreateEditFormTemplateInput<TRes>
    implements CopyWith$Input$CreateEditFormTemplateInput<TRes> {
  _CopyWithStubImpl$Input$CreateEditFormTemplateInput(this._res);

  TRes _res;

  call({
    Input$CreateEditFormTemplateInfoInput? template,
    int? id,
    String? uuid,
    String? title,
    String? referenceId,
    int? clientId,
    bool? isQuickTemplate,
    bool? isDigitalSignatureRequired,
    bool? validateBySignature,
    bool? validateByWorkOrder,
    String? validateFrom,
    bool? isEmailNotificationRequired,
    bool? sendEmailOnFailedQuestions,
    bool? isPublished,
    String? emailIds,
    String? assignFailedQuestionToTeam,
    String? assignFailedQuestionToTeamId,
  }) =>
      _res;

  CopyWith$Input$CreateEditFormTemplateInfoInput<TRes> get template =>
      CopyWith$Input$CreateEditFormTemplateInfoInput.stub(_res);
}

class Input$JobsByAssetCodesFilterInput {
  factory Input$JobsByAssetCodesFilterInput({
    required String startDate,
    required String endDate,
    required List<String> assetCodes,
  }) =>
      Input$JobsByAssetCodesFilterInput._({
        r'startDate': startDate,
        r'endDate': endDate,
        r'assetCodes': assetCodes,
      });

  Input$JobsByAssetCodesFilterInput._(this._$data);

  factory Input$JobsByAssetCodesFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$startDate = data['startDate'];
    result$data['startDate'] = (l$startDate as String);
    final l$endDate = data['endDate'];
    result$data['endDate'] = (l$endDate as String);
    final l$assetCodes = data['assetCodes'];
    result$data['assetCodes'] =
        (l$assetCodes as List<dynamic>).map((e) => (e as String)).toList();
    return Input$JobsByAssetCodesFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get startDate => (_$data['startDate'] as String);

  String get endDate => (_$data['endDate'] as String);

  List<String> get assetCodes => (_$data['assetCodes'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$startDate = startDate;
    result$data['startDate'] = l$startDate;
    final l$endDate = endDate;
    result$data['endDate'] = l$endDate;
    final l$assetCodes = assetCodes;
    result$data['assetCodes'] = l$assetCodes.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$JobsByAssetCodesFilterInput<Input$JobsByAssetCodesFilterInput>
      get copyWith => CopyWith$Input$JobsByAssetCodesFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$JobsByAssetCodesFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$assetCodes = assetCodes;
    final lOther$assetCodes = other.assetCodes;
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
    return true;
  }

  @override
  int get hashCode {
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$assetCodes = assetCodes;
    return Object.hashAll([
      l$startDate,
      l$endDate,
      Object.hashAll(l$assetCodes.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$JobsByAssetCodesFilterInput<TRes> {
  factory CopyWith$Input$JobsByAssetCodesFilterInput(
    Input$JobsByAssetCodesFilterInput instance,
    TRes Function(Input$JobsByAssetCodesFilterInput) then,
  ) = _CopyWithImpl$Input$JobsByAssetCodesFilterInput;

  factory CopyWith$Input$JobsByAssetCodesFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$JobsByAssetCodesFilterInput;

  TRes call({
    String? startDate,
    String? endDate,
    List<String>? assetCodes,
  });
}

class _CopyWithImpl$Input$JobsByAssetCodesFilterInput<TRes>
    implements CopyWith$Input$JobsByAssetCodesFilterInput<TRes> {
  _CopyWithImpl$Input$JobsByAssetCodesFilterInput(
    this._instance,
    this._then,
  );

  final Input$JobsByAssetCodesFilterInput _instance;

  final TRes Function(Input$JobsByAssetCodesFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? assetCodes = _undefined,
  }) =>
      _then(Input$JobsByAssetCodesFilterInput._({
        ..._instance._$data,
        if (startDate != _undefined && startDate != null)
          'startDate': (startDate as String),
        if (endDate != _undefined && endDate != null)
          'endDate': (endDate as String),
        if (assetCodes != _undefined && assetCodes != null)
          'assetCodes': (assetCodes as List<String>),
      }));
}

class _CopyWithStubImpl$Input$JobsByAssetCodesFilterInput<TRes>
    implements CopyWith$Input$JobsByAssetCodesFilterInput<TRes> {
  _CopyWithStubImpl$Input$JobsByAssetCodesFilterInput(this._res);

  TRes _res;

  call({
    String? startDate,
    String? endDate,
    List<String>? assetCodes,
  }) =>
      _res;
}

class Input$FormJobFilterInput {
  factory Input$FormJobFilterInput({
    String? yardCode,
    bool? filterForUser,
    List<String>? assetCodes,
    String? workOrderId,
    String? startDate,
    String? endDate,
    List<int>? stateIds,
  }) =>
      Input$FormJobFilterInput._({
        if (yardCode != null) r'yardCode': yardCode,
        if (filterForUser != null) r'filterForUser': filterForUser,
        if (assetCodes != null) r'assetCodes': assetCodes,
        if (workOrderId != null) r'workOrderId': workOrderId,
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
        if (stateIds != null) r'stateIds': stateIds,
      });

  Input$FormJobFilterInput._(this._$data);

  factory Input$FormJobFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = (l$yardCode as String?);
    }
    if (data.containsKey('filterForUser')) {
      final l$filterForUser = data['filterForUser'];
      result$data['filterForUser'] = (l$filterForUser as bool?);
    }
    if (data.containsKey('assetCodes')) {
      final l$assetCodes = data['assetCodes'];
      result$data['assetCodes'] =
          (l$assetCodes as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('workOrderId')) {
      final l$workOrderId = data['workOrderId'];
      result$data['workOrderId'] = (l$workOrderId as String?);
    }
    if (data.containsKey('startDate')) {
      final l$startDate = data['startDate'];
      result$data['startDate'] = (l$startDate as String?);
    }
    if (data.containsKey('endDate')) {
      final l$endDate = data['endDate'];
      result$data['endDate'] = (l$endDate as String?);
    }
    if (data.containsKey('stateIds')) {
      final l$stateIds = data['stateIds'];
      result$data['stateIds'] =
          (l$stateIds as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    return Input$FormJobFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get yardCode => (_$data['yardCode'] as String?);

  bool? get filterForUser => (_$data['filterForUser'] as bool?);

  List<String>? get assetCodes => (_$data['assetCodes'] as List<String>?);

  String? get workOrderId => (_$data['workOrderId'] as String?);

  String? get startDate => (_$data['startDate'] as String?);

  String? get endDate => (_$data['endDate'] as String?);

  List<int>? get stateIds => (_$data['stateIds'] as List<int>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] = l$yardCode;
    }
    if (_$data.containsKey('filterForUser')) {
      final l$filterForUser = filterForUser;
      result$data['filterForUser'] = l$filterForUser;
    }
    if (_$data.containsKey('assetCodes')) {
      final l$assetCodes = assetCodes;
      result$data['assetCodes'] = l$assetCodes?.map((e) => e).toList();
    }
    if (_$data.containsKey('workOrderId')) {
      final l$workOrderId = workOrderId;
      result$data['workOrderId'] = l$workOrderId;
    }
    if (_$data.containsKey('startDate')) {
      final l$startDate = startDate;
      result$data['startDate'] = l$startDate;
    }
    if (_$data.containsKey('endDate')) {
      final l$endDate = endDate;
      result$data['endDate'] = l$endDate;
    }
    if (_$data.containsKey('stateIds')) {
      final l$stateIds = stateIds;
      result$data['stateIds'] = l$stateIds?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$FormJobFilterInput<Input$FormJobFilterInput> get copyWith =>
      CopyWith$Input$FormJobFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FormJobFilterInput) ||
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
    final l$filterForUser = filterForUser;
    final lOther$filterForUser = other.filterForUser;
    if (_$data.containsKey('filterForUser') !=
        other._$data.containsKey('filterForUser')) {
      return false;
    }
    if (l$filterForUser != lOther$filterForUser) {
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
    final l$workOrderId = workOrderId;
    final lOther$workOrderId = other.workOrderId;
    if (_$data.containsKey('workOrderId') !=
        other._$data.containsKey('workOrderId')) {
      return false;
    }
    if (l$workOrderId != lOther$workOrderId) {
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
    final l$stateIds = stateIds;
    final lOther$stateIds = other.stateIds;
    if (_$data.containsKey('stateIds') !=
        other._$data.containsKey('stateIds')) {
      return false;
    }
    if (l$stateIds != null && lOther$stateIds != null) {
      if (l$stateIds.length != lOther$stateIds.length) {
        return false;
      }
      for (int i = 0; i < l$stateIds.length; i++) {
        final l$stateIds$entry = l$stateIds[i];
        final lOther$stateIds$entry = lOther$stateIds[i];
        if (l$stateIds$entry != lOther$stateIds$entry) {
          return false;
        }
      }
    } else if (l$stateIds != lOther$stateIds) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$filterForUser = filterForUser;
    final l$assetCodes = assetCodes;
    final l$workOrderId = workOrderId;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$stateIds = stateIds;
    return Object.hashAll([
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('filterForUser') ? l$filterForUser : const {},
      _$data.containsKey('assetCodes')
          ? l$assetCodes == null
              ? null
              : Object.hashAll(l$assetCodes.map((v) => v))
          : const {},
      _$data.containsKey('workOrderId') ? l$workOrderId : const {},
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
      _$data.containsKey('stateIds')
          ? l$stateIds == null
              ? null
              : Object.hashAll(l$stateIds.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$FormJobFilterInput<TRes> {
  factory CopyWith$Input$FormJobFilterInput(
    Input$FormJobFilterInput instance,
    TRes Function(Input$FormJobFilterInput) then,
  ) = _CopyWithImpl$Input$FormJobFilterInput;

  factory CopyWith$Input$FormJobFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FormJobFilterInput;

  TRes call({
    String? yardCode,
    bool? filterForUser,
    List<String>? assetCodes,
    String? workOrderId,
    String? startDate,
    String? endDate,
    List<int>? stateIds,
  });
}

class _CopyWithImpl$Input$FormJobFilterInput<TRes>
    implements CopyWith$Input$FormJobFilterInput<TRes> {
  _CopyWithImpl$Input$FormJobFilterInput(
    this._instance,
    this._then,
  );

  final Input$FormJobFilterInput _instance;

  final TRes Function(Input$FormJobFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? filterForUser = _undefined,
    Object? assetCodes = _undefined,
    Object? workOrderId = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? stateIds = _undefined,
  }) =>
      _then(Input$FormJobFilterInput._({
        ..._instance._$data,
        if (yardCode != _undefined) 'yardCode': (yardCode as String?),
        if (filterForUser != _undefined)
          'filterForUser': (filterForUser as bool?),
        if (assetCodes != _undefined)
          'assetCodes': (assetCodes as List<String>?),
        if (workOrderId != _undefined) 'workOrderId': (workOrderId as String?),
        if (startDate != _undefined) 'startDate': (startDate as String?),
        if (endDate != _undefined) 'endDate': (endDate as String?),
        if (stateIds != _undefined) 'stateIds': (stateIds as List<int>?),
      }));
}

class _CopyWithStubImpl$Input$FormJobFilterInput<TRes>
    implements CopyWith$Input$FormJobFilterInput<TRes> {
  _CopyWithStubImpl$Input$FormJobFilterInput(this._res);

  TRes _res;

  call({
    String? yardCode,
    bool? filterForUser,
    List<String>? assetCodes,
    String? workOrderId,
    String? startDate,
    String? endDate,
    List<int>? stateIds,
  }) =>
      _res;
}

class Input$ScheduleFilterInput {
  factory Input$ScheduleFilterInput({
    String? description,
    String? template,
    bool? isActive,
    String? createDateStart,
    String? createDateEnd,
    String? repeatUntilStart,
    String? repeatUntilEnd,
    String? assignedTo,
    Enum$RepeatInterval? repeatInterval,
    int? repeatFrequency,
  }) =>
      Input$ScheduleFilterInput._({
        if (description != null) r'description': description,
        if (template != null) r'template': template,
        if (isActive != null) r'isActive': isActive,
        if (createDateStart != null) r'createDateStart': createDateStart,
        if (createDateEnd != null) r'createDateEnd': createDateEnd,
        if (repeatUntilStart != null) r'repeatUntilStart': repeatUntilStart,
        if (repeatUntilEnd != null) r'repeatUntilEnd': repeatUntilEnd,
        if (assignedTo != null) r'assignedTo': assignedTo,
        if (repeatInterval != null) r'repeatInterval': repeatInterval,
        if (repeatFrequency != null) r'repeatFrequency': repeatFrequency,
      });

  Input$ScheduleFilterInput._(this._$data);

  factory Input$ScheduleFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('template')) {
      final l$template = data['template'];
      result$data['template'] = (l$template as String?);
    }
    if (data.containsKey('isActive')) {
      final l$isActive = data['isActive'];
      result$data['isActive'] = (l$isActive as bool?);
    }
    if (data.containsKey('createDateStart')) {
      final l$createDateStart = data['createDateStart'];
      result$data['createDateStart'] = (l$createDateStart as String?);
    }
    if (data.containsKey('createDateEnd')) {
      final l$createDateEnd = data['createDateEnd'];
      result$data['createDateEnd'] = (l$createDateEnd as String?);
    }
    if (data.containsKey('repeatUntilStart')) {
      final l$repeatUntilStart = data['repeatUntilStart'];
      result$data['repeatUntilStart'] = (l$repeatUntilStart as String?);
    }
    if (data.containsKey('repeatUntilEnd')) {
      final l$repeatUntilEnd = data['repeatUntilEnd'];
      result$data['repeatUntilEnd'] = (l$repeatUntilEnd as String?);
    }
    if (data.containsKey('assignedTo')) {
      final l$assignedTo = data['assignedTo'];
      result$data['assignedTo'] = (l$assignedTo as String?);
    }
    if (data.containsKey('repeatInterval')) {
      final l$repeatInterval = data['repeatInterval'];
      result$data['repeatInterval'] = l$repeatInterval == null
          ? null
          : fromJson$Enum$RepeatInterval((l$repeatInterval as String));
    }
    if (data.containsKey('repeatFrequency')) {
      final l$repeatFrequency = data['repeatFrequency'];
      result$data['repeatFrequency'] = (l$repeatFrequency as int?);
    }
    return Input$ScheduleFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get description => (_$data['description'] as String?);

  String? get template => (_$data['template'] as String?);

  bool? get isActive => (_$data['isActive'] as bool?);

  String? get createDateStart => (_$data['createDateStart'] as String?);

  String? get createDateEnd => (_$data['createDateEnd'] as String?);

  String? get repeatUntilStart => (_$data['repeatUntilStart'] as String?);

  String? get repeatUntilEnd => (_$data['repeatUntilEnd'] as String?);

  String? get assignedTo => (_$data['assignedTo'] as String?);

  Enum$RepeatInterval? get repeatInterval =>
      (_$data['repeatInterval'] as Enum$RepeatInterval?);

  int? get repeatFrequency => (_$data['repeatFrequency'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('template')) {
      final l$template = template;
      result$data['template'] = l$template;
    }
    if (_$data.containsKey('isActive')) {
      final l$isActive = isActive;
      result$data['isActive'] = l$isActive;
    }
    if (_$data.containsKey('createDateStart')) {
      final l$createDateStart = createDateStart;
      result$data['createDateStart'] = l$createDateStart;
    }
    if (_$data.containsKey('createDateEnd')) {
      final l$createDateEnd = createDateEnd;
      result$data['createDateEnd'] = l$createDateEnd;
    }
    if (_$data.containsKey('repeatUntilStart')) {
      final l$repeatUntilStart = repeatUntilStart;
      result$data['repeatUntilStart'] = l$repeatUntilStart;
    }
    if (_$data.containsKey('repeatUntilEnd')) {
      final l$repeatUntilEnd = repeatUntilEnd;
      result$data['repeatUntilEnd'] = l$repeatUntilEnd;
    }
    if (_$data.containsKey('assignedTo')) {
      final l$assignedTo = assignedTo;
      result$data['assignedTo'] = l$assignedTo;
    }
    if (_$data.containsKey('repeatInterval')) {
      final l$repeatInterval = repeatInterval;
      result$data['repeatInterval'] = l$repeatInterval == null
          ? null
          : toJson$Enum$RepeatInterval(l$repeatInterval);
    }
    if (_$data.containsKey('repeatFrequency')) {
      final l$repeatFrequency = repeatFrequency;
      result$data['repeatFrequency'] = l$repeatFrequency;
    }
    return result$data;
  }

  CopyWith$Input$ScheduleFilterInput<Input$ScheduleFilterInput> get copyWith =>
      CopyWith$Input$ScheduleFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ScheduleFilterInput) ||
        runtimeType != other.runtimeType) {
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
    final l$template = template;
    final lOther$template = other.template;
    if (_$data.containsKey('template') !=
        other._$data.containsKey('template')) {
      return false;
    }
    if (l$template != lOther$template) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (_$data.containsKey('isActive') !=
        other._$data.containsKey('isActive')) {
      return false;
    }
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$createDateStart = createDateStart;
    final lOther$createDateStart = other.createDateStart;
    if (_$data.containsKey('createDateStart') !=
        other._$data.containsKey('createDateStart')) {
      return false;
    }
    if (l$createDateStart != lOther$createDateStart) {
      return false;
    }
    final l$createDateEnd = createDateEnd;
    final lOther$createDateEnd = other.createDateEnd;
    if (_$data.containsKey('createDateEnd') !=
        other._$data.containsKey('createDateEnd')) {
      return false;
    }
    if (l$createDateEnd != lOther$createDateEnd) {
      return false;
    }
    final l$repeatUntilStart = repeatUntilStart;
    final lOther$repeatUntilStart = other.repeatUntilStart;
    if (_$data.containsKey('repeatUntilStart') !=
        other._$data.containsKey('repeatUntilStart')) {
      return false;
    }
    if (l$repeatUntilStart != lOther$repeatUntilStart) {
      return false;
    }
    final l$repeatUntilEnd = repeatUntilEnd;
    final lOther$repeatUntilEnd = other.repeatUntilEnd;
    if (_$data.containsKey('repeatUntilEnd') !=
        other._$data.containsKey('repeatUntilEnd')) {
      return false;
    }
    if (l$repeatUntilEnd != lOther$repeatUntilEnd) {
      return false;
    }
    final l$assignedTo = assignedTo;
    final lOther$assignedTo = other.assignedTo;
    if (_$data.containsKey('assignedTo') !=
        other._$data.containsKey('assignedTo')) {
      return false;
    }
    if (l$assignedTo != lOther$assignedTo) {
      return false;
    }
    final l$repeatInterval = repeatInterval;
    final lOther$repeatInterval = other.repeatInterval;
    if (_$data.containsKey('repeatInterval') !=
        other._$data.containsKey('repeatInterval')) {
      return false;
    }
    if (l$repeatInterval != lOther$repeatInterval) {
      return false;
    }
    final l$repeatFrequency = repeatFrequency;
    final lOther$repeatFrequency = other.repeatFrequency;
    if (_$data.containsKey('repeatFrequency') !=
        other._$data.containsKey('repeatFrequency')) {
      return false;
    }
    if (l$repeatFrequency != lOther$repeatFrequency) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$template = template;
    final l$isActive = isActive;
    final l$createDateStart = createDateStart;
    final l$createDateEnd = createDateEnd;
    final l$repeatUntilStart = repeatUntilStart;
    final l$repeatUntilEnd = repeatUntilEnd;
    final l$assignedTo = assignedTo;
    final l$repeatInterval = repeatInterval;
    final l$repeatFrequency = repeatFrequency;
    return Object.hashAll([
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('template') ? l$template : const {},
      _$data.containsKey('isActive') ? l$isActive : const {},
      _$data.containsKey('createDateStart') ? l$createDateStart : const {},
      _$data.containsKey('createDateEnd') ? l$createDateEnd : const {},
      _$data.containsKey('repeatUntilStart') ? l$repeatUntilStart : const {},
      _$data.containsKey('repeatUntilEnd') ? l$repeatUntilEnd : const {},
      _$data.containsKey('assignedTo') ? l$assignedTo : const {},
      _$data.containsKey('repeatInterval') ? l$repeatInterval : const {},
      _$data.containsKey('repeatFrequency') ? l$repeatFrequency : const {},
    ]);
  }
}

abstract class CopyWith$Input$ScheduleFilterInput<TRes> {
  factory CopyWith$Input$ScheduleFilterInput(
    Input$ScheduleFilterInput instance,
    TRes Function(Input$ScheduleFilterInput) then,
  ) = _CopyWithImpl$Input$ScheduleFilterInput;

  factory CopyWith$Input$ScheduleFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ScheduleFilterInput;

  TRes call({
    String? description,
    String? template,
    bool? isActive,
    String? createDateStart,
    String? createDateEnd,
    String? repeatUntilStart,
    String? repeatUntilEnd,
    String? assignedTo,
    Enum$RepeatInterval? repeatInterval,
    int? repeatFrequency,
  });
}

class _CopyWithImpl$Input$ScheduleFilterInput<TRes>
    implements CopyWith$Input$ScheduleFilterInput<TRes> {
  _CopyWithImpl$Input$ScheduleFilterInput(
    this._instance,
    this._then,
  );

  final Input$ScheduleFilterInput _instance;

  final TRes Function(Input$ScheduleFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? template = _undefined,
    Object? isActive = _undefined,
    Object? createDateStart = _undefined,
    Object? createDateEnd = _undefined,
    Object? repeatUntilStart = _undefined,
    Object? repeatUntilEnd = _undefined,
    Object? assignedTo = _undefined,
    Object? repeatInterval = _undefined,
    Object? repeatFrequency = _undefined,
  }) =>
      _then(Input$ScheduleFilterInput._({
        ..._instance._$data,
        if (description != _undefined) 'description': (description as String?),
        if (template != _undefined) 'template': (template as String?),
        if (isActive != _undefined) 'isActive': (isActive as bool?),
        if (createDateStart != _undefined)
          'createDateStart': (createDateStart as String?),
        if (createDateEnd != _undefined)
          'createDateEnd': (createDateEnd as String?),
        if (repeatUntilStart != _undefined)
          'repeatUntilStart': (repeatUntilStart as String?),
        if (repeatUntilEnd != _undefined)
          'repeatUntilEnd': (repeatUntilEnd as String?),
        if (assignedTo != _undefined) 'assignedTo': (assignedTo as String?),
        if (repeatInterval != _undefined)
          'repeatInterval': (repeatInterval as Enum$RepeatInterval?),
        if (repeatFrequency != _undefined)
          'repeatFrequency': (repeatFrequency as int?),
      }));
}

class _CopyWithStubImpl$Input$ScheduleFilterInput<TRes>
    implements CopyWith$Input$ScheduleFilterInput<TRes> {
  _CopyWithStubImpl$Input$ScheduleFilterInput(this._res);

  TRes _res;

  call({
    String? description,
    String? template,
    bool? isActive,
    String? createDateStart,
    String? createDateEnd,
    String? repeatUntilStart,
    String? repeatUntilEnd,
    String? assignedTo,
    Enum$RepeatInterval? repeatInterval,
    int? repeatFrequency,
  }) =>
      _res;
}

class Input$DiagnosticJobFormFilterInput {
  factory Input$DiagnosticJobFormFilterInput({
    String? startDate,
    String? endDate,
    List<String>? jobIds,
    String? assetCode,
    List<int>? stateIds,
  }) =>
      Input$DiagnosticJobFormFilterInput._({
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
        if (jobIds != null) r'jobIds': jobIds,
        if (assetCode != null) r'assetCode': assetCode,
        if (stateIds != null) r'stateIds': stateIds,
      });

  Input$DiagnosticJobFormFilterInput._(this._$data);

  factory Input$DiagnosticJobFormFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('startDate')) {
      final l$startDate = data['startDate'];
      result$data['startDate'] = (l$startDate as String?);
    }
    if (data.containsKey('endDate')) {
      final l$endDate = data['endDate'];
      result$data['endDate'] = (l$endDate as String?);
    }
    if (data.containsKey('jobIds')) {
      final l$jobIds = data['jobIds'];
      result$data['jobIds'] =
          (l$jobIds as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('assetCode')) {
      final l$assetCode = data['assetCode'];
      result$data['assetCode'] = (l$assetCode as String?);
    }
    if (data.containsKey('stateIds')) {
      final l$stateIds = data['stateIds'];
      result$data['stateIds'] =
          (l$stateIds as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    return Input$DiagnosticJobFormFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get startDate => (_$data['startDate'] as String?);

  String? get endDate => (_$data['endDate'] as String?);

  List<String>? get jobIds => (_$data['jobIds'] as List<String>?);

  String? get assetCode => (_$data['assetCode'] as String?);

  List<int>? get stateIds => (_$data['stateIds'] as List<int>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('startDate')) {
      final l$startDate = startDate;
      result$data['startDate'] = l$startDate;
    }
    if (_$data.containsKey('endDate')) {
      final l$endDate = endDate;
      result$data['endDate'] = l$endDate;
    }
    if (_$data.containsKey('jobIds')) {
      final l$jobIds = jobIds;
      result$data['jobIds'] = l$jobIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('assetCode')) {
      final l$assetCode = assetCode;
      result$data['assetCode'] = l$assetCode;
    }
    if (_$data.containsKey('stateIds')) {
      final l$stateIds = stateIds;
      result$data['stateIds'] = l$stateIds?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$DiagnosticJobFormFilterInput<
          Input$DiagnosticJobFormFilterInput>
      get copyWith => CopyWith$Input$DiagnosticJobFormFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DiagnosticJobFormFilterInput) ||
        runtimeType != other.runtimeType) {
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
    final l$jobIds = jobIds;
    final lOther$jobIds = other.jobIds;
    if (_$data.containsKey('jobIds') != other._$data.containsKey('jobIds')) {
      return false;
    }
    if (l$jobIds != null && lOther$jobIds != null) {
      if (l$jobIds.length != lOther$jobIds.length) {
        return false;
      }
      for (int i = 0; i < l$jobIds.length; i++) {
        final l$jobIds$entry = l$jobIds[i];
        final lOther$jobIds$entry = lOther$jobIds[i];
        if (l$jobIds$entry != lOther$jobIds$entry) {
          return false;
        }
      }
    } else if (l$jobIds != lOther$jobIds) {
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
    final l$stateIds = stateIds;
    final lOther$stateIds = other.stateIds;
    if (_$data.containsKey('stateIds') !=
        other._$data.containsKey('stateIds')) {
      return false;
    }
    if (l$stateIds != null && lOther$stateIds != null) {
      if (l$stateIds.length != lOther$stateIds.length) {
        return false;
      }
      for (int i = 0; i < l$stateIds.length; i++) {
        final l$stateIds$entry = l$stateIds[i];
        final lOther$stateIds$entry = lOther$stateIds[i];
        if (l$stateIds$entry != lOther$stateIds$entry) {
          return false;
        }
      }
    } else if (l$stateIds != lOther$stateIds) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$jobIds = jobIds;
    final l$assetCode = assetCode;
    final l$stateIds = stateIds;
    return Object.hashAll([
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
      _$data.containsKey('jobIds')
          ? l$jobIds == null
              ? null
              : Object.hashAll(l$jobIds.map((v) => v))
          : const {},
      _$data.containsKey('assetCode') ? l$assetCode : const {},
      _$data.containsKey('stateIds')
          ? l$stateIds == null
              ? null
              : Object.hashAll(l$stateIds.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$DiagnosticJobFormFilterInput<TRes> {
  factory CopyWith$Input$DiagnosticJobFormFilterInput(
    Input$DiagnosticJobFormFilterInput instance,
    TRes Function(Input$DiagnosticJobFormFilterInput) then,
  ) = _CopyWithImpl$Input$DiagnosticJobFormFilterInput;

  factory CopyWith$Input$DiagnosticJobFormFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DiagnosticJobFormFilterInput;

  TRes call({
    String? startDate,
    String? endDate,
    List<String>? jobIds,
    String? assetCode,
    List<int>? stateIds,
  });
}

class _CopyWithImpl$Input$DiagnosticJobFormFilterInput<TRes>
    implements CopyWith$Input$DiagnosticJobFormFilterInput<TRes> {
  _CopyWithImpl$Input$DiagnosticJobFormFilterInput(
    this._instance,
    this._then,
  );

  final Input$DiagnosticJobFormFilterInput _instance;

  final TRes Function(Input$DiagnosticJobFormFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? jobIds = _undefined,
    Object? assetCode = _undefined,
    Object? stateIds = _undefined,
  }) =>
      _then(Input$DiagnosticJobFormFilterInput._({
        ..._instance._$data,
        if (startDate != _undefined) 'startDate': (startDate as String?),
        if (endDate != _undefined) 'endDate': (endDate as String?),
        if (jobIds != _undefined) 'jobIds': (jobIds as List<String>?),
        if (assetCode != _undefined) 'assetCode': (assetCode as String?),
        if (stateIds != _undefined) 'stateIds': (stateIds as List<int>?),
      }));
}

class _CopyWithStubImpl$Input$DiagnosticJobFormFilterInput<TRes>
    implements CopyWith$Input$DiagnosticJobFormFilterInput<TRes> {
  _CopyWithStubImpl$Input$DiagnosticJobFormFilterInput(this._res);

  TRes _res;

  call({
    String? startDate,
    String? endDate,
    List<String>? jobIds,
    String? assetCode,
    List<int>? stateIds,
  }) =>
      _res;
}

class Input$SearchQueryFilterInput {
  factory Input$SearchQueryFilterInput({
    String? searchText,
    required bool includeAll,
    List<String>? clientNames,
    String? startDate,
    String? endDate,
    String? jobId,
    String? assetCode,
    String? createdBy,
  }) =>
      Input$SearchQueryFilterInput._({
        if (searchText != null) r'searchText': searchText,
        r'includeAll': includeAll,
        if (clientNames != null) r'clientNames': clientNames,
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
        if (jobId != null) r'jobId': jobId,
        if (assetCode != null) r'assetCode': assetCode,
        if (createdBy != null) r'createdBy': createdBy,
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
    if (data.containsKey('clientNames')) {
      final l$clientNames = data['clientNames'];
      result$data['clientNames'] =
          (l$clientNames as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('startDate')) {
      final l$startDate = data['startDate'];
      result$data['startDate'] = (l$startDate as String?);
    }
    if (data.containsKey('endDate')) {
      final l$endDate = data['endDate'];
      result$data['endDate'] = (l$endDate as String?);
    }
    if (data.containsKey('jobId')) {
      final l$jobId = data['jobId'];
      result$data['jobId'] = (l$jobId as String?);
    }
    if (data.containsKey('assetCode')) {
      final l$assetCode = data['assetCode'];
      result$data['assetCode'] = (l$assetCode as String?);
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    return Input$SearchQueryFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get searchText => (_$data['searchText'] as String?);

  bool get includeAll => (_$data['includeAll'] as bool);

  List<String>? get clientNames => (_$data['clientNames'] as List<String>?);

  String? get startDate => (_$data['startDate'] as String?);

  String? get endDate => (_$data['endDate'] as String?);

  String? get jobId => (_$data['jobId'] as String?);

  String? get assetCode => (_$data['assetCode'] as String?);

  String? get createdBy => (_$data['createdBy'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText;
    }
    final l$includeAll = includeAll;
    result$data['includeAll'] = l$includeAll;
    if (_$data.containsKey('clientNames')) {
      final l$clientNames = clientNames;
      result$data['clientNames'] = l$clientNames?.map((e) => e).toList();
    }
    if (_$data.containsKey('startDate')) {
      final l$startDate = startDate;
      result$data['startDate'] = l$startDate;
    }
    if (_$data.containsKey('endDate')) {
      final l$endDate = endDate;
      result$data['endDate'] = l$endDate;
    }
    if (_$data.containsKey('jobId')) {
      final l$jobId = jobId;
      result$data['jobId'] = l$jobId;
    }
    if (_$data.containsKey('assetCode')) {
      final l$assetCode = assetCode;
      result$data['assetCode'] = l$assetCode;
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
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
    final l$clientNames = clientNames;
    final lOther$clientNames = other.clientNames;
    if (_$data.containsKey('clientNames') !=
        other._$data.containsKey('clientNames')) {
      return false;
    }
    if (l$clientNames != null && lOther$clientNames != null) {
      if (l$clientNames.length != lOther$clientNames.length) {
        return false;
      }
      for (int i = 0; i < l$clientNames.length; i++) {
        final l$clientNames$entry = l$clientNames[i];
        final lOther$clientNames$entry = lOther$clientNames[i];
        if (l$clientNames$entry != lOther$clientNames$entry) {
          return false;
        }
      }
    } else if (l$clientNames != lOther$clientNames) {
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
    final l$jobId = jobId;
    final lOther$jobId = other.jobId;
    if (_$data.containsKey('jobId') != other._$data.containsKey('jobId')) {
      return false;
    }
    if (l$jobId != lOther$jobId) {
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
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$searchText = searchText;
    final l$includeAll = includeAll;
    final l$clientNames = clientNames;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$jobId = jobId;
    final l$assetCode = assetCode;
    final l$createdBy = createdBy;
    return Object.hashAll([
      _$data.containsKey('searchText') ? l$searchText : const {},
      l$includeAll,
      _$data.containsKey('clientNames')
          ? l$clientNames == null
              ? null
              : Object.hashAll(l$clientNames.map((v) => v))
          : const {},
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
      _$data.containsKey('assetCode') ? l$assetCode : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
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
    List<String>? clientNames,
    String? startDate,
    String? endDate,
    String? jobId,
    String? assetCode,
    String? createdBy,
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
    Object? clientNames = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? jobId = _undefined,
    Object? assetCode = _undefined,
    Object? createdBy = _undefined,
  }) =>
      _then(Input$SearchQueryFilterInput._({
        ..._instance._$data,
        if (searchText != _undefined) 'searchText': (searchText as String?),
        if (includeAll != _undefined && includeAll != null)
          'includeAll': (includeAll as bool),
        if (clientNames != _undefined)
          'clientNames': (clientNames as List<String>?),
        if (startDate != _undefined) 'startDate': (startDate as String?),
        if (endDate != _undefined) 'endDate': (endDate as String?),
        if (jobId != _undefined) 'jobId': (jobId as String?),
        if (assetCode != _undefined) 'assetCode': (assetCode as String?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
      }));
}

class _CopyWithStubImpl$Input$SearchQueryFilterInput<TRes>
    implements CopyWith$Input$SearchQueryFilterInput<TRes> {
  _CopyWithStubImpl$Input$SearchQueryFilterInput(this._res);

  TRes _res;

  call({
    String? searchText,
    bool? includeAll,
    List<String>? clientNames,
    String? startDate,
    String? endDate,
    String? jobId,
    String? assetCode,
    String? createdBy,
  }) =>
      _res;
}

class Input$SaveClientRequestInput {
  factory Input$SaveClientRequestInput({
    required int id,
    required String title,
    required bool isEditable,
    required bool isD365,
    required bool isActive,
    String? defaultWorkRequestType,
    String? defaultLifeCycleState,
    required bool canSchedule,
  }) =>
      Input$SaveClientRequestInput._({
        r'id': id,
        r'title': title,
        r'isEditable': isEditable,
        r'isD365': isD365,
        r'isActive': isActive,
        if (defaultWorkRequestType != null)
          r'defaultWorkRequestType': defaultWorkRequestType,
        if (defaultLifeCycleState != null)
          r'defaultLifeCycleState': defaultLifeCycleState,
        r'canSchedule': canSchedule,
      });

  Input$SaveClientRequestInput._(this._$data);

  factory Input$SaveClientRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    final l$isEditable = data['isEditable'];
    result$data['isEditable'] = (l$isEditable as bool);
    final l$isD365 = data['isD365'];
    result$data['isD365'] = (l$isD365 as bool);
    final l$isActive = data['isActive'];
    result$data['isActive'] = (l$isActive as bool);
    if (data.containsKey('defaultWorkRequestType')) {
      final l$defaultWorkRequestType = data['defaultWorkRequestType'];
      result$data['defaultWorkRequestType'] =
          (l$defaultWorkRequestType as String?);
    }
    if (data.containsKey('defaultLifeCycleState')) {
      final l$defaultLifeCycleState = data['defaultLifeCycleState'];
      result$data['defaultLifeCycleState'] =
          (l$defaultLifeCycleState as String?);
    }
    final l$canSchedule = data['canSchedule'];
    result$data['canSchedule'] = (l$canSchedule as bool);
    return Input$SaveClientRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  String get title => (_$data['title'] as String);

  bool get isEditable => (_$data['isEditable'] as bool);

  bool get isD365 => (_$data['isD365'] as bool);

  bool get isActive => (_$data['isActive'] as bool);

  String? get defaultWorkRequestType =>
      (_$data['defaultWorkRequestType'] as String?);

  String? get defaultLifeCycleState =>
      (_$data['defaultLifeCycleState'] as String?);

  bool get canSchedule => (_$data['canSchedule'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$title = title;
    result$data['title'] = l$title;
    final l$isEditable = isEditable;
    result$data['isEditable'] = l$isEditable;
    final l$isD365 = isD365;
    result$data['isD365'] = l$isD365;
    final l$isActive = isActive;
    result$data['isActive'] = l$isActive;
    if (_$data.containsKey('defaultWorkRequestType')) {
      final l$defaultWorkRequestType = defaultWorkRequestType;
      result$data['defaultWorkRequestType'] = l$defaultWorkRequestType;
    }
    if (_$data.containsKey('defaultLifeCycleState')) {
      final l$defaultLifeCycleState = defaultLifeCycleState;
      result$data['defaultLifeCycleState'] = l$defaultLifeCycleState;
    }
    final l$canSchedule = canSchedule;
    result$data['canSchedule'] = l$canSchedule;
    return result$data;
  }

  CopyWith$Input$SaveClientRequestInput<Input$SaveClientRequestInput>
      get copyWith => CopyWith$Input$SaveClientRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SaveClientRequestInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$isEditable = isEditable;
    final lOther$isEditable = other.isEditable;
    if (l$isEditable != lOther$isEditable) {
      return false;
    }
    final l$isD365 = isD365;
    final lOther$isD365 = other.isD365;
    if (l$isD365 != lOther$isD365) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$defaultWorkRequestType = defaultWorkRequestType;
    final lOther$defaultWorkRequestType = other.defaultWorkRequestType;
    if (_$data.containsKey('defaultWorkRequestType') !=
        other._$data.containsKey('defaultWorkRequestType')) {
      return false;
    }
    if (l$defaultWorkRequestType != lOther$defaultWorkRequestType) {
      return false;
    }
    final l$defaultLifeCycleState = defaultLifeCycleState;
    final lOther$defaultLifeCycleState = other.defaultLifeCycleState;
    if (_$data.containsKey('defaultLifeCycleState') !=
        other._$data.containsKey('defaultLifeCycleState')) {
      return false;
    }
    if (l$defaultLifeCycleState != lOther$defaultLifeCycleState) {
      return false;
    }
    final l$canSchedule = canSchedule;
    final lOther$canSchedule = other.canSchedule;
    if (l$canSchedule != lOther$canSchedule) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$isEditable = isEditable;
    final l$isD365 = isD365;
    final l$isActive = isActive;
    final l$defaultWorkRequestType = defaultWorkRequestType;
    final l$defaultLifeCycleState = defaultLifeCycleState;
    final l$canSchedule = canSchedule;
    return Object.hashAll([
      l$id,
      l$title,
      l$isEditable,
      l$isD365,
      l$isActive,
      _$data.containsKey('defaultWorkRequestType')
          ? l$defaultWorkRequestType
          : const {},
      _$data.containsKey('defaultLifeCycleState')
          ? l$defaultLifeCycleState
          : const {},
      l$canSchedule,
    ]);
  }
}

abstract class CopyWith$Input$SaveClientRequestInput<TRes> {
  factory CopyWith$Input$SaveClientRequestInput(
    Input$SaveClientRequestInput instance,
    TRes Function(Input$SaveClientRequestInput) then,
  ) = _CopyWithImpl$Input$SaveClientRequestInput;

  factory CopyWith$Input$SaveClientRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SaveClientRequestInput;

  TRes call({
    int? id,
    String? title,
    bool? isEditable,
    bool? isD365,
    bool? isActive,
    String? defaultWorkRequestType,
    String? defaultLifeCycleState,
    bool? canSchedule,
  });
}

class _CopyWithImpl$Input$SaveClientRequestInput<TRes>
    implements CopyWith$Input$SaveClientRequestInput<TRes> {
  _CopyWithImpl$Input$SaveClientRequestInput(
    this._instance,
    this._then,
  );

  final Input$SaveClientRequestInput _instance;

  final TRes Function(Input$SaveClientRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? isEditable = _undefined,
    Object? isD365 = _undefined,
    Object? isActive = _undefined,
    Object? defaultWorkRequestType = _undefined,
    Object? defaultLifeCycleState = _undefined,
    Object? canSchedule = _undefined,
  }) =>
      _then(Input$SaveClientRequestInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (title != _undefined && title != null) 'title': (title as String),
        if (isEditable != _undefined && isEditable != null)
          'isEditable': (isEditable as bool),
        if (isD365 != _undefined && isD365 != null) 'isD365': (isD365 as bool),
        if (isActive != _undefined && isActive != null)
          'isActive': (isActive as bool),
        if (defaultWorkRequestType != _undefined)
          'defaultWorkRequestType': (defaultWorkRequestType as String?),
        if (defaultLifeCycleState != _undefined)
          'defaultLifeCycleState': (defaultLifeCycleState as String?),
        if (canSchedule != _undefined && canSchedule != null)
          'canSchedule': (canSchedule as bool),
      }));
}

class _CopyWithStubImpl$Input$SaveClientRequestInput<TRes>
    implements CopyWith$Input$SaveClientRequestInput<TRes> {
  _CopyWithStubImpl$Input$SaveClientRequestInput(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    bool? isEditable,
    bool? isD365,
    bool? isActive,
    String? defaultWorkRequestType,
    String? defaultLifeCycleState,
    bool? canSchedule,
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
    String? userUuid,
    String? faultSymptom,
    String? cMMSId,
    required String createdDate,
    List<Input$MediaItemInput>? attachments,
    String? cMMSWorkRequestLifeCycleStateId,
    String? informsUser,
  }) =>
      Input$WorkRequestInfoInput._({
        if (companyCode != null) r'companyCode': companyCode,
        if (description != null) r'description': description,
        if (requestType != null) r'requestType': requestType,
        if (userNotes != null) r'userNotes': userNotes,
        if (assetCode != null) r'assetCode': assetCode,
        r'serviceLevel': serviceLevel,
        if (user != null) r'user': user,
        if (userUuid != null) r'userUuid': userUuid,
        if (faultSymptom != null) r'faultSymptom': faultSymptom,
        if (cMMSId != null) r'cMMSId': cMMSId,
        r'createdDate': createdDate,
        if (attachments != null) r'attachments': attachments,
        if (cMMSWorkRequestLifeCycleStateId != null)
          r'cMMSWorkRequestLifeCycleStateId': cMMSWorkRequestLifeCycleStateId,
        if (informsUser != null) r'informsUser': informsUser,
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
    if (data.containsKey('userUuid')) {
      final l$userUuid = data['userUuid'];
      result$data['userUuid'] = (l$userUuid as String?);
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
    result$data['createdDate'] = (l$createdDate as String);
    if (data.containsKey('attachments')) {
      final l$attachments = data['attachments'];
      result$data['attachments'] = (l$attachments as List<dynamic>?)
          ?.map(
              (e) => Input$MediaItemInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('cMMSWorkRequestLifeCycleStateId')) {
      final l$cMMSWorkRequestLifeCycleStateId =
          data['cMMSWorkRequestLifeCycleStateId'];
      result$data['cMMSWorkRequestLifeCycleStateId'] =
          (l$cMMSWorkRequestLifeCycleStateId as String?);
    }
    if (data.containsKey('informsUser')) {
      final l$informsUser = data['informsUser'];
      result$data['informsUser'] = (l$informsUser as String?);
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

  String? get userUuid => (_$data['userUuid'] as String?);

  String? get faultSymptom => (_$data['faultSymptom'] as String?);

  String? get cMMSId => (_$data['cMMSId'] as String?);

  String get createdDate => (_$data['createdDate'] as String);

  List<Input$MediaItemInput>? get attachments =>
      (_$data['attachments'] as List<Input$MediaItemInput>?);

  String? get cMMSWorkRequestLifeCycleStateId =>
      (_$data['cMMSWorkRequestLifeCycleStateId'] as String?);

  String? get informsUser => (_$data['informsUser'] as String?);

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
    if (_$data.containsKey('userUuid')) {
      final l$userUuid = userUuid;
      result$data['userUuid'] = l$userUuid;
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
    result$data['createdDate'] = l$createdDate;
    if (_$data.containsKey('attachments')) {
      final l$attachments = attachments;
      result$data['attachments'] =
          l$attachments?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('cMMSWorkRequestLifeCycleStateId')) {
      final l$cMMSWorkRequestLifeCycleStateId = cMMSWorkRequestLifeCycleStateId;
      result$data['cMMSWorkRequestLifeCycleStateId'] =
          l$cMMSWorkRequestLifeCycleStateId;
    }
    if (_$data.containsKey('informsUser')) {
      final l$informsUser = informsUser;
      result$data['informsUser'] = l$informsUser;
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
    final l$userUuid = userUuid;
    final lOther$userUuid = other.userUuid;
    if (_$data.containsKey('userUuid') !=
        other._$data.containsKey('userUuid')) {
      return false;
    }
    if (l$userUuid != lOther$userUuid) {
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
    final l$cMMSWorkRequestLifeCycleStateId = cMMSWorkRequestLifeCycleStateId;
    final lOther$cMMSWorkRequestLifeCycleStateId =
        other.cMMSWorkRequestLifeCycleStateId;
    if (_$data.containsKey('cMMSWorkRequestLifeCycleStateId') !=
        other._$data.containsKey('cMMSWorkRequestLifeCycleStateId')) {
      return false;
    }
    if (l$cMMSWorkRequestLifeCycleStateId !=
        lOther$cMMSWorkRequestLifeCycleStateId) {
      return false;
    }
    final l$informsUser = informsUser;
    final lOther$informsUser = other.informsUser;
    if (_$data.containsKey('informsUser') !=
        other._$data.containsKey('informsUser')) {
      return false;
    }
    if (l$informsUser != lOther$informsUser) {
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
    final l$userUuid = userUuid;
    final l$faultSymptom = faultSymptom;
    final l$cMMSId = cMMSId;
    final l$createdDate = createdDate;
    final l$attachments = attachments;
    final l$cMMSWorkRequestLifeCycleStateId = cMMSWorkRequestLifeCycleStateId;
    final l$informsUser = informsUser;
    return Object.hashAll([
      _$data.containsKey('companyCode') ? l$companyCode : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('requestType') ? l$requestType : const {},
      _$data.containsKey('userNotes') ? l$userNotes : const {},
      _$data.containsKey('assetCode') ? l$assetCode : const {},
      l$serviceLevel,
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('userUuid') ? l$userUuid : const {},
      _$data.containsKey('faultSymptom') ? l$faultSymptom : const {},
      _$data.containsKey('cMMSId') ? l$cMMSId : const {},
      l$createdDate,
      _$data.containsKey('attachments')
          ? l$attachments == null
              ? null
              : Object.hashAll(l$attachments.map((v) => v))
          : const {},
      _$data.containsKey('cMMSWorkRequestLifeCycleStateId')
          ? l$cMMSWorkRequestLifeCycleStateId
          : const {},
      _$data.containsKey('informsUser') ? l$informsUser : const {},
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
    String? userUuid,
    String? faultSymptom,
    String? cMMSId,
    String? createdDate,
    List<Input$MediaItemInput>? attachments,
    String? cMMSWorkRequestLifeCycleStateId,
    String? informsUser,
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
    Object? userUuid = _undefined,
    Object? faultSymptom = _undefined,
    Object? cMMSId = _undefined,
    Object? createdDate = _undefined,
    Object? attachments = _undefined,
    Object? cMMSWorkRequestLifeCycleStateId = _undefined,
    Object? informsUser = _undefined,
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
        if (userUuid != _undefined) 'userUuid': (userUuid as String?),
        if (faultSymptom != _undefined)
          'faultSymptom': (faultSymptom as String?),
        if (cMMSId != _undefined) 'cMMSId': (cMMSId as String?),
        if (createdDate != _undefined && createdDate != null)
          'createdDate': (createdDate as String),
        if (attachments != _undefined)
          'attachments': (attachments as List<Input$MediaItemInput>?),
        if (cMMSWorkRequestLifeCycleStateId != _undefined)
          'cMMSWorkRequestLifeCycleStateId':
              (cMMSWorkRequestLifeCycleStateId as String?),
        if (informsUser != _undefined) 'informsUser': (informsUser as String?),
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
    String? userUuid,
    String? faultSymptom,
    String? cMMSId,
    String? createdDate,
    List<Input$MediaItemInput>? attachments,
    String? cMMSWorkRequestLifeCycleStateId,
    String? informsUser,
  }) =>
      _res;

  attachments(_fn) => _res;
}

class Input$InstanceSaveRequestInput {
  factory Input$InstanceSaveRequestInput({
    required String id,
    String? document,
    required String scheduledItemId,
    String? appVersion,
    bool? isManual,
  }) =>
      Input$InstanceSaveRequestInput._({
        r'id': id,
        if (document != null) r'document': document,
        r'scheduledItemId': scheduledItemId,
        if (appVersion != null) r'appVersion': appVersion,
        if (isManual != null) r'isManual': isManual,
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
    if (data.containsKey('appVersion')) {
      final l$appVersion = data['appVersion'];
      result$data['appVersion'] = (l$appVersion as String?);
    }
    if (data.containsKey('isManual')) {
      final l$isManual = data['isManual'];
      result$data['isManual'] = (l$isManual as bool?);
    }
    return Input$InstanceSaveRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String? get document => (_$data['document'] as String?);

  String get scheduledItemId => (_$data['scheduledItemId'] as String);

  String? get appVersion => (_$data['appVersion'] as String?);

  bool? get isManual => (_$data['isManual'] as bool?);

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
    if (_$data.containsKey('appVersion')) {
      final l$appVersion = appVersion;
      result$data['appVersion'] = l$appVersion;
    }
    if (_$data.containsKey('isManual')) {
      final l$isManual = isManual;
      result$data['isManual'] = l$isManual;
    }
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
    final l$appVersion = appVersion;
    final lOther$appVersion = other.appVersion;
    if (_$data.containsKey('appVersion') !=
        other._$data.containsKey('appVersion')) {
      return false;
    }
    if (l$appVersion != lOther$appVersion) {
      return false;
    }
    final l$isManual = isManual;
    final lOther$isManual = other.isManual;
    if (_$data.containsKey('isManual') !=
        other._$data.containsKey('isManual')) {
      return false;
    }
    if (l$isManual != lOther$isManual) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$document = document;
    final l$scheduledItemId = scheduledItemId;
    final l$appVersion = appVersion;
    final l$isManual = isManual;
    return Object.hashAll([
      l$id,
      _$data.containsKey('document') ? l$document : const {},
      l$scheduledItemId,
      _$data.containsKey('appVersion') ? l$appVersion : const {},
      _$data.containsKey('isManual') ? l$isManual : const {},
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
    String? appVersion,
    bool? isManual,
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
    Object? appVersion = _undefined,
    Object? isManual = _undefined,
  }) =>
      _then(Input$InstanceSaveRequestInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (document != _undefined) 'document': (document as String?),
        if (scheduledItemId != _undefined && scheduledItemId != null)
          'scheduledItemId': (scheduledItemId as String),
        if (appVersion != _undefined) 'appVersion': (appVersion as String?),
        if (isManual != _undefined) 'isManual': (isManual as bool?),
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
    String? appVersion,
    bool? isManual,
  }) =>
      _res;
}

class Input$CreateEditCompanyPreferenceInput {
  factory Input$CreateEditCompanyPreferenceInput({
    required String companyCode,
    required String preferenceJson,
  }) =>
      Input$CreateEditCompanyPreferenceInput._({
        r'companyCode': companyCode,
        r'preferenceJson': preferenceJson,
      });

  Input$CreateEditCompanyPreferenceInput._(this._$data);

  factory Input$CreateEditCompanyPreferenceInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$companyCode = data['companyCode'];
    result$data['companyCode'] = (l$companyCode as String);
    final l$preferenceJson = data['preferenceJson'];
    result$data['preferenceJson'] = (l$preferenceJson as String);
    return Input$CreateEditCompanyPreferenceInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get companyCode => (_$data['companyCode'] as String);

  String get preferenceJson => (_$data['preferenceJson'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$companyCode = companyCode;
    result$data['companyCode'] = l$companyCode;
    final l$preferenceJson = preferenceJson;
    result$data['preferenceJson'] = l$preferenceJson;
    return result$data;
  }

  CopyWith$Input$CreateEditCompanyPreferenceInput<
          Input$CreateEditCompanyPreferenceInput>
      get copyWith => CopyWith$Input$CreateEditCompanyPreferenceInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateEditCompanyPreferenceInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (l$companyCode != lOther$companyCode) {
      return false;
    }
    final l$preferenceJson = preferenceJson;
    final lOther$preferenceJson = other.preferenceJson;
    if (l$preferenceJson != lOther$preferenceJson) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$companyCode = companyCode;
    final l$preferenceJson = preferenceJson;
    return Object.hashAll([
      l$companyCode,
      l$preferenceJson,
    ]);
  }
}

abstract class CopyWith$Input$CreateEditCompanyPreferenceInput<TRes> {
  factory CopyWith$Input$CreateEditCompanyPreferenceInput(
    Input$CreateEditCompanyPreferenceInput instance,
    TRes Function(Input$CreateEditCompanyPreferenceInput) then,
  ) = _CopyWithImpl$Input$CreateEditCompanyPreferenceInput;

  factory CopyWith$Input$CreateEditCompanyPreferenceInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateEditCompanyPreferenceInput;

  TRes call({
    String? companyCode,
    String? preferenceJson,
  });
}

class _CopyWithImpl$Input$CreateEditCompanyPreferenceInput<TRes>
    implements CopyWith$Input$CreateEditCompanyPreferenceInput<TRes> {
  _CopyWithImpl$Input$CreateEditCompanyPreferenceInput(
    this._instance,
    this._then,
  );

  final Input$CreateEditCompanyPreferenceInput _instance;

  final TRes Function(Input$CreateEditCompanyPreferenceInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? companyCode = _undefined,
    Object? preferenceJson = _undefined,
  }) =>
      _then(Input$CreateEditCompanyPreferenceInput._({
        ..._instance._$data,
        if (companyCode != _undefined && companyCode != null)
          'companyCode': (companyCode as String),
        if (preferenceJson != _undefined && preferenceJson != null)
          'preferenceJson': (preferenceJson as String),
      }));
}

class _CopyWithStubImpl$Input$CreateEditCompanyPreferenceInput<TRes>
    implements CopyWith$Input$CreateEditCompanyPreferenceInput<TRes> {
  _CopyWithStubImpl$Input$CreateEditCompanyPreferenceInput(this._res);

  TRes _res;

  call({
    String? companyCode,
    String? preferenceJson,
  }) =>
      _res;
}

class Input$DeleteTemplateRequestInput {
  factory Input$DeleteTemplateRequestInput({required String uuid}) =>
      Input$DeleteTemplateRequestInput._({
        r'uuid': uuid,
      });

  Input$DeleteTemplateRequestInput._(this._$data);

  factory Input$DeleteTemplateRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$uuid = data['uuid'];
    result$data['uuid'] = (l$uuid as String);
    return Input$DeleteTemplateRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get uuid => (_$data['uuid'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$uuid = uuid;
    result$data['uuid'] = l$uuid;
    return result$data;
  }

  CopyWith$Input$DeleteTemplateRequestInput<Input$DeleteTemplateRequestInput>
      get copyWith => CopyWith$Input$DeleteTemplateRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DeleteTemplateRequestInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (l$uuid != lOther$uuid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$uuid = uuid;
    return Object.hashAll([l$uuid]);
  }
}

abstract class CopyWith$Input$DeleteTemplateRequestInput<TRes> {
  factory CopyWith$Input$DeleteTemplateRequestInput(
    Input$DeleteTemplateRequestInput instance,
    TRes Function(Input$DeleteTemplateRequestInput) then,
  ) = _CopyWithImpl$Input$DeleteTemplateRequestInput;

  factory CopyWith$Input$DeleteTemplateRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DeleteTemplateRequestInput;

  TRes call({String? uuid});
}

class _CopyWithImpl$Input$DeleteTemplateRequestInput<TRes>
    implements CopyWith$Input$DeleteTemplateRequestInput<TRes> {
  _CopyWithImpl$Input$DeleteTemplateRequestInput(
    this._instance,
    this._then,
  );

  final Input$DeleteTemplateRequestInput _instance;

  final TRes Function(Input$DeleteTemplateRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? uuid = _undefined}) =>
      _then(Input$DeleteTemplateRequestInput._({
        ..._instance._$data,
        if (uuid != _undefined && uuid != null) 'uuid': (uuid as String),
      }));
}

class _CopyWithStubImpl$Input$DeleteTemplateRequestInput<TRes>
    implements CopyWith$Input$DeleteTemplateRequestInput<TRes> {
  _CopyWithStubImpl$Input$DeleteTemplateRequestInput(this._res);

  TRes _res;

  call({String? uuid}) => _res;
}

class Input$MediaItemInput {
  factory Input$MediaItemInput({
    required String id,
    required Enum$MediaTypeId mediaType,
    String? mediaPath,
    String? thumbnailPath,
    required bool isUploaded,
    String? createdBy,
    required String createdByUuid,
    required String createdDate,
    String? uploadDate,
  }) =>
      Input$MediaItemInput._({
        r'id': id,
        r'mediaType': mediaType,
        if (mediaPath != null) r'mediaPath': mediaPath,
        if (thumbnailPath != null) r'thumbnailPath': thumbnailPath,
        r'isUploaded': isUploaded,
        if (createdBy != null) r'createdBy': createdBy,
        r'createdByUuid': createdByUuid,
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
    final l$createdByUuid = data['createdByUuid'];
    result$data['createdByUuid'] = (l$createdByUuid as String);
    final l$createdDate = data['createdDate'];
    result$data['createdDate'] = (l$createdDate as String);
    if (data.containsKey('uploadDate')) {
      final l$uploadDate = data['uploadDate'];
      result$data['uploadDate'] = (l$uploadDate as String?);
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

  String get createdByUuid => (_$data['createdByUuid'] as String);

  String get createdDate => (_$data['createdDate'] as String);

  String? get uploadDate => (_$data['uploadDate'] as String?);

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
    final l$createdByUuid = createdByUuid;
    result$data['createdByUuid'] = l$createdByUuid;
    final l$createdDate = createdDate;
    result$data['createdDate'] = l$createdDate;
    if (_$data.containsKey('uploadDate')) {
      final l$uploadDate = uploadDate;
      result$data['uploadDate'] = l$uploadDate;
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
    final l$createdByUuid = createdByUuid;
    final lOther$createdByUuid = other.createdByUuid;
    if (l$createdByUuid != lOther$createdByUuid) {
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
    final l$createdByUuid = createdByUuid;
    final l$createdDate = createdDate;
    final l$uploadDate = uploadDate;
    return Object.hashAll([
      l$id,
      l$mediaType,
      _$data.containsKey('mediaPath') ? l$mediaPath : const {},
      _$data.containsKey('thumbnailPath') ? l$thumbnailPath : const {},
      l$isUploaded,
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      l$createdByUuid,
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
    String? createdByUuid,
    String? createdDate,
    String? uploadDate,
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
    Object? createdByUuid = _undefined,
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
        if (createdByUuid != _undefined && createdByUuid != null)
          'createdByUuid': (createdByUuid as String),
        if (createdDate != _undefined && createdDate != null)
          'createdDate': (createdDate as String),
        if (uploadDate != _undefined) 'uploadDate': (uploadDate as String?),
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
    String? createdByUuid,
    String? createdDate,
    String? uploadDate,
  }) =>
      _res;
}

class Input$CreateEditFormTemplateInfoInput {
  factory Input$CreateEditFormTemplateInfoInput({
    required String title,
    required String uuid,
    required List<Input$CreateEditFormTemplateSectionInput> sections,
  }) =>
      Input$CreateEditFormTemplateInfoInput._({
        r'title': title,
        r'uuid': uuid,
        r'sections': sections,
      });

  Input$CreateEditFormTemplateInfoInput._(this._$data);

  factory Input$CreateEditFormTemplateInfoInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    final l$uuid = data['uuid'];
    result$data['uuid'] = (l$uuid as String);
    final l$sections = data['sections'];
    result$data['sections'] = (l$sections as List<dynamic>)
        .map((e) => Input$CreateEditFormTemplateSectionInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    return Input$CreateEditFormTemplateInfoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get title => (_$data['title'] as String);

  String get uuid => (_$data['uuid'] as String);

  List<Input$CreateEditFormTemplateSectionInput> get sections =>
      (_$data['sections'] as List<Input$CreateEditFormTemplateSectionInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$title = title;
    result$data['title'] = l$title;
    final l$uuid = uuid;
    result$data['uuid'] = l$uuid;
    final l$sections = sections;
    result$data['sections'] = l$sections.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Input$CreateEditFormTemplateInfoInput<
          Input$CreateEditFormTemplateInfoInput>
      get copyWith => CopyWith$Input$CreateEditFormTemplateInfoInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateEditFormTemplateInfoInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (l$uuid != lOther$uuid) {
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
    final l$title = title;
    final l$uuid = uuid;
    final l$sections = sections;
    return Object.hashAll([
      l$title,
      l$uuid,
      Object.hashAll(l$sections.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$CreateEditFormTemplateInfoInput<TRes> {
  factory CopyWith$Input$CreateEditFormTemplateInfoInput(
    Input$CreateEditFormTemplateInfoInput instance,
    TRes Function(Input$CreateEditFormTemplateInfoInput) then,
  ) = _CopyWithImpl$Input$CreateEditFormTemplateInfoInput;

  factory CopyWith$Input$CreateEditFormTemplateInfoInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateEditFormTemplateInfoInput;

  TRes call({
    String? title,
    String? uuid,
    List<Input$CreateEditFormTemplateSectionInput>? sections,
  });
  TRes sections(
      Iterable<Input$CreateEditFormTemplateSectionInput> Function(
              Iterable<
                  CopyWith$Input$CreateEditFormTemplateSectionInput<
                      Input$CreateEditFormTemplateSectionInput>>)
          _fn);
}

class _CopyWithImpl$Input$CreateEditFormTemplateInfoInput<TRes>
    implements CopyWith$Input$CreateEditFormTemplateInfoInput<TRes> {
  _CopyWithImpl$Input$CreateEditFormTemplateInfoInput(
    this._instance,
    this._then,
  );

  final Input$CreateEditFormTemplateInfoInput _instance;

  final TRes Function(Input$CreateEditFormTemplateInfoInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? uuid = _undefined,
    Object? sections = _undefined,
  }) =>
      _then(Input$CreateEditFormTemplateInfoInput._({
        ..._instance._$data,
        if (title != _undefined && title != null) 'title': (title as String),
        if (uuid != _undefined && uuid != null) 'uuid': (uuid as String),
        if (sections != _undefined && sections != null)
          'sections':
              (sections as List<Input$CreateEditFormTemplateSectionInput>),
      }));

  TRes sections(
          Iterable<Input$CreateEditFormTemplateSectionInput> Function(
                  Iterable<
                      CopyWith$Input$CreateEditFormTemplateSectionInput<
                          Input$CreateEditFormTemplateSectionInput>>)
              _fn) =>
      call(
          sections: _fn(_instance.sections
              .map((e) => CopyWith$Input$CreateEditFormTemplateSectionInput(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Input$CreateEditFormTemplateInfoInput<TRes>
    implements CopyWith$Input$CreateEditFormTemplateInfoInput<TRes> {
  _CopyWithStubImpl$Input$CreateEditFormTemplateInfoInput(this._res);

  TRes _res;

  call({
    String? title,
    String? uuid,
    List<Input$CreateEditFormTemplateSectionInput>? sections,
  }) =>
      _res;

  sections(_fn) => _res;
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

class Input$CreateEditFormTemplateSectionInput {
  factory Input$CreateEditFormTemplateSectionInput({
    required String id,
    required String header,
    required List<Input$CreateEditFormTempateComponentInput> components,
  }) =>
      Input$CreateEditFormTemplateSectionInput._({
        r'id': id,
        r'header': header,
        r'components': components,
      });

  Input$CreateEditFormTemplateSectionInput._(this._$data);

  factory Input$CreateEditFormTemplateSectionInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$header = data['header'];
    result$data['header'] = (l$header as String);
    final l$components = data['components'];
    result$data['components'] = (l$components as List<dynamic>)
        .map((e) => Input$CreateEditFormTempateComponentInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    return Input$CreateEditFormTemplateSectionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get header => (_$data['header'] as String);

  List<Input$CreateEditFormTempateComponentInput> get components =>
      (_$data['components'] as List<Input$CreateEditFormTempateComponentInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$header = header;
    result$data['header'] = l$header;
    final l$components = components;
    result$data['components'] = l$components.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Input$CreateEditFormTemplateSectionInput<
          Input$CreateEditFormTemplateSectionInput>
      get copyWith => CopyWith$Input$CreateEditFormTemplateSectionInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateEditFormTemplateSectionInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$header = header;
    final lOther$header = other.header;
    if (l$header != lOther$header) {
      return false;
    }
    final l$components = components;
    final lOther$components = other.components;
    if (l$components.length != lOther$components.length) {
      return false;
    }
    for (int i = 0; i < l$components.length; i++) {
      final l$components$entry = l$components[i];
      final lOther$components$entry = lOther$components[i];
      if (l$components$entry != lOther$components$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$header = header;
    final l$components = components;
    return Object.hashAll([
      l$id,
      l$header,
      Object.hashAll(l$components.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$CreateEditFormTemplateSectionInput<TRes> {
  factory CopyWith$Input$CreateEditFormTemplateSectionInput(
    Input$CreateEditFormTemplateSectionInput instance,
    TRes Function(Input$CreateEditFormTemplateSectionInput) then,
  ) = _CopyWithImpl$Input$CreateEditFormTemplateSectionInput;

  factory CopyWith$Input$CreateEditFormTemplateSectionInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateEditFormTemplateSectionInput;

  TRes call({
    String? id,
    String? header,
    List<Input$CreateEditFormTempateComponentInput>? components,
  });
  TRes components(
      Iterable<Input$CreateEditFormTempateComponentInput> Function(
              Iterable<
                  CopyWith$Input$CreateEditFormTempateComponentInput<
                      Input$CreateEditFormTempateComponentInput>>)
          _fn);
}

class _CopyWithImpl$Input$CreateEditFormTemplateSectionInput<TRes>
    implements CopyWith$Input$CreateEditFormTemplateSectionInput<TRes> {
  _CopyWithImpl$Input$CreateEditFormTemplateSectionInput(
    this._instance,
    this._then,
  );

  final Input$CreateEditFormTemplateSectionInput _instance;

  final TRes Function(Input$CreateEditFormTemplateSectionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? header = _undefined,
    Object? components = _undefined,
  }) =>
      _then(Input$CreateEditFormTemplateSectionInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (header != _undefined && header != null)
          'header': (header as String),
        if (components != _undefined && components != null)
          'components':
              (components as List<Input$CreateEditFormTempateComponentInput>),
      }));

  TRes components(
          Iterable<Input$CreateEditFormTempateComponentInput> Function(
                  Iterable<
                      CopyWith$Input$CreateEditFormTempateComponentInput<
                          Input$CreateEditFormTempateComponentInput>>)
              _fn) =>
      call(
          components: _fn(_instance.components
              .map((e) => CopyWith$Input$CreateEditFormTempateComponentInput(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Input$CreateEditFormTemplateSectionInput<TRes>
    implements CopyWith$Input$CreateEditFormTemplateSectionInput<TRes> {
  _CopyWithStubImpl$Input$CreateEditFormTemplateSectionInput(this._res);

  TRes _res;

  call({
    String? id,
    String? header,
    List<Input$CreateEditFormTempateComponentInput>? components,
  }) =>
      _res;

  components(_fn) => _res;
}

class Input$CreateEditFormTempateComponentInput {
  factory Input$CreateEditFormTempateComponentInput({
    required String id,
    String? title,
    required String type,
    bool? isRequired,
    List<Input$CreateEditFormTemplateValidatorInput>? validators,
    String? message,
    String? messageType,
    bool? isSRRequired,
    Input$CreateEditFormTemplateDataProviderInput? dropdownDataProvider,
    bool? isMultiline,
    String? url,
    bool? isHTML,
    Input$CreateEditFormTemplateDataProviderInput? visibilityProvider,
    Input$CreateEditFormTemplateAssetCounterInput? assetCounter,
    Input$CreateEditFormTemplateDataProviderInput? mroDataProvider,
    bool? showWarningLabel,
    String? faultTitle,
  }) =>
      Input$CreateEditFormTempateComponentInput._({
        r'id': id,
        if (title != null) r'title': title,
        r'type': type,
        if (isRequired != null) r'isRequired': isRequired,
        if (validators != null) r'validators': validators,
        if (message != null) r'message': message,
        if (messageType != null) r'messageType': messageType,
        if (isSRRequired != null) r'isSRRequired': isSRRequired,
        if (dropdownDataProvider != null)
          r'dropdownDataProvider': dropdownDataProvider,
        if (isMultiline != null) r'isMultiline': isMultiline,
        if (url != null) r'url': url,
        if (isHTML != null) r'isHTML': isHTML,
        if (visibilityProvider != null)
          r'visibilityProvider': visibilityProvider,
        if (assetCounter != null) r'assetCounter': assetCounter,
        if (mroDataProvider != null) r'mroDataProvider': mroDataProvider,
        if (showWarningLabel != null) r'showWarningLabel': showWarningLabel,
        if (faultTitle != null) r'faultTitle': faultTitle,
      });

  Input$CreateEditFormTempateComponentInput._(this._$data);

  factory Input$CreateEditFormTempateComponentInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    final l$type = data['type'];
    result$data['type'] = (l$type as String);
    if (data.containsKey('isRequired')) {
      final l$isRequired = data['isRequired'];
      result$data['isRequired'] = (l$isRequired as bool?);
    }
    if (data.containsKey('validators')) {
      final l$validators = data['validators'];
      result$data['validators'] = (l$validators as List<dynamic>?)
          ?.map((e) => Input$CreateEditFormTemplateValidatorInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('message')) {
      final l$message = data['message'];
      result$data['message'] = (l$message as String?);
    }
    if (data.containsKey('messageType')) {
      final l$messageType = data['messageType'];
      result$data['messageType'] = (l$messageType as String?);
    }
    if (data.containsKey('isSRRequired')) {
      final l$isSRRequired = data['isSRRequired'];
      result$data['isSRRequired'] = (l$isSRRequired as bool?);
    }
    if (data.containsKey('dropdownDataProvider')) {
      final l$dropdownDataProvider = data['dropdownDataProvider'];
      result$data['dropdownDataProvider'] = l$dropdownDataProvider == null
          ? null
          : Input$CreateEditFormTemplateDataProviderInput.fromJson(
              (l$dropdownDataProvider as Map<String, dynamic>));
    }
    if (data.containsKey('isMultiline')) {
      final l$isMultiline = data['isMultiline'];
      result$data['isMultiline'] = (l$isMultiline as bool?);
    }
    if (data.containsKey('url')) {
      final l$url = data['url'];
      result$data['url'] = (l$url as String?);
    }
    if (data.containsKey('isHTML')) {
      final l$isHTML = data['isHTML'];
      result$data['isHTML'] = (l$isHTML as bool?);
    }
    if (data.containsKey('visibilityProvider')) {
      final l$visibilityProvider = data['visibilityProvider'];
      result$data['visibilityProvider'] = l$visibilityProvider == null
          ? null
          : Input$CreateEditFormTemplateDataProviderInput.fromJson(
              (l$visibilityProvider as Map<String, dynamic>));
    }
    if (data.containsKey('assetCounter')) {
      final l$assetCounter = data['assetCounter'];
      result$data['assetCounter'] = l$assetCounter == null
          ? null
          : Input$CreateEditFormTemplateAssetCounterInput.fromJson(
              (l$assetCounter as Map<String, dynamic>));
    }
    if (data.containsKey('mroDataProvider')) {
      final l$mroDataProvider = data['mroDataProvider'];
      result$data['mroDataProvider'] = l$mroDataProvider == null
          ? null
          : Input$CreateEditFormTemplateDataProviderInput.fromJson(
              (l$mroDataProvider as Map<String, dynamic>));
    }
    if (data.containsKey('showWarningLabel')) {
      final l$showWarningLabel = data['showWarningLabel'];
      result$data['showWarningLabel'] = (l$showWarningLabel as bool?);
    }
    if (data.containsKey('faultTitle')) {
      final l$faultTitle = data['faultTitle'];
      result$data['faultTitle'] = (l$faultTitle as String?);
    }
    return Input$CreateEditFormTempateComponentInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String? get title => (_$data['title'] as String?);

  String get type => (_$data['type'] as String);

  bool? get isRequired => (_$data['isRequired'] as bool?);

  List<Input$CreateEditFormTemplateValidatorInput>? get validators =>
      (_$data['validators']
          as List<Input$CreateEditFormTemplateValidatorInput>?);

  String? get message => (_$data['message'] as String?);

  String? get messageType => (_$data['messageType'] as String?);

  bool? get isSRRequired => (_$data['isSRRequired'] as bool?);

  Input$CreateEditFormTemplateDataProviderInput? get dropdownDataProvider =>
      (_$data['dropdownDataProvider']
          as Input$CreateEditFormTemplateDataProviderInput?);

  bool? get isMultiline => (_$data['isMultiline'] as bool?);

  String? get url => (_$data['url'] as String?);

  bool? get isHTML => (_$data['isHTML'] as bool?);

  Input$CreateEditFormTemplateDataProviderInput? get visibilityProvider =>
      (_$data['visibilityProvider']
          as Input$CreateEditFormTemplateDataProviderInput?);

  Input$CreateEditFormTemplateAssetCounterInput? get assetCounter =>
      (_$data['assetCounter']
          as Input$CreateEditFormTemplateAssetCounterInput?);

  Input$CreateEditFormTemplateDataProviderInput? get mroDataProvider =>
      (_$data['mroDataProvider']
          as Input$CreateEditFormTemplateDataProviderInput?);

  bool? get showWarningLabel => (_$data['showWarningLabel'] as bool?);

  String? get faultTitle => (_$data['faultTitle'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    final l$type = type;
    result$data['type'] = l$type;
    if (_$data.containsKey('isRequired')) {
      final l$isRequired = isRequired;
      result$data['isRequired'] = l$isRequired;
    }
    if (_$data.containsKey('validators')) {
      final l$validators = validators;
      result$data['validators'] = l$validators?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('message')) {
      final l$message = message;
      result$data['message'] = l$message;
    }
    if (_$data.containsKey('messageType')) {
      final l$messageType = messageType;
      result$data['messageType'] = l$messageType;
    }
    if (_$data.containsKey('isSRRequired')) {
      final l$isSRRequired = isSRRequired;
      result$data['isSRRequired'] = l$isSRRequired;
    }
    if (_$data.containsKey('dropdownDataProvider')) {
      final l$dropdownDataProvider = dropdownDataProvider;
      result$data['dropdownDataProvider'] = l$dropdownDataProvider?.toJson();
    }
    if (_$data.containsKey('isMultiline')) {
      final l$isMultiline = isMultiline;
      result$data['isMultiline'] = l$isMultiline;
    }
    if (_$data.containsKey('url')) {
      final l$url = url;
      result$data['url'] = l$url;
    }
    if (_$data.containsKey('isHTML')) {
      final l$isHTML = isHTML;
      result$data['isHTML'] = l$isHTML;
    }
    if (_$data.containsKey('visibilityProvider')) {
      final l$visibilityProvider = visibilityProvider;
      result$data['visibilityProvider'] = l$visibilityProvider?.toJson();
    }
    if (_$data.containsKey('assetCounter')) {
      final l$assetCounter = assetCounter;
      result$data['assetCounter'] = l$assetCounter?.toJson();
    }
    if (_$data.containsKey('mroDataProvider')) {
      final l$mroDataProvider = mroDataProvider;
      result$data['mroDataProvider'] = l$mroDataProvider?.toJson();
    }
    if (_$data.containsKey('showWarningLabel')) {
      final l$showWarningLabel = showWarningLabel;
      result$data['showWarningLabel'] = l$showWarningLabel;
    }
    if (_$data.containsKey('faultTitle')) {
      final l$faultTitle = faultTitle;
      result$data['faultTitle'] = l$faultTitle;
    }
    return result$data;
  }

  CopyWith$Input$CreateEditFormTempateComponentInput<
          Input$CreateEditFormTempateComponentInput>
      get copyWith => CopyWith$Input$CreateEditFormTempateComponentInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateEditFormTempateComponentInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$isRequired = isRequired;
    final lOther$isRequired = other.isRequired;
    if (_$data.containsKey('isRequired') !=
        other._$data.containsKey('isRequired')) {
      return false;
    }
    if (l$isRequired != lOther$isRequired) {
      return false;
    }
    final l$validators = validators;
    final lOther$validators = other.validators;
    if (_$data.containsKey('validators') !=
        other._$data.containsKey('validators')) {
      return false;
    }
    if (l$validators != null && lOther$validators != null) {
      if (l$validators.length != lOther$validators.length) {
        return false;
      }
      for (int i = 0; i < l$validators.length; i++) {
        final l$validators$entry = l$validators[i];
        final lOther$validators$entry = lOther$validators[i];
        if (l$validators$entry != lOther$validators$entry) {
          return false;
        }
      }
    } else if (l$validators != lOther$validators) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (_$data.containsKey('message') != other._$data.containsKey('message')) {
      return false;
    }
    if (l$message != lOther$message) {
      return false;
    }
    final l$messageType = messageType;
    final lOther$messageType = other.messageType;
    if (_$data.containsKey('messageType') !=
        other._$data.containsKey('messageType')) {
      return false;
    }
    if (l$messageType != lOther$messageType) {
      return false;
    }
    final l$isSRRequired = isSRRequired;
    final lOther$isSRRequired = other.isSRRequired;
    if (_$data.containsKey('isSRRequired') !=
        other._$data.containsKey('isSRRequired')) {
      return false;
    }
    if (l$isSRRequired != lOther$isSRRequired) {
      return false;
    }
    final l$dropdownDataProvider = dropdownDataProvider;
    final lOther$dropdownDataProvider = other.dropdownDataProvider;
    if (_$data.containsKey('dropdownDataProvider') !=
        other._$data.containsKey('dropdownDataProvider')) {
      return false;
    }
    if (l$dropdownDataProvider != lOther$dropdownDataProvider) {
      return false;
    }
    final l$isMultiline = isMultiline;
    final lOther$isMultiline = other.isMultiline;
    if (_$data.containsKey('isMultiline') !=
        other._$data.containsKey('isMultiline')) {
      return false;
    }
    if (l$isMultiline != lOther$isMultiline) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (_$data.containsKey('url') != other._$data.containsKey('url')) {
      return false;
    }
    if (l$url != lOther$url) {
      return false;
    }
    final l$isHTML = isHTML;
    final lOther$isHTML = other.isHTML;
    if (_$data.containsKey('isHTML') != other._$data.containsKey('isHTML')) {
      return false;
    }
    if (l$isHTML != lOther$isHTML) {
      return false;
    }
    final l$visibilityProvider = visibilityProvider;
    final lOther$visibilityProvider = other.visibilityProvider;
    if (_$data.containsKey('visibilityProvider') !=
        other._$data.containsKey('visibilityProvider')) {
      return false;
    }
    if (l$visibilityProvider != lOther$visibilityProvider) {
      return false;
    }
    final l$assetCounter = assetCounter;
    final lOther$assetCounter = other.assetCounter;
    if (_$data.containsKey('assetCounter') !=
        other._$data.containsKey('assetCounter')) {
      return false;
    }
    if (l$assetCounter != lOther$assetCounter) {
      return false;
    }
    final l$mroDataProvider = mroDataProvider;
    final lOther$mroDataProvider = other.mroDataProvider;
    if (_$data.containsKey('mroDataProvider') !=
        other._$data.containsKey('mroDataProvider')) {
      return false;
    }
    if (l$mroDataProvider != lOther$mroDataProvider) {
      return false;
    }
    final l$showWarningLabel = showWarningLabel;
    final lOther$showWarningLabel = other.showWarningLabel;
    if (_$data.containsKey('showWarningLabel') !=
        other._$data.containsKey('showWarningLabel')) {
      return false;
    }
    if (l$showWarningLabel != lOther$showWarningLabel) {
      return false;
    }
    final l$faultTitle = faultTitle;
    final lOther$faultTitle = other.faultTitle;
    if (_$data.containsKey('faultTitle') !=
        other._$data.containsKey('faultTitle')) {
      return false;
    }
    if (l$faultTitle != lOther$faultTitle) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$isRequired = isRequired;
    final l$validators = validators;
    final l$message = message;
    final l$messageType = messageType;
    final l$isSRRequired = isSRRequired;
    final l$dropdownDataProvider = dropdownDataProvider;
    final l$isMultiline = isMultiline;
    final l$url = url;
    final l$isHTML = isHTML;
    final l$visibilityProvider = visibilityProvider;
    final l$assetCounter = assetCounter;
    final l$mroDataProvider = mroDataProvider;
    final l$showWarningLabel = showWarningLabel;
    final l$faultTitle = faultTitle;
    return Object.hashAll([
      l$id,
      _$data.containsKey('title') ? l$title : const {},
      l$type,
      _$data.containsKey('isRequired') ? l$isRequired : const {},
      _$data.containsKey('validators')
          ? l$validators == null
              ? null
              : Object.hashAll(l$validators.map((v) => v))
          : const {},
      _$data.containsKey('message') ? l$message : const {},
      _$data.containsKey('messageType') ? l$messageType : const {},
      _$data.containsKey('isSRRequired') ? l$isSRRequired : const {},
      _$data.containsKey('dropdownDataProvider')
          ? l$dropdownDataProvider
          : const {},
      _$data.containsKey('isMultiline') ? l$isMultiline : const {},
      _$data.containsKey('url') ? l$url : const {},
      _$data.containsKey('isHTML') ? l$isHTML : const {},
      _$data.containsKey('visibilityProvider')
          ? l$visibilityProvider
          : const {},
      _$data.containsKey('assetCounter') ? l$assetCounter : const {},
      _$data.containsKey('mroDataProvider') ? l$mroDataProvider : const {},
      _$data.containsKey('showWarningLabel') ? l$showWarningLabel : const {},
      _$data.containsKey('faultTitle') ? l$faultTitle : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateEditFormTempateComponentInput<TRes> {
  factory CopyWith$Input$CreateEditFormTempateComponentInput(
    Input$CreateEditFormTempateComponentInput instance,
    TRes Function(Input$CreateEditFormTempateComponentInput) then,
  ) = _CopyWithImpl$Input$CreateEditFormTempateComponentInput;

  factory CopyWith$Input$CreateEditFormTempateComponentInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateEditFormTempateComponentInput;

  TRes call({
    String? id,
    String? title,
    String? type,
    bool? isRequired,
    List<Input$CreateEditFormTemplateValidatorInput>? validators,
    String? message,
    String? messageType,
    bool? isSRRequired,
    Input$CreateEditFormTemplateDataProviderInput? dropdownDataProvider,
    bool? isMultiline,
    String? url,
    bool? isHTML,
    Input$CreateEditFormTemplateDataProviderInput? visibilityProvider,
    Input$CreateEditFormTemplateAssetCounterInput? assetCounter,
    Input$CreateEditFormTemplateDataProviderInput? mroDataProvider,
    bool? showWarningLabel,
    String? faultTitle,
  });
  TRes validators(
      Iterable<Input$CreateEditFormTemplateValidatorInput>? Function(
              Iterable<
                  CopyWith$Input$CreateEditFormTemplateValidatorInput<
                      Input$CreateEditFormTemplateValidatorInput>>?)
          _fn);
  CopyWith$Input$CreateEditFormTemplateDataProviderInput<TRes>
      get dropdownDataProvider;
  CopyWith$Input$CreateEditFormTemplateDataProviderInput<TRes>
      get visibilityProvider;
  CopyWith$Input$CreateEditFormTemplateAssetCounterInput<TRes> get assetCounter;
  CopyWith$Input$CreateEditFormTemplateDataProviderInput<TRes>
      get mroDataProvider;
}

class _CopyWithImpl$Input$CreateEditFormTempateComponentInput<TRes>
    implements CopyWith$Input$CreateEditFormTempateComponentInput<TRes> {
  _CopyWithImpl$Input$CreateEditFormTempateComponentInput(
    this._instance,
    this._then,
  );

  final Input$CreateEditFormTempateComponentInput _instance;

  final TRes Function(Input$CreateEditFormTempateComponentInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? isRequired = _undefined,
    Object? validators = _undefined,
    Object? message = _undefined,
    Object? messageType = _undefined,
    Object? isSRRequired = _undefined,
    Object? dropdownDataProvider = _undefined,
    Object? isMultiline = _undefined,
    Object? url = _undefined,
    Object? isHTML = _undefined,
    Object? visibilityProvider = _undefined,
    Object? assetCounter = _undefined,
    Object? mroDataProvider = _undefined,
    Object? showWarningLabel = _undefined,
    Object? faultTitle = _undefined,
  }) =>
      _then(Input$CreateEditFormTempateComponentInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (title != _undefined) 'title': (title as String?),
        if (type != _undefined && type != null) 'type': (type as String),
        if (isRequired != _undefined) 'isRequired': (isRequired as bool?),
        if (validators != _undefined)
          'validators':
              (validators as List<Input$CreateEditFormTemplateValidatorInput>?),
        if (message != _undefined) 'message': (message as String?),
        if (messageType != _undefined) 'messageType': (messageType as String?),
        if (isSRRequired != _undefined) 'isSRRequired': (isSRRequired as bool?),
        if (dropdownDataProvider != _undefined)
          'dropdownDataProvider': (dropdownDataProvider
              as Input$CreateEditFormTemplateDataProviderInput?),
        if (isMultiline != _undefined) 'isMultiline': (isMultiline as bool?),
        if (url != _undefined) 'url': (url as String?),
        if (isHTML != _undefined) 'isHTML': (isHTML as bool?),
        if (visibilityProvider != _undefined)
          'visibilityProvider': (visibilityProvider
              as Input$CreateEditFormTemplateDataProviderInput?),
        if (assetCounter != _undefined)
          'assetCounter':
              (assetCounter as Input$CreateEditFormTemplateAssetCounterInput?),
        if (mroDataProvider != _undefined)
          'mroDataProvider': (mroDataProvider
              as Input$CreateEditFormTemplateDataProviderInput?),
        if (showWarningLabel != _undefined)
          'showWarningLabel': (showWarningLabel as bool?),
        if (faultTitle != _undefined) 'faultTitle': (faultTitle as String?),
      }));

  TRes validators(
          Iterable<Input$CreateEditFormTemplateValidatorInput>? Function(
                  Iterable<
                      CopyWith$Input$CreateEditFormTemplateValidatorInput<
                          Input$CreateEditFormTemplateValidatorInput>>?)
              _fn) =>
      call(
          validators: _fn(_instance.validators
              ?.map((e) => CopyWith$Input$CreateEditFormTemplateValidatorInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$CreateEditFormTemplateDataProviderInput<TRes>
      get dropdownDataProvider {
    final local$dropdownDataProvider = _instance.dropdownDataProvider;
    return local$dropdownDataProvider == null
        ? CopyWith$Input$CreateEditFormTemplateDataProviderInput.stub(
            _then(_instance))
        : CopyWith$Input$CreateEditFormTemplateDataProviderInput(
            local$dropdownDataProvider, (e) => call(dropdownDataProvider: e));
  }

  CopyWith$Input$CreateEditFormTemplateDataProviderInput<TRes>
      get visibilityProvider {
    final local$visibilityProvider = _instance.visibilityProvider;
    return local$visibilityProvider == null
        ? CopyWith$Input$CreateEditFormTemplateDataProviderInput.stub(
            _then(_instance))
        : CopyWith$Input$CreateEditFormTemplateDataProviderInput(
            local$visibilityProvider, (e) => call(visibilityProvider: e));
  }

  CopyWith$Input$CreateEditFormTemplateAssetCounterInput<TRes>
      get assetCounter {
    final local$assetCounter = _instance.assetCounter;
    return local$assetCounter == null
        ? CopyWith$Input$CreateEditFormTemplateAssetCounterInput.stub(
            _then(_instance))
        : CopyWith$Input$CreateEditFormTemplateAssetCounterInput(
            local$assetCounter, (e) => call(assetCounter: e));
  }

  CopyWith$Input$CreateEditFormTemplateDataProviderInput<TRes>
      get mroDataProvider {
    final local$mroDataProvider = _instance.mroDataProvider;
    return local$mroDataProvider == null
        ? CopyWith$Input$CreateEditFormTemplateDataProviderInput.stub(
            _then(_instance))
        : CopyWith$Input$CreateEditFormTemplateDataProviderInput(
            local$mroDataProvider, (e) => call(mroDataProvider: e));
  }
}

class _CopyWithStubImpl$Input$CreateEditFormTempateComponentInput<TRes>
    implements CopyWith$Input$CreateEditFormTempateComponentInput<TRes> {
  _CopyWithStubImpl$Input$CreateEditFormTempateComponentInput(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? type,
    bool? isRequired,
    List<Input$CreateEditFormTemplateValidatorInput>? validators,
    String? message,
    String? messageType,
    bool? isSRRequired,
    Input$CreateEditFormTemplateDataProviderInput? dropdownDataProvider,
    bool? isMultiline,
    String? url,
    bool? isHTML,
    Input$CreateEditFormTemplateDataProviderInput? visibilityProvider,
    Input$CreateEditFormTemplateAssetCounterInput? assetCounter,
    Input$CreateEditFormTemplateDataProviderInput? mroDataProvider,
    bool? showWarningLabel,
    String? faultTitle,
  }) =>
      _res;

  validators(_fn) => _res;

  CopyWith$Input$CreateEditFormTemplateDataProviderInput<TRes>
      get dropdownDataProvider =>
          CopyWith$Input$CreateEditFormTemplateDataProviderInput.stub(_res);

  CopyWith$Input$CreateEditFormTemplateDataProviderInput<TRes>
      get visibilityProvider =>
          CopyWith$Input$CreateEditFormTemplateDataProviderInput.stub(_res);

  CopyWith$Input$CreateEditFormTemplateAssetCounterInput<TRes>
      get assetCounter =>
          CopyWith$Input$CreateEditFormTemplateAssetCounterInput.stub(_res);

  CopyWith$Input$CreateEditFormTemplateDataProviderInput<TRes>
      get mroDataProvider =>
          CopyWith$Input$CreateEditFormTemplateDataProviderInput.stub(_res);
}

class Input$FormTemplateDataProviderInput {
  factory Input$FormTemplateDataProviderInput({
    required String id,
    required String type,
    List<Input$FormTemplateDataProviderValueInput>? values,
    String? value,
    int? lengthGreaterThan,
    String? url,
    String? query,
    String? objectName,
  }) =>
      Input$FormTemplateDataProviderInput._({
        r'id': id,
        r'type': type,
        if (values != null) r'values': values,
        if (value != null) r'value': value,
        if (lengthGreaterThan != null) r'lengthGreaterThan': lengthGreaterThan,
        if (url != null) r'url': url,
        if (query != null) r'query': query,
        if (objectName != null) r'objectName': objectName,
      });

  Input$FormTemplateDataProviderInput._(this._$data);

  factory Input$FormTemplateDataProviderInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$type = data['type'];
    result$data['type'] = (l$type as String);
    if (data.containsKey('values')) {
      final l$values = data['values'];
      result$data['values'] = (l$values as List<dynamic>?)
          ?.map((e) => Input$FormTemplateDataProviderValueInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] = (l$value as String?);
    }
    if (data.containsKey('lengthGreaterThan')) {
      final l$lengthGreaterThan = data['lengthGreaterThan'];
      result$data['lengthGreaterThan'] = (l$lengthGreaterThan as int?);
    }
    if (data.containsKey('url')) {
      final l$url = data['url'];
      result$data['url'] = (l$url as String?);
    }
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    if (data.containsKey('objectName')) {
      final l$objectName = data['objectName'];
      result$data['objectName'] = (l$objectName as String?);
    }
    return Input$FormTemplateDataProviderInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get type => (_$data['type'] as String);

  List<Input$FormTemplateDataProviderValueInput>? get values =>
      (_$data['values'] as List<Input$FormTemplateDataProviderValueInput>?);

  String? get value => (_$data['value'] as String?);

  int? get lengthGreaterThan => (_$data['lengthGreaterThan'] as int?);

  String? get url => (_$data['url'] as String?);

  String? get query => (_$data['query'] as String?);

  String? get objectName => (_$data['objectName'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$type = type;
    result$data['type'] = l$type;
    if (_$data.containsKey('values')) {
      final l$values = values;
      result$data['values'] = l$values?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = l$value;
    }
    if (_$data.containsKey('lengthGreaterThan')) {
      final l$lengthGreaterThan = lengthGreaterThan;
      result$data['lengthGreaterThan'] = l$lengthGreaterThan;
    }
    if (_$data.containsKey('url')) {
      final l$url = url;
      result$data['url'] = l$url;
    }
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    if (_$data.containsKey('objectName')) {
      final l$objectName = objectName;
      result$data['objectName'] = l$objectName;
    }
    return result$data;
  }

  CopyWith$Input$FormTemplateDataProviderInput<
          Input$FormTemplateDataProviderInput>
      get copyWith => CopyWith$Input$FormTemplateDataProviderInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FormTemplateDataProviderInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$values = values;
    final lOther$values = other.values;
    if (_$data.containsKey('values') != other._$data.containsKey('values')) {
      return false;
    }
    if (l$values != null && lOther$values != null) {
      if (l$values.length != lOther$values.length) {
        return false;
      }
      for (int i = 0; i < l$values.length; i++) {
        final l$values$entry = l$values[i];
        final lOther$values$entry = lOther$values[i];
        if (l$values$entry != lOther$values$entry) {
          return false;
        }
      }
    } else if (l$values != lOther$values) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (_$data.containsKey('value') != other._$data.containsKey('value')) {
      return false;
    }
    if (l$value != lOther$value) {
      return false;
    }
    final l$lengthGreaterThan = lengthGreaterThan;
    final lOther$lengthGreaterThan = other.lengthGreaterThan;
    if (_$data.containsKey('lengthGreaterThan') !=
        other._$data.containsKey('lengthGreaterThan')) {
      return false;
    }
    if (l$lengthGreaterThan != lOther$lengthGreaterThan) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (_$data.containsKey('url') != other._$data.containsKey('url')) {
      return false;
    }
    if (l$url != lOther$url) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (_$data.containsKey('query') != other._$data.containsKey('query')) {
      return false;
    }
    if (l$query != lOther$query) {
      return false;
    }
    final l$objectName = objectName;
    final lOther$objectName = other.objectName;
    if (_$data.containsKey('objectName') !=
        other._$data.containsKey('objectName')) {
      return false;
    }
    if (l$objectName != lOther$objectName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$values = values;
    final l$value = value;
    final l$lengthGreaterThan = lengthGreaterThan;
    final l$url = url;
    final l$query = query;
    final l$objectName = objectName;
    return Object.hashAll([
      l$id,
      l$type,
      _$data.containsKey('values')
          ? l$values == null
              ? null
              : Object.hashAll(l$values.map((v) => v))
          : const {},
      _$data.containsKey('value') ? l$value : const {},
      _$data.containsKey('lengthGreaterThan') ? l$lengthGreaterThan : const {},
      _$data.containsKey('url') ? l$url : const {},
      _$data.containsKey('query') ? l$query : const {},
      _$data.containsKey('objectName') ? l$objectName : const {},
    ]);
  }
}

abstract class CopyWith$Input$FormTemplateDataProviderInput<TRes> {
  factory CopyWith$Input$FormTemplateDataProviderInput(
    Input$FormTemplateDataProviderInput instance,
    TRes Function(Input$FormTemplateDataProviderInput) then,
  ) = _CopyWithImpl$Input$FormTemplateDataProviderInput;

  factory CopyWith$Input$FormTemplateDataProviderInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FormTemplateDataProviderInput;

  TRes call({
    String? id,
    String? type,
    List<Input$FormTemplateDataProviderValueInput>? values,
    String? value,
    int? lengthGreaterThan,
    String? url,
    String? query,
    String? objectName,
  });
  TRes values(
      Iterable<Input$FormTemplateDataProviderValueInput>? Function(
              Iterable<
                  CopyWith$Input$FormTemplateDataProviderValueInput<
                      Input$FormTemplateDataProviderValueInput>>?)
          _fn);
}

class _CopyWithImpl$Input$FormTemplateDataProviderInput<TRes>
    implements CopyWith$Input$FormTemplateDataProviderInput<TRes> {
  _CopyWithImpl$Input$FormTemplateDataProviderInput(
    this._instance,
    this._then,
  );

  final Input$FormTemplateDataProviderInput _instance;

  final TRes Function(Input$FormTemplateDataProviderInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? values = _undefined,
    Object? value = _undefined,
    Object? lengthGreaterThan = _undefined,
    Object? url = _undefined,
    Object? query = _undefined,
    Object? objectName = _undefined,
  }) =>
      _then(Input$FormTemplateDataProviderInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (type != _undefined && type != null) 'type': (type as String),
        if (values != _undefined)
          'values': (values as List<Input$FormTemplateDataProviderValueInput>?),
        if (value != _undefined) 'value': (value as String?),
        if (lengthGreaterThan != _undefined)
          'lengthGreaterThan': (lengthGreaterThan as int?),
        if (url != _undefined) 'url': (url as String?),
        if (query != _undefined) 'query': (query as String?),
        if (objectName != _undefined) 'objectName': (objectName as String?),
      }));

  TRes values(
          Iterable<Input$FormTemplateDataProviderValueInput>? Function(
                  Iterable<
                      CopyWith$Input$FormTemplateDataProviderValueInput<
                          Input$FormTemplateDataProviderValueInput>>?)
              _fn) =>
      call(
          values: _fn(_instance.values
              ?.map((e) => CopyWith$Input$FormTemplateDataProviderValueInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$FormTemplateDataProviderInput<TRes>
    implements CopyWith$Input$FormTemplateDataProviderInput<TRes> {
  _CopyWithStubImpl$Input$FormTemplateDataProviderInput(this._res);

  TRes _res;

  call({
    String? id,
    String? type,
    List<Input$FormTemplateDataProviderValueInput>? values,
    String? value,
    int? lengthGreaterThan,
    String? url,
    String? query,
    String? objectName,
  }) =>
      _res;

  values(_fn) => _res;
}

class Input$FormTemplateComponentInput {
  factory Input$FormTemplateComponentInput({
    required String id,
    String? title,
    required String type,
    List<Input$FormTemplateValidatorInput>? validators,
    bool? isRequired,
    bool? isHTML,
    String? message,
    String? messageType,
    bool? isSRRequired,
    Input$FormTemplateDataProviderIdInput? dropdownDataProvider,
    Input$FormTemplateDataProviderIdInput? visibilityProvider,
    Input$FormTemplateAssetCounterNameInput? assetCounter,
    Input$FormTemplateDataProviderIdInput? mroDataProvider,
    bool? showWarningLabel,
    bool? isMultiline,
    String? url,
  }) =>
      Input$FormTemplateComponentInput._({
        r'id': id,
        if (title != null) r'title': title,
        r'type': type,
        if (validators != null) r'validators': validators,
        if (isRequired != null) r'isRequired': isRequired,
        if (isHTML != null) r'isHTML': isHTML,
        if (message != null) r'message': message,
        if (messageType != null) r'messageType': messageType,
        if (isSRRequired != null) r'isSRRequired': isSRRequired,
        if (dropdownDataProvider != null)
          r'dropdownDataProvider': dropdownDataProvider,
        if (visibilityProvider != null)
          r'visibilityProvider': visibilityProvider,
        if (assetCounter != null) r'assetCounter': assetCounter,
        if (mroDataProvider != null) r'mroDataProvider': mroDataProvider,
        if (showWarningLabel != null) r'showWarningLabel': showWarningLabel,
        if (isMultiline != null) r'isMultiline': isMultiline,
        if (url != null) r'url': url,
      });

  Input$FormTemplateComponentInput._(this._$data);

  factory Input$FormTemplateComponentInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    final l$type = data['type'];
    result$data['type'] = (l$type as String);
    if (data.containsKey('validators')) {
      final l$validators = data['validators'];
      result$data['validators'] = (l$validators as List<dynamic>?)
          ?.map((e) => Input$FormTemplateValidatorInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('isRequired')) {
      final l$isRequired = data['isRequired'];
      result$data['isRequired'] = (l$isRequired as bool?);
    }
    if (data.containsKey('isHTML')) {
      final l$isHTML = data['isHTML'];
      result$data['isHTML'] = (l$isHTML as bool?);
    }
    if (data.containsKey('message')) {
      final l$message = data['message'];
      result$data['message'] = (l$message as String?);
    }
    if (data.containsKey('messageType')) {
      final l$messageType = data['messageType'];
      result$data['messageType'] = (l$messageType as String?);
    }
    if (data.containsKey('isSRRequired')) {
      final l$isSRRequired = data['isSRRequired'];
      result$data['isSRRequired'] = (l$isSRRequired as bool?);
    }
    if (data.containsKey('dropdownDataProvider')) {
      final l$dropdownDataProvider = data['dropdownDataProvider'];
      result$data['dropdownDataProvider'] = l$dropdownDataProvider == null
          ? null
          : Input$FormTemplateDataProviderIdInput.fromJson(
              (l$dropdownDataProvider as Map<String, dynamic>));
    }
    if (data.containsKey('visibilityProvider')) {
      final l$visibilityProvider = data['visibilityProvider'];
      result$data['visibilityProvider'] = l$visibilityProvider == null
          ? null
          : Input$FormTemplateDataProviderIdInput.fromJson(
              (l$visibilityProvider as Map<String, dynamic>));
    }
    if (data.containsKey('assetCounter')) {
      final l$assetCounter = data['assetCounter'];
      result$data['assetCounter'] = l$assetCounter == null
          ? null
          : Input$FormTemplateAssetCounterNameInput.fromJson(
              (l$assetCounter as Map<String, dynamic>));
    }
    if (data.containsKey('mroDataProvider')) {
      final l$mroDataProvider = data['mroDataProvider'];
      result$data['mroDataProvider'] = l$mroDataProvider == null
          ? null
          : Input$FormTemplateDataProviderIdInput.fromJson(
              (l$mroDataProvider as Map<String, dynamic>));
    }
    if (data.containsKey('showWarningLabel')) {
      final l$showWarningLabel = data['showWarningLabel'];
      result$data['showWarningLabel'] = (l$showWarningLabel as bool?);
    }
    if (data.containsKey('isMultiline')) {
      final l$isMultiline = data['isMultiline'];
      result$data['isMultiline'] = (l$isMultiline as bool?);
    }
    if (data.containsKey('url')) {
      final l$url = data['url'];
      result$data['url'] = (l$url as String?);
    }
    return Input$FormTemplateComponentInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String? get title => (_$data['title'] as String?);

  String get type => (_$data['type'] as String);

  List<Input$FormTemplateValidatorInput>? get validators =>
      (_$data['validators'] as List<Input$FormTemplateValidatorInput>?);

  bool? get isRequired => (_$data['isRequired'] as bool?);

  bool? get isHTML => (_$data['isHTML'] as bool?);

  String? get message => (_$data['message'] as String?);

  String? get messageType => (_$data['messageType'] as String?);

  bool? get isSRRequired => (_$data['isSRRequired'] as bool?);

  Input$FormTemplateDataProviderIdInput? get dropdownDataProvider =>
      (_$data['dropdownDataProvider']
          as Input$FormTemplateDataProviderIdInput?);

  Input$FormTemplateDataProviderIdInput? get visibilityProvider =>
      (_$data['visibilityProvider'] as Input$FormTemplateDataProviderIdInput?);

  Input$FormTemplateAssetCounterNameInput? get assetCounter =>
      (_$data['assetCounter'] as Input$FormTemplateAssetCounterNameInput?);

  Input$FormTemplateDataProviderIdInput? get mroDataProvider =>
      (_$data['mroDataProvider'] as Input$FormTemplateDataProviderIdInput?);

  bool? get showWarningLabel => (_$data['showWarningLabel'] as bool?);

  bool? get isMultiline => (_$data['isMultiline'] as bool?);

  String? get url => (_$data['url'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    final l$type = type;
    result$data['type'] = l$type;
    if (_$data.containsKey('validators')) {
      final l$validators = validators;
      result$data['validators'] = l$validators?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('isRequired')) {
      final l$isRequired = isRequired;
      result$data['isRequired'] = l$isRequired;
    }
    if (_$data.containsKey('isHTML')) {
      final l$isHTML = isHTML;
      result$data['isHTML'] = l$isHTML;
    }
    if (_$data.containsKey('message')) {
      final l$message = message;
      result$data['message'] = l$message;
    }
    if (_$data.containsKey('messageType')) {
      final l$messageType = messageType;
      result$data['messageType'] = l$messageType;
    }
    if (_$data.containsKey('isSRRequired')) {
      final l$isSRRequired = isSRRequired;
      result$data['isSRRequired'] = l$isSRRequired;
    }
    if (_$data.containsKey('dropdownDataProvider')) {
      final l$dropdownDataProvider = dropdownDataProvider;
      result$data['dropdownDataProvider'] = l$dropdownDataProvider?.toJson();
    }
    if (_$data.containsKey('visibilityProvider')) {
      final l$visibilityProvider = visibilityProvider;
      result$data['visibilityProvider'] = l$visibilityProvider?.toJson();
    }
    if (_$data.containsKey('assetCounter')) {
      final l$assetCounter = assetCounter;
      result$data['assetCounter'] = l$assetCounter?.toJson();
    }
    if (_$data.containsKey('mroDataProvider')) {
      final l$mroDataProvider = mroDataProvider;
      result$data['mroDataProvider'] = l$mroDataProvider?.toJson();
    }
    if (_$data.containsKey('showWarningLabel')) {
      final l$showWarningLabel = showWarningLabel;
      result$data['showWarningLabel'] = l$showWarningLabel;
    }
    if (_$data.containsKey('isMultiline')) {
      final l$isMultiline = isMultiline;
      result$data['isMultiline'] = l$isMultiline;
    }
    if (_$data.containsKey('url')) {
      final l$url = url;
      result$data['url'] = l$url;
    }
    return result$data;
  }

  CopyWith$Input$FormTemplateComponentInput<Input$FormTemplateComponentInput>
      get copyWith => CopyWith$Input$FormTemplateComponentInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FormTemplateComponentInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$validators = validators;
    final lOther$validators = other.validators;
    if (_$data.containsKey('validators') !=
        other._$data.containsKey('validators')) {
      return false;
    }
    if (l$validators != null && lOther$validators != null) {
      if (l$validators.length != lOther$validators.length) {
        return false;
      }
      for (int i = 0; i < l$validators.length; i++) {
        final l$validators$entry = l$validators[i];
        final lOther$validators$entry = lOther$validators[i];
        if (l$validators$entry != lOther$validators$entry) {
          return false;
        }
      }
    } else if (l$validators != lOther$validators) {
      return false;
    }
    final l$isRequired = isRequired;
    final lOther$isRequired = other.isRequired;
    if (_$data.containsKey('isRequired') !=
        other._$data.containsKey('isRequired')) {
      return false;
    }
    if (l$isRequired != lOther$isRequired) {
      return false;
    }
    final l$isHTML = isHTML;
    final lOther$isHTML = other.isHTML;
    if (_$data.containsKey('isHTML') != other._$data.containsKey('isHTML')) {
      return false;
    }
    if (l$isHTML != lOther$isHTML) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (_$data.containsKey('message') != other._$data.containsKey('message')) {
      return false;
    }
    if (l$message != lOther$message) {
      return false;
    }
    final l$messageType = messageType;
    final lOther$messageType = other.messageType;
    if (_$data.containsKey('messageType') !=
        other._$data.containsKey('messageType')) {
      return false;
    }
    if (l$messageType != lOther$messageType) {
      return false;
    }
    final l$isSRRequired = isSRRequired;
    final lOther$isSRRequired = other.isSRRequired;
    if (_$data.containsKey('isSRRequired') !=
        other._$data.containsKey('isSRRequired')) {
      return false;
    }
    if (l$isSRRequired != lOther$isSRRequired) {
      return false;
    }
    final l$dropdownDataProvider = dropdownDataProvider;
    final lOther$dropdownDataProvider = other.dropdownDataProvider;
    if (_$data.containsKey('dropdownDataProvider') !=
        other._$data.containsKey('dropdownDataProvider')) {
      return false;
    }
    if (l$dropdownDataProvider != lOther$dropdownDataProvider) {
      return false;
    }
    final l$visibilityProvider = visibilityProvider;
    final lOther$visibilityProvider = other.visibilityProvider;
    if (_$data.containsKey('visibilityProvider') !=
        other._$data.containsKey('visibilityProvider')) {
      return false;
    }
    if (l$visibilityProvider != lOther$visibilityProvider) {
      return false;
    }
    final l$assetCounter = assetCounter;
    final lOther$assetCounter = other.assetCounter;
    if (_$data.containsKey('assetCounter') !=
        other._$data.containsKey('assetCounter')) {
      return false;
    }
    if (l$assetCounter != lOther$assetCounter) {
      return false;
    }
    final l$mroDataProvider = mroDataProvider;
    final lOther$mroDataProvider = other.mroDataProvider;
    if (_$data.containsKey('mroDataProvider') !=
        other._$data.containsKey('mroDataProvider')) {
      return false;
    }
    if (l$mroDataProvider != lOther$mroDataProvider) {
      return false;
    }
    final l$showWarningLabel = showWarningLabel;
    final lOther$showWarningLabel = other.showWarningLabel;
    if (_$data.containsKey('showWarningLabel') !=
        other._$data.containsKey('showWarningLabel')) {
      return false;
    }
    if (l$showWarningLabel != lOther$showWarningLabel) {
      return false;
    }
    final l$isMultiline = isMultiline;
    final lOther$isMultiline = other.isMultiline;
    if (_$data.containsKey('isMultiline') !=
        other._$data.containsKey('isMultiline')) {
      return false;
    }
    if (l$isMultiline != lOther$isMultiline) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (_$data.containsKey('url') != other._$data.containsKey('url')) {
      return false;
    }
    if (l$url != lOther$url) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$validators = validators;
    final l$isRequired = isRequired;
    final l$isHTML = isHTML;
    final l$message = message;
    final l$messageType = messageType;
    final l$isSRRequired = isSRRequired;
    final l$dropdownDataProvider = dropdownDataProvider;
    final l$visibilityProvider = visibilityProvider;
    final l$assetCounter = assetCounter;
    final l$mroDataProvider = mroDataProvider;
    final l$showWarningLabel = showWarningLabel;
    final l$isMultiline = isMultiline;
    final l$url = url;
    return Object.hashAll([
      l$id,
      _$data.containsKey('title') ? l$title : const {},
      l$type,
      _$data.containsKey('validators')
          ? l$validators == null
              ? null
              : Object.hashAll(l$validators.map((v) => v))
          : const {},
      _$data.containsKey('isRequired') ? l$isRequired : const {},
      _$data.containsKey('isHTML') ? l$isHTML : const {},
      _$data.containsKey('message') ? l$message : const {},
      _$data.containsKey('messageType') ? l$messageType : const {},
      _$data.containsKey('isSRRequired') ? l$isSRRequired : const {},
      _$data.containsKey('dropdownDataProvider')
          ? l$dropdownDataProvider
          : const {},
      _$data.containsKey('visibilityProvider')
          ? l$visibilityProvider
          : const {},
      _$data.containsKey('assetCounter') ? l$assetCounter : const {},
      _$data.containsKey('mroDataProvider') ? l$mroDataProvider : const {},
      _$data.containsKey('showWarningLabel') ? l$showWarningLabel : const {},
      _$data.containsKey('isMultiline') ? l$isMultiline : const {},
      _$data.containsKey('url') ? l$url : const {},
    ]);
  }
}

abstract class CopyWith$Input$FormTemplateComponentInput<TRes> {
  factory CopyWith$Input$FormTemplateComponentInput(
    Input$FormTemplateComponentInput instance,
    TRes Function(Input$FormTemplateComponentInput) then,
  ) = _CopyWithImpl$Input$FormTemplateComponentInput;

  factory CopyWith$Input$FormTemplateComponentInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FormTemplateComponentInput;

  TRes call({
    String? id,
    String? title,
    String? type,
    List<Input$FormTemplateValidatorInput>? validators,
    bool? isRequired,
    bool? isHTML,
    String? message,
    String? messageType,
    bool? isSRRequired,
    Input$FormTemplateDataProviderIdInput? dropdownDataProvider,
    Input$FormTemplateDataProviderIdInput? visibilityProvider,
    Input$FormTemplateAssetCounterNameInput? assetCounter,
    Input$FormTemplateDataProviderIdInput? mroDataProvider,
    bool? showWarningLabel,
    bool? isMultiline,
    String? url,
  });
  TRes validators(
      Iterable<Input$FormTemplateValidatorInput>? Function(
              Iterable<
                  CopyWith$Input$FormTemplateValidatorInput<
                      Input$FormTemplateValidatorInput>>?)
          _fn);
  CopyWith$Input$FormTemplateDataProviderIdInput<TRes> get dropdownDataProvider;
  CopyWith$Input$FormTemplateDataProviderIdInput<TRes> get visibilityProvider;
  CopyWith$Input$FormTemplateAssetCounterNameInput<TRes> get assetCounter;
  CopyWith$Input$FormTemplateDataProviderIdInput<TRes> get mroDataProvider;
}

class _CopyWithImpl$Input$FormTemplateComponentInput<TRes>
    implements CopyWith$Input$FormTemplateComponentInput<TRes> {
  _CopyWithImpl$Input$FormTemplateComponentInput(
    this._instance,
    this._then,
  );

  final Input$FormTemplateComponentInput _instance;

  final TRes Function(Input$FormTemplateComponentInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? validators = _undefined,
    Object? isRequired = _undefined,
    Object? isHTML = _undefined,
    Object? message = _undefined,
    Object? messageType = _undefined,
    Object? isSRRequired = _undefined,
    Object? dropdownDataProvider = _undefined,
    Object? visibilityProvider = _undefined,
    Object? assetCounter = _undefined,
    Object? mroDataProvider = _undefined,
    Object? showWarningLabel = _undefined,
    Object? isMultiline = _undefined,
    Object? url = _undefined,
  }) =>
      _then(Input$FormTemplateComponentInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (title != _undefined) 'title': (title as String?),
        if (type != _undefined && type != null) 'type': (type as String),
        if (validators != _undefined)
          'validators': (validators as List<Input$FormTemplateValidatorInput>?),
        if (isRequired != _undefined) 'isRequired': (isRequired as bool?),
        if (isHTML != _undefined) 'isHTML': (isHTML as bool?),
        if (message != _undefined) 'message': (message as String?),
        if (messageType != _undefined) 'messageType': (messageType as String?),
        if (isSRRequired != _undefined) 'isSRRequired': (isSRRequired as bool?),
        if (dropdownDataProvider != _undefined)
          'dropdownDataProvider':
              (dropdownDataProvider as Input$FormTemplateDataProviderIdInput?),
        if (visibilityProvider != _undefined)
          'visibilityProvider':
              (visibilityProvider as Input$FormTemplateDataProviderIdInput?),
        if (assetCounter != _undefined)
          'assetCounter':
              (assetCounter as Input$FormTemplateAssetCounterNameInput?),
        if (mroDataProvider != _undefined)
          'mroDataProvider':
              (mroDataProvider as Input$FormTemplateDataProviderIdInput?),
        if (showWarningLabel != _undefined)
          'showWarningLabel': (showWarningLabel as bool?),
        if (isMultiline != _undefined) 'isMultiline': (isMultiline as bool?),
        if (url != _undefined) 'url': (url as String?),
      }));

  TRes validators(
          Iterable<Input$FormTemplateValidatorInput>? Function(
                  Iterable<
                      CopyWith$Input$FormTemplateValidatorInput<
                          Input$FormTemplateValidatorInput>>?)
              _fn) =>
      call(
          validators: _fn(_instance.validators
              ?.map((e) => CopyWith$Input$FormTemplateValidatorInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$FormTemplateDataProviderIdInput<TRes>
      get dropdownDataProvider {
    final local$dropdownDataProvider = _instance.dropdownDataProvider;
    return local$dropdownDataProvider == null
        ? CopyWith$Input$FormTemplateDataProviderIdInput.stub(_then(_instance))
        : CopyWith$Input$FormTemplateDataProviderIdInput(
            local$dropdownDataProvider, (e) => call(dropdownDataProvider: e));
  }

  CopyWith$Input$FormTemplateDataProviderIdInput<TRes> get visibilityProvider {
    final local$visibilityProvider = _instance.visibilityProvider;
    return local$visibilityProvider == null
        ? CopyWith$Input$FormTemplateDataProviderIdInput.stub(_then(_instance))
        : CopyWith$Input$FormTemplateDataProviderIdInput(
            local$visibilityProvider, (e) => call(visibilityProvider: e));
  }

  CopyWith$Input$FormTemplateAssetCounterNameInput<TRes> get assetCounter {
    final local$assetCounter = _instance.assetCounter;
    return local$assetCounter == null
        ? CopyWith$Input$FormTemplateAssetCounterNameInput.stub(
            _then(_instance))
        : CopyWith$Input$FormTemplateAssetCounterNameInput(
            local$assetCounter, (e) => call(assetCounter: e));
  }

  CopyWith$Input$FormTemplateDataProviderIdInput<TRes> get mroDataProvider {
    final local$mroDataProvider = _instance.mroDataProvider;
    return local$mroDataProvider == null
        ? CopyWith$Input$FormTemplateDataProviderIdInput.stub(_then(_instance))
        : CopyWith$Input$FormTemplateDataProviderIdInput(
            local$mroDataProvider, (e) => call(mroDataProvider: e));
  }
}

class _CopyWithStubImpl$Input$FormTemplateComponentInput<TRes>
    implements CopyWith$Input$FormTemplateComponentInput<TRes> {
  _CopyWithStubImpl$Input$FormTemplateComponentInput(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? type,
    List<Input$FormTemplateValidatorInput>? validators,
    bool? isRequired,
    bool? isHTML,
    String? message,
    String? messageType,
    bool? isSRRequired,
    Input$FormTemplateDataProviderIdInput? dropdownDataProvider,
    Input$FormTemplateDataProviderIdInput? visibilityProvider,
    Input$FormTemplateAssetCounterNameInput? assetCounter,
    Input$FormTemplateDataProviderIdInput? mroDataProvider,
    bool? showWarningLabel,
    bool? isMultiline,
    String? url,
  }) =>
      _res;

  validators(_fn) => _res;

  CopyWith$Input$FormTemplateDataProviderIdInput<TRes>
      get dropdownDataProvider =>
          CopyWith$Input$FormTemplateDataProviderIdInput.stub(_res);

  CopyWith$Input$FormTemplateDataProviderIdInput<TRes> get visibilityProvider =>
      CopyWith$Input$FormTemplateDataProviderIdInput.stub(_res);

  CopyWith$Input$FormTemplateAssetCounterNameInput<TRes> get assetCounter =>
      CopyWith$Input$FormTemplateAssetCounterNameInput.stub(_res);

  CopyWith$Input$FormTemplateDataProviderIdInput<TRes> get mroDataProvider =>
      CopyWith$Input$FormTemplateDataProviderIdInput.stub(_res);
}

class Input$CreateEditFormTemplateAssetCounterInput {
  factory Input$CreateEditFormTemplateAssetCounterInput({String? name}) =>
      Input$CreateEditFormTemplateAssetCounterInput._({
        if (name != null) r'name': name,
      });

  Input$CreateEditFormTemplateAssetCounterInput._(this._$data);

  factory Input$CreateEditFormTemplateAssetCounterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input$CreateEditFormTemplateAssetCounterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Input$CreateEditFormTemplateAssetCounterInput<
          Input$CreateEditFormTemplateAssetCounterInput>
      get copyWith => CopyWith$Input$CreateEditFormTemplateAssetCounterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateEditFormTemplateAssetCounterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([_$data.containsKey('name') ? l$name : const {}]);
  }
}

abstract class CopyWith$Input$CreateEditFormTemplateAssetCounterInput<TRes> {
  factory CopyWith$Input$CreateEditFormTemplateAssetCounterInput(
    Input$CreateEditFormTemplateAssetCounterInput instance,
    TRes Function(Input$CreateEditFormTemplateAssetCounterInput) then,
  ) = _CopyWithImpl$Input$CreateEditFormTemplateAssetCounterInput;

  factory CopyWith$Input$CreateEditFormTemplateAssetCounterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$CreateEditFormTemplateAssetCounterInput;

  TRes call({String? name});
}

class _CopyWithImpl$Input$CreateEditFormTemplateAssetCounterInput<TRes>
    implements CopyWith$Input$CreateEditFormTemplateAssetCounterInput<TRes> {
  _CopyWithImpl$Input$CreateEditFormTemplateAssetCounterInput(
    this._instance,
    this._then,
  );

  final Input$CreateEditFormTemplateAssetCounterInput _instance;

  final TRes Function(Input$CreateEditFormTemplateAssetCounterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Input$CreateEditFormTemplateAssetCounterInput._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Input$CreateEditFormTemplateAssetCounterInput<TRes>
    implements CopyWith$Input$CreateEditFormTemplateAssetCounterInput<TRes> {
  _CopyWithStubImpl$Input$CreateEditFormTemplateAssetCounterInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input$CreateEditFormTemplateDataProviderInput {
  factory Input$CreateEditFormTemplateDataProviderInput({
    required String id,
    required String type,
    List<Input$CreateEditFormTemplateDataProviderValueInput>? values,
    String? value,
    int? lengthGreaterThan,
    String? url,
    String? query,
    String? objectName,
  }) =>
      Input$CreateEditFormTemplateDataProviderInput._({
        r'id': id,
        r'type': type,
        if (values != null) r'values': values,
        if (value != null) r'value': value,
        if (lengthGreaterThan != null) r'lengthGreaterThan': lengthGreaterThan,
        if (url != null) r'url': url,
        if (query != null) r'query': query,
        if (objectName != null) r'objectName': objectName,
      });

  Input$CreateEditFormTemplateDataProviderInput._(this._$data);

  factory Input$CreateEditFormTemplateDataProviderInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$type = data['type'];
    result$data['type'] = (l$type as String);
    if (data.containsKey('values')) {
      final l$values = data['values'];
      result$data['values'] = (l$values as List<dynamic>?)
          ?.map((e) =>
              Input$CreateEditFormTemplateDataProviderValueInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] = (l$value as String?);
    }
    if (data.containsKey('lengthGreaterThan')) {
      final l$lengthGreaterThan = data['lengthGreaterThan'];
      result$data['lengthGreaterThan'] = (l$lengthGreaterThan as int?);
    }
    if (data.containsKey('url')) {
      final l$url = data['url'];
      result$data['url'] = (l$url as String?);
    }
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    if (data.containsKey('objectName')) {
      final l$objectName = data['objectName'];
      result$data['objectName'] = (l$objectName as String?);
    }
    return Input$CreateEditFormTemplateDataProviderInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get type => (_$data['type'] as String);

  List<Input$CreateEditFormTemplateDataProviderValueInput>? get values =>
      (_$data['values']
          as List<Input$CreateEditFormTemplateDataProviderValueInput>?);

  String? get value => (_$data['value'] as String?);

  int? get lengthGreaterThan => (_$data['lengthGreaterThan'] as int?);

  String? get url => (_$data['url'] as String?);

  String? get query => (_$data['query'] as String?);

  String? get objectName => (_$data['objectName'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$type = type;
    result$data['type'] = l$type;
    if (_$data.containsKey('values')) {
      final l$values = values;
      result$data['values'] = l$values?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = l$value;
    }
    if (_$data.containsKey('lengthGreaterThan')) {
      final l$lengthGreaterThan = lengthGreaterThan;
      result$data['lengthGreaterThan'] = l$lengthGreaterThan;
    }
    if (_$data.containsKey('url')) {
      final l$url = url;
      result$data['url'] = l$url;
    }
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    if (_$data.containsKey('objectName')) {
      final l$objectName = objectName;
      result$data['objectName'] = l$objectName;
    }
    return result$data;
  }

  CopyWith$Input$CreateEditFormTemplateDataProviderInput<
          Input$CreateEditFormTemplateDataProviderInput>
      get copyWith => CopyWith$Input$CreateEditFormTemplateDataProviderInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateEditFormTemplateDataProviderInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$values = values;
    final lOther$values = other.values;
    if (_$data.containsKey('values') != other._$data.containsKey('values')) {
      return false;
    }
    if (l$values != null && lOther$values != null) {
      if (l$values.length != lOther$values.length) {
        return false;
      }
      for (int i = 0; i < l$values.length; i++) {
        final l$values$entry = l$values[i];
        final lOther$values$entry = lOther$values[i];
        if (l$values$entry != lOther$values$entry) {
          return false;
        }
      }
    } else if (l$values != lOther$values) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (_$data.containsKey('value') != other._$data.containsKey('value')) {
      return false;
    }
    if (l$value != lOther$value) {
      return false;
    }
    final l$lengthGreaterThan = lengthGreaterThan;
    final lOther$lengthGreaterThan = other.lengthGreaterThan;
    if (_$data.containsKey('lengthGreaterThan') !=
        other._$data.containsKey('lengthGreaterThan')) {
      return false;
    }
    if (l$lengthGreaterThan != lOther$lengthGreaterThan) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (_$data.containsKey('url') != other._$data.containsKey('url')) {
      return false;
    }
    if (l$url != lOther$url) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (_$data.containsKey('query') != other._$data.containsKey('query')) {
      return false;
    }
    if (l$query != lOther$query) {
      return false;
    }
    final l$objectName = objectName;
    final lOther$objectName = other.objectName;
    if (_$data.containsKey('objectName') !=
        other._$data.containsKey('objectName')) {
      return false;
    }
    if (l$objectName != lOther$objectName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$values = values;
    final l$value = value;
    final l$lengthGreaterThan = lengthGreaterThan;
    final l$url = url;
    final l$query = query;
    final l$objectName = objectName;
    return Object.hashAll([
      l$id,
      l$type,
      _$data.containsKey('values')
          ? l$values == null
              ? null
              : Object.hashAll(l$values.map((v) => v))
          : const {},
      _$data.containsKey('value') ? l$value : const {},
      _$data.containsKey('lengthGreaterThan') ? l$lengthGreaterThan : const {},
      _$data.containsKey('url') ? l$url : const {},
      _$data.containsKey('query') ? l$query : const {},
      _$data.containsKey('objectName') ? l$objectName : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateEditFormTemplateDataProviderInput<TRes> {
  factory CopyWith$Input$CreateEditFormTemplateDataProviderInput(
    Input$CreateEditFormTemplateDataProviderInput instance,
    TRes Function(Input$CreateEditFormTemplateDataProviderInput) then,
  ) = _CopyWithImpl$Input$CreateEditFormTemplateDataProviderInput;

  factory CopyWith$Input$CreateEditFormTemplateDataProviderInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$CreateEditFormTemplateDataProviderInput;

  TRes call({
    String? id,
    String? type,
    List<Input$CreateEditFormTemplateDataProviderValueInput>? values,
    String? value,
    int? lengthGreaterThan,
    String? url,
    String? query,
    String? objectName,
  });
  TRes values(
      Iterable<Input$CreateEditFormTemplateDataProviderValueInput>? Function(
              Iterable<
                  CopyWith$Input$CreateEditFormTemplateDataProviderValueInput<
                      Input$CreateEditFormTemplateDataProviderValueInput>>?)
          _fn);
}

class _CopyWithImpl$Input$CreateEditFormTemplateDataProviderInput<TRes>
    implements CopyWith$Input$CreateEditFormTemplateDataProviderInput<TRes> {
  _CopyWithImpl$Input$CreateEditFormTemplateDataProviderInput(
    this._instance,
    this._then,
  );

  final Input$CreateEditFormTemplateDataProviderInput _instance;

  final TRes Function(Input$CreateEditFormTemplateDataProviderInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? values = _undefined,
    Object? value = _undefined,
    Object? lengthGreaterThan = _undefined,
    Object? url = _undefined,
    Object? query = _undefined,
    Object? objectName = _undefined,
  }) =>
      _then(Input$CreateEditFormTemplateDataProviderInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (type != _undefined && type != null) 'type': (type as String),
        if (values != _undefined)
          'values': (values
              as List<Input$CreateEditFormTemplateDataProviderValueInput>?),
        if (value != _undefined) 'value': (value as String?),
        if (lengthGreaterThan != _undefined)
          'lengthGreaterThan': (lengthGreaterThan as int?),
        if (url != _undefined) 'url': (url as String?),
        if (query != _undefined) 'query': (query as String?),
        if (objectName != _undefined) 'objectName': (objectName as String?),
      }));

  TRes values(
          Iterable<Input$CreateEditFormTemplateDataProviderValueInput>? Function(
                  Iterable<
                      CopyWith$Input$CreateEditFormTemplateDataProviderValueInput<
                          Input$CreateEditFormTemplateDataProviderValueInput>>?)
              _fn) =>
      call(
          values: _fn(_instance.values?.map((e) =>
              CopyWith$Input$CreateEditFormTemplateDataProviderValueInput(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$CreateEditFormTemplateDataProviderInput<TRes>
    implements CopyWith$Input$CreateEditFormTemplateDataProviderInput<TRes> {
  _CopyWithStubImpl$Input$CreateEditFormTemplateDataProviderInput(this._res);

  TRes _res;

  call({
    String? id,
    String? type,
    List<Input$CreateEditFormTemplateDataProviderValueInput>? values,
    String? value,
    int? lengthGreaterThan,
    String? url,
    String? query,
    String? objectName,
  }) =>
      _res;

  values(_fn) => _res;
}

class Input$CreateEditFormTemplateValidatorInput {
  factory Input$CreateEditFormTemplateValidatorInput({
    required String type,
    String? message,
    int? minValue,
    int? maxValue,
  }) =>
      Input$CreateEditFormTemplateValidatorInput._({
        r'type': type,
        if (message != null) r'message': message,
        if (minValue != null) r'minValue': minValue,
        if (maxValue != null) r'maxValue': maxValue,
      });

  Input$CreateEditFormTemplateValidatorInput._(this._$data);

  factory Input$CreateEditFormTemplateValidatorInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$type = data['type'];
    result$data['type'] = (l$type as String);
    if (data.containsKey('message')) {
      final l$message = data['message'];
      result$data['message'] = (l$message as String?);
    }
    if (data.containsKey('minValue')) {
      final l$minValue = data['minValue'];
      result$data['minValue'] = (l$minValue as int?);
    }
    if (data.containsKey('maxValue')) {
      final l$maxValue = data['maxValue'];
      result$data['maxValue'] = (l$maxValue as int?);
    }
    return Input$CreateEditFormTemplateValidatorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get type => (_$data['type'] as String);

  String? get message => (_$data['message'] as String?);

  int? get minValue => (_$data['minValue'] as int?);

  int? get maxValue => (_$data['maxValue'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$type = type;
    result$data['type'] = l$type;
    if (_$data.containsKey('message')) {
      final l$message = message;
      result$data['message'] = l$message;
    }
    if (_$data.containsKey('minValue')) {
      final l$minValue = minValue;
      result$data['minValue'] = l$minValue;
    }
    if (_$data.containsKey('maxValue')) {
      final l$maxValue = maxValue;
      result$data['maxValue'] = l$maxValue;
    }
    return result$data;
  }

  CopyWith$Input$CreateEditFormTemplateValidatorInput<
          Input$CreateEditFormTemplateValidatorInput>
      get copyWith => CopyWith$Input$CreateEditFormTemplateValidatorInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateEditFormTemplateValidatorInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (_$data.containsKey('message') != other._$data.containsKey('message')) {
      return false;
    }
    if (l$message != lOther$message) {
      return false;
    }
    final l$minValue = minValue;
    final lOther$minValue = other.minValue;
    if (_$data.containsKey('minValue') !=
        other._$data.containsKey('minValue')) {
      return false;
    }
    if (l$minValue != lOther$minValue) {
      return false;
    }
    final l$maxValue = maxValue;
    final lOther$maxValue = other.maxValue;
    if (_$data.containsKey('maxValue') !=
        other._$data.containsKey('maxValue')) {
      return false;
    }
    if (l$maxValue != lOther$maxValue) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$message = message;
    final l$minValue = minValue;
    final l$maxValue = maxValue;
    return Object.hashAll([
      l$type,
      _$data.containsKey('message') ? l$message : const {},
      _$data.containsKey('minValue') ? l$minValue : const {},
      _$data.containsKey('maxValue') ? l$maxValue : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateEditFormTemplateValidatorInput<TRes> {
  factory CopyWith$Input$CreateEditFormTemplateValidatorInput(
    Input$CreateEditFormTemplateValidatorInput instance,
    TRes Function(Input$CreateEditFormTemplateValidatorInput) then,
  ) = _CopyWithImpl$Input$CreateEditFormTemplateValidatorInput;

  factory CopyWith$Input$CreateEditFormTemplateValidatorInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateEditFormTemplateValidatorInput;

  TRes call({
    String? type,
    String? message,
    int? minValue,
    int? maxValue,
  });
}

class _CopyWithImpl$Input$CreateEditFormTemplateValidatorInput<TRes>
    implements CopyWith$Input$CreateEditFormTemplateValidatorInput<TRes> {
  _CopyWithImpl$Input$CreateEditFormTemplateValidatorInput(
    this._instance,
    this._then,
  );

  final Input$CreateEditFormTemplateValidatorInput _instance;

  final TRes Function(Input$CreateEditFormTemplateValidatorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? message = _undefined,
    Object? minValue = _undefined,
    Object? maxValue = _undefined,
  }) =>
      _then(Input$CreateEditFormTemplateValidatorInput._({
        ..._instance._$data,
        if (type != _undefined && type != null) 'type': (type as String),
        if (message != _undefined) 'message': (message as String?),
        if (minValue != _undefined) 'minValue': (minValue as int?),
        if (maxValue != _undefined) 'maxValue': (maxValue as int?),
      }));
}

class _CopyWithStubImpl$Input$CreateEditFormTemplateValidatorInput<TRes>
    implements CopyWith$Input$CreateEditFormTemplateValidatorInput<TRes> {
  _CopyWithStubImpl$Input$CreateEditFormTemplateValidatorInput(this._res);

  TRes _res;

  call({
    String? type,
    String? message,
    int? minValue,
    int? maxValue,
  }) =>
      _res;
}

class Input$CreateEditFormTemplateDataProviderValueInput {
  factory Input$CreateEditFormTemplateDataProviderValueInput({
    required String id,
    required String value,
  }) =>
      Input$CreateEditFormTemplateDataProviderValueInput._({
        r'id': id,
        r'value': value,
      });

  Input$CreateEditFormTemplateDataProviderValueInput._(this._$data);

  factory Input$CreateEditFormTemplateDataProviderValueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$value = data['value'];
    result$data['value'] = (l$value as String);
    return Input$CreateEditFormTemplateDataProviderValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get value => (_$data['value'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$value = value;
    result$data['value'] = l$value;
    return result$data;
  }

  CopyWith$Input$CreateEditFormTemplateDataProviderValueInput<
          Input$CreateEditFormTemplateDataProviderValueInput>
      get copyWith =>
          CopyWith$Input$CreateEditFormTemplateDataProviderValueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateEditFormTemplateDataProviderValueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$value = value;
    return Object.hashAll([
      l$id,
      l$value,
    ]);
  }
}

abstract class CopyWith$Input$CreateEditFormTemplateDataProviderValueInput<
    TRes> {
  factory CopyWith$Input$CreateEditFormTemplateDataProviderValueInput(
    Input$CreateEditFormTemplateDataProviderValueInput instance,
    TRes Function(Input$CreateEditFormTemplateDataProviderValueInput) then,
  ) = _CopyWithImpl$Input$CreateEditFormTemplateDataProviderValueInput;

  factory CopyWith$Input$CreateEditFormTemplateDataProviderValueInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$CreateEditFormTemplateDataProviderValueInput;

  TRes call({
    String? id,
    String? value,
  });
}

class _CopyWithImpl$Input$CreateEditFormTemplateDataProviderValueInput<TRes>
    implements
        CopyWith$Input$CreateEditFormTemplateDataProviderValueInput<TRes> {
  _CopyWithImpl$Input$CreateEditFormTemplateDataProviderValueInput(
    this._instance,
    this._then,
  );

  final Input$CreateEditFormTemplateDataProviderValueInput _instance;

  final TRes Function(Input$CreateEditFormTemplateDataProviderValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? value = _undefined,
  }) =>
      _then(Input$CreateEditFormTemplateDataProviderValueInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (value != _undefined && value != null) 'value': (value as String),
      }));
}

class _CopyWithStubImpl$Input$CreateEditFormTemplateDataProviderValueInput<TRes>
    implements
        CopyWith$Input$CreateEditFormTemplateDataProviderValueInput<TRes> {
  _CopyWithStubImpl$Input$CreateEditFormTemplateDataProviderValueInput(
      this._res);

  TRes _res;

  call({
    String? id,
    String? value,
  }) =>
      _res;
}

class Input$FormTemplateAssetCounterNameInput {
  factory Input$FormTemplateAssetCounterNameInput({String? name}) =>
      Input$FormTemplateAssetCounterNameInput._({
        if (name != null) r'name': name,
      });

  Input$FormTemplateAssetCounterNameInput._(this._$data);

  factory Input$FormTemplateAssetCounterNameInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input$FormTemplateAssetCounterNameInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Input$FormTemplateAssetCounterNameInput<
          Input$FormTemplateAssetCounterNameInput>
      get copyWith => CopyWith$Input$FormTemplateAssetCounterNameInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FormTemplateAssetCounterNameInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([_$data.containsKey('name') ? l$name : const {}]);
  }
}

abstract class CopyWith$Input$FormTemplateAssetCounterNameInput<TRes> {
  factory CopyWith$Input$FormTemplateAssetCounterNameInput(
    Input$FormTemplateAssetCounterNameInput instance,
    TRes Function(Input$FormTemplateAssetCounterNameInput) then,
  ) = _CopyWithImpl$Input$FormTemplateAssetCounterNameInput;

  factory CopyWith$Input$FormTemplateAssetCounterNameInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FormTemplateAssetCounterNameInput;

  TRes call({String? name});
}

class _CopyWithImpl$Input$FormTemplateAssetCounterNameInput<TRes>
    implements CopyWith$Input$FormTemplateAssetCounterNameInput<TRes> {
  _CopyWithImpl$Input$FormTemplateAssetCounterNameInput(
    this._instance,
    this._then,
  );

  final Input$FormTemplateAssetCounterNameInput _instance;

  final TRes Function(Input$FormTemplateAssetCounterNameInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) =>
      _then(Input$FormTemplateAssetCounterNameInput._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Input$FormTemplateAssetCounterNameInput<TRes>
    implements CopyWith$Input$FormTemplateAssetCounterNameInput<TRes> {
  _CopyWithStubImpl$Input$FormTemplateAssetCounterNameInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input$FormTemplateDataProviderIdInput {
  factory Input$FormTemplateDataProviderIdInput({required String id}) =>
      Input$FormTemplateDataProviderIdInput._({
        r'id': id,
      });

  Input$FormTemplateDataProviderIdInput._(this._$data);

  factory Input$FormTemplateDataProviderIdInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$FormTemplateDataProviderIdInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$FormTemplateDataProviderIdInput<
          Input$FormTemplateDataProviderIdInput>
      get copyWith => CopyWith$Input$FormTemplateDataProviderIdInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FormTemplateDataProviderIdInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$FormTemplateDataProviderIdInput<TRes> {
  factory CopyWith$Input$FormTemplateDataProviderIdInput(
    Input$FormTemplateDataProviderIdInput instance,
    TRes Function(Input$FormTemplateDataProviderIdInput) then,
  ) = _CopyWithImpl$Input$FormTemplateDataProviderIdInput;

  factory CopyWith$Input$FormTemplateDataProviderIdInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FormTemplateDataProviderIdInput;

  TRes call({String? id});
}

class _CopyWithImpl$Input$FormTemplateDataProviderIdInput<TRes>
    implements CopyWith$Input$FormTemplateDataProviderIdInput<TRes> {
  _CopyWithImpl$Input$FormTemplateDataProviderIdInput(
    this._instance,
    this._then,
  );

  final Input$FormTemplateDataProviderIdInput _instance;

  final TRes Function(Input$FormTemplateDataProviderIdInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Input$FormTemplateDataProviderIdInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Input$FormTemplateDataProviderIdInput<TRes>
    implements CopyWith$Input$FormTemplateDataProviderIdInput<TRes> {
  _CopyWithStubImpl$Input$FormTemplateDataProviderIdInput(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$FormTemplateValidatorInput {
  factory Input$FormTemplateValidatorInput({
    required String type,
    String? message,
    int? minValue,
    int? maxValue,
  }) =>
      Input$FormTemplateValidatorInput._({
        r'type': type,
        if (message != null) r'message': message,
        if (minValue != null) r'minValue': minValue,
        if (maxValue != null) r'maxValue': maxValue,
      });

  Input$FormTemplateValidatorInput._(this._$data);

  factory Input$FormTemplateValidatorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$type = data['type'];
    result$data['type'] = (l$type as String);
    if (data.containsKey('message')) {
      final l$message = data['message'];
      result$data['message'] = (l$message as String?);
    }
    if (data.containsKey('minValue')) {
      final l$minValue = data['minValue'];
      result$data['minValue'] = (l$minValue as int?);
    }
    if (data.containsKey('maxValue')) {
      final l$maxValue = data['maxValue'];
      result$data['maxValue'] = (l$maxValue as int?);
    }
    return Input$FormTemplateValidatorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get type => (_$data['type'] as String);

  String? get message => (_$data['message'] as String?);

  int? get minValue => (_$data['minValue'] as int?);

  int? get maxValue => (_$data['maxValue'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$type = type;
    result$data['type'] = l$type;
    if (_$data.containsKey('message')) {
      final l$message = message;
      result$data['message'] = l$message;
    }
    if (_$data.containsKey('minValue')) {
      final l$minValue = minValue;
      result$data['minValue'] = l$minValue;
    }
    if (_$data.containsKey('maxValue')) {
      final l$maxValue = maxValue;
      result$data['maxValue'] = l$maxValue;
    }
    return result$data;
  }

  CopyWith$Input$FormTemplateValidatorInput<Input$FormTemplateValidatorInput>
      get copyWith => CopyWith$Input$FormTemplateValidatorInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FormTemplateValidatorInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (_$data.containsKey('message') != other._$data.containsKey('message')) {
      return false;
    }
    if (l$message != lOther$message) {
      return false;
    }
    final l$minValue = minValue;
    final lOther$minValue = other.minValue;
    if (_$data.containsKey('minValue') !=
        other._$data.containsKey('minValue')) {
      return false;
    }
    if (l$minValue != lOther$minValue) {
      return false;
    }
    final l$maxValue = maxValue;
    final lOther$maxValue = other.maxValue;
    if (_$data.containsKey('maxValue') !=
        other._$data.containsKey('maxValue')) {
      return false;
    }
    if (l$maxValue != lOther$maxValue) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$message = message;
    final l$minValue = minValue;
    final l$maxValue = maxValue;
    return Object.hashAll([
      l$type,
      _$data.containsKey('message') ? l$message : const {},
      _$data.containsKey('minValue') ? l$minValue : const {},
      _$data.containsKey('maxValue') ? l$maxValue : const {},
    ]);
  }
}

abstract class CopyWith$Input$FormTemplateValidatorInput<TRes> {
  factory CopyWith$Input$FormTemplateValidatorInput(
    Input$FormTemplateValidatorInput instance,
    TRes Function(Input$FormTemplateValidatorInput) then,
  ) = _CopyWithImpl$Input$FormTemplateValidatorInput;

  factory CopyWith$Input$FormTemplateValidatorInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FormTemplateValidatorInput;

  TRes call({
    String? type,
    String? message,
    int? minValue,
    int? maxValue,
  });
}

class _CopyWithImpl$Input$FormTemplateValidatorInput<TRes>
    implements CopyWith$Input$FormTemplateValidatorInput<TRes> {
  _CopyWithImpl$Input$FormTemplateValidatorInput(
    this._instance,
    this._then,
  );

  final Input$FormTemplateValidatorInput _instance;

  final TRes Function(Input$FormTemplateValidatorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? message = _undefined,
    Object? minValue = _undefined,
    Object? maxValue = _undefined,
  }) =>
      _then(Input$FormTemplateValidatorInput._({
        ..._instance._$data,
        if (type != _undefined && type != null) 'type': (type as String),
        if (message != _undefined) 'message': (message as String?),
        if (minValue != _undefined) 'minValue': (minValue as int?),
        if (maxValue != _undefined) 'maxValue': (maxValue as int?),
      }));
}

class _CopyWithStubImpl$Input$FormTemplateValidatorInput<TRes>
    implements CopyWith$Input$FormTemplateValidatorInput<TRes> {
  _CopyWithStubImpl$Input$FormTemplateValidatorInput(this._res);

  TRes _res;

  call({
    String? type,
    String? message,
    int? minValue,
    int? maxValue,
  }) =>
      _res;
}

class Input$FormTemplateDataProviderValueInput {
  factory Input$FormTemplateDataProviderValueInput({
    required String id,
    required String value,
  }) =>
      Input$FormTemplateDataProviderValueInput._({
        r'id': id,
        r'value': value,
      });

  Input$FormTemplateDataProviderValueInput._(this._$data);

  factory Input$FormTemplateDataProviderValueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$value = data['value'];
    result$data['value'] = (l$value as String);
    return Input$FormTemplateDataProviderValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get value => (_$data['value'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$value = value;
    result$data['value'] = l$value;
    return result$data;
  }

  CopyWith$Input$FormTemplateDataProviderValueInput<
          Input$FormTemplateDataProviderValueInput>
      get copyWith => CopyWith$Input$FormTemplateDataProviderValueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FormTemplateDataProviderValueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$value = value;
    return Object.hashAll([
      l$id,
      l$value,
    ]);
  }
}

abstract class CopyWith$Input$FormTemplateDataProviderValueInput<TRes> {
  factory CopyWith$Input$FormTemplateDataProviderValueInput(
    Input$FormTemplateDataProviderValueInput instance,
    TRes Function(Input$FormTemplateDataProviderValueInput) then,
  ) = _CopyWithImpl$Input$FormTemplateDataProviderValueInput;

  factory CopyWith$Input$FormTemplateDataProviderValueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FormTemplateDataProviderValueInput;

  TRes call({
    String? id,
    String? value,
  });
}

class _CopyWithImpl$Input$FormTemplateDataProviderValueInput<TRes>
    implements CopyWith$Input$FormTemplateDataProviderValueInput<TRes> {
  _CopyWithImpl$Input$FormTemplateDataProviderValueInput(
    this._instance,
    this._then,
  );

  final Input$FormTemplateDataProviderValueInput _instance;

  final TRes Function(Input$FormTemplateDataProviderValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? value = _undefined,
  }) =>
      _then(Input$FormTemplateDataProviderValueInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (value != _undefined && value != null) 'value': (value as String),
      }));
}

class _CopyWithStubImpl$Input$FormTemplateDataProviderValueInput<TRes>
    implements CopyWith$Input$FormTemplateDataProviderValueInput<TRes> {
  _CopyWithStubImpl$Input$FormTemplateDataProviderValueInput(this._res);

  TRes _res;

  call({
    String? id,
    String? value,
  }) =>
      _res;
}

enum Enum$ScheduledItemStatus {
  NOT_STARTED,
  IN_PROGRESS,
  CANCELLED,
  COMPLETE,
  $unknown;

  factory Enum$ScheduledItemStatus.fromJson(String value) =>
      fromJson$Enum$ScheduledItemStatus(value);

  String toJson() => toJson$Enum$ScheduledItemStatus(this);
}

String toJson$Enum$ScheduledItemStatus(Enum$ScheduledItemStatus e) {
  switch (e) {
    case Enum$ScheduledItemStatus.NOT_STARTED:
      return r'NOT_STARTED';
    case Enum$ScheduledItemStatus.IN_PROGRESS:
      return r'IN_PROGRESS';
    case Enum$ScheduledItemStatus.CANCELLED:
      return r'CANCELLED';
    case Enum$ScheduledItemStatus.COMPLETE:
      return r'COMPLETE';
    case Enum$ScheduledItemStatus.$unknown:
      return r'$unknown';
  }
}

Enum$ScheduledItemStatus fromJson$Enum$ScheduledItemStatus(String value) {
  switch (value) {
    case r'NOT_STARTED':
      return Enum$ScheduledItemStatus.NOT_STARTED;
    case r'IN_PROGRESS':
      return Enum$ScheduledItemStatus.IN_PROGRESS;
    case r'CANCELLED':
      return Enum$ScheduledItemStatus.CANCELLED;
    case r'COMPLETE':
      return Enum$ScheduledItemStatus.COMPLETE;
    default:
      return Enum$ScheduledItemStatus.$unknown;
  }
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
  WORK_ORDER_DELETION_FAILED,
  ADHOC_TEMPLATE_CREATION_FAILED,
  ADHOC_TEMPLATE_UPDATION_FAILED,
  FAILED_TO_CREATE_CLIENT,
  CREATE_FORM_LIST_FAILED,
  UPDATE_FORM_LIST_FAILED,
  DELETE_FORM_LIST_FAILED,
  CREATE_TEAM_FAILED,
  UPDATE_TEAM_FAILED,
  DELETE_TEAM_FAILED,
  UNALLOCATE_USER_FROM_JOB_FAILED,
  UNALLOCATE_TEAM_FROM_JOB_FAILED,
  DELETE_TEMPLATE_FAILED,
  SAVING_COMPANY_PREFERENCE_FAILED,
  $unknown;

  factory Enum$Codes.fromJson(String value) => fromJson$Enum$Codes(value);

  String toJson() => toJson$Enum$Codes(this);
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
    case Enum$Codes.WORK_ORDER_DELETION_FAILED:
      return r'WORK_ORDER_DELETION_FAILED';
    case Enum$Codes.ADHOC_TEMPLATE_CREATION_FAILED:
      return r'ADHOC_TEMPLATE_CREATION_FAILED';
    case Enum$Codes.ADHOC_TEMPLATE_UPDATION_FAILED:
      return r'ADHOC_TEMPLATE_UPDATION_FAILED';
    case Enum$Codes.FAILED_TO_CREATE_CLIENT:
      return r'FAILED_TO_CREATE_CLIENT';
    case Enum$Codes.CREATE_FORM_LIST_FAILED:
      return r'CREATE_FORM_LIST_FAILED';
    case Enum$Codes.UPDATE_FORM_LIST_FAILED:
      return r'UPDATE_FORM_LIST_FAILED';
    case Enum$Codes.DELETE_FORM_LIST_FAILED:
      return r'DELETE_FORM_LIST_FAILED';
    case Enum$Codes.CREATE_TEAM_FAILED:
      return r'CREATE_TEAM_FAILED';
    case Enum$Codes.UPDATE_TEAM_FAILED:
      return r'UPDATE_TEAM_FAILED';
    case Enum$Codes.DELETE_TEAM_FAILED:
      return r'DELETE_TEAM_FAILED';
    case Enum$Codes.UNALLOCATE_USER_FROM_JOB_FAILED:
      return r'UNALLOCATE_USER_FROM_JOB_FAILED';
    case Enum$Codes.UNALLOCATE_TEAM_FROM_JOB_FAILED:
      return r'UNALLOCATE_TEAM_FROM_JOB_FAILED';
    case Enum$Codes.DELETE_TEMPLATE_FAILED:
      return r'DELETE_TEMPLATE_FAILED';
    case Enum$Codes.SAVING_COMPANY_PREFERENCE_FAILED:
      return r'SAVING_COMPANY_PREFERENCE_FAILED';
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
    case r'WORK_ORDER_DELETION_FAILED':
      return Enum$Codes.WORK_ORDER_DELETION_FAILED;
    case r'ADHOC_TEMPLATE_CREATION_FAILED':
      return Enum$Codes.ADHOC_TEMPLATE_CREATION_FAILED;
    case r'ADHOC_TEMPLATE_UPDATION_FAILED':
      return Enum$Codes.ADHOC_TEMPLATE_UPDATION_FAILED;
    case r'FAILED_TO_CREATE_CLIENT':
      return Enum$Codes.FAILED_TO_CREATE_CLIENT;
    case r'CREATE_FORM_LIST_FAILED':
      return Enum$Codes.CREATE_FORM_LIST_FAILED;
    case r'UPDATE_FORM_LIST_FAILED':
      return Enum$Codes.UPDATE_FORM_LIST_FAILED;
    case r'DELETE_FORM_LIST_FAILED':
      return Enum$Codes.DELETE_FORM_LIST_FAILED;
    case r'CREATE_TEAM_FAILED':
      return Enum$Codes.CREATE_TEAM_FAILED;
    case r'UPDATE_TEAM_FAILED':
      return Enum$Codes.UPDATE_TEAM_FAILED;
    case r'DELETE_TEAM_FAILED':
      return Enum$Codes.DELETE_TEAM_FAILED;
    case r'UNALLOCATE_USER_FROM_JOB_FAILED':
      return Enum$Codes.UNALLOCATE_USER_FROM_JOB_FAILED;
    case r'UNALLOCATE_TEAM_FROM_JOB_FAILED':
      return Enum$Codes.UNALLOCATE_TEAM_FROM_JOB_FAILED;
    case r'DELETE_TEMPLATE_FAILED':
      return Enum$Codes.DELETE_TEMPLATE_FAILED;
    case r'SAVING_COMPANY_PREFERENCE_FAILED':
      return Enum$Codes.SAVING_COMPANY_PREFERENCE_FAILED;
    default:
      return Enum$Codes.$unknown;
  }
}

enum Enum$APIResultType {
  SUCCESS,
  WARNING,
  ERROR,
  $unknown;

  factory Enum$APIResultType.fromJson(String value) =>
      fromJson$Enum$APIResultType(value);

  String toJson() => toJson$Enum$APIResultType(this);
}

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

enum Enum$RepeatInterval {
  DAYS,
  WEEKS,
  MONTHS,
  YEARS,
  $unknown;

  factory Enum$RepeatInterval.fromJson(String value) =>
      fromJson$Enum$RepeatInterval(value);

  String toJson() => toJson$Enum$RepeatInterval(this);
}

String toJson$Enum$RepeatInterval(Enum$RepeatInterval e) {
  switch (e) {
    case Enum$RepeatInterval.DAYS:
      return r'DAYS';
    case Enum$RepeatInterval.WEEKS:
      return r'WEEKS';
    case Enum$RepeatInterval.MONTHS:
      return r'MONTHS';
    case Enum$RepeatInterval.YEARS:
      return r'YEARS';
    case Enum$RepeatInterval.$unknown:
      return r'$unknown';
  }
}

Enum$RepeatInterval fromJson$Enum$RepeatInterval(String value) {
  switch (value) {
    case r'DAYS':
      return Enum$RepeatInterval.DAYS;
    case r'WEEKS':
      return Enum$RepeatInterval.WEEKS;
    case r'MONTHS':
      return Enum$RepeatInterval.MONTHS;
    case r'YEARS':
      return Enum$RepeatInterval.YEARS;
    default:
      return Enum$RepeatInterval.$unknown;
  }
}

enum Enum$FormInstanceStatusId {
  IN_PROGRESS,
  READY_TO_SUBMIT,
  SUBMITTED,
  SUBMIT_FAILED,
  CANCELED,
  $unknown;

  factory Enum$FormInstanceStatusId.fromJson(String value) =>
      fromJson$Enum$FormInstanceStatusId(value);

  String toJson() => toJson$Enum$FormInstanceStatusId(this);
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

enum Enum$MediaTypeId {
  IMAGE,
  VIDEO,
  $unknown;

  factory Enum$MediaTypeId.fromJson(String value) =>
      fromJson$Enum$MediaTypeId(value);

  String toJson() => toJson$Enum$MediaTypeId(this);
}

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
