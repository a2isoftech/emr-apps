import 'package:gql/ast.dart';

class Variables$Query$GetFireRegisterPunchEvents {
  factory Variables$Query$GetFireRegisterPunchEvents({
    required DateTime date,
    required String yardCode,
    required String zone,
    required String area,
  }) =>
      Variables$Query$GetFireRegisterPunchEvents._({
        r'date': date,
        r'yardCode': yardCode,
        r'zone': zone,
        r'area': area,
      });

  Variables$Query$GetFireRegisterPunchEvents._(this._$data);

  factory Variables$Query$GetFireRegisterPunchEvents.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$date = data['date'];
    result$data['date'] = DateTime.parse((l$date as String));
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    final l$zone = data['zone'];
    result$data['zone'] = (l$zone as String);
    final l$area = data['area'];
    result$data['area'] = (l$area as String);
    return Variables$Query$GetFireRegisterPunchEvents._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get date => (_$data['date'] as DateTime);

  String get yardCode => (_$data['yardCode'] as String);

  String get zone => (_$data['zone'] as String);

  String get area => (_$data['area'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$date = date;
    result$data['date'] = l$date.toIso8601String();
    final l$yardCode = yardCode;
    result$data['yardCode'] = l$yardCode;
    final l$zone = zone;
    result$data['zone'] = l$zone;
    final l$area = area;
    result$data['area'] = l$area;
    return result$data;
  }

  CopyWith$Variables$Query$GetFireRegisterPunchEvents<
          Variables$Query$GetFireRegisterPunchEvents>
      get copyWith => CopyWith$Variables$Query$GetFireRegisterPunchEvents(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetFireRegisterPunchEvents) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
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
    final l$area = area;
    final lOther$area = other.area;
    if (l$area != lOther$area) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$date = date;
    final l$yardCode = yardCode;
    final l$zone = zone;
    final l$area = area;
    return Object.hashAll([
      l$date,
      l$yardCode,
      l$zone,
      l$area,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetFireRegisterPunchEvents<TRes> {
  factory CopyWith$Variables$Query$GetFireRegisterPunchEvents(
    Variables$Query$GetFireRegisterPunchEvents instance,
    TRes Function(Variables$Query$GetFireRegisterPunchEvents) then,
  ) = _CopyWithImpl$Variables$Query$GetFireRegisterPunchEvents;

  factory CopyWith$Variables$Query$GetFireRegisterPunchEvents.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetFireRegisterPunchEvents;

  TRes call({
    DateTime? date,
    String? yardCode,
    String? zone,
    String? area,
  });
}

class _CopyWithImpl$Variables$Query$GetFireRegisterPunchEvents<TRes>
    implements CopyWith$Variables$Query$GetFireRegisterPunchEvents<TRes> {
  _CopyWithImpl$Variables$Query$GetFireRegisterPunchEvents(
    this._instance,
    this._then,
  );

  final Variables$Query$GetFireRegisterPunchEvents _instance;

  final TRes Function(Variables$Query$GetFireRegisterPunchEvents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? date = _undefined,
    Object? yardCode = _undefined,
    Object? zone = _undefined,
    Object? area = _undefined,
  }) =>
      _then(Variables$Query$GetFireRegisterPunchEvents._({
        ..._instance._$data,
        if (date != _undefined && date != null) 'date': (date as DateTime),
        if (yardCode != _undefined && yardCode != null)
          'yardCode': (yardCode as String),
        if (zone != _undefined && zone != null) 'zone': (zone as String),
        if (area != _undefined && area != null) 'area': (area as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetFireRegisterPunchEvents<TRes>
    implements CopyWith$Variables$Query$GetFireRegisterPunchEvents<TRes> {
  _CopyWithStubImpl$Variables$Query$GetFireRegisterPunchEvents(this._res);

  TRes _res;

  call({
    DateTime? date,
    String? yardCode,
    String? zone,
    String? area,
  }) =>
      _res;
}

class Query$GetFireRegisterPunchEvents {
  Query$GetFireRegisterPunchEvents({
    required this.fireRegisterPunchEvents,
    this.$__typename = 'Query',
  });

  factory Query$GetFireRegisterPunchEvents.fromJson(Map<String, dynamic> json) {
    final l$fireRegisterPunchEvents = json['fireRegisterPunchEvents'];
    final l$$__typename = json['__typename'];
    return Query$GetFireRegisterPunchEvents(
      fireRegisterPunchEvents: (l$fireRegisterPunchEvents as List<dynamic>)
          .map((e) =>
              Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents>
      fireRegisterPunchEvents;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fireRegisterPunchEvents = fireRegisterPunchEvents;
    _resultData['fireRegisterPunchEvents'] =
        l$fireRegisterPunchEvents.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fireRegisterPunchEvents = fireRegisterPunchEvents;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$fireRegisterPunchEvents.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFireRegisterPunchEvents) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fireRegisterPunchEvents = fireRegisterPunchEvents;
    final lOther$fireRegisterPunchEvents = other.fireRegisterPunchEvents;
    if (l$fireRegisterPunchEvents.length !=
        lOther$fireRegisterPunchEvents.length) {
      return false;
    }
    for (int i = 0; i < l$fireRegisterPunchEvents.length; i++) {
      final l$fireRegisterPunchEvents$entry = l$fireRegisterPunchEvents[i];
      final lOther$fireRegisterPunchEvents$entry =
          lOther$fireRegisterPunchEvents[i];
      if (l$fireRegisterPunchEvents$entry !=
          lOther$fireRegisterPunchEvents$entry) {
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

extension UtilityExtension$Query$GetFireRegisterPunchEvents
    on Query$GetFireRegisterPunchEvents {
  CopyWith$Query$GetFireRegisterPunchEvents<Query$GetFireRegisterPunchEvents>
      get copyWith => CopyWith$Query$GetFireRegisterPunchEvents(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFireRegisterPunchEvents<TRes> {
  factory CopyWith$Query$GetFireRegisterPunchEvents(
    Query$GetFireRegisterPunchEvents instance,
    TRes Function(Query$GetFireRegisterPunchEvents) then,
  ) = _CopyWithImpl$Query$GetFireRegisterPunchEvents;

  factory CopyWith$Query$GetFireRegisterPunchEvents.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFireRegisterPunchEvents;

  TRes call({
    List<Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents>?
        fireRegisterPunchEvents,
    String? $__typename,
  });
  TRes fireRegisterPunchEvents(
      Iterable<Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents> Function(
              Iterable<
                  CopyWith$Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents<
                      Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents>>)
          _fn);
}

class _CopyWithImpl$Query$GetFireRegisterPunchEvents<TRes>
    implements CopyWith$Query$GetFireRegisterPunchEvents<TRes> {
  _CopyWithImpl$Query$GetFireRegisterPunchEvents(
    this._instance,
    this._then,
  );

  final Query$GetFireRegisterPunchEvents _instance;

  final TRes Function(Query$GetFireRegisterPunchEvents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fireRegisterPunchEvents = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFireRegisterPunchEvents(
        fireRegisterPunchEvents: fireRegisterPunchEvents == _undefined ||
                fireRegisterPunchEvents == null
            ? _instance.fireRegisterPunchEvents
            : (fireRegisterPunchEvents as List<
                Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes fireRegisterPunchEvents(
          Iterable<Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents> Function(
                  Iterable<
                      CopyWith$Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents<
                          Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents>>)
              _fn) =>
      call(
          fireRegisterPunchEvents: _fn(_instance.fireRegisterPunchEvents.map((e) =>
              CopyWith$Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetFireRegisterPunchEvents<TRes>
    implements CopyWith$Query$GetFireRegisterPunchEvents<TRes> {
  _CopyWithStubImpl$Query$GetFireRegisterPunchEvents(this._res);

  TRes _res;

  call({
    List<Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents>?
        fireRegisterPunchEvents,
    String? $__typename,
  }) =>
      _res;

  fireRegisterPunchEvents(_fn) => _res;
}

const documentNodeQueryGetFireRegisterPunchEvents = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetFireRegisterPunchEvents'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'date')),
        type: NamedTypeNode(
          name: NameNode(value: 'DateTime'),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'zone')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'area')),
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
        name: NameNode(value: 'fireRegisterPunchEvents'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'date'),
                value: VariableNode(name: NameNode(value: 'date')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'yardCode'),
                value: VariableNode(name: NameNode(value: 'yardCode')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'zone'),
                value: VariableNode(name: NameNode(value: 'zone')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'area'),
                value: VariableNode(name: NameNode(value: 'area')),
              ),
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
            name: NameNode(value: 'subjectName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'subjectType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'punchTime'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'punchType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'badgeNo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'visitorHost'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'visitorCmpName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'visitorPhoneNo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'visitorVehicleReg'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'note'),
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

class Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents {
  Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents({
    required this.id,
    required this.subjectName,
    required this.subjectType,
    required this.punchTime,
    required this.punchType,
    required this.badgeNo,
    this.visitorHost,
    this.visitorCmpName,
    this.visitorPhoneNo,
    this.visitorVehicleReg,
    this.note,
    this.$__typename = 'PunchEvent',
  });

  factory Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$subjectName = json['subjectName'];
    final l$subjectType = json['subjectType'];
    final l$punchTime = json['punchTime'];
    final l$punchType = json['punchType'];
    final l$badgeNo = json['badgeNo'];
    final l$visitorHost = json['visitorHost'];
    final l$visitorCmpName = json['visitorCmpName'];
    final l$visitorPhoneNo = json['visitorPhoneNo'];
    final l$visitorVehicleReg = json['visitorVehicleReg'];
    final l$note = json['note'];
    final l$$__typename = json['__typename'];
    return Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents(
      id: (l$id as int),
      subjectName: (l$subjectName as String),
      subjectType: (l$subjectType as int),
      punchTime: DateTime.parse((l$punchTime as String)),
      punchType: (l$punchType as int),
      badgeNo: (l$badgeNo as String),
      visitorHost: (l$visitorHost as String?),
      visitorCmpName: (l$visitorCmpName as String?),
      visitorPhoneNo: (l$visitorPhoneNo as String?),
      visitorVehicleReg: (l$visitorVehicleReg as String?),
      note: (l$note as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String subjectName;

  final int subjectType;

  final DateTime punchTime;

  final int punchType;

  final String badgeNo;

  final String? visitorHost;

  final String? visitorCmpName;

  final String? visitorPhoneNo;

  final String? visitorVehicleReg;

  final String? note;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$subjectName = subjectName;
    _resultData['subjectName'] = l$subjectName;
    final l$subjectType = subjectType;
    _resultData['subjectType'] = l$subjectType;
    final l$punchTime = punchTime;
    _resultData['punchTime'] = l$punchTime.toIso8601String();
    final l$punchType = punchType;
    _resultData['punchType'] = l$punchType;
    final l$badgeNo = badgeNo;
    _resultData['badgeNo'] = l$badgeNo;
    final l$visitorHost = visitorHost;
    _resultData['visitorHost'] = l$visitorHost;
    final l$visitorCmpName = visitorCmpName;
    _resultData['visitorCmpName'] = l$visitorCmpName;
    final l$visitorPhoneNo = visitorPhoneNo;
    _resultData['visitorPhoneNo'] = l$visitorPhoneNo;
    final l$visitorVehicleReg = visitorVehicleReg;
    _resultData['visitorVehicleReg'] = l$visitorVehicleReg;
    final l$note = note;
    _resultData['note'] = l$note;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$subjectName = subjectName;
    final l$subjectType = subjectType;
    final l$punchTime = punchTime;
    final l$punchType = punchType;
    final l$badgeNo = badgeNo;
    final l$visitorHost = visitorHost;
    final l$visitorCmpName = visitorCmpName;
    final l$visitorPhoneNo = visitorPhoneNo;
    final l$visitorVehicleReg = visitorVehicleReg;
    final l$note = note;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$subjectName,
      l$subjectType,
      l$punchTime,
      l$punchType,
      l$badgeNo,
      l$visitorHost,
      l$visitorCmpName,
      l$visitorPhoneNo,
      l$visitorVehicleReg,
      l$note,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$punchTime = punchTime;
    final lOther$punchTime = other.punchTime;
    if (l$punchTime != lOther$punchTime) {
      return false;
    }
    final l$punchType = punchType;
    final lOther$punchType = other.punchType;
    if (l$punchType != lOther$punchType) {
      return false;
    }
    final l$badgeNo = badgeNo;
    final lOther$badgeNo = other.badgeNo;
    if (l$badgeNo != lOther$badgeNo) {
      return false;
    }
    final l$visitorHost = visitorHost;
    final lOther$visitorHost = other.visitorHost;
    if (l$visitorHost != lOther$visitorHost) {
      return false;
    }
    final l$visitorCmpName = visitorCmpName;
    final lOther$visitorCmpName = other.visitorCmpName;
    if (l$visitorCmpName != lOther$visitorCmpName) {
      return false;
    }
    final l$visitorPhoneNo = visitorPhoneNo;
    final lOther$visitorPhoneNo = other.visitorPhoneNo;
    if (l$visitorPhoneNo != lOther$visitorPhoneNo) {
      return false;
    }
    final l$visitorVehicleReg = visitorVehicleReg;
    final lOther$visitorVehicleReg = other.visitorVehicleReg;
    if (l$visitorVehicleReg != lOther$visitorVehicleReg) {
      return false;
    }
    final l$note = note;
    final lOther$note = other.note;
    if (l$note != lOther$note) {
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

extension UtilityExtension$Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents
    on Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents {
  CopyWith$Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents<
          Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents>
      get copyWith =>
          CopyWith$Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents<
    TRes> {
  factory CopyWith$Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents(
    Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents instance,
    TRes Function(Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents)
        then,
  ) = _CopyWithImpl$Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents;

  factory CopyWith$Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents;

  TRes call({
    int? id,
    String? subjectName,
    int? subjectType,
    DateTime? punchTime,
    int? punchType,
    String? badgeNo,
    String? visitorHost,
    String? visitorCmpName,
    String? visitorPhoneNo,
    String? visitorVehicleReg,
    String? note,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents<
        TRes>
    implements
        CopyWith$Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents<
            TRes> {
  _CopyWithImpl$Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents(
    this._instance,
    this._then,
  );

  final Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents _instance;

  final TRes Function(Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? subjectName = _undefined,
    Object? subjectType = _undefined,
    Object? punchTime = _undefined,
    Object? punchType = _undefined,
    Object? badgeNo = _undefined,
    Object? visitorHost = _undefined,
    Object? visitorCmpName = _undefined,
    Object? visitorPhoneNo = _undefined,
    Object? visitorVehicleReg = _undefined,
    Object? note = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        subjectName: subjectName == _undefined || subjectName == null
            ? _instance.subjectName
            : (subjectName as String),
        subjectType: subjectType == _undefined || subjectType == null
            ? _instance.subjectType
            : (subjectType as int),
        punchTime: punchTime == _undefined || punchTime == null
            ? _instance.punchTime
            : (punchTime as DateTime),
        punchType: punchType == _undefined || punchType == null
            ? _instance.punchType
            : (punchType as int),
        badgeNo: badgeNo == _undefined || badgeNo == null
            ? _instance.badgeNo
            : (badgeNo as String),
        visitorHost: visitorHost == _undefined
            ? _instance.visitorHost
            : (visitorHost as String?),
        visitorCmpName: visitorCmpName == _undefined
            ? _instance.visitorCmpName
            : (visitorCmpName as String?),
        visitorPhoneNo: visitorPhoneNo == _undefined
            ? _instance.visitorPhoneNo
            : (visitorPhoneNo as String?),
        visitorVehicleReg: visitorVehicleReg == _undefined
            ? _instance.visitorVehicleReg
            : (visitorVehicleReg as String?),
        note: note == _undefined ? _instance.note : (note as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents<
        TRes>
    implements
        CopyWith$Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents<
            TRes> {
  _CopyWithStubImpl$Query$GetFireRegisterPunchEvents$fireRegisterPunchEvents(
      this._res);

  TRes _res;

  call({
    int? id,
    String? subjectName,
    int? subjectType,
    DateTime? punchTime,
    int? punchType,
    String? badgeNo,
    String? visitorHost,
    String? visitorCmpName,
    String? visitorPhoneNo,
    String? visitorVehicleReg,
    String? note,
    String? $__typename,
  }) =>
      _res;
}
