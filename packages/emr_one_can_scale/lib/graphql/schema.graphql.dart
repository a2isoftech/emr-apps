class Input$UomValueInput {
  factory Input$UomValueInput({
    required Enum$Uom uom,
    required double value,
  }) =>
      Input$UomValueInput._({
        r'uom': uom,
        r'value': value,
      });

  Input$UomValueInput._(this._$data);

  factory Input$UomValueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$uom = data['uom'];
    result$data['uom'] = fromJson$Enum$Uom((l$uom as String));
    final l$value = data['value'];
    result$data['value'] = (l$value as num).toDouble();
    return Input$UomValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$Uom get uom => (_$data['uom'] as Enum$Uom);

  double get value => (_$data['value'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$uom = uom;
    result$data['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    result$data['value'] = l$value;
    return result$data;
  }

  CopyWith$Input$UomValueInput<Input$UomValueInput> get copyWith =>
      CopyWith$Input$UomValueInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UomValueInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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
    final l$uom = uom;
    final l$value = value;
    return Object.hashAll([
      l$uom,
      l$value,
    ]);
  }
}

abstract class CopyWith$Input$UomValueInput<TRes> {
  factory CopyWith$Input$UomValueInput(
    Input$UomValueInput instance,
    TRes Function(Input$UomValueInput) then,
  ) = _CopyWithImpl$Input$UomValueInput;

  factory CopyWith$Input$UomValueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UomValueInput;

  TRes call({
    Enum$Uom? uom,
    double? value,
  });
}

class _CopyWithImpl$Input$UomValueInput<TRes>
    implements CopyWith$Input$UomValueInput<TRes> {
  _CopyWithImpl$Input$UomValueInput(
    this._instance,
    this._then,
  );

  final Input$UomValueInput _instance;

  final TRes Function(Input$UomValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
  }) =>
      _then(Input$UomValueInput._({
        ..._instance._$data,
        if (uom != _undefined && uom != null) 'uom': (uom as Enum$Uom),
        if (value != _undefined && value != null) 'value': (value as double),
      }));
}

class _CopyWithStubImpl$Input$UomValueInput<TRes>
    implements CopyWith$Input$UomValueInput<TRes> {
  _CopyWithStubImpl$Input$UomValueInput(this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
  }) =>
      _res;
}

class Input$TicketInput {
  factory Input$TicketInput({
    String? id,
    required String depotNo,
    required int ticketNumber,
    required Enum$TicketType ticketType,
    required String partyAccountNo,
    required List<Input$TicketLineInput> lines,
    DateTime? publishedToTrade,
    required Enum$TicketStatus ticketStatus,
    required DateTime createdDate,
    required String createdBy,
  }) =>
      Input$TicketInput._({
        if (id != null) r'id': id,
        r'depotNo': depotNo,
        r'ticketNumber': ticketNumber,
        r'ticketType': ticketType,
        r'partyAccountNo': partyAccountNo,
        r'lines': lines,
        if (publishedToTrade != null) r'publishedToTrade': publishedToTrade,
        r'ticketStatus': ticketStatus,
        r'createdDate': createdDate,
        r'createdBy': createdBy,
      });

  Input$TicketInput._(this._$data);

  factory Input$TicketInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    final l$depotNo = data['depotNo'];
    result$data['depotNo'] = (l$depotNo as String);
    final l$ticketNumber = data['ticketNumber'];
    result$data['ticketNumber'] = (l$ticketNumber as int);
    final l$ticketType = data['ticketType'];
    result$data['ticketType'] =
        fromJson$Enum$TicketType((l$ticketType as String));
    final l$partyAccountNo = data['partyAccountNo'];
    result$data['partyAccountNo'] = (l$partyAccountNo as String);
    final l$lines = data['lines'];
    result$data['lines'] = (l$lines as List<dynamic>)
        .map((e) => Input$TicketLineInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('publishedToTrade')) {
      final l$publishedToTrade = data['publishedToTrade'];
      result$data['publishedToTrade'] = l$publishedToTrade == null
          ? null
          : DateTime.parse((l$publishedToTrade as String));
    }
    final l$ticketStatus = data['ticketStatus'];
    result$data['ticketStatus'] =
        fromJson$Enum$TicketStatus((l$ticketStatus as String));
    final l$createdDate = data['createdDate'];
    result$data['createdDate'] = DateTime.parse((l$createdDate as String));
    final l$createdBy = data['createdBy'];
    result$data['createdBy'] = (l$createdBy as String);
    return Input$TicketInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  String get depotNo => (_$data['depotNo'] as String);

  int get ticketNumber => (_$data['ticketNumber'] as int);

  Enum$TicketType get ticketType => (_$data['ticketType'] as Enum$TicketType);

  String get partyAccountNo => (_$data['partyAccountNo'] as String);

  List<Input$TicketLineInput> get lines =>
      (_$data['lines'] as List<Input$TicketLineInput>);

  DateTime? get publishedToTrade => (_$data['publishedToTrade'] as DateTime?);

  Enum$TicketStatus get ticketStatus =>
      (_$data['ticketStatus'] as Enum$TicketStatus);

  DateTime get createdDate => (_$data['createdDate'] as DateTime);

  String get createdBy => (_$data['createdBy'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    final l$depotNo = depotNo;
    result$data['depotNo'] = l$depotNo;
    final l$ticketNumber = ticketNumber;
    result$data['ticketNumber'] = l$ticketNumber;
    final l$ticketType = ticketType;
    result$data['ticketType'] = toJson$Enum$TicketType(l$ticketType);
    final l$partyAccountNo = partyAccountNo;
    result$data['partyAccountNo'] = l$partyAccountNo;
    final l$lines = lines;
    result$data['lines'] = l$lines.map((e) => e.toJson()).toList();
    if (_$data.containsKey('publishedToTrade')) {
      final l$publishedToTrade = publishedToTrade;
      result$data['publishedToTrade'] = l$publishedToTrade?.toIso8601String();
    }
    final l$ticketStatus = ticketStatus;
    result$data['ticketStatus'] = toJson$Enum$TicketStatus(l$ticketStatus);
    final l$createdDate = createdDate;
    result$data['createdDate'] = l$createdDate.toIso8601String();
    final l$createdBy = createdBy;
    result$data['createdBy'] = l$createdBy;
    return result$data;
  }

  CopyWith$Input$TicketInput<Input$TicketInput> get copyWith =>
      CopyWith$Input$TicketInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TicketInput) || runtimeType != other.runtimeType) {
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
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (l$ticketNumber != lOther$ticketNumber) {
      return false;
    }
    final l$ticketType = ticketType;
    final lOther$ticketType = other.ticketType;
    if (l$ticketType != lOther$ticketType) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$lines = lines;
    final lOther$lines = other.lines;
    if (l$lines.length != lOther$lines.length) {
      return false;
    }
    for (int i = 0; i < l$lines.length; i++) {
      final l$lines$entry = l$lines[i];
      final lOther$lines$entry = lOther$lines[i];
      if (l$lines$entry != lOther$lines$entry) {
        return false;
      }
    }
    final l$publishedToTrade = publishedToTrade;
    final lOther$publishedToTrade = other.publishedToTrade;
    if (_$data.containsKey('publishedToTrade') !=
        other._$data.containsKey('publishedToTrade')) {
      return false;
    }
    if (l$publishedToTrade != lOther$publishedToTrade) {
      return false;
    }
    final l$ticketStatus = ticketStatus;
    final lOther$ticketStatus = other.ticketStatus;
    if (l$ticketStatus != lOther$ticketStatus) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$depotNo = depotNo;
    final l$ticketNumber = ticketNumber;
    final l$ticketType = ticketType;
    final l$partyAccountNo = partyAccountNo;
    final l$lines = lines;
    final l$publishedToTrade = publishedToTrade;
    final l$ticketStatus = ticketStatus;
    final l$createdDate = createdDate;
    final l$createdBy = createdBy;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      l$depotNo,
      l$ticketNumber,
      l$ticketType,
      l$partyAccountNo,
      Object.hashAll(l$lines.map((v) => v)),
      _$data.containsKey('publishedToTrade') ? l$publishedToTrade : const {},
      l$ticketStatus,
      l$createdDate,
      l$createdBy,
    ]);
  }
}

abstract class CopyWith$Input$TicketInput<TRes> {
  factory CopyWith$Input$TicketInput(
    Input$TicketInput instance,
    TRes Function(Input$TicketInput) then,
  ) = _CopyWithImpl$Input$TicketInput;

  factory CopyWith$Input$TicketInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TicketInput;

  TRes call({
    String? id,
    String? depotNo,
    int? ticketNumber,
    Enum$TicketType? ticketType,
    String? partyAccountNo,
    List<Input$TicketLineInput>? lines,
    DateTime? publishedToTrade,
    Enum$TicketStatus? ticketStatus,
    DateTime? createdDate,
    String? createdBy,
  });
  TRes lines(
      Iterable<Input$TicketLineInput> Function(
              Iterable<CopyWith$Input$TicketLineInput<Input$TicketLineInput>>)
          _fn);
}

class _CopyWithImpl$Input$TicketInput<TRes>
    implements CopyWith$Input$TicketInput<TRes> {
  _CopyWithImpl$Input$TicketInput(
    this._instance,
    this._then,
  );

  final Input$TicketInput _instance;

  final TRes Function(Input$TicketInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? depotNo = _undefined,
    Object? ticketNumber = _undefined,
    Object? ticketType = _undefined,
    Object? partyAccountNo = _undefined,
    Object? lines = _undefined,
    Object? publishedToTrade = _undefined,
    Object? ticketStatus = _undefined,
    Object? createdDate = _undefined,
    Object? createdBy = _undefined,
  }) =>
      _then(Input$TicketInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (depotNo != _undefined && depotNo != null)
          'depotNo': (depotNo as String),
        if (ticketNumber != _undefined && ticketNumber != null)
          'ticketNumber': (ticketNumber as int),
        if (ticketType != _undefined && ticketType != null)
          'ticketType': (ticketType as Enum$TicketType),
        if (partyAccountNo != _undefined && partyAccountNo != null)
          'partyAccountNo': (partyAccountNo as String),
        if (lines != _undefined && lines != null)
          'lines': (lines as List<Input$TicketLineInput>),
        if (publishedToTrade != _undefined)
          'publishedToTrade': (publishedToTrade as DateTime?),
        if (ticketStatus != _undefined && ticketStatus != null)
          'ticketStatus': (ticketStatus as Enum$TicketStatus),
        if (createdDate != _undefined && createdDate != null)
          'createdDate': (createdDate as DateTime),
        if (createdBy != _undefined && createdBy != null)
          'createdBy': (createdBy as String),
      }));

  TRes lines(
          Iterable<Input$TicketLineInput> Function(
                  Iterable<
                      CopyWith$Input$TicketLineInput<Input$TicketLineInput>>)
              _fn) =>
      call(
          lines: _fn(_instance.lines.map((e) => CopyWith$Input$TicketLineInput(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Input$TicketInput<TRes>
    implements CopyWith$Input$TicketInput<TRes> {
  _CopyWithStubImpl$Input$TicketInput(this._res);

  TRes _res;

  call({
    String? id,
    String? depotNo,
    int? ticketNumber,
    Enum$TicketType? ticketType,
    String? partyAccountNo,
    List<Input$TicketLineInput>? lines,
    DateTime? publishedToTrade,
    Enum$TicketStatus? ticketStatus,
    DateTime? createdDate,
    String? createdBy,
  }) =>
      _res;

  lines(_fn) => _res;
}

class Input$TicketLineInput {
  factory Input$TicketLineInput({
    required Input$UomValueInput grossWeight,
    required String gradeCode,
    required int lineNumber,
    required int heapId,
    required String heapCode,
    required Input$UomValueInput rate,
    String? weightSerial,
  }) =>
      Input$TicketLineInput._({
        r'grossWeight': grossWeight,
        r'gradeCode': gradeCode,
        r'lineNumber': lineNumber,
        r'heapId': heapId,
        r'heapCode': heapCode,
        r'rate': rate,
        if (weightSerial != null) r'weightSerial': weightSerial,
      });

  Input$TicketLineInput._(this._$data);

  factory Input$TicketLineInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$grossWeight = data['grossWeight'];
    result$data['grossWeight'] =
        Input$UomValueInput.fromJson((l$grossWeight as Map<String, dynamic>));
    final l$gradeCode = data['gradeCode'];
    result$data['gradeCode'] = (l$gradeCode as String);
    final l$lineNumber = data['lineNumber'];
    result$data['lineNumber'] = (l$lineNumber as int);
    final l$heapId = data['heapId'];
    result$data['heapId'] = (l$heapId as int);
    final l$heapCode = data['heapCode'];
    result$data['heapCode'] = (l$heapCode as String);
    final l$rate = data['rate'];
    result$data['rate'] =
        Input$UomValueInput.fromJson((l$rate as Map<String, dynamic>));
    if (data.containsKey('weightSerial')) {
      final l$weightSerial = data['weightSerial'];
      result$data['weightSerial'] = (l$weightSerial as String?);
    }
    return Input$TicketLineInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UomValueInput get grossWeight =>
      (_$data['grossWeight'] as Input$UomValueInput);

  String get gradeCode => (_$data['gradeCode'] as String);

  int get lineNumber => (_$data['lineNumber'] as int);

  int get heapId => (_$data['heapId'] as int);

  String get heapCode => (_$data['heapCode'] as String);

  Input$UomValueInput get rate => (_$data['rate'] as Input$UomValueInput);

  String? get weightSerial => (_$data['weightSerial'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$grossWeight = grossWeight;
    result$data['grossWeight'] = l$grossWeight.toJson();
    final l$gradeCode = gradeCode;
    result$data['gradeCode'] = l$gradeCode;
    final l$lineNumber = lineNumber;
    result$data['lineNumber'] = l$lineNumber;
    final l$heapId = heapId;
    result$data['heapId'] = l$heapId;
    final l$heapCode = heapCode;
    result$data['heapCode'] = l$heapCode;
    final l$rate = rate;
    result$data['rate'] = l$rate.toJson();
    if (_$data.containsKey('weightSerial')) {
      final l$weightSerial = weightSerial;
      result$data['weightSerial'] = l$weightSerial;
    }
    return result$data;
  }

  CopyWith$Input$TicketLineInput<Input$TicketLineInput> get copyWith =>
      CopyWith$Input$TicketLineInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TicketLineInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$grossWeight = grossWeight;
    final lOther$grossWeight = other.grossWeight;
    if (l$grossWeight != lOther$grossWeight) {
      return false;
    }
    final l$gradeCode = gradeCode;
    final lOther$gradeCode = other.gradeCode;
    if (l$gradeCode != lOther$gradeCode) {
      return false;
    }
    final l$lineNumber = lineNumber;
    final lOther$lineNumber = other.lineNumber;
    if (l$lineNumber != lOther$lineNumber) {
      return false;
    }
    final l$heapId = heapId;
    final lOther$heapId = other.heapId;
    if (l$heapId != lOther$heapId) {
      return false;
    }
    final l$heapCode = heapCode;
    final lOther$heapCode = other.heapCode;
    if (l$heapCode != lOther$heapCode) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$weightSerial = weightSerial;
    final lOther$weightSerial = other.weightSerial;
    if (_$data.containsKey('weightSerial') !=
        other._$data.containsKey('weightSerial')) {
      return false;
    }
    if (l$weightSerial != lOther$weightSerial) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$grossWeight = grossWeight;
    final l$gradeCode = gradeCode;
    final l$lineNumber = lineNumber;
    final l$heapId = heapId;
    final l$heapCode = heapCode;
    final l$rate = rate;
    final l$weightSerial = weightSerial;
    return Object.hashAll([
      l$grossWeight,
      l$gradeCode,
      l$lineNumber,
      l$heapId,
      l$heapCode,
      l$rate,
      _$data.containsKey('weightSerial') ? l$weightSerial : const {},
    ]);
  }
}

abstract class CopyWith$Input$TicketLineInput<TRes> {
  factory CopyWith$Input$TicketLineInput(
    Input$TicketLineInput instance,
    TRes Function(Input$TicketLineInput) then,
  ) = _CopyWithImpl$Input$TicketLineInput;

  factory CopyWith$Input$TicketLineInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TicketLineInput;

  TRes call({
    Input$UomValueInput? grossWeight,
    String? gradeCode,
    int? lineNumber,
    int? heapId,
    String? heapCode,
    Input$UomValueInput? rate,
    String? weightSerial,
  });
  CopyWith$Input$UomValueInput<TRes> get grossWeight;
  CopyWith$Input$UomValueInput<TRes> get rate;
}

class _CopyWithImpl$Input$TicketLineInput<TRes>
    implements CopyWith$Input$TicketLineInput<TRes> {
  _CopyWithImpl$Input$TicketLineInput(
    this._instance,
    this._then,
  );

  final Input$TicketLineInput _instance;

  final TRes Function(Input$TicketLineInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? grossWeight = _undefined,
    Object? gradeCode = _undefined,
    Object? lineNumber = _undefined,
    Object? heapId = _undefined,
    Object? heapCode = _undefined,
    Object? rate = _undefined,
    Object? weightSerial = _undefined,
  }) =>
      _then(Input$TicketLineInput._({
        ..._instance._$data,
        if (grossWeight != _undefined && grossWeight != null)
          'grossWeight': (grossWeight as Input$UomValueInput),
        if (gradeCode != _undefined && gradeCode != null)
          'gradeCode': (gradeCode as String),
        if (lineNumber != _undefined && lineNumber != null)
          'lineNumber': (lineNumber as int),
        if (heapId != _undefined && heapId != null) 'heapId': (heapId as int),
        if (heapCode != _undefined && heapCode != null)
          'heapCode': (heapCode as String),
        if (rate != _undefined && rate != null)
          'rate': (rate as Input$UomValueInput),
        if (weightSerial != _undefined)
          'weightSerial': (weightSerial as String?),
      }));

  CopyWith$Input$UomValueInput<TRes> get grossWeight {
    final local$grossWeight = _instance.grossWeight;
    return CopyWith$Input$UomValueInput(
        local$grossWeight, (e) => call(grossWeight: e));
  }

  CopyWith$Input$UomValueInput<TRes> get rate {
    final local$rate = _instance.rate;
    return CopyWith$Input$UomValueInput(local$rate, (e) => call(rate: e));
  }
}

class _CopyWithStubImpl$Input$TicketLineInput<TRes>
    implements CopyWith$Input$TicketLineInput<TRes> {
  _CopyWithStubImpl$Input$TicketLineInput(this._res);

  TRes _res;

  call({
    Input$UomValueInput? grossWeight,
    String? gradeCode,
    int? lineNumber,
    int? heapId,
    String? heapCode,
    Input$UomValueInput? rate,
    String? weightSerial,
  }) =>
      _res;

  CopyWith$Input$UomValueInput<TRes> get grossWeight =>
      CopyWith$Input$UomValueInput.stub(_res);

  CopyWith$Input$UomValueInput<TRes> get rate =>
      CopyWith$Input$UomValueInput.stub(_res);
}

class Input$TicketFilterInput {
  factory Input$TicketFilterInput({
    List<Input$TicketFilterInput>? and,
    List<Input$TicketFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? key,
    Input$StringOperationFilterInput? depotNo,
    Input$StringOperationFilterInput? yardCode,
    Input$LongOperationFilterInput? ticketNumber,
    Input$TicketTypeOperationFilterInput? ticketType,
    Input$StringOperationFilterInput? partyAccountNo,
    Input$ListFilterInputTypeOfTicketLineFilterInput? lines,
    Input$DateTimeOperationFilterInput? publishedToTrade,
    Input$TicketStatusOperationFilterInput? ticketStatus,
    Input$DateTimeOperationFilterInput? createdDate,
    Input$StringOperationFilterInput? createdBy,
    Input$DecimalOperationFilterInput? price,
  }) =>
      Input$TicketFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (key != null) r'key': key,
        if (depotNo != null) r'depotNo': depotNo,
        if (yardCode != null) r'yardCode': yardCode,
        if (ticketNumber != null) r'ticketNumber': ticketNumber,
        if (ticketType != null) r'ticketType': ticketType,
        if (partyAccountNo != null) r'partyAccountNo': partyAccountNo,
        if (lines != null) r'lines': lines,
        if (publishedToTrade != null) r'publishedToTrade': publishedToTrade,
        if (ticketStatus != null) r'ticketStatus': ticketStatus,
        if (createdDate != null) r'createdDate': createdDate,
        if (createdBy != null) r'createdBy': createdBy,
        if (price != null) r'price': price,
      });

  Input$TicketFilterInput._(this._$data);

  factory Input$TicketFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$TicketFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$TicketFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('key')) {
      final l$key = data['key'];
      result$data['key'] = l$key == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$key as Map<String, dynamic>));
    }
    if (data.containsKey('depotNo')) {
      final l$depotNo = data['depotNo'];
      result$data['depotNo'] = l$depotNo == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$depotNo as Map<String, dynamic>));
    }
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = l$yardCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$yardCode as Map<String, dynamic>));
    }
    if (data.containsKey('ticketNumber')) {
      final l$ticketNumber = data['ticketNumber'];
      result$data['ticketNumber'] = l$ticketNumber == null
          ? null
          : Input$LongOperationFilterInput.fromJson(
              (l$ticketNumber as Map<String, dynamic>));
    }
    if (data.containsKey('ticketType')) {
      final l$ticketType = data['ticketType'];
      result$data['ticketType'] = l$ticketType == null
          ? null
          : Input$TicketTypeOperationFilterInput.fromJson(
              (l$ticketType as Map<String, dynamic>));
    }
    if (data.containsKey('partyAccountNo')) {
      final l$partyAccountNo = data['partyAccountNo'];
      result$data['partyAccountNo'] = l$partyAccountNo == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$partyAccountNo as Map<String, dynamic>));
    }
    if (data.containsKey('lines')) {
      final l$lines = data['lines'];
      result$data['lines'] = l$lines == null
          ? null
          : Input$ListFilterInputTypeOfTicketLineFilterInput.fromJson(
              (l$lines as Map<String, dynamic>));
    }
    if (data.containsKey('publishedToTrade')) {
      final l$publishedToTrade = data['publishedToTrade'];
      result$data['publishedToTrade'] = l$publishedToTrade == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$publishedToTrade as Map<String, dynamic>));
    }
    if (data.containsKey('ticketStatus')) {
      final l$ticketStatus = data['ticketStatus'];
      result$data['ticketStatus'] = l$ticketStatus == null
          ? null
          : Input$TicketStatusOperationFilterInput.fromJson(
              (l$ticketStatus as Map<String, dynamic>));
    }
    if (data.containsKey('createdDate')) {
      final l$createdDate = data['createdDate'];
      result$data['createdDate'] = l$createdDate == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$createdDate as Map<String, dynamic>));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$createdBy as Map<String, dynamic>));
    }
    if (data.containsKey('price')) {
      final l$price = data['price'];
      result$data['price'] = l$price == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$price as Map<String, dynamic>));
    }
    return Input$TicketFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TicketFilterInput>? get and =>
      (_$data['and'] as List<Input$TicketFilterInput>?);

  List<Input$TicketFilterInput>? get or =>
      (_$data['or'] as List<Input$TicketFilterInput>?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get key =>
      (_$data['key'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get depotNo =>
      (_$data['depotNo'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get yardCode =>
      (_$data['yardCode'] as Input$StringOperationFilterInput?);

  Input$LongOperationFilterInput? get ticketNumber =>
      (_$data['ticketNumber'] as Input$LongOperationFilterInput?);

  Input$TicketTypeOperationFilterInput? get ticketType =>
      (_$data['ticketType'] as Input$TicketTypeOperationFilterInput?);

  Input$StringOperationFilterInput? get partyAccountNo =>
      (_$data['partyAccountNo'] as Input$StringOperationFilterInput?);

  Input$ListFilterInputTypeOfTicketLineFilterInput? get lines =>
      (_$data['lines'] as Input$ListFilterInputTypeOfTicketLineFilterInput?);

  Input$DateTimeOperationFilterInput? get publishedToTrade =>
      (_$data['publishedToTrade'] as Input$DateTimeOperationFilterInput?);

  Input$TicketStatusOperationFilterInput? get ticketStatus =>
      (_$data['ticketStatus'] as Input$TicketStatusOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get createdDate =>
      (_$data['createdDate'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get createdBy =>
      (_$data['createdBy'] as Input$StringOperationFilterInput?);

  Input$DecimalOperationFilterInput? get price =>
      (_$data['price'] as Input$DecimalOperationFilterInput?);

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
    if (_$data.containsKey('key')) {
      final l$key = key;
      result$data['key'] = l$key?.toJson();
    }
    if (_$data.containsKey('depotNo')) {
      final l$depotNo = depotNo;
      result$data['depotNo'] = l$depotNo?.toJson();
    }
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] = l$yardCode?.toJson();
    }
    if (_$data.containsKey('ticketNumber')) {
      final l$ticketNumber = ticketNumber;
      result$data['ticketNumber'] = l$ticketNumber?.toJson();
    }
    if (_$data.containsKey('ticketType')) {
      final l$ticketType = ticketType;
      result$data['ticketType'] = l$ticketType?.toJson();
    }
    if (_$data.containsKey('partyAccountNo')) {
      final l$partyAccountNo = partyAccountNo;
      result$data['partyAccountNo'] = l$partyAccountNo?.toJson();
    }
    if (_$data.containsKey('lines')) {
      final l$lines = lines;
      result$data['lines'] = l$lines?.toJson();
    }
    if (_$data.containsKey('publishedToTrade')) {
      final l$publishedToTrade = publishedToTrade;
      result$data['publishedToTrade'] = l$publishedToTrade?.toJson();
    }
    if (_$data.containsKey('ticketStatus')) {
      final l$ticketStatus = ticketStatus;
      result$data['ticketStatus'] = l$ticketStatus?.toJson();
    }
    if (_$data.containsKey('createdDate')) {
      final l$createdDate = createdDate;
      result$data['createdDate'] = l$createdDate?.toJson();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy?.toJson();
    }
    if (_$data.containsKey('price')) {
      final l$price = price;
      result$data['price'] = l$price?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TicketFilterInput<Input$TicketFilterInput> get copyWith =>
      CopyWith$Input$TicketFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TicketFilterInput) ||
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
    final l$key = key;
    final lOther$key = other.key;
    if (_$data.containsKey('key') != other._$data.containsKey('key')) {
      return false;
    }
    if (l$key != lOther$key) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (_$data.containsKey('depotNo') != other._$data.containsKey('depotNo')) {
      return false;
    }
    if (l$depotNo != lOther$depotNo) {
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
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (_$data.containsKey('ticketNumber') !=
        other._$data.containsKey('ticketNumber')) {
      return false;
    }
    if (l$ticketNumber != lOther$ticketNumber) {
      return false;
    }
    final l$ticketType = ticketType;
    final lOther$ticketType = other.ticketType;
    if (_$data.containsKey('ticketType') !=
        other._$data.containsKey('ticketType')) {
      return false;
    }
    if (l$ticketType != lOther$ticketType) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (_$data.containsKey('partyAccountNo') !=
        other._$data.containsKey('partyAccountNo')) {
      return false;
    }
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$lines = lines;
    final lOther$lines = other.lines;
    if (_$data.containsKey('lines') != other._$data.containsKey('lines')) {
      return false;
    }
    if (l$lines != lOther$lines) {
      return false;
    }
    final l$publishedToTrade = publishedToTrade;
    final lOther$publishedToTrade = other.publishedToTrade;
    if (_$data.containsKey('publishedToTrade') !=
        other._$data.containsKey('publishedToTrade')) {
      return false;
    }
    if (l$publishedToTrade != lOther$publishedToTrade) {
      return false;
    }
    final l$ticketStatus = ticketStatus;
    final lOther$ticketStatus = other.ticketStatus;
    if (_$data.containsKey('ticketStatus') !=
        other._$data.containsKey('ticketStatus')) {
      return false;
    }
    if (l$ticketStatus != lOther$ticketStatus) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (_$data.containsKey('createdDate') !=
        other._$data.containsKey('createdDate')) {
      return false;
    }
    if (l$createdDate != lOther$createdDate) {
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
    final l$price = price;
    final lOther$price = other.price;
    if (_$data.containsKey('price') != other._$data.containsKey('price')) {
      return false;
    }
    if (l$price != lOther$price) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$key = key;
    final l$depotNo = depotNo;
    final l$yardCode = yardCode;
    final l$ticketNumber = ticketNumber;
    final l$ticketType = ticketType;
    final l$partyAccountNo = partyAccountNo;
    final l$lines = lines;
    final l$publishedToTrade = publishedToTrade;
    final l$ticketStatus = ticketStatus;
    final l$createdDate = createdDate;
    final l$createdBy = createdBy;
    final l$price = price;
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
      _$data.containsKey('key') ? l$key : const {},
      _$data.containsKey('depotNo') ? l$depotNo : const {},
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('ticketNumber') ? l$ticketNumber : const {},
      _$data.containsKey('ticketType') ? l$ticketType : const {},
      _$data.containsKey('partyAccountNo') ? l$partyAccountNo : const {},
      _$data.containsKey('lines') ? l$lines : const {},
      _$data.containsKey('publishedToTrade') ? l$publishedToTrade : const {},
      _$data.containsKey('ticketStatus') ? l$ticketStatus : const {},
      _$data.containsKey('createdDate') ? l$createdDate : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('price') ? l$price : const {},
    ]);
  }
}

abstract class CopyWith$Input$TicketFilterInput<TRes> {
  factory CopyWith$Input$TicketFilterInput(
    Input$TicketFilterInput instance,
    TRes Function(Input$TicketFilterInput) then,
  ) = _CopyWithImpl$Input$TicketFilterInput;

  factory CopyWith$Input$TicketFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TicketFilterInput;

  TRes call({
    List<Input$TicketFilterInput>? and,
    List<Input$TicketFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? key,
    Input$StringOperationFilterInput? depotNo,
    Input$StringOperationFilterInput? yardCode,
    Input$LongOperationFilterInput? ticketNumber,
    Input$TicketTypeOperationFilterInput? ticketType,
    Input$StringOperationFilterInput? partyAccountNo,
    Input$ListFilterInputTypeOfTicketLineFilterInput? lines,
    Input$DateTimeOperationFilterInput? publishedToTrade,
    Input$TicketStatusOperationFilterInput? ticketStatus,
    Input$DateTimeOperationFilterInput? createdDate,
    Input$StringOperationFilterInput? createdBy,
    Input$DecimalOperationFilterInput? price,
  });
  TRes and(
      Iterable<Input$TicketFilterInput>? Function(
              Iterable<
                  CopyWith$Input$TicketFilterInput<Input$TicketFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$TicketFilterInput>? Function(
              Iterable<
                  CopyWith$Input$TicketFilterInput<Input$TicketFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$StringOperationFilterInput<TRes> get key;
  CopyWith$Input$StringOperationFilterInput<TRes> get depotNo;
  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode;
  CopyWith$Input$LongOperationFilterInput<TRes> get ticketNumber;
  CopyWith$Input$TicketTypeOperationFilterInput<TRes> get ticketType;
  CopyWith$Input$StringOperationFilterInput<TRes> get partyAccountNo;
  CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput<TRes> get lines;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get publishedToTrade;
  CopyWith$Input$TicketStatusOperationFilterInput<TRes> get ticketStatus;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdDate;
  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get price;
}

class _CopyWithImpl$Input$TicketFilterInput<TRes>
    implements CopyWith$Input$TicketFilterInput<TRes> {
  _CopyWithImpl$Input$TicketFilterInput(
    this._instance,
    this._then,
  );

  final Input$TicketFilterInput _instance;

  final TRes Function(Input$TicketFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? key = _undefined,
    Object? depotNo = _undefined,
    Object? yardCode = _undefined,
    Object? ticketNumber = _undefined,
    Object? ticketType = _undefined,
    Object? partyAccountNo = _undefined,
    Object? lines = _undefined,
    Object? publishedToTrade = _undefined,
    Object? ticketStatus = _undefined,
    Object? createdDate = _undefined,
    Object? createdBy = _undefined,
    Object? price = _undefined,
  }) =>
      _then(Input$TicketFilterInput._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$TicketFilterInput>?),
        if (or != _undefined) 'or': (or as List<Input$TicketFilterInput>?),
        if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
        if (key != _undefined)
          'key': (key as Input$StringOperationFilterInput?),
        if (depotNo != _undefined)
          'depotNo': (depotNo as Input$StringOperationFilterInput?),
        if (yardCode != _undefined)
          'yardCode': (yardCode as Input$StringOperationFilterInput?),
        if (ticketNumber != _undefined)
          'ticketNumber': (ticketNumber as Input$LongOperationFilterInput?),
        if (ticketType != _undefined)
          'ticketType': (ticketType as Input$TicketTypeOperationFilterInput?),
        if (partyAccountNo != _undefined)
          'partyAccountNo':
              (partyAccountNo as Input$StringOperationFilterInput?),
        if (lines != _undefined)
          'lines': (lines as Input$ListFilterInputTypeOfTicketLineFilterInput?),
        if (publishedToTrade != _undefined)
          'publishedToTrade':
              (publishedToTrade as Input$DateTimeOperationFilterInput?),
        if (ticketStatus != _undefined)
          'ticketStatus':
              (ticketStatus as Input$TicketStatusOperationFilterInput?),
        if (createdDate != _undefined)
          'createdDate': (createdDate as Input$DateTimeOperationFilterInput?),
        if (createdBy != _undefined)
          'createdBy': (createdBy as Input$StringOperationFilterInput?),
        if (price != _undefined)
          'price': (price as Input$DecimalOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$TicketFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$TicketFilterInput<
                          Input$TicketFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$TicketFilterInput(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$TicketFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$TicketFilterInput<
                          Input$TicketFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$TicketFilterInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get key {
    final local$key = _instance.key;
    return local$key == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$key, (e) => call(key: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get depotNo {
    final local$depotNo = _instance.depotNo;
    return local$depotNo == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$depotNo, (e) => call(depotNo: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode {
    final local$yardCode = _instance.yardCode;
    return local$yardCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$yardCode, (e) => call(yardCode: e));
  }

  CopyWith$Input$LongOperationFilterInput<TRes> get ticketNumber {
    final local$ticketNumber = _instance.ticketNumber;
    return local$ticketNumber == null
        ? CopyWith$Input$LongOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$LongOperationFilterInput(
            local$ticketNumber, (e) => call(ticketNumber: e));
  }

  CopyWith$Input$TicketTypeOperationFilterInput<TRes> get ticketType {
    final local$ticketType = _instance.ticketType;
    return local$ticketType == null
        ? CopyWith$Input$TicketTypeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$TicketTypeOperationFilterInput(
            local$ticketType, (e) => call(ticketType: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get partyAccountNo {
    final local$partyAccountNo = _instance.partyAccountNo;
    return local$partyAccountNo == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$partyAccountNo, (e) => call(partyAccountNo: e));
  }

  CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput<TRes> get lines {
    final local$lines = _instance.lines;
    return local$lines == null
        ? CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput(
            local$lines, (e) => call(lines: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get publishedToTrade {
    final local$publishedToTrade = _instance.publishedToTrade;
    return local$publishedToTrade == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$publishedToTrade, (e) => call(publishedToTrade: e));
  }

  CopyWith$Input$TicketStatusOperationFilterInput<TRes> get ticketStatus {
    final local$ticketStatus = _instance.ticketStatus;
    return local$ticketStatus == null
        ? CopyWith$Input$TicketStatusOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$TicketStatusOperationFilterInput(
            local$ticketStatus, (e) => call(ticketStatus: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdDate {
    final local$createdDate = _instance.createdDate;
    return local$createdDate == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$createdDate, (e) => call(createdDate: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$createdBy, (e) => call(createdBy: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get price {
    final local$price = _instance.price;
    return local$price == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$price, (e) => call(price: e));
  }
}

class _CopyWithStubImpl$Input$TicketFilterInput<TRes>
    implements CopyWith$Input$TicketFilterInput<TRes> {
  _CopyWithStubImpl$Input$TicketFilterInput(this._res);

  TRes _res;

  call({
    List<Input$TicketFilterInput>? and,
    List<Input$TicketFilterInput>? or,
    Input$StringOperationFilterInput? id,
    Input$StringOperationFilterInput? key,
    Input$StringOperationFilterInput? depotNo,
    Input$StringOperationFilterInput? yardCode,
    Input$LongOperationFilterInput? ticketNumber,
    Input$TicketTypeOperationFilterInput? ticketType,
    Input$StringOperationFilterInput? partyAccountNo,
    Input$ListFilterInputTypeOfTicketLineFilterInput? lines,
    Input$DateTimeOperationFilterInput? publishedToTrade,
    Input$TicketStatusOperationFilterInput? ticketStatus,
    Input$DateTimeOperationFilterInput? createdDate,
    Input$StringOperationFilterInput? createdBy,
    Input$DecimalOperationFilterInput? price,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get key =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get depotNo =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$LongOperationFilterInput<TRes> get ticketNumber =>
      CopyWith$Input$LongOperationFilterInput.stub(_res);

  CopyWith$Input$TicketTypeOperationFilterInput<TRes> get ticketType =>
      CopyWith$Input$TicketTypeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get partyAccountNo =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput<TRes> get lines =>
      CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get publishedToTrade =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$TicketStatusOperationFilterInput<TRes> get ticketStatus =>
      CopyWith$Input$TicketStatusOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdDate =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get price =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);
}

class Input$TicketSortInput {
  factory Input$TicketSortInput({
    Enum$SortEnumType? id,
    Enum$SortEnumType? key,
    Enum$SortEnumType? depotNo,
    Enum$SortEnumType? yardCode,
    Enum$SortEnumType? ticketNumber,
    Enum$SortEnumType? ticketType,
    Enum$SortEnumType? partyAccountNo,
    Enum$SortEnumType? publishedToTrade,
    Enum$SortEnumType? ticketStatus,
    Enum$SortEnumType? createdDate,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? price,
  }) =>
      Input$TicketSortInput._({
        if (id != null) r'id': id,
        if (key != null) r'key': key,
        if (depotNo != null) r'depotNo': depotNo,
        if (yardCode != null) r'yardCode': yardCode,
        if (ticketNumber != null) r'ticketNumber': ticketNumber,
        if (ticketType != null) r'ticketType': ticketType,
        if (partyAccountNo != null) r'partyAccountNo': partyAccountNo,
        if (publishedToTrade != null) r'publishedToTrade': publishedToTrade,
        if (ticketStatus != null) r'ticketStatus': ticketStatus,
        if (createdDate != null) r'createdDate': createdDate,
        if (createdBy != null) r'createdBy': createdBy,
        if (price != null) r'price': price,
      });

  Input$TicketSortInput._(this._$data);

  factory Input$TicketSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortEnumType((l$id as String));
    }
    if (data.containsKey('key')) {
      final l$key = data['key'];
      result$data['key'] =
          l$key == null ? null : fromJson$Enum$SortEnumType((l$key as String));
    }
    if (data.containsKey('depotNo')) {
      final l$depotNo = data['depotNo'];
      result$data['depotNo'] = l$depotNo == null
          ? null
          : fromJson$Enum$SortEnumType((l$depotNo as String));
    }
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = l$yardCode == null
          ? null
          : fromJson$Enum$SortEnumType((l$yardCode as String));
    }
    if (data.containsKey('ticketNumber')) {
      final l$ticketNumber = data['ticketNumber'];
      result$data['ticketNumber'] = l$ticketNumber == null
          ? null
          : fromJson$Enum$SortEnumType((l$ticketNumber as String));
    }
    if (data.containsKey('ticketType')) {
      final l$ticketType = data['ticketType'];
      result$data['ticketType'] = l$ticketType == null
          ? null
          : fromJson$Enum$SortEnumType((l$ticketType as String));
    }
    if (data.containsKey('partyAccountNo')) {
      final l$partyAccountNo = data['partyAccountNo'];
      result$data['partyAccountNo'] = l$partyAccountNo == null
          ? null
          : fromJson$Enum$SortEnumType((l$partyAccountNo as String));
    }
    if (data.containsKey('publishedToTrade')) {
      final l$publishedToTrade = data['publishedToTrade'];
      result$data['publishedToTrade'] = l$publishedToTrade == null
          ? null
          : fromJson$Enum$SortEnumType((l$publishedToTrade as String));
    }
    if (data.containsKey('ticketStatus')) {
      final l$ticketStatus = data['ticketStatus'];
      result$data['ticketStatus'] = l$ticketStatus == null
          ? null
          : fromJson$Enum$SortEnumType((l$ticketStatus as String));
    }
    if (data.containsKey('createdDate')) {
      final l$createdDate = data['createdDate'];
      result$data['createdDate'] = l$createdDate == null
          ? null
          : fromJson$Enum$SortEnumType((l$createdDate as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : fromJson$Enum$SortEnumType((l$createdBy as String));
    }
    if (data.containsKey('price')) {
      final l$price = data['price'];
      result$data['price'] = l$price == null
          ? null
          : fromJson$Enum$SortEnumType((l$price as String));
    }
    return Input$TicketSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get id => (_$data['id'] as Enum$SortEnumType?);

  Enum$SortEnumType? get key => (_$data['key'] as Enum$SortEnumType?);

  Enum$SortEnumType? get depotNo => (_$data['depotNo'] as Enum$SortEnumType?);

  Enum$SortEnumType? get yardCode => (_$data['yardCode'] as Enum$SortEnumType?);

  Enum$SortEnumType? get ticketNumber =>
      (_$data['ticketNumber'] as Enum$SortEnumType?);

  Enum$SortEnumType? get ticketType =>
      (_$data['ticketType'] as Enum$SortEnumType?);

  Enum$SortEnumType? get partyAccountNo =>
      (_$data['partyAccountNo'] as Enum$SortEnumType?);

  Enum$SortEnumType? get publishedToTrade =>
      (_$data['publishedToTrade'] as Enum$SortEnumType?);

  Enum$SortEnumType? get ticketStatus =>
      (_$data['ticketStatus'] as Enum$SortEnumType?);

  Enum$SortEnumType? get createdDate =>
      (_$data['createdDate'] as Enum$SortEnumType?);

  Enum$SortEnumType? get createdBy =>
      (_$data['createdBy'] as Enum$SortEnumType?);

  Enum$SortEnumType? get price => (_$data['price'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortEnumType(l$id);
    }
    if (_$data.containsKey('key')) {
      final l$key = key;
      result$data['key'] =
          l$key == null ? null : toJson$Enum$SortEnumType(l$key);
    }
    if (_$data.containsKey('depotNo')) {
      final l$depotNo = depotNo;
      result$data['depotNo'] =
          l$depotNo == null ? null : toJson$Enum$SortEnumType(l$depotNo);
    }
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] =
          l$yardCode == null ? null : toJson$Enum$SortEnumType(l$yardCode);
    }
    if (_$data.containsKey('ticketNumber')) {
      final l$ticketNumber = ticketNumber;
      result$data['ticketNumber'] = l$ticketNumber == null
          ? null
          : toJson$Enum$SortEnumType(l$ticketNumber);
    }
    if (_$data.containsKey('ticketType')) {
      final l$ticketType = ticketType;
      result$data['ticketType'] =
          l$ticketType == null ? null : toJson$Enum$SortEnumType(l$ticketType);
    }
    if (_$data.containsKey('partyAccountNo')) {
      final l$partyAccountNo = partyAccountNo;
      result$data['partyAccountNo'] = l$partyAccountNo == null
          ? null
          : toJson$Enum$SortEnumType(l$partyAccountNo);
    }
    if (_$data.containsKey('publishedToTrade')) {
      final l$publishedToTrade = publishedToTrade;
      result$data['publishedToTrade'] = l$publishedToTrade == null
          ? null
          : toJson$Enum$SortEnumType(l$publishedToTrade);
    }
    if (_$data.containsKey('ticketStatus')) {
      final l$ticketStatus = ticketStatus;
      result$data['ticketStatus'] = l$ticketStatus == null
          ? null
          : toJson$Enum$SortEnumType(l$ticketStatus);
    }
    if (_$data.containsKey('createdDate')) {
      final l$createdDate = createdDate;
      result$data['createdDate'] = l$createdDate == null
          ? null
          : toJson$Enum$SortEnumType(l$createdDate);
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] =
          l$createdBy == null ? null : toJson$Enum$SortEnumType(l$createdBy);
    }
    if (_$data.containsKey('price')) {
      final l$price = price;
      result$data['price'] =
          l$price == null ? null : toJson$Enum$SortEnumType(l$price);
    }
    return result$data;
  }

  CopyWith$Input$TicketSortInput<Input$TicketSortInput> get copyWith =>
      CopyWith$Input$TicketSortInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TicketSortInput) || runtimeType != other.runtimeType) {
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
    final l$key = key;
    final lOther$key = other.key;
    if (_$data.containsKey('key') != other._$data.containsKey('key')) {
      return false;
    }
    if (l$key != lOther$key) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (_$data.containsKey('depotNo') != other._$data.containsKey('depotNo')) {
      return false;
    }
    if (l$depotNo != lOther$depotNo) {
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
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (_$data.containsKey('ticketNumber') !=
        other._$data.containsKey('ticketNumber')) {
      return false;
    }
    if (l$ticketNumber != lOther$ticketNumber) {
      return false;
    }
    final l$ticketType = ticketType;
    final lOther$ticketType = other.ticketType;
    if (_$data.containsKey('ticketType') !=
        other._$data.containsKey('ticketType')) {
      return false;
    }
    if (l$ticketType != lOther$ticketType) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (_$data.containsKey('partyAccountNo') !=
        other._$data.containsKey('partyAccountNo')) {
      return false;
    }
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$publishedToTrade = publishedToTrade;
    final lOther$publishedToTrade = other.publishedToTrade;
    if (_$data.containsKey('publishedToTrade') !=
        other._$data.containsKey('publishedToTrade')) {
      return false;
    }
    if (l$publishedToTrade != lOther$publishedToTrade) {
      return false;
    }
    final l$ticketStatus = ticketStatus;
    final lOther$ticketStatus = other.ticketStatus;
    if (_$data.containsKey('ticketStatus') !=
        other._$data.containsKey('ticketStatus')) {
      return false;
    }
    if (l$ticketStatus != lOther$ticketStatus) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (_$data.containsKey('createdDate') !=
        other._$data.containsKey('createdDate')) {
      return false;
    }
    if (l$createdDate != lOther$createdDate) {
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
    final l$price = price;
    final lOther$price = other.price;
    if (_$data.containsKey('price') != other._$data.containsKey('price')) {
      return false;
    }
    if (l$price != lOther$price) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$key = key;
    final l$depotNo = depotNo;
    final l$yardCode = yardCode;
    final l$ticketNumber = ticketNumber;
    final l$ticketType = ticketType;
    final l$partyAccountNo = partyAccountNo;
    final l$publishedToTrade = publishedToTrade;
    final l$ticketStatus = ticketStatus;
    final l$createdDate = createdDate;
    final l$createdBy = createdBy;
    final l$price = price;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('key') ? l$key : const {},
      _$data.containsKey('depotNo') ? l$depotNo : const {},
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('ticketNumber') ? l$ticketNumber : const {},
      _$data.containsKey('ticketType') ? l$ticketType : const {},
      _$data.containsKey('partyAccountNo') ? l$partyAccountNo : const {},
      _$data.containsKey('publishedToTrade') ? l$publishedToTrade : const {},
      _$data.containsKey('ticketStatus') ? l$ticketStatus : const {},
      _$data.containsKey('createdDate') ? l$createdDate : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('price') ? l$price : const {},
    ]);
  }
}

abstract class CopyWith$Input$TicketSortInput<TRes> {
  factory CopyWith$Input$TicketSortInput(
    Input$TicketSortInput instance,
    TRes Function(Input$TicketSortInput) then,
  ) = _CopyWithImpl$Input$TicketSortInput;

  factory CopyWith$Input$TicketSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TicketSortInput;

  TRes call({
    Enum$SortEnumType? id,
    Enum$SortEnumType? key,
    Enum$SortEnumType? depotNo,
    Enum$SortEnumType? yardCode,
    Enum$SortEnumType? ticketNumber,
    Enum$SortEnumType? ticketType,
    Enum$SortEnumType? partyAccountNo,
    Enum$SortEnumType? publishedToTrade,
    Enum$SortEnumType? ticketStatus,
    Enum$SortEnumType? createdDate,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? price,
  });
}

class _CopyWithImpl$Input$TicketSortInput<TRes>
    implements CopyWith$Input$TicketSortInput<TRes> {
  _CopyWithImpl$Input$TicketSortInput(
    this._instance,
    this._then,
  );

  final Input$TicketSortInput _instance;

  final TRes Function(Input$TicketSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? key = _undefined,
    Object? depotNo = _undefined,
    Object? yardCode = _undefined,
    Object? ticketNumber = _undefined,
    Object? ticketType = _undefined,
    Object? partyAccountNo = _undefined,
    Object? publishedToTrade = _undefined,
    Object? ticketStatus = _undefined,
    Object? createdDate = _undefined,
    Object? createdBy = _undefined,
    Object? price = _undefined,
  }) =>
      _then(Input$TicketSortInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortEnumType?),
        if (key != _undefined) 'key': (key as Enum$SortEnumType?),
        if (depotNo != _undefined) 'depotNo': (depotNo as Enum$SortEnumType?),
        if (yardCode != _undefined)
          'yardCode': (yardCode as Enum$SortEnumType?),
        if (ticketNumber != _undefined)
          'ticketNumber': (ticketNumber as Enum$SortEnumType?),
        if (ticketType != _undefined)
          'ticketType': (ticketType as Enum$SortEnumType?),
        if (partyAccountNo != _undefined)
          'partyAccountNo': (partyAccountNo as Enum$SortEnumType?),
        if (publishedToTrade != _undefined)
          'publishedToTrade': (publishedToTrade as Enum$SortEnumType?),
        if (ticketStatus != _undefined)
          'ticketStatus': (ticketStatus as Enum$SortEnumType?),
        if (createdDate != _undefined)
          'createdDate': (createdDate as Enum$SortEnumType?),
        if (createdBy != _undefined)
          'createdBy': (createdBy as Enum$SortEnumType?),
        if (price != _undefined) 'price': (price as Enum$SortEnumType?),
      }));
}

class _CopyWithStubImpl$Input$TicketSortInput<TRes>
    implements CopyWith$Input$TicketSortInput<TRes> {
  _CopyWithStubImpl$Input$TicketSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? id,
    Enum$SortEnumType? key,
    Enum$SortEnumType? depotNo,
    Enum$SortEnumType? yardCode,
    Enum$SortEnumType? ticketNumber,
    Enum$SortEnumType? ticketType,
    Enum$SortEnumType? partyAccountNo,
    Enum$SortEnumType? publishedToTrade,
    Enum$SortEnumType? ticketStatus,
    Enum$SortEnumType? createdDate,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? price,
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

class Input$LongOperationFilterInput {
  factory Input$LongOperationFilterInput({
    int? eq,
    int? neq,
    List<int?>? $in,
    List<int?>? nin,
    int? gt,
    int? ngt,
    int? gte,
    int? ngte,
    int? lt,
    int? nlt,
    int? lte,
    int? nlte,
  }) =>
      Input$LongOperationFilterInput._({
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

  Input$LongOperationFilterInput._(this._$data);

  factory Input$LongOperationFilterInput.fromJson(Map<String, dynamic> data) {
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
          (l$$in as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] =
          (l$nin as List<dynamic>?)?.map((e) => (e as int?)).toList();
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
    return Input$LongOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get eq => (_$data['eq'] as int?);

  int? get neq => (_$data['neq'] as int?);

  List<int?>? get $in => (_$data['in'] as List<int?>?);

  List<int?>? get nin => (_$data['nin'] as List<int?>?);

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

  CopyWith$Input$LongOperationFilterInput<Input$LongOperationFilterInput>
      get copyWith => CopyWith$Input$LongOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LongOperationFilterInput) ||
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

abstract class CopyWith$Input$LongOperationFilterInput<TRes> {
  factory CopyWith$Input$LongOperationFilterInput(
    Input$LongOperationFilterInput instance,
    TRes Function(Input$LongOperationFilterInput) then,
  ) = _CopyWithImpl$Input$LongOperationFilterInput;

  factory CopyWith$Input$LongOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LongOperationFilterInput;

  TRes call({
    int? eq,
    int? neq,
    List<int?>? $in,
    List<int?>? nin,
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

class _CopyWithImpl$Input$LongOperationFilterInput<TRes>
    implements CopyWith$Input$LongOperationFilterInput<TRes> {
  _CopyWithImpl$Input$LongOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$LongOperationFilterInput _instance;

  final TRes Function(Input$LongOperationFilterInput) _then;

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
      _then(Input$LongOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as int?),
        if (neq != _undefined) 'neq': (neq as int?),
        if ($in != _undefined) 'in': ($in as List<int?>?),
        if (nin != _undefined) 'nin': (nin as List<int?>?),
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

class _CopyWithStubImpl$Input$LongOperationFilterInput<TRes>
    implements CopyWith$Input$LongOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$LongOperationFilterInput(this._res);

  TRes _res;

  call({
    int? eq,
    int? neq,
    List<int?>? $in,
    List<int?>? nin,
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

class Input$TicketTypeOperationFilterInput {
  factory Input$TicketTypeOperationFilterInput({
    Enum$TicketType? eq,
    Enum$TicketType? neq,
    List<Enum$TicketType>? $in,
    List<Enum$TicketType>? nin,
  }) =>
      Input$TicketTypeOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
      });

  Input$TicketTypeOperationFilterInput._(this._$data);

  factory Input$TicketTypeOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : fromJson$Enum$TicketType((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] =
          l$neq == null ? null : fromJson$Enum$TicketType((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$TicketType((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => fromJson$Enum$TicketType((e as String)))
          .toList();
    }
    return Input$TicketTypeOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$TicketType? get eq => (_$data['eq'] as Enum$TicketType?);

  Enum$TicketType? get neq => (_$data['neq'] as Enum$TicketType?);

  List<Enum$TicketType>? get $in => (_$data['in'] as List<Enum$TicketType>?);

  List<Enum$TicketType>? get nin => (_$data['nin'] as List<Enum$TicketType>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq == null ? null : toJson$Enum$TicketType(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq == null ? null : toJson$Enum$TicketType(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => toJson$Enum$TicketType(e)).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] =
          l$nin?.map((e) => toJson$Enum$TicketType(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$TicketTypeOperationFilterInput<
          Input$TicketTypeOperationFilterInput>
      get copyWith => CopyWith$Input$TicketTypeOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TicketTypeOperationFilterInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
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
    ]);
  }
}

abstract class CopyWith$Input$TicketTypeOperationFilterInput<TRes> {
  factory CopyWith$Input$TicketTypeOperationFilterInput(
    Input$TicketTypeOperationFilterInput instance,
    TRes Function(Input$TicketTypeOperationFilterInput) then,
  ) = _CopyWithImpl$Input$TicketTypeOperationFilterInput;

  factory CopyWith$Input$TicketTypeOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TicketTypeOperationFilterInput;

  TRes call({
    Enum$TicketType? eq,
    Enum$TicketType? neq,
    List<Enum$TicketType>? $in,
    List<Enum$TicketType>? nin,
  });
}

class _CopyWithImpl$Input$TicketTypeOperationFilterInput<TRes>
    implements CopyWith$Input$TicketTypeOperationFilterInput<TRes> {
  _CopyWithImpl$Input$TicketTypeOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$TicketTypeOperationFilterInput _instance;

  final TRes Function(Input$TicketTypeOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) =>
      _then(Input$TicketTypeOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as Enum$TicketType?),
        if (neq != _undefined) 'neq': (neq as Enum$TicketType?),
        if ($in != _undefined) 'in': ($in as List<Enum$TicketType>?),
        if (nin != _undefined) 'nin': (nin as List<Enum$TicketType>?),
      }));
}

class _CopyWithStubImpl$Input$TicketTypeOperationFilterInput<TRes>
    implements CopyWith$Input$TicketTypeOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$TicketTypeOperationFilterInput(this._res);

  TRes _res;

  call({
    Enum$TicketType? eq,
    Enum$TicketType? neq,
    List<Enum$TicketType>? $in,
    List<Enum$TicketType>? nin,
  }) =>
      _res;
}

class Input$ListFilterInputTypeOfTicketLineFilterInput {
  factory Input$ListFilterInputTypeOfTicketLineFilterInput({
    Input$TicketLineFilterInput? none,
    Input$TicketLineFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfTicketLineFilterInput._({
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfTicketLineFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfTicketLineFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$TicketLineFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$TicketLineFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfTicketLineFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TicketLineFilterInput? get none =>
      (_$data['none'] as Input$TicketLineFilterInput?);

  Input$TicketLineFilterInput? get some =>
      (_$data['some'] as Input$TicketLineFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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

  CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput<
          Input$ListFilterInputTypeOfTicketLineFilterInput>
      get copyWith => CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ListFilterInputTypeOfTicketLineFilterInput) ||
        runtimeType != other.runtimeType) {
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
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput<TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput(
    Input$ListFilterInputTypeOfTicketLineFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfTicketLineFilterInput) then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfTicketLineFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfTicketLineFilterInput;

  TRes call({
    Input$TicketLineFilterInput? none,
    Input$TicketLineFilterInput? some,
    bool? any,
  });
  CopyWith$Input$TicketLineFilterInput<TRes> get none;
  CopyWith$Input$TicketLineFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfTicketLineFilterInput<TRes>
    implements CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput<TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfTicketLineFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfTicketLineFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfTicketLineFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfTicketLineFilterInput._({
        ..._instance._$data,
        if (none != _undefined) 'none': (none as Input$TicketLineFilterInput?),
        if (some != _undefined) 'some': (some as Input$TicketLineFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$TicketLineFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$TicketLineFilterInput.stub(_then(_instance))
        : CopyWith$Input$TicketLineFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$TicketLineFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$TicketLineFilterInput.stub(_then(_instance))
        : CopyWith$Input$TicketLineFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfTicketLineFilterInput<TRes>
    implements CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfTicketLineFilterInput(this._res);

  TRes _res;

  call({
    Input$TicketLineFilterInput? none,
    Input$TicketLineFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$TicketLineFilterInput<TRes> get none =>
      CopyWith$Input$TicketLineFilterInput.stub(_res);

  CopyWith$Input$TicketLineFilterInput<TRes> get some =>
      CopyWith$Input$TicketLineFilterInput.stub(_res);
}

class Input$DateTimeOperationFilterInput {
  factory Input$DateTimeOperationFilterInput({
    DateTime? eq,
    DateTime? neq,
    List<DateTime?>? $in,
    List<DateTime?>? nin,
    DateTime? gt,
    DateTime? ngt,
    DateTime? gte,
    DateTime? ngte,
    DateTime? lt,
    DateTime? nlt,
    DateTime? lte,
    DateTime? nlte,
  }) =>
      Input$DateTimeOperationFilterInput._({
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

  Input$DateTimeOperationFilterInput._(this._$data);

  factory Input$DateTimeOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : DateTime.parse((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] =
          l$neq == null ? null : DateTime.parse((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => e == null ? null : DateTime.parse((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => e == null ? null : DateTime.parse((e as String)))
          .toList();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] =
          l$gt == null ? null : DateTime.parse((l$gt as String));
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] =
          l$ngt == null ? null : DateTime.parse((l$ngt as String));
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] =
          l$gte == null ? null : DateTime.parse((l$gte as String));
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] =
          l$ngte == null ? null : DateTime.parse((l$ngte as String));
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] =
          l$lt == null ? null : DateTime.parse((l$lt as String));
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] =
          l$nlt == null ? null : DateTime.parse((l$nlt as String));
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] =
          l$lte == null ? null : DateTime.parse((l$lte as String));
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] =
          l$nlte == null ? null : DateTime.parse((l$nlte as String));
    }
    return Input$DateTimeOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get eq => (_$data['eq'] as DateTime?);

  DateTime? get neq => (_$data['neq'] as DateTime?);

  List<DateTime?>? get $in => (_$data['in'] as List<DateTime?>?);

  List<DateTime?>? get nin => (_$data['nin'] as List<DateTime?>?);

  DateTime? get gt => (_$data['gt'] as DateTime?);

  DateTime? get ngt => (_$data['ngt'] as DateTime?);

  DateTime? get gte => (_$data['gte'] as DateTime?);

  DateTime? get ngte => (_$data['ngte'] as DateTime?);

  DateTime? get lt => (_$data['lt'] as DateTime?);

  DateTime? get nlt => (_$data['nlt'] as DateTime?);

  DateTime? get lte => (_$data['lte'] as DateTime?);

  DateTime? get nlte => (_$data['nlte'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq?.toIso8601String();
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq?.toIso8601String();
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e?.toIso8601String()).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e?.toIso8601String()).toList();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt?.toIso8601String();
    }
    if (_$data.containsKey('ngt')) {
      final l$ngt = ngt;
      result$data['ngt'] = l$ngt?.toIso8601String();
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte?.toIso8601String();
    }
    if (_$data.containsKey('ngte')) {
      final l$ngte = ngte;
      result$data['ngte'] = l$ngte?.toIso8601String();
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt?.toIso8601String();
    }
    if (_$data.containsKey('nlt')) {
      final l$nlt = nlt;
      result$data['nlt'] = l$nlt?.toIso8601String();
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte?.toIso8601String();
    }
    if (_$data.containsKey('nlte')) {
      final l$nlte = nlte;
      result$data['nlte'] = l$nlte?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$DateTimeOperationFilterInput<
          Input$DateTimeOperationFilterInput>
      get copyWith => CopyWith$Input$DateTimeOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DateTimeOperationFilterInput) ||
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

abstract class CopyWith$Input$DateTimeOperationFilterInput<TRes> {
  factory CopyWith$Input$DateTimeOperationFilterInput(
    Input$DateTimeOperationFilterInput instance,
    TRes Function(Input$DateTimeOperationFilterInput) then,
  ) = _CopyWithImpl$Input$DateTimeOperationFilterInput;

  factory CopyWith$Input$DateTimeOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DateTimeOperationFilterInput;

  TRes call({
    DateTime? eq,
    DateTime? neq,
    List<DateTime?>? $in,
    List<DateTime?>? nin,
    DateTime? gt,
    DateTime? ngt,
    DateTime? gte,
    DateTime? ngte,
    DateTime? lt,
    DateTime? nlt,
    DateTime? lte,
    DateTime? nlte,
  });
}

class _CopyWithImpl$Input$DateTimeOperationFilterInput<TRes>
    implements CopyWith$Input$DateTimeOperationFilterInput<TRes> {
  _CopyWithImpl$Input$DateTimeOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$DateTimeOperationFilterInput _instance;

  final TRes Function(Input$DateTimeOperationFilterInput) _then;

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
      _then(Input$DateTimeOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as DateTime?),
        if (neq != _undefined) 'neq': (neq as DateTime?),
        if ($in != _undefined) 'in': ($in as List<DateTime?>?),
        if (nin != _undefined) 'nin': (nin as List<DateTime?>?),
        if (gt != _undefined) 'gt': (gt as DateTime?),
        if (ngt != _undefined) 'ngt': (ngt as DateTime?),
        if (gte != _undefined) 'gte': (gte as DateTime?),
        if (ngte != _undefined) 'ngte': (ngte as DateTime?),
        if (lt != _undefined) 'lt': (lt as DateTime?),
        if (nlt != _undefined) 'nlt': (nlt as DateTime?),
        if (lte != _undefined) 'lte': (lte as DateTime?),
        if (nlte != _undefined) 'nlte': (nlte as DateTime?),
      }));
}

class _CopyWithStubImpl$Input$DateTimeOperationFilterInput<TRes>
    implements CopyWith$Input$DateTimeOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$DateTimeOperationFilterInput(this._res);

  TRes _res;

  call({
    DateTime? eq,
    DateTime? neq,
    List<DateTime?>? $in,
    List<DateTime?>? nin,
    DateTime? gt,
    DateTime? ngt,
    DateTime? gte,
    DateTime? ngte,
    DateTime? lt,
    DateTime? nlt,
    DateTime? lte,
    DateTime? nlte,
  }) =>
      _res;
}

class Input$TicketStatusOperationFilterInput {
  factory Input$TicketStatusOperationFilterInput({
    Enum$TicketStatus? eq,
    Enum$TicketStatus? neq,
    List<Enum$TicketStatus>? $in,
    List<Enum$TicketStatus>? nin,
  }) =>
      Input$TicketStatusOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
      });

  Input$TicketStatusOperationFilterInput._(this._$data);

  factory Input$TicketStatusOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : fromJson$Enum$TicketStatus((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] =
          l$neq == null ? null : fromJson$Enum$TicketStatus((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$TicketStatus((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => fromJson$Enum$TicketStatus((e as String)))
          .toList();
    }
    return Input$TicketStatusOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$TicketStatus? get eq => (_$data['eq'] as Enum$TicketStatus?);

  Enum$TicketStatus? get neq => (_$data['neq'] as Enum$TicketStatus?);

  List<Enum$TicketStatus>? get $in =>
      (_$data['in'] as List<Enum$TicketStatus>?);

  List<Enum$TicketStatus>? get nin =>
      (_$data['nin'] as List<Enum$TicketStatus>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq == null ? null : toJson$Enum$TicketStatus(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : toJson$Enum$TicketStatus(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => toJson$Enum$TicketStatus(e)).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] =
          l$nin?.map((e) => toJson$Enum$TicketStatus(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$TicketStatusOperationFilterInput<
          Input$TicketStatusOperationFilterInput>
      get copyWith => CopyWith$Input$TicketStatusOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TicketStatusOperationFilterInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
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
    ]);
  }
}

abstract class CopyWith$Input$TicketStatusOperationFilterInput<TRes> {
  factory CopyWith$Input$TicketStatusOperationFilterInput(
    Input$TicketStatusOperationFilterInput instance,
    TRes Function(Input$TicketStatusOperationFilterInput) then,
  ) = _CopyWithImpl$Input$TicketStatusOperationFilterInput;

  factory CopyWith$Input$TicketStatusOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TicketStatusOperationFilterInput;

  TRes call({
    Enum$TicketStatus? eq,
    Enum$TicketStatus? neq,
    List<Enum$TicketStatus>? $in,
    List<Enum$TicketStatus>? nin,
  });
}

class _CopyWithImpl$Input$TicketStatusOperationFilterInput<TRes>
    implements CopyWith$Input$TicketStatusOperationFilterInput<TRes> {
  _CopyWithImpl$Input$TicketStatusOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$TicketStatusOperationFilterInput _instance;

  final TRes Function(Input$TicketStatusOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) =>
      _then(Input$TicketStatusOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as Enum$TicketStatus?),
        if (neq != _undefined) 'neq': (neq as Enum$TicketStatus?),
        if ($in != _undefined) 'in': ($in as List<Enum$TicketStatus>?),
        if (nin != _undefined) 'nin': (nin as List<Enum$TicketStatus>?),
      }));
}

class _CopyWithStubImpl$Input$TicketStatusOperationFilterInput<TRes>
    implements CopyWith$Input$TicketStatusOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$TicketStatusOperationFilterInput(this._res);

  TRes _res;

  call({
    Enum$TicketStatus? eq,
    Enum$TicketStatus? neq,
    List<Enum$TicketStatus>? $in,
    List<Enum$TicketStatus>? nin,
  }) =>
      _res;
}

class Input$DecimalOperationFilterInput {
  factory Input$DecimalOperationFilterInput({
    double? eq,
    double? neq,
    List<double?>? $in,
    List<double?>? nin,
    double? gt,
    double? ngt,
    double? gte,
    double? ngte,
    double? lt,
    double? nlt,
    double? lte,
    double? nlte,
  }) =>
      Input$DecimalOperationFilterInput._({
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

  Input$DecimalOperationFilterInput._(this._$data);

  factory Input$DecimalOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as num?)?.toDouble();
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as num?)?.toDouble();
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as num?)?.toDouble();
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] = (l$ngt as num?)?.toDouble();
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as num?)?.toDouble();
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] = (l$ngte as num?)?.toDouble();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as num?)?.toDouble();
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] = (l$nlt as num?)?.toDouble();
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as num?)?.toDouble();
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] = (l$nlte as num?)?.toDouble();
    }
    return Input$DecimalOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get eq => (_$data['eq'] as double?);

  double? get neq => (_$data['neq'] as double?);

  List<double?>? get $in => (_$data['in'] as List<double?>?);

  List<double?>? get nin => (_$data['nin'] as List<double?>?);

  double? get gt => (_$data['gt'] as double?);

  double? get ngt => (_$data['ngt'] as double?);

  double? get gte => (_$data['gte'] as double?);

  double? get ngte => (_$data['ngte'] as double?);

  double? get lt => (_$data['lt'] as double?);

  double? get nlt => (_$data['nlt'] as double?);

  double? get lte => (_$data['lte'] as double?);

  double? get nlte => (_$data['nlte'] as double?);

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

  CopyWith$Input$DecimalOperationFilterInput<Input$DecimalOperationFilterInput>
      get copyWith => CopyWith$Input$DecimalOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DecimalOperationFilterInput) ||
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

abstract class CopyWith$Input$DecimalOperationFilterInput<TRes> {
  factory CopyWith$Input$DecimalOperationFilterInput(
    Input$DecimalOperationFilterInput instance,
    TRes Function(Input$DecimalOperationFilterInput) then,
  ) = _CopyWithImpl$Input$DecimalOperationFilterInput;

  factory CopyWith$Input$DecimalOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DecimalOperationFilterInput;

  TRes call({
    double? eq,
    double? neq,
    List<double?>? $in,
    List<double?>? nin,
    double? gt,
    double? ngt,
    double? gte,
    double? ngte,
    double? lt,
    double? nlt,
    double? lte,
    double? nlte,
  });
}

class _CopyWithImpl$Input$DecimalOperationFilterInput<TRes>
    implements CopyWith$Input$DecimalOperationFilterInput<TRes> {
  _CopyWithImpl$Input$DecimalOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$DecimalOperationFilterInput _instance;

  final TRes Function(Input$DecimalOperationFilterInput) _then;

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
      _then(Input$DecimalOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as double?),
        if (neq != _undefined) 'neq': (neq as double?),
        if ($in != _undefined) 'in': ($in as List<double?>?),
        if (nin != _undefined) 'nin': (nin as List<double?>?),
        if (gt != _undefined) 'gt': (gt as double?),
        if (ngt != _undefined) 'ngt': (ngt as double?),
        if (gte != _undefined) 'gte': (gte as double?),
        if (ngte != _undefined) 'ngte': (ngte as double?),
        if (lt != _undefined) 'lt': (lt as double?),
        if (nlt != _undefined) 'nlt': (nlt as double?),
        if (lte != _undefined) 'lte': (lte as double?),
        if (nlte != _undefined) 'nlte': (nlte as double?),
      }));
}

class _CopyWithStubImpl$Input$DecimalOperationFilterInput<TRes>
    implements CopyWith$Input$DecimalOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$DecimalOperationFilterInput(this._res);

  TRes _res;

  call({
    double? eq,
    double? neq,
    List<double?>? $in,
    List<double?>? nin,
    double? gt,
    double? ngt,
    double? gte,
    double? ngte,
    double? lt,
    double? nlt,
    double? lte,
    double? nlte,
  }) =>
      _res;
}

class Input$TicketLineFilterInput {
  factory Input$TicketLineFilterInput({
    List<Input$TicketLineFilterInput>? and,
    List<Input$TicketLineFilterInput>? or,
    Input$UomValueFilterInput? grossWeight,
    Input$StringOperationFilterInput? gradeCode,
    Input$IntOperationFilterInput? lineNumber,
    Input$IntOperationFilterInput? heapId,
    Input$StringOperationFilterInput? heapCode,
    Input$UomValueFilterInput? rate,
    Input$StringOperationFilterInput? weightSerial,
  }) =>
      Input$TicketLineFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (grossWeight != null) r'grossWeight': grossWeight,
        if (gradeCode != null) r'gradeCode': gradeCode,
        if (lineNumber != null) r'lineNumber': lineNumber,
        if (heapId != null) r'heapId': heapId,
        if (heapCode != null) r'heapCode': heapCode,
        if (rate != null) r'rate': rate,
        if (weightSerial != null) r'weightSerial': weightSerial,
      });

  Input$TicketLineFilterInput._(this._$data);

  factory Input$TicketLineFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$TicketLineFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$TicketLineFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('grossWeight')) {
      final l$grossWeight = data['grossWeight'];
      result$data['grossWeight'] = l$grossWeight == null
          ? null
          : Input$UomValueFilterInput.fromJson(
              (l$grossWeight as Map<String, dynamic>));
    }
    if (data.containsKey('gradeCode')) {
      final l$gradeCode = data['gradeCode'];
      result$data['gradeCode'] = l$gradeCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$gradeCode as Map<String, dynamic>));
    }
    if (data.containsKey('lineNumber')) {
      final l$lineNumber = data['lineNumber'];
      result$data['lineNumber'] = l$lineNumber == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$lineNumber as Map<String, dynamic>));
    }
    if (data.containsKey('heapId')) {
      final l$heapId = data['heapId'];
      result$data['heapId'] = l$heapId == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$heapId as Map<String, dynamic>));
    }
    if (data.containsKey('heapCode')) {
      final l$heapCode = data['heapCode'];
      result$data['heapCode'] = l$heapCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$heapCode as Map<String, dynamic>));
    }
    if (data.containsKey('rate')) {
      final l$rate = data['rate'];
      result$data['rate'] = l$rate == null
          ? null
          : Input$UomValueFilterInput.fromJson(
              (l$rate as Map<String, dynamic>));
    }
    if (data.containsKey('weightSerial')) {
      final l$weightSerial = data['weightSerial'];
      result$data['weightSerial'] = l$weightSerial == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$weightSerial as Map<String, dynamic>));
    }
    return Input$TicketLineFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TicketLineFilterInput>? get and =>
      (_$data['and'] as List<Input$TicketLineFilterInput>?);

  List<Input$TicketLineFilterInput>? get or =>
      (_$data['or'] as List<Input$TicketLineFilterInput>?);

  Input$UomValueFilterInput? get grossWeight =>
      (_$data['grossWeight'] as Input$UomValueFilterInput?);

  Input$StringOperationFilterInput? get gradeCode =>
      (_$data['gradeCode'] as Input$StringOperationFilterInput?);

  Input$IntOperationFilterInput? get lineNumber =>
      (_$data['lineNumber'] as Input$IntOperationFilterInput?);

  Input$IntOperationFilterInput? get heapId =>
      (_$data['heapId'] as Input$IntOperationFilterInput?);

  Input$StringOperationFilterInput? get heapCode =>
      (_$data['heapCode'] as Input$StringOperationFilterInput?);

  Input$UomValueFilterInput? get rate =>
      (_$data['rate'] as Input$UomValueFilterInput?);

  Input$StringOperationFilterInput? get weightSerial =>
      (_$data['weightSerial'] as Input$StringOperationFilterInput?);

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
    if (_$data.containsKey('grossWeight')) {
      final l$grossWeight = grossWeight;
      result$data['grossWeight'] = l$grossWeight?.toJson();
    }
    if (_$data.containsKey('gradeCode')) {
      final l$gradeCode = gradeCode;
      result$data['gradeCode'] = l$gradeCode?.toJson();
    }
    if (_$data.containsKey('lineNumber')) {
      final l$lineNumber = lineNumber;
      result$data['lineNumber'] = l$lineNumber?.toJson();
    }
    if (_$data.containsKey('heapId')) {
      final l$heapId = heapId;
      result$data['heapId'] = l$heapId?.toJson();
    }
    if (_$data.containsKey('heapCode')) {
      final l$heapCode = heapCode;
      result$data['heapCode'] = l$heapCode?.toJson();
    }
    if (_$data.containsKey('rate')) {
      final l$rate = rate;
      result$data['rate'] = l$rate?.toJson();
    }
    if (_$data.containsKey('weightSerial')) {
      final l$weightSerial = weightSerial;
      result$data['weightSerial'] = l$weightSerial?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TicketLineFilterInput<Input$TicketLineFilterInput>
      get copyWith => CopyWith$Input$TicketLineFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TicketLineFilterInput) ||
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
    final l$grossWeight = grossWeight;
    final lOther$grossWeight = other.grossWeight;
    if (_$data.containsKey('grossWeight') !=
        other._$data.containsKey('grossWeight')) {
      return false;
    }
    if (l$grossWeight != lOther$grossWeight) {
      return false;
    }
    final l$gradeCode = gradeCode;
    final lOther$gradeCode = other.gradeCode;
    if (_$data.containsKey('gradeCode') !=
        other._$data.containsKey('gradeCode')) {
      return false;
    }
    if (l$gradeCode != lOther$gradeCode) {
      return false;
    }
    final l$lineNumber = lineNumber;
    final lOther$lineNumber = other.lineNumber;
    if (_$data.containsKey('lineNumber') !=
        other._$data.containsKey('lineNumber')) {
      return false;
    }
    if (l$lineNumber != lOther$lineNumber) {
      return false;
    }
    final l$heapId = heapId;
    final lOther$heapId = other.heapId;
    if (_$data.containsKey('heapId') != other._$data.containsKey('heapId')) {
      return false;
    }
    if (l$heapId != lOther$heapId) {
      return false;
    }
    final l$heapCode = heapCode;
    final lOther$heapCode = other.heapCode;
    if (_$data.containsKey('heapCode') !=
        other._$data.containsKey('heapCode')) {
      return false;
    }
    if (l$heapCode != lOther$heapCode) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (_$data.containsKey('rate') != other._$data.containsKey('rate')) {
      return false;
    }
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$weightSerial = weightSerial;
    final lOther$weightSerial = other.weightSerial;
    if (_$data.containsKey('weightSerial') !=
        other._$data.containsKey('weightSerial')) {
      return false;
    }
    if (l$weightSerial != lOther$weightSerial) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$grossWeight = grossWeight;
    final l$gradeCode = gradeCode;
    final l$lineNumber = lineNumber;
    final l$heapId = heapId;
    final l$heapCode = heapCode;
    final l$rate = rate;
    final l$weightSerial = weightSerial;
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
      _$data.containsKey('grossWeight') ? l$grossWeight : const {},
      _$data.containsKey('gradeCode') ? l$gradeCode : const {},
      _$data.containsKey('lineNumber') ? l$lineNumber : const {},
      _$data.containsKey('heapId') ? l$heapId : const {},
      _$data.containsKey('heapCode') ? l$heapCode : const {},
      _$data.containsKey('rate') ? l$rate : const {},
      _$data.containsKey('weightSerial') ? l$weightSerial : const {},
    ]);
  }
}

abstract class CopyWith$Input$TicketLineFilterInput<TRes> {
  factory CopyWith$Input$TicketLineFilterInput(
    Input$TicketLineFilterInput instance,
    TRes Function(Input$TicketLineFilterInput) then,
  ) = _CopyWithImpl$Input$TicketLineFilterInput;

  factory CopyWith$Input$TicketLineFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TicketLineFilterInput;

  TRes call({
    List<Input$TicketLineFilterInput>? and,
    List<Input$TicketLineFilterInput>? or,
    Input$UomValueFilterInput? grossWeight,
    Input$StringOperationFilterInput? gradeCode,
    Input$IntOperationFilterInput? lineNumber,
    Input$IntOperationFilterInput? heapId,
    Input$StringOperationFilterInput? heapCode,
    Input$UomValueFilterInput? rate,
    Input$StringOperationFilterInput? weightSerial,
  });
  TRes and(
      Iterable<Input$TicketLineFilterInput>? Function(
              Iterable<
                  CopyWith$Input$TicketLineFilterInput<
                      Input$TicketLineFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$TicketLineFilterInput>? Function(
              Iterable<
                  CopyWith$Input$TicketLineFilterInput<
                      Input$TicketLineFilterInput>>?)
          _fn);
  CopyWith$Input$UomValueFilterInput<TRes> get grossWeight;
  CopyWith$Input$StringOperationFilterInput<TRes> get gradeCode;
  CopyWith$Input$IntOperationFilterInput<TRes> get lineNumber;
  CopyWith$Input$IntOperationFilterInput<TRes> get heapId;
  CopyWith$Input$StringOperationFilterInput<TRes> get heapCode;
  CopyWith$Input$UomValueFilterInput<TRes> get rate;
  CopyWith$Input$StringOperationFilterInput<TRes> get weightSerial;
}

class _CopyWithImpl$Input$TicketLineFilterInput<TRes>
    implements CopyWith$Input$TicketLineFilterInput<TRes> {
  _CopyWithImpl$Input$TicketLineFilterInput(
    this._instance,
    this._then,
  );

  final Input$TicketLineFilterInput _instance;

  final TRes Function(Input$TicketLineFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? grossWeight = _undefined,
    Object? gradeCode = _undefined,
    Object? lineNumber = _undefined,
    Object? heapId = _undefined,
    Object? heapCode = _undefined,
    Object? rate = _undefined,
    Object? weightSerial = _undefined,
  }) =>
      _then(Input$TicketLineFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$TicketLineFilterInput>?),
        if (or != _undefined) 'or': (or as List<Input$TicketLineFilterInput>?),
        if (grossWeight != _undefined)
          'grossWeight': (grossWeight as Input$UomValueFilterInput?),
        if (gradeCode != _undefined)
          'gradeCode': (gradeCode as Input$StringOperationFilterInput?),
        if (lineNumber != _undefined)
          'lineNumber': (lineNumber as Input$IntOperationFilterInput?),
        if (heapId != _undefined)
          'heapId': (heapId as Input$IntOperationFilterInput?),
        if (heapCode != _undefined)
          'heapCode': (heapCode as Input$StringOperationFilterInput?),
        if (rate != _undefined) 'rate': (rate as Input$UomValueFilterInput?),
        if (weightSerial != _undefined)
          'weightSerial': (weightSerial as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$TicketLineFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$TicketLineFilterInput<
                          Input$TicketLineFilterInput>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$TicketLineFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$TicketLineFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$TicketLineFilterInput<
                          Input$TicketLineFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$TicketLineFilterInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$UomValueFilterInput<TRes> get grossWeight {
    final local$grossWeight = _instance.grossWeight;
    return local$grossWeight == null
        ? CopyWith$Input$UomValueFilterInput.stub(_then(_instance))
        : CopyWith$Input$UomValueFilterInput(
            local$grossWeight, (e) => call(grossWeight: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get gradeCode {
    final local$gradeCode = _instance.gradeCode;
    return local$gradeCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$gradeCode, (e) => call(gradeCode: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get lineNumber {
    final local$lineNumber = _instance.lineNumber;
    return local$lineNumber == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$lineNumber, (e) => call(lineNumber: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get heapId {
    final local$heapId = _instance.heapId;
    return local$heapId == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$heapId, (e) => call(heapId: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get heapCode {
    final local$heapCode = _instance.heapCode;
    return local$heapCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$heapCode, (e) => call(heapCode: e));
  }

  CopyWith$Input$UomValueFilterInput<TRes> get rate {
    final local$rate = _instance.rate;
    return local$rate == null
        ? CopyWith$Input$UomValueFilterInput.stub(_then(_instance))
        : CopyWith$Input$UomValueFilterInput(local$rate, (e) => call(rate: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get weightSerial {
    final local$weightSerial = _instance.weightSerial;
    return local$weightSerial == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$weightSerial, (e) => call(weightSerial: e));
  }
}

class _CopyWithStubImpl$Input$TicketLineFilterInput<TRes>
    implements CopyWith$Input$TicketLineFilterInput<TRes> {
  _CopyWithStubImpl$Input$TicketLineFilterInput(this._res);

  TRes _res;

  call({
    List<Input$TicketLineFilterInput>? and,
    List<Input$TicketLineFilterInput>? or,
    Input$UomValueFilterInput? grossWeight,
    Input$StringOperationFilterInput? gradeCode,
    Input$IntOperationFilterInput? lineNumber,
    Input$IntOperationFilterInput? heapId,
    Input$StringOperationFilterInput? heapCode,
    Input$UomValueFilterInput? rate,
    Input$StringOperationFilterInput? weightSerial,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$UomValueFilterInput<TRes> get grossWeight =>
      CopyWith$Input$UomValueFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get gradeCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get lineNumber =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get heapId =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get heapCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$UomValueFilterInput<TRes> get rate =>
      CopyWith$Input$UomValueFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get weightSerial =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$UomValueFilterInput {
  factory Input$UomValueFilterInput({
    List<Input$UomValueFilterInput>? and,
    List<Input$UomValueFilterInput>? or,
    Input$UomOperationFilterInput? uom,
    Input$DecimalOperationFilterInput? value,
    Input$IntOperationFilterInput? id,
  }) =>
      Input$UomValueFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (uom != null) r'uom': uom,
        if (value != null) r'value': value,
        if (id != null) r'id': id,
      });

  Input$UomValueFilterInput._(this._$data);

  factory Input$UomValueFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$UomValueFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$UomValueFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('uom')) {
      final l$uom = data['uom'];
      result$data['uom'] = l$uom == null
          ? null
          : Input$UomOperationFilterInput.fromJson(
              (l$uom as Map<String, dynamic>));
    }
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] = l$value == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$value as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    return Input$UomValueFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$UomValueFilterInput>? get and =>
      (_$data['and'] as List<Input$UomValueFilterInput>?);

  List<Input$UomValueFilterInput>? get or =>
      (_$data['or'] as List<Input$UomValueFilterInput>?);

  Input$UomOperationFilterInput? get uom =>
      (_$data['uom'] as Input$UomOperationFilterInput?);

  Input$DecimalOperationFilterInput? get value =>
      (_$data['value'] as Input$DecimalOperationFilterInput?);

  Input$IntOperationFilterInput? get id =>
      (_$data['id'] as Input$IntOperationFilterInput?);

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
    if (_$data.containsKey('uom')) {
      final l$uom = uom;
      result$data['uom'] = l$uom?.toJson();
    }
    if (_$data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = l$value?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$UomValueFilterInput<Input$UomValueFilterInput> get copyWith =>
      CopyWith$Input$UomValueFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UomValueFilterInput) ||
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
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (_$data.containsKey('uom') != other._$data.containsKey('uom')) {
      return false;
    }
    if (l$uom != lOther$uom) {
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$uom = uom;
    final l$value = value;
    final l$id = id;
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
      _$data.containsKey('uom') ? l$uom : const {},
      _$data.containsKey('value') ? l$value : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$UomValueFilterInput<TRes> {
  factory CopyWith$Input$UomValueFilterInput(
    Input$UomValueFilterInput instance,
    TRes Function(Input$UomValueFilterInput) then,
  ) = _CopyWithImpl$Input$UomValueFilterInput;

  factory CopyWith$Input$UomValueFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UomValueFilterInput;

  TRes call({
    List<Input$UomValueFilterInput>? and,
    List<Input$UomValueFilterInput>? or,
    Input$UomOperationFilterInput? uom,
    Input$DecimalOperationFilterInput? value,
    Input$IntOperationFilterInput? id,
  });
  TRes and(
      Iterable<Input$UomValueFilterInput>? Function(
              Iterable<
                  CopyWith$Input$UomValueFilterInput<
                      Input$UomValueFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$UomValueFilterInput>? Function(
              Iterable<
                  CopyWith$Input$UomValueFilterInput<
                      Input$UomValueFilterInput>>?)
          _fn);
  CopyWith$Input$UomOperationFilterInput<TRes> get uom;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get value;
  CopyWith$Input$IntOperationFilterInput<TRes> get id;
}

class _CopyWithImpl$Input$UomValueFilterInput<TRes>
    implements CopyWith$Input$UomValueFilterInput<TRes> {
  _CopyWithImpl$Input$UomValueFilterInput(
    this._instance,
    this._then,
  );

  final Input$UomValueFilterInput _instance;

  final TRes Function(Input$UomValueFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$UomValueFilterInput._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$UomValueFilterInput>?),
        if (or != _undefined) 'or': (or as List<Input$UomValueFilterInput>?),
        if (uom != _undefined) 'uom': (uom as Input$UomOperationFilterInput?),
        if (value != _undefined)
          'value': (value as Input$DecimalOperationFilterInput?),
        if (id != _undefined) 'id': (id as Input$IntOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$UomValueFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$UomValueFilterInput<
                          Input$UomValueFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$UomValueFilterInput(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$UomValueFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$UomValueFilterInput<
                          Input$UomValueFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$UomValueFilterInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$UomOperationFilterInput<TRes> get uom {
    final local$uom = _instance.uom;
    return local$uom == null
        ? CopyWith$Input$UomOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$UomOperationFilterInput(
            local$uom, (e) => call(uom: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get value {
    final local$value = _instance.value;
    return local$value == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$value, (e) => call(value: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(local$id, (e) => call(id: e));
  }
}

class _CopyWithStubImpl$Input$UomValueFilterInput<TRes>
    implements CopyWith$Input$UomValueFilterInput<TRes> {
  _CopyWithStubImpl$Input$UomValueFilterInput(this._res);

  TRes _res;

  call({
    List<Input$UomValueFilterInput>? and,
    List<Input$UomValueFilterInput>? or,
    Input$UomOperationFilterInput? uom,
    Input$DecimalOperationFilterInput? value,
    Input$IntOperationFilterInput? id,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$UomOperationFilterInput<TRes> get uom =>
      CopyWith$Input$UomOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get value =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get id =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);
}

class Input$IntOperationFilterInput {
  factory Input$IntOperationFilterInput({
    int? eq,
    int? neq,
    List<int?>? $in,
    List<int?>? nin,
    int? gt,
    int? ngt,
    int? gte,
    int? ngte,
    int? lt,
    int? nlt,
    int? lte,
    int? nlte,
  }) =>
      Input$IntOperationFilterInput._({
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

  Input$IntOperationFilterInput._(this._$data);

  factory Input$IntOperationFilterInput.fromJson(Map<String, dynamic> data) {
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
          (l$$in as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] =
          (l$nin as List<dynamic>?)?.map((e) => (e as int?)).toList();
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
    return Input$IntOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get eq => (_$data['eq'] as int?);

  int? get neq => (_$data['neq'] as int?);

  List<int?>? get $in => (_$data['in'] as List<int?>?);

  List<int?>? get nin => (_$data['nin'] as List<int?>?);

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

  CopyWith$Input$IntOperationFilterInput<Input$IntOperationFilterInput>
      get copyWith => CopyWith$Input$IntOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$IntOperationFilterInput) ||
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

abstract class CopyWith$Input$IntOperationFilterInput<TRes> {
  factory CopyWith$Input$IntOperationFilterInput(
    Input$IntOperationFilterInput instance,
    TRes Function(Input$IntOperationFilterInput) then,
  ) = _CopyWithImpl$Input$IntOperationFilterInput;

  factory CopyWith$Input$IntOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$IntOperationFilterInput;

  TRes call({
    int? eq,
    int? neq,
    List<int?>? $in,
    List<int?>? nin,
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

class _CopyWithImpl$Input$IntOperationFilterInput<TRes>
    implements CopyWith$Input$IntOperationFilterInput<TRes> {
  _CopyWithImpl$Input$IntOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$IntOperationFilterInput _instance;

  final TRes Function(Input$IntOperationFilterInput) _then;

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
      _then(Input$IntOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as int?),
        if (neq != _undefined) 'neq': (neq as int?),
        if ($in != _undefined) 'in': ($in as List<int?>?),
        if (nin != _undefined) 'nin': (nin as List<int?>?),
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

class _CopyWithStubImpl$Input$IntOperationFilterInput<TRes>
    implements CopyWith$Input$IntOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$IntOperationFilterInput(this._res);

  TRes _res;

  call({
    int? eq,
    int? neq,
    List<int?>? $in,
    List<int?>? nin,
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

class Input$UomOperationFilterInput {
  factory Input$UomOperationFilterInput({
    Enum$Uom? eq,
    Enum$Uom? neq,
    List<Enum$Uom>? $in,
    List<Enum$Uom>? nin,
  }) =>
      Input$UomOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
      });

  Input$UomOperationFilterInput._(this._$data);

  factory Input$UomOperationFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : fromJson$Enum$Uom((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] =
          l$neq == null ? null : fromJson$Enum$Uom((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$Uom((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => fromJson$Enum$Uom((e as String)))
          .toList();
    }
    return Input$UomOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$Uom? get eq => (_$data['eq'] as Enum$Uom?);

  Enum$Uom? get neq => (_$data['neq'] as Enum$Uom?);

  List<Enum$Uom>? get $in => (_$data['in'] as List<Enum$Uom>?);

  List<Enum$Uom>? get nin => (_$data['nin'] as List<Enum$Uom>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq == null ? null : toJson$Enum$Uom(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq == null ? null : toJson$Enum$Uom(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => toJson$Enum$Uom(e)).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => toJson$Enum$Uom(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$UomOperationFilterInput<Input$UomOperationFilterInput>
      get copyWith => CopyWith$Input$UomOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UomOperationFilterInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
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
    ]);
  }
}

abstract class CopyWith$Input$UomOperationFilterInput<TRes> {
  factory CopyWith$Input$UomOperationFilterInput(
    Input$UomOperationFilterInput instance,
    TRes Function(Input$UomOperationFilterInput) then,
  ) = _CopyWithImpl$Input$UomOperationFilterInput;

  factory CopyWith$Input$UomOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UomOperationFilterInput;

  TRes call({
    Enum$Uom? eq,
    Enum$Uom? neq,
    List<Enum$Uom>? $in,
    List<Enum$Uom>? nin,
  });
}

class _CopyWithImpl$Input$UomOperationFilterInput<TRes>
    implements CopyWith$Input$UomOperationFilterInput<TRes> {
  _CopyWithImpl$Input$UomOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$UomOperationFilterInput _instance;

  final TRes Function(Input$UomOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) =>
      _then(Input$UomOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as Enum$Uom?),
        if (neq != _undefined) 'neq': (neq as Enum$Uom?),
        if ($in != _undefined) 'in': ($in as List<Enum$Uom>?),
        if (nin != _undefined) 'nin': (nin as List<Enum$Uom>?),
      }));
}

class _CopyWithStubImpl$Input$UomOperationFilterInput<TRes>
    implements CopyWith$Input$UomOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$UomOperationFilterInput(this._res);

  TRes _res;

  call({
    Enum$Uom? eq,
    Enum$Uom? neq,
    List<Enum$Uom>? $in,
    List<Enum$Uom>? nin,
  }) =>
      _res;
}

class Input$HeapTransactionInput {
  factory Input$HeapTransactionInput({
    String? id,
    required String heapId,
    required double quantity,
    required double commRate,
    required double commValue,
    required Enum$RefSource refSource,
    required Enum$TransactionDirection transactionDirection,
  }) =>
      Input$HeapTransactionInput._({
        if (id != null) r'id': id,
        r'heapId': heapId,
        r'quantity': quantity,
        r'commRate': commRate,
        r'commValue': commValue,
        r'refSource': refSource,
        r'transactionDirection': transactionDirection,
      });

  Input$HeapTransactionInput._(this._$data);

  factory Input$HeapTransactionInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    final l$heapId = data['heapId'];
    result$data['heapId'] = (l$heapId as String);
    final l$quantity = data['quantity'];
    result$data['quantity'] = (l$quantity as num).toDouble();
    final l$commRate = data['commRate'];
    result$data['commRate'] = (l$commRate as num).toDouble();
    final l$commValue = data['commValue'];
    result$data['commValue'] = (l$commValue as num).toDouble();
    final l$refSource = data['refSource'];
    result$data['refSource'] = fromJson$Enum$RefSource((l$refSource as String));
    final l$transactionDirection = data['transactionDirection'];
    result$data['transactionDirection'] =
        fromJson$Enum$TransactionDirection((l$transactionDirection as String));
    return Input$HeapTransactionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  String get heapId => (_$data['heapId'] as String);

  double get quantity => (_$data['quantity'] as double);

  double get commRate => (_$data['commRate'] as double);

  double get commValue => (_$data['commValue'] as double);

  Enum$RefSource get refSource => (_$data['refSource'] as Enum$RefSource);

  Enum$TransactionDirection get transactionDirection =>
      (_$data['transactionDirection'] as Enum$TransactionDirection);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    final l$heapId = heapId;
    result$data['heapId'] = l$heapId;
    final l$quantity = quantity;
    result$data['quantity'] = l$quantity;
    final l$commRate = commRate;
    result$data['commRate'] = l$commRate;
    final l$commValue = commValue;
    result$data['commValue'] = l$commValue;
    final l$refSource = refSource;
    result$data['refSource'] = toJson$Enum$RefSource(l$refSource);
    final l$transactionDirection = transactionDirection;
    result$data['transactionDirection'] =
        toJson$Enum$TransactionDirection(l$transactionDirection);
    return result$data;
  }

  CopyWith$Input$HeapTransactionInput<Input$HeapTransactionInput>
      get copyWith => CopyWith$Input$HeapTransactionInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$HeapTransactionInput) ||
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
    final l$heapId = heapId;
    final lOther$heapId = other.heapId;
    if (l$heapId != lOther$heapId) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$commRate = commRate;
    final lOther$commRate = other.commRate;
    if (l$commRate != lOther$commRate) {
      return false;
    }
    final l$commValue = commValue;
    final lOther$commValue = other.commValue;
    if (l$commValue != lOther$commValue) {
      return false;
    }
    final l$refSource = refSource;
    final lOther$refSource = other.refSource;
    if (l$refSource != lOther$refSource) {
      return false;
    }
    final l$transactionDirection = transactionDirection;
    final lOther$transactionDirection = other.transactionDirection;
    if (l$transactionDirection != lOther$transactionDirection) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$heapId = heapId;
    final l$quantity = quantity;
    final l$commRate = commRate;
    final l$commValue = commValue;
    final l$refSource = refSource;
    final l$transactionDirection = transactionDirection;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      l$heapId,
      l$quantity,
      l$commRate,
      l$commValue,
      l$refSource,
      l$transactionDirection,
    ]);
  }
}

abstract class CopyWith$Input$HeapTransactionInput<TRes> {
  factory CopyWith$Input$HeapTransactionInput(
    Input$HeapTransactionInput instance,
    TRes Function(Input$HeapTransactionInput) then,
  ) = _CopyWithImpl$Input$HeapTransactionInput;

  factory CopyWith$Input$HeapTransactionInput.stub(TRes res) =
      _CopyWithStubImpl$Input$HeapTransactionInput;

  TRes call({
    String? id,
    String? heapId,
    double? quantity,
    double? commRate,
    double? commValue,
    Enum$RefSource? refSource,
    Enum$TransactionDirection? transactionDirection,
  });
}

class _CopyWithImpl$Input$HeapTransactionInput<TRes>
    implements CopyWith$Input$HeapTransactionInput<TRes> {
  _CopyWithImpl$Input$HeapTransactionInput(
    this._instance,
    this._then,
  );

  final Input$HeapTransactionInput _instance;

  final TRes Function(Input$HeapTransactionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? heapId = _undefined,
    Object? quantity = _undefined,
    Object? commRate = _undefined,
    Object? commValue = _undefined,
    Object? refSource = _undefined,
    Object? transactionDirection = _undefined,
  }) =>
      _then(Input$HeapTransactionInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (heapId != _undefined && heapId != null)
          'heapId': (heapId as String),
        if (quantity != _undefined && quantity != null)
          'quantity': (quantity as double),
        if (commRate != _undefined && commRate != null)
          'commRate': (commRate as double),
        if (commValue != _undefined && commValue != null)
          'commValue': (commValue as double),
        if (refSource != _undefined && refSource != null)
          'refSource': (refSource as Enum$RefSource),
        if (transactionDirection != _undefined && transactionDirection != null)
          'transactionDirection':
              (transactionDirection as Enum$TransactionDirection),
      }));
}

class _CopyWithStubImpl$Input$HeapTransactionInput<TRes>
    implements CopyWith$Input$HeapTransactionInput<TRes> {
  _CopyWithStubImpl$Input$HeapTransactionInput(this._res);

  TRes _res;

  call({
    String? id,
    String? heapId,
    double? quantity,
    double? commRate,
    double? commValue,
    Enum$RefSource? refSource,
    Enum$TransactionDirection? transactionDirection,
  }) =>
      _res;
}

class Input$HeapInput {
  factory Input$HeapInput({
    String? id,
    required String heapDescription,
    required String heapShortName,
    required String gradeCode,
    required int heapNo,
    required String depotCode,
    required bool active,
  }) =>
      Input$HeapInput._({
        if (id != null) r'id': id,
        r'heapDescription': heapDescription,
        r'heapShortName': heapShortName,
        r'gradeCode': gradeCode,
        r'heapNo': heapNo,
        r'depotCode': depotCode,
        r'active': active,
      });

  Input$HeapInput._(this._$data);

  factory Input$HeapInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    final l$heapDescription = data['heapDescription'];
    result$data['heapDescription'] = (l$heapDescription as String);
    final l$heapShortName = data['heapShortName'];
    result$data['heapShortName'] = (l$heapShortName as String);
    final l$gradeCode = data['gradeCode'];
    result$data['gradeCode'] = (l$gradeCode as String);
    final l$heapNo = data['heapNo'];
    result$data['heapNo'] = (l$heapNo as int);
    final l$depotCode = data['depotCode'];
    result$data['depotCode'] = (l$depotCode as String);
    final l$active = data['active'];
    result$data['active'] = (l$active as bool);
    return Input$HeapInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  String get heapDescription => (_$data['heapDescription'] as String);

  String get heapShortName => (_$data['heapShortName'] as String);

  String get gradeCode => (_$data['gradeCode'] as String);

  int get heapNo => (_$data['heapNo'] as int);

  String get depotCode => (_$data['depotCode'] as String);

  bool get active => (_$data['active'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    final l$heapDescription = heapDescription;
    result$data['heapDescription'] = l$heapDescription;
    final l$heapShortName = heapShortName;
    result$data['heapShortName'] = l$heapShortName;
    final l$gradeCode = gradeCode;
    result$data['gradeCode'] = l$gradeCode;
    final l$heapNo = heapNo;
    result$data['heapNo'] = l$heapNo;
    final l$depotCode = depotCode;
    result$data['depotCode'] = l$depotCode;
    final l$active = active;
    result$data['active'] = l$active;
    return result$data;
  }

  CopyWith$Input$HeapInput<Input$HeapInput> get copyWith =>
      CopyWith$Input$HeapInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$HeapInput) || runtimeType != other.runtimeType) {
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
    final l$heapDescription = heapDescription;
    final lOther$heapDescription = other.heapDescription;
    if (l$heapDescription != lOther$heapDescription) {
      return false;
    }
    final l$heapShortName = heapShortName;
    final lOther$heapShortName = other.heapShortName;
    if (l$heapShortName != lOther$heapShortName) {
      return false;
    }
    final l$gradeCode = gradeCode;
    final lOther$gradeCode = other.gradeCode;
    if (l$gradeCode != lOther$gradeCode) {
      return false;
    }
    final l$heapNo = heapNo;
    final lOther$heapNo = other.heapNo;
    if (l$heapNo != lOther$heapNo) {
      return false;
    }
    final l$depotCode = depotCode;
    final lOther$depotCode = other.depotCode;
    if (l$depotCode != lOther$depotCode) {
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
    final l$id = id;
    final l$heapDescription = heapDescription;
    final l$heapShortName = heapShortName;
    final l$gradeCode = gradeCode;
    final l$heapNo = heapNo;
    final l$depotCode = depotCode;
    final l$active = active;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      l$heapDescription,
      l$heapShortName,
      l$gradeCode,
      l$heapNo,
      l$depotCode,
      l$active,
    ]);
  }
}

abstract class CopyWith$Input$HeapInput<TRes> {
  factory CopyWith$Input$HeapInput(
    Input$HeapInput instance,
    TRes Function(Input$HeapInput) then,
  ) = _CopyWithImpl$Input$HeapInput;

  factory CopyWith$Input$HeapInput.stub(TRes res) =
      _CopyWithStubImpl$Input$HeapInput;

  TRes call({
    String? id,
    String? heapDescription,
    String? heapShortName,
    String? gradeCode,
    int? heapNo,
    String? depotCode,
    bool? active,
  });
}

class _CopyWithImpl$Input$HeapInput<TRes>
    implements CopyWith$Input$HeapInput<TRes> {
  _CopyWithImpl$Input$HeapInput(
    this._instance,
    this._then,
  );

  final Input$HeapInput _instance;

  final TRes Function(Input$HeapInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? heapDescription = _undefined,
    Object? heapShortName = _undefined,
    Object? gradeCode = _undefined,
    Object? heapNo = _undefined,
    Object? depotCode = _undefined,
    Object? active = _undefined,
  }) =>
      _then(Input$HeapInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (heapDescription != _undefined && heapDescription != null)
          'heapDescription': (heapDescription as String),
        if (heapShortName != _undefined && heapShortName != null)
          'heapShortName': (heapShortName as String),
        if (gradeCode != _undefined && gradeCode != null)
          'gradeCode': (gradeCode as String),
        if (heapNo != _undefined && heapNo != null) 'heapNo': (heapNo as int),
        if (depotCode != _undefined && depotCode != null)
          'depotCode': (depotCode as String),
        if (active != _undefined && active != null) 'active': (active as bool),
      }));
}

class _CopyWithStubImpl$Input$HeapInput<TRes>
    implements CopyWith$Input$HeapInput<TRes> {
  _CopyWithStubImpl$Input$HeapInput(this._res);

  TRes _res;

  call({
    String? id,
    String? heapDescription,
    String? heapShortName,
    String? gradeCode,
    int? heapNo,
    String? depotCode,
    bool? active,
  }) =>
      _res;
}

class Input$CreateCanScaleTicketInput {
  factory Input$CreateCanScaleTicketInput({required String createdBy}) =>
      Input$CreateCanScaleTicketInput._({
        r'createdBy': createdBy,
      });

  Input$CreateCanScaleTicketInput._(this._$data);

  factory Input$CreateCanScaleTicketInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$createdBy = data['createdBy'];
    result$data['createdBy'] = (l$createdBy as String);
    return Input$CreateCanScaleTicketInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get createdBy => (_$data['createdBy'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$createdBy = createdBy;
    result$data['createdBy'] = l$createdBy;
    return result$data;
  }

  CopyWith$Input$CreateCanScaleTicketInput<Input$CreateCanScaleTicketInput>
      get copyWith => CopyWith$Input$CreateCanScaleTicketInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateCanScaleTicketInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createdBy = createdBy;
    return Object.hashAll([l$createdBy]);
  }
}

abstract class CopyWith$Input$CreateCanScaleTicketInput<TRes> {
  factory CopyWith$Input$CreateCanScaleTicketInput(
    Input$CreateCanScaleTicketInput instance,
    TRes Function(Input$CreateCanScaleTicketInput) then,
  ) = _CopyWithImpl$Input$CreateCanScaleTicketInput;

  factory CopyWith$Input$CreateCanScaleTicketInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateCanScaleTicketInput;

  TRes call({String? createdBy});
}

class _CopyWithImpl$Input$CreateCanScaleTicketInput<TRes>
    implements CopyWith$Input$CreateCanScaleTicketInput<TRes> {
  _CopyWithImpl$Input$CreateCanScaleTicketInput(
    this._instance,
    this._then,
  );

  final Input$CreateCanScaleTicketInput _instance;

  final TRes Function(Input$CreateCanScaleTicketInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? createdBy = _undefined}) =>
      _then(Input$CreateCanScaleTicketInput._({
        ..._instance._$data,
        if (createdBy != _undefined && createdBy != null)
          'createdBy': (createdBy as String),
      }));
}

class _CopyWithStubImpl$Input$CreateCanScaleTicketInput<TRes>
    implements CopyWith$Input$CreateCanScaleTicketInput<TRes> {
  _CopyWithStubImpl$Input$CreateCanScaleTicketInput(this._res);

  TRes _res;

  call({String? createdBy}) => _res;
}

enum Enum$Uom {
  TONNES,
  POUNDS,
  GROSS_TON,
  NET_TONNE,
  KILOGRAMS,
  LOADS,
  EACH,
  LITRES,
  HOURS,
  HUNDREDWEIGHT,
  $unknown;

  factory Enum$Uom.fromJson(String value) => fromJson$Enum$Uom(value);

  String toJson() => toJson$Enum$Uom(this);
}

String toJson$Enum$Uom(Enum$Uom e) {
  switch (e) {
    case Enum$Uom.TONNES:
      return r'TONNES';
    case Enum$Uom.POUNDS:
      return r'POUNDS';
    case Enum$Uom.GROSS_TON:
      return r'GROSS_TON';
    case Enum$Uom.NET_TONNE:
      return r'NET_TONNE';
    case Enum$Uom.KILOGRAMS:
      return r'KILOGRAMS';
    case Enum$Uom.LOADS:
      return r'LOADS';
    case Enum$Uom.EACH:
      return r'EACH';
    case Enum$Uom.LITRES:
      return r'LITRES';
    case Enum$Uom.HOURS:
      return r'HOURS';
    case Enum$Uom.HUNDREDWEIGHT:
      return r'HUNDREDWEIGHT';
    case Enum$Uom.$unknown:
      return r'$unknown';
  }
}

Enum$Uom fromJson$Enum$Uom(String value) {
  switch (value) {
    case r'TONNES':
      return Enum$Uom.TONNES;
    case r'POUNDS':
      return Enum$Uom.POUNDS;
    case r'GROSS_TON':
      return Enum$Uom.GROSS_TON;
    case r'NET_TONNE':
      return Enum$Uom.NET_TONNE;
    case r'KILOGRAMS':
      return Enum$Uom.KILOGRAMS;
    case r'LOADS':
      return Enum$Uom.LOADS;
    case r'EACH':
      return Enum$Uom.EACH;
    case r'LITRES':
      return Enum$Uom.LITRES;
    case r'HOURS':
      return Enum$Uom.HOURS;
    case r'HUNDREDWEIGHT':
      return Enum$Uom.HUNDREDWEIGHT;
    default:
      return Enum$Uom.$unknown;
  }
}

enum Enum$TicketType {
  INWARDS,
  OUTWARDS,
  $unknown;

  factory Enum$TicketType.fromJson(String value) =>
      fromJson$Enum$TicketType(value);

  String toJson() => toJson$Enum$TicketType(this);
}

String toJson$Enum$TicketType(Enum$TicketType e) {
  switch (e) {
    case Enum$TicketType.INWARDS:
      return r'INWARDS';
    case Enum$TicketType.OUTWARDS:
      return r'OUTWARDS';
    case Enum$TicketType.$unknown:
      return r'$unknown';
  }
}

Enum$TicketType fromJson$Enum$TicketType(String value) {
  switch (value) {
    case r'INWARDS':
      return Enum$TicketType.INWARDS;
    case r'OUTWARDS':
      return Enum$TicketType.OUTWARDS;
    default:
      return Enum$TicketType.$unknown;
  }
}

enum Enum$TicketStatus {
  OPEN,
  CLOSED,
  $unknown;

  factory Enum$TicketStatus.fromJson(String value) =>
      fromJson$Enum$TicketStatus(value);

  String toJson() => toJson$Enum$TicketStatus(this);
}

String toJson$Enum$TicketStatus(Enum$TicketStatus e) {
  switch (e) {
    case Enum$TicketStatus.OPEN:
      return r'OPEN';
    case Enum$TicketStatus.CLOSED:
      return r'CLOSED';
    case Enum$TicketStatus.$unknown:
      return r'$unknown';
  }
}

Enum$TicketStatus fromJson$Enum$TicketStatus(String value) {
  switch (value) {
    case r'OPEN':
      return Enum$TicketStatus.OPEN;
    case r'CLOSED':
      return Enum$TicketStatus.CLOSED;
    default:
      return Enum$TicketStatus.$unknown;
  }
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

enum Enum$TransactionDirection {
  RECEIPT,
  ISSUE,
  $unknown;

  factory Enum$TransactionDirection.fromJson(String value) =>
      fromJson$Enum$TransactionDirection(value);

  String toJson() => toJson$Enum$TransactionDirection(this);
}

String toJson$Enum$TransactionDirection(Enum$TransactionDirection e) {
  switch (e) {
    case Enum$TransactionDirection.RECEIPT:
      return r'RECEIPT';
    case Enum$TransactionDirection.ISSUE:
      return r'ISSUE';
    case Enum$TransactionDirection.$unknown:
      return r'$unknown';
  }
}

Enum$TransactionDirection fromJson$Enum$TransactionDirection(String value) {
  switch (value) {
    case r'RECEIPT':
      return Enum$TransactionDirection.RECEIPT;
    case r'ISSUE':
      return Enum$TransactionDirection.ISSUE;
    default:
      return Enum$TransactionDirection.$unknown;
  }
}

enum Enum$RefSource {
  HTXF,
  TIWN,
  TOWN,
  $unknown;

  factory Enum$RefSource.fromJson(String value) =>
      fromJson$Enum$RefSource(value);

  String toJson() => toJson$Enum$RefSource(this);
}

String toJson$Enum$RefSource(Enum$RefSource e) {
  switch (e) {
    case Enum$RefSource.HTXF:
      return r'HTXF';
    case Enum$RefSource.TIWN:
      return r'TIWN';
    case Enum$RefSource.TOWN:
      return r'TOWN';
    case Enum$RefSource.$unknown:
      return r'$unknown';
  }
}

Enum$RefSource fromJson$Enum$RefSource(String value) {
  switch (value) {
    case r'HTXF':
      return Enum$RefSource.HTXF;
    case r'TIWN':
      return Enum$RefSource.TIWN;
    case r'TOWN':
      return Enum$RefSource.TOWN;
    default:
      return Enum$RefSource.$unknown;
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
