import 'package:gql/ast.dart';

class Input$LiveLoadsQueryModelInput {
  factory Input$LiveLoadsQueryModelInput({
    Input$QuerySortOptionInput? sort,
    required Input$LiveLoadsSearchInput search,
    List<Input$LiveLoadsModelInput>? dataWithCompletedStatus,
  }) =>
      Input$LiveLoadsQueryModelInput._({
        if (sort != null) r'sort': sort,
        r'search': search,
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
    final l$search = data['search'];
    result$data['search'] =
        Input$LiveLoadsSearchInput.fromJson((l$search as Map<String, dynamic>));
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

  Input$LiveLoadsSearchInput get search =>
      (_$data['search'] as Input$LiveLoadsSearchInput);

  List<Input$LiveLoadsModelInput>? get dataWithCompletedStatus =>
      (_$data['dataWithCompletedStatus'] as List<Input$LiveLoadsModelInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort?.toJson();
    }
    final l$search = search;
    result$data['search'] = l$search.toJson();
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
      l$search,
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
        if (search != _undefined && search != null)
          'search': (search as Input$LiveLoadsSearchInput),
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
    return CopyWith$Input$LiveLoadsSearchInput(
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
    required String type,
    required String direction,
    required String haulierName,
    int? jobNumber,
    required String customerLocation,
    required String planned,
    required String instruction,
    required String actual,
    required String remaining,
    required String status,
    required int statusOrder,
    required int statusId,
    required String fromYardCode,
    required String toYardCode,
    required DateTime scheduledDate,
    required double duration,
  }) =>
      Input$LiveLoadsModelInput._({
        r'type': type,
        r'direction': direction,
        r'haulierName': haulierName,
        if (jobNumber != null) r'jobNumber': jobNumber,
        r'customerLocation': customerLocation,
        r'planned': planned,
        r'instruction': instruction,
        r'actual': actual,
        r'remaining': remaining,
        r'status': status,
        r'statusOrder': statusOrder,
        r'statusId': statusId,
        r'fromYardCode': fromYardCode,
        r'toYardCode': toYardCode,
        r'scheduledDate': scheduledDate,
        r'duration': duration,
      });

  Input$LiveLoadsModelInput._(this._$data);

  factory Input$LiveLoadsModelInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$type = data['type'];
    result$data['type'] = (l$type as String);
    final l$direction = data['direction'];
    result$data['direction'] = (l$direction as String);
    final l$haulierName = data['haulierName'];
    result$data['haulierName'] = (l$haulierName as String);
    if (data.containsKey('jobNumber')) {
      final l$jobNumber = data['jobNumber'];
      result$data['jobNumber'] = (l$jobNumber as int?);
    }
    final l$customerLocation = data['customerLocation'];
    result$data['customerLocation'] = (l$customerLocation as String);
    final l$planned = data['planned'];
    result$data['planned'] = (l$planned as String);
    final l$instruction = data['instruction'];
    result$data['instruction'] = (l$instruction as String);
    final l$actual = data['actual'];
    result$data['actual'] = (l$actual as String);
    final l$remaining = data['remaining'];
    result$data['remaining'] = (l$remaining as String);
    final l$status = data['status'];
    result$data['status'] = (l$status as String);
    final l$statusOrder = data['statusOrder'];
    result$data['statusOrder'] = (l$statusOrder as int);
    final l$statusId = data['statusId'];
    result$data['statusId'] = (l$statusId as int);
    final l$fromYardCode = data['fromYardCode'];
    result$data['fromYardCode'] = (l$fromYardCode as String);
    final l$toYardCode = data['toYardCode'];
    result$data['toYardCode'] = (l$toYardCode as String);
    final l$scheduledDate = data['scheduledDate'];
    result$data['scheduledDate'] = DateTime.parse((l$scheduledDate as String));
    final l$duration = data['duration'];
    result$data['duration'] = (l$duration as num).toDouble();
    return Input$LiveLoadsModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get type => (_$data['type'] as String);

  String get direction => (_$data['direction'] as String);

  String get haulierName => (_$data['haulierName'] as String);

  int? get jobNumber => (_$data['jobNumber'] as int?);

  String get customerLocation => (_$data['customerLocation'] as String);

  String get planned => (_$data['planned'] as String);

  String get instruction => (_$data['instruction'] as String);

  String get actual => (_$data['actual'] as String);

  String get remaining => (_$data['remaining'] as String);

  String get status => (_$data['status'] as String);

  int get statusOrder => (_$data['statusOrder'] as int);

  int get statusId => (_$data['statusId'] as int);

  String get fromYardCode => (_$data['fromYardCode'] as String);

  String get toYardCode => (_$data['toYardCode'] as String);

  DateTime get scheduledDate => (_$data['scheduledDate'] as DateTime);

  double get duration => (_$data['duration'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$type = type;
    result$data['type'] = l$type;
    final l$direction = direction;
    result$data['direction'] = l$direction;
    final l$haulierName = haulierName;
    result$data['haulierName'] = l$haulierName;
    if (_$data.containsKey('jobNumber')) {
      final l$jobNumber = jobNumber;
      result$data['jobNumber'] = l$jobNumber;
    }
    final l$customerLocation = customerLocation;
    result$data['customerLocation'] = l$customerLocation;
    final l$planned = planned;
    result$data['planned'] = l$planned;
    final l$instruction = instruction;
    result$data['instruction'] = l$instruction;
    final l$actual = actual;
    result$data['actual'] = l$actual;
    final l$remaining = remaining;
    result$data['remaining'] = l$remaining;
    final l$status = status;
    result$data['status'] = l$status;
    final l$statusOrder = statusOrder;
    result$data['statusOrder'] = l$statusOrder;
    final l$statusId = statusId;
    result$data['statusId'] = l$statusId;
    final l$fromYardCode = fromYardCode;
    result$data['fromYardCode'] = l$fromYardCode;
    final l$toYardCode = toYardCode;
    result$data['toYardCode'] = l$toYardCode;
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
    if (l$type != lOther$type) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$haulierName = haulierName;
    final lOther$haulierName = other.haulierName;
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
    if (l$customerLocation != lOther$customerLocation) {
      return false;
    }
    final l$planned = planned;
    final lOther$planned = other.planned;
    if (l$planned != lOther$planned) {
      return false;
    }
    final l$instruction = instruction;
    final lOther$instruction = other.instruction;
    if (l$instruction != lOther$instruction) {
      return false;
    }
    final l$actual = actual;
    final lOther$actual = other.actual;
    if (l$actual != lOther$actual) {
      return false;
    }
    final l$remaining = remaining;
    final lOther$remaining = other.remaining;
    if (l$remaining != lOther$remaining) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
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
    if (l$fromYardCode != lOther$fromYardCode) {
      return false;
    }
    final l$toYardCode = toYardCode;
    final lOther$toYardCode = other.toYardCode;
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
      l$type,
      l$direction,
      l$haulierName,
      _$data.containsKey('jobNumber') ? l$jobNumber : const {},
      l$customerLocation,
      l$planned,
      l$instruction,
      l$actual,
      l$remaining,
      l$status,
      l$statusOrder,
      l$statusId,
      l$fromYardCode,
      l$toYardCode,
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
        if (type != _undefined && type != null) 'type': (type as String),
        if (direction != _undefined && direction != null)
          'direction': (direction as String),
        if (haulierName != _undefined && haulierName != null)
          'haulierName': (haulierName as String),
        if (jobNumber != _undefined) 'jobNumber': (jobNumber as int?),
        if (customerLocation != _undefined && customerLocation != null)
          'customerLocation': (customerLocation as String),
        if (planned != _undefined && planned != null)
          'planned': (planned as String),
        if (instruction != _undefined && instruction != null)
          'instruction': (instruction as String),
        if (actual != _undefined && actual != null)
          'actual': (actual as String),
        if (remaining != _undefined && remaining != null)
          'remaining': (remaining as String),
        if (status != _undefined && status != null)
          'status': (status as String),
        if (statusOrder != _undefined && statusOrder != null)
          'statusOrder': (statusOrder as int),
        if (statusId != _undefined && statusId != null)
          'statusId': (statusId as int),
        if (fromYardCode != _undefined && fromYardCode != null)
          'fromYardCode': (fromYardCode as String),
        if (toYardCode != _undefined && toYardCode != null)
          'toYardCode': (toYardCode as String),
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
    required String yardCode,
    String? customer,
  }) =>
      Input$LiveLoadsSearchInput._({
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
        r'yardCode': yardCode,
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
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    if (data.containsKey('customer')) {
      final l$customer = data['customer'];
      result$data['customer'] = (l$customer as String?);
    }
    return Input$LiveLoadsSearchInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get startDate => (_$data['startDate'] as DateTime?);

  DateTime? get endDate => (_$data['endDate'] as DateTime?);

  String get yardCode => (_$data['yardCode'] as String);

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
    final l$yardCode = yardCode;
    result$data['yardCode'] = l$yardCode;
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
      l$yardCode,
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
        if (yardCode != _undefined && yardCode != null)
          'yardCode': (yardCode as String),
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
    required String predicate,
    required bool reverse,
  }) =>
      Input$QuerySortOptionInput._({
        r'predicate': predicate,
        r'reverse': reverse,
      });

  Input$QuerySortOptionInput._(this._$data);

  factory Input$QuerySortOptionInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$predicate = data['predicate'];
    result$data['predicate'] = (l$predicate as String);
    final l$reverse = data['reverse'];
    result$data['reverse'] = (l$reverse as bool);
    return Input$QuerySortOptionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get predicate => (_$data['predicate'] as String);

  bool get reverse => (_$data['reverse'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate;
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
      l$predicate,
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
        if (predicate != _undefined && predicate != null)
          'predicate': (predicate as String),
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

class Variables$Query$liveLoads {
  factory Variables$Query$liveLoads(
          {required Input$LiveLoadsQueryModelInput filterModel}) =>
      Variables$Query$liveLoads._({
        r'filterModel': filterModel,
      });

  Variables$Query$liveLoads._(this._$data);

  factory Variables$Query$liveLoads.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$filterModel = data['filterModel'];
    result$data['filterModel'] = Input$LiveLoadsQueryModelInput.fromJson(
        (l$filterModel as Map<String, dynamic>));
    return Variables$Query$liveLoads._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$LiveLoadsQueryModelInput get filterModel =>
      (_$data['filterModel'] as Input$LiveLoadsQueryModelInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$filterModel = filterModel;
    result$data['filterModel'] = l$filterModel.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$liveLoads<Variables$Query$liveLoads> get copyWith =>
      CopyWith$Variables$Query$liveLoads(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$liveLoads) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filterModel = filterModel;
    final lOther$filterModel = other.filterModel;
    if (l$filterModel != lOther$filterModel) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filterModel = filterModel;
    return Object.hashAll([l$filterModel]);
  }
}

abstract class CopyWith$Variables$Query$liveLoads<TRes> {
  factory CopyWith$Variables$Query$liveLoads(
    Variables$Query$liveLoads instance,
    TRes Function(Variables$Query$liveLoads) then,
  ) = _CopyWithImpl$Variables$Query$liveLoads;

  factory CopyWith$Variables$Query$liveLoads.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$liveLoads;

  TRes call({Input$LiveLoadsQueryModelInput? filterModel});
  CopyWith$Input$LiveLoadsQueryModelInput<TRes> get filterModel;
}

class _CopyWithImpl$Variables$Query$liveLoads<TRes>
    implements CopyWith$Variables$Query$liveLoads<TRes> {
  _CopyWithImpl$Variables$Query$liveLoads(
    this._instance,
    this._then,
  );

  final Variables$Query$liveLoads _instance;

  final TRes Function(Variables$Query$liveLoads) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filterModel = _undefined}) =>
      _then(Variables$Query$liveLoads._({
        ..._instance._$data,
        if (filterModel != _undefined && filterModel != null)
          'filterModel': (filterModel as Input$LiveLoadsQueryModelInput),
      }));

  CopyWith$Input$LiveLoadsQueryModelInput<TRes> get filterModel {
    final local$filterModel = _instance.filterModel;
    return CopyWith$Input$LiveLoadsQueryModelInput(
        local$filterModel, (e) => call(filterModel: e));
  }
}

class _CopyWithStubImpl$Variables$Query$liveLoads<TRes>
    implements CopyWith$Variables$Query$liveLoads<TRes> {
  _CopyWithStubImpl$Variables$Query$liveLoads(this._res);

  TRes _res;

  call({Input$LiveLoadsQueryModelInput? filterModel}) => _res;

  CopyWith$Input$LiveLoadsQueryModelInput<TRes> get filterModel =>
      CopyWith$Input$LiveLoadsQueryModelInput.stub(_res);
}

class Query$liveLoads {
  Query$liveLoads({
    this.liveLoads,
    this.$__typename = 'Query',
  });

  factory Query$liveLoads.fromJson(Map<String, dynamic> json) {
    final l$liveLoads = json['liveLoads'];
    final l$$__typename = json['__typename'];
    return Query$liveLoads(
      liveLoads: (l$liveLoads as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$liveLoads$liveLoads.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$liveLoads$liveLoads?>? liveLoads;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$liveLoads = liveLoads;
    _resultData['liveLoads'] = l$liveLoads?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$liveLoads = liveLoads;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$liveLoads == null ? null : Object.hashAll(l$liveLoads.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$liveLoads) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$liveLoads = liveLoads;
    final lOther$liveLoads = other.liveLoads;
    if (l$liveLoads != null && lOther$liveLoads != null) {
      if (l$liveLoads.length != lOther$liveLoads.length) {
        return false;
      }
      for (int i = 0; i < l$liveLoads.length; i++) {
        final l$liveLoads$entry = l$liveLoads[i];
        final lOther$liveLoads$entry = lOther$liveLoads[i];
        if (l$liveLoads$entry != lOther$liveLoads$entry) {
          return false;
        }
      }
    } else if (l$liveLoads != lOther$liveLoads) {
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

extension UtilityExtension$Query$liveLoads on Query$liveLoads {
  CopyWith$Query$liveLoads<Query$liveLoads> get copyWith =>
      CopyWith$Query$liveLoads(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$liveLoads<TRes> {
  factory CopyWith$Query$liveLoads(
    Query$liveLoads instance,
    TRes Function(Query$liveLoads) then,
  ) = _CopyWithImpl$Query$liveLoads;

  factory CopyWith$Query$liveLoads.stub(TRes res) =
      _CopyWithStubImpl$Query$liveLoads;

  TRes call({
    List<Query$liveLoads$liveLoads?>? liveLoads,
    String? $__typename,
  });
  TRes liveLoads(
      Iterable<Query$liveLoads$liveLoads?>? Function(
              Iterable<
                  CopyWith$Query$liveLoads$liveLoads<
                      Query$liveLoads$liveLoads>?>?)
          _fn);
}

class _CopyWithImpl$Query$liveLoads<TRes>
    implements CopyWith$Query$liveLoads<TRes> {
  _CopyWithImpl$Query$liveLoads(
    this._instance,
    this._then,
  );

  final Query$liveLoads _instance;

  final TRes Function(Query$liveLoads) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? liveLoads = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$liveLoads(
        liveLoads: liveLoads == _undefined
            ? _instance.liveLoads
            : (liveLoads as List<Query$liveLoads$liveLoads?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes liveLoads(
          Iterable<Query$liveLoads$liveLoads?>? Function(
                  Iterable<
                      CopyWith$Query$liveLoads$liveLoads<
                          Query$liveLoads$liveLoads>?>?)
              _fn) =>
      call(
          liveLoads: _fn(_instance.liveLoads?.map((e) => e == null
              ? null
              : CopyWith$Query$liveLoads$liveLoads(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$liveLoads<TRes>
    implements CopyWith$Query$liveLoads<TRes> {
  _CopyWithStubImpl$Query$liveLoads(this._res);

  TRes _res;

  call({
    List<Query$liveLoads$liveLoads?>? liveLoads,
    String? $__typename,
  }) =>
      _res;

  liveLoads(_fn) => _res;
}

const documentNodeQueryliveLoads = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'liveLoads'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filterModel')),
        type: NamedTypeNode(
          name: NameNode(value: 'LiveLoadsQueryModelInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'liveLoads'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filterModel'),
            value: VariableNode(name: NameNode(value: 'filterModel')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'type'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'direction'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'haulierName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'jobNumber'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customerLocation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'planned'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'instruction'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'actual'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'remaining'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'statusOrder'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'statusId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'fromYardCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'toYardCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'scheduledDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'duration'),
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

class Query$liveLoads$liveLoads {
  Query$liveLoads$liveLoads({
    this.type,
    this.direction,
    this.haulierName,
    this.jobNumber,
    this.customerLocation,
    this.planned,
    this.instruction,
    this.actual,
    this.remaining,
    this.status,
    required this.statusOrder,
    required this.statusId,
    this.fromYardCode,
    this.toYardCode,
    required this.scheduledDate,
    required this.duration,
    this.$__typename = 'LiveLoadsModel',
  });

  factory Query$liveLoads$liveLoads.fromJson(Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$direction = json['direction'];
    final l$haulierName = json['haulierName'];
    final l$jobNumber = json['jobNumber'];
    final l$customerLocation = json['customerLocation'];
    final l$planned = json['planned'];
    final l$instruction = json['instruction'];
    final l$actual = json['actual'];
    final l$remaining = json['remaining'];
    final l$status = json['status'];
    final l$statusOrder = json['statusOrder'];
    final l$statusId = json['statusId'];
    final l$fromYardCode = json['fromYardCode'];
    final l$toYardCode = json['toYardCode'];
    final l$scheduledDate = json['scheduledDate'];
    final l$duration = json['duration'];
    final l$$__typename = json['__typename'];
    return Query$liveLoads$liveLoads(
      type: (l$type as String?),
      direction: (l$direction as String?),
      haulierName: (l$haulierName as String?),
      jobNumber: (l$jobNumber as int?),
      customerLocation: (l$customerLocation as String?),
      planned: (l$planned as String?),
      instruction: (l$instruction as String?),
      actual: (l$actual as String?),
      remaining: (l$remaining as String?),
      status: (l$status as String?),
      statusOrder: (l$statusOrder as int),
      statusId: (l$statusId as int),
      fromYardCode: (l$fromYardCode as String?),
      toYardCode: (l$toYardCode as String?),
      scheduledDate: DateTime.parse((l$scheduledDate as String)),
      duration: (l$duration as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? type;

  final String? direction;

  final String? haulierName;

  final int? jobNumber;

  final String? customerLocation;

  final String? planned;

  final String? instruction;

  final String? actual;

  final String? remaining;

  final String? status;

  final int statusOrder;

  final int statusId;

  final String? fromYardCode;

  final String? toYardCode;

  final DateTime scheduledDate;

  final double duration;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$direction = direction;
    _resultData['direction'] = l$direction;
    final l$haulierName = haulierName;
    _resultData['haulierName'] = l$haulierName;
    final l$jobNumber = jobNumber;
    _resultData['jobNumber'] = l$jobNumber;
    final l$customerLocation = customerLocation;
    _resultData['customerLocation'] = l$customerLocation;
    final l$planned = planned;
    _resultData['planned'] = l$planned;
    final l$instruction = instruction;
    _resultData['instruction'] = l$instruction;
    final l$actual = actual;
    _resultData['actual'] = l$actual;
    final l$remaining = remaining;
    _resultData['remaining'] = l$remaining;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$statusOrder = statusOrder;
    _resultData['statusOrder'] = l$statusOrder;
    final l$statusId = statusId;
    _resultData['statusId'] = l$statusId;
    final l$fromYardCode = fromYardCode;
    _resultData['fromYardCode'] = l$fromYardCode;
    final l$toYardCode = toYardCode;
    _resultData['toYardCode'] = l$toYardCode;
    final l$scheduledDate = scheduledDate;
    _resultData['scheduledDate'] = l$scheduledDate.toIso8601String();
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$direction,
      l$haulierName,
      l$jobNumber,
      l$customerLocation,
      l$planned,
      l$instruction,
      l$actual,
      l$remaining,
      l$status,
      l$statusOrder,
      l$statusId,
      l$fromYardCode,
      l$toYardCode,
      l$scheduledDate,
      l$duration,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$liveLoads$liveLoads) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$haulierName = haulierName;
    final lOther$haulierName = other.haulierName;
    if (l$haulierName != lOther$haulierName) {
      return false;
    }
    final l$jobNumber = jobNumber;
    final lOther$jobNumber = other.jobNumber;
    if (l$jobNumber != lOther$jobNumber) {
      return false;
    }
    final l$customerLocation = customerLocation;
    final lOther$customerLocation = other.customerLocation;
    if (l$customerLocation != lOther$customerLocation) {
      return false;
    }
    final l$planned = planned;
    final lOther$planned = other.planned;
    if (l$planned != lOther$planned) {
      return false;
    }
    final l$instruction = instruction;
    final lOther$instruction = other.instruction;
    if (l$instruction != lOther$instruction) {
      return false;
    }
    final l$actual = actual;
    final lOther$actual = other.actual;
    if (l$actual != lOther$actual) {
      return false;
    }
    final l$remaining = remaining;
    final lOther$remaining = other.remaining;
    if (l$remaining != lOther$remaining) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
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
    if (l$fromYardCode != lOther$fromYardCode) {
      return false;
    }
    final l$toYardCode = toYardCode;
    final lOther$toYardCode = other.toYardCode;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$liveLoads$liveLoads
    on Query$liveLoads$liveLoads {
  CopyWith$Query$liveLoads$liveLoads<Query$liveLoads$liveLoads> get copyWith =>
      CopyWith$Query$liveLoads$liveLoads(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$liveLoads$liveLoads<TRes> {
  factory CopyWith$Query$liveLoads$liveLoads(
    Query$liveLoads$liveLoads instance,
    TRes Function(Query$liveLoads$liveLoads) then,
  ) = _CopyWithImpl$Query$liveLoads$liveLoads;

  factory CopyWith$Query$liveLoads$liveLoads.stub(TRes res) =
      _CopyWithStubImpl$Query$liveLoads$liveLoads;

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
    String? $__typename,
  });
}

class _CopyWithImpl$Query$liveLoads$liveLoads<TRes>
    implements CopyWith$Query$liveLoads$liveLoads<TRes> {
  _CopyWithImpl$Query$liveLoads$liveLoads(
    this._instance,
    this._then,
  );

  final Query$liveLoads$liveLoads _instance;

  final TRes Function(Query$liveLoads$liveLoads) _then;

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
    Object? $__typename = _undefined,
  }) =>
      _then(Query$liveLoads$liveLoads(
        type: type == _undefined ? _instance.type : (type as String?),
        direction: direction == _undefined
            ? _instance.direction
            : (direction as String?),
        haulierName: haulierName == _undefined
            ? _instance.haulierName
            : (haulierName as String?),
        jobNumber:
            jobNumber == _undefined ? _instance.jobNumber : (jobNumber as int?),
        customerLocation: customerLocation == _undefined
            ? _instance.customerLocation
            : (customerLocation as String?),
        planned:
            planned == _undefined ? _instance.planned : (planned as String?),
        instruction: instruction == _undefined
            ? _instance.instruction
            : (instruction as String?),
        actual: actual == _undefined ? _instance.actual : (actual as String?),
        remaining: remaining == _undefined
            ? _instance.remaining
            : (remaining as String?),
        status: status == _undefined ? _instance.status : (status as String?),
        statusOrder: statusOrder == _undefined || statusOrder == null
            ? _instance.statusOrder
            : (statusOrder as int),
        statusId: statusId == _undefined || statusId == null
            ? _instance.statusId
            : (statusId as int),
        fromYardCode: fromYardCode == _undefined
            ? _instance.fromYardCode
            : (fromYardCode as String?),
        toYardCode: toYardCode == _undefined
            ? _instance.toYardCode
            : (toYardCode as String?),
        scheduledDate: scheduledDate == _undefined || scheduledDate == null
            ? _instance.scheduledDate
            : (scheduledDate as DateTime),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$liveLoads$liveLoads<TRes>
    implements CopyWith$Query$liveLoads$liveLoads<TRes> {
  _CopyWithStubImpl$Query$liveLoads$liveLoads(this._res);

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
    String? $__typename,
  }) =>
      _res;
}
