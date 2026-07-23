import 'package:gql/ast.dart';

class Variables$Query$FormInstanceStatusLogs {
  factory Variables$Query$FormInstanceStatusLogs({required String id}) =>
      Variables$Query$FormInstanceStatusLogs._({
        r'id': id,
      });

  Variables$Query$FormInstanceStatusLogs._(this._$data);

  factory Variables$Query$FormInstanceStatusLogs.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$FormInstanceStatusLogs._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$FormInstanceStatusLogs<
          Variables$Query$FormInstanceStatusLogs>
      get copyWith => CopyWith$Variables$Query$FormInstanceStatusLogs(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FormInstanceStatusLogs) ||
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

abstract class CopyWith$Variables$Query$FormInstanceStatusLogs<TRes> {
  factory CopyWith$Variables$Query$FormInstanceStatusLogs(
    Variables$Query$FormInstanceStatusLogs instance,
    TRes Function(Variables$Query$FormInstanceStatusLogs) then,
  ) = _CopyWithImpl$Variables$Query$FormInstanceStatusLogs;

  factory CopyWith$Variables$Query$FormInstanceStatusLogs.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FormInstanceStatusLogs;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$FormInstanceStatusLogs<TRes>
    implements CopyWith$Variables$Query$FormInstanceStatusLogs<TRes> {
  _CopyWithImpl$Variables$Query$FormInstanceStatusLogs(
    this._instance,
    this._then,
  );

  final Variables$Query$FormInstanceStatusLogs _instance;

  final TRes Function(Variables$Query$FormInstanceStatusLogs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$FormInstanceStatusLogs._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FormInstanceStatusLogs<TRes>
    implements CopyWith$Variables$Query$FormInstanceStatusLogs<TRes> {
  _CopyWithStubImpl$Variables$Query$FormInstanceStatusLogs(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$FormInstanceStatusLogs {
  Query$FormInstanceStatusLogs({
    this.formInstance,
    this.$__typename = 'FormsQuery',
  });

  factory Query$FormInstanceStatusLogs.fromJson(Map<String, dynamic> json) {
    final l$formInstance = json['formInstance'];
    final l$$__typename = json['__typename'];
    return Query$FormInstanceStatusLogs(
      formInstance: l$formInstance == null
          ? null
          : Query$FormInstanceStatusLogs$formInstance.fromJson(
              (l$formInstance as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FormInstanceStatusLogs$formInstance? formInstance;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$formInstance = formInstance;
    _resultData['formInstance'] = l$formInstance?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$formInstance = formInstance;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$formInstance,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FormInstanceStatusLogs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$formInstance = formInstance;
    final lOther$formInstance = other.formInstance;
    if (l$formInstance != lOther$formInstance) {
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

extension UtilityExtension$Query$FormInstanceStatusLogs
    on Query$FormInstanceStatusLogs {
  CopyWith$Query$FormInstanceStatusLogs<Query$FormInstanceStatusLogs>
      get copyWith => CopyWith$Query$FormInstanceStatusLogs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FormInstanceStatusLogs<TRes> {
  factory CopyWith$Query$FormInstanceStatusLogs(
    Query$FormInstanceStatusLogs instance,
    TRes Function(Query$FormInstanceStatusLogs) then,
  ) = _CopyWithImpl$Query$FormInstanceStatusLogs;

  factory CopyWith$Query$FormInstanceStatusLogs.stub(TRes res) =
      _CopyWithStubImpl$Query$FormInstanceStatusLogs;

  TRes call({
    Query$FormInstanceStatusLogs$formInstance? formInstance,
    String? $__typename,
  });
  CopyWith$Query$FormInstanceStatusLogs$formInstance<TRes> get formInstance;
}

class _CopyWithImpl$Query$FormInstanceStatusLogs<TRes>
    implements CopyWith$Query$FormInstanceStatusLogs<TRes> {
  _CopyWithImpl$Query$FormInstanceStatusLogs(
    this._instance,
    this._then,
  );

  final Query$FormInstanceStatusLogs _instance;

  final TRes Function(Query$FormInstanceStatusLogs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? formInstance = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FormInstanceStatusLogs(
        formInstance: formInstance == _undefined
            ? _instance.formInstance
            : (formInstance as Query$FormInstanceStatusLogs$formInstance?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FormInstanceStatusLogs$formInstance<TRes> get formInstance {
    final local$formInstance = _instance.formInstance;
    return local$formInstance == null
        ? CopyWith$Query$FormInstanceStatusLogs$formInstance.stub(
            _then(_instance))
        : CopyWith$Query$FormInstanceStatusLogs$formInstance(
            local$formInstance, (e) => call(formInstance: e));
  }
}

class _CopyWithStubImpl$Query$FormInstanceStatusLogs<TRes>
    implements CopyWith$Query$FormInstanceStatusLogs<TRes> {
  _CopyWithStubImpl$Query$FormInstanceStatusLogs(this._res);

  TRes _res;

  call({
    Query$FormInstanceStatusLogs$formInstance? formInstance,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FormInstanceStatusLogs$formInstance<TRes> get formInstance =>
      CopyWith$Query$FormInstanceStatusLogs$formInstance.stub(_res);
}

const documentNodeQueryFormInstanceStatusLogs = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FormInstanceStatusLogs'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'formInstance'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'workOrderId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'workOrderDescription'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'd365Error'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'reProcessedStatus'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'logs'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'uuid'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'instanceId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'loggedBy'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'loggedByUuid'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'loggedDate'),
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

class Query$FormInstanceStatusLogs$formInstance {
  Query$FormInstanceStatusLogs$formInstance({
    this.workOrderId,
    this.workOrderDescription,
    required this.id,
    this.d365Error,
    this.reProcessedStatus,
    this.logs,
    this.$__typename = 'FormInstance',
  });

  factory Query$FormInstanceStatusLogs$formInstance.fromJson(
      Map<String, dynamic> json) {
    final l$workOrderId = json['workOrderId'];
    final l$workOrderDescription = json['workOrderDescription'];
    final l$id = json['id'];
    final l$d365Error = json['d365Error'];
    final l$reProcessedStatus = json['reProcessedStatus'];
    final l$logs = json['logs'];
    final l$$__typename = json['__typename'];
    return Query$FormInstanceStatusLogs$formInstance(
      workOrderId: (l$workOrderId as String?),
      workOrderDescription: (l$workOrderDescription as String?),
      id: (l$id as String),
      d365Error: (l$d365Error as String?),
      reProcessedStatus: (l$reProcessedStatus as String?),
      logs: (l$logs as List<dynamic>?)
          ?.map((e) => Query$FormInstanceStatusLogs$formInstance$logs.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? workOrderId;

  final String? workOrderDescription;

  final String id;

  final String? d365Error;

  final String? reProcessedStatus;

  final List<Query$FormInstanceStatusLogs$formInstance$logs>? logs;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$workOrderId = workOrderId;
    _resultData['workOrderId'] = l$workOrderId;
    final l$workOrderDescription = workOrderDescription;
    _resultData['workOrderDescription'] = l$workOrderDescription;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$d365Error = d365Error;
    _resultData['d365Error'] = l$d365Error;
    final l$reProcessedStatus = reProcessedStatus;
    _resultData['reProcessedStatus'] = l$reProcessedStatus;
    final l$logs = logs;
    _resultData['logs'] = l$logs?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$workOrderId = workOrderId;
    final l$workOrderDescription = workOrderDescription;
    final l$id = id;
    final l$d365Error = d365Error;
    final l$reProcessedStatus = reProcessedStatus;
    final l$logs = logs;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$workOrderId,
      l$workOrderDescription,
      l$id,
      l$d365Error,
      l$reProcessedStatus,
      l$logs == null ? null : Object.hashAll(l$logs.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FormInstanceStatusLogs$formInstance) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$workOrderId = workOrderId;
    final lOther$workOrderId = other.workOrderId;
    if (l$workOrderId != lOther$workOrderId) {
      return false;
    }
    final l$workOrderDescription = workOrderDescription;
    final lOther$workOrderDescription = other.workOrderDescription;
    if (l$workOrderDescription != lOther$workOrderDescription) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$d365Error = d365Error;
    final lOther$d365Error = other.d365Error;
    if (l$d365Error != lOther$d365Error) {
      return false;
    }
    final l$reProcessedStatus = reProcessedStatus;
    final lOther$reProcessedStatus = other.reProcessedStatus;
    if (l$reProcessedStatus != lOther$reProcessedStatus) {
      return false;
    }
    final l$logs = logs;
    final lOther$logs = other.logs;
    if (l$logs != null && lOther$logs != null) {
      if (l$logs.length != lOther$logs.length) {
        return false;
      }
      for (int i = 0; i < l$logs.length; i++) {
        final l$logs$entry = l$logs[i];
        final lOther$logs$entry = lOther$logs[i];
        if (l$logs$entry != lOther$logs$entry) {
          return false;
        }
      }
    } else if (l$logs != lOther$logs) {
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

extension UtilityExtension$Query$FormInstanceStatusLogs$formInstance
    on Query$FormInstanceStatusLogs$formInstance {
  CopyWith$Query$FormInstanceStatusLogs$formInstance<
          Query$FormInstanceStatusLogs$formInstance>
      get copyWith => CopyWith$Query$FormInstanceStatusLogs$formInstance(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FormInstanceStatusLogs$formInstance<TRes> {
  factory CopyWith$Query$FormInstanceStatusLogs$formInstance(
    Query$FormInstanceStatusLogs$formInstance instance,
    TRes Function(Query$FormInstanceStatusLogs$formInstance) then,
  ) = _CopyWithImpl$Query$FormInstanceStatusLogs$formInstance;

  factory CopyWith$Query$FormInstanceStatusLogs$formInstance.stub(TRes res) =
      _CopyWithStubImpl$Query$FormInstanceStatusLogs$formInstance;

  TRes call({
    String? workOrderId,
    String? workOrderDescription,
    String? id,
    String? d365Error,
    String? reProcessedStatus,
    List<Query$FormInstanceStatusLogs$formInstance$logs>? logs,
    String? $__typename,
  });
  TRes logs(
      Iterable<Query$FormInstanceStatusLogs$formInstance$logs>? Function(
              Iterable<
                  CopyWith$Query$FormInstanceStatusLogs$formInstance$logs<
                      Query$FormInstanceStatusLogs$formInstance$logs>>?)
          _fn);
}

class _CopyWithImpl$Query$FormInstanceStatusLogs$formInstance<TRes>
    implements CopyWith$Query$FormInstanceStatusLogs$formInstance<TRes> {
  _CopyWithImpl$Query$FormInstanceStatusLogs$formInstance(
    this._instance,
    this._then,
  );

  final Query$FormInstanceStatusLogs$formInstance _instance;

  final TRes Function(Query$FormInstanceStatusLogs$formInstance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? workOrderId = _undefined,
    Object? workOrderDescription = _undefined,
    Object? id = _undefined,
    Object? d365Error = _undefined,
    Object? reProcessedStatus = _undefined,
    Object? logs = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FormInstanceStatusLogs$formInstance(
        workOrderId: workOrderId == _undefined
            ? _instance.workOrderId
            : (workOrderId as String?),
        workOrderDescription: workOrderDescription == _undefined
            ? _instance.workOrderDescription
            : (workOrderDescription as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        d365Error: d365Error == _undefined
            ? _instance.d365Error
            : (d365Error as String?),
        reProcessedStatus: reProcessedStatus == _undefined
            ? _instance.reProcessedStatus
            : (reProcessedStatus as String?),
        logs: logs == _undefined
            ? _instance.logs
            : (logs as List<Query$FormInstanceStatusLogs$formInstance$logs>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes logs(
          Iterable<Query$FormInstanceStatusLogs$formInstance$logs>? Function(
                  Iterable<
                      CopyWith$Query$FormInstanceStatusLogs$formInstance$logs<
                          Query$FormInstanceStatusLogs$formInstance$logs>>?)
              _fn) =>
      call(
          logs: _fn(_instance.logs?.map(
              (e) => CopyWith$Query$FormInstanceStatusLogs$formInstance$logs(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$FormInstanceStatusLogs$formInstance<TRes>
    implements CopyWith$Query$FormInstanceStatusLogs$formInstance<TRes> {
  _CopyWithStubImpl$Query$FormInstanceStatusLogs$formInstance(this._res);

  TRes _res;

  call({
    String? workOrderId,
    String? workOrderDescription,
    String? id,
    String? d365Error,
    String? reProcessedStatus,
    List<Query$FormInstanceStatusLogs$formInstance$logs>? logs,
    String? $__typename,
  }) =>
      _res;

  logs(_fn) => _res;
}

class Query$FormInstanceStatusLogs$formInstance$logs {
  Query$FormInstanceStatusLogs$formInstance$logs({
    required this.id,
    required this.uuid,
    required this.instanceId,
    this.loggedBy,
    required this.loggedByUuid,
    required this.loggedDate,
    this.status,
    this.$__typename = 'FormInstanceStatusAudit',
  });

  factory Query$FormInstanceStatusLogs$formInstance$logs.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$uuid = json['uuid'];
    final l$instanceId = json['instanceId'];
    final l$loggedBy = json['loggedBy'];
    final l$loggedByUuid = json['loggedByUuid'];
    final l$loggedDate = json['loggedDate'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Query$FormInstanceStatusLogs$formInstance$logs(
      id: (l$id as int),
      uuid: (l$uuid as String),
      instanceId: (l$instanceId as int),
      loggedBy: (l$loggedBy as String?),
      loggedByUuid: (l$loggedByUuid as String),
      loggedDate: (l$loggedDate as String),
      status: (l$status as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String uuid;

  final int instanceId;

  final String? loggedBy;

  final String loggedByUuid;

  final String loggedDate;

  final String? status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$uuid = uuid;
    _resultData['uuid'] = l$uuid;
    final l$instanceId = instanceId;
    _resultData['instanceId'] = l$instanceId;
    final l$loggedBy = loggedBy;
    _resultData['loggedBy'] = l$loggedBy;
    final l$loggedByUuid = loggedByUuid;
    _resultData['loggedByUuid'] = l$loggedByUuid;
    final l$loggedDate = loggedDate;
    _resultData['loggedDate'] = l$loggedDate;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$uuid = uuid;
    final l$instanceId = instanceId;
    final l$loggedBy = loggedBy;
    final l$loggedByUuid = loggedByUuid;
    final l$loggedDate = loggedDate;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$uuid,
      l$instanceId,
      l$loggedBy,
      l$loggedByUuid,
      l$loggedDate,
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FormInstanceStatusLogs$formInstance$logs) ||
        runtimeType != other.runtimeType) {
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
    final l$instanceId = instanceId;
    final lOther$instanceId = other.instanceId;
    if (l$instanceId != lOther$instanceId) {
      return false;
    }
    final l$loggedBy = loggedBy;
    final lOther$loggedBy = other.loggedBy;
    if (l$loggedBy != lOther$loggedBy) {
      return false;
    }
    final l$loggedByUuid = loggedByUuid;
    final lOther$loggedByUuid = other.loggedByUuid;
    if (l$loggedByUuid != lOther$loggedByUuid) {
      return false;
    }
    final l$loggedDate = loggedDate;
    final lOther$loggedDate = other.loggedDate;
    if (l$loggedDate != lOther$loggedDate) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension$Query$FormInstanceStatusLogs$formInstance$logs
    on Query$FormInstanceStatusLogs$formInstance$logs {
  CopyWith$Query$FormInstanceStatusLogs$formInstance$logs<
          Query$FormInstanceStatusLogs$formInstance$logs>
      get copyWith => CopyWith$Query$FormInstanceStatusLogs$formInstance$logs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FormInstanceStatusLogs$formInstance$logs<TRes> {
  factory CopyWith$Query$FormInstanceStatusLogs$formInstance$logs(
    Query$FormInstanceStatusLogs$formInstance$logs instance,
    TRes Function(Query$FormInstanceStatusLogs$formInstance$logs) then,
  ) = _CopyWithImpl$Query$FormInstanceStatusLogs$formInstance$logs;

  factory CopyWith$Query$FormInstanceStatusLogs$formInstance$logs.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FormInstanceStatusLogs$formInstance$logs;

  TRes call({
    int? id,
    String? uuid,
    int? instanceId,
    String? loggedBy,
    String? loggedByUuid,
    String? loggedDate,
    String? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FormInstanceStatusLogs$formInstance$logs<TRes>
    implements CopyWith$Query$FormInstanceStatusLogs$formInstance$logs<TRes> {
  _CopyWithImpl$Query$FormInstanceStatusLogs$formInstance$logs(
    this._instance,
    this._then,
  );

  final Query$FormInstanceStatusLogs$formInstance$logs _instance;

  final TRes Function(Query$FormInstanceStatusLogs$formInstance$logs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? uuid = _undefined,
    Object? instanceId = _undefined,
    Object? loggedBy = _undefined,
    Object? loggedByUuid = _undefined,
    Object? loggedDate = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FormInstanceStatusLogs$formInstance$logs(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        uuid: uuid == _undefined || uuid == null
            ? _instance.uuid
            : (uuid as String),
        instanceId: instanceId == _undefined || instanceId == null
            ? _instance.instanceId
            : (instanceId as int),
        loggedBy:
            loggedBy == _undefined ? _instance.loggedBy : (loggedBy as String?),
        loggedByUuid: loggedByUuid == _undefined || loggedByUuid == null
            ? _instance.loggedByUuid
            : (loggedByUuid as String),
        loggedDate: loggedDate == _undefined || loggedDate == null
            ? _instance.loggedDate
            : (loggedDate as String),
        status: status == _undefined ? _instance.status : (status as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FormInstanceStatusLogs$formInstance$logs<TRes>
    implements CopyWith$Query$FormInstanceStatusLogs$formInstance$logs<TRes> {
  _CopyWithStubImpl$Query$FormInstanceStatusLogs$formInstance$logs(this._res);

  TRes _res;

  call({
    int? id,
    String? uuid,
    int? instanceId,
    String? loggedBy,
    String? loggedByUuid,
    String? loggedDate,
    String? status,
    String? $__typename,
  }) =>
      _res;
}
