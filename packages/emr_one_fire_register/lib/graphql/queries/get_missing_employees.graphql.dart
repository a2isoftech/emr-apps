import 'package:gql/ast.dart';

class Variables$Query$GetMissingEmployees {
  factory Variables$Query$GetMissingEmployees({
    required String yardCode,
    required DateTime missingOnDate,
  }) =>
      Variables$Query$GetMissingEmployees._({
        r'yardCode': yardCode,
        r'missingOnDate': missingOnDate,
      });

  Variables$Query$GetMissingEmployees._(this._$data);

  factory Variables$Query$GetMissingEmployees.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    final l$missingOnDate = data['missingOnDate'];
    result$data['missingOnDate'] = DateTime.parse((l$missingOnDate as String));
    return Variables$Query$GetMissingEmployees._(result$data);
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

  CopyWith$Variables$Query$GetMissingEmployees<
          Variables$Query$GetMissingEmployees>
      get copyWith => CopyWith$Variables$Query$GetMissingEmployees(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetMissingEmployees) ||
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

abstract class CopyWith$Variables$Query$GetMissingEmployees<TRes> {
  factory CopyWith$Variables$Query$GetMissingEmployees(
    Variables$Query$GetMissingEmployees instance,
    TRes Function(Variables$Query$GetMissingEmployees) then,
  ) = _CopyWithImpl$Variables$Query$GetMissingEmployees;

  factory CopyWith$Variables$Query$GetMissingEmployees.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetMissingEmployees;

  TRes call({
    String? yardCode,
    DateTime? missingOnDate,
  });
}

class _CopyWithImpl$Variables$Query$GetMissingEmployees<TRes>
    implements CopyWith$Variables$Query$GetMissingEmployees<TRes> {
  _CopyWithImpl$Variables$Query$GetMissingEmployees(
    this._instance,
    this._then,
  );

  final Variables$Query$GetMissingEmployees _instance;

  final TRes Function(Variables$Query$GetMissingEmployees) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? missingOnDate = _undefined,
  }) =>
      _then(Variables$Query$GetMissingEmployees._({
        ..._instance._$data,
        if (yardCode != _undefined && yardCode != null)
          'yardCode': (yardCode as String),
        if (missingOnDate != _undefined && missingOnDate != null)
          'missingOnDate': (missingOnDate as DateTime),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetMissingEmployees<TRes>
    implements CopyWith$Variables$Query$GetMissingEmployees<TRes> {
  _CopyWithStubImpl$Variables$Query$GetMissingEmployees(this._res);

  TRes _res;

  call({
    String? yardCode,
    DateTime? missingOnDate,
  }) =>
      _res;
}

class Query$GetMissingEmployees {
  Query$GetMissingEmployees({
    required this.missingEmployees,
    this.$__typename = 'Query',
  });

  factory Query$GetMissingEmployees.fromJson(Map<String, dynamic> json) {
    final l$missingEmployees = json['missingEmployees'];
    final l$$__typename = json['__typename'];
    return Query$GetMissingEmployees(
      missingEmployees: (l$missingEmployees as List<dynamic>)
          .map((e) => Query$GetMissingEmployees$missingEmployees.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetMissingEmployees$missingEmployees> missingEmployees;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$missingEmployees = missingEmployees;
    _resultData['missingEmployees'] =
        l$missingEmployees.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$missingEmployees = missingEmployees;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$missingEmployees.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMissingEmployees) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$missingEmployees = missingEmployees;
    final lOther$missingEmployees = other.missingEmployees;
    if (l$missingEmployees.length != lOther$missingEmployees.length) {
      return false;
    }
    for (int i = 0; i < l$missingEmployees.length; i++) {
      final l$missingEmployees$entry = l$missingEmployees[i];
      final lOther$missingEmployees$entry = lOther$missingEmployees[i];
      if (l$missingEmployees$entry != lOther$missingEmployees$entry) {
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

extension UtilityExtension$Query$GetMissingEmployees
    on Query$GetMissingEmployees {
  CopyWith$Query$GetMissingEmployees<Query$GetMissingEmployees> get copyWith =>
      CopyWith$Query$GetMissingEmployees(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMissingEmployees<TRes> {
  factory CopyWith$Query$GetMissingEmployees(
    Query$GetMissingEmployees instance,
    TRes Function(Query$GetMissingEmployees) then,
  ) = _CopyWithImpl$Query$GetMissingEmployees;

  factory CopyWith$Query$GetMissingEmployees.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMissingEmployees;

  TRes call({
    List<Query$GetMissingEmployees$missingEmployees>? missingEmployees,
    String? $__typename,
  });
  TRes missingEmployees(
      Iterable<Query$GetMissingEmployees$missingEmployees> Function(
              Iterable<
                  CopyWith$Query$GetMissingEmployees$missingEmployees<
                      Query$GetMissingEmployees$missingEmployees>>)
          _fn);
}

class _CopyWithImpl$Query$GetMissingEmployees<TRes>
    implements CopyWith$Query$GetMissingEmployees<TRes> {
  _CopyWithImpl$Query$GetMissingEmployees(
    this._instance,
    this._then,
  );

  final Query$GetMissingEmployees _instance;

  final TRes Function(Query$GetMissingEmployees) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? missingEmployees = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMissingEmployees(
        missingEmployees:
            missingEmployees == _undefined || missingEmployees == null
                ? _instance.missingEmployees
                : (missingEmployees
                    as List<Query$GetMissingEmployees$missingEmployees>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes missingEmployees(
          Iterable<Query$GetMissingEmployees$missingEmployees> Function(
                  Iterable<
                      CopyWith$Query$GetMissingEmployees$missingEmployees<
                          Query$GetMissingEmployees$missingEmployees>>)
              _fn) =>
      call(
          missingEmployees: _fn(_instance.missingEmployees
              .map((e) => CopyWith$Query$GetMissingEmployees$missingEmployees(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetMissingEmployees<TRes>
    implements CopyWith$Query$GetMissingEmployees<TRes> {
  _CopyWithStubImpl$Query$GetMissingEmployees(this._res);

  TRes _res;

  call({
    List<Query$GetMissingEmployees$missingEmployees>? missingEmployees,
    String? $__typename,
  }) =>
      _res;

  missingEmployees(_fn) => _res;
}

const documentNodeQueryGetMissingEmployees = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetMissingEmployees'),
    variableDefinitions: [
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
        variable: VariableNode(name: NameNode(value: 'missingOnDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'DateTime'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'missingEmployees'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'missingOnDate'),
                value: VariableNode(name: NameNode(value: 'missingOnDate')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'yardCode'),
                value: VariableNode(name: NameNode(value: 'yardCode')),
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
            name: NameNode(value: 'punchId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'employeeName'),
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
            name: NameNode(value: 'missingOnDate'),
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
            name: NameNode(value: 'visitorHost'),
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

class Query$GetMissingEmployees$missingEmployees {
  Query$GetMissingEmployees$missingEmployees({
    required this.id,
    this.punchId,
    required this.employeeName,
    required this.subjectType,
    required this.missingOnDate,
    required this.yardCode,
    this.visitorHost,
    this.visitorPhoneNo,
    this.$__typename = 'GetMissingEmployeesOutput',
  });

  factory Query$GetMissingEmployees$missingEmployees.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$punchId = json['punchId'];
    final l$employeeName = json['employeeName'];
    final l$subjectType = json['subjectType'];
    final l$missingOnDate = json['missingOnDate'];
    final l$yardCode = json['yardCode'];
    final l$visitorHost = json['visitorHost'];
    final l$visitorPhoneNo = json['visitorPhoneNo'];
    final l$$__typename = json['__typename'];
    return Query$GetMissingEmployees$missingEmployees(
      id: (l$id as int),
      punchId: (l$punchId as int?),
      employeeName: (l$employeeName as String),
      subjectType: (l$subjectType as int),
      missingOnDate: DateTime.parse((l$missingOnDate as String)),
      yardCode: (l$yardCode as String),
      visitorHost: (l$visitorHost as String?),
      visitorPhoneNo: (l$visitorPhoneNo as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? punchId;

  final String employeeName;

  final int subjectType;

  final DateTime missingOnDate;

  final String yardCode;

  final String? visitorHost;

  final String? visitorPhoneNo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$punchId = punchId;
    _resultData['punchId'] = l$punchId;
    final l$employeeName = employeeName;
    _resultData['employeeName'] = l$employeeName;
    final l$subjectType = subjectType;
    _resultData['subjectType'] = l$subjectType;
    final l$missingOnDate = missingOnDate;
    _resultData['missingOnDate'] = l$missingOnDate.toIso8601String();
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$visitorHost = visitorHost;
    _resultData['visitorHost'] = l$visitorHost;
    final l$visitorPhoneNo = visitorPhoneNo;
    _resultData['visitorPhoneNo'] = l$visitorPhoneNo;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$punchId = punchId;
    final l$employeeName = employeeName;
    final l$subjectType = subjectType;
    final l$missingOnDate = missingOnDate;
    final l$yardCode = yardCode;
    final l$visitorHost = visitorHost;
    final l$visitorPhoneNo = visitorPhoneNo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$punchId,
      l$employeeName,
      l$subjectType,
      l$missingOnDate,
      l$yardCode,
      l$visitorHost,
      l$visitorPhoneNo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMissingEmployees$missingEmployees) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$punchId = punchId;
    final lOther$punchId = other.punchId;
    if (l$punchId != lOther$punchId) {
      return false;
    }
    final l$employeeName = employeeName;
    final lOther$employeeName = other.employeeName;
    if (l$employeeName != lOther$employeeName) {
      return false;
    }
    final l$subjectType = subjectType;
    final lOther$subjectType = other.subjectType;
    if (l$subjectType != lOther$subjectType) {
      return false;
    }
    final l$missingOnDate = missingOnDate;
    final lOther$missingOnDate = other.missingOnDate;
    if (l$missingOnDate != lOther$missingOnDate) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$visitorHost = visitorHost;
    final lOther$visitorHost = other.visitorHost;
    if (l$visitorHost != lOther$visitorHost) {
      return false;
    }
    final l$visitorPhoneNo = visitorPhoneNo;
    final lOther$visitorPhoneNo = other.visitorPhoneNo;
    if (l$visitorPhoneNo != lOther$visitorPhoneNo) {
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

extension UtilityExtension$Query$GetMissingEmployees$missingEmployees
    on Query$GetMissingEmployees$missingEmployees {
  CopyWith$Query$GetMissingEmployees$missingEmployees<
          Query$GetMissingEmployees$missingEmployees>
      get copyWith => CopyWith$Query$GetMissingEmployees$missingEmployees(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMissingEmployees$missingEmployees<TRes> {
  factory CopyWith$Query$GetMissingEmployees$missingEmployees(
    Query$GetMissingEmployees$missingEmployees instance,
    TRes Function(Query$GetMissingEmployees$missingEmployees) then,
  ) = _CopyWithImpl$Query$GetMissingEmployees$missingEmployees;

  factory CopyWith$Query$GetMissingEmployees$missingEmployees.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMissingEmployees$missingEmployees;

  TRes call({
    int? id,
    int? punchId,
    String? employeeName,
    int? subjectType,
    DateTime? missingOnDate,
    String? yardCode,
    String? visitorHost,
    String? visitorPhoneNo,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMissingEmployees$missingEmployees<TRes>
    implements CopyWith$Query$GetMissingEmployees$missingEmployees<TRes> {
  _CopyWithImpl$Query$GetMissingEmployees$missingEmployees(
    this._instance,
    this._then,
  );

  final Query$GetMissingEmployees$missingEmployees _instance;

  final TRes Function(Query$GetMissingEmployees$missingEmployees) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? punchId = _undefined,
    Object? employeeName = _undefined,
    Object? subjectType = _undefined,
    Object? missingOnDate = _undefined,
    Object? yardCode = _undefined,
    Object? visitorHost = _undefined,
    Object? visitorPhoneNo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMissingEmployees$missingEmployees(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        punchId: punchId == _undefined ? _instance.punchId : (punchId as int?),
        employeeName: employeeName == _undefined || employeeName == null
            ? _instance.employeeName
            : (employeeName as String),
        subjectType: subjectType == _undefined || subjectType == null
            ? _instance.subjectType
            : (subjectType as int),
        missingOnDate: missingOnDate == _undefined || missingOnDate == null
            ? _instance.missingOnDate
            : (missingOnDate as DateTime),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        visitorHost: visitorHost == _undefined
            ? _instance.visitorHost
            : (visitorHost as String?),
        visitorPhoneNo: visitorPhoneNo == _undefined
            ? _instance.visitorPhoneNo
            : (visitorPhoneNo as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMissingEmployees$missingEmployees<TRes>
    implements CopyWith$Query$GetMissingEmployees$missingEmployees<TRes> {
  _CopyWithStubImpl$Query$GetMissingEmployees$missingEmployees(this._res);

  TRes _res;

  call({
    int? id,
    int? punchId,
    String? employeeName,
    int? subjectType,
    DateTime? missingOnDate,
    String? yardCode,
    String? visitorHost,
    String? visitorPhoneNo,
    String? $__typename,
  }) =>
      _res;
}
