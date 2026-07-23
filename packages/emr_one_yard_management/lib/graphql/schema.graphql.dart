import 'queries/liveLoads.graphql.dart';

class Input$RouteToMarketQueryModelInput {
  factory Input$RouteToMarketQueryModelInput({
    List<String?>? depotNo,
    String? grade,
    String? route,
  }) =>
      Input$RouteToMarketQueryModelInput._({
        if (depotNo != null) r'depotNo': depotNo,
        if (grade != null) r'grade': grade,
        if (route != null) r'route': route,
      });

  Input$RouteToMarketQueryModelInput._(this._$data);

  factory Input$RouteToMarketQueryModelInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('depotNo')) {
      final l$depotNo = data['depotNo'];
      result$data['depotNo'] =
          (l$depotNo as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('grade')) {
      final l$grade = data['grade'];
      result$data['grade'] = (l$grade as String?);
    }
    if (data.containsKey('route')) {
      final l$route = data['route'];
      result$data['route'] = (l$route as String?);
    }
    return Input$RouteToMarketQueryModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String?>? get depotNo => (_$data['depotNo'] as List<String?>?);

  String? get grade => (_$data['grade'] as String?);

  String? get route => (_$data['route'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('depotNo')) {
      final l$depotNo = depotNo;
      result$data['depotNo'] = l$depotNo?.map((e) => e).toList();
    }
    if (_$data.containsKey('grade')) {
      final l$grade = grade;
      result$data['grade'] = l$grade;
    }
    if (_$data.containsKey('route')) {
      final l$route = route;
      result$data['route'] = l$route;
    }
    return result$data;
  }

  CopyWith$Input$RouteToMarketQueryModelInput<
          Input$RouteToMarketQueryModelInput>
      get copyWith => CopyWith$Input$RouteToMarketQueryModelInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RouteToMarketQueryModelInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (_$data.containsKey('depotNo') != other._$data.containsKey('depotNo')) {
      return false;
    }
    if (l$depotNo != null && lOther$depotNo != null) {
      if (l$depotNo.length != lOther$depotNo.length) {
        return false;
      }
      for (int i = 0; i < l$depotNo.length; i++) {
        final l$depotNo$entry = l$depotNo[i];
        final lOther$depotNo$entry = lOther$depotNo[i];
        if (l$depotNo$entry != lOther$depotNo$entry) {
          return false;
        }
      }
    } else if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$grade = grade;
    final lOther$grade = other.grade;
    if (_$data.containsKey('grade') != other._$data.containsKey('grade')) {
      return false;
    }
    if (l$grade != lOther$grade) {
      return false;
    }
    final l$route = route;
    final lOther$route = other.route;
    if (_$data.containsKey('route') != other._$data.containsKey('route')) {
      return false;
    }
    if (l$route != lOther$route) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$depotNo = depotNo;
    final l$grade = grade;
    final l$route = route;
    return Object.hashAll([
      _$data.containsKey('depotNo')
          ? l$depotNo == null
              ? null
              : Object.hashAll(l$depotNo.map((v) => v))
          : const {},
      _$data.containsKey('grade') ? l$grade : const {},
      _$data.containsKey('route') ? l$route : const {},
    ]);
  }
}

abstract class CopyWith$Input$RouteToMarketQueryModelInput<TRes> {
  factory CopyWith$Input$RouteToMarketQueryModelInput(
    Input$RouteToMarketQueryModelInput instance,
    TRes Function(Input$RouteToMarketQueryModelInput) then,
  ) = _CopyWithImpl$Input$RouteToMarketQueryModelInput;

  factory CopyWith$Input$RouteToMarketQueryModelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RouteToMarketQueryModelInput;

  TRes call({
    List<String?>? depotNo,
    String? grade,
    String? route,
  });
}

class _CopyWithImpl$Input$RouteToMarketQueryModelInput<TRes>
    implements CopyWith$Input$RouteToMarketQueryModelInput<TRes> {
  _CopyWithImpl$Input$RouteToMarketQueryModelInput(
    this._instance,
    this._then,
  );

  final Input$RouteToMarketQueryModelInput _instance;

  final TRes Function(Input$RouteToMarketQueryModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depotNo = _undefined,
    Object? grade = _undefined,
    Object? route = _undefined,
  }) =>
      _then(Input$RouteToMarketQueryModelInput._({
        ..._instance._$data,
        if (depotNo != _undefined) 'depotNo': (depotNo as List<String?>?),
        if (grade != _undefined) 'grade': (grade as String?),
        if (route != _undefined) 'route': (route as String?),
      }));
}

class _CopyWithStubImpl$Input$RouteToMarketQueryModelInput<TRes>
    implements CopyWith$Input$RouteToMarketQueryModelInput<TRes> {
  _CopyWithStubImpl$Input$RouteToMarketQueryModelInput(this._res);

  TRes _res;

  call({
    List<String?>? depotNo,
    String? grade,
    String? route,
  }) =>
      _res;
}

class Input$LiveLoadsQueryModelInput {
  factory Input$LiveLoadsQueryModelInput({
    Input$QuerySortOptionInput? sort,
    Input$LiveLoadsSearchInput? search,
    List<Input$LiveLoadsModelInput>? dataWithCompletedStatus,
  }) =>
      Input$LiveLoadsQueryModelInput._({
        if (sort != null) r'sort': sort,
        if (search != null) r'search': search,
        if (dataWithCompletedStatus != null)
          r'dataWithCompletedStatus': dataWithCompletedStatus,
      });

  Input$LiveLoadsQueryModelInput._(this._$data);

  factory Input$LiveLoadsQueryModelInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = l$sort == null
          ? null
          : Input$QuerySortOptionInput.fromJson(
              (l$sort as Map<String, dynamic>));
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = l$search == null
          ? null
          : Input$LiveLoadsSearchInput.fromJson(
              (l$search as Map<String, dynamic>));
    }
    if (data.containsKey('dataWithCompletedStatus')) {
      final l$dataWithCompletedStatus = data['dataWithCompletedStatus'];
      result$data['dataWithCompletedStatus'] = (l$dataWithCompletedStatus
              as List<dynamic>?)
          ?.map((e) =>
              Input$LiveLoadsModelInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$LiveLoadsQueryModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$QuerySortOptionInput? get sort =>
      (_$data['sort'] as Input$QuerySortOptionInput?);

  Input$LiveLoadsSearchInput? get search =>
      (_$data['search'] as Input$LiveLoadsSearchInput?);

  List<Input$LiveLoadsModelInput>? get dataWithCompletedStatus =>
      (_$data['dataWithCompletedStatus'] as List<Input$LiveLoadsModelInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort?.toJson();
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search?.toJson();
    }
    if (_$data.containsKey('dataWithCompletedStatus')) {
      final l$dataWithCompletedStatus = dataWithCompletedStatus;
      result$data['dataWithCompletedStatus'] =
          l$dataWithCompletedStatus?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$LiveLoadsQueryModelInput<Input$LiveLoadsQueryModelInput>
      get copyWith => CopyWith$Input$LiveLoadsQueryModelInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LiveLoadsQueryModelInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != lOther$sort) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
      return false;
    }
    final l$dataWithCompletedStatus = dataWithCompletedStatus;
    final lOther$dataWithCompletedStatus = other.dataWithCompletedStatus;
    if (_$data.containsKey('dataWithCompletedStatus') !=
        other._$data.containsKey('dataWithCompletedStatus')) {
      return false;
    }
    if (l$dataWithCompletedStatus != null &&
        lOther$dataWithCompletedStatus != null) {
      if (l$dataWithCompletedStatus.length !=
          lOther$dataWithCompletedStatus.length) {
        return false;
      }
      for (int i = 0; i < l$dataWithCompletedStatus.length; i++) {
        final l$dataWithCompletedStatus$entry = l$dataWithCompletedStatus[i];
        final lOther$dataWithCompletedStatus$entry =
            lOther$dataWithCompletedStatus[i];
        if (l$dataWithCompletedStatus$entry !=
            lOther$dataWithCompletedStatus$entry) {
          return false;
        }
      }
    } else if (l$dataWithCompletedStatus != lOther$dataWithCompletedStatus) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$sort = sort;
    final l$search = search;
    final l$dataWithCompletedStatus = dataWithCompletedStatus;
    return Object.hashAll([
      _$data.containsKey('sort') ? l$sort : const {},
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('dataWithCompletedStatus')
          ? l$dataWithCompletedStatus == null
              ? null
              : Object.hashAll(l$dataWithCompletedStatus.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$LiveLoadsQueryModelInput<TRes> {
  factory CopyWith$Input$LiveLoadsQueryModelInput(
    Input$LiveLoadsQueryModelInput instance,
    TRes Function(Input$LiveLoadsQueryModelInput) then,
  ) = _CopyWithImpl$Input$LiveLoadsQueryModelInput;

  factory CopyWith$Input$LiveLoadsQueryModelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LiveLoadsQueryModelInput;

  TRes call({
    Input$QuerySortOptionInput? sort,
    Input$LiveLoadsSearchInput? search,
    List<Input$LiveLoadsModelInput>? dataWithCompletedStatus,
  });
  CopyWith$Input$QuerySortOptionInput<TRes> get sort;
  CopyWith$Input$LiveLoadsSearchInput<TRes> get search;
  TRes dataWithCompletedStatus(
      Iterable<Input$LiveLoadsModelInput>? Function(
              Iterable<
                  CopyWith$Input$LiveLoadsModelInput<
                      Input$LiveLoadsModelInput>>?)
          _fn);
}

class _CopyWithImpl$Input$LiveLoadsQueryModelInput<TRes>
    implements CopyWith$Input$LiveLoadsQueryModelInput<TRes> {
  _CopyWithImpl$Input$LiveLoadsQueryModelInput(
    this._instance,
    this._then,
  );

  final Input$LiveLoadsQueryModelInput _instance;

  final TRes Function(Input$LiveLoadsQueryModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sort = _undefined,
    Object? search = _undefined,
    Object? dataWithCompletedStatus = _undefined,
  }) =>
      _then(Input$LiveLoadsQueryModelInput._({
        ..._instance._$data,
        if (sort != _undefined) 'sort': (sort as Input$QuerySortOptionInput?),
        if (search != _undefined)
          'search': (search as Input$LiveLoadsSearchInput?),
        if (dataWithCompletedStatus != _undefined)
          'dataWithCompletedStatus':
              (dataWithCompletedStatus as List<Input$LiveLoadsModelInput>?),
      }));

  CopyWith$Input$QuerySortOptionInput<TRes> get sort {
    final local$sort = _instance.sort;
    return local$sort == null
        ? CopyWith$Input$QuerySortOptionInput.stub(_then(_instance))
        : CopyWith$Input$QuerySortOptionInput(local$sort, (e) => call(sort: e));
  }

  CopyWith$Input$LiveLoadsSearchInput<TRes> get search {
    final local$search = _instance.search;
    return local$search == null
        ? CopyWith$Input$LiveLoadsSearchInput.stub(_then(_instance))
        : CopyWith$Input$LiveLoadsSearchInput(
            local$search, (e) => call(search: e));
  }

  TRes dataWithCompletedStatus(
          Iterable<Input$LiveLoadsModelInput>? Function(
                  Iterable<
                      CopyWith$Input$LiveLoadsModelInput<
                          Input$LiveLoadsModelInput>>?)
              _fn) =>
      call(
          dataWithCompletedStatus: _fn(_instance.dataWithCompletedStatus
              ?.map((e) => CopyWith$Input$LiveLoadsModelInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$LiveLoadsQueryModelInput<TRes>
    implements CopyWith$Input$LiveLoadsQueryModelInput<TRes> {
  _CopyWithStubImpl$Input$LiveLoadsQueryModelInput(this._res);

  TRes _res;

  call({
    Input$QuerySortOptionInput? sort,
    Input$LiveLoadsSearchInput? search,
    List<Input$LiveLoadsModelInput>? dataWithCompletedStatus,
  }) =>
      _res;

  CopyWith$Input$QuerySortOptionInput<TRes> get sort =>
      CopyWith$Input$QuerySortOptionInput.stub(_res);

  CopyWith$Input$LiveLoadsSearchInput<TRes> get search =>
      CopyWith$Input$LiveLoadsSearchInput.stub(_res);

  dataWithCompletedStatus(_fn) => _res;
}

class Input$LiveLoadsModelInput {
  factory Input$LiveLoadsModelInput({
    String? type,
    String? direction,
    String? haulierName,
    int? jobNumber,
    String? customerLocation,
    String? planned,
    String? instruction,
    String? actual,
    String? remaining,
    String? status,
    required int statusOrder,
    required int statusId,
    String? fromYardCode,
    String? toYardCode,
    required DateTime scheduledDate,
    required double duration,
  }) =>
      Input$LiveLoadsModelInput._({
        if (type != null) r'type': type,
        if (direction != null) r'direction': direction,
        if (haulierName != null) r'haulierName': haulierName,
        if (jobNumber != null) r'jobNumber': jobNumber,
        if (customerLocation != null) r'customerLocation': customerLocation,
        if (planned != null) r'planned': planned,
        if (instruction != null) r'instruction': instruction,
        if (actual != null) r'actual': actual,
        if (remaining != null) r'remaining': remaining,
        if (status != null) r'status': status,
        r'statusOrder': statusOrder,
        r'statusId': statusId,
        if (fromYardCode != null) r'fromYardCode': fromYardCode,
        if (toYardCode != null) r'toYardCode': toYardCode,
        r'scheduledDate': scheduledDate,
        r'duration': duration,
      });

  Input$LiveLoadsModelInput._(this._$data);

  factory Input$LiveLoadsModelInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = (l$type as String?);
    }
    if (data.containsKey('direction')) {
      final l$direction = data['direction'];
      result$data['direction'] = (l$direction as String?);
    }
    if (data.containsKey('haulierName')) {
      final l$haulierName = data['haulierName'];
      result$data['haulierName'] = (l$haulierName as String?);
    }
    if (data.containsKey('jobNumber')) {
      final l$jobNumber = data['jobNumber'];
      result$data['jobNumber'] = (l$jobNumber as int?);
    }
    if (data.containsKey('customerLocation')) {
      final l$customerLocation = data['customerLocation'];
      result$data['customerLocation'] = (l$customerLocation as String?);
    }
    if (data.containsKey('planned')) {
      final l$planned = data['planned'];
      result$data['planned'] = (l$planned as String?);
    }
    if (data.containsKey('instruction')) {
      final l$instruction = data['instruction'];
      result$data['instruction'] = (l$instruction as String?);
    }
    if (data.containsKey('actual')) {
      final l$actual = data['actual'];
      result$data['actual'] = (l$actual as String?);
    }
    if (data.containsKey('remaining')) {
      final l$remaining = data['remaining'];
      result$data['remaining'] = (l$remaining as String?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as String?);
    }
    final l$statusOrder = data['statusOrder'];
    result$data['statusOrder'] = (l$statusOrder as int);
    final l$statusId = data['statusId'];
    result$data['statusId'] = (l$statusId as int);
    if (data.containsKey('fromYardCode')) {
      final l$fromYardCode = data['fromYardCode'];
      result$data['fromYardCode'] = (l$fromYardCode as String?);
    }
    if (data.containsKey('toYardCode')) {
      final l$toYardCode = data['toYardCode'];
      result$data['toYardCode'] = (l$toYardCode as String?);
    }
    final l$scheduledDate = data['scheduledDate'];
    result$data['scheduledDate'] = DateTime.parse((l$scheduledDate as String));
    final l$duration = data['duration'];
    result$data['duration'] = (l$duration as num).toDouble();
    return Input$LiveLoadsModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get type => (_$data['type'] as String?);

  String? get direction => (_$data['direction'] as String?);

  String? get haulierName => (_$data['haulierName'] as String?);

  int? get jobNumber => (_$data['jobNumber'] as int?);

  String? get customerLocation => (_$data['customerLocation'] as String?);

  String? get planned => (_$data['planned'] as String?);

  String? get instruction => (_$data['instruction'] as String?);

  String? get actual => (_$data['actual'] as String?);

  String? get remaining => (_$data['remaining'] as String?);

  String? get status => (_$data['status'] as String?);

  int get statusOrder => (_$data['statusOrder'] as int);

  int get statusId => (_$data['statusId'] as int);

  String? get fromYardCode => (_$data['fromYardCode'] as String?);

  String? get toYardCode => (_$data['toYardCode'] as String?);

  DateTime get scheduledDate => (_$data['scheduledDate'] as DateTime);

  double get duration => (_$data['duration'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type;
    }
    if (_$data.containsKey('direction')) {
      final l$direction = direction;
      result$data['direction'] = l$direction;
    }
    if (_$data.containsKey('haulierName')) {
      final l$haulierName = haulierName;
      result$data['haulierName'] = l$haulierName;
    }
    if (_$data.containsKey('jobNumber')) {
      final l$jobNumber = jobNumber;
      result$data['jobNumber'] = l$jobNumber;
    }
    if (_$data.containsKey('customerLocation')) {
      final l$customerLocation = customerLocation;
      result$data['customerLocation'] = l$customerLocation;
    }
    if (_$data.containsKey('planned')) {
      final l$planned = planned;
      result$data['planned'] = l$planned;
    }
    if (_$data.containsKey('instruction')) {
      final l$instruction = instruction;
      result$data['instruction'] = l$instruction;
    }
    if (_$data.containsKey('actual')) {
      final l$actual = actual;
      result$data['actual'] = l$actual;
    }
    if (_$data.containsKey('remaining')) {
      final l$remaining = remaining;
      result$data['remaining'] = l$remaining;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    final l$statusOrder = statusOrder;
    result$data['statusOrder'] = l$statusOrder;
    final l$statusId = statusId;
    result$data['statusId'] = l$statusId;
    if (_$data.containsKey('fromYardCode')) {
      final l$fromYardCode = fromYardCode;
      result$data['fromYardCode'] = l$fromYardCode;
    }
    if (_$data.containsKey('toYardCode')) {
      final l$toYardCode = toYardCode;
      result$data['toYardCode'] = l$toYardCode;
    }
    final l$scheduledDate = scheduledDate;
    result$data['scheduledDate'] = l$scheduledDate.toIso8601String();
    final l$duration = duration;
    result$data['duration'] = l$duration;
    return result$data;
  }

  CopyWith$Input$LiveLoadsModelInput<Input$LiveLoadsModelInput> get copyWith =>
      CopyWith$Input$LiveLoadsModelInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LiveLoadsModelInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (_$data.containsKey('direction') !=
        other._$data.containsKey('direction')) {
      return false;
    }
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$haulierName = haulierName;
    final lOther$haulierName = other.haulierName;
    if (_$data.containsKey('haulierName') !=
        other._$data.containsKey('haulierName')) {
      return false;
    }
    if (l$haulierName != lOther$haulierName) {
      return false;
    }
    final l$jobNumber = jobNumber;
    final lOther$jobNumber = other.jobNumber;
    if (_$data.containsKey('jobNumber') !=
        other._$data.containsKey('jobNumber')) {
      return false;
    }
    if (l$jobNumber != lOther$jobNumber) {
      return false;
    }
    final l$customerLocation = customerLocation;
    final lOther$customerLocation = other.customerLocation;
    if (_$data.containsKey('customerLocation') !=
        other._$data.containsKey('customerLocation')) {
      return false;
    }
    if (l$customerLocation != lOther$customerLocation) {
      return false;
    }
    final l$planned = planned;
    final lOther$planned = other.planned;
    if (_$data.containsKey('planned') != other._$data.containsKey('planned')) {
      return false;
    }
    if (l$planned != lOther$planned) {
      return false;
    }
    final l$instruction = instruction;
    final lOther$instruction = other.instruction;
    if (_$data.containsKey('instruction') !=
        other._$data.containsKey('instruction')) {
      return false;
    }
    if (l$instruction != lOther$instruction) {
      return false;
    }
    final l$actual = actual;
    final lOther$actual = other.actual;
    if (_$data.containsKey('actual') != other._$data.containsKey('actual')) {
      return false;
    }
    if (l$actual != lOther$actual) {
      return false;
    }
    final l$remaining = remaining;
    final lOther$remaining = other.remaining;
    if (_$data.containsKey('remaining') !=
        other._$data.containsKey('remaining')) {
      return false;
    }
    if (l$remaining != lOther$remaining) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$statusOrder = statusOrder;
    final lOther$statusOrder = other.statusOrder;
    if (l$statusOrder != lOther$statusOrder) {
      return false;
    }
    final l$statusId = statusId;
    final lOther$statusId = other.statusId;
    if (l$statusId != lOther$statusId) {
      return false;
    }
    final l$fromYardCode = fromYardCode;
    final lOther$fromYardCode = other.fromYardCode;
    if (_$data.containsKey('fromYardCode') !=
        other._$data.containsKey('fromYardCode')) {
      return false;
    }
    if (l$fromYardCode != lOther$fromYardCode) {
      return false;
    }
    final l$toYardCode = toYardCode;
    final lOther$toYardCode = other.toYardCode;
    if (_$data.containsKey('toYardCode') !=
        other._$data.containsKey('toYardCode')) {
      return false;
    }
    if (l$toYardCode != lOther$toYardCode) {
      return false;
    }
    final l$scheduledDate = scheduledDate;
    final lOther$scheduledDate = other.scheduledDate;
    if (l$scheduledDate != lOther$scheduledDate) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$direction = direction;
    final l$haulierName = haulierName;
    final l$jobNumber = jobNumber;
    final l$customerLocation = customerLocation;
    final l$planned = planned;
    final l$instruction = instruction;
    final l$actual = actual;
    final l$remaining = remaining;
    final l$status = status;
    final l$statusOrder = statusOrder;
    final l$statusId = statusId;
    final l$fromYardCode = fromYardCode;
    final l$toYardCode = toYardCode;
    final l$scheduledDate = scheduledDate;
    final l$duration = duration;
    return Object.hashAll([
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('direction') ? l$direction : const {},
      _$data.containsKey('haulierName') ? l$haulierName : const {},
      _$data.containsKey('jobNumber') ? l$jobNumber : const {},
      _$data.containsKey('customerLocation') ? l$customerLocation : const {},
      _$data.containsKey('planned') ? l$planned : const {},
      _$data.containsKey('instruction') ? l$instruction : const {},
      _$data.containsKey('actual') ? l$actual : const {},
      _$data.containsKey('remaining') ? l$remaining : const {},
      _$data.containsKey('status') ? l$status : const {},
      l$statusOrder,
      l$statusId,
      _$data.containsKey('fromYardCode') ? l$fromYardCode : const {},
      _$data.containsKey('toYardCode') ? l$toYardCode : const {},
      l$scheduledDate,
      l$duration,
    ]);
  }
}

abstract class CopyWith$Input$LiveLoadsModelInput<TRes> {
  factory CopyWith$Input$LiveLoadsModelInput(
    Input$LiveLoadsModelInput instance,
    TRes Function(Input$LiveLoadsModelInput) then,
  ) = _CopyWithImpl$Input$LiveLoadsModelInput;

  factory CopyWith$Input$LiveLoadsModelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LiveLoadsModelInput;

  TRes call({
    String? type,
    String? direction,
    String? haulierName,
    int? jobNumber,
    String? customerLocation,
    String? planned,
    String? instruction,
    String? actual,
    String? remaining,
    String? status,
    int? statusOrder,
    int? statusId,
    String? fromYardCode,
    String? toYardCode,
    DateTime? scheduledDate,
    double? duration,
  });
}

class _CopyWithImpl$Input$LiveLoadsModelInput<TRes>
    implements CopyWith$Input$LiveLoadsModelInput<TRes> {
  _CopyWithImpl$Input$LiveLoadsModelInput(
    this._instance,
    this._then,
  );

  final Input$LiveLoadsModelInput _instance;

  final TRes Function(Input$LiveLoadsModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? direction = _undefined,
    Object? haulierName = _undefined,
    Object? jobNumber = _undefined,
    Object? customerLocation = _undefined,
    Object? planned = _undefined,
    Object? instruction = _undefined,
    Object? actual = _undefined,
    Object? remaining = _undefined,
    Object? status = _undefined,
    Object? statusOrder = _undefined,
    Object? statusId = _undefined,
    Object? fromYardCode = _undefined,
    Object? toYardCode = _undefined,
    Object? scheduledDate = _undefined,
    Object? duration = _undefined,
  }) =>
      _then(Input$LiveLoadsModelInput._({
        ..._instance._$data,
        if (type != _undefined) 'type': (type as String?),
        if (direction != _undefined) 'direction': (direction as String?),
        if (haulierName != _undefined) 'haulierName': (haulierName as String?),
        if (jobNumber != _undefined) 'jobNumber': (jobNumber as int?),
        if (customerLocation != _undefined)
          'customerLocation': (customerLocation as String?),
        if (planned != _undefined) 'planned': (planned as String?),
        if (instruction != _undefined) 'instruction': (instruction as String?),
        if (actual != _undefined) 'actual': (actual as String?),
        if (remaining != _undefined) 'remaining': (remaining as String?),
        if (status != _undefined) 'status': (status as String?),
        if (statusOrder != _undefined && statusOrder != null)
          'statusOrder': (statusOrder as int),
        if (statusId != _undefined && statusId != null)
          'statusId': (statusId as int),
        if (fromYardCode != _undefined)
          'fromYardCode': (fromYardCode as String?),
        if (toYardCode != _undefined) 'toYardCode': (toYardCode as String?),
        if (scheduledDate != _undefined && scheduledDate != null)
          'scheduledDate': (scheduledDate as DateTime),
        if (duration != _undefined && duration != null)
          'duration': (duration as double),
      }));
}

class _CopyWithStubImpl$Input$LiveLoadsModelInput<TRes>
    implements CopyWith$Input$LiveLoadsModelInput<TRes> {
  _CopyWithStubImpl$Input$LiveLoadsModelInput(this._res);

  TRes _res;

  call({
    String? type,
    String? direction,
    String? haulierName,
    int? jobNumber,
    String? customerLocation,
    String? planned,
    String? instruction,
    String? actual,
    String? remaining,
    String? status,
    int? statusOrder,
    int? statusId,
    String? fromYardCode,
    String? toYardCode,
    DateTime? scheduledDate,
    double? duration,
  }) =>
      _res;
}

class Input$LiveLoadsSearchInput {
  factory Input$LiveLoadsSearchInput({
    DateTime? startDate,
    DateTime? endDate,
    String? yardCode,
    String? customer,
  }) =>
      Input$LiveLoadsSearchInput._({
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
        if (yardCode != null) r'yardCode': yardCode,
        if (customer != null) r'customer': customer,
      });

  Input$LiveLoadsSearchInput._(this._$data);

  factory Input$LiveLoadsSearchInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = (l$yardCode as String?);
    }
    if (data.containsKey('customer')) {
      final l$customer = data['customer'];
      result$data['customer'] = (l$customer as String?);
    }
    return Input$LiveLoadsSearchInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get startDate => (_$data['startDate'] as DateTime?);

  DateTime? get endDate => (_$data['endDate'] as DateTime?);

  String? get yardCode => (_$data['yardCode'] as String?);

  String? get customer => (_$data['customer'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('startDate')) {
      final l$startDate = startDate;
      result$data['startDate'] = l$startDate?.toIso8601String();
    }
    if (_$data.containsKey('endDate')) {
      final l$endDate = endDate;
      result$data['endDate'] = l$endDate?.toIso8601String();
    }
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] = l$yardCode;
    }
    if (_$data.containsKey('customer')) {
      final l$customer = customer;
      result$data['customer'] = l$customer;
    }
    return result$data;
  }

  CopyWith$Input$LiveLoadsSearchInput<Input$LiveLoadsSearchInput>
      get copyWith => CopyWith$Input$LiveLoadsSearchInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LiveLoadsSearchInput) ||
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
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (_$data.containsKey('yardCode') !=
        other._$data.containsKey('yardCode')) {
      return false;
    }
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$customer = customer;
    final lOther$customer = other.customer;
    if (_$data.containsKey('customer') !=
        other._$data.containsKey('customer')) {
      return false;
    }
    if (l$customer != lOther$customer) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$yardCode = yardCode;
    final l$customer = customer;
    return Object.hashAll([
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('customer') ? l$customer : const {},
    ]);
  }
}

abstract class CopyWith$Input$LiveLoadsSearchInput<TRes> {
  factory CopyWith$Input$LiveLoadsSearchInput(
    Input$LiveLoadsSearchInput instance,
    TRes Function(Input$LiveLoadsSearchInput) then,
  ) = _CopyWithImpl$Input$LiveLoadsSearchInput;

  factory CopyWith$Input$LiveLoadsSearchInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LiveLoadsSearchInput;

  TRes call({
    DateTime? startDate,
    DateTime? endDate,
    String? yardCode,
    String? customer,
  });
}

class _CopyWithImpl$Input$LiveLoadsSearchInput<TRes>
    implements CopyWith$Input$LiveLoadsSearchInput<TRes> {
  _CopyWithImpl$Input$LiveLoadsSearchInput(
    this._instance,
    this._then,
  );

  final Input$LiveLoadsSearchInput _instance;

  final TRes Function(Input$LiveLoadsSearchInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? yardCode = _undefined,
    Object? customer = _undefined,
  }) =>
      _then(Input$LiveLoadsSearchInput._({
        ..._instance._$data,
        if (startDate != _undefined) 'startDate': (startDate as DateTime?),
        if (endDate != _undefined) 'endDate': (endDate as DateTime?),
        if (yardCode != _undefined) 'yardCode': (yardCode as String?),
        if (customer != _undefined) 'customer': (customer as String?),
      }));
}

class _CopyWithStubImpl$Input$LiveLoadsSearchInput<TRes>
    implements CopyWith$Input$LiveLoadsSearchInput<TRes> {
  _CopyWithStubImpl$Input$LiveLoadsSearchInput(this._res);

  TRes _res;

  call({
    DateTime? startDate,
    DateTime? endDate,
    String? yardCode,
    String? customer,
  }) =>
      _res;
}

class Input$QuerySortOptionInput {
  factory Input$QuerySortOptionInput({
    String? predicate,
    required bool reverse,
  }) =>
      Input$QuerySortOptionInput._({
        if (predicate != null) r'predicate': predicate,
        r'reverse': reverse,
      });

  Input$QuerySortOptionInput._(this._$data);

  factory Input$QuerySortOptionInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('predicate')) {
      final l$predicate = data['predicate'];
      result$data['predicate'] = (l$predicate as String?);
    }
    final l$reverse = data['reverse'];
    result$data['reverse'] = (l$reverse as bool);
    return Input$QuerySortOptionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get predicate => (_$data['predicate'] as String?);

  bool get reverse => (_$data['reverse'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('predicate')) {
      final l$predicate = predicate;
      result$data['predicate'] = l$predicate;
    }
    final l$reverse = reverse;
    result$data['reverse'] = l$reverse;
    return result$data;
  }

  CopyWith$Input$QuerySortOptionInput<Input$QuerySortOptionInput>
      get copyWith => CopyWith$Input$QuerySortOptionInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$QuerySortOptionInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (_$data.containsKey('predicate') !=
        other._$data.containsKey('predicate')) {
      return false;
    }
    if (l$predicate != lOther$predicate) {
      return false;
    }
    final l$reverse = reverse;
    final lOther$reverse = other.reverse;
    if (l$reverse != lOther$reverse) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$predicate = predicate;
    final l$reverse = reverse;
    return Object.hashAll([
      _$data.containsKey('predicate') ? l$predicate : const {},
      l$reverse,
    ]);
  }
}

abstract class CopyWith$Input$QuerySortOptionInput<TRes> {
  factory CopyWith$Input$QuerySortOptionInput(
    Input$QuerySortOptionInput instance,
    TRes Function(Input$QuerySortOptionInput) then,
  ) = _CopyWithImpl$Input$QuerySortOptionInput;

  factory CopyWith$Input$QuerySortOptionInput.stub(TRes res) =
      _CopyWithStubImpl$Input$QuerySortOptionInput;

  TRes call({
    String? predicate,
    bool? reverse,
  });
}

class _CopyWithImpl$Input$QuerySortOptionInput<TRes>
    implements CopyWith$Input$QuerySortOptionInput<TRes> {
  _CopyWithImpl$Input$QuerySortOptionInput(
    this._instance,
    this._then,
  );

  final Input$QuerySortOptionInput _instance;

  final TRes Function(Input$QuerySortOptionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? predicate = _undefined,
    Object? reverse = _undefined,
  }) =>
      _then(Input$QuerySortOptionInput._({
        ..._instance._$data,
        if (predicate != _undefined) 'predicate': (predicate as String?),
        if (reverse != _undefined && reverse != null)
          'reverse': (reverse as bool),
      }));
}

class _CopyWithStubImpl$Input$QuerySortOptionInput<TRes>
    implements CopyWith$Input$QuerySortOptionInput<TRes> {
  _CopyWithStubImpl$Input$QuerySortOptionInput(this._res);

  TRes _res;

  call({
    String? predicate,
    bool? reverse,
  }) =>
      _res;
}

enum Enum$ApplyPolicy {
  BEFORE_RESOLVER,
  AFTER_RESOLVER,
  $unknown;

  factory Enum$ApplyPolicy.fromJson(String value) =>
      fromJson$Enum$ApplyPolicy(value);

  String toJson() => toJson$Enum$ApplyPolicy(this);
}

String toJson$Enum$ApplyPolicy(Enum$ApplyPolicy e) {
  switch (e) {
    case Enum$ApplyPolicy.BEFORE_RESOLVER:
      return r'BEFORE_RESOLVER';
    case Enum$ApplyPolicy.AFTER_RESOLVER:
      return r'AFTER_RESOLVER';
    case Enum$ApplyPolicy.$unknown:
      return r'$unknown';
  }
}

Enum$ApplyPolicy fromJson$Enum$ApplyPolicy(String value) {
  switch (value) {
    case r'BEFORE_RESOLVER':
      return Enum$ApplyPolicy.BEFORE_RESOLVER;
    case r'AFTER_RESOLVER':
      return Enum$ApplyPolicy.AFTER_RESOLVER;
    default:
      return Enum$ApplyPolicy.$unknown;
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
